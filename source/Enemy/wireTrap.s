
.globl __dt__20TNerveWireTrapGoWaitFv
__dt__20TNerveWireTrapGoWaitFv: # 0x80107f48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80107f8c
    lis     r3, __vvt__20TNerveWireTrapGoWait@ha
    addi    r0, r3, __vvt__20TNerveWireTrapGoWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80107f7c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80107f7c:
    extsh.  r0, r4
    ble-    branch_0x80107f8c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80107f8c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveWireTrapGoWaitCFP24TSpineBase_10TLiveActor_
execute__20TNerveWireTrapGoWaitCFP24TSpineBase_10TLiveActor_: # 0x80107fa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    lwz     r3, 0x0(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xe0(r3)
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    bge-    branch_0x80107fe4
    li      r3, 0x1
    b       branch_0x80107fe8

branch_0x80107fe4:
    li      r3, 0x0
branch_0x80107fe8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl execute__18TNerveWireTrapWaitCFP24TSpineBase_10TLiveActor_
execute__18TNerveWireTrapWaitCFP24TSpineBase_10TLiveActor_: # 0x80107ffc
    lwz     r3, 0x0(r4)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x174(r3)
    cmpw    r3, r0
    bge-    branch_0x80108018
    li      r3, 0x1
    blr

branch_0x80108018:
    li      r3, 0x0
    blr


.globl __dt__18TNerveWireTrapWaitFv
__dt__18TNerveWireTrapWaitFv: # 0x80108020
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80108064
    lis     r3, __vvt__18TNerveWireTrapWait@ha
    addi    r0, r3, __vvt__18TNerveWireTrapWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80108054
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80108054:
    extsh.  r0, r4
    ble-    branch_0x80108064
    mr      r3, r31
    bl      __dl__FPv
branch_0x80108064:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveWireTrapSearchCFP24TSpineBase_10TLiveActor_
execute__20TNerveWireTrapSearchCFP24TSpineBase_10TLiveActor_: # 0x8010807c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x94(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x90(sp)
    lwz     r31, 0x0(r4)
    bl      SMS_IsMarioOnWire__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x801080b8
    li      r4, 0x0
    b       branch_0x80108228

branch_0x801080b8:
    lwz     r0, 0x16c(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801080d0
    lwz     r3, 0x16c(r31)
    addi    r0, r3, -0x1
    stw     r0, 0x16c(r31)
branch_0x801080d0:
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x70(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(sp)
    lwz     r3, 0x88(r31)
    lfs     f1, 0x6c(sp)
    addi    r3, r3, 0x8
    lfs     f3, 0x68(sp)
    lfs     f0, 0x4(r3)
    lfs     f2, 0x0(r3)
    fmuls   f1, f1, f0
    lfs     f5, 0x70(sp)
    lfs     f4, 0x8(r3)
    lfs     f0, -0x5540(r2)
    fmadds  f1, f3, f2, f1
    fmadds  f1, f5, f4, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8010815c
    li      r0, 0x1
    b       branch_0x8010816c

branch_0x8010815c:
    bge-    branch_0x80108168
    li      r0, -0x1
    b       branch_0x8010816c

branch_0x80108168:
    li      r0, 0x0
branch_0x8010816c:
    xoris   r0, r0, 0x8000
    lfd     f1, -0x5530(r2)
    stw     r0, 0x8c(sp)
    lis     r28, 0x4330
    addi    r3, r31, 0x0
    stw     r28, 0x88(sp)
    lfd     f0, 0x88(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x170(r31)
    bl      getWireDir__9TWireTrapCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x164(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801081ec
    xoris   r0, r0, 0x8000
    lfd     f2, -0x5530(r2)
    stw     r0, 0x8c(sp)
    lfs     f3, 0x168(r31)
    stw     r28, 0x88(sp)
    lfs     f0, -0x5538(r2)
    lfd     f1, 0x88(sp)
    lfs     f4, -0x553c(r2)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    fadds   f1, f4, f0
    b       branch_0x801081f0

branch_0x801081ec:
    lfs     f1, -0x553c(r2)
branch_0x801081f0:
    lfs     f0, 0x170(r31)
    addi    r3, sp, 0x44
    fmuls   f1, f0, f1
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x17c(r31)
    addi    r3, sp, 0x44
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r3, 0x44(sp)
    li      r4, 0x0
    lwz     r0, 0x48(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x9c(r31)
branch_0x80108228:
    clrlwi. r0, r4, 24
    beq-    branch_0x801082e0
    cmplwi  r29, 0x0
    beq-    branch_0x80108260
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x80108260
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r29, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80108260:
    lbz     r0, R13Off_m0x6728(r13)
    extsb.  r0, r0
    bne-    branch_0x801082a4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveWireTrapWait@ha
    stw     r0, R13Off_m0x6724(r13)
    addi    r0, r3, __vvt__18TNerveWireTrapWait@l
    lis     r4, __dt__18TNerveWireTrapWaitFv@ha
    stw     r0, R13Off_m0x6724(r13)
    lis     r3, unk_803f2e18@h
    addi    r5, r3, unk_803f2e18@l
    addi    r4, r4, __dt__18TNerveWireTrapWaitFv@l
    addi    r3, r13, R13Off_m0x6724
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6728(r13)
branch_0x801082a4:
    addi    r4, r13, R13Off_m0x6724
    cmplwi  r4, 0x0
    beq-    branch_0x801082d8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x801082d8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x801082d8:
    li      r3, 0x1
    b       branch_0x801082e4

branch_0x801082e0:
    li      r3, 0x0
branch_0x801082e4:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa0
    blr


.globl __dt__20TNerveWireTrapSearchFv
__dt__20TNerveWireTrapSearchFv: # 0x80108304
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80108348
    lis     r3, __vvt__20TNerveWireTrapSearch@ha
    addi    r0, r3, __vvt__20TNerveWireTrapSearch@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80108338
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80108338:
    extsh.  r0, r4
    ble-    branch_0x80108348
    mr      r3, r31
    bl      __dl__FPv
branch_0x80108348:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__27TNerveWireTrapOnewayMoveEndCFP24TSpineBase_10TLiveActor_
execute__27TNerveWireTrapOnewayMoveEndCFP24TSpineBase_10TLiveActor_: # 0x80108360
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    lwz     r31, 0x0(r4)
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xcc(r3)
    lis     r0, 0x4330
    lfd     f1, -0x5530(r2)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x553c(r2)
    stw     r3, 0x24(sp)
    lfs     f3, 0x178(r31)
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    fsubs   f0, f3, f0
    stfs    f0, 0x178(r31)
    lfs     f1, 0x178(r31)
    lfs     f0, -0x5540(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801083f4
    stfs    f0, 0x178(r31)
    li      r3, 0x1
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    b       branch_0x801083f8

branch_0x801083f4:
    li      r3, 0x0
branch_0x801083f8:
    clrlwi. r0, r3, 24
    beq-    branch_0x80108434
    lfs     f1, -0x5540(r2)
    lfs     f2, 0x170(r31)
    fcmpo   cr0, f1, f2
    bge-    branch_0x80108414
    b       branch_0x80108418

branch_0x80108414:
    lfs     f1, -0x553c(r2)
branch_0x80108418:
    lfs     f0, -0x5528(r2)
    addi    r4, r31, 0x10
    lwz     r3, 0x88(r31)
    fmadds  f1, f0, f2, f1
    bl      getPoint__11TWireBinderCFPQ29JGeometry8TVec3_f_f
    li      r3, 0x1
    b       branch_0x80108438

branch_0x80108434:
    li      r3, 0x0
branch_0x80108438:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__27TNerveWireTrapOnewayMoveEndFv
__dt__27TNerveWireTrapOnewayMoveEndFv: # 0x8010844c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80108490
    lis     r3, __vvt__27TNerveWireTrapOnewayMoveEnd@ha
    addi    r0, r3, __vvt__27TNerveWireTrapOnewayMoveEnd@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80108480
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80108480:
    extsh.  r0, r4
    ble-    branch_0x80108490
    mr      r3, r31
    bl      __dl__FPv
branch_0x80108490:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveWireTrapOnewayMoveCFP24TSpineBase_10TLiveActor_
execute__24TNerveWireTrapOnewayMoveCFP24TSpineBase_10TLiveActor_: # 0x801084a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    mr      r29, r4
    stw     r28, 0x78(sp)
    addi    r28, r3, 0x0
    lwz     r0, 0x20(r4)
    lis     r4, unk_803f2dd0@h
    lwz     r30, 0x0(r29)
    addi    r31, r4, unk_803f2dd0@l
    cmpwi   r0, 0x0
    bne-    branch_0x80108614
    lfs     f1, 0x178(r30)
    lfs     f0, -0x553c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80108614
    cmplwi  r28, 0x0
    beq-    branch_0x80108524
    lwz     r4, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r4, r0
    bge-    branch_0x80108524
    lwz     r3, 0xc(r29)
    slwi    r0, r4, 2
    stwx    r28, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80108524:
    lbz     r0, R13Off_m0x6720(r13)
    extsb.  r0, r0
    bne-    branch_0x80108564
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveWireTrapGoWait@ha
    stw     r0, R13Off_m0x671c(r13)
    addi    r0, r3, __vvt__20TNerveWireTrapGoWait@l
    lis     r3, __dt__20TNerveWireTrapGoWaitFv@h
    stw     r0, R13Off_m0x671c(r13)
    addi    r4, r3, __dt__20TNerveWireTrapGoWaitFv@l
    addi    r3, r13, R13Off_m0x671c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6720(r13)
branch_0x80108564:
    addi    r4, r13, R13Off_m0x671c
    cmplwi  r4, 0x0
    beq-    branch_0x80108598
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80108598
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80108598:
    lbz     r0, R13Off_m0x6748(r13)
    extsb.  r0, r0
    bne-    branch_0x801085d8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__29TNerveWireTrapOnewayMoveStart@ha
    stw     r0, R13Off_m0x6744(r13)
    addi    r0, r3, __vvt__29TNerveWireTrapOnewayMoveStart@l
    lis     r3, __dt__29TNerveWireTrapOnewayMoveStartFv@ha
    stw     r0, R13Off_m0x6744(r13)
    addi    r4, r3, __dt__29TNerveWireTrapOnewayMoveStartFv@l
    addi    r3, r13, R13Off_m0x6744
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6748(r13)
branch_0x801085d8:
    addi    r4, r13, R13Off_m0x6744
    cmplwi  r4, 0x0
    beq-    branch_0x8010860c
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8010860c
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8010860c:
    li      r3, 0x1
    b       branch_0x80108818

branch_0x80108614:
    lwz     r0, 0x16c(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x8010862c
    lwz     r3, 0x16c(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x16c(r30)
branch_0x8010862c:
    lwz     r3, 0x88(r30)
    addi    r4, r30, 0x10
    lfs     f1, 0x170(r30)
    bl      isEndWire__11TWireBinderCFRCQ29JGeometry8TVec3_f_f
    clrlwi. r0, r3, 24
    beq-    branch_0x8010864c
    li      r4, 0x1
    b       branch_0x801086ec

branch_0x8010864c:
    mr      r3, r30
    bl      getWireDir__9TWireTrapCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0x38(sp)
    lwz     r0, 0x164(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801086b0
    xoris   r0, r0, 0x8000
    lfd     f2, -0x5530(r2)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    lfs     f3, 0x168(r30)
    stw     r0, 0x70(sp)
    lfs     f0, -0x5538(r2)
    lfd     f1, 0x70(sp)
    lfs     f4, -0x553c(r2)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    fadds   f1, f4, f0
    b       branch_0x801086b4

branch_0x801086b0:
    lfs     f1, -0x553c(r2)
branch_0x801086b4:
    lfs     f0, 0x170(r30)
    addi    r3, sp, 0x30
    fmuls   f1, f0, f1
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x17c(r30)
    addi    r3, sp, 0x30
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r3, 0x30(sp)
    li      r4, 0x0
    lwz     r0, 0x34(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x38(sp)
    stw     r0, 0x9c(r30)
branch_0x801086ec:
    clrlwi. r0, r4, 24
    beq-    branch_0x80108814
    cmplwi  r28, 0x0
    beq-    branch_0x80108724
    lwz     r4, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r4, r0
    bge-    branch_0x80108724
    lwz     r3, 0xc(r29)
    slwi    r0, r4, 2
    stwx    r28, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80108724:
    lbz     r0, R13Off_m0x6728(r13)
    extsb.  r0, r0
    bne-    branch_0x80108764
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveWireTrapWait@ha
    stw     r0, R13Off_m0x6724(r13)
    addi    r0, r3, __vvt__18TNerveWireTrapWait@l
    lis     r3, __dt__18TNerveWireTrapWaitFv@ha
    stw     r0, R13Off_m0x6724(r13)
    addi    r4, r3, __dt__18TNerveWireTrapWaitFv@l
    addi    r3, r13, R13Off_m0x6724
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6728(r13)
branch_0x80108764:
    addi    r4, r13, R13Off_m0x6724
    cmplwi  r4, 0x0
    beq-    branch_0x80108798
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80108798
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80108798:
    lbz     r0, R13Off_m0x6738(r13)
    extsb.  r0, r0
    bne-    branch_0x801087d8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveWireTrapOnewayMoveEnd@ha
    stw     r0, R13Off_m0x6734(r13)
    addi    r0, r3, __vvt__27TNerveWireTrapOnewayMoveEnd@l
    lis     r3, __dt__27TNerveWireTrapOnewayMoveEndFv@ha
    stw     r0, R13Off_m0x6734(r13)
    addi    r4, r3, __dt__27TNerveWireTrapOnewayMoveEndFv@l
    addi    r3, r13, R13Off_m0x6734
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6738(r13)
branch_0x801087d8:
    addi    r4, r13, R13Off_m0x6734
    cmplwi  r4, 0x0
    beq-    branch_0x8010880c
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8010880c
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8010880c:
    li      r3, 0x1
    b       branch_0x80108818

branch_0x80108814:
    li      r3, 0x0
branch_0x80108818:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    lwz     r28, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl __dt__29TNerveWireTrapOnewayMoveStartFv
__dt__29TNerveWireTrapOnewayMoveStartFv: # 0x80108838
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010887c
    lis     r3, __vvt__29TNerveWireTrapOnewayMoveStart@ha
    addi    r0, r3, __vvt__29TNerveWireTrapOnewayMoveStart@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8010886c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8010886c:
    extsh.  r0, r4
    ble-    branch_0x8010887c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010887c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__24TNerveWireTrapOnewayMoveFv
__dt__24TNerveWireTrapOnewayMoveFv: # 0x80108894
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801088d8
    lis     r3, __vvt__24TNerveWireTrapOnewayMove@ha
    addi    r0, r3, __vvt__24TNerveWireTrapOnewayMove@l
    stw     r0, 0x0(r31)
    beq-    branch_0x801088c8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x801088c8:
    extsh.  r0, r4
    ble-    branch_0x801088d8
    mr      r3, r31
    bl      __dl__FPv
branch_0x801088d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__29TNerveWireTrapOnewayMoveStartCFP24TSpineBase_10TLiveActor_
execute__29TNerveWireTrapOnewayMoveStartCFP24TSpineBase_10TLiveActor_: # 0x801088f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    lwz     r31, 0x0(r4)
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xcc(r3)
    lis     r0, 0x4330
    lfd     f1, -0x5530(r2)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x553c(r2)
    stw     r3, 0x24(sp)
    lfs     f3, 0x178(r31)
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    fadds   f0, f3, f0
    stfs    f0, 0x178(r31)
    lfs     f0, 0x178(r31)
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80108980
    stfs    f2, 0x178(r31)
    li      r3, 0x1
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    b       branch_0x80108984

branch_0x80108980:
    li      r3, 0x0
branch_0x80108984:
    clrlwi. r0, r3, 24
    beq-    branch_0x80108994
    li      r3, 0x1
    b       branch_0x80108998

branch_0x80108994:
    li      r3, 0x0
branch_0x80108998:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl execute__24TNerveWireTrapReturnMoveCFP24TSpineBase_10TLiveActor_
execute__24TNerveWireTrapReturnMoveCFP24TSpineBase_10TLiveActor_: # 0x801089ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r4
    stw     r29, 0x5c(sp)
    mr      r29, r3
    lwz     r4, 0x0(r4)
    lwz     r0, 0x16c(r4)
    addi    r31, r4, 0x0
    cmpwi   r0, 0x0
    ble-    branch_0x801089ec
    lwz     r3, 0x16c(r31)
    addi    r0, r3, -0x1
    stw     r0, 0x16c(r31)
branch_0x801089ec:
    lwz     r3, 0x88(r31)
    addi    r4, r31, 0x10
    lfs     f1, 0x170(r31)
    bl      isEndWire__11TWireBinderCFRCQ29JGeometry8TVec3_f_f
    clrlwi. r0, r3, 24
    beq-    branch_0x80108a1c
    lfs     f1, 0x170(r31)
    li      r4, 0x1
    lfs     f0, -0x5524(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x170(r31)
    b       branch_0x80108abc

branch_0x80108a1c:
    mr      r3, r31
    bl      getWireDir__9TWireTrapCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x164(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x80108a80
    xoris   r0, r0, 0x8000
    lfd     f2, -0x5530(r2)
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    lfs     f3, 0x168(r31)
    stw     r0, 0x50(sp)
    lfs     f0, -0x5538(r2)
    lfd     f1, 0x50(sp)
    lfs     f4, -0x553c(r2)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    fadds   f1, f4, f0
    b       branch_0x80108a84

branch_0x80108a80:
    lfs     f1, -0x553c(r2)
branch_0x80108a84:
    lfs     f0, 0x170(r31)
    addi    r3, sp, 0x28
    fmuls   f1, f0, f1
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x17c(r31)
    addi    r3, sp, 0x28
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r3, 0x28(sp)
    li      r4, 0x0
    lwz     r0, 0x2c(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x30(sp)
    stw     r0, 0x9c(r31)
branch_0x80108abc:
    clrlwi. r0, r4, 24
    beq-    branch_0x80108b74
    cmplwi  r29, 0x0
    beq-    branch_0x80108af4
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x80108af4
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r29, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80108af4:
    lbz     r0, R13Off_m0x6728(r13)
    extsb.  r0, r0
    bne-    branch_0x80108b38
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveWireTrapWait@ha
    stw     r0, R13Off_m0x6724(r13)
    addi    r0, r3, __vvt__18TNerveWireTrapWait@l
    lis     r4, __dt__18TNerveWireTrapWaitFv@ha
    stw     r0, R13Off_m0x6724(r13)
    lis     r3, unk_803f2e18@h
    addi    r5, r3, unk_803f2e18@l
    addi    r4, r4, __dt__18TNerveWireTrapWaitFv@l
    addi    r3, r13, R13Off_m0x6724
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6728(r13)
branch_0x80108b38:
    addi    r4, r13, R13Off_m0x6724
    cmplwi  r4, 0x0
    beq-    branch_0x80108b6c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80108b6c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80108b6c:
    li      r3, 0x1
    b       branch_0x80108b78

branch_0x80108b74:
    li      r3, 0x0
branch_0x80108b78:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl __dt__24TNerveWireTrapReturnMoveFv
__dt__24TNerveWireTrapReturnMoveFv: # 0x80108b94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80108bd8
    lis     r3, __vvt__24TNerveWireTrapReturnMove@ha
    addi    r0, r3, __vvt__24TNerveWireTrapReturnMove@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80108bc8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80108bc8:
    extsh.  r0, r4
    ble-    branch_0x80108bd8
    mr      r3, r31
    bl      __dl__FPv
branch_0x80108bd8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__16TWireTrapManagerFv
createModelData__16TWireTrapManagerFv: # 0x80108bf0
    mflr    r0
    lis     r4, entry_2671@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_2671@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__16TWireTrapManagerFR20JSUMemoryInputStream
load__16TWireTrapManagerFR20JSUMemoryInputStream: # 0x80108c24
    mflr    r0
    lis     r5, unk_80383748@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    addi    r31, r5, unk_80383748@l
    li      r3, 0xe4
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80108d10
    addi    r3, r28, 0x0
    addi    r4, r31, 0x108
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r31, 0x11c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0xa8
    addi    r6, r31, 0x11c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r0, r3, __vvt__10TParamT_f_@l
    stw     r0, 0xa8(r28)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r0, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x5520(r2)
    addi    r3, r31, 0x130
    stfs    f0, 0xb8(r28)
    stw     r0, 0xa8(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0xbc
    addi    r6, r31, 0x130
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r26, r3, __vvt__10TParamT_l_@l
    stw     r26, 0xbc(r28)
    li      r0, 0x3c
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0xcc(r28)
    addi    r27, r3, __vvt__11TParamRT_l_@l
    addi    r3, r31, 0x140
    stw     r27, 0xbc(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0xd0
    addi    r6, r31, 0x140
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0xd0(r28)
    li      r0, 0x5a
    addi    r3, r28, 0x0
    stw     r0, 0xe0(r28)
    stw     r27, 0xd0(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
branch_0x80108d10:
    stw     r28, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__16TWireTrapManagerFPCc
__ct__16TWireTrapManagerFPCc: # 0x80108d34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__16TWireTrapManager@ha
    addi    r0, r3, __vvt__16TWireTrapManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getWireBinder__9TWireTrapCFv
getWireBinder__9TWireTrapCFv: # 0x80108d70
    lwz     r3, 0x88(r3)
    blr


.globl getNerveFromMode__9TWireTrapFi
getNerveFromMode__9TWireTrapFi: # 0x80108d78
    mflr    r0
    lis     r4, unk_803f2dd0@h
    stw     r0, 0x4(sp)
    cmpwi   r3, 0x1
    addi    r5, r4, unk_803f2dd0@l
    stwu    sp, -0x8(sp)
    beq-    branch_0x80108df8
    bge-    branch_0x80108da4
    cmpwi   r3, 0x0
    bge-    branch_0x80108db0
    b       branch_0x80108e88

branch_0x80108da4:
    cmpwi   r3, 0x3
    bge-    branch_0x80108e88
    b       branch_0x80108e40

branch_0x80108db0:
    lbz     r0, R13Off_m0x6750(r13)
    extsb.  r0, r0
    bne-    branch_0x80108df0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveWireTrapReturnMove@ha
    stw     r0, R13Off_m0x674c(r13)
    addi    r0, r3, __vvt__24TNerveWireTrapReturnMove@l
    lis     r3, __dt__24TNerveWireTrapReturnMoveFv@ha
    stw     r0, R13Off_m0x674c(r13)
    addi    r4, r3, __dt__24TNerveWireTrapReturnMoveFv@l
    addi    r3, r13, R13Off_m0x674c
    addi    r5, r5, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6750(r13)
branch_0x80108df0:
    addi    r3, r13, R13Off_m0x674c
    b       branch_0x80108e8c

branch_0x80108df8:
    lbz     r0, R13Off_m0x6740(r13)
    extsb.  r0, r0
    bne-    branch_0x80108e38
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveWireTrapOnewayMove@ha
    stw     r0, R13Off_m0x673c(r13)
    addi    r0, r3, __vvt__24TNerveWireTrapOnewayMove@l
    lis     r3, __dt__24TNerveWireTrapOnewayMoveFv@ha
    stw     r0, R13Off_m0x673c(r13)
    addi    r4, r3, __dt__24TNerveWireTrapOnewayMoveFv@l
    addi    r3, r13, R13Off_m0x673c
    addi    r5, r5, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6740(r13)
branch_0x80108e38:
    addi    r3, r13, R13Off_m0x673c
    b       branch_0x80108e8c

branch_0x80108e40:
    lbz     r0, R13Off_m0x6730(r13)
    extsb.  r0, r0
    bne-    branch_0x80108e80
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveWireTrapSearch@ha
    stw     r0, R13Off_m0x672c(r13)
    addi    r0, r3, __vvt__20TNerveWireTrapSearch@l
    lis     r3, __dt__20TNerveWireTrapSearchFv@ha
    stw     r0, R13Off_m0x672c(r13)
    addi    r4, r3, __dt__20TNerveWireTrapSearchFv@l
    addi    r3, r13, R13Off_m0x672c
    addi    r5, r5, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6730(r13)
branch_0x80108e80:
    addi    r3, r13, R13Off_m0x672c
    b       branch_0x80108e8c

branch_0x80108e88:
    li      r3, 0x0
branch_0x80108e8c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getWireDir__9TWireTrapCFv
getWireDir__9TWireTrapCFv: # 0x80108e9c
    lwz     r3, 0x88(r3)
    addi    r3, r3, 0x8
    blr


.globl checkHitActors__9TWireTrapFv
checkHitActors__9TWireTrapFv: # 0x80108ea8
    mflr    r0
    lis     r4, __dt__18TNerveWireTrapWaitFv@ha
    stw     r0, 0x4(sp)
    lis     r5, unk_10000026@h
    stwu    sp, -0x1c0(sp)
    stfd    f31, 0x1b8(sp)
    stfd    f30, 0x1b0(sp)
    stfd    f29, 0x1a8(sp)
    stfd    f28, 0x1a0(sp)
    stfd    f27, 0x198(sp)
    stmw    r22, 0x170(sp)
    addi    r22, r4, __dt__18TNerveWireTrapWaitFv@l
    lis     r4, unk_80000001@h
    mr      r26, r3
    addi    r31, r4, unk_80000001@l
    addi    r30, r5, unk_10000026@l
    lis     r24, 0x4330
    lhz     r0, 0x48(r3)
    lwz     r6, 0x44(r3)
    lis     r3, unk_803f2e18@h
    slwi    r0, r0, 2
    lfs     f28, -0x553c(r2)
    addi    r23, r3, unk_803f2e18@l
    lis     r3, __vvt__18TNerveWireTrapWait@ha
    lfd     f29, -0x5530(r2)
    lfs     f30, -0x5538(r2)
    addi    r28, r6, 0x0
    lfs     f31, -0x5540(r2)
    add     r29, r6, r0
    lfs     f27, -0x5524(r2)
    addi    r25, r3, __vvt__18TNerveWireTrapWait@l
    b       branch_0x80109418

branch_0x80108f28:
    lwz     r3, 0x0(r28)
    lwz     r0, 0x4c(r3)
    cmpw    r0, r30
    beq-    branch_0x80108f58
    bge-    branch_0x80109414
    cmpw    r0, r31
    beq-    branch_0x80108f48
    b       branch_0x80109414

branch_0x80108f48:
    addi    r3, r26, 0x0
    li      r4, 0x9
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x80109414

branch_0x80108f58:
    cmplw   r3, r26
    beq-    branch_0x80109414
    addi    r27, r3, 0x0
    addi    r3, r26, 0x0
    bl      getWireBinder__9TWireTrapCFv
    bl      getDir__11TWireBinderCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0xc4(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0xcc(sp)
    lwz     r0, 0x164(r26)
    cmpwi   r0, 0x0
    ble-    branch_0x80108fbc
    xoris   r0, r0, 0x8000
    lfs     f1, 0x168(r26)
    stw     r0, 0x16c(sp)
    stw     r24, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f1, f0
    fdivs   f0, f0, f30
    fadds   f1, f28, f0
    b       branch_0x80108fc0

branch_0x80108fbc:
    lfs     f1, -0x553c(r2)
branch_0x80108fc0:
    lfs     f0, 0x170(r26)
    addi    r3, sp, 0xc4
    fmuls   f1, f0, f1
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x17c(r26)
    addi    r3, sp, 0xc4
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0xc4(sp)
    mr      r3, r27
    lwz     r4, 0xc8(sp)
    stw     r0, 0x15c(sp)
    lwz     r0, 0xcc(sp)
    stw     r4, 0x160(sp)
    stw     r0, 0x164(sp)
    bl      getWireBinder__9TWireTrapCFv
    bl      getDir__11TWireBinderCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x164(r27)
    cmpwi   r0, 0x0
    ble-    branch_0x8010904c
    xoris   r0, r0, 0x8000
    lfs     f1, 0x168(r27)
    stw     r0, 0x16c(sp)
    stw     r24, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f1, f0
    fdivs   f0, f0, f30
    fadds   f1, f28, f0
    b       branch_0x80109050

branch_0x8010904c:
    lfs     f1, -0x553c(r2)
branch_0x80109050:
    lfs     f0, 0x170(r27)
    addi    r3, sp, 0xb4
    fmuls   f1, f0, f1
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x17c(r27)
    addi    r3, sp, 0xb4
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0xb4(sp)
    lwz     r3, 0xb8(sp)
    stw     r0, 0x150(sp)
    lwz     r0, 0xbc(sp)
    stw     r3, 0x154(sp)
    stw     r0, 0x158(sp)
    lwz     r0, 0x16c(r26)
    cmpwi   r0, 0x0
    bgt-    branch_0x8010924c
    lha     r0, 0x180(r26)
    cmpwi   r0, 0x0
    bne-    branch_0x8010924c
    li      r0, 0x1e
    stw     r0, 0x16c(r26)
    mr      r3, r26
    bl      getWireDir__9TWireTrapCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0x94(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x164(r26)
    cmpwi   r0, 0x0
    ble-    branch_0x801090f8
    xoris   r0, r0, 0x8000
    lfs     f1, 0x168(r26)
    stw     r0, 0x16c(sp)
    stw     r24, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f1, f0
    fdivs   f0, f0, f30
    fadds   f1, f28, f0
    b       branch_0x801090fc

branch_0x801090f8:
    lfs     f1, -0x553c(r2)
branch_0x801090fc:
    lfs     f0, 0x170(r26)
    addi    r3, sp, 0x94
    fmuls   f1, f0, f1
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x17c(r26)
    addi    r3, sp, 0x94
    bl      scale__Q29JGeometry8TVec3_f_Ff
    mr      r3, r27
    bl      getWireDir__9TWireTrapCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x164(r27)
    cmpwi   r0, 0x0
    ble-    branch_0x8010916c
    xoris   r0, r0, 0x8000
    lfs     f1, 0x168(r27)
    stw     r0, 0x16c(sp)
    stw     r24, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f1, f0
    fdivs   f0, f0, f30
    fadds   f1, f28, f0
    b       branch_0x80109170

branch_0x8010916c:
    lfs     f1, -0x553c(r2)
branch_0x80109170:
    lfs     f0, 0x170(r27)
    addi    r3, sp, 0x84
    fmuls   f1, f0, f1
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x17c(r27)
    addi    r3, sp, 0x84
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x160(sp)
    lfs     f0, 0x154(sp)
    lfs     f2, 0x15c(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x150(sp)
    lfs     f4, 0x164(sp)
    lfs     f3, 0x158(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x801091c4
    lfs     f0, 0x170(r26)
    fmuls   f0, f0, f27
    stfs    f0, 0x170(r26)
branch_0x801091c4:
    lbz     r0, R13Off_m0x6728(r13)
    extsb.  r0, r0
    bne-    branch_0x801091f4
    addi    r3, r13, R13Off_m0x6724
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    stw     r25, R13Off_m0x6724(r13)
    addi    r3, r13, R13Off_m0x6724
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6728(r13)
branch_0x801091f4:
    addi    r6, r13, R13Off_m0x6724
    lwz     r5, 0x8c(r26)
    cmplwi  r6, 0x0
    beq-    branch_0x8010924c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80109240
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80109240
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80109240:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8010924c:
    lwz     r0, 0x16c(r27)
    cmpwi   r0, 0x0
    bgt-    branch_0x80109414
    lha     r0, 0x180(r27)
    cmpwi   r0, 0x0
    bne-    branch_0x80109414
    li      r0, 0x1e
    stw     r0, 0x16c(r27)
    mr      r3, r27
    bl      getWireDir__9TWireTrapCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x164(r27)
    cmpwi   r0, 0x0
    ble-    branch_0x801092c0
    xoris   r0, r0, 0x8000
    lfs     f1, 0x168(r27)
    stw     r0, 0x16c(sp)
    stw     r24, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f1, f0
    fdivs   f0, f0, f30
    fadds   f1, f28, f0
    b       branch_0x801092c4

branch_0x801092c0:
    lfs     f1, -0x553c(r2)
branch_0x801092c4:
    lfs     f0, 0x170(r27)
    addi    r3, sp, 0x74
    fmuls   f1, f0, f1
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x17c(r27)
    addi    r3, sp, 0x74
    bl      scale__Q29JGeometry8TVec3_f_Ff
    mr      r3, r27
    bl      getWireDir__9TWireTrapCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x164(r27)
    cmpwi   r0, 0x0
    ble-    branch_0x80109334
    xoris   r0, r0, 0x8000
    lfs     f1, 0x168(r27)
    stw     r0, 0x16c(sp)
    stw     r24, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f1, f0
    fdivs   f0, f0, f30
    fadds   f1, f28, f0
    b       branch_0x80109338

branch_0x80109334:
    lfs     f1, -0x553c(r2)
branch_0x80109338:
    lfs     f0, 0x170(r27)
    addi    r3, sp, 0x64
    fmuls   f1, f0, f1
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x17c(r27)
    addi    r3, sp, 0x64
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lfs     f1, 0x154(sp)
    lfs     f0, 0x160(sp)
    lfs     f2, 0x150(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x15c(sp)
    lfs     f4, 0x158(sp)
    lfs     f3, 0x164(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x8010938c
    lfs     f0, 0x170(r27)
    fmuls   f0, f0, f27
    stfs    f0, 0x170(r27)
branch_0x8010938c:
    lbz     r0, R13Off_m0x6728(r13)
    extsb.  r0, r0
    bne-    branch_0x801093bc
    addi    r3, r13, R13Off_m0x6724
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    stw     r25, R13Off_m0x6724(r13)
    addi    r3, r13, R13Off_m0x6724
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6728(r13)
branch_0x801093bc:
    addi    r6, r13, R13Off_m0x6724
    lwz     r5, 0x8c(r27)
    cmplwi  r6, 0x0
    beq-    branch_0x80109414
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80109408
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80109408
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80109408:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80109414:
    addi    r28, r28, 0x4
branch_0x80109418:
    cmplw   r28, r29
    bne+    branch_0x80108f28
    lmw     r22, 0x170(sp)
    lwz     r0, 0x1c4(sp)
    lfd     f31, 0x1b8(sp)
    lfd     f30, 0x1b0(sp)
    mtlr    r0
    lfd     f29, 0x1a8(sp)
    lfd     f28, 0x1a0(sp)
    lfd     f27, 0x198(sp)
    addi    sp, sp, 0x1c0
    blr


.globl getDir__11TWireBinderCFv
getDir__11TWireBinderCFv: # 0x80109448
    addi    r3, r3, 0x8
    blr


.globl moveObject__9TWireTrapFv
moveObject__9TWireTrapFv: # 0x80109450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0x164(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80109490
    lwz     r3, 0x164(r31)
    addi    r0, r3, -0x1
    stw     r0, 0x164(r31)
    lwz     r0, 0x164(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x80109490
    lfs     f0, -0x5540(r2)
    stfs    f0, 0x168(r31)
branch_0x80109490:
    lfs     f2, 0x24(r31)
    mr      r3, r31
    lfs     f0, -0x5518(r2)
    lfs     f1, -0x551c(r2)
    lfs     f3, 0x28(r31)
    fmuls   f0, f0, f2
    fmuls   f2, f1, f2
    fmuls   f1, f1, f3
    stfs    f0, 0x50(r31)
    lfs     f0, -0x5538(r2)
    fmuls   f0, f0, f3
    stfs    f0, 0x54(r31)
    stfs    f2, 0x58(r31)
    stfs    f1, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    mr      r3, r31
    bl      checkHitActors__9TWireTrapFv
    mr      r3, r31
    bl      moveObject__10TLiveActorFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x20bf
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8010950c
    addi    r4, r31, 0x10
    li      r3, 0x20bf
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8010950c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl calcRootMatrix__9TWireTrapFv
calcRootMatrix__9TWireTrapFv: # 0x80109520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1d8(sp)
    stfd    f31, 0x1d0(sp)
    stfd    f30, 0x1c8(sp)
    stfd    f29, 0x1c0(sp)
    stfd    f28, 0x1b8(sp)
    stfd    f27, 0x1b0(sp)
    stw     r31, 0x1ac(sp)
    stw     r30, 0x1a8(sp)
    mr      r30, r3
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80109564
    mr      r3, r30
    bl      calcRootMatrix__11TSpineEnemyFv
    b       branch_0x80109ad0

branch_0x80109564:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x190
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801095b4
    lfs     f0, 0x24(r30)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x17c(r3)
branch_0x801095b4:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x191
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80109604
    lfs     f0, 0x24(r30)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x17c(r3)
branch_0x80109604:
    lwz     r4, 0x88(r30)
    addi    r3, sp, 0x130
    lfs     f1, 0x170(r30)
    addi    r5, r30, 0x10
    bl      getDirAtPos__11TWireBinderCFRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0x130(sp)
    addi    r5, sp, 0x124
    lwz     r4, 0x134(sp)
    addi    r3, sp, 0x174
    stw     r0, 0x148(sp)
    lwz     r0, 0x138(sp)
    stw     r4, 0x14c(sp)
    addi    r4, sp, 0x148
    lfs     f1, -0x5540(r2)
    stw     r0, 0x150(sp)
    lfs     f0, -0x553c(r2)
    lfs     f3, 0x170(r30)
    lfs     f2, 0x148(sp)
    stfs    f1, 0x124(sp)
    fmuls   f2, f2, f3
    stfs    f0, 0x128(sp)
    stfs    f2, 0x148(sp)
    lfs     f0, 0x14c(sp)
    stfs    f1, 0x12c(sp)
    fmuls   f0, f0, f3
    stfs    f0, 0x14c(sp)
    lfs     f0, 0x150(sp)
    fmuls   f0, f0, f3
    stfs    f0, 0x150(sp)
    bl      SMS_CalcToDirMatrix__FRQ29JGeometry64TPosition3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lfs     f5, 0x174(sp)
    lfs     f4, 0x188(sp)
    lfs     f3, 0x19c(sp)
    fadds   f6, f5, f4
    lfs     f1, -0x5540(r2)
    fadds   f2, f3, f6
    fcmpo   cr0, f2, f1
    cror    2, 1, 2
    bne-    branch_0x8010971c
    lfs     f0, -0x553c(r2)
    fadds   f8, f2, f0
    fcmpo   cr0, f8, f1
    cror    2, 0, 2
    bne-    branch_0x801096b8
    b       branch_0x801096dc

branch_0x801096b8:
    frsqrte f3, f8
    lfs     f2, -0x5514(r2)
    lfs     f0, -0x5510(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f8, f1, f0
    fmuls   f0, f2, f0
    fmuls   f8, f8, f0
branch_0x801096dc:
    lfs     f6, -0x5514(r2)
    lfs     f5, 0x198(sp)
    fdivs   f7, f6, f8
    lfs     f4, 0x18c(sp)
    lfs     f3, 0x17c(sp)
    lfs     f2, 0x194(sp)
    lfs     f1, 0x184(sp)
    lfs     f0, 0x178(sp)
    fsubs   f4, f5, f4
    fsubs   f2, f3, f2
    fsubs   f0, f1, f0
    fmuls   f31, f6, f8
    fmuls   f30, f7, f4
    fmuls   f29, f7, f2
    fmuls   f28, f7, f0
    b       branch_0x801098e8

branch_0x8010971c:
    fcmpo   cr0, f5, f4
    cror    2, 1, 2
    bne-    branch_0x80109730
    fmr     f0, f5
    b       branch_0x80109734

branch_0x80109730:
    fmr     f0, f4
branch_0x80109734:
    fcmpo   cr0, f0, f3
    cror    2, 1, 2
    bne-    branch_0x80109744
    b       branch_0x80109748

branch_0x80109744:
    fmr     f0, f3
branch_0x80109748:
    fcmpu   cr0, f0, f5
    bne-    branch_0x801097d8
    fadds   f1, f4, f3
    lfs     f2, -0x553c(r2)
    lfs     f0, -0x5540(r2)
    fsubs   f1, f5, f1
    fadds   f7, f2, f1
    fcmpo   cr0, f7, f0
    cror    2, 0, 2
    bne-    branch_0x80109774
    b       branch_0x80109798

branch_0x80109774:
    frsqrte f3, f7
    lfs     f2, -0x5514(r2)
    lfs     f0, -0x5510(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f7, f1, f0
    fmuls   f0, f2, f0
    fmuls   f7, f7, f0
branch_0x80109798:
    lfs     f6, -0x5514(r2)
    lfs     f5, 0x178(sp)
    fdivs   f8, f6, f7
    lfs     f4, 0x184(sp)
    lfs     f3, 0x194(sp)
    lfs     f2, 0x17c(sp)
    lfs     f1, 0x198(sp)
    lfs     f0, 0x18c(sp)
    fadds   f4, f5, f4
    fadds   f2, f3, f2
    fsubs   f0, f1, f0
    fmuls   f30, f6, f7
    fmuls   f29, f8, f4
    fmuls   f28, f8, f2
    fmuls   f31, f8, f0
    b       branch_0x801098e8

branch_0x801097d8:
    fcmpu   cr0, f0, f4
    bne-    branch_0x80109868
    fadds   f1, f3, f5
    lfs     f2, -0x553c(r2)
    lfs     f0, -0x5540(r2)
    fsubs   f1, f4, f1
    fadds   f7, f2, f1
    fcmpo   cr0, f7, f0
    cror    2, 0, 2
    bne-    branch_0x80109804
    b       branch_0x80109828

branch_0x80109804:
    frsqrte f3, f7
    lfs     f2, -0x5514(r2)
    lfs     f0, -0x5510(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f7, f1, f0
    fmuls   f0, f2, f0
    fmuls   f7, f7, f0
branch_0x80109828:
    lfs     f6, -0x5514(r2)
    lfs     f5, 0x18c(sp)
    fdivs   f8, f6, f7
    lfs     f4, 0x198(sp)
    lfs     f3, 0x178(sp)
    lfs     f2, 0x184(sp)
    lfs     f1, 0x17c(sp)
    lfs     f0, 0x194(sp)
    fadds   f4, f5, f4
    fadds   f2, f3, f2
    fsubs   f0, f1, f0
    fmuls   f29, f6, f7
    fmuls   f28, f8, f4
    fmuls   f30, f8, f2
    fmuls   f31, f8, f0
    b       branch_0x801098e8

branch_0x80109868:
    fsubs   f1, f3, f6
    lfs     f2, -0x553c(r2)
    lfs     f0, -0x5540(r2)
    fadds   f7, f2, f1
    fcmpo   cr0, f7, f0
    cror    2, 0, 2
    bne-    branch_0x80109888
    b       branch_0x801098ac

branch_0x80109888:
    frsqrte f3, f7
    lfs     f2, -0x5514(r2)
    lfs     f0, -0x5510(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f7, f1, f0
    fmuls   f0, f2, f0
    fmuls   f7, f7, f0
branch_0x801098ac:
    lfs     f6, -0x5514(r2)
    lfs     f5, 0x194(sp)
    fdivs   f8, f6, f7
    lfs     f4, 0x17c(sp)
    lfs     f3, 0x18c(sp)
    lfs     f2, 0x198(sp)
    lfs     f1, 0x184(sp)
    lfs     f0, 0x178(sp)
    fadds   f4, f5, f4
    fadds   f2, f3, f2
    fsubs   f0, f1, f0
    fmuls   f28, f6, f7
    fmuls   f30, f8, f4
    fmuls   f29, f8, f2
    fmuls   f31, f8, f0
branch_0x801098e8:
    lfs     f1, 0x38(r30)
    lfs     f0, -0x550c(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x38(r30)
    lfs     f1, 0x38(r30)
    lfs     f0, -0x5540(r2)
    lfs     f2, -0x5508(r2)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f0, -0x5540(r2)
    fadds   f0, f0, f1
    stfs    f0, 0x38(r30)
    lfs     f1, -0x5504(r2)
    lfs     f0, 0x38(r30)
    lfs     f2, -0x5514(r2)
    fmuls   f0, f1, f0
    fmuls   f27, f2, f0
    fmr     f1, f27
    bl      sinf
    lfs     f0, -0x5540(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x164(sp)
    stfs    f0, 0x168(sp)
    lfs     f0, -0x553c(r2)
    fmuls   f0, f0, f1
    fmr     f1, f27
    stfs    f0, 0x16c(sp)
    bl      cosf
    stfs    f1, 0x170(sp)
    mr      r3, r30
    addi    r31, sp, 0x174
    lfs     f8, 0x168(sp)
    lfs     f10, 0x164(sp)
    fmuls   f0, f31, f8
    lfs     f6, 0x16c(sp)
    lfs     f7, 0x170(sp)
    fmuls   f2, f31, f10
    fmuls   f4, f31, f6
    fmadds  f3, f29, f7, f0
    lfs     f0, -0x5500(r2)
    fmuls   f5, f30, f10
    lfs     f1, -0x553c(r2)
    fmadds  f4, f28, f7, f4
    fmadds  f3, f28, f10, f3
    fmadds  f2, f30, f7, f2
    fmadds  f4, f30, f8, f4
    fnmsubs  f9, f30, f6, f3
    fmsubs  f5, f31, f7, f5
    fmadds  f2, f29, f6, f2
    fnmsubs  f10, f29, f10, f4
    fnmsubs  f3, f29, f8, f5
    fnmsubs  f27, f28, f8, f2
    fmuls   f11, f0, f9
    fnmsubs  f3, f28, f6, f3
    fmuls   f2, f0, f10
    fmuls   f6, f0, f27
    fmuls   f12, f0, f3
    fmuls   f8, f11, f9
    fmuls   f3, f6, f27
    fmuls   f5, f6, f9
    fsubs   f0, f1, f8
    fmuls   f7, f2, f10
    fmuls   f4, f12, f10
    fsubs   f13, f1, f3
    fsubs   f0, f0, f7
    fmuls   f6, f6, f10
    fmuls   f3, f12, f9
    stfs    f0, 0x174(sp)
    fsubs   f2, f5, f4
    fadds   f0, f5, f4
    fadds   f1, f6, f3
    stfs    f2, 0x178(sp)
    fmuls   f5, f11, f10
    fmuls   f4, f12, f27
    stfs    f1, 0x17c(sp)
    fsubs   f1, f13, f7
    stfs    f0, 0x184(sp)
    fsubs   f0, f5, f4
    fsubs   f2, f6, f3
    stfs    f1, 0x188(sp)
    fadds   f1, f5, f4
    stfs    f0, 0x18c(sp)
    fsubs   f0, f13, f8
    stfs    f2, 0x194(sp)
    stfs    f1, 0x198(sp)
    stfs    f0, 0x19c(sp)
    lfs     f0, 0x10(r30)
    stfs    f0, 0x180(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x190(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x1a0(sp)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r4, 0x24(r30)
    mr      r3, r30
    lwz     r0, 0x28(r30)
    stw     r4, 0x13c(sp)
    stw     r0, 0x140(sp)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x144(sp)
    lfs     f1, 0x178(r30)
    lfs     f0, 0x13c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x13c(sp)
    lfs     f0, 0x140(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x140(sp)
    lfs     f0, 0x144(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x144(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x13c(sp)
    lwz     r0, 0x140(sp)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x144(sp)
    stw     r0, 0x1c(r3)
branch_0x80109ad0:
    lwz     r0, 0x1dc(sp)
    lfd     f31, 0x1d0(sp)
    lfd     f30, 0x1c8(sp)
    mtlr    r0
    lfd     f29, 0x1c0(sp)
    lfd     f28, 0x1b8(sp)
    lfd     f27, 0x1b0(sp)
    lwz     r31, 0x1ac(sp)
    lwz     r30, 0x1a8(sp)
    addi    sp, sp, 0x1d8
    blr


.globl fmodf__3stdFff
fmodf__3stdFff: # 0x80109afc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f2
    stfd    f30, 0x18(sp)
    fmr     f30, f1
    fabs    f1, f31
    fabs    f0, f30
    fcmpo   cr0, f1, f0
    ble-    branch_0x80109b30
    fmr     f1, f30
    b       branch_0x80109b40

branch_0x80109b30:
    fdivs   f1, f30, f31
    bl      __cvt_dbl_usll
    bl      __cvt_sll_flt
    fnmsubs  f1, f31, f1, f30
branch_0x80109b40:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lfd     f30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl kill__9TWireTrapFv
kill__9TWireTrapFv: # 0x80109b58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x80109c4c
    lwz     r3, 0xf0(r31)
    li      r0, 0x0
    ori     r3, r3, 0x1
    stw     r3, 0xf0(r31)
    lwz     r3, 0x64(r31)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    lwz     r3, 0x8c(r31)
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x72c0(r13)
    extsb.  r0, r0
    bne-    branch_0x80109be0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__31TNerveWaitForever_10TLiveActor_@ha
    stw     r0, R13Off_m0x72bc(r13)
    addi    r0, r3, __vvt__31TNerveWaitForever_10TLiveActor_@l
    lis     r4, __dt__31TNerveWaitForever_10TLiveActor_Fv@h
    stw     r0, R13Off_m0x72bc(r13)
    lis     r3, unk_803f2dd0@h
    addi    r5, r3, unk_803f2dd0@l
    addi    r4, r4, __dt__31TNerveWaitForever_10TLiveActor_Fv@l
    addi    r3, r13, R13Off_m0x72bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x72c0(r13)
branch_0x80109be0:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x72bc
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80109bf8
    stw     r0, 0x1c(r4)
branch_0x80109bf8:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    addi    r6, sp, 0x24
    li      r5, 0x0
    stw     r3, 0x14(r4)
    addi    r4, r31, 0x10
    li      r3, 0xe4
    lfs     f0, -0x553c(r2)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x553c(r2)
    addi    r6, sp, 0x18
    addi    r4, r31, 0x10
    stfs    f0, 0x18(sp)
    li      r3, 0xe6
    li      r5, 0x0
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x20(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
branch_0x80109c4c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl receiveMessage__9TWireTrapFP9THitActorUl
receiveMessage__9TWireTrapFP9THitActorUl: # 0x80109c60
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, -0x4
    cmplwi  r0, 0xb
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r3, 0x0
    bgt-    branch_0x80109e50
    lis     r3, unk_803bc7b8@ha
    addi    r3, r3, unk_803bc7b8@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x80109c98:
    lfs     f0, -0x553c(r2)
    addi    r6, sp, 0x6c
    addi    r4, r31, 0x10
    stfs    f0, 0x6c(sp)
    li      r3, 0xe7
    li      r5, 0x0
    stfs    f0, 0x70(sp)
    stfs    f0, 0x74(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r31, 0x10
    lfs     f1, -0x5540(r2)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    li      r0, 0x1e
    stw     r0, 0x164(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lwz     r4, 0x88(r31)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x10(r4)
    stw     r0, 0x68(sp)
    lfs     f1, 0x170(r31)
    lfs     f0, 0x60(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x60(sp)
    lfs     f0, 0x64(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x64(sp)
    lfs     f0, 0x68(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x68(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x64(sp)
    lfs     f2, 0x54(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x60(sp)
    lfs     f4, 0x5c(sp)
    lfs     f3, 0x68(sp)
    fmadds  f0, f2, f1, f0
    lfs     f1, -0x5540(r2)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80109dcc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb8(r3)
    stfs    f0, 0x168(r31)
    b       branch_0x80109dec

branch_0x80109dcc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb8(r3)
    fneg    f0, f0
    stfs    f0, 0x168(r31)
branch_0x80109dec:
    li      r3, 0x1
    b       branch_0x80109e58

branch_0x80109df4:
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80109e50
    lwz     r0, 0x64(r31)
    li      r3, 0x1
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    stw     r4, 0x68(r31)
    b       branch_0x80109e58

branch_0x80109e18:
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80109e50
    li      r0, 0x0
    stw     r0, 0x68(r31)
    li      r3, 0x1
    b       branch_0x80109e58

branch_0x80109e34:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x80109e58

branch_0x80109e50:
    mr      r3, r31
    bl      receiveMessage__11TSpineEnemyFP9THitActorUl
branch_0x80109e58:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl load__9TWireTrapFR20JSUMemoryInputStream
load__9TWireTrapFR20JSUMemoryInputStream: # 0x80109e6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xa0(sp)
    addi    r30, r4, 0x0
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, sp, 0x94
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x90
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r31, 0x174
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x8c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x94(sp)
    lis     r0, 0x4330
    lfd     f2, -0x5530(r2)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x54f8(r2)
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f1, 0x98(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x17c(r31)
    lwz     r0, 0x90(sp)
    cmpwi   r0, -0x1
    bne-    branch_0x80109f0c
    li      r0, 0x0
    stw     r0, 0x90(sp)
branch_0x80109f0c:
    lwz     r0, 0x90(sp)
    extsh   r0, r0
    sth     r0, 0x180(r31)
    lwz     r0, 0x8c(sp)
    cmpwi   r0, -0x1
    bne-    branch_0x80109f5c
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r2, R2Off_m0x5558
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    clrlwi  r4, r30, 16
    li      r5, 0x3
    addi    r6, r2, R2Off_m0x5550
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    b       branch_0x80109f90

branch_0x80109f5c:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r2, R2Off_m0x5558
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    clrlwi  r4, r30, 16
    li      r5, 0x3
    addi    r6, r2, R2Off_m0x5548
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
branch_0x80109f90:
    lwz     r3, 0x88(r31)
    addi    r4, r31, 0x10
    bl      init__11TWireBinderFRCQ29JGeometry8TVec3_f_
    lha     r3, 0x180(r31)
    li      r0, 0x0
    lwz     r4, 0x8c(r31)
    stw     r0, 0x8(r4)
    bl      getNerveFromMode__9TWireTrapFi
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80109fc4
    stw     r0, 0x1c(r4)
branch_0x80109fc4:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    addi    r3, sp, 0x80
    lfs     f1, -0x54fc(r2)
    lfs     f0, 0x34(r31)
    lwz     r4, 0x88(r31)
    fmuls   f0, f1, f0
    lwz     r0, R13Off_m0x5eac(r13)
    addi    r30, r4, 0x8
    lwz     r6, R13Off_m0x5ea4(r13)
    lwz     r4, R13Off_m0x5ea8(r13)
    fctiwz  f0, f0
    lfs     f4, -0x553c(r2)
    lfs     f2, -0x5540(r2)
    stfd    f0, 0x98(sp)
    lwz     r5, 0x9c(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8010a08c
    lfs     f1, 0x84(sp)
    lfs     f0, 0x4(r30)
    lfs     f2, 0x80(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x0(r30)
    lfs     f4, 0x88(sp)
    lfs     f3, 0x8(r30)
    fmadds  f0, f2, f1, f0
    lfs     f1, -0x5540(r2)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8010a064
    lfs     f0, -0x553c(r2)
    b       branch_0x8010a068

branch_0x8010a064:
    lfs     f0, -0x5524(r2)
branch_0x8010a068:
    stfs    f0, 0x170(r31)
    lfs     f0, -0x553c(r2)
    stfs    f0, 0x178(r31)
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8010a08c
set_f___Q29JGeometry8TVec3_f_Ffff_8010a08c: # 0x8010a08c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl init__9TWireTrapFP12TLiveManager
init__9TWireTrapFP12TLiveManager: # 0x8010a09c
    mflr    r0
    lis     r5, unk_80383748@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, unk_80383748@l
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
    beq-    branch_0x8010a0f0
    lwz     r4, 0x70(r30)
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8010a0f0:
    stw     r29, 0x78(r30)
    addi    r4, r31, 0xe0
    li      r5, 0x0
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8010a12c
    mr      r3, r29
    bl      __ct__7TBinderFv
    lis     r3, __vvt__11TWireBinder@ha
    addi    r0, r3, __vvt__11TWireBinder@l
    stw     r0, 0x0(r29)
branch_0x8010a12c:
    stw     r29, 0x88(r30)
    lbz     r0, R13Off_m0x72c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a174
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__31TNerveWaitForever_10TLiveActor_@ha
    stw     r0, R13Off_m0x72bc(r13)
    addi    r0, r3, __vvt__31TNerveWaitForever_10TLiveActor_@l
    lis     r4, __dt__31TNerveWaitForever_10TLiveActor_Fv@h
    stw     r0, R13Off_m0x72bc(r13)
    lis     r3, unk_803f2dd0@h
    addi    r5, r3, unk_803f2dd0@l
    addi    r4, r4, __dt__31TNerveWaitForever_10TLiveActor_Fv@l
    addi    r3, r13, R13Off_m0x72bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x72c0(r13)
branch_0x8010a174:
    lwz     r8, 0x8c(r30)
    li      r7, 0x0
    lis     r4, unk_10000026@h
    stw     r7, 0x8(r8)
    addi    r0, r13, R13Off_m0x72bc
    addi    r3, r30, 0x0
    stw     r7, 0x20(r8)
    addi    r4, r4, unk_10000026@l
    li      r5, 0x2
    stw     r0, 0x14(r8)
    lis     r6, 0x9000
    stw     r0, 0x18(r8)
    stw     r7, 0x1c(r8)
    lfs     f3, -0x551c(r2)
    lfs     f1, -0x5518(r2)
    fmr     f4, f3
    lfs     f2, -0x5538(r2)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    addi    r30, r3, 0x190
    lbz     r0, 0x190(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8010a1f8
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x14c
    li      r5, 0x190
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8010a1f8:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x191
    lbz     r0, 0x191(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8010a228
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x174
    li      r5, 0x191
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8010a228:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__9TWireTrapFPCc
__ct__9TWireTrapFPCc: # 0x8010a244
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__9TWireTrap@ha
    addi    r3, r3, __vvt__9TWireTrap@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x160(r31)
    stw     r0, 0x164(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16TWireTrapManagerFv
__dt__16TWireTrapManagerFv: # 0x8010a294
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8010a2dc
    lis     r3, __vvt__16TWireTrapManager@ha
    addi    r0, r3, __vvt__16TWireTrapManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8010a2dc
    mr      r3, r30
    bl      __dl__FPv
branch_0x8010a2dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TWireTrapFv
__dt__9TWireTrapFv: # 0x8010a2f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8010a348
    lis     r3, __vvt__9TWireTrap@ha
    addi    r3, r3, __vvt__9TWireTrap@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8010a348
    mr      r3, r30
    bl      __dl__FPv
branch_0x8010a348:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_wireTrap_cpp
__sinit_wireTrap_cpp: # 0x8010a364
    mflr    r0
    lis     r3, unk_803f2dd0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f2dd0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a3ac
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8010a3ac:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a3dc
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8010a3dc:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a40c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8010a40c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a43c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8010a43c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a46c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8010a46c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a49c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8010a49c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a4cc
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8010a4cc:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a4fc
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8010a4fc:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a52c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8010a52c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a55c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8010a55c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a58c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8010a58c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a5bc
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8010a5bc:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a5ec
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8010a5ec:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a61c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8010a61c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8010a64c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8010a64c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8010a660
unk_8010a660: # 0x8010a660
    addi    r3, r3, -0x20
    b       __dt__9TWireTrapFv

