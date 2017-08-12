
.globl __dt__19TNerveHauntLegHauntFv
__dt__19TNerveHauntLegHauntFv: # 0x801061e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80106224
    lis     r3, __vvt__19TNerveHauntLegHaunt@ha
    addi    r0, r3, __vvt__19TNerveHauntLegHaunt@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80106214
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80106214:
    extsh.  r0, r4
    ble-    branch_0x80106224
    mr      r3, r31
    bl      __dl__FPv
branch_0x80106224:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveHauntLegHauntCFP24TSpineBase_10TLiveActor_
execute__19TNerveHauntLegHauntCFP24TSpineBase_10TLiveActor_: # 0x8010623c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x801062f4
    mr      r3, r31
    lfs     f31, -0x55c0(r2)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lwz     r5, 0x19c(r31)
    fmr     f1, f31
    addi    r4, r31, 0x0
    addi    r3, sp, 0x54
    addi    r5, r5, 0x10
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r4, 0x54(sp)
    li      r0, 0x1
    lwz     r3, 0x58(sp)
    stw     r4, 0x1a0(r31)
    stw     r3, 0x1a4(r31)
    lwz     r3, 0x5c(sp)
    stw     r3, 0x1a8(r31)
    lwz     r4, 0x1a0(r31)
    lwz     r3, 0x1a4(r31)
    stw     r4, 0xac(r31)
    stw     r3, 0xb0(r31)
    lwz     r3, 0x1a8(r31)
    stw     r3, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x55c0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0xf0(r31)
    ori     r3, r3, 0x80
    stw     r3, 0xf0(r31)
    stb     r0, 0x199(r31)
    b       branch_0x80106478

branch_0x801062f4:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80106308
    li      r0, 0x1
    b       branch_0x8010630c

branch_0x80106308:
    li      r0, 0x0
branch_0x8010630c:
    cmpwi   r0, 0x0
    bne-    branch_0x80106478
    lbz     r0, 0x199(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80106434
    lwz     r5, 0x1a0(r31)
    li      r0, 0x0
    lwz     r4, 0x1a4(r31)
    addi    r3, sp, 0x2c
    stw     r5, 0xac(r31)
    stw     r4, 0xb0(r31)
    lwz     r4, 0x1a8(r31)
    stw     r4, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x55c0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    stb     r0, 0x199(r31)
    lwz     r4, 0x19c(r31)
    lwz     r5, 0x10(r31)
    lwz     r0, 0x14(r31)
    addi    r4, r4, 0x10
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x34(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x30(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x34(sp)
    stw     r3, 0x68(sp)
    lfs     f0, -0x55bc(r2)
    stw     r0, 0x6c(sp)
    lfs     f1, 0x68(sp)
    lfs     f3, 0x6c(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x64(sp)
    fmuls   f3, f3, f3
    fmadds  f1, f2, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801063c0
    b       branch_0x801063e4

branch_0x801063c0:
    frsqrte f3, f4
    lfs     f2, -0x55b8(r2)
    lfs     f0, -0x55b4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801063e4:
    lfs     f0, -0x55b0(r2)
    fcmpo   cr0, f4, f0
    bge-    branch_0x80106478
    lwz     r3, 0x19c(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80106478
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x4
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80106478
    lwz     r3, 0x19c(r31)
    li      r0, 0x1
    stw     r3, 0x6c(r31)
    stb     r0, 0x198(r31)
    b       branch_0x80106478

branch_0x80106434:
    lfs     f0, -0x55bc(r2)
    stfs    f0, 0x1ac(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x80106470
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80106470
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80106470:
    li      r3, 0x1
    b       branch_0x80106514

branch_0x80106478:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8010648c
    li      r0, 0x1
    b       branch_0x80106490

branch_0x8010648c:
    li      r0, 0x0
branch_0x80106490:
    cmpwi   r0, 0x0
    beq-    branch_0x80106510
    lbz     r0, 0x199(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801064dc
    lfs     f2, -0x55ac(r2)
    lfs     f1, 0x1ac(r31)
    lfs     f0, -0x55a8(r2)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801064c4
    fmr     f1, f0
    b       branch_0x801064d4

branch_0x801064c4:
    lfs     f0, -0x55bc(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801064d4
    fmr     f1, f0
branch_0x801064d4:
    stfs    f1, 0x1ac(r31)
    b       branch_0x80106510

branch_0x801064dc:
    lfs     f2, -0x55ac(r2)
    lfs     f1, 0x1ac(r31)
    lfs     f0, -0x55a4(r2)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801064fc
    fmr     f1, f0
    b       branch_0x8010650c

branch_0x801064fc:
    lfs     f0, -0x55bc(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8010650c
    fmr     f1, f0
branch_0x8010650c:
    stfs    f1, 0x1ac(r31)
branch_0x80106510:
    li      r3, 0x0
branch_0x80106514:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lwz     r31, 0x74(sp)
    mtlr    r0
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x80
    blr


.globl getTakingMtx__9THauntLegFv
getTakingMtx__9THauntLegFv: # 0x80106530
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x801065a0
    lfs     f29, 0x18(r31)
    addi    r3, sp, 0x44
    lfs     f30, 0x14(r31)
    lfs     f31, 0x10(r31)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0x50(sp)
    addi    r3, sp, 0x44
    stfs    f30, 0x60(sp)
    stfs    f29, 0x70(sp)
    lwz     r4, 0x74(r31)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    addi    r3, r3, 0x20
    b       branch_0x801065b0

branch_0x801065a0:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x60
branch_0x801065b0:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x98
    blr


.globl getBasNameTable__9THauntLegCFv
getBasNameTable__9THauntLegCFv: # 0x801065d0
    lis     r3, hauntleg_bastable@ha
    addi    r3, r3, hauntleg_bastable@l
    blr


.globl isCollidMove__9THauntLegFP9THitActor
isCollidMove__9THauntLegFP9THitActor: # 0x801065dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r3, 0x0
    lbz     r0, R13Off_m0x675c(r13)
    extsb.  r0, r0
    bne-    branch_0x8010663c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveHauntLegHaunt@ha
    stw     r0, R13Off_m0x6758(r13)
    addi    r0, r3, __vvt__19TNerveHauntLegHaunt@l
    lis     r4, __dt__19TNerveHauntLegHauntFv@h
    stw     r0, R13Off_m0x6758(r13)
    lis     r3, unk_803f2d10@h
    addi    r5, r3, unk_803f2d10@l
    addi    r4, r4, __dt__19TNerveHauntLegHauntFv@l
    addi    r3, r13, R13Off_m0x6758
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x675c(r13)
branch_0x8010663c:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6758
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80106714
    lbz     r0, 0x198(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80106714
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80106714
    lwz     r0, 0x4c(r31)
    clrrwi  r3, r0, 16
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x0
    beq-    branch_0x80106688
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x0
    bne-    branch_0x80106714
branch_0x80106688:
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801066a0
    lwz     r0, 0x19c(r30)
    cmplw   r31, r0
    beq-    branch_0x8010670c
branch_0x801066a0:
    stw     r31, 0x19c(r30)
    lbz     r0, R13Off_m0x675c(r13)
    extsb.  r0, r0
    bne-    branch_0x801066e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveHauntLegHaunt@ha
    stw     r0, R13Off_m0x6758(r13)
    addi    r0, r3, __vvt__19TNerveHauntLegHaunt@l
    lis     r4, __dt__19TNerveHauntLegHauntFv@h
    stw     r0, R13Off_m0x6758(r13)
    lis     r3, unk_803f2d10@h
    addi    r5, r3, unk_803f2d10@l
    addi    r4, r4, __dt__19TNerveHauntLegHauntFv@l
    addi    r3, r13, R13Off_m0x6758
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x675c(r13)
branch_0x801066e8:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x6758
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80106700
    stw     r0, 0x1c(r4)
branch_0x80106700:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8010670c:
    li      r3, 0x0
    b       branch_0x80106718

branch_0x80106714:
    li      r3, 0x0
branch_0x80106718:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl attackToMario__9THauntLegFv
attackToMario__9THauntLegFv: # 0x80106730
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      updateSquareToMario__11TSpineEnemyFv
    lfs     f1, 0x134(r31)
    lfs     f0, -0x559c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8010676c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
branch_0x8010676c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setDeadAnm__9THauntLegFv
setDeadAnm__9THauntLegFv: # 0x80106780
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x19c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801067c4
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x6
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x68(r31)
    stw     r0, 0x6c(r31)
branch_0x801067c4:
    lwz     r3, 0x194(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setRunAnm__9THauntLegFv
setRunAnm__9THauntLegFv: # 0x801067e8
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setWalkAnm__9THauntLegFv
setWalkAnm__9THauntLegFv: # 0x80106818
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setWaitAnm__9THauntLegFv
setWaitAnm__9THauntLegFv: # 0x80106848
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setGenerateAnm__9THauntLegFv
setGenerateAnm__9THauntLegFv: # 0x80106878
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcRootMatrix__9THauntLegFv
calcRootMatrix__9THauntLegFv: # 0x801068a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stfd    f30, 0x168(sp)
    stw     r31, 0x164(sp)
    stw     r30, 0x160(sp)
    mr      r30, r3
    stw     r30, R13Off_m0x6760(r13)
    bl      isEaten__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80106c90
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x88(r30)
    addi    r31, r3, 0x20
    lfs     f1, -0x55bc(r2)
    lwz     r3, 0x2c(r4)
    lfs     f0, 0x10(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80106acc
    lwz     r0, 0x138(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80106acc
    stfs    f1, 0x148(sp)
    addi    r3, sp, 0x130
    lfs     f0, -0x55a0(r2)
    mr      r4, r3
    stfs    f0, 0x14c(sp)
    stfs    f1, 0x150(sp)
    lwz     r6, 0x138(r30)
    lfs     f4, 0x148(sp)
    lwz     r5, 0x34(r6)
    lwz     r0, 0x38(r6)
    stw     r5, 0x13c(sp)
    stw     r0, 0x140(sp)
    lwz     r0, 0x3c(r6)
    stw     r0, 0x144(sp)
    lfs     f31, 0x144(sp)
    lfs     f5, 0x14c(sp)
    lfs     f30, 0x140(sp)
    fmuls   f2, f31, f5
    lfs     f3, 0x150(sp)
    lfs     f1, 0x13c(sp)
    fmuls   f0, f30, f4
    fmuls   f1, f1, f3
    fmsubs  f2, f30, f3, f2
    fmsubs  f1, f31, f4, f1
    stfs    f2, 0x130(sp)
    stfs    f1, 0x134(sp)
    lfs     f1, 0x13c(sp)
    fmsubs  f0, f1, f5, f0
    stfs    f0, 0x138(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0x138(sp)
    addi    r3, sp, 0x148
    lfs     f5, 0x130(sp)
    mr      r4, r3
    fmuls   f2, f3, f30
    lfs     f4, 0x134(sp)
    fmuls   f0, f5, f31
    lfs     f1, 0x13c(sp)
    fmsubs  f2, f4, f31, f2
    fmsubs  f0, f3, f1, f0
    stfs    f2, 0x148(sp)
    stfs    f0, 0x14c(sp)
    lfs     f0, 0x13c(sp)
    fmuls   f0, f4, f0
    fmsubs  f0, f5, f30, f0
    stfs    f0, 0x150(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x130(sp)
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    stfs    f0, 0x0(r31)
    addi    r4, sp, 0xfc
    lfs     f0, 0x134(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x138(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0x13c(sp)
    stfs    f0, 0x4(r31)
    stfs    f30, 0x14(r31)
    stfs    f31, 0x24(r31)
    lfs     f0, 0x148(sp)
    stfs    f0, 0x8(r31)
    lfs     f0, 0x14c(sp)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x150(sp)
    stfs    f0, 0x28(r31)
    lfs     f4, -0x55bc(r2)
    stfs    f4, 0xc(r31)
    stfs    f4, 0x1c(r31)
    stfs    f4, 0x2c(r31)
    lwz     r6, 0x88(r30)
    lfs     f1, -0x55a0(r2)
    lwz     r6, 0x2c(r6)
    lfs     f2, -0x5594(r2)
    lfs     f0, 0x10(r6)
    lfs     f3, -0x5598(r2)
    fsubs   f0, f1, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    fmuls   f0, f2, f0
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x158(sp)
    lwz     r7, 0x15c(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f2
    stfs    f1, 0xfc(sp)
    stfs    f4, 0x100(sp)
    stfs    f4, 0x104(sp)
    stfs    f4, 0x108(sp)
    stfs    f4, 0x10c(sp)
    stfs    f3, 0x110(sp)
    stfs    f0, 0x114(sp)
    stfs    f4, 0x118(sp)
    stfs    f4, 0x11c(sp)
    stfs    f2, 0x120(sp)
    stfs    f3, 0x124(sp)
    stfs    f4, 0x128(sp)
    bl      PSMTXConcat
    b       branch_0x80106c00

branch_0x80106acc:
    lfs     f1, -0x5598(r2)
    addi    r3, sp, 0xd8
    lfs     f0, 0x34(r30)
    mr      r4, r3
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f1, f1, f0
    lwz     r7, R13Off_m0x5ea4(r13)
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f0, -0x55bc(r2)
    fctiwz  f1, f1
    stfd    f1, 0x158(sp)
    lwz     r6, 0x15c(sp)
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    slwi    r0, r0, 2
    lfsx    f2, r7, r0
    lfsx    f1, r5, r0
    stfs    f1, 0xf0(sp)
    stfs    f0, 0xf4(sp)
    stfs    f2, 0xf8(sp)
    lwz     r6, 0xc4(r30)
    lfs     f4, 0xf0(sp)
    lwz     r5, 0x34(r6)
    lwz     r0, 0x38(r6)
    stw     r5, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lwz     r0, 0x3c(r6)
    stw     r0, 0xec(sp)
    lfs     f31, 0xe8(sp)
    lfs     f30, 0xec(sp)
    lfs     f5, 0xf4(sp)
    fmuls   f0, f31, f4
    lfs     f3, 0xf8(sp)
    fmuls   f2, f30, f5
    lfs     f1, 0xe4(sp)
    fmuls   f1, f1, f3
    fmsubs  f2, f31, f3, f2
    fmsubs  f1, f30, f4, f1
    stfs    f2, 0xd8(sp)
    stfs    f1, 0xdc(sp)
    lfs     f1, 0xe4(sp)
    fmsubs  f0, f1, f5, f0
    stfs    f0, 0xe0(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0xe0(sp)
    addi    r3, sp, 0xf0
    lfs     f5, 0xd8(sp)
    mr      r4, r3
    fmuls   f2, f3, f31
    lfs     f4, 0xdc(sp)
    fmuls   f0, f5, f30
    lfs     f1, 0xe4(sp)
    fmsubs  f2, f4, f30, f2
    fmsubs  f0, f3, f1, f0
    stfs    f2, 0xf0(sp)
    stfs    f0, 0xf4(sp)
    lfs     f0, 0xe4(sp)
    fmuls   f0, f4, f0
    fmsubs  f0, f5, f31, f0
    stfs    f0, 0xf8(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0xd8(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0xdc(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0xe0(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0xe4(sp)
    stfs    f0, 0x4(r31)
    stfs    f31, 0x14(r31)
    stfs    f30, 0x24(r31)
    lfs     f0, 0xf0(sp)
    stfs    f0, 0x8(r31)
    lfs     f0, 0xf4(sp)
    stfs    f0, 0x18(r31)
    lfs     f0, 0xf8(sp)
    stfs    f0, 0x28(r31)
branch_0x80106c00:
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80106c44
    lwz     r4, 0x194(r30)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r4)
    b       branch_0x80106c78

branch_0x80106c44:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    lwz     r3, 0x194(r30)
    addi    r4, r4, 0x60
    lfs     f0, 0xc(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x1c(r4)
    lwz     r3, 0x194(r30)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x2c(r4)
    lwz     r3, 0x194(r30)
    stfs    f0, 0x18(r3)
branch_0x80106c78:
    lwz     r3, 0x194(r30)
    lhz     r0, 0x48(r3)
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x80106c90
branch_0x80106c8c:
    bdnz-      branch_0x80106c8c
branch_0x80106c90:
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lfd     f30, 0x168(sp)
    mtlr    r0
    lwz     r31, 0x164(sp)
    lwz     r30, 0x160(sp)
    addi    sp, sp, 0x178
    blr


.globl reset__9THauntLegFv
reset__9THauntLegFv: # 0x80106cb0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x8(sp)
    stw     r4, 0x19c(r3)
    stb     r4, 0x198(r3)
    stb     r0, 0x199(r3)
    bl      reset__12TWalkerEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setMActorAndKeeper__9THauntLegFv
setMActorAndKeeper__9THauntLegFv: # 0x80106ce4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80106d1c
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80106d1c:
    stw     r30, 0x78(r31)
    lis     r3, unk_803836f0@h
    addi    r4, r3, unk_803836f0@l
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__9THauntLegFP12TLiveManager
init__9THauntLegFP12TLiveManager: # 0x80106d50
    mflr    r0
    lis     r5, unk_80383590@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r5, unk_80383590@l
    stw     r30, 0x70(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x6c(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, unk_10000025@h
    addi    r0, r3, unk_10000025@l
    stw     r0, 0x4c(r30)
    li      r0, 0x3a
    li      r4, 0x1
    stw     r0, 0x150(r30)
    lwz     r0, 0x64(r30)
    oris    r0, r0, 0x6000
    stw     r0, 0x64(r30)
    lwz     r3, 0x88(r30)
    bl      setMode__7TWalkerFi
    li      r0, 0x2
    stb     r0, 0x130(r30)
    lis     r3, HauntLegCallback__FP7J3DNodei@h
    addi    r5, r3, HauntLegCallback__FP7J3DNodei@l
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80106df0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x170
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__14THauntedObject@ha
    addi    r3, r3, __vvt__14THauntedObject@l
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r29)
branch_0x80106df0:
    stw     r29, 0x194(r30)
    addi    r3, r31, 0x184
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x184
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x3c
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x3c(sp)
    addi    r3, sp, 0x5c
    addi    r4, sp, 0x38
    stw     r0, 0x38(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x5c(sp)
    addi    r5, sp, 0x48
    addi    r4, r31, 0x0
    stw     r0, 0x58(sp)
    addi    r3, sp, 0x44
    addi    r6, r30, 0x194
    lwz     r0, 0x58(sp)
    stw     r0, 0x48(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lfs     f1, -0x5590(r2)
    lis     r3, unk_10000025@h
    lfs     f0, 0x148(r30)
    addi    r4, r3, unk_10000025@l
    lwz     r3, 0x194(r30)
    fmuls   f1, f1, f0
    li      r5, 0x2
    lis     r6, 0x8000
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x194(r30)
    stw     r30, 0x68(r3)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl receiveMessage__14THauntedObjectFP9THitActorUl
receiveMessage__14THauntedObjectFP9THitActorUl: # 0x80106ebc
    mflr    r0
    cmplwi  r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bgt-    branch_0x80106eec
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x80106f00

branch_0x80106eec:
    cmplwi  r5, 0xf
    bne-    branch_0x80106efc
    li      r3, 0x1
    b       branch_0x80106f00

branch_0x80106efc:
    li      r3, 0x0
branch_0x80106f00:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__16THauntLegManagerFv
createModelData__16THauntLegManagerFv: # 0x80106f10
    mflr    r0
    lis     r4, entry_2800@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_2800@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initSetEnemies__16THauntLegManagerFv
initSetEnemies__16THauntLegManagerFv: # 0x80106f44
    mflr    r0
    lis     r5, tevColorData2_2784@h
    stw     r0, 0x4(sp)
    lis     r4, tevColorData1_2783@h
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stfd    f29, 0xc8(sp)
    stmw    r21, 0x9c(sp)
    addi    r22, r3, 0x0
    addi    r30, r5, tevColorData2_2784@l
    addi    r31, r4, tevColorData1_2783@l
    li      r26, 0x0
    li      r25, 0x0
    li      r21, 0x0
    lis     r29, 0x4330
    lfd     f29, -0x5578(r2)
    lfs     f30, -0x5584(r2)
    lfs     f31, -0x5580(r2)
    b       branch_0x801070dc

branch_0x80106f94:
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r4, r2, R2Off_m0x558c
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x18(r22)
    mr      r23, r3
    lwz     r3, 0x8(r3)
    li      r0, 0x0
    lwzx    r24, r4, r21
    stw     r0, 0x78(sp)
    stw     r3, 0x7c(sp)
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    subf    r27, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x78(sp)
    stw     r0, 0x94(sp)
    xoris   r0, r27, 0x8000
    lwz     r5, 0x0(r23)
    addi    r4, sp, 0x68
    stw     r29, 0x90(sp)
    stw     r0, 0x8c(sp)
    lfd     f0, 0x90(sp)
    stw     r29, 0x88(sp)
    fsubs   f1, f0, f29
    lfd     f0, 0x88(sp)
    fmuls   f1, f30, f1
    fsubs   f0, f0, f29
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r0, 0x84(sp)
    add     r0, r3, r0
    slwi    r0, r0, 4
    add     r3, r5, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r4, 0x68(sp)
    mr      r3, r24
    lwz     r0, 0x6c(sp)
    stw     r4, 0x10(r24)
    stw     r0, 0x14(r24)
    lwz     r0, 0x70(sp)
    stw     r0, 0x18(r24)
    lfs     f0, 0x14(r24)
    fadds   f0, f0, f31
    stfs    f0, 0x14(r24)
    lwz     r0, 0xf0(r24)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r24)
    lwz     r12, 0x0(r24)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    slwi    r0, r26, 3
    add     r28, r30, r0
    add     r27, r31, r0
    li      r23, 0x0
    b       branch_0x801070a8

branch_0x8010707c:
    lwz     r0, 0x18(r22)
    addi    r4, r23, 0x0
    addi    r6, r27, 0x0
    lwzx    r3, r21, r0
    addi    r8, r28, 0x0
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    li      r7, 0x2
    lwz     r3, 0x4(r3)
    bl      SMS_InitPacket_TwoTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10
    addi    r23, r23, 0x1
branch_0x801070a8:
    lwz     r3, 0x74(r24)
    clrlwi  r4, r23, 16
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lhz     r0, 0x24(r3)
    cmplw   r4, r0
    blt+    branch_0x8010707c
    addi    r26, r26, 0x1
    cmpwi   r26, 0x8
    blt-    branch_0x801070d4
    li      r26, 0x0
branch_0x801070d4:
    addi    r25, r25, 0x1
    addi    r21, r21, 0x4
branch_0x801070dc:
    lwz     r0, 0x14(r22)
    cmpw    r25, r0
    blt+    branch_0x80106f94
    lmw     r21, 0x9c(sp)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    mtlr    r0
    lfd     f29, 0xc8(sp)
    addi    sp, sp, 0xe0
    blr


.globl createEnemyInstance__16THauntLegManagerFv
createEnemyInstance__16THauntLegManagerFv: # 0x80107108
    mflr    r0
    li      r3, 0x1b0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80107164
    lis     r4, unk_80383720@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_80383720@l
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, __vvt__9THauntLeg@ha
    addi    r3, r3, __vvt__9THauntLeg@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r3, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    stw     r3, 0x194(r31)
    stb     r3, 0x198(r31)
    stb     r0, 0x199(r31)
    stw     r3, 0x19c(r31)
branch_0x80107164:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__16THauntLegManagerFR20JSUMemoryInputStream
load__16THauntLegManagerFR20JSUMemoryInputStream: # 0x8010717c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x32c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801071b8
    lis     r3, unk_80383730@h
    addi    r4, r3, unk_80383730@l
    addi    r3, r30, 0x0
    bl      __ct__18TWalkerEnemyParamsFPCc
branch_0x801071b8:
    stw     r30, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__16THauntLegManagerFPCc
__ct__16THauntLegManagerFPCc: # 0x801071d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__16THauntLegManager@ha
    addi    r0, r3, __vvt__16THauntLegManager@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, R13Off_m0x6760(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl HauntLegCallback__FP7J3DNodei
HauntLegCallback__FP7J3DNodei: # 0x80107218
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x98(sp)
    bne-    branch_0x8010736c
    lwz     r30, R13Off_m0x6760(r13)
    cmplwi  r30, 0x0
    beq-    branch_0x801072b0
    lbz     r0, R13Off_m0x675c(r13)
    extsb.  r0, r0
    bne-    branch_0x80107288
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveHauntLegHaunt@ha
    stw     r0, R13Off_m0x6758(r13)
    addi    r0, r3, __vvt__19TNerveHauntLegHaunt@l
    lis     r4, __dt__19TNerveHauntLegHauntFv@h
    stw     r0, R13Off_m0x6758(r13)
    lis     r3, unk_803f2d10@h
    addi    r5, r3, unk_803f2d10@l
    addi    r4, r4, __dt__19TNerveHauntLegHauntFv@l
    addi    r3, r13, R13Off_m0x6758
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x675c(r13)
branch_0x80107288:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6758
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x801072a4
    li      r0, 0x1
    b       branch_0x801072a8

branch_0x801072a4:
    li      r0, 0x0
branch_0x801072a8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801072b8
branch_0x801072b0:
    li      r3, 0x1
    b       branch_0x80107370

branch_0x801072b8:
    lwz     r5, R13Off_m0x6760(r13)
    addi    r30, sp, 0x58
    lhz     r0, 0x18(r31)
    mr      r4, r30
    lfs     f0, 0x1ac(r5)
    lfs     f1, -0x5598(r2)
    mulli   r3, r0, 0x30
    lwz     r5, 0x74(r5)
    fmuls   f0, f1, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r5, 0x4(r5)
    lwz     r8, R13Off_m0x5ea8(r13)
    fctiwz  f0, f0
    lwz     r5, 0x58(r5)
    lwz     r6, R13Off_m0x5ea4(r13)
    stfd    f0, 0x90(sp)
    add     r3, r5, r3
    addi    r5, r3, 0x0
    lwz     r7, 0x94(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f2
    stfs    f3, 0x58(sp)
    stfs    f0, 0x5c(sp)
    lfs     f1, -0x55bc(r2)
    stfs    f1, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f2, 0x68(sp)
    stfs    f3, 0x6c(sp)
    stfs    f1, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f1, 0x7c(sp)
    lfs     f0, -0x55a0(r2)
    stfs    f0, 0x80(sp)
    stfs    f1, 0x84(sp)
    bl      PSMTXConcat
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, r30, 0x0
    bl      PSMTXConcat
branch_0x8010736c:
    li      r3, 0x1
branch_0x80107370:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl __dt__9THauntLegFv
__dt__9THauntLegFv: # 0x80107388
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80107408
    lis     r3, __vvt__9THauntLeg@ha
    addi    r3, r3, __vvt__9THauntLeg@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801073f8
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801073f8
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x801073f8:
    extsh.  r0, r31
    ble-    branch_0x80107408
    mr      r3, r30
    bl      __dl__FPv
branch_0x80107408:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14THauntedObjectFv
__dt__14THauntedObjectFv: # 0x80107424
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8010748c
    lis     r3, __vvt__14THauntedObject@ha
    addi    r3, r3, __vvt__14THauntedObject@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8010747c
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8010747c:
    extsh.  r0, r31
    ble-    branch_0x8010748c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8010748c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16THauntLegManagerFv
__dt__16THauntLegManagerFv: # 0x801074a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80107500
    lis     r3, __vvt__16THauntLegManager@ha
    addi    r0, r3, __vvt__16THauntLegManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801074f0
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x801074f0:
    extsh.  r0, r31
    ble-    branch_0x80107500
    mr      r3, r30
    bl      __dl__FPv
branch_0x80107500:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_hauntLeg_cpp
__sinit_hauntLeg_cpp: # 0x8010751c
    mflr    r0
    lis     r3, unk_803f2d10@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f2d10@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80107564
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80107564:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80107594
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80107594:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801075c4
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801075c4:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801075f4
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801075f4:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80107624
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80107624:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80107654
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80107654:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80107684
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80107684:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801076b4
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801076b4:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801076e4
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801076e4:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80107714
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80107714:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80107744
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80107744:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80107774
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80107774:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801077a4
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801077a4:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801077d4
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801077d4:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80107804
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80107804:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_80107818
unk_80107818: # 0x80107818
    addi    r3, r3, -0x20
    b       __dt__14THauntedObjectFv


.globl unk_80107820
unk_80107820: # 0x80107820
    addi    r3, r3, -0x20
    b       __dt__9THauntLegFv

