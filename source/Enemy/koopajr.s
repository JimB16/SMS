
.globl __dt__24TKoopaJrSubmarineManagerFv
__dt__24TKoopaJrSubmarineManagerFv: # 0x80117440
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80117488
    lis     r3, 0x803c
    subi    r0, r3, 0x299c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x80117488
    mr      r3, r30
    bl      __dl__FPv
branch_0x80117488:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createEnemyInstance__24TKoopaJrSubmarineManagerFv
createEnemyInstance__24TKoopaJrSubmarineManagerFv: # 0x801174a4
    mflr    r0
    li      r3, 0x1ac
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801174d4
    lis     r3, 0x8038
    addi    r4, r3, 0x4e6c
    addi    r3, r31, 0x0
    bl      __ct__17TKoopaJrSubmarineFPCc
branch_0x801174d4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__24TKoopaJrSubmarineManagerFv
loadAfter__24TKoopaJrSubmarineManagerFv: # 0x801174ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl load__24TKoopaJrSubmarineManagerFR20JSUMemoryInputStream
load__24TKoopaJrSubmarineManagerFR20JSUMemoryInputStream: # 0x80117520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    lwz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    mr      r3, r31
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x29c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80117568
    lis     r3, 0x8038
    addi    r4, r3, 0x4e88
    addi    r3, r30, 0x0
    bl      __ct__23TKoopaJrSubmarineParamsFPCc
branch_0x80117568:
    stw     r30, 0x38(r31)
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl createModelData__24TKoopaJrSubmarineManagerFv
createModelData__24TKoopaJrSubmarineManagerFv: # 0x8011758c
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4e54
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__24TKoopaJrSubmarineManagerFPCc
__ct__24TKoopaJrSubmarineManagerFPCc: # 0x801175c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x299c
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__34TNerveKoopaJrSubmarineLaunchKillerCFP24TSpineBase_10TLiveActor_
execute__34TNerveKoopaJrSubmarineLaunchKillerCFP24TSpineBase_10TLiveActor_: # 0x801175fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r31, 0x0(r4)
    lwz     r3, 0x180(r31)
    lwz     r0, 0x184(r31)
    cmpw    r3, r0
    bne-    branch_0x80117648
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x80117648
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x188(r31)
    stfs    f0, 0xc(r3)
    li      r3, 0x1
    b       branch_0x8011764c

branch_0x80117648:
    li      r3, 0x0
branch_0x8011764c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__34TNerveKoopaJrSubmarineLaunchKillerFv
__dt__34TNerveKoopaJrSubmarineLaunchKillerFv: # 0x80117660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801176a4
    lis     r3, 0x803c
    subi    r0, r3, 0x2948
    stw     r0, 0x0(r31)
    beq-    branch_0x80117694
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80117694:
    extsh.  r0, r4
    ble-    branch_0x801176a4
    mr      r3, r31
    bl      __dl__FPv
branch_0x801176a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__37TNerveKoopaJrSubmarineCannonOpenCloseCFP24TSpineBase_10TLiveActor_
execute__37TNerveKoopaJrSubmarineCannonOpenCloseCFP24TSpineBase_10TLiveActor_: # 0x801176bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x801176f0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x188(r31)
    stfs    f0, 0xc(r3)
branch_0x801176f0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8011770c
    li      r3, 0x1
    b       branch_0x80117710

branch_0x8011770c:
    li      r3, 0x0
branch_0x80117710:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__37TNerveKoopaJrSubmarineCannonOpenCloseFv
__dt__37TNerveKoopaJrSubmarineCannonOpenCloseFv: # 0x80117724
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80117768
    lis     r3, 0x803c
    subi    r0, r3, 0x2938
    stw     r0, 0x0(r31)
    beq-    branch_0x80117758
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80117758:
    extsh.  r0, r4
    ble-    branch_0x80117768
    mr      r3, r31
    bl      __dl__FPv
branch_0x80117768:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__26TNerveKoopaJrSubmarineWaitCFP24TSpineBase_10TLiveActor_
execute__26TNerveKoopaJrSubmarineWaitCFP24TSpineBase_10TLiveActor_: # 0x80117780
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x801177f0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x801177d0
    li      r4, 0x0
    b       branch_0x801177d4

branch_0x801177d0:
    lwz     r4, 0x0(r3)
branch_0x801177d4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0xc(r3)
branch_0x801177f0:
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__26TNerveKoopaJrSubmarineWaitFv
__dt__26TNerveKoopaJrSubmarineWaitFv: # 0x80117808
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011784c
    lis     r3, 0x803c
    subi    r0, r3, 0x2928
    stw     r0, 0x0(r31)
    beq-    branch_0x8011783c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011783c:
    extsh.  r0, r4
    ble-    branch_0x8011784c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011784c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkNerve__17TKoopaJrSubmarineFv
checkNerve__17TKoopaJrSubmarineFv: # 0x80117864
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stw     r31, 0xdc(sp)
    addi    r31, r4, 0x32b8
    stw     r30, 0xd8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xd4(sp)
    lbz     r0, -0x6650(r13)
    extsb.  r0, r0
    bne-    branch_0x801178cc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x664c(r13)
    subi    r0, r3, 0x2770
    lis     r3, 0x8011
    stw     r0, -0x664c(r13)
    addi    r4, r3, 0x7bdc
    subi    r3, r13, 0x664c
    addi    r5, r31, 0x14
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6650(r13)
branch_0x801178cc:
    lwz     r3, 0x1a0(r30)
    subi    r0, r13, 0x664c
    lwz     r3, 0x8c(r3)
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80117910
    mr      r3, r30
    bl      makeRelativeAngle__17TKoopaJrSubmarineFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x1d0(r3)
    mr      r3, r30
    stfs    f0, 0x168(r30)
    bl      makeRoundVelocity__17TKoopaJrSubmarineFv
branch_0x80117910:
    lfs     f0, 0xac(r30)
    lfs     f1, -0x52bc(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(r30)
    lfs     f0, 0xb0(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lfs     f0, 0xb4(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(r30)
    lbz     r0, 0x170(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80117a04
    lwz     r5, 0xac(r30)
    addi    r3, sp, 0xa4
    lwz     r0, 0xb0(r30)
    mr      r4, r3
    lfs     f31, -0x52b8(rtoc)
    stw     r5, 0xa4(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0xac(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x52b4(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80117990
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0xac(sp)
    stfs    f0, 0xa8(sp)
    stfs    f0, 0xa4(sp)
    b       branch_0x801179a4

branch_0x80117990:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0xa4
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801179a4:
    lwz     r0, 0xa4(sp)
    lwz     r3, 0xa8(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lfs     f2, 0x88(sp)
    lfs     f1, 0x80(sp)
    bl      atan2f
    lwz     r12, 0x0(r30)
    fmr     f31, f1
    mr      r3, r30
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f3, 0x1f8(r3)
    fmr     f1, f31
    lfs     f2, -0x52b0(rtoc)
    addi    r3, r30, 0x16c
    lfs     f0, -0x52ac(rtoc)
    fmuls   f2, f3, f2
    fdivs   f2, f2, f0
    bl      calcTurnDirection__14TDirectionCalcFff
    stfs    f1, 0x16c(r30)
branch_0x80117a04:
    lbz     r0, -0x6628(r13)
    extsb.  r0, r0
    bne-    branch_0x80117a44
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6624(r13)
    subi    r0, r3, 0x2928
    lis     r3, 0x8011
    stw     r0, -0x6624(r13)
    addi    r4, r3, 0x7808
    subi    r3, r13, 0x6624
    addi    r5, r31, 0x50
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6628(r13)
branch_0x80117a44:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6624
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80117bbc
    lbz     r0, -0x6620(r13)
    extsb.  r0, r0
    bne-    branch_0x80117a98
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x661c(r13)
    subi    r0, r3, 0x2938
    lis     r3, 0x8011
    stw     r0, -0x661c(r13)
    addi    r4, r3, 0x7724
    subi    r3, r13, 0x661c
    addi    r5, r31, 0x5c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6620(r13)
branch_0x80117a98:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x661c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80117b7c
    lwz     r0, 0x180(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x80117bbc
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x52a8(rtoc)
    mr      r29, r3
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80117bbc
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0xc(r29)
    lbz     r0, -0x6618(r13)
    extsb.  r0, r0
    bne-    branch_0x80117b20
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6614(r13)
    subi    r0, r3, 0x2948
    lis     r3, 0x8011
    stw     r0, -0x6614(r13)
    addi    r4, r3, 0x7660
    subi    r3, r13, 0x6614
    addi    r5, r31, 0x68
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6618(r13)
branch_0x80117b20:
    subi    r5, r13, 0x6614
    lwz     r6, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x80117bbc
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80117b6c
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x80117b6c
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x80117b6c:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
    b       branch_0x80117bbc

branch_0x80117b7c:
    lbz     r0, -0x6618(r13)
    extsb.  r0, r0
    bne-    branch_0x80117bbc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6614(r13)
    subi    r0, r3, 0x2948
    lis     r3, 0x8011
    stw     r0, -0x6614(r13)
    addi    r4, r3, 0x7660
    subi    r3, r13, 0x6614
    addi    r5, r31, 0x68
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6618(r13)
branch_0x80117bbc:
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lwz     r31, 0xdc(sp)
    mtlr    r0
    lwz     r30, 0xd8(sp)
    lwz     r29, 0xd4(sp)
    addi    sp, sp, 0xe8
    blr


.globl __dt__17TNerveKoopaJrWaitFv
__dt__17TNerveKoopaJrWaitFv: # 0x80117bdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80117c20
    lis     r3, 0x803c
    subi    r0, r3, 0x2770
    stw     r0, 0x0(r31)
    beq-    branch_0x80117c10
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80117c10:
    extsh.  r0, r4
    ble-    branch_0x80117c20
    mr      r3, r31
    bl      __dl__FPv
branch_0x80117c20:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl mod__Q29JGeometry8TUtil_f_Fff
mod__Q29JGeometry8TUtil_f_Fff: # 0x80117c38
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
    ble-    branch_0x80117c6c
    fmr     f1, f30
    b       branch_0x80117c7c

branch_0x80117c6c:
    fdivs   f1, f30, f31
    bl      __cvt_dbl_usll
    bl      __cvt_sll_flt
    fnmsubs  f1, f31, f1, f30
branch_0x80117c7c:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lfd     f30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl makeRoundVelocity__17TKoopaJrSubmarineFv
makeRoundVelocity__17TKoopaJrSubmarineFv: # 0x80117c94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stfd    f30, 0x90(sp)
    stfd    f29, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    lfs     f1, 0x164(r3)
    bl      cosf
    fmr     f30, f1
    lfs     f1, 0x164(r31)
    bl      sinf
    fmr     f3, f30
    lfs     f2, -0x52c0(rtoc)
    addi    r3, sp, 0x40
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80117f60
    lwz     r0, 0x40(sp)
    lwz     r3, 0x44(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
    lfs     f1, 0x168(r31)
    lfs     f0, 0x74(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x74(sp)
    lfs     f0, 0x78(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(sp)
    lwz     r3, 0x1a0(r31)
    lfs     f0, 0x74(sp)
    lwz     r3, 0x15c(r3)
    lfsu    f4, 0x10(r3)
    lfs     f3, 0x10(r31)
    fadds   f4, f4, f0
    lfs     f1, 0x7c(sp)
    lfs     f2, 0x8(r3)
    lfs     f0, 0x18(r31)
    fadds   f1, f2, f1
    fsubs   f31, f4, f3
    lfs     f2, -0x52c0(rtoc)
    fsubs   f30, f1, f0
    fmadds  f0, f31, f31, f2
    fmadds  f1, f30, f30, f0
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x80117d68
    fmr     f2, f1
    b       branch_0x80117d8c

branch_0x80117d68:
    frsqrte f4, f1
    lfs     f3, -0x52a4(rtoc)
    lfs     f0, -0x52a0(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f2, f1, f0
branch_0x80117d8c:
    lfs     f0, -0x5298(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80117da4
    li      r0, 0x1
    stb     r0, 0x170(r31)
    b       branch_0x80117f40

branch_0x80117da4:
    li      r0, 0x0
    stb     r0, 0x170(r31)
    lfs     f0, -0x52b4(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80117dcc
    lfs     f30, -0x52c0(rtoc)
    fmr     f31, f30
    fmr     f29, f31
    b       branch_0x80117de8

branch_0x80117dcc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x52b8(rtoc)
    lfs     f0, -0x52c0(rtoc)
    fmuls   f1, f2, f1
    fmuls   f29, f31, f1
    fmuls   f31, f0, f1
    fmuls   f30, f30, f1
branch_0x80117de8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1e4(r3)
    lfs     f0, 0xac(r31)
    fmuls   f29, f29, f1
    fmuls   f31, f31, f1
    fmuls   f30, f30, f1
    fadds   f0, f0, f29
    stfs    f0, 0xac(r31)
    lfs     f0, 0xb0(r31)
    fadds   f0, f0, f31
    stfs    f0, 0xb0(r31)
    lfs     f0, 0xb4(r31)
    fadds   f0, f0, f30
    stfs    f0, 0xb4(r31)
    lfs     f1, 0xac(r31)
    lfs     f0, 0xb0(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0xb4(r31)
    fmuls   f1, f0, f0
    lfs     f0, -0x52c0(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80117e64
    b       branch_0x80117e88

branch_0x80117e64:
    frsqrte f3, f31
    lfs     f2, -0x52a4(rtoc)
    lfs     f0, -0x52a0(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x80117e88:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f30, 0x20c(r3)
    fcmpo   cr0, f31, f30
    ble-    branch_0x80117f40
    lfs     f1, 0xac(r31)
    lfs     f0, 0xb0(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0xb4(r31)
    fmuls   f1, f0, f0
    lfs     f0, -0x52b4(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80117eec
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xac(r31)
    b       branch_0x80117f1c

branch_0x80117eec:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x52b8(rtoc)
    lfs     f0, 0xac(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xac(r31)
    lfs     f0, 0xb0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(r31)
    lfs     f0, 0xb4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(r31)
branch_0x80117f1c:
    lfs     f0, 0xac(r31)
    fmuls   f0, f0, f30
    stfs    f0, 0xac(r31)
    lfs     f0, 0xb0(r31)
    fmuls   f0, f0, f30
    stfs    f0, 0xb0(r31)
    lfs     f0, 0xb4(r31)
    fmuls   f0, f0, f30
    stfs    f0, 0xb4(r31)
branch_0x80117f40:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lfd     f30, 0x90(sp)
    mtlr    r0
    lfd     f29, 0x88(sp)
    lwz     r31, 0x84(sp)
    addi    sp, sp, 0xa0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80117f60
set_f___Q29JGeometry8TVec3_f_Ffff_80117f60: # 0x80117f60
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl makeRelativeAngle__17TKoopaJrSubmarineFv
makeRelativeAngle__17TKoopaJrSubmarineFv: # 0x80117f70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stfd    f28, 0xd0(sp)
    stfd    f27, 0xc8(sp)
    stw     r31, 0xc4(sp)
    mr      r31, r3
    lwz     r3, 0x1a0(r3)
    lwz     r3, 0x160(r3)
    bl      getFlameDirDegree__6TKoopaCFv
    lfs     f2, -0x52b0(rtoc)
    addi    r3, r31, 0x164
    lfs     f0, -0x52ac(rtoc)
    fmuls   f1, f1, f2
    fdivs   f31, f1, f0
    fmr     f1, f31
    bl      calcNearerDirection__14TDirectionCalcFf
    lwz     r3, 0x1a0(r31)
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x15c(r3)
    lfs     f2, 0x0(r4)
    lfsu    f0, 0x10(r3)
    lfs     f3, 0x164(r31)
    fsubs   f0, f2, f0
    fsubs   f1, f3, f1
    stfs    f0, 0xa8(sp)
    fabs    f30, f1
    lfs     f1, 0x4(r4)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f2, 0x8(r4)
    lfs     f1, 0x8(r3)
    lfs     f0, -0x52c0(rtoc)
    fsubs   f1, f2, f1
    stfs    f1, 0xb0(sp)
    stfs    f0, 0xac(sp)
    lwz     r0, 0xa8(sp)
    lwz     r3, 0xac(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0xb0(sp)
    stw     r3, 0x74(sp)
    stw     r0, 0x78(sp)
    lfs     f2, 0x78(sp)
    lfs     f1, 0x70(sp)
    bl      atan2f
    addi    r3, r31, 0x164
    fmr     f29, f1
    bl      calcNearerDirection__14TDirectionCalcFf
    lfs     f27, 0x164(r31)
    lwz     r3, 0x1a0(r31)
    fsubs   f0, f27, f1
    lwz     r3, 0x160(r3)
    fabs    f28, f0
    bl      isFlaming__6TKoopaCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80118090
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x108(r3)
    fcmpo   cr0, f30, f0
    cror    2, 0, 2
    bne-    branch_0x80118090
    lfs     f0, -0x52b0(rtoc)
    fadds   f27, f31, f0
    b       branch_0x801180b4

branch_0x80118090:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x11c(r3)
    fcmpo   cr0, f28, f0
    ble-    branch_0x801180b4
    fmr     f27, f29
branch_0x801180b4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x164(r31)
    lfs     f0, -0x52c0(rtoc)
    lfs     f2, -0x529c(rtoc)
    fsubs   f0, f1, f0
    lfs     f3, -0x5294(rtoc)
    lfs     f1, 0x1bc(r3)
    fmuls   f28, f3, f1
    fadds   f1, f2, f0
    bl      mod__Q29JGeometry8TUtil_f_Fff
    lfs     f0, -0x52c0(rtoc)
    addi    r3, r31, 0x164
    fadds   f0, f0, f1
    fmr     f1, f27
    stfs    f0, 0x164(r31)
    bl      calcNearerDirection__14TDirectionCalcFf
    lfs     f0, 0x164(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80118128
    fsubs   f1, f1, f0
    fcmpo   cr0, f1, f28
    bge-    branch_0x80118120
    fmr     f28, f1
branch_0x80118120:
    fadds   f0, f0, f28
    b       branch_0x8011813c

branch_0x80118128:
    fsubs   f1, f0, f1
    fcmpo   cr0, f1, f28
    bge-    branch_0x80118138
    fmr     f28, f1
branch_0x80118138:
    fsubs   f0, f0, f28
branch_0x8011813c:
    stfs    f0, 0x164(r31)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    addi    sp, sp, 0xf0
    blr


.globl getBasNameTable__17TKoopaJrSubmarineCFv
getBasNameTable__17TKoopaJrSubmarineCFv: # 0x80118168
    subi    r3, r13, 0x7d18
    blr


.globl makeKillerVelocity__17TKoopaJrSubmarineFP14TBathtubKillerQ29JGeometry8TVec3_f_
makeKillerVelocity__17TKoopaJrSubmarineFP14TBathtubKillerQ29JGeometry8TVec3_f_: # 0x80118170
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stfd    f30, 0x168(sp)
    stfd    f29, 0x160(sp)
    stfd    f28, 0x158(sp)
    stfd    f27, 0x150(sp)
    stw     r31, 0x14c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x148(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x144(sp)
    mr      r29, r3
    lwz     r0, 0x180(r3)
    add     r3, r29, r0
    lbz     r0, 0x178(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x801185f4
    lfs     f4, -0x52c0(rtoc)
    stfs    f4, 0x0(r31)
    lfs     f0, -0x52b8(rtoc)
    stfs    f0, 0x4(r31)
    stfs    f4, 0x8(r31)
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x134(sp)
    stw     r0, 0x138(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x13c(sp)
    lfs     f2, 0x134(sp)
    lfs     f0, 0x10(r30)
    lfs     f1, 0x138(sp)
    fsubs   f0, f2, f0
    stfs    f0, 0x128(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x12c(sp)
    lfs     f1, 0x13c(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x130(sp)
    stfs    f4, 0x12c(sp)
    lfs     f1, 0x128(sp)
    lfs     f3, 0x130(sp)
    lfs     f0, 0x12c(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x52b4(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80118260
    stfs    f4, 0x130(sp)
    stfs    f4, 0x12c(sp)
    stfs    f4, 0x128(sp)
    b       branch_0x80118290

branch_0x80118260:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x52b8(rtoc)
    lfs     f0, 0x128(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x128(sp)
    lfs     f0, 0x12c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x12c(sp)
    lfs     f0, 0x130(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x130(sp)
branch_0x80118290:
    lfs     f3, 0x8(r31)
    lfs     f5, 0x12c(sp)
    lfs     f4, 0x4(r31)
    fmuls   f0, f3, f5
    lfs     f2, 0x130(sp)
    lfs     f1, 0x128(sp)
    lfs     f30, -0x5290(rtoc)
    fmsubs  f0, f4, f2, f0
    stfs    f0, 0x11c(sp)
    lfs     f6, 0x0(r31)
    fmuls   f0, f6, f2
    fmsubs  f0, f3, f1, f0
    stfs    f0, 0x120(sp)
    lfs     f0, 0x128(sp)
    fmuls   f0, f4, f0
    fmsubs  f0, f6, f5, f0
    stfs    f0, 0x124(sp)
    lfs     f1, 0x11c(sp)
    lfs     f0, 0x120(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x124(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x52b4(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80118318
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0x124(sp)
    stfs    f0, 0x120(sp)
    stfs    f0, 0x11c(sp)
    b       branch_0x80118348

branch_0x80118318:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x52b8(rtoc)
    lfs     f0, 0x11c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x11c(sp)
    lfs     f0, 0x120(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x120(sp)
    lfs     f0, 0x124(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x124(sp)
branch_0x80118348:
    lfs     f1, -0x528c(rtoc)
    bl      sinf
    lfs     f0, 0x11c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x10c(sp)
    lfs     f0, 0x120(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x110(sp)
    lfs     f0, 0x124(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x114(sp)
    lfs     f1, -0x528c(rtoc)
    bl      cosf
    stfs    f1, 0x118(sp)
    lfs     f9, 0x114(sp)
    lfs     f8, 0x0(r31)
    lfs     f5, 0x10c(sp)
    fneg    f0, f9
    lfs     f6, 0x4(r31)
    fmuls   f1, f9, f8
    fneg    f13, f5
    lfs     f10, 0x8(r31)
    fmuls   f3, f9, f6
    lfs     f12, 0x110(sp)
    fmadds  f2, f13, f10, f1
    lfs     f11, 0x118(sp)
    fmuls   f1, f12, f8
    fmsubs  f4, f12, f10, f3
    fmadds  f7, f11, f6, f2
    fmsubs  f5, f5, f6, f1
    fmuls   f3, f12, f6
    fmadds  f6, f11, f8, f4
    fmuls   f2, f7, f0
    fmsubs  f4, f13, f8, f3
    fmuls   f1, f7, f11
    fmadds  f5, f11, f10, f5
    fneg    f8, f12
    fmadds  f2, f6, f11, f2
    fmuls   f3, f7, f13
    fmadds  f1, f6, f9, f1
    fnmsubs  f4, f9, f10, f4
    fnmsubs  f2, f5, f8, f2
    fmsubs  f3, f6, f8, f3
    fmadds  f1, f5, f13, f1
    fmadds  f2, f4, f13, f2
    fmadds  f3, f5, f11, f3
    fmadds  f1, f4, f8, f1
    stfs    f2, 0x0(r31)
    fmadds  f0, f4, f0, f3
    stfs    f1, 0x4(r31)
    stfs    f0, 0x8(r31)
    lwz     r0, 0x128(sp)
    lwz     r3, 0x12c(sp)
    stw     r0, 0x11c(sp)
    lwz     r0, 0x130(sp)
    stw     r3, 0x120(sp)
    stw     r0, 0x124(sp)
    lwz     r0, 0x180(r29)
    srawi   r3, r0, 2
    addze   r3, r3
    slwi    r3, r3, 2
    subfc.  r3, r3, r0
    bne-    branch_0x80118450
    lfs     f0, -0x5288(rtoc)
    fneg    f30, f0
    b       branch_0x80118480

branch_0x80118450:
    cmpwi   r3, 0x1
    bne-    branch_0x80118460
    lfs     f30, -0x5288(rtoc)
    b       branch_0x80118480

branch_0x80118460:
    cmpwi   r3, 0x2
    bne-    branch_0x80118474
    lfs     f0, -0x528c(rtoc)
    fneg    f30, f0
    b       branch_0x80118480

branch_0x80118474:
    cmpwi   r3, 0x3
    bne-    branch_0x80118480
    lfs     f30, -0x528c(rtoc)
branch_0x80118480:
    lfs     f0, -0x52a4(rtoc)
    fmuls   f29, f0, f30
    fmr     f1, f29
    bl      sinf
    lfs     f0, 0x11c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x10c(sp)
    lfs     f0, 0x120(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x110(sp)
    lfs     f0, 0x124(sp)
    fmuls   f0, f0, f1
    fmr     f1, f29
    stfs    f0, 0x114(sp)
    bl      cosf
    stfs    f1, 0x118(sp)
    lfs     f9, 0x114(sp)
    lfs     f8, 0x0(r31)
    lfs     f5, 0x10c(sp)
    fneg    f0, f9
    lfs     f6, 0x4(r31)
    fmuls   f1, f9, f8
    fneg    f13, f5
    lfs     f10, 0x8(r31)
    fmuls   f3, f9, f6
    lfs     f12, 0x110(sp)
    fmadds  f2, f13, f10, f1
    lfs     f11, 0x118(sp)
    fmuls   f1, f12, f8
    fmsubs  f4, f12, f10, f3
    fmadds  f7, f11, f6, f2
    fmsubs  f5, f5, f6, f1
    fmuls   f3, f12, f6
    fmadds  f6, f11, f8, f4
    fmuls   f2, f7, f0
    fmsubs  f4, f13, f8, f3
    fmuls   f1, f7, f11
    fmadds  f5, f11, f10, f5
    fneg    f8, f12
    fmadds  f2, f6, f11, f2
    fmuls   f3, f7, f13
    fmadds  f1, f6, f9, f1
    fnmsubs  f4, f9, f10, f4
    fnmsubs  f2, f5, f8, f2
    fmsubs  f3, f6, f8, f3
    fmadds  f1, f5, f13, f1
    fmadds  f2, f4, f13, f2
    fmadds  f3, f5, f11, f3
    fmadds  f1, f4, f8, f1
    stfs    f2, 0x0(r31)
    fmadds  f0, f4, f0, f3
    stfs    f1, 0x4(r31)
    stfs    f0, 0x8(r31)
    lfs     f1, 0x0(r31)
    lfs     f3, 0x8(r31)
    lfs     f0, 0x4(r31)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x52b4(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80118598
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0x8(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x0(r31)
    b       branch_0x801185c8

branch_0x80118598:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x52b8(rtoc)
    lfs     f0, 0x0(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
branch_0x801185c8:
    lfs     f1, 0x1a4(r30)
    lfs     f0, 0x0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
    b       branch_0x80118828

branch_0x801185f4:
    lfs     f1, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x8(r31)
    fmuls   f1, f0, f0
    lfs     f0, -0x52b4(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80118638
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0x8(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x0(r31)
    b       branch_0x80118668

branch_0x80118638:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x52b8(rtoc)
    lfs     f0, 0x0(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
branch_0x80118668:
    lfs     f1, 0x1a4(r30)
    lfs     f0, 0x0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xf8(sp)
    stw     r0, 0xfc(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x100(sp)
    lwz     r3, 0x1a0(r29)
    lwz     r3, 0x15c(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x1c(r3)
    stfs    f0, 0xfc(sp)
    lfs     f3, 0xf8(sp)
    lfs     f1, 0x10(r30)
    lfs     f2, 0x100(sp)
    fsubs   f31, f3, f1
    lfs     f0, 0x18(r30)
    lfs     f1, -0x52c0(rtoc)
    fsubs   f30, f2, f0
    fmadds  f0, f31, f31, f1
    fmadds  f28, f30, f30, f0
    fcmpo   cr0, f28, f1
    cror    2, 0, 2
    bne-    branch_0x80118704
    fmr     f29, f28
    b       branch_0x80118728

branch_0x80118704:
    frsqrte f3, f28
    lfs     f2, -0x52a4(rtoc)
    lfs     f0, -0x52a0(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f28, f1, f0
    fmuls   f0, f2, f0
    fmuls   f29, f28, f0
branch_0x80118728:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xcc(r3)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    fsubs   f27, f29, f0
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f29, 0xb8(r3)
    fcmpo   cr0, f27, f29
    cror    2, 1, 2
    bne-    branch_0x8011876c
    fmr     f29, f27
branch_0x8011876c:
    lfs     f0, -0x52b4(rtoc)
    fcmpo   cr0, f28, f0
    cror    2, 0, 2
    bne-    branch_0x8011878c
    lfs     f1, -0x52c0(rtoc)
    fmr     f2, f1
    fmr     f3, f2
    b       branch_0x801187ac

branch_0x8011878c:
    fmr     f1, f28
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x52b8(rtoc)
    lfs     f0, -0x52c0(rtoc)
    fmuls   f1, f2, f1
    fmuls   f3, f31, f1
    fmuls   f2, f0, f1
    fmuls   f1, f30, f1
branch_0x801187ac:
    fmuls   f3, f3, f29
    lfs     f0, 0x10(r30)
    fmuls   f2, f2, f29
    mr      r3, r30
    fmuls   f1, f1, f29
    fadds   f0, f0, f3
    stfs    f0, 0xdc(sp)
    lfs     f0, 0x14(r30)
    fadds   f0, f0, f2
    stfs    f0, 0xe0(sp)
    lfs     f0, 0x18(r30)
    fadds   f0, f0, f1
    stfs    f0, 0xe4(sp)
    lfs     f0, 0xfc(sp)
    stfs    f0, 0xe0(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x4ec(r3)
    mr      r4, r29
    lfs     f1, 0x4(r31)
    addi    r3, sp, 0xd0
    addi    r5, sp, 0xdc
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    stw     r3, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r0, 0xd8(sp)
    stw     r0, 0x8(r31)
branch_0x80118828:
    lwz     r5, 0x0(r31)
    addi    r4, sp, 0xc4
    lwz     r0, 0x4(r31)
    mr      r3, r30
    stw     r5, 0xc4(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0xcc(sp)
    bl      makeInitialVelocity__14TBathtubKillerFQ29JGeometry8TVec3_f_
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lfd     f30, 0x168(sp)
    mtlr    r0
    lfd     f29, 0x160(sp)
    lfd     f28, 0x158(sp)
    lfd     f27, 0x150(sp)
    lwz     r31, 0x14c(sp)
    lwz     r30, 0x148(sp)
    lwz     r29, 0x144(sp)
    addi    sp, sp, 0x178
    blr


.globl launchKiller__17TKoopaJrSubmarineFv
launchKiller__17TKoopaJrSubmarineFv: # 0x8011887c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    stw     r29, 0x54(sp)
    lwz     r0, 0x180(r3)
    lwz     r3, 0x1a0(r3)
    srawi   r29, r0, 2
    addze   r29, r29
    lwz     r3, 0x16c(r3)
    slwi    r29, r29, 2
    subfc   r29, r29, r0
    bl      getDeadEnemy__13TEnemyManagerFv
    mr.     r31, r3
    beq-    branch_0x80118998
    lwz     r0, 0x180(r30)
    addi    r3, r31, 0x0
    add     r4, r30, r0
    lbz     r0, 0x178(r4)
    stb     r0, 0x194(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    addi    r0, r29, 0x1
    lis     r3, 0x803f
    slwi    r4, r0, 2
    addi    r0, r3, 0x32b8
    add     r3, r0, r4
    lwz     r29, 0x0(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    mulli   r0, r29, 0x30
    lwz     r3, 0x58(r3)
    add     r6, r3, r0
    lfs     f2, 0x2c(r6)
    addi    r5, sp, 0x30
    lfs     f1, 0x1c(r6)
    mr      r3, r30
    lfs     f0, 0xc(r6)
    mr      r4, r31
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f2, 0x18(r31)
    lfs     f0, 0x8(r6)
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x18(r6)
    stfs    f0, 0x40(sp)
    lfs     f0, 0x28(r6)
    stfs    f0, 0x44(sp)
    lwz     r0, 0x3c(sp)
    lwz     r6, 0x40(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x44(sp)
    stw     r6, 0x34(sp)
    stw     r0, 0x38(sp)
    bl      makeKillerVelocity__17TKoopaJrSubmarineFP14TBathtubKillerQ29JGeometry8TVec3_f_
    lwz     r3, gpMSound(r13)
    li      r4, 0x285d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80118998
    addi    r4, r31, 0x10
    li      r3, 0x285d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80118998:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl appearShineKiller__17TKoopaJrSubmarineFi
appearShineKiller__17TKoopaJrSubmarineFi: # 0x801189b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    mr      r29, r3
    bl      SMS_GetMarioWaterGun__Fv
    lwz     r0, 0x1c80(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801189ec
    lfs     f31, -0x52a4(rtoc)
    b       branch_0x80118a9c

branch_0x801189ec:
    lis     r4, 0x2
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    lwz     r4, 0x1a0(r29)
    lwz     r4, 0x16c(r4)
    lbz     r0, 0x60(r4)
    extsb   r0, r0
    cmpw    r0, r3
    bne-    branch_0x80118a1c
    lfs     f31, -0x52a4(rtoc)
    b       branch_0x80118a9c

branch_0x80118a1c:
    bl      SMS_GetMarioWaterGun__Fv
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r31, 0xcc(r3)
    bl      SMS_GetMarioWaterGun__Fv
    lwz     r30, 0x1c80(r3)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x25c(r3)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    xoris   r4, r30, 0x8000
    lfs     f0, 0x270(r3)
    xoris   r0, r31, 0x8000
    stw     r4, 0x54(sp)
    lis     r3, 0x4330
    lfd     f3, -0x5280(rtoc)
    stw     r0, 0x4c(sp)
    fsubs   f0, f0, f31
    stw     r3, 0x50(sp)
    stw     r3, 0x48(sp)
    lfd     f2, 0x50(sp)
    lfd     f1, 0x48(sp)
    fsubs   f2, f2, f3
    fsubs   f1, f1, f3
    fdivs   f1, f2, f1
    fmadds  f31, f1, f0, f31
branch_0x80118a9c:
    li      r30, 0x0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x5280(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5284(rtoc)
    stw     r0, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fcmpo   cr0, f0, f31
    bge-    branch_0x80118ad4
    li      r30, 0x1
branch_0x80118ad4:
    lwz     r0, 0x74(sp)
    mr      r3, r30
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x70
    blr


.globl receiveMessage__17TKoopaJrSubmarineFP9THitActorUl
receiveMessage__17TKoopaJrSubmarineFP9THitActorUl: # 0x80118af8
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x80118b60
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r4, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    addi    r5, r31, 0x10
    lfs     f1, -0x52c0(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    li      r0, 0x1
    stb     r0, 0x18c(r31)
    li      r3, 0x1
    b       branch_0x80118b64

branch_0x80118b60:
    li      r3, 0x0
branch_0x80118b64:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl calcRootMatrix__17TKoopaJrSubmarineFv
calcRootMatrix__17TKoopaJrSubmarineFv: # 0x80118b78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1e0(sp)
    stfd    f31, 0x1d8(sp)
    stfd    f30, 0x1d0(sp)
    stfd    f29, 0x1c8(sp)
    stfd    f28, 0x1c0(sp)
    stfd    f27, 0x1b8(sp)
    stfd    f26, 0x1b0(sp)
    stfd    f25, 0x1a8(sp)
    stfd    f24, 0x1a0(sp)
    stfd    f23, 0x198(sp)
    stfd    f22, 0x190(sp)
    stfd    f21, 0x188(sp)
    stfd    f20, 0x180(sp)
    stfd    f19, 0x178(sp)
    stfd    f18, 0x170(sp)
    stw     r31, 0x16c(sp)
    stw     r30, 0x168(sp)
    mr      r30, r3
    lwz     r3, 0x1a0(r3)
    lwz     r3, 0x15c(r3)
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80118c00
    bl      getSubmarineMtxInDemo__8TBathtubFv
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    b       branch_0x80118f48

branch_0x80118c00:
    lfs     f1, 0x194(r30)
    bl      sinf
    lfs     f2, 0x190(r30)
    lfs     f0, -0x52a4(rtoc)
    fmuls   f1, f2, f1
    fmuls   f18, f0, f1
    fmr     f1, f18
    bl      sinf
    fmr     f20, f1
    fmr     f1, f18
    bl      cosf
    lfs     f0, 0x19c(r30)
    fmr     f19, f1
    fmr     f1, f0
    bl      sinf
    lfs     f2, 0x198(r30)
    lfs     f0, -0x52a4(rtoc)
    fmuls   f1, f2, f1
    fmuls   f18, f0, f1
    fmr     f1, f18
    bl      sinf
    fmr     f30, f1
    fmr     f1, f18
    bl      cosf
    lfs     f2, 0x16c(r30)
    fmr     f31, f1
    lfs     f0, -0x52a4(rtoc)
    fmuls   f21, f0, f2
    fmr     f1, f21
    bl      sinf
    fmr     f18, f1
    fmr     f1, f21
    bl      cosf
    lfs     f5, -0x52c0(rtoc)
    mr      r3, r30
    fmuls   f2, f5, f19
    fmuls   f0, f1, f5
    fmuls   f7, f5, f20
    fmuls   f6, f18, f5
    fadds   f3, f2, f0
    fmadds  f0, f18, f19, f0
    fmadds  f2, f1, f20, f2
    fmadds  f4, f18, f20, f3
    fadds   f3, f5, f0
    fmsubs  f0, f1, f19, f5
    fadds   f1, f5, f2
    fsubs   f4, f4, f5
    fsubs   f0, f0, f6
    fsubs   f2, f3, f7
    stfs    f4, 0x124(sp)
    fsubs   f1, f1, f6
    fsubs   f0, f0, f7
    stfs    f2, 0x128(sp)
    stfs    f1, 0x12c(sp)
    stfs    f0, 0x130(sp)
    lfs     f3, 0x130(sp)
    lfs     f6, 0x124(sp)
    fmuls   f0, f3, f30
    lfs     f7, 0x128(sp)
    fmuls   f8, f3, f5
    lfs     f4, 0x12c(sp)
    fmuls   f2, f6, f30
    fmadds  f1, f6, f31, f0
    fmuls   f9, f7, f5
    fmsubs  f3, f3, f31, f2
    fmadds  f0, f7, f31, f8
    fmuls   f10, f4, f5
    fadds   f1, f9, f1
    fmuls   f5, f6, f5
    fmadds  f2, f4, f31, f8
    fmadds  f0, f4, f30, f0
    fsubs   f1, f1, f10
    fadds   f2, f5, f2
    fsubs   f0, f0, f5
    stfs    f1, 0x124(sp)
    fsubs   f3, f3, f9
    fnmsubs  f1, f7, f30, f2
    stfs    f0, 0x128(sp)
    fsubs   f2, f3, f10
    stfs    f1, 0x12c(sp)
    stfs    f2, 0x130(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xf4(r3)
    addi    r3, sp, 0xe8
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0x118(sp)
    stfs    f0, 0x11c(sp)
    stfs    f1, 0x120(sp)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    lfs     f0, 0x118(sp)
    addi    r3, sp, 0xac
    addi    r4, sp, 0x124
    stfs    f0, 0xf4(sp)
    lfs     f0, 0x11c(sp)
    stfs    f0, 0x104(sp)
    lfs     f0, 0x120(sp)
    stfs    f0, 0x114(sp)
    lwz     r0, 0x118(sp)
    lwz     r5, 0x11c(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x120(sp)
    stw     r5, 0xe0(sp)
    stw     r0, 0xe4(sp)
    lfs     f0, 0xdc(sp)
    fneg    f0, f0
    stfs    f0, 0xdc(sp)
    lfs     f0, 0xe0(sp)
    fneg    f0, f0
    stfs    f0, 0xe0(sp)
    lfs     f0, 0xe4(sp)
    fneg    f0, f0
    stfs    f0, 0xe4(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x10(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, 0xe0(sp)
    lfs     f0, 0x14(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xe0(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0x18(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xe4(sp)
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0xdc(sp)
    addi    r3, sp, 0xac
    stfs    f0, 0xb8(sp)
    lfs     f0, 0xe0(sp)
    stfs    f0, 0xc8(sp)
    lfs     f0, 0xe4(sp)
    stfs    f0, 0xd8(sp)
    lfs     f3, 0xd0(sp)
    lfs     f21, 0xf8(sp)
    lfs     f28, 0xfc(sp)
    lfs     f8, 0x104(sp)
    fmuls   f2, f3, f21
    lfs     f9, 0x100(sp)
    fmuls   f1, f3, f28
    lfs     f10, 0xc0(sp)
    lfs     f29, 0xb0(sp)
    lfs     f20, 0xcc(sp)
    fmuls   f0, f3, f8
    lfs     f25, 0xe8(sp)
    fmuls   f5, f3, f9
    lfs     f27, 0xec(sp)
    lfs     f4, 0xf4(sp)
    fmadds  f7, f20, f25, f2
    lfs     f13, 0xf0(sp)
    fmadds  f6, f20, f27, f1
    lfs     f11, 0xd4(sp)
    lfs     f24, 0x108(sp)
    fmadds  f18, f20, f4, f0
    lfs     f26, 0x10c(sp)
    fmadds  f5, f20, f13, f5
    lfs     f23, 0xac(sp)
    fmuls   f19, f29, f8
    fmuls   f22, f10, f8
    lfs     f30, 0xbc(sp)
    fmuls   f3, f29, f21
    lfs     f12, 0x114(sp)
    fmuls   f2, f29, f28
    fmuls   f1, f29, f9
    lfs     f8, 0xd8(sp)
    fmuls   f0, f10, f21
    lfs     f31, 0x110(sp)
    fmuls   f20, f10, f28
    fmuls   f21, f10, f9
    lfs     f29, 0xc4(sp)
    fmadds  f7, f11, f24, f7
    lfs     f9, 0xc8(sp)
    lfs     f28, 0xb4(sp)
    lfs     f10, 0xb8(sp)
    fmadds  f19, f23, f4, f19
    fmadds  f22, f30, f4, f22
    fmadds  f4, f11, f12, f18
    stfs    f7, 0x8(sp)
    fmadds  f18, f23, f13, f1
    fmadds  f1, f11, f26, f6
    fmadds  f2, f23, f27, f2
    fmadds  f3, f23, f25, f3
    stfs    f1, 0xc(sp)
    fmadds  f1, f11, f31, f5
    fmadds  f23, f30, f25, f0
    fmadds  f6, f30, f27, f20
    fmadds  f7, f30, f13, f21
    stfs    f1, 0x10(sp)
    fadds   f5, f8, f4
    fmadds  f19, f28, f12, f19
    fmadds  f0, f29, f12, f22
    fmadds  f1, f28, f24, f3
    stfs    f5, 0x14(sp)
    fmadds  f2, f28, f26, f2
    fmadds  f3, f28, f31, f18
    fadds   f4, f10, f19
    fmadds  f5, f29, f24, f23
    fmadds  f6, f29, f26, f6
    fmadds  f7, f29, f31, f7
    fadds   f8, f9, f0
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    addi    r31, sp, 0xac
    addi    r3, r30, 0x0
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x80118f48:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x1e4(sp)
    lfd     f31, 0x1d8(sp)
    lfd     f30, 0x1d0(sp)
    lfd     f29, 0x1c8(sp)
    lfd     f28, 0x1c0(sp)
    lfd     f27, 0x1b8(sp)
    lfd     f26, 0x1b0(sp)
    lfd     f25, 0x1a8(sp)
    lfd     f24, 0x1a0(sp)
    lfd     f23, 0x198(sp)
    lfd     f22, 0x190(sp)
    lfd     f21, 0x188(sp)
    lfd     f20, 0x180(sp)
    lfd     f19, 0x178(sp)
    lfd     f18, 0x170(sp)
    lwz     r31, 0x16c(sp)
    lwz     r30, 0x168(sp)
    addi    sp, sp, 0x1e0
    mtlr    r0
    blr


.globl set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
set__Q29JGeometry13SMatrix34C_f_Fffffffffffff: # 0x80118fb8
    stwu    sp, -0x60(sp)
    stfs    f1, 0x0(r3)
    lfs     f9, 0x68(sp)
    stfs    f2, 0x4(r3)
    lfs     f2, 0x6c(sp)
    stfs    f3, 0x8(r3)
    lfs     f1, 0x70(sp)
    stfs    f4, 0xc(r3)
    lfs     f0, 0x74(sp)
    addi    sp, sp, 0x60
    stfs    f5, 0x10(r3)
    stfs    f6, 0x14(r3)
    stfs    f7, 0x18(r3)
    stfs    f8, 0x1c(r3)
    stfs    f9, 0x20(r3)
    stfs    f2, 0x24(r3)
    stfs    f1, 0x28(r3)
    stfs    f0, 0x2c(r3)
    blr


.globl bind__17TKoopaJrSubmarineFv
bind__17TKoopaJrSubmarineFv: # 0x80119004
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r3)
    addi    r3, sp, 0x10
    stw     r4, 0x28(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x2c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lwz     r0, 0x28(sp)
    lwz     r5, 0x2c(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x30(sp)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(sp)
    mr      r4, r31
    lwz     r0, 0x14(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x18(sp)
    stw     r0, 0x9c(r31)
    lwz     r3, 0x174(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl moveSwing__17TKoopaJrSubmarineFv
moveSwing__17TKoopaJrSubmarineFv: # 0x801190f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stfd    f31, 0xc0(sp)
    stfd    f30, 0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    lbz     r0, 0x18c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8011916c
    li      r0, 0x0
    stb     r0, 0x18c(r31)
    mr      r3, r31
    lfs     f1, 0x190(r31)
    lfs     f0, -0x5278(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x190(r31)
    lwz     r12, 0x0(r31)
    lfs     f31, 0x190(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x1a8(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x80119164
    b       branch_0x80119168

branch_0x80119164:
    fmr     f31, f0
branch_0x80119168:
    stfs    f31, 0x190(r31)
branch_0x8011916c:
    lfs     f1, 0x190(r31)
    mr      r3, r31
    lfs     f0, -0x5274(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x190(r31)
    lwz     r12, 0x0(r31)
    lfs     f31, 0x190(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x194(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x801191a8
    b       branch_0x801191ac

branch_0x801191a8:
    fmr     f0, f31
branch_0x801191ac:
    stfs    f0, 0x190(r31)
    lfs     f1, 0x190(r31)
    lfs     f0, -0x52c0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801191c8
    stfs    f0, 0x194(r31)
branch_0x801191c8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x194(r31)
    lfs     f0, 0x180(r3)
    lfs     f2, -0x529c(rtoc)
    fadds   f1, f1, f0
    lfs     f0, -0x52c0(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f3, -0x52c0(rtoc)
    fadds   f0, f3, f1
    stfs    f0, 0x194(r31)
    lfs     f1, 0xac(r31)
    lfs     f0, 0xb0(r31)
    fmuls   f1, f1, f1
    lfs     f2, 0xb4(r31)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f31, f2, f0
    fcmpo   cr0, f31, f3
    cror    2, 0, 2
    bne-    branch_0x80119238
    b       branch_0x8011925c

branch_0x80119238:
    frsqrte f3, f31
    lfs     f2, -0x52a4(rtoc)
    lfs     f0, -0x52a0(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x8011925c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x20c(r3)
    lwz     r0, 0x150(r31)
    fdivs   f30, f31, f0
    cmpwi   r0, 0x0
    ble-    branch_0x801192c8
    lfs     f1, 0x198(r31)
    mr      r3, r31
    lfs     f0, -0x5270(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x198(r31)
    lwz     r12, 0x0(r31)
    lfs     f31, 0x198(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x158(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x801192c0
    b       branch_0x801192c4

branch_0x801192c0:
    fmr     f31, f0
branch_0x801192c4:
    stfs    f31, 0x198(r31)
branch_0x801192c8:
    lfs     f0, -0x52a4(rtoc)
    fcmpo   cr0, f30, f0
    ble-    branch_0x80119318
    lfs     f1, 0x198(r31)
    mr      r3, r31
    lfs     f0, -0x5270(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x198(r31)
    lwz     r12, 0x0(r31)
    lfs     f31, 0x198(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x16c(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x80119310
    b       branch_0x80119314

branch_0x80119310:
    fmr     f31, f0
branch_0x80119314:
    stfs    f31, 0x198(r31)
branch_0x80119318:
    lfs     f1, 0x198(r31)
    mr      r3, r31
    lfs     f0, -0x526c(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x198(r31)
    lwz     r12, 0x0(r31)
    lfs     f31, 0x198(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x144(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x80119354
    b       branch_0x80119358

branch_0x80119354:
    fmr     f0, f31
branch_0x80119358:
    stfs    f0, 0x198(r31)
    lfs     f1, 0x198(r31)
    lfs     f0, -0x52c0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80119374
    stfs    f0, 0x19c(r31)
branch_0x80119374:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x19c(r31)
    lfs     f0, 0x130(r3)
    lfs     f2, -0x529c(rtoc)
    fadds   f1, f1, f0
    lfs     f0, -0x52c0(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f0, -0x52c0(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x19c(r31)
    lwz     r0, 0xcc(sp)
    lfd     f31, 0xc0(sp)
    lfd     f30, 0xb8(sp)
    lwz     r31, 0xb4(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl makeCollisionPositions__17TKoopaJrSubmarineFv
makeCollisionPositions__17TKoopaJrSubmarineFv: # 0x801193d0
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stfd    f29, 0x68(sp)
    stmw    r27, 0x54(sp)
    addi    r27, r3, 0x0
    addi    r30, r4, 0x32b8
    li      r28, 0x0
    li      r31, 0x0
    lfs     f31, -0x52c0(rtoc)
    fmr     f30, f31
    fmr     f29, f31
branch_0x8011940c:
    add     r3, r30, r31
    lwz     r29, 0xc(r3)
    mr      r3, r27
    bl      getModel__10TLiveActorCFv
    mulli   r0, r29, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f2, 0xc(r3)
    addi    r28, r28, 0x1
    lfs     f1, 0x1c(r3)
    cmpwi   r28, 0x2
    lfs     f0, 0x2c(r3)
    fadds   f31, f31, f2
    addi    r31, r31, 0x4
    fadds   f30, f30, f1
    fadds   f29, f29, f0
    blt+    branch_0x8011940c
    lfs     f0, -0x52a4(rtoc)
    lis     r3, 0x803f
    addi    r4, r3, 0x32b8
    lwz     r5, 0x1a4(r27)
    fmuls   f31, f31, f0
    fmuls   f30, f30, f0
    mr      r3, r27
    fmuls   f29, f29, f0
    stfsu   f31, 0x10(r5)
    stfs    f30, 0x4(r5)
    stfs    f29, 0x8(r5)
    lwz     r5, 0x1a8(r27)
    lwz     r4, 0x0(r4)
    addi    r5, r5, 0x10
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lmw     r27, 0x54(sp)
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    mtlr    r0
    lfd     f29, 0x68(sp)
    addi    sp, sp, 0x80
    blr


.globl perform__17TKoopaJrSubmarineFUlPQ26JDrama9TGraphics
perform__17TKoopaJrSubmarineFUlPQ26JDrama9TGraphics: # 0x801194ac
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x801195c0
    lbz     r0, -0x6618(r13)
    extsb.  r0, r0
    bne-    branch_0x8011951c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6614(r13)
    subi    r0, r3, 0x2948
    lis     r4, 0x8011
    stw     r0, -0x6614(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3320
    addi    r4, r4, 0x7660
    subi    r3, r13, 0x6614
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6618(r13)
branch_0x8011951c:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x6614
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x801195b0
    lwz     r3, 0x180(r29)
    lwz     r0, 0x184(r29)
    cmpw    r3, r0
    bge-    branch_0x801195b0
    lwz     r0, 0x150(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x801195b0
    mr      r3, r29
    bl      launchKiller__17TKoopaJrSubmarineFv
    lwz     r0, 0x180(r29)
    add     r3, r29, r0
    lbz     r0, 0x178(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x80119588
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x284(r3)
    stw     r0, 0x150(r29)
    b       branch_0x801195a4

branch_0x80119588:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x298(r3)
    stw     r0, 0x150(r29)
branch_0x801195a4:
    lwz     r3, 0x180(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x180(r29)
branch_0x801195b0:
    mr      r3, r29
    bl      makeCollisionPositions__17TKoopaJrSubmarineFv
    mr      r3, r29
    bl      moveSwing__17TKoopaJrSubmarineFv
branch_0x801195c0:
    clrlwi. r0, r30, 31
    beq-    branch_0x801195e8
    addi    r4, r29, 0x150
    lwz     r3, 0x150(r29)
    cmpwi   r3, 0x0
    ble-    branch_0x801195e0
    subi    r0, r3, 0x1
    stw     r0, 0x0(r4)
branch_0x801195e0:
    mr      r3, r29
    bl      checkNerve__17TKoopaJrSubmarineFv
branch_0x801195e8:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x1a4(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1a8(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl resetKoopaJrSubmarine__17TKoopaJrSubmarineFv
resetKoopaJrSubmarine__17TKoopaJrSubmarineFv: # 0x8011964c
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    stw     r30, 0x38(sp)
    mr      r30, r3
    lwz     r3, 0x8c(r3)
    stw     r31, 0x8(r3)
    stw     r31, 0x150(r30)
    lwz     r3, 0x74(r30)
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x801196a0
    b       branch_0x801196a4

branch_0x801196a0:
    lwz     r31, 0x0(r3)
branch_0x801196a4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0xc(r3)
    li      r0, 0x0
    addi    r3, r30, 0x0
    stfs    f0, 0x188(r30)
    stw     r0, 0x180(r30)
    stw     r0, 0x184(r30)
    stb     r0, 0x178(r30)
    stb     r0, 0x179(r30)
    stb     r0, 0x17a(r30)
    stb     r0, 0x17b(r30)
    stb     r0, 0x17c(r30)
    stb     r0, 0x17d(r30)
    stb     r0, 0x17e(r30)
    stb     r0, 0x17f(r30)
    lfs     f1, -0x52c0(rtoc)
    stfs    f1, 0x154(r30)
    stfs    f1, 0x158(r30)
    stfs    f1, 0x15c(r30)
    lfs     f0, -0x52b8(rtoc)
    stfs    f0, 0x160(r30)
    stfs    f1, 0x16c(r30)
    stfs    f1, 0x164(r30)
    stb     r0, 0x170(r30)
    stb     r0, 0x18c(r30)
    stfs    f1, 0x190(r30)
    stfs    f1, 0x194(r30)
    stfs    f1, 0x198(r30)
    stfs    f1, 0x19c(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x5268(rtoc)
    lfs     f2, -0x5298(rtoc)
    fmr     f3, f1
    lfs     f5, 0xe0(r3)
    fmr     f4, f2
    lwz     r3, 0x174(r30)
    bl      init__14TBathtubBinderFfffff
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl reset__17TKoopaJrSubmarineFv
reset__17TKoopaJrSubmarineFv: # 0x80119770
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__11TSpineEnemyFv
    mr      r3, r31
    bl      resetKoopaJrSubmarine__17TKoopaJrSubmarineFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__17TKoopaJrSubmarineFP12TLiveManager
init__17TKoopaJrSubmarineFP12TLiveManager: # 0x801197a4
    mflr    r0
    lis     r6, 0x8038
    stw     r0, 0x4(sp)
    lis     r5, 0x803f
    stwu    sp, -0x150(sp)
    stfd    f31, 0x148(sp)
    stfd    f30, 0x140(sp)
    stmw    r26, 0x128(sp)
    mr      r31, r3
    addi    r29, r6, 0x4c20
    addi    r30, r5, 0x32b8
    stw     r4, 0x70(r3)
    addi    r4, r31, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f30, 0x248(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x52c0(rtoc)
    lis     r26, 0x800
    lfs     f3, 0x234(r3)
    fmr     f4, f30
    fmr     f2, f1
    addi    r3, r31, 0x0
    addi    r4, r26, 0x20
    li      r5, 0x0
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    li      r3, 0x6c
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8011996c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f30, 0x248(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x234(r3)
    addi    r4, r29, 0x284
    stw     r28, 0x110(sp)
    lwz     r3, 0x110(sp)
    bl      __ct__9THitActorFPCc
    lwz     r27, 0x110(sp)
    lis     r3, 0x803c
    subi    r3, r3, 0x264c
    fmr     f3, f31
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    fmr     f4, f30
    stw     r0, 0x20(r27)
    mr      r3, r27
    stw     r31, 0x68(r27)
    addi    r4, r26, 0x2d
    li      r5, 0x0
    lfs     f1, -0x52c0(rtoc)
    li      r6, 0x0
    fmr     f2, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r27)
    addi    r3, r29, 0x29c
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r27)
    lwz     r4, -0x5db8(r13)
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x29c
    mtlr    r12
    blrl
    addi    r26, r3, 0x10
    addi    r4, r26, 0x0
    addi    r3, sp, 0xa0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xa0(sp)
    addi    r4, sp, 0x9c
    addi    r3, sp, 0xf0
    stw     r0, 0x9c(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xf0(sp)
    addi    r5, sp, 0xc4
    addi    r4, r26, 0x0
    stw     r0, 0xec(sp)
    addi    r3, sp, 0xc0
    addi    r6, sp, 0x110
    lwz     r0, 0xec(sp)
    stw     r0, 0xc4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xc0(sp)
    addi    r3, sp, 0xe8
    addi    r4, sp, 0xbc
    stw     r0, 0xbc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
branch_0x8011996c:
    stw     r28, 0x1a4(r31)
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80119a98
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x248(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f30, 0x234(r3)
    addi    r4, r29, 0x2a8
    stw     r28, 0x108(sp)
    lwz     r3, 0x108(sp)
    bl      __ct__9THitActorFPCc
    lwz     r27, 0x108(sp)
    lis     r3, 0x803c
    subi    r3, r3, 0x264c
    fmr     f3, f30
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    fmr     f4, f31
    stw     r0, 0x20(r27)
    lis     r4, 0x800
    stw     r31, 0x68(r27)
    addi    r3, r27, 0x0
    addi    r4, r4, 0x2d
    lfs     f1, -0x52c0(rtoc)
    li      r5, 0x0
    li      r6, 0x0
    fmr     f2, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r27)
    addi    r3, r29, 0x29c
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r27)
    lwz     r4, -0x5db8(r13)
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x29c
    mtlr    r12
    blrl
    addi    r26, r3, 0x10
    addi    r4, r26, 0x0
    addi    r3, sp, 0x98
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x98(sp)
    addi    r4, sp, 0x94
    addi    r3, sp, 0xdc
    stw     r0, 0x94(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xdc(sp)
    addi    r5, sp, 0xb0
    addi    r4, r26, 0x0
    stw     r0, 0xd8(sp)
    addi    r3, sp, 0xac
    addi    r6, sp, 0x108
    lwz     r0, 0xd8(sp)
    stw     r0, 0xb0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xac(sp)
    addi    r3, sp, 0xd4
    addi    r4, sp, 0xa8
    stw     r0, 0xa8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
branch_0x80119a98:
    stw     r28, 0x1a8(r31)
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80119abc
    lwz     r4, 0x70(r31)
    addi    r3, r26, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80119abc:
    stw     r26, 0x78(r31)
    addi    r4, r29, 0x218
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    li      r4, 0x1
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lbz     r0, -0x6628(r13)
    extsb.  r0, r0
    bne-    branch_0x80119b20
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6624(r13)
    subi    r0, r3, 0x2928
    lis     r3, 0x8011
    stw     r0, -0x6624(r13)
    addi    r4, r3, 0x7808
    subi    r3, r13, 0x6624
    addi    r5, r30, 0x50
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6628(r13)
branch_0x80119b20:
    lwz     r4, 0x8c(r31)
    li      r29, 0x0
    subi    r0, r13, 0x6624
    stw     r29, 0x8(r4)
    mr      r3, r31
    stw     r29, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r29, 0x1c(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x4(r3)
    lis     r3, 0x803c
    subi    r28, r3, 0x29b0
    lwz     r26, 0xb0(r4)
    li      r27, 0x0
branch_0x80119b5c:
    add     r3, r28, r29
    lwz     r4, 0x0(r3)
    mr      r3, r26
    bl      getIndex__10JUTNameTabCFPCc
    addi    r27, r27, 0x1
    stwx    r3, r30, r29
    cmpwi   r27, 0x5
    addi    r29, r29, 0x4
    blt+    branch_0x80119b5c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x220(r3)
    li      r3, 0x24
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80119bbc
    mr      r3, r26
    bl      __ct__14TBathtubBinderFv
branch_0x80119bbc:
    stw     r26, 0x174(r31)
    mr      r3, r31
    lwz     r0, 0x174(r31)
    stw     r0, 0x88(r31)
    bl      resetKoopaJrSubmarine__17TKoopaJrSubmarineFv
    lmw     r26, 0x128(sp)
    lwz     r0, 0x154(sp)
    lfd     f31, 0x148(sp)
    lfd     f30, 0x140(sp)
    mtlr    r0
    addi    sp, sp, 0x150
    blr


.globl __ct__17TKoopaJrSubmarineFPCc
__ct__17TKoopaJrSubmarineFPCc: # 0x80119bec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x2918
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x16c(r31)
    stfs    f0, 0x188(r31)
    stw     r0, 0x1a0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createEnemyInstance__15TKoopaJrManagerFv
createEnemyInstance__15TKoopaJrManagerFv: # 0x80119c60
    li      r3, 0x0
    blr


.globl loadAfter__15TKoopaJrManagerFv
loadAfter__15TKoopaJrManagerFv: # 0x80119c68
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x1
    stw     r30, 0x10(sp)
    addi    r30, r3, 0xef
    lbz     r0, 0xef(r3)
    cmplwi  r0, 0x0
    lwz     r4, -0x7cb4(r13)
    bne-    branch_0x80119cac
    lwz     r3, -0x5fe0(r13)
    li      r5, 0xef
    bl      load__18JPAResourceManagerFPCcUs
    stb     r31, 0x0(r30)
branch_0x80119cac:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__15TKoopaJrManagerFR20JSUMemoryInputStream
load__15TKoopaJrManagerFR20JSUMemoryInputStream: # 0x80119cc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80119d00
    lis     r3, 0x8038
    addi    r4, r3, 0x4ee4
    addi    r3, r30, 0x0
    bl      __ct__14TKoopaJrParamsFPCc
branch_0x80119d00:
    stw     r30, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__15TKoopaJrManagerFv
createModelData__15TKoopaJrManagerFv: # 0x80119d1c
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4df4
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__15TKoopaJrManagerFPCc
__ct__15TKoopaJrManagerFPCc: # 0x80119d50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x2804
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveKoopaJrYahooCFP24TSpineBase_10TLiveActor_
execute__18TNerveKoopaJrYahooCFP24TSpineBase_10TLiveActor_: # 0x80119d8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80119de8
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80119ddc
    li      r4, 0x0
    b       branch_0x80119de0

branch_0x80119ddc:
    lwz     r4, 0xc(r3)
branch_0x80119de0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80119de8:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80119e04
    li      r3, 0x1
    b       branch_0x80119e08

branch_0x80119e04:
    li      r3, 0x0
branch_0x80119e08:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__18TNerveKoopaJrYahooFv
__dt__18TNerveKoopaJrYahooFv: # 0x80119e1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80119e60
    lis     r3, 0x803c
    subi    r0, r3, 0x27b0
    stw     r0, 0x0(r31)
    beq-    branch_0x80119e50
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80119e50:
    extsh.  r0, r4
    ble-    branch_0x80119e60
    mr      r3, r31
    bl      __dl__FPv
branch_0x80119e60:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveKoopaJrLaunchCFP24TSpineBase_10TLiveActor_
execute__19TNerveKoopaJrLaunchCFP24TSpineBase_10TLiveActor_: # 0x80119e78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80119ed4
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80119ec8
    li      r4, 0x0
    b       branch_0x80119ecc

branch_0x80119ec8:
    lwz     r4, 0x4(r3)
branch_0x80119ecc:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80119ed4:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80119ef0
    li      r3, 0x1
    b       branch_0x80119ef4

branch_0x80119ef0:
    li      r3, 0x0
branch_0x80119ef4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__19TNerveKoopaJrLaunchFv
__dt__19TNerveKoopaJrLaunchFv: # 0x80119f08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80119f4c
    lis     r3, 0x803c
    subi    r0, r3, 0x27a0
    stw     r0, 0x0(r31)
    beq-    branch_0x80119f3c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80119f3c:
    extsh.  r0, r4
    ble-    branch_0x80119f4c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80119f4c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveKoopaJrDemoCFP24TSpineBase_10TLiveActor_
execute__17TNerveKoopaJrDemoCFP24TSpineBase_10TLiveActor_: # 0x80119f64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80119fc0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80119fb4
    li      r4, 0x0
    b       branch_0x80119fb8

branch_0x80119fb4:
    lwz     r4, 0x0(r3)
branch_0x80119fb8:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80119fc0:
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__17TNerveKoopaJrDemoFv
__dt__17TNerveKoopaJrDemoFv: # 0x80119fd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011a01c
    lis     r3, 0x803c
    subi    r0, r3, 0x2790
    stw     r0, 0x0(r31)
    beq-    branch_0x8011a00c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011a00c:
    extsh.  r0, r4
    ble-    branch_0x8011a01c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011a01c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveKoopaJrDamageCFP24TSpineBase_10TLiveActor_
execute__19TNerveKoopaJrDamageCFP24TSpineBase_10TLiveActor_: # 0x8011a034
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011a090
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8011a084
    li      r4, 0x0
    b       branch_0x8011a088

branch_0x8011a084:
    lwz     r4, 0x0(r3)
branch_0x8011a088:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8011a090:
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8011a0b8
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8011a0b8
    li      r3, 0x1
    b       branch_0x8011a0bc

branch_0x8011a0b8:
    li      r3, 0x0
branch_0x8011a0bc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl theNerve__19TNerveKoopaJrDamageFv
theNerve__19TNerveKoopaJrDamageFv: # 0x8011a0d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6648(r13)
    extsb.  r0, r0
    bne-    branch_0x8011a120
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6644(r13)
    subi    r0, r3, 0x2780
    lis     r4, 0x8012
    stw     r0, -0x6644(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x32d8
    subi    r4, r4, 0x5ecc
    subi    r3, r13, 0x6644
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6648(r13)
branch_0x8011a120:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6644
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__19TNerveKoopaJrDamageFv
__dt__19TNerveKoopaJrDamageFv: # 0x8011a134
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011a178
    lis     r3, 0x803c
    subi    r0, r3, 0x2780
    stw     r0, 0x0(r31)
    beq-    branch_0x8011a168
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011a168:
    extsh.  r0, r4
    ble-    branch_0x8011a178
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011a178:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveKoopaJrWaitCFP24TSpineBase_10TLiveActor_
execute__17TNerveKoopaJrWaitCFP24TSpineBase_10TLiveActor_: # 0x8011a190
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011a224
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8011a1e0
    li      r4, 0x0
    b       branch_0x8011a1e4

branch_0x8011a1e0:
    lwz     r4, 0x8(r3)
branch_0x8011a1e4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x130(r3)
    mr      r3, r31
    stw     r0, 0x154(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x144(r3)
    stw     r0, 0x158(r31)
branch_0x8011a224:
    lwz     r0, 0x3c(sp)
    li      r3, 0x0
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl checkNerveKillerHit__8TKoopaJrFv
checkNerveKillerHit__8TKoopaJrFv: # 0x8011a23c
    mflr    r0
    li      r8, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r6, 0x16c(r3)
    li      r3, 0x0
    lwz     r5, 0x38(r6)
    b       branch_0x8011a320

branch_0x8011a264:
    lwz     r4, 0x18(r6)
    lwzx    r4, r4, r3
    lwz     r0, 0x21c(r4)
    cmpwi   r0, 0x1
    bne-    branch_0x8011a318
    lbz     r0, -0x6630(r13)
    extsb.  r0, r0
    bne-    branch_0x8011a2bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x662c(r13)
    subi    r0, r3, 0x27b0
    lis     r4, 0x8012
    stw     r0, -0x662c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x32fc
    subi    r4, r4, 0x61e4
    subi    r3, r13, 0x662c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6630(r13)
branch_0x8011a2bc:
    subi    r5, r13, 0x662c
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8011a354
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x8011a308
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x8011a308
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x8011a308:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
    b       branch_0x8011a354

branch_0x8011a318:
    addi    r8, r8, 0x1
    addi    r3, r3, 0x4
branch_0x8011a320:
    cmplwi  r5, 0x0
    bne-    branch_0x8011a330
    lwz     r7, 0x14(r6)
    b       branch_0x8011a34c

branch_0x8011a330:
    lwz     r4, 0x38(r6)
    lwz     r7, 0x14(r6)
    lbz     r0, 0xa4(r4)
    cmpw    r0, r7
    ble-    branch_0x8011a348
    b       branch_0x8011a34c

branch_0x8011a348:
    mr      r7, r0
branch_0x8011a34c:
    cmpw    r8, r7
    blt+    branch_0x8011a264
branch_0x8011a354:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl checkNerveKillerLaunchFast__8TKoopaJrFv
checkNerveKillerLaunchFast__8TKoopaJrFv: # 0x8011a368
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x8011a574
    lwz     r3, 0x15c(r31)
    bl      getNumKillerBurstable__8TBathtubCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8011a574
    cmpwi   r3, 0x8
    lwz     r30, 0x164(r31)
    ble-    branch_0x8011a3ac
    li      r3, 0x8
branch_0x8011a3ac:
    li      r6, 0x0
    stw     r6, 0x180(r30)
    li      r5, 0x2
    stw     r3, 0x184(r30)
    b       branch_0x8011a3cc

branch_0x8011a3c0:
    addi    r0, r6, 0x178
    stbx    r5, r30, r0
    addi    r6, r6, 0x1
branch_0x8011a3cc:
    lwz     r4, 0x184(r30)
    cmpw    r6, r4
    blt+    branch_0x8011a3c0
    mr      r3, r30
    bl      appearShineKiller__17TKoopaJrSubmarineFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8011a3f8
    lwz     r0, 0x184(r30)
    li      r4, 0x1
    add     r3, r30, r0
    stb     r4, 0x177(r3)
branch_0x8011a3f8:
    lbz     r0, -0x6638(r13)
    extsb.  r0, r0
    bne-    branch_0x8011a43c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6634(r13)
    subi    r0, r3, 0x27a0
    lis     r4, 0x8012
    stw     r0, -0x6634(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x32f0
    subi    r4, r4, 0x60f8
    subi    r3, r13, 0x6634
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6638(r13)
branch_0x8011a43c:
    subi    r5, r13, 0x6634
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8011a494
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x8011a488
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x8011a488
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x8011a488:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x8011a494:
    lbz     r0, -0x6620(r13)
    extsb.  r0, r0
    bne-    branch_0x8011a4d8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x661c(r13)
    subi    r0, r3, 0x2938
    lis     r4, 0x8011
    stw     r0, -0x661c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3314
    addi    r4, r4, 0x7724
    subi    r3, r13, 0x661c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6620(r13)
branch_0x8011a4d8:
    lwz     r3, 0x164(r31)
    subi    r5, r13, 0x661c
    cmplwi  r5, 0x0
    lwz     r6, 0x8c(r3)
    beq-    branch_0x8011a534
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x8011a528
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x8011a528
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x8011a528:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x8011a534:
    lwz     r30, 0x164(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8011a568
    li      r4, 0x0
    b       branch_0x8011a56c

branch_0x8011a568:
    lwz     r4, 0x0(r3)
branch_0x8011a56c:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8011a574:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl checkNerveKillerLaunchNormal__8TKoopaJrFv
checkNerveKillerLaunchNormal__8TKoopaJrFv: # 0x8011a58c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lwz     r0, 0x154(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x8011a798
    lwz     r3, 0x15c(r31)
    bl      getNumKillerLaunchable__8TBathtubCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8011a798
    cmpwi   r3, 0x8
    lwz     r30, 0x164(r31)
    ble-    branch_0x8011a5d0
    li      r3, 0x8
branch_0x8011a5d0:
    li      r5, 0x0
    stw     r5, 0x180(r30)
    mr      r6, r5
    stw     r3, 0x184(r30)
    b       branch_0x8011a5f0

branch_0x8011a5e4:
    addi    r0, r6, 0x178
    stbx    r5, r30, r0
    addi    r6, r6, 0x1
branch_0x8011a5f0:
    lwz     r4, 0x184(r30)
    cmpw    r6, r4
    blt+    branch_0x8011a5e4
    mr      r3, r30
    bl      appearShineKiller__17TKoopaJrSubmarineFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8011a61c
    lwz     r0, 0x184(r30)
    li      r4, 0x1
    add     r3, r30, r0
    stb     r4, 0x177(r3)
branch_0x8011a61c:
    lbz     r0, -0x6638(r13)
    extsb.  r0, r0
    bne-    branch_0x8011a660
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6634(r13)
    subi    r0, r3, 0x27a0
    lis     r4, 0x8012
    stw     r0, -0x6634(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x32f0
    subi    r4, r4, 0x60f8
    subi    r3, r13, 0x6634
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6638(r13)
branch_0x8011a660:
    subi    r5, r13, 0x6634
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8011a6b8
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x8011a6ac
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x8011a6ac
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x8011a6ac:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x8011a6b8:
    lbz     r0, -0x6620(r13)
    extsb.  r0, r0
    bne-    branch_0x8011a6fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x661c(r13)
    subi    r0, r3, 0x2938
    lis     r4, 0x8011
    stw     r0, -0x661c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3314
    addi    r4, r4, 0x7724
    subi    r3, r13, 0x661c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6620(r13)
branch_0x8011a6fc:
    lwz     r3, 0x164(r31)
    subi    r5, r13, 0x661c
    cmplwi  r5, 0x0
    lwz     r6, 0x8c(r3)
    beq-    branch_0x8011a758
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x8011a74c
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x8011a74c
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x8011a74c:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x8011a758:
    lwz     r30, 0x164(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8011a78c
    li      r4, 0x0
    b       branch_0x8011a790

branch_0x8011a78c:
    lwz     r4, 0x0(r3)
branch_0x8011a790:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8011a798:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl pushNerve__24TSpineBase_10TLiveActor_FPC24TNerveBase_10TLiveActor_
pushNerve__24TSpineBase_10TLiveActor_FPC24TNerveBase_10TLiveActor_: # 0x8011a7b0
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8011a7f4
    stw     r0, 0x1c(r3)
    lwz     r5, 0x8(r3)
    lwz     r0, 0x4(r3)
    cmpw    r5, r0
    bge-    branch_0x8011a7f4
    lwz     r6, 0x14(r3)
    slwi    r0, r5, 2
    lwz     r5, 0xc(r3)
    stwx    r6, r5, r0
    lwz     r5, 0x8(r3)
    addi    r0, r5, 0x1
    stw     r0, 0x8(r3)
branch_0x8011a7f4:
    li      r0, 0x0
    stw     r0, 0x20(r3)
    stw     r4, 0x14(r3)
    blr


.globl receiveMessage__8TKoopaJrFP9THitActorUl
receiveMessage__8TKoopaJrFP9THitActorUl: # 0x8011a804
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    lis     r5, 0x803f
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r5, 0x32b8
    stw     r30, 0x58(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x8011a9e8
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r4, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x52c0(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x11c(r3)
    stw     r0, 0x150(r30)
    lbz     r0, -0x6650(r13)
    extsb.  r0, r0
    bne-    branch_0x8011a8c0
    subi    r3, r13, 0x664c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x2770
    lis     r3, 0x8011
    stw     r0, -0x664c(r13)
    addi    r4, r3, 0x7bdc
    subi    r3, r13, 0x664c
    addi    r5, r31, 0x14
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6650(r13)
branch_0x8011a8c0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x664c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8011a91c
    lbz     r0, -0x6648(r13)
    extsb.  r0, r0
    bne-    branch_0x8011a910
    subi    r3, r13, 0x6644
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x2780
    lis     r3, 0x8012
    stw     r0, -0x6644(r13)
    subi    r4, r3, 0x5ecc
    subi    r3, r13, 0x6644
    addi    r5, r31, 0x20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6648(r13)
branch_0x8011a910:
    subi    r4, r13, 0x6644
    lwz     r3, 0x8c(r30)
    bl      pushNerve__24TSpineBase_10TLiveActor_FPC24TNerveBase_10TLiveActor_
branch_0x8011a91c:
    lbz     r0, -0x6638(r13)
    extsb.  r0, r0
    bne-    branch_0x8011a958
    subi    r3, r13, 0x6634
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x27a0
    lis     r3, 0x8012
    stw     r0, -0x6634(r13)
    subi    r4, r3, 0x60f8
    subi    r3, r13, 0x6634
    addi    r5, r31, 0x38
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6638(r13)
branch_0x8011a958:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6634
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8011a9bc
    lbz     r0, -0x6630(r13)
    extsb.  r0, r0
    bne-    branch_0x8011a9a8
    subi    r3, r13, 0x662c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x27b0
    lis     r3, 0x8012
    stw     r0, -0x662c(r13)
    subi    r4, r3, 0x61e4
    subi    r3, r13, 0x662c
    addi    r5, r31, 0x44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6630(r13)
branch_0x8011a9a8:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x662c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8011a9e0
branch_0x8011a9bc:
    bl      theNerve__19TNerveKoopaJrDamageFv
    lwz     r4, 0x8c(r30)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8011a9d4
    stw     r0, 0x1c(r4)
branch_0x8011a9d4:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8011a9e0:
    li      r3, 0x1
    b       branch_0x8011a9ec

branch_0x8011a9e8:
    li      r3, 0x0
branch_0x8011a9ec:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl getBasNameTable__8TKoopaJrCFv
getBasNameTable__8TKoopaJrCFv: # 0x8011aa04
    lis     r3, 0x803c
    subi    r3, r3, 0x29c0
    blr


.globl calcRootMatrix__8TKoopaJrFv
calcRootMatrix__8TKoopaJrFv: # 0x8011aa10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    mr      r29, r3
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x15c(r29)
    mr      r31, r3
    lbz     r0, 0x29a(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8011aa6c
    mr      r3, r4
    bl      getKoopaJrMtxInDemo__8TBathtubFv
    addi    r30, r3, 0x0
    addi    r3, r29, 0x0
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    b       branch_0x8011aad8

branch_0x8011aa6c:
    lis     r4, 0x803f
    lwz     r3, 0x164(r29)
    addi    r4, r4, 0x32b8
    lwz     r4, 0x0(r4)
    addi    r5, r29, 0x10
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lfs     f0, 0x38(r29)
    addi    r3, r31, 0x20
    lfs     f2, -0x5264(rtoc)
    lfs     f1, 0x34(r29)
    fmuls   f0, f2, f0
    lfs     f4, 0x30(r29)
    fmuls   f1, f2, f1
    lfs     f3, 0x18(r29)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f1, 0x10(r29)
    fctiwz  f5, f2
    lfs     f2, 0x14(r29)
    fctiwz  f0, f0
    stfd    f4, 0x20(sp)
    stfd    f5, 0x28(sp)
    lwz     r5, 0x24(sp)
    stfd    f0, 0x18(sp)
    lwz     r4, 0x2c(sp)
    lwz     r6, 0x1c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
branch_0x8011aad8:
    lwz     r3, 0x24(r29)
    lwz     r0, 0x28(r29)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl perform__8TKoopaJrFUlPQ26JDrama9TGraphics
perform__8TKoopaJrFUlPQ26JDrama9TGraphics: # 0x8011ab0c
    mflr    r0
    lis     r6, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stmw    r26, 0x138(sp)
    mr      r31, r3
    addi    r29, r4, 0x0
    addi    r28, r5, 0x0
    addi    r27, r6, 0x4c20
    lwz     r0, 0x164(r3)
    lis     r3, 0x803f
    addi    r30, r3, 0x32b8
    cmplwi  r0, 0x0
    bne-    branch_0x8011ab5c
    lwz     r3, 0x168(r31)
    lwz     r3, 0x18(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x164(r31)
    lwz     r3, 0x164(r31)
    stw     r31, 0x1a0(r3)
branch_0x8011ab5c:
    lwz     r0, 0x160(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8011aba0
    lwz     r4, -0x5db8(r13)
    addi    r3, r27, 0x2d8
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r27, 0x2d8
    mtlr    r12
    blrl
    lwz     r3, 0x18(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x160(r31)
branch_0x8011aba0:
    lwz     r0, 0x15c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8011abdc
    lwz     r4, -0x5db8(r13)
    addi    r3, r27, 0x2ec
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r27, 0x2ec
    mtlr    r12
    blrl
    stw     r3, 0x15c(r31)
branch_0x8011abdc:
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x8011ad8c
    lwz     r3, 0x164(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x52a4(rtoc)
    lfs     f0, 0x1a8(r3)
    lwz     r3, 0x164(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x190(r3)
    fcmpo   cr0, f1, f0
    blt-    branch_0x8011ad8c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x11c(r3)
    stw     r0, 0x150(r31)
    lbz     r0, -0x6650(r13)
    extsb.  r0, r0
    bne-    branch_0x8011ac6c
    subi    r3, r13, 0x664c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x2770
    lis     r3, 0x8011
    stw     r0, -0x664c(r13)
    addi    r4, r3, 0x7bdc
    subi    r3, r13, 0x664c
    addi    r5, r30, 0x14
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6650(r13)
branch_0x8011ac6c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x664c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8011acc8
    lbz     r0, -0x6648(r13)
    extsb.  r0, r0
    bne-    branch_0x8011acbc
    subi    r3, r13, 0x6644
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x2780
    lis     r3, 0x8012
    stw     r0, -0x6644(r13)
    subi    r4, r3, 0x5ecc
    subi    r3, r13, 0x6644
    addi    r5, r30, 0x20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6648(r13)
branch_0x8011acbc:
    subi    r4, r13, 0x6644
    lwz     r3, 0x8c(r31)
    bl      pushNerve__24TSpineBase_10TLiveActor_FPC24TNerveBase_10TLiveActor_
branch_0x8011acc8:
    lbz     r0, -0x6638(r13)
    extsb.  r0, r0
    bne-    branch_0x8011ad04
    subi    r3, r13, 0x6634
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x27a0
    lis     r3, 0x8012
    stw     r0, -0x6634(r13)
    subi    r4, r3, 0x60f8
    subi    r3, r13, 0x6634
    addi    r5, r30, 0x38
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6638(r13)
branch_0x8011ad04:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6634
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8011ad68
    lbz     r0, -0x6630(r13)
    extsb.  r0, r0
    bne-    branch_0x8011ad54
    subi    r3, r13, 0x662c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x27b0
    lis     r3, 0x8012
    stw     r0, -0x662c(r13)
    subi    r4, r3, 0x61e4
    subi    r3, r13, 0x662c
    addi    r5, r30, 0x44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6630(r13)
branch_0x8011ad54:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x662c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8011ad8c
branch_0x8011ad68:
    bl      theNerve__19TNerveKoopaJrDamageFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8011ad80
    stw     r0, 0x1c(r4)
branch_0x8011ad80:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8011ad8c:
    clrlwi. r0, r29, 31
    beq-    branch_0x8011afb8
    addi    r4, r31, 0x150
    lwz     r3, 0x150(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8011adac
    subi    r0, r3, 0x1
    stw     r0, 0x0(r4)
branch_0x8011adac:
    addi    r4, r31, 0x154
    lwz     r3, 0x154(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8011adc4
    subi    r0, r3, 0x1
    stw     r0, 0x0(r4)
branch_0x8011adc4:
    addi    r4, r31, 0x158
    lwz     r3, 0x158(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8011addc
    subi    r0, r3, 0x1
    stw     r0, 0x0(r4)
branch_0x8011addc:
    lwz     r3, 0x15c(r31)
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8011afb8
    beq-    branch_0x8011aed8
    lbz     r0, -0x6640(r13)
    extsb.  r0, r0
    bne-    branch_0x8011ae30
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x663c(r13)
    subi    r0, r3, 0x2790
    lis     r3, 0x8012
    stw     r0, -0x663c(r13)
    subi    r4, r3, 0x6028
    subi    r3, r13, 0x663c
    addi    r5, r30, 0x2c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6640(r13)
branch_0x8011ae30:
    lwz     r3, 0x8c(r31)
    subi    r26, r13, 0x663c
    lwz     r0, 0x14(r3)
    cmplw   r0, r26
    beq-    branch_0x8011aed8
    lbz     r0, -0x6640(r13)
    extsb.  r0, r0
    bne-    branch_0x8011ae80
    subi    r3, r13, 0x663c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x2790
    lis     r3, 0x8012
    stw     r0, -0x663c(r13)
    subi    r4, r3, 0x6028
    addi    r3, r26, 0x0
    addi    r5, r30, 0x2c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6640(r13)
branch_0x8011ae80:
    subi    r6, r13, 0x663c
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x8011aed8
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8011aecc
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8011aecc
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8011aecc:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8011aed8:
    lbz     r0, -0x6650(r13)
    extsb.  r0, r0
    bne-    branch_0x8011af18
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x664c(r13)
    subi    r0, r3, 0x2770
    lis     r3, 0x8011
    stw     r0, -0x664c(r13)
    addi    r4, r3, 0x7bdc
    subi    r3, r13, 0x664c
    addi    r5, r30, 0x14
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6650(r13)
branch_0x8011af18:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x664c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8011af44
    mr      r3, r31
    bl      checkNerveKillerLaunchNormal__8TKoopaJrFv
    mr      r3, r31
    bl      checkNerveKillerLaunchFast__8TKoopaJrFv
    mr      r3, r31
    bl      checkNerveKillerHit__8TKoopaJrFv
branch_0x8011af44:
    lwz     r3, MarioHitActorPos(r13)
    lfs     f0, 0x10(r31)
    lfs     f1, 0x0(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x104(sp)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f2, 0x8(r3)
    lfs     f1, 0x18(r31)
    lfs     f0, -0x52c0(rtoc)
    fsubs   f1, f2, f1
    stfs    f1, 0x10c(sp)
    stfs    f0, 0x108(sp)
    lwz     r0, 0x104(sp)
    lwz     r3, 0x108(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x10c(sp)
    stw     r3, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lfs     f2, 0xdc(sp)
    lfs     f1, 0xd4(sp)
    bl      atan2f
    lfs     f2, -0x52ac(rtoc)
    lfs     f0, -0x52b0(rtoc)
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x34(r31)
branch_0x8011afb8:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lmw     r26, 0x138(sp)
    lwz     r0, 0x154(sp)
    addi    sp, sp, 0x150
    mtlr    r0
    blr


.globl reset__8TKoopaJrFv
reset__8TKoopaJrFv: # 0x8011afdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      reset__11TSpineEnemyFv
    lwz     r4, 0x8c(r30)
    li      r31, 0x0
    addi    r3, r30, 0x0
    stw     r31, 0x8(r4)
    stw     r31, 0x150(r30)
    stw     r31, 0x154(r30)
    stw     r31, 0x158(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x130(r3)
    stw     r0, 0x154(r30)
    stw     r31, 0x158(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl init__8TKoopaJrFP12TLiveManager
init__8TKoopaJrFP12TLiveManager: # 0x8011b048
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stw     r31, 0xd4(sp)
    addi    r31, r5, 0x4c20
    stw     r30, 0xd0(sp)
    mr      r30, r3
    stw     r29, 0xcc(sp)
    stw     r4, 0x70(r3)
    addi    r4, r30, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8011b0a0
    lwz     r4, 0x70(r30)
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8011b0a0:
    stw     r29, 0x78(r30)
    addi    r4, r31, 0x1c0
    li      r5, 0x0
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    li      r4, 0x1
    lwz     r3, 0x74(r30)
    bl      setLightType__6MActorFi
    mr      r3, r30
    bl      initAnmSound__10TLiveActorFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0xe0(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x52c0(rtoc)
    lis     r4, 0x800
    lfs     f3, 0xcc(r3)
    fmr     f4, f31
    fmr     f2, f1
    addi    r3, r30, 0x0
    addi    r4, r4, 0x28
    li      r5, 0x1
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lbz     r0, -0x6650(r13)
    extsb.  r0, r0
    bne-    branch_0x8011b170
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x664c(r13)
    subi    r0, r3, 0x2770
    lis     r4, 0x8011
    stw     r0, -0x664c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x32cc
    addi    r4, r4, 0x7bdc
    subi    r3, r13, 0x664c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6650(r13)
branch_0x8011b170:
    lwz     r5, 0x8c(r30)
    li      r4, 0x0
    subi    r0, r13, 0x664c
    stw     r4, 0x8(r5)
    addi    r3, r31, 0x2f8
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x2f8
    mtlr    r12
    blrl
    stw     r3, 0x16c(r30)
    lwz     r3, 0x16c(r30)
    lwz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    lwz     r0, 0x168(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8011b208
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x314
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x314
    mtlr    r12
    blrl
    stw     r3, 0x168(r30)
branch_0x8011b208:
    lwz     r3, 0x168(r30)
    lwz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xf4(r3)
    li      r31, 0x0
    addi    r3, r30, 0x0
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    lwz     r4, 0x8c(r30)
    stw     r31, 0x8(r4)
    stw     r31, 0x150(r30)
    stw     r31, 0x154(r30)
    stw     r31, 0x158(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x130(r3)
    stw     r0, 0x154(r30)
    stw     r31, 0x158(r30)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    lwz     r29, 0xcc(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl __ct__8TKoopaJrFPCc
__ct__8TKoopaJrFPCc: # 0x8011b290
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x2760
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x15c(r31)
    stw     r0, 0x160(r31)
    stw     r0, 0x164(r31)
    stw     r0, 0x168(r31)
    stw     r0, 0x16c(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__17TCallbackHitActorFP9THitActorUl
receiveMessage__17TCallbackHitActorFP9THitActorUl: # 0x8011b304
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__23TKoopaJrSubmarineParamsFPCc
__ct__23TKoopaJrSubmarineParamsFPCc: # 0x8011b334
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r27, 0x5c(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, 0x4c20
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x33c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x33c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0xa8(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x5260(rtoc)
    addi    r3, r30, 0x354
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x354
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x36c
    lfs     f0, -0x5260(rtoc)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x36c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    subi    r3, rtoc, 0x525c
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    subi    r6, rtoc, 0x525c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x37c
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x37c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x394
    lfs     f0, -0x528c(rtoc)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x394
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x3a4
    lfs     f0, -0x528c(rtoc)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x3a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x3bc
    lfs     f0, -0x528c(rtoc)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x3bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x3d0
    lfs     f0, -0x5254(rtoc)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x3d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x3ec
    lfs     f0, -0x5254(rtoc)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x3ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x400
    lfs     f0, -0x5254(rtoc)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x400
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x418
    lfs     f0, -0x528c(rtoc)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x418
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x430
    lfs     f0, -0x5254(rtoc)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x430
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x448
    lfs     f0, -0x5254(rtoc)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x448
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x460
    lfs     f0, -0x5250(rtoc)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x460
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x474
    lfs     f0, -0x52b8(rtoc)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x474
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x484
    lfs     f0, -0x52b8(rtoc)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x484
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x498
    lfs     f0, -0x52b8(rtoc)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x498
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0x4a4
    lfs     f0, -0x524c(rtoc)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x4a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    addi    r3, r30, 0x4c0
    lfs     f0, -0x5248(rtoc)
    stfs    f0, 0x220(r31)
    stw     r28, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x4c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x224(r31)
    addi    r3, r30, 0x4d0
    lfs     f0, -0x5244(rtoc)
    stfs    f0, 0x234(r31)
    stw     r28, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x4d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x238(r31)
    addi    r3, r30, 0x4e0
    lfs     f0, -0x5240(rtoc)
    stfs    f0, 0x248(r31)
    stw     r28, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x4e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0x4f8
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x4f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0x510
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x510
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x274(r31)
    li      r29, 0x1e
    lis     r3, 0x803b
    stw     r29, 0x284(r31)
    subi    r28, r3, 0x42b8
    addi    r3, r30, 0x528
    stw     r28, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x528
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x288(r31)
    mr      r3, r31
    stw     r29, 0x298(r31)
    stw     r28, 0x288(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lfs     f0, -0x7cf4(r13)
    mr      r3, r31
    stfs    f0, 0xb8(r31)
    lfs     f0, -0x7cf0(r13)
    stfs    f0, 0xcc(r31)
    lfs     f0, -0x7cec(r13)
    stfs    f0, 0xe0(r31)
    lfs     f0, -0x7ce8(r13)
    stfs    f0, 0xf4(r31)
    lfs     f0, -0x5290(rtoc)
    stfs    f0, 0x108(r31)
    lfs     f2, -0x528c(rtoc)
    stfs    f2, 0x11c(r31)
    lfs     f0, -0x523c(rtoc)
    stfs    f0, 0x130(r31)
    lfs     f1, -0x5238(rtoc)
    stfs    f1, 0x144(r31)
    lfs     f0, -0x5254(rtoc)
    stfs    f0, 0x158(r31)
    stfs    f2, 0x16c(r31)
    lfs     f0, -0x5234(rtoc)
    stfs    f0, 0x180(r31)
    stfs    f1, 0x194(r31)
    lfs     f0, -0x5230(rtoc)
    stfs    f0, 0x1a8(r31)
    lfs     f0, -0x7ce4(r13)
    stfs    f0, 0x1bc(r31)
    lfs     f0, -0x7ce0(r13)
    stfs    f0, 0x1d0(r31)
    lfs     f0, -0x7cdc(r13)
    stfs    f0, 0x1e4(r31)
    lfs     f0, -0x7cd8(r13)
    stfs    f0, 0x1f8(r31)
    lfs     f0, -0x7cd4(r13)
    stfs    f0, 0x20c(r31)
    lfs     f0, -0x7cd0(r13)
    stfs    f0, 0x220(r31)
    lfs     f0, -0x7ccc(r13)
    stfs    f0, 0x234(r31)
    lfs     f0, -0x7cc8(r13)
    stfs    f0, 0x248(r31)
    lfs     f0, -0x7cc4(r13)
    stfs    f0, 0x25c(r31)
    lfs     f0, -0x7cc0(r13)
    stfs    f0, 0x270(r31)
    lwz     r0, -0x7cbc(r13)
    stw     r0, 0x298(r31)
    lwz     r0, -0x7cb8(r13)
    stw     r0, 0x284(r31)
    lwz     r0, 0x74(sp)
    lmw     r27, 0x5c(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl __ct__14TKoopaJrParamsFPCc
__ct__14TKoopaJrParamsFPCc: # 0x8011b8a0
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, 0x4c20
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x53c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x53c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r28, r3, 0x42c4
    stw     r28, 0xa8(r31)
    lis     r3, 0x803b
    subi    r27, r3, 0x42d0
    lfs     f0, -0x522c(rtoc)
    addi    r3, r30, 0x4c0
    stfs    f0, 0xb8(r31)
    stw     r27, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x4c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xbc(r31)
    addi    r3, r30, 0x4d0
    lfs     f0, -0x5244(rtoc)
    stfs    f0, 0xcc(r31)
    stw     r27, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x4d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xd0(r31)
    addi    r3, r30, 0x554
    lfs     f0, -0x5240(rtoc)
    stfs    f0, 0xe0(r31)
    stw     r27, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x554
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xe4(r31)
    addi    r3, r30, 0x564
    lfs     f0, -0x5248(rtoc)
    stfs    f0, 0xf4(r31)
    stw     r27, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x564
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xf8(r31)
    addi    r3, r30, 0x57c
    lfs     f0, -0x522c(rtoc)
    stfs    f0, 0x108(r31)
    stw     r27, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x57c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x10c(r31)
    li      r28, 0x168
    lis     r3, 0x803b
    stw     r28, 0x11c(r31)
    subi    r29, r3, 0x42b8
    addi    r3, r30, 0x58c
    stw     r29, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x58c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x120(r31)
    li      r0, 0x4b0
    addi    r3, r30, 0x5a4
    stw     r0, 0x130(r31)
    stw     r29, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x5a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x134(r31)
    mr      r3, r31
    stw     r28, 0x144(r31)
    stw     r29, 0x134(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lfs     f0, -0x7d14(r13)
    mr      r3, r31
    stfs    f0, 0xb8(r31)
    lfs     f0, -0x7d10(r13)
    stfs    f0, 0xcc(r31)
    lfs     f0, -0x7d0c(r13)
    stfs    f0, 0xe0(r31)
    lfs     f0, -0x7d08(r13)
    stfs    f0, 0xf4(r31)
    lfs     f0, -0x7d04(r13)
    stfs    f0, 0x108(r31)
    lwz     r0, -0x7d00(r13)
    stw     r0, 0x11c(r31)
    lwz     r0, -0x7cfc(r13)
    stw     r0, 0x144(r31)
    lwz     r0, -0x7cf8(r13)
    stw     r0, 0x130(r31)
    lwz     r0, 0x2c(sp)
    lmw     r27, 0x14(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl r2d__14TDirectionCalcFf
r2d__14TDirectionCalcFf: # 0x8011baa0
    lfs     f2, -0x52ac(rtoc)
    lfs     f0, -0x52b0(rtoc)
    fmuls   f1, f2, f1
    fdivs   f1, f1, f0
    blr


.globl d2r__14TDirectionCalcFf
d2r__14TDirectionCalcFf: # 0x8011bab4
    lfs     f2, -0x52b0(rtoc)
    lfs     f0, -0x52ac(rtoc)
    fmuls   f1, f1, f2
    fdivs   f1, f1, f0
    blr


.globl absDirection__14TDirectionCalcFf
absDirection__14TDirectionCalcFf: # 0x8011bac8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    fmr     f31, f1
    stw     r31, 0x34(sp)
    mr      r31, r3
    lfs     f1, 0x0(r3)
    lfs     f0, -0x52c0(rtoc)
    lfs     f2, -0x529c(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      mod__Q29JGeometry8TUtil_f_Fff
    lfs     f0, -0x52c0(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f3, 0x0(r31)
    fcmpo   cr0, f31, f3
    cror    2, 1, 2
    bne-    branch_0x8011bb34
    fsubs   f2, f31, f3
    lfs     f1, -0x529c(rtoc)
    fsubs   f0, f1, f2
    fcmpo   cr0, f0, f2
    bge-    branch_0x8011bb4c
    fsubs   f31, f31, f1
    b       branch_0x8011bb4c

branch_0x8011bb34:
    fsubs   f2, f3, f31
    lfs     f1, -0x529c(rtoc)
    fsubs   f0, f1, f2
    fcmpo   cr0, f0, f2
    bge-    branch_0x8011bb4c
    fadds   f31, f31, f1
branch_0x8011bb4c:
    fsubs   f0, f3, f31
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    fabs    f1, f0
    addi    sp, sp, 0x40
    blr


.globl calcDirectionVector__14TDirectionCalcFv
calcDirectionVector__14TDirectionCalcFv: # 0x8011bb6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    mr      r30, r3
    lfs     f1, 0x0(r4)
    bl      cosf
    lfs     f0, 0x0(r31)
    fmr     f31, f1
    fmr     f1, f0
    bl      sinf
    stfs    f1, 0x0(r30)
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0x4(r30)
    stfs    f31, 0x8(r30)
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl makeDirection__14TDirectionCalcFQ29JGeometry8TVec3_f_
makeDirection__14TDirectionCalcFQ29JGeometry8TVec3_f_: # 0x8011bbd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lfs     f2, 0x8(r4)
    lfs     f1, 0x0(r4)
    bl      atan2f
    stfs    f1, 0x0(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl calcTurnDirection__14TDirectionCalcFff
calcTurnDirection__14TDirectionCalcFff: # 0x8011bc08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    fmr     f31, f2
    stfd    f30, 0x40(sp)
    fmr     f30, f1
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lfs     f0, -0x52c0(rtoc)
    lfs     f3, 0x0(r3)
    lfs     f1, -0x529c(rtoc)
    fsubs   f0, f3, f0
    fmr     f2, f1
    fadds   f1, f1, f0
    bl      fmodf__3stdFff
    lfs     f3, -0x52c0(rtoc)
    fadds   f0, f3, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x0(r31)
    lfs     f2, -0x529c(rtoc)
    fsubs   f0, f0, f3
    fadds   f1, f2, f0
    bl      mod__Q29JGeometry8TUtil_f_Fff
    lfs     f0, -0x52c0(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f3, 0x0(r31)
    fcmpo   cr0, f30, f3
    cror    2, 1, 2
    bne-    branch_0x8011bca0
    fsubs   f2, f30, f3
    lfs     f1, -0x529c(rtoc)
    fsubs   f0, f1, f2
    fcmpo   cr0, f0, f2
    bge-    branch_0x8011bcb8
    fsubs   f30, f30, f1
    b       branch_0x8011bcb8

branch_0x8011bca0:
    fsubs   f2, f3, f30
    lfs     f1, -0x529c(rtoc)
    fsubs   f0, f1, f2
    fcmpo   cr0, f0, f2
    bge-    branch_0x8011bcb8
    fadds   f30, f30, f1
branch_0x8011bcb8:
    fcmpo   cr0, f30, f3
    fmr     f1, f31
    ble-    branch_0x8011bcdc
    fsubs   f0, f30, f3
    fcmpo   cr0, f0, f31
    bge-    branch_0x8011bcd4
    fmr     f1, f0
branch_0x8011bcd4:
    fadds   f1, f3, f1
    b       branch_0x8011bcf0

branch_0x8011bcdc:
    fsubs   f0, f3, f30
    fcmpo   cr0, f0, f31
    bge-    branch_0x8011bcec
    fmr     f1, f0
branch_0x8011bcec:
    fsubs   f1, f3, f1
branch_0x8011bcf0:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    mtlr    r0
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl sub__14TDirectionCalcFf
sub__14TDirectionCalcFf: # 0x8011bd0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lfs     f1, 0x0(r3)
    lfs     f0, -0x52c0(rtoc)
    lfs     f2, -0x529c(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      mod__Q29JGeometry8TUtil_f_Fff
    lfs     f0, -0x52c0(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f3, 0x0(r31)
    fcmpo   cr0, f31, f3
    cror    2, 1, 2
    bne-    branch_0x8011bd78
    fsubs   f2, f31, f3
    lfs     f1, -0x529c(rtoc)
    fsubs   f0, f1, f2
    fcmpo   cr0, f0, f2
    bge-    branch_0x8011bd90
    fsubs   f31, f31, f1
    b       branch_0x8011bd90

branch_0x8011bd78:
    fsubs   f2, f3, f31
    lfs     f1, -0x529c(rtoc)
    fsubs   f0, f1, f2
    fcmpo   cr0, f0, f2
    bge-    branch_0x8011bd90
    fadds   f31, f31, f1
branch_0x8011bd90:
    lwz     r0, 0x3c(sp)
    fsubs   f1, f3, f31
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl calcNearerDirection__14TDirectionCalcFf
calcNearerDirection__14TDirectionCalcFf: # 0x8011bdac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lfs     f3, 0x0(r3)
    lfs     f0, -0x52c0(rtoc)
    lfs     f2, -0x529c(rtoc)
    fsubs   f0, f3, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f0, -0x52c0(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x0(r31)
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    bne-    branch_0x8011be18
    fsubs   f2, f31, f0
    lfs     f1, -0x529c(rtoc)
    fsubs   f0, f1, f2
    fcmpo   cr0, f0, f2
    bge-    branch_0x8011be30
    fsubs   f31, f31, f1
    b       branch_0x8011be30

branch_0x8011be18:
    fsubs   f2, f0, f31
    lfs     f1, -0x529c(rtoc)
    fsubs   f0, f1, f2
    fcmpo   cr0, f0, f2
    bge-    branch_0x8011be30
    fadds   f31, f31, f1
branch_0x8011be30:
    lwz     r0, 0x3c(sp)
    fmr     f1, f31
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __ct__14TDirectionCalcFQ29JGeometry8TVec3_f_
__ct__14TDirectionCalcFQ29JGeometry8TVec3_f_: # 0x8011be4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1c(sp)
    lfs     f2, 0x1c(sp)
    lfs     f1, 0x14(sp)
    bl      atan2f
    stfs    f1, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__14TDirectionCalcFf
__ct__14TDirectionCalcFf: # 0x8011bea0
    stfs    f1, 0x0(r3)
    blr


.globl __ct__14TDirectionCalcFv
__ct__14TDirectionCalcFv: # 0x8011bea8
    lfs     f0, -0x52c0(rtoc)
    stfs    f0, 0x0(r3)
    blr


.globl __dt__17TKoopaJrSubmarineFv
__dt__17TKoopaJrSubmarineFv: # 0x8011beb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8011bf04
    lis     r3, 0x803c
    subi    r3, r3, 0x2918
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8011bf04
    mr      r3, r30
    bl      __dl__FPv
branch_0x8011bf04:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TKoopaJrManagerFv
__dt__15TKoopaJrManagerFv: # 0x8011bf20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8011bf68
    lis     r3, 0x803c
    subi    r0, r3, 0x2804
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8011bf68
    mr      r3, r30
    bl      __dl__FPv
branch_0x8011bf68:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8TKoopaJrFv
__dt__8TKoopaJrFv: # 0x8011bf84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8011bfd4
    lis     r3, 0x803c
    subi    r3, r3, 0x2760
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8011bfd4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8011bfd4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TCallbackHitActorFv
__dt__17TCallbackHitActorFv: # 0x8011bff0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8011c058
    lis     r3, 0x803c
    subi    r3, r3, 0x264c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8011c048
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8011c048:
    extsh.  r0, r31
    ble-    branch_0x8011c058
    mr      r3, r30
    bl      __dl__FPv
branch_0x8011c058:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_koopajr_cpp
__sinit_koopajr_cpp: # 0x8011c074
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x32b8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c0bc
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x74
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8011c0bc:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c0ec
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x80
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8011c0ec:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c11c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x8c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8011c11c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c14c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x98
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8011c14c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c17c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xa4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8011c17c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c1ac
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xb0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8011c1ac:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c1dc
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xbc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8011c1dc:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c20c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xc8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8011c20c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c23c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xd4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8011c23c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c26c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xe0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8011c26c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c29c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8011c29c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c2cc
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xf8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8011c2cc:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c2fc
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x104
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8011c2fc:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c32c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x110
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8011c32c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c35c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x11c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8011c35c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__17TCallbackHitActorFv
_32___dt__17TCallbackHitActorFv: # 0x8011c370
    subi    r3, r3, 0x20
    b       __dt__17TCallbackHitActorFv


.globl _32___dt__8TKoopaJrFv
_32___dt__8TKoopaJrFv: # 0x8011c378
    subi    r3, r3, 0x20
    b       __dt__8TKoopaJrFv


.globl _32___dt__17TKoopaJrSubmarineFv
_32___dt__17TKoopaJrSubmarineFv: # 0x8011c380
    subi    r3, r3, 0x20
    b       __dt__17TKoopaJrSubmarineFv

