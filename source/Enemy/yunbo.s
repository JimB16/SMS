
.globl __dt__17TNerveYumboFreezeFv
__dt__17TNerveYumboFreezeFv: # 0x80115038
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011507c
    lis     r3, __vvt__17TNerveYumboFreeze@ha
    addi    r0, r3, __vvt__17TNerveYumboFreeze@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8011506c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8011506c:
    extsh.  r0, r4
    ble-    branch_0x8011507c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011507c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveYumboFreezeCFP24TSpineBase_10TLiveActor_
execute__17TNerveYumboFreezeCFP24TSpineBase_10TLiveActor_: # 0x80115094
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    stw     r30, 0x38(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80115104
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xb
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x28a6
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80115104
    addi    r4, r30, 0x10
    li      r3, 0x28a6
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80115104:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x2e4(r3)
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    bge-    branch_0x801151a8
    lbz     r0, R13Off_m0x6678(r13)
    extsb.  r0, r0
    bne-    branch_0x8011516c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveYumboDancing@ha
    stw     r0, R13Off_m0x6674(r13)
    addi    r0, r3, __vvt__18TNerveYumboDancing@l
    lis     r4, __dt__18TNerveYumboDancingFv@h
    stw     r0, R13Off_m0x6674(r13)
    lis     r3, unk_803f31c8@h
    addi    r5, r3, unk_803f31c8@l
    addi    r4, r4, __dt__18TNerveYumboDancingFv@l
    addi    r3, r13, R13Off_m0x6674
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6678(r13)
branch_0x8011516c:
    addi    r4, r13, R13Off_m0x6674
    cmplwi  r4, 0x0
    beq-    branch_0x801151a0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x801151a0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x801151a0:
    li      r3, 0x1
    b       branch_0x801151ac

branch_0x801151a8:
    li      r3, 0x0
branch_0x801151ac:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__18TNerveYumboDancingFv
__dt__18TNerveYumboDancingFv: # 0x801151c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80115208
    lis     r3, __vvt__18TNerveYumboDancing@ha
    addi    r0, r3, __vvt__18TNerveYumboDancing@l
    stw     r0, 0x0(r31)
    beq-    branch_0x801151f8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x801151f8:
    extsh.  r0, r4
    ble-    branch_0x80115208
    mr      r3, r31
    bl      __dl__FPv
branch_0x80115208:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveYumboAttackCFP24TSpineBase_10TLiveActor_
execute__17TNerveYumboAttackCFP24TSpineBase_10TLiveActor_: # 0x80115220
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r4
    stw     r30, 0x78(sp)
    mr      r30, r3
    stw     r29, 0x74(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011526c
    lis     r4, unk_80384b28@h
    lwz     r3, 0x78(r29)
    addi    r4, r4, unk_80384b28@l
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r29)
    mr      r3, r29
    bl      shotSeeds__6TYumboFv
branch_0x8011526c:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x60b4(r13)
    lfs     f0, 0x14(r29)
    lfs     f1, 0x4(r5)
    lfs     f2, 0x130(r3)
    fsubs   f0, f1, f0
    fabs    f0, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x801152ac
    li      r0, 0x1
    b       branch_0x80115344

branch_0x801152ac:
    lwz     r4, 0x0(r5)
    mr      r3, r29
    lwz     r0, 0x4(r5)
    stw     r4, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x68(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x10(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x14(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x18(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f0, -0x5338(r2)
    stfs    f0, 0x64(sp)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x60(sp)
    lfs     f0, 0x64(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x68(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x11c(r3)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fmuls   f1, f3, f3
    fadds   f0, f2, f0
    fcmpo   cr0, f1, f0
    mfcr    r0
    srwi    r0, r0, 31
branch_0x80115344:
    clrlwi. r0, r0, 24
    beq-    branch_0x801153cc
    lbz     r0, R13Off_m0x6668(r13)
    extsb.  r0, r0
    bne-    branch_0x80115390
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveYumboAppearing@ha
    stw     r0, R13Off_m0x6664(r13)
    addi    r0, r3, __vvt__20TNerveYumboAppearing@l
    lis     r4, __dt__20TNerveYumboAppearingFv@h
    stw     r0, R13Off_m0x6664(r13)
    lis     r3, unk_803f31e0@h
    addi    r5, r3, unk_803f31e0@l
    addi    r4, r4, __dt__20TNerveYumboAppearingFv@l
    addi    r3, r13, R13Off_m0x6664
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6668(r13)
branch_0x80115390:
    addi    r4, r13, R13Off_m0x6664
    cmplwi  r4, 0x0
    beq-    branch_0x801153c4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x801153c4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x801153c4:
    li      r3, 0x1
    b       branch_0x80115434

branch_0x801153cc:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x320(r3)
    lwz     r0, 0x20(r31)
    srawi   r3, r3, 4
    addze   r3, r3
    cmpw    r3, r0
    bge-    branch_0x80115430
    cmplwi  r30, 0x0
    beq-    branch_0x80115428
    lwz     r4, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r4, r0
    bge-    branch_0x80115428
    lwz     r3, 0xc(r31)
    slwi    r0, r4, 2
    stwx    r30, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80115428:
    li      r3, 0x1
    b       branch_0x80115434

branch_0x80115430:
    li      r3, 0x0
branch_0x80115434:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl __dt__20TNerveYumboAppearingFv
__dt__20TNerveYumboAppearingFv: # 0x80115450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80115494
    lis     r3, __vvt__20TNerveYumboAppearing@ha
    addi    r0, r3, __vvt__20TNerveYumboAppearing@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80115484
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80115484:
    extsh.  r0, r4
    ble-    branch_0x80115494
    mr      r3, r31
    bl      __dl__FPv
branch_0x80115494:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__17TNerveYumboAttackFv
theNerve__17TNerveYumboAttackFv: # 0x801154ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6660(r13)
    extsb.  r0, r0
    bne-    branch_0x801154fc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveYumboAttack@ha
    stw     r0, R13Off_m0x665c(r13)
    addi    r0, r3, __vvt__17TNerveYumboAttack@l
    lis     r4, __dt__17TNerveYumboAttackFv@h
    stw     r0, R13Off_m0x665c(r13)
    lis     r3, unk_803f31ec@h
    addi    r5, r3, unk_803f31ec@l
    addi    r4, r4, __dt__17TNerveYumboAttackFv@l
    addi    r3, r13, R13Off_m0x665c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6660(r13)
branch_0x801154fc:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x665c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__17TNerveYumboAttackFv
__dt__17TNerveYumboAttackFv: # 0x80115510
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80115554
    lis     r3, __vvt__17TNerveYumboAttack@ha
    addi    r0, r3, __vvt__17TNerveYumboAttack@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80115544
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80115544:
    extsh.  r0, r4
    ble-    branch_0x80115554
    mr      r3, r31
    bl      __dl__FPv
branch_0x80115554:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveYumboAppearingCFP24TSpineBase_10TLiveActor_
execute__20TNerveYumboAppearingCFP24TSpineBase_10TLiveActor_: # 0x8011556c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r4
    stw     r30, 0x48(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x801155f0
    lis     r4, unk_80384b1c@h
    lwz     r3, 0x78(r30)
    addi    r4, r4, unk_80384b1c@l
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r30)
    addi    r3, r30, 0x0
    li      r4, 0xa
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xb6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xb7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801155f0:
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x38(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f2, -0x5338(r2)
    lfs     f1, 0x38(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8011566c
    lfs     f0, 0x30(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80115664
    lfs     f0, -0x5334(r2)
    b       branch_0x801156e8

branch_0x80115664:
    lfs     f0, -0x5330(r2)
    b       branch_0x801156e8

branch_0x8011566c:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x801156ac
    lfs     f2, 0x30(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5320(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x532c(r2)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    stw     r0, 0x40(sp)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x801156e8

branch_0x801156ac:
    fneg    f1, f1
    lfs     f2, 0x30(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5320(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x532c(r2)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5328(r2)
    stw     r0, 0x40(sp)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x801156e8:
    stfs    f0, 0x34(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80115780
    lbz     r0, R13Off_m0x6678(r13)
    extsb.  r0, r0
    bne-    branch_0x80115744
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveYumboDancing@ha
    stw     r0, R13Off_m0x6674(r13)
    addi    r0, r3, __vvt__18TNerveYumboDancing@l
    lis     r4, __dt__18TNerveYumboDancingFv@h
    stw     r0, R13Off_m0x6674(r13)
    lis     r3, unk_803f31c8@h
    addi    r5, r3, unk_803f31c8@l
    addi    r4, r4, __dt__18TNerveYumboDancingFv@l
    addi    r3, r13, R13Off_m0x6674
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6678(r13)
branch_0x80115744:
    addi    r4, r13, R13Off_m0x6674
    cmplwi  r4, 0x0
    beq-    branch_0x80115778
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80115778
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80115778:
    li      r3, 0x1
    b       branch_0x80115784

branch_0x80115780:
    li      r3, 0x0
branch_0x80115784:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl execute__17TNerveYumboHidingCFP24TSpineBase_10TLiveActor_
execute__17TNerveYumboHidingCFP24TSpineBase_10TLiveActor_: # 0x8011579c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80115834
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5318(r2)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    li      r0, 0x0
    li      r4, 0x296c
    stb     r0, 0x1d8(r30)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80115834
    addi    r4, r30, 0x10
    li      r3, 0x296c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80115834:
    lbz     r0, 0x1d8(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80115894
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5314(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80115894
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xb6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xb7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r0, 0x1
    stb     r0, 0x1d8(r30)
branch_0x80115894:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80115928
    lbz     r0, R13Off_m0x6660(r13)
    extsb.  r0, r0
    bne-    branch_0x801158ec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveYumboAttack@ha
    stw     r0, R13Off_m0x665c(r13)
    addi    r0, r3, __vvt__17TNerveYumboAttack@l
    lis     r4, __dt__17TNerveYumboAttackFv@h
    stw     r0, R13Off_m0x665c(r13)
    lis     r3, unk_803f31ec@h
    addi    r5, r3, unk_803f31ec@l
    addi    r4, r4, __dt__17TNerveYumboAttackFv@l
    addi    r3, r13, R13Off_m0x665c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6660(r13)
branch_0x801158ec:
    addi    r4, r13, R13Off_m0x665c
    cmplwi  r4, 0x0
    beq-    branch_0x80115920
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80115920
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80115920:
    li      r3, 0x1
    b       branch_0x8011592c

branch_0x80115928:
    li      r3, 0x0
branch_0x8011592c:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl theNerve__17TNerveYumboHidingFv
theNerve__17TNerveYumboHidingFv: # 0x80115948
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6670(r13)
    extsb.  r0, r0
    bne-    branch_0x80115998
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveYumboHiding@ha
    stw     r0, R13Off_m0x666c(r13)
    addi    r0, r3, __vvt__17TNerveYumboHiding@l
    lis     r4, __dt__17TNerveYumboHidingFv@h
    stw     r0, R13Off_m0x666c(r13)
    lis     r3, unk_803f31d4@h
    addi    r5, r3, unk_803f31d4@l
    addi    r4, r4, __dt__17TNerveYumboHidingFv@l
    addi    r3, r13, R13Off_m0x666c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6670(r13)
branch_0x80115998:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x666c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__17TNerveYumboHidingFv
__dt__17TNerveYumboHidingFv: # 0x801159ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801159f0
    lis     r3, __vvt__17TNerveYumboHiding@ha
    addi    r0, r3, __vvt__17TNerveYumboHiding@l
    stw     r0, 0x0(r31)
    beq-    branch_0x801159e0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x801159e0:
    extsh.  r0, r4
    ble-    branch_0x801159f0
    mr      r3, r31
    bl      __dl__FPv
branch_0x801159f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveYumboDancingCFP24TSpineBase_10TLiveActor_
execute__18TNerveYumboDancingCFP24TSpineBase_10TLiveActor_: # 0x80115a08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r4
    stw     r30, 0x98(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80115a50
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80115a50:
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x88(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x88(sp)
    lfs     f2, -0x5338(r2)
    lfs     f1, 0x88(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80115acc
    lfs     f0, 0x80(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80115ac4
    lfs     f0, -0x5334(r2)
    b       branch_0x80115b48

branch_0x80115ac4:
    lfs     f0, -0x5330(r2)
    b       branch_0x80115b48

branch_0x80115acc:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80115b0c
    lfs     f2, 0x80(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5320(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x532c(r2)
    stw     r0, 0x94(sp)
    lis     r0, 0x4330
    stw     r0, 0x90(sp)
    lfd     f1, 0x90(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x80115b48

branch_0x80115b0c:
    fneg    f1, f1
    lfs     f2, 0x80(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5320(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x532c(r2)
    stw     r0, 0x94(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5328(r2)
    stw     r0, 0x90(sp)
    lfd     f2, 0x90(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x80115b48:
    stfs    f0, 0x34(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x4(r4)
    lfs     f2, 0xe0(r3)
    fsubs   f0, f0, f1
    fabs    f0, f0
    fcmpo   cr0, f0, f2
    bge-    branch_0x80115c08
    lfs     f2, 0x8(r4)
    mr      r3, r30
    lfs     f0, 0x0(r4)
    stfs    f0, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f2, 0x7c(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f30, 0xcc(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x108(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    fmr     f1, f30
    lfs     f3, 0xf4(r3)
    fmr     f2, f31
    addi    r3, r30, 0x0
    addi    r4, sp, 0x74
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x80115c00
    li      r0, 0x1
    b       branch_0x80115c0c

branch_0x80115c00:
    li      r0, 0x0
    b       branch_0x80115c0c

branch_0x80115c08:
    li      r0, 0x0
branch_0x80115c0c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80115c94
    lbz     r0, R13Off_m0x6670(r13)
    extsb.  r0, r0
    bne-    branch_0x80115c58
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveYumboHiding@ha
    stw     r0, R13Off_m0x666c(r13)
    addi    r0, r3, __vvt__17TNerveYumboHiding@l
    lis     r4, __dt__17TNerveYumboHidingFv@h
    stw     r0, R13Off_m0x666c(r13)
    lis     r3, unk_803f31d4@h
    addi    r5, r3, unk_803f31d4@l
    addi    r4, r4, __dt__17TNerveYumboHidingFv@l
    addi    r3, r13, R13Off_m0x666c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6670(r13)
branch_0x80115c58:
    addi    r4, r13, R13Off_m0x666c
    cmplwi  r4, 0x0
    beq-    branch_0x80115c8c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80115c8c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80115c8c:
    li      r3, 0x1
    b       branch_0x80115c98

branch_0x80115c94:
    li      r3, 0x0
branch_0x80115c98:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    addi    sp, sp, 0xb0
    blr


.globl getBasNameTable__6TYumboCFv
getBasNameTable__6TYumboCFv: # 0x80115cb8
    lis     r3, sambohead_bastable_803bd310@ha
    addi    r3, r3, sambohead_bastable_803bd310@l
    blr


.globl createModelData__13TYumboManagerFv
createModelData__13TYumboManagerFv: # 0x80115cc4
    mflr    r0
    lis     r4, entry_2876@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_2876@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__13TYumboManagerFR20JSUMemoryInputStream
load__13TYumboManagerFR20JSUMemoryInputStream: # 0x80115cf8
    mflr    r0
    lis     r5, unk_80384868@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r23, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r23, r4, 0x0
    addi    r31, r5, unk_80384868@l
    li      r3, 0x34c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80115e70
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x2f0
    lwz     r3, 0x10(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r31, 0x304
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r26, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x304
    addi    r4, r26, 0x0
    addi    r3, r26, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r25, r3, __vvt__10TParamT_l_@l
    stw     r25, 0x2d4(r26)
    li      r0, 0x258
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x2e4(r26)
    addi    r24, r3, __vvt__11TParamRT_l_@l
    addi    r3, r31, 0x314
    stw     r24, 0x2d4(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x2e8
    addi    r6, r31, 0x314
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r28, r3, __vvt__10TParamT_f_@l
    stw     r28, 0x2e8(r26)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r29, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x5310(r2)
    addi    r3, r31, 0x320
    stfs    f0, 0x2f8(r26)
    stw     r29, 0x2e8(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x2fc
    addi    r6, r31, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x2fc(r26)
    addi    r3, r31, 0x330
    lfs     f0, -0x530c(r2)
    stfs    f0, 0x30c(r26)
    stw     r29, 0x2fc(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x310
    addi    r6, r31, 0x330
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0x310(r26)
    li      r0, 0x50
    addi    r3, r31, 0x33c
    stw     r0, 0x320(r26)
    stw     r24, 0x310(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x324
    addi    r6, r31, 0x33c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x324(r26)
    addi    r3, r31, 0x34c
    lfs     f0, -0x5308(r2)
    stfs    f0, 0x334(r26)
    stw     r29, 0x324(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x338
    addi    r6, r31, 0x34c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x338(r26)
    mr      r3, r26
    lfs     f0, -0x5304(r2)
    stfs    f0, 0x348(r26)
    stw     r29, 0x338(r26)
    lwz     r4, 0x0(r26)
    bl      load__7TParamsFPCc
branch_0x80115e70:
    stw     r30, 0x38(r27)
    addi    r3, r27, 0x0
    addi    r4, r23, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, R13Off_m0x7d28(r13)
    addi    r3, r31, 0x35c
    stw     r0, 0x194(r30)
    lwz     r0, R13Off_m0x7d24(r13)
    stw     r0, 0x1a8(r30)
    lwz     r0, R13Off_m0x7d20(r13)
    stw     r0, 0x16c(r30)
    lwz     r0, R13Off_m0x7d1c(r13)
    stw     r0, 0x180(r30)
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    stw     r3, 0x60(r27)
    lmw     r23, 0x1c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__13TYumboManagerFPCc
__ct__13TYumboManagerFPCc: # 0x80115ec4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__13TYumboManager@ha
    addi    r0, r3, __vvt__13TYumboManager@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x60(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl attackToMario__6TYumboFv
attackToMario__6TYumboFv: # 0x80115f08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80115f34
    b       branch_0x80115f38

branch_0x80115f34:
    lwz     r31, 0x1c(r3)
branch_0x80115f38:
    lbz     r0, R13Off_m0x6658(r13)
    extsb.  r0, r0
    bne-    branch_0x80115f7c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveYumboFreeze@ha
    stw     r0, R13Off_m0x6654(r13)
    addi    r0, r3, __vvt__17TNerveYumboFreeze@l
    lis     r4, __dt__17TNerveYumboFreezeFv@h
    stw     r0, R13Off_m0x6654(r13)
    lis     r3, unk_803f31f8@h
    addi    r5, r3, unk_803f31f8@l
    addi    r4, r4, __dt__17TNerveYumboFreezeFv@l
    addi    r3, r13, R13Off_m0x6654
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6658(r13)
branch_0x80115f7c:
    addi    r0, r13, R13Off_m0x6654
    cmplw   r31, r0
    beq-    branch_0x80115f9c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
branch_0x80115f9c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl doKeepDistance__6TYumboFv
doKeepDistance__6TYumboFv: # 0x80115fb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80115fd8
    b       branch_0x80115fdc

branch_0x80115fd8:
    lwz     r31, 0x1c(r3)
branch_0x80115fdc:
    lbz     r0, R13Off_m0x6658(r13)
    extsb.  r0, r0
    bne-    branch_0x80116020
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveYumboFreeze@ha
    stw     r0, R13Off_m0x6654(r13)
    addi    r0, r3, __vvt__17TNerveYumboFreeze@l
    lis     r4, __dt__17TNerveYumboFreezeFv@h
    stw     r0, R13Off_m0x6654(r13)
    lis     r3, unk_803f31f8@h
    addi    r5, r3, unk_803f31f8@l
    addi    r4, r4, __dt__17TNerveYumboFreezeFv@l
    addi    r3, r13, R13Off_m0x6654
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6658(r13)
branch_0x80116020:
    addi    r0, r13, R13Off_m0x6654
    subf    r0, r31, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setDeadAnm__6TYumboFv
setDeadAnm__6TYumboFv: # 0x80116044
    mflr    r0
    li      r4, 0x3
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


.globl shotSeeds__6TYumboFv
shotSeeds__6TYumboFv: # 0x80116074
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    stfd    f30, 0x148(sp)
    stfd    f29, 0x140(sp)
    stfd    f28, 0x138(sp)
    stw     r31, 0x134(sp)
    stw     r30, 0x130(sp)
    addi    r30, r3, 0x0
    addi    r4, r30, 0x1d4
    stw     r29, 0x12c(sp)
    addi    r3, r30, 0x194
    b       branch_0x801160c4

branch_0x801160ac:
    lwz     r31, 0x0(r3)
    lwz     r0, 0x70(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x801160c0
    b       branch_0x801160d0

branch_0x801160c0:
    addi    r3, r3, 0x4
branch_0x801160c4:
    cmplw   r3, r4
    bne+    branch_0x801160ac
    li      r31, 0x0
branch_0x801160d0:
    cmplwi  r31, 0x0
    beq-    branch_0x80116540
    lwz     r29, 0x74(r30)
    li      r4, 0x0
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x801160fc
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x801160fc:
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x110(sp)
    stw     r0, 0x114(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x118(sp)
    lfs     f1, 0x110(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x110(sp)
    lfs     f1, 0x114(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x114(sp)
    lfs     f1, 0x118(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x118(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x5320(r2)
    stw     r0, 0x124(sp)
    lis     r0, 0x4330
    lfs     f3, -0x5300(r2)
    mr      r3, r30
    stw     r0, 0x120(sp)
    lfs     f1, -0x52f8(r2)
    lfd     f0, 0x120(sp)
    lfs     f2, -0x52fc(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x114(sp)
    fmuls   f3, f3, f4
    fadds   f1, f1, f3
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x114(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x110(sp)
    lfs     f0, 0x114(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x118(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x52f4(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    lfs     f29, 0x2f8(r3)
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801161ec
    lfs     f0, -0x5338(r2)
    stfs    f0, 0x118(sp)
    stfs    f0, 0x114(sp)
    stfs    f0, 0x110(sp)
    b       branch_0x80116218

branch_0x801161ec:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f29, f1
    lfs     f0, 0x110(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x110(sp)
    lfs     f0, 0x114(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x114(sp)
    lfs     f0, 0x118(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x118(sp)
branch_0x80116218:
    lfs     f1, -0x5338(r2)
    lfs     f31, 0x118(sp)
    fcmpu   cr0, f1, f31
    bne-    branch_0x80116248
    lfs     f0, 0x110(sp)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x80116240
    lfs     f2, -0x5334(r2)
    b       branch_0x801162c8

branch_0x80116240:
    lfs     f2, -0x5330(r2)
    b       branch_0x801162c8

branch_0x80116248:
    fcmpo   cr0, f31, f1
    cror    2, 1, 2
    bne-    branch_0x8011628c
    lfs     f2, 0x110(sp)
    fmr     f1, f31
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5320(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x532c(r2)
    stw     r0, 0x124(sp)
    lis     r0, 0x4330
    stw     r0, 0x120(sp)
    lfd     f1, 0x120(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x801162c8

branch_0x8011628c:
    fneg    f1, f31
    lfs     f2, 0x110(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5320(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x532c(r2)
    stw     r0, 0x124(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5328(r2)
    stw     r0, 0x120(sp)
    lfd     f2, 0x120(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x801162c8:
    lfs     f1, -0x52f0(r2)
    lfs     f0, -0x52f8(r2)
    fmuls   f1, f1, f2
    fneg    f1, f1
    fmuls   f30, f0, f1
    fmr     f1, f30
    bl      sinf
    fmr     f29, f1
    fmr     f1, f30
    bl      cosf
    lfs     f5, -0x5338(r2)
    fneg    f9, f29
    lfs     f7, 0x110(sp)
    fneg    f8, f5
    lfs     f6, 0x114(sp)
    fmuls   f2, f5, f7
    fmuls   f3, f5, f6
    fmuls   f0, f29, f6
    fmadds  f2, f8, f31, f2
    fmsubs  f4, f29, f31, f3
    fnmsubs  f3, f29, f7, f3
    fmadds  f6, f1, f6, f2
    fmsubs  f2, f8, f7, f0
    fmadds  f4, f1, f7, f4
    fmuls   f10, f6, f8
    fmuls   f0, f6, f1
    fnmsubs  f7, f5, f31, f2
    fmadds  f6, f1, f31, f3
    fmadds  f3, f4, f1, f10
    fmadds  f2, f4, f5, f0
    fmsubs  f0, f4, f9, f10
    fmuls   f4, f7, f8
    fnmsubs  f3, f6, f9, f3
    fmadds  f2, f6, f8, f2
    fmadds  f0, f6, f1, f0
    fadds   f3, f4, f3
    fmadds  f1, f7, f9, f2
    fadds   f0, f4, f0
    stfs    f3, 0x110(sp)
    stfs    f1, 0x114(sp)
    stfs    f0, 0x118(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x5320(r2)
    stw     r0, 0x124(sp)
    lis     r0, 0x4330
    lfs     f2, -0x5300(r2)
    stw     r0, 0x120(sp)
    lfs     f1, -0x52ec(r2)
    lfd     f3, 0x120(sp)
    lfs     f0, -0x52f8(r2)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f30, f0, f1
    fmr     f1, f30
    bl      sinf
    fmr     f29, f1
    fmr     f1, f30
    bl      cosf
    mr      r3, r30
    fmr     f30, f1
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f2, -0x52e8(r2)
    lfs     f1, 0x30c(r3)
    lfs     f0, -0x52f8(r2)
    fmuls   f1, f2, f1
    fmuls   f28, f0, f1
    fmr     f1, f28
    bl      sinf
    fmr     f31, f1
    fmr     f1, f28
    bl      cosf
    lfs     f6, -0x5338(r2)
    mr      r3, r30
    lfs     f2, 0x110(sp)
    fmuls   f5, f6, f1
    lfs     f0, 0x118(sp)
    fmuls   f4, f30, f6
    lfs     f11, 0x114(sp)
    fmuls   f8, f6, f31
    fadds   f3, f5, f4
    fmuls   f10, f29, f6
    fmadds  f5, f30, f31, f5
    fadds   f3, f6, f3
    fmadds  f4, f29, f1, f4
    fadds   f5, f10, f5
    fnmsubs  f9, f29, f31, f3
    fmsubs  f1, f30, f1, f8
    fsubs   f7, f5, f6
    fadds   f3, f8, f4
    fsubs   f5, f1, f10
    fneg    f12, f7
    fsubs   f8, f3, f6
    fmuls   f3, f9, f2
    fmuls   f4, f9, f11
    fmuls   f1, f8, f2
    fsubs   f10, f5, f6
    fmadds  f3, f12, f0, f3
    fmsubs  f6, f8, f0, f4
    fmsubs  f5, f7, f11, f1
    fmadds  f7, f10, f11, f3
    fneg    f13, f9
    fmuls   f4, f8, f11
    fmadds  f6, f10, f2, f6
    fmuls   f3, f7, f13
    fmuls   f1, f7, f10
    fmsubs  f4, f12, f2, f4
    fmadds  f5, f10, f0, f5
    fmadds  f2, f6, f9, f1
    fneg    f8, f8
    fmadds  f3, f6, f10, f3
    fmuls   f1, f7, f12
    fnmsubs  f4, f9, f0, f4
    fnmsubs  f3, f5, f8, f3
    fmsubs  f0, f6, f8, f1
    fmadds  f1, f5, f12, f2
    fmadds  f2, f4, f12, f3
    fmadds  f0, f5, f10, f0
    fmadds  f1, f4, f8, f1
    stfs    f2, 0x110(sp)
    fmadds  f0, f4, f13, f0
    stfs    f1, 0x114(sp)
    stfs    f0, 0x118(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x70(r31)
    lwz     r4, 0x320(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x70(r31)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r31)
    lwz     r3, 0x110(sp)
    lwz     r0, 0x114(sp)
    stw     r3, 0x78(r31)
    stw     r0, 0x7c(r31)
    lwz     r0, 0x118(sp)
    stw     r0, 0x80(r31)
    stw     r4, 0x74(r31)
    lfs     f0, -0x52e4(r2)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r31)
branch_0x80116540:
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lfd     f30, 0x148(sp)
    mtlr    r0
    lfd     f29, 0x140(sp)
    lfd     f28, 0x138(sp)
    lwz     r31, 0x134(sp)
    lwz     r30, 0x130(sp)
    lwz     r29, 0x12c(sp)
    addi    sp, sp, 0x158
    blr


.globl behaveToWater__6TYumboFP9THitActor
behaveToWater__6TYumboFP9THitActor: # 0x8011656c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r27, 0x2c(sp)
    mr      r31, r3
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80116594
    b       branch_0x80116598

branch_0x80116594:
    lwz     r30, 0x1c(r3)
branch_0x80116598:
    lbz     r0, R13Off_m0x6658(r13)
    extsb.  r0, r0
    bne-    branch_0x801165dc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveYumboFreeze@ha
    stw     r0, R13Off_m0x6654(r13)
    addi    r0, r3, __vvt__17TNerveYumboFreeze@l
    lis     r4, __dt__17TNerveYumboFreezeFv@h
    stw     r0, R13Off_m0x6654(r13)
    lis     r3, unk_803f31f8@h
    addi    r5, r3, unk_803f31f8@l
    addi    r4, r4, __dt__17TNerveYumboFreezeFv@l
    addi    r3, r13, R13Off_m0x6654
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6658(r13)
branch_0x801165dc:
    addi    r0, r13, R13Off_m0x6654
    cmplw   r30, r0
    li      r29, 0x1
    addi    r28, r29, 0x0
    addi    r27, r29, 0x0
    beq-    branch_0x80116604
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x80116604
    li      r27, 0x0
branch_0x80116604:
    clrlwi. r0, r27, 24
    bne-    branch_0x8011661c
    bl      theNerve__17TNerveYumboHidingFv
    cmplw   r30, r3
    beq-    branch_0x8011661c
    li      r28, 0x0
branch_0x8011661c:
    clrlwi. r0, r28, 24
    bne-    branch_0x80116634
    bl      theNerve__17TNerveYumboAttackFv
    cmplw   r30, r3
    beq-    branch_0x80116634
    li      r29, 0x0
branch_0x80116634:
    clrlwi. r0, r29, 24
    bne-    branch_0x801166b0
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x6658(r13)
    extsb.  r0, r0
    bne-    branch_0x8011668c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveYumboFreeze@ha
    stw     r0, R13Off_m0x6654(r13)
    addi    r0, r3, __vvt__17TNerveYumboFreeze@l
    lis     r4, __dt__17TNerveYumboFreezeFv@h
    stw     r0, R13Off_m0x6654(r13)
    lis     r3, unk_803f31f8@h
    addi    r5, r3, unk_803f31f8@l
    addi    r4, r4, __dt__17TNerveYumboFreezeFv@l
    addi    r3, r13, R13Off_m0x6654
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6658(r13)
branch_0x8011668c:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6654
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x801166a4
    stw     r0, 0x1c(r4)
branch_0x801166a4:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x801166b0:
    lmw     r27, 0x2c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl perform__6TYumboFUlPQ26JDrama9TGraphics
perform__6TYumboFUlPQ26JDrama9TGraphics: # 0x801166c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    addi    r31, r30, 0x1d4
    addi    r30, r30, 0x194
    b       branch_0x8011671c

branch_0x801166fc:
    lwz     r3, 0x0(r30)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x4
branch_0x8011671c:
    cmplw   r30, r31
    bne+    branch_0x801166fc
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl moveObject__6TYumboFv
moveObject__6TYumboFv: # 0x80116744
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80116770
    b       branch_0x80116774

branch_0x80116770:
    lwz     r30, 0x1c(r3)
branch_0x80116774:
    bl      theNerve__22TNerveSmallEnemyChangeFv
    cmplw   r30, r3
    beq-    branch_0x8011687c
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80116794
    b       branch_0x80116798

branch_0x80116794:
    lwz     r30, 0x1c(r3)
branch_0x80116798:
    lbz     r0, R13Off_m0x6658(r13)
    extsb.  r0, r0
    bne-    branch_0x801167d8
    addi    r3, r13, R13Off_m0x6654
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__17TNerveYumboFreeze@ha
    addi    r0, r3, __vvt__17TNerveYumboFreeze@l
    lis     r4, __dt__17TNerveYumboFreezeFv@h
    stw     r0, R13Off_m0x6654(r13)
    lis     r3, unk_803f31f8@h
    addi    r5, r3, unk_803f31f8@l
    addi    r4, r4, __dt__17TNerveYumboFreezeFv@l
    addi    r3, r13, R13Off_m0x6654
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6658(r13)
branch_0x801167d8:
    addi    r0, r13, R13Off_m0x6654
    cmplw   r30, r0
    bne-    branch_0x80116834
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x12f
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80116834
    lfs     f0, 0x24(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x17c(r3)
branch_0x80116834:
    lis     r4, unk_80384be8@h
    lwz     r3, 0x74(r31)
    addi    r4, r4, unk_80384be8@l
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8011687c
    lwz     r30, 0x1d4(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0x18b
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8011687c:
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80116890
    b       branch_0x80116894

branch_0x80116890:
    lwz     r30, 0x1c(r3)
branch_0x80116894:
    lbz     r0, R13Off_m0x6658(r13)
    extsb.  r0, r0
    bne-    branch_0x801168d4
    addi    r3, r13, R13Off_m0x6654
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__17TNerveYumboFreeze@ha
    addi    r0, r3, __vvt__17TNerveYumboFreeze@l
    lis     r4, __dt__17TNerveYumboFreezeFv@h
    stw     r0, R13Off_m0x6654(r13)
    lis     r3, unk_803f31f8@h
    addi    r5, r3, unk_803f31f8@l
    addi    r4, r4, __dt__17TNerveYumboFreezeFv@l
    addi    r3, r13, R13Off_m0x6654
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6658(r13)
branch_0x801168d4:
    addi    r0, r13, R13Off_m0x6654
    cmplw   r30, r0
    beq-    branch_0x80116904
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x801168f4
    b       branch_0x801168f8

branch_0x801168f4:
    lwz     r30, 0x1c(r3)
branch_0x801168f8:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    bne-    branch_0x80116914
branch_0x80116904:
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r31)
    b       branch_0x80116920

branch_0x80116914:
    lwz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r31)
branch_0x80116920:
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    mr      r3, r31
    bl      moveObject__11TSmallEnemyFv
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl receiveMessage__6TYumboFP9THitActorUl
receiveMessage__6TYumboFP9THitActorUl: # 0x80116948
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80116974
    li      r3, 0x0
    b       branch_0x80116a38

branch_0x80116974:
    cmpwi   r5, 0x2
    bge-    branch_0x80116a30
    cmpwi   r5, 0x0
    bge-    branch_0x80116988
    b       branch_0x80116a30

branch_0x80116988:
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8011699c
    b       branch_0x801169a0

branch_0x8011699c:
    lwz     r30, 0x1c(r3)
branch_0x801169a0:
    lbz     r0, R13Off_m0x6658(r13)
    extsb.  r0, r0
    bne-    branch_0x801169e4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveYumboFreeze@ha
    stw     r0, R13Off_m0x6654(r13)
    addi    r0, r3, __vvt__17TNerveYumboFreeze@l
    lis     r4, __dt__17TNerveYumboFreezeFv@h
    stw     r0, R13Off_m0x6654(r13)
    lis     r3, unk_803f31f8@h
    addi    r5, r3, unk_803f31f8@l
    addi    r4, r4, __dt__17TNerveYumboFreezeFv@l
    addi    r3, r13, R13Off_m0x6654
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6658(r13)
branch_0x801169e4:
    addi    r0, r13, R13Off_m0x6654
    cmplw   r30, r0
    beq-    branch_0x801169f8
    li      r3, 0x0
    b       branch_0x80116a38

branch_0x801169f8:
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80116a1c
    stw     r0, 0x1c(r4)
branch_0x80116a1c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    li      r3, 0x1
    b       branch_0x80116a38

branch_0x80116a30:
    mr      r3, r31
    bl      receiveMessage__11TSmallEnemyFP9THitActorUl
branch_0x80116a38:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl reset__6TYumboFv
reset__6TYumboFv: # 0x80116a50
    blr


.globl init__6TYumboFP12TLiveManager
init__6TYumboFP12TLiveManager: # 0x80116a54
    mflr    r0
    lis     r5, unk_80384868@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r24, 0x58(sp)
    mr      r30, r3
    addi    r31, r5, unk_80384868@l
    stw     r4, 0x70(r3)
    addi    r4, r30, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80116aa0
    lwz     r4, 0x70(r30)
    addi    r3, r25, 0x0
    li      r5, 0x12
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80116aa0:
    stw     r25, 0x78(r30)
    addi    r4, r31, 0x2b4
    li      r5, 0x0
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r0, 0x78(r30)
    addi    r28, r3, 0x0
    addi    r4, r31, 0x2c0
    mr      r3, r0
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r4, 0x70(r30)
    mr      r29, r3
    lwz     r3, 0x4(r3)
    li      r5, 0x3
    lwz     r4, 0x60(r4)
    lwz     r3, 0x4(r3)
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    mr      r3, r29
    bl      initDL__6MActorFv
    lwz     r3, 0x4(r29)
    bl      lock__8J3DModelFv
    stw     r28, 0x74(r30)
    lbz     r0, R13Off_m0x6678(r13)
    extsb.  r0, r0
    bne-    branch_0x80116b40
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveYumboDancing@ha
    stw     r0, R13Off_m0x6674(r13)
    addi    r0, r3, __vvt__18TNerveYumboDancing@l
    lis     r4, __dt__18TNerveYumboDancingFv@h
    stw     r0, R13Off_m0x6674(r13)
    lis     r3, unk_803f31c8@h
    addi    r5, r3, unk_803f31c8@l
    addi    r4, r4, __dt__18TNerveYumboDancingFv@l
    addi    r3, r13, R13Off_m0x6674
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6678(r13)
branch_0x80116b40:
    lwz     r5, 0x8c(r30)
    li      r4, 0x0
    lis     r3, __vvt__10TYumboSeed@ha
    stw     r4, 0x8(r5)
    addi    r28, r3, __vvt__10TYumboSeed@l
    addi    r0, r13, R13Off_m0x6674
    stw     r4, 0x20(r5)
    addi    r26, r30, 0x1d4
    addi    r25, r30, 0x194
    stw     r0, 0x14(r5)
    addi    r27, r28, 0x24
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    b       branch_0x80116be0

branch_0x80116b78:
    li      r3, 0x84
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80116bc4
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x390
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    addi    r0, r24, 0x0
    addi    r29, r3, 0x0
    mr      r3, r0
    addi    r4, r31, 0x3a0
    bl      __ct__9THitActorFPCc
    stw     r28, 0x0(r24)
    li      r0, 0x1
    stw     r27, 0x20(r24)
    stw     r30, 0x68(r24)
    stw     r29, 0x6c(r24)
    stw     r0, 0x70(r24)
branch_0x80116bc4:
    stw     r24, 0x0(r25)
    lwz     r3, 0x0(r25)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x4
branch_0x80116be0:
    cmplw   r25, r26
    bne+    branch_0x80116b78
    lfs     f2, -0x52dc(r2)
    lis     r4, 0x1000
    lfs     f1, -0x52e0(r2)
    mr      r3, r30
    fmr     f4, f2
    lfs     f3, -0x5334(r2)
    addi    r4, r4, 0x2a
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    addi    r4, r30, 0xc4
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0xc0(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r30)
    lfs     f3, 0x18(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r30)
    mr      r3, r30
    lfs     f0, -0x52d8(r2)
    stfs    f0, 0xb8(r30)
    lfs     f0, -0x52d4(r2)
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    bl      initAnmSound__10TLiveActorFv
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r2, R2Off_m0x52d0
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x1d4(r30)
    lmw     r24, 0x58(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl __ct__6TYumboFPCc
__ct__6TYumboFPCc: # 0x80116c90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, __vvt__6TYumbo@ha
    addi    r3, r3, __vvt__6TYumbo@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__10TYumboSeedFUlPQ26JDrama9TGraphics
perform__10TYumboSeedFUlPQ26JDrama9TGraphics: # 0x80116ce0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r26, 0x98(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    lwz     r0, 0x70(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x80116ed0
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80116da0
    lfs     f1, -0x52c8(r2)
    addi    r3, sp, 0x68
    lfs     f0, -0x5338(r2)
    stfs    f1, 0x68(sp)
    stfs    f0, 0x78(sp)
    stfs    f0, 0x88(sp)
    stfs    f0, 0x6c(sp)
    stfs    f1, 0x7c(sp)
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x70(sp)
    stfs    f0, 0x80(sp)
    stfs    f1, 0x90(sp)
    lfs     f0, 0x10(r29)
    stfs    f0, 0x74(sp)
    lfs     f0, 0x14(r29)
    stfs    f0, 0x84(sp)
    lfs     f0, 0x18(r29)
    stfs    f0, 0x94(sp)
    lwz     r5, 0x6c(r29)
    lwz     r4, 0x24(r29)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x28(r29)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r5)
    lwz     r4, 0x6c(r29)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x6c(r29)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80116da0:
    clrlwi. r0, r30, 31
    beq-    branch_0x80116eb4
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x7c(r29)
    lfs     f0, 0x348(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(r29)
    lfs     f1, 0x10(r29)
    lfs     f0, 0x78(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x7c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r29)
    lfs     f1, 0x18(r29)
    lfs     f0, 0x80(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r29)
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x334(r3)
    lis     r3, unk_80000001@h
    lfs     f0, 0x78(r29)
    addi    r28, r3, unk_80000001@l
    fmuls   f0, f0, f1
    stfs    f0, 0x78(r29)
    lfs     f0, 0x7c(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(r29)
    lfs     f0, 0x80(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(r29)
    lhz     r0, 0x48(r29)
    lwz     r26, 0x44(r29)
    slwi    r0, r0, 2
    add     r27, r26, r0
    b       branch_0x80116e84

branch_0x80116e54:
    lwz     r3, 0x0(r26)
    lwz     r0, 0x4c(r3)
    cmpw    r0, r28
    beq-    branch_0x80116e68
    b       branch_0x80116e80

branch_0x80116e68:
    addi    r3, r29, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r0, 0x70(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x70(r29)
branch_0x80116e80:
    addi    r26, r26, 0x4
branch_0x80116e84:
    cmplw   r26, r27
    bne+    branch_0x80116e54
    lwz     r3, 0x74(r29)
    subic.  r0, r3, 0x1
    stw     r0, 0x74(r29)
    bne-    branch_0x80116eb4
    lwz     r0, 0x70(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x70(r29)
    lwz     r0, 0x64(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
branch_0x80116eb4:
    lwz     r0, 0x70(r29)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80116ed0
    lwz     r3, 0x6c(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80116ed0:
    lmw     r26, 0x98(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl init__10TYumboSeedFv
init__10TYumboSeedFv: # 0x80116ee4
    mflr    r0
    lis     r4, unk_1000002a@h
    stw     r0, 0x4(sp)
    addi    r4, r4, unk_1000002a@l
    li      r5, 0x1
    stwu    sp, -0x68(sp)
    lis     r6, 0x8000
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    lfs     f1, -0x52c4(r2)
    lfs     f3, -0x5338(r2)
    stw     r3, 0x8(sp)
    fmr     f2, f1
    fmr     f4, f3
    lwz     r3, 0x8(sp)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_80384c14@h
    addi    r31, r3, unk_80384c14@l
    lwz     r30, 0x4(r4)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x38
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x38(sp)
    addi    r3, sp, 0x54
    addi    r4, sp, 0x34
    stw     r0, 0x34(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x54(sp)
    addi    r5, sp, 0x44
    addi    r4, r31, 0x0
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x40
    addi    r6, sp, 0x8
    lwz     r0, 0x50(sp)
    stw     r0, 0x44(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__6TYumboFv
__dt__6TYumboFv: # 0x80116fb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80117020
    lis     r3, __vvt__6TYumbo@ha
    addi    r3, r3, __vvt__6TYumbo@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80117010
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80117010:
    extsh.  r0, r31
    ble-    branch_0x80117020
    mr      r3, r30
    bl      __dl__FPv
branch_0x80117020:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TYumboManagerFv
__dt__13TYumboManagerFv: # 0x8011703c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80117094
    lis     r3, __vvt__13TYumboManager@ha
    addi    r0, r3, __vvt__13TYumboManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80117084
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80117084:
    extsh.  r0, r31
    ble-    branch_0x80117094
    mr      r3, r30
    bl      __dl__FPv
branch_0x80117094:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TYumboSeedFv
__dt__10TYumboSeedFv: # 0x801170b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80117118
    lis     r3, __vvt__10TYumboSeed@ha
    addi    r3, r3, __vvt__10TYumboSeed@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80117108
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80117108:
    extsh.  r0, r31
    ble-    branch_0x80117118
    mr      r3, r30
    bl      __dl__FPv
branch_0x80117118:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_yunbo_cpp
__sinit_yunbo_cpp: # 0x80117134
    mflr    r0
    lis     r3, unk_803f31c8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f31c8@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8011717c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8011717c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801171ac
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801171ac:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801171dc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801171dc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8011720c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8011720c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8011723c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8011723c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8011726c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8011726c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8011729c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8011729c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801172cc
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801172cc:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801172fc
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801172fc:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8011732c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8011732c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8011735c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8011735c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8011738c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8011738c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801173bc
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801173bc:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801173ec
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801173ec:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8011741c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8011741c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_80117430
unk_80117430: # 0x80117430
    addi    r3, r3, -0x20
    b       __dt__10TYumboSeedFv


.globl unk_80117438
unk_80117438: # 0x80117438
    addi    r3, r3, -0x20
    b       __dt__6TYumboFv

