
.globl __dt__23TNerveAnimalBirdLandingFv
__dt__23TNerveAnimalBirdLandingFv: # 0x8000abc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000ac08
    lis     r3, __vvt__23TNerveAnimalBirdLanding@ha
    addi    r0, r3, __vvt__23TNerveAnimalBirdLanding@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000abf8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000abf8:
    extsh.  r0, r4
    ble-    branch_0x8000ac08
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000ac08:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveAnimalBirdLandingCFP24TSpineBase_10TLiveActor_
execute__23TNerveAnimalBirdLandingCFP24TSpineBase_10TLiveActor_: # 0x8000ac20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stmw    r27, 0x7c(sp)
    mr      r29, r4
    lwz     r5, 0x0(r4)
    li      r4, 0x0
    lwz     r3, 0x74(r5)
    mr      r30, r5
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x20(r29)
    addi    r31, r3, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x8000acd4
    lfs     f0, -0x7eac(r2)
    li      r4, 0x5
    stfs    f0, 0x64(sp)
    stfs    f0, 0x68(sp)
    stfs    f0, 0x6c(sp)
    lwz     r3, 0x64(sp)
    lwz     r0, 0x68(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x6c(sp)
    stw     r0, 0xb4(r30)
    lwz     r3, 0x74(r30)
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    li      r0, 0x1
    stb     r0, 0x4(r31)
    lis     r0, 0x4330
    lha     r3, 0x8(r31)
    lfd     f1, -0x7ea0(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x74(sp)
    stw     r0, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r31)
    lfs     f1, -0x7ea8(r2)
    lfs     f0, 0xc(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xc(r31)
branch_0x8000acd4:
    lwz     r4, R13Off_m0x60b4(r13)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x14(r30)
    lwz     r12, 0x108(r12)
    fsubs   f0, f1, f0
    mtlr    r12
    fabs    f31, f0
    blrl
    lfs     f0, 0x108(r3)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8000ad10
    li      r0, 0x0
    b       branch_0x8000ad90

branch_0x8000ad10:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r28, r3, 0x11c
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r27, r3, 0x130
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r5, r3, 0xf4
    lfs     f3, 0x174(r30)
    lfs     f1, 0x0(r5)
    mr      r3, r30
    lfs     f2, 0x0(r27)
    lfs     f0, 0x0(r28)
    fmuls   f1, f3, f1
    fmuls   f2, f3, f2
    lwz     r4, R13Off_m0x60b4(r13)
    fmuls   f3, f3, f0
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
branch_0x8000ad90:
    clrlwi. r0, r0, 24
    beq-    branch_0x8000ae18
    lbz     r0, R13Off_m0x71c8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000addc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveAnimalBirdGraphWander@ha
    stw     r0, R13Off_m0x71c4(r13)
    addi    r0, r3, __vvt__27TNerveAnimalBirdGraphWander@l
    lis     r4, __dt__27TNerveAnimalBirdGraphWanderFv@ha
    stw     r0, R13Off_m0x71c4(r13)
    lis     r3, unk_803e9910@ha
    addi    r5, r3, unk_803e9910@l
    addi    r4, r4, __dt__27TNerveAnimalBirdGraphWanderFv@l
    addi    r3, r13, R13Off_m0x71c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c8(r13)
branch_0x8000addc:
    addi    r4, r13, R13Off_m0x71c4
    cmplwi  r4, 0x0
    beq-    branch_0x8000ae10
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8000ae10
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8000ae10:
    li      r3, 0x1
    b       branch_0x8000aebc

branch_0x8000ae18:
    lbz     r0, 0x5(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8000ae2c
    li      r0, 0x1
    b       branch_0x8000ae30

branch_0x8000ae2c:
    li      r0, 0x0
branch_0x8000ae30:
    cmpwi   r0, 0x0
    beq-    branch_0x8000aeb8
    lbz     r0, R13Off_m0x71e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000ae7c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveAnimalBirdWaitOnGround@ha
    stw     r0, R13Off_m0x71e4(r13)
    addi    r0, r3, __vvt__28TNerveAnimalBirdWaitOnGround@l
    lis     r4, __dt__28TNerveAnimalBirdWaitOnGroundFv@ha
    stw     r0, R13Off_m0x71e4(r13)
    lis     r3, unk_803e98e0@ha
    addi    r5, r3, unk_803e98e0@l
    addi    r4, r4, __dt__28TNerveAnimalBirdWaitOnGroundFv@l
    addi    r3, r13, R13Off_m0x71e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71e8(r13)
branch_0x8000ae7c:
    addi    r4, r13, R13Off_m0x71e4
    cmplwi  r4, 0x0
    beq-    branch_0x8000aeb0
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8000aeb0
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8000aeb0:
    li      r3, 0x1
    b       branch_0x8000aebc

branch_0x8000aeb8:
    li      r3, 0x0
branch_0x8000aebc:
    lmw     r27, 0x7c(sp)
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl __dt__28TNerveAnimalBirdWaitOnGroundFv
__dt__28TNerveAnimalBirdWaitOnGroundFv: # 0x8000aed4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000af18
    lis     r3, __vvt__28TNerveAnimalBirdWaitOnGround@ha
    addi    r0, r3, __vvt__28TNerveAnimalBirdWaitOnGround@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000af08
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000af08:
    extsh.  r0, r4
    ble-    branch_0x8000af18
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000af18:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__27TNerveAnimalBirdGraphWanderFv
__dt__27TNerveAnimalBirdGraphWanderFv: # 0x8000af30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000af74
    lis     r3, __vvt__27TNerveAnimalBirdGraphWander@ha
    addi    r0, r3, __vvt__27TNerveAnimalBirdGraphWander@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000af64
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000af64:
    extsh.  r0, r4
    ble-    branch_0x8000af74
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000af74:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__26TNerveAnimalBirdPreLandingCFP24TSpineBase_10TLiveActor_
execute__26TNerveAnimalBirdPreLandingCFP24TSpineBase_10TLiveActor_: # 0x8000af8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r4
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    lwz     r0, 0x20(r4)
    lwz     r28, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000affc
    lwz     r3, 0x74(r28)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    mr      r3, r28
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x74(r28)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x7e98(r2)
    li      r4, 0x1
    lfs     f0, 0xc(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xc(r3)
    mr      r3, r28
    bl      doLanding__11TAnimalBirdFb
branch_0x8000affc:
    lwz     r4, R13Off_m0x60b4(r13)
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x14(r28)
    lwz     r12, 0x108(r12)
    fsubs   f0, f1, f0
    mtlr    r12
    fabs    f31, f0
    blrl
    lfs     f0, 0x108(r3)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8000b038
    li      r0, 0x0
    b       branch_0x8000b0b8

branch_0x8000b038:
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x11c
    addi    r3, r28, 0x0
    lwz     r12, 0x0(r28)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r29, r3, 0x130
    addi    r3, r28, 0x0
    lwz     r12, 0x0(r28)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r5, r3, 0xf4
    lfs     f3, 0x174(r28)
    lfs     f1, 0x0(r5)
    mr      r3, r28
    lfs     f2, 0x0(r29)
    lfs     f0, 0x0(r30)
    fmuls   f1, f3, f1
    fmuls   f2, f3, f2
    lwz     r4, R13Off_m0x60b4(r13)
    fmuls   f3, f3, f0
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
branch_0x8000b0b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8000b140
    lbz     r0, R13Off_m0x71c8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000b104
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveAnimalBirdGraphWander@ha
    stw     r0, R13Off_m0x71c4(r13)
    addi    r0, r3, __vvt__27TNerveAnimalBirdGraphWander@l
    lis     r4, __dt__27TNerveAnimalBirdGraphWanderFv@ha
    stw     r0, R13Off_m0x71c4(r13)
    lis     r3, unk_803e9910@ha
    addi    r5, r3, unk_803e9910@l
    addi    r4, r4, __dt__27TNerveAnimalBirdGraphWanderFv@l
    addi    r3, r13, R13Off_m0x71c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c8(r13)
branch_0x8000b104:
    addi    r4, r13, R13Off_m0x71c4
    cmplwi  r4, 0x0
    beq-    branch_0x8000b138
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8000b138
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8000b138:
    li      r3, 0x1
    b       branch_0x8000b1d8

branch_0x8000b140:
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      doLanding__11TAnimalBirdFb
    clrlwi. r0, r3, 24
    beq-    branch_0x8000b1d4
    lbz     r0, R13Off_m0x71a8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000b198
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveAnimalBirdLanding@ha
    stw     r0, R13Off_m0x71a4(r13)
    addi    r0, r3, __vvt__23TNerveAnimalBirdLanding@l
    lis     r4, __dt__23TNerveAnimalBirdLandingFv@ha
    stw     r0, R13Off_m0x71a4(r13)
    lis     r3, unk_803e9940@ha
    addi    r5, r3, unk_803e9940@l
    addi    r4, r4, __dt__23TNerveAnimalBirdLandingFv@l
    addi    r3, r13, R13Off_m0x71a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71a8(r13)
branch_0x8000b198:
    addi    r4, r13, R13Off_m0x71a4
    cmplwi  r4, 0x0
    beq-    branch_0x8000b1cc
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8000b1cc
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8000b1cc:
    li      r3, 0x1
    b       branch_0x8000b1d8

branch_0x8000b1d4:
    li      r3, 0x0
branch_0x8000b1d8:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x78
    blr


.globl theNerve__26TNerveAnimalBirdPreLandingFv
theNerve__26TNerveAnimalBirdPreLandingFv: # 0x8000b1fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x71b0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000b24c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__26TNerveAnimalBirdPreLanding@ha
    stw     r0, R13Off_m0x71ac(r13)
    addi    r0, r3, __vvt__26TNerveAnimalBirdPreLanding@l
    lis     r4, __dt__26TNerveAnimalBirdPreLandingFv@ha
    stw     r0, R13Off_m0x71ac(r13)
    lis     r3, unk_803e9934@ha
    addi    r5, r3, unk_803e9934@l
    addi    r4, r4, __dt__26TNerveAnimalBirdPreLandingFv@l
    addi    r3, r13, R13Off_m0x71ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71b0(r13)
branch_0x8000b24c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x71ac
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__26TNerveAnimalBirdPreLandingFv
__dt__26TNerveAnimalBirdPreLandingFv: # 0x8000b260
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000b2a4
    lis     r3, __vvt__26TNerveAnimalBirdPreLanding@ha
    addi    r0, r3, __vvt__26TNerveAnimalBirdPreLanding@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000b294
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000b294:
    extsh.  r0, r4
    ble-    branch_0x8000b2a4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000b2a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveAnimalBirdComebackCFP24TSpineBase_10TLiveActor_
execute__24TNerveAnimalBirdComebackCFP24TSpineBase_10TLiveActor_: # 0x8000b2bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    stw     r29, 0x6c(sp)
    stw     r28, 0x68(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000b368
    li      r5, 0x0
    stw     r5, 0x54(sp)
    li      r4, 0x3
    lwz     r3, 0x158(r31)
    lwz     r0, 0x15c(r31)
    stw     r3, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x160(r31)
    stw     r0, 0x60(sp)
    lwz     r0, 0x54(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x60(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x54(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x60(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    lwz     r3, 0x74(r31)
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
branch_0x8000b368:
    mr      r3, r31
    bl      doFlyToCurPathNode__11TAnimalBirdFv
    lwz     r4, R13Off_m0x60b4(r13)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x14(r31)
    lwz     r12, 0x108(r12)
    fsubs   f0, f1, f0
    mtlr    r12
    fabs    f31, f0
    blrl
    lfs     f0, 0x108(r3)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8000b3ac
    li      r0, 0x0
    b       branch_0x8000b42c

branch_0x8000b3ac:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r29, r3, 0x11c
    addi    r3, r31, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r28, r3, 0x130
    addi    r3, r31, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r5, r3, 0xf4
    lfs     f3, 0x174(r31)
    lfs     f1, 0x0(r5)
    mr      r3, r31
    lfs     f2, 0x0(r28)
    lfs     f0, 0x0(r29)
    fmuls   f1, f3, f1
    fmuls   f2, f3, f2
    lwz     r4, R13Off_m0x60b4(r13)
    fmuls   f3, f3, f0
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
branch_0x8000b42c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8000b4b4
    lbz     r0, R13Off_m0x71c8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000b478
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveAnimalBirdGraphWander@ha
    stw     r0, R13Off_m0x71c4(r13)
    addi    r0, r3, __vvt__27TNerveAnimalBirdGraphWander@l
    lis     r4, __dt__27TNerveAnimalBirdGraphWanderFv@ha
    stw     r0, R13Off_m0x71c4(r13)
    lis     r3, unk_803e9910@ha
    addi    r5, r3, unk_803e9910@l
    addi    r4, r4, __dt__27TNerveAnimalBirdGraphWanderFv@l
    addi    r3, r13, R13Off_m0x71c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c8(r13)
branch_0x8000b478:
    addi    r4, r13, R13Off_m0x71c4
    cmplwi  r4, 0x0
    beq-    branch_0x8000b4ac
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000b4ac
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000b4ac:
    li      r3, 0x1
    b       branch_0x8000b554

branch_0x8000b4b4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8000b550
    lbz     r0, R13Off_m0x71b0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000b514
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__26TNerveAnimalBirdPreLanding@ha
    stw     r0, R13Off_m0x71ac(r13)
    addi    r0, r3, __vvt__26TNerveAnimalBirdPreLanding@l
    lis     r4, __dt__26TNerveAnimalBirdPreLandingFv@ha
    stw     r0, R13Off_m0x71ac(r13)
    lis     r3, unk_803e9934@ha
    addi    r5, r3, unk_803e9934@l
    addi    r4, r4, __dt__26TNerveAnimalBirdPreLandingFv@l
    addi    r3, r13, R13Off_m0x71ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71b0(r13)
branch_0x8000b514:
    addi    r4, r13, R13Off_m0x71ac
    cmplwi  r4, 0x0
    beq-    branch_0x8000b548
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000b548
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000b548:
    li      r3, 0x1
    b       branch_0x8000b554

branch_0x8000b550:
    li      r3, 0x0
branch_0x8000b554:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lwz     r31, 0x74(sp)
    mtlr    r0
    lwz     r30, 0x70(sp)
    lwz     r29, 0x6c(sp)
    lwz     r28, 0x68(sp)
    addi    sp, sp, 0x80
    blr


.globl theNerve__24TNerveAnimalBirdComebackFv
theNerve__24TNerveAnimalBirdComebackFv: # 0x8000b578
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x71b8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000b5c8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveAnimalBirdComeback@ha
    stw     r0, R13Off_m0x71b4(r13)
    addi    r0, r3, __vvt__24TNerveAnimalBirdComeback@l
    lis     r4, __dt__24TNerveAnimalBirdComebackFv@ha
    stw     r0, R13Off_m0x71b4(r13)
    lis     r3, unk_803e9928@ha
    addi    r5, r3, unk_803e9928@l
    addi    r4, r4, __dt__24TNerveAnimalBirdComebackFv@l
    addi    r3, r13, R13Off_m0x71b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71b8(r13)
branch_0x8000b5c8:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x71b4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__24TNerveAnimalBirdComebackFv
__dt__24TNerveAnimalBirdComebackFv: # 0x8000b5dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000b620
    lis     r3, __vvt__24TNerveAnimalBirdComeback@ha
    addi    r0, r3, __vvt__24TNerveAnimalBirdComeback@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000b610
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000b610:
    extsh.  r0, r4
    ble-    branch_0x8000b620
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000b620:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__28TNerveAnimalBirdChangeToCoinCFP24TSpineBase_10TLiveActor_
execute__28TNerveAnimalBirdChangeToCoinCFP24TSpineBase_10TLiveActor_: # 0x8000b638
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000b754
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    lwz     r3, 0x150(r30)
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xe000
    cmplwi  r0, 0x13
    bne-    branch_0x8000b684
    li      r0, 0x1
    b       branch_0x8000b688

branch_0x8000b684:
    li      r0, 0x0
branch_0x8000b688:
    clrlwi. r0, r0, 24
    beq-    branch_0x8000b6b8
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x10
    lwz     r12, 0x8c(r12)
    mtlr    r12
    blrl
    lis     r4, unk_803739d0@h
    lwz     r3, 0x150(r30)
    addi    r4, r4, unk_803739d0@l
    bl      appearWithDemo__6TShineFPCc
    b       branch_0x8000b754

branch_0x8000b6b8:
    addis   r0, r4, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x8000b6cc
    li      r0, 0x1
    b       branch_0x8000b6d0

branch_0x8000b6cc:
    li      r0, 0x0
branch_0x8000b6d0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8000b6f0
    lis     r4, unk_2000000e@h
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r4, unk_2000000e@l
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r31, r3
    b       branch_0x8000b6f4

branch_0x8000b6f0:
    mr      r31, r3
branch_0x8000b6f4:
    cmplwi  r31, 0x0
    beq-    branch_0x8000b754
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x10
    lwz     r12, 0x8c(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x7eac(r2)
    stfs    f1, 0xac(r31)
    lfs     f0, -0x7e88(r2)
    stfs    f0, 0xb0(r31)
    stfs    f1, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x8000b754:
    lwz     r0, 0x34(sp)
    li      r3, 0x1
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl appear__11TMapObjBaseFv
appear__11TMapObjBaseFv: # 0x8000b770
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl theNerve__28TNerveAnimalBirdChangeToCoinFv
theNerve__28TNerveAnimalBirdChangeToCoinFv: # 0x8000b79c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x71c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000b7ec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveAnimalBirdChangeToCoin@ha
    stw     r0, R13Off_m0x71bc(r13)
    addi    r0, r3, __vvt__28TNerveAnimalBirdChangeToCoin@l
    lis     r4, __dt__28TNerveAnimalBirdChangeToCoinFv@ha
    stw     r0, R13Off_m0x71bc(r13)
    lis     r3, unk_803e991c@ha
    addi    r5, r3, unk_803e991c@l
    addi    r4, r4, __dt__28TNerveAnimalBirdChangeToCoinFv@l
    addi    r3, r13, R13Off_m0x71bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c0(r13)
branch_0x8000b7ec:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x71bc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__28TNerveAnimalBirdChangeToCoinFv
__dt__28TNerveAnimalBirdChangeToCoinFv: # 0x8000b800
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000b844
    lis     r3, __vvt__28TNerveAnimalBirdChangeToCoin@ha
    addi    r0, r3, __vvt__28TNerveAnimalBirdChangeToCoin@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000b834
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000b834:
    extsh.  r0, r4
    ble-    branch_0x8000b844
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000b844:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__27TNerveAnimalBirdGraphWanderCFP24TSpineBase_10TLiveActor_
execute__27TNerveAnimalBirdGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x8000b85c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    mr      r30, r4
    stw     r29, 0x94(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000b8c4
    lfs     f0, -0x7eac(r2)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stfs    f0, 0x68(sp)
    stfs    f0, 0x6c(sp)
    stfs    f0, 0x70(sp)
    lwz     r5, 0x68(sp)
    lwz     r4, 0x6c(sp)
    stw     r5, 0xac(r31)
    stw     r4, 0xb0(r31)
    lwz     r4, 0x70(sp)
    stw     r4, 0xb4(r31)
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
branch_0x8000b8c4:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x8000b8ec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8000baa0
branch_0x8000b8ec:
    mr      r3, r31
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
    lwz     r4, 0x104(r31)
    addi    r3, r31, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x8000b90c
    addi    r4, r4, 0x10
    b       branch_0x8000b910

branch_0x8000b90c:
    addi    r4, r3, 0x4
branch_0x8000b910:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x54(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x7ea0(r2)
    stw     r0, 0x8c(sp)
    lis     r29, 0x4330
    lfs     f3, -0x7e84(r2)
    stw     r29, 0x88(sp)
    lfs     f1, -0x7e90(r2)
    lfd     f0, 0x88(sp)
    lfs     f2, -0x7e80(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x4c(sp)
    fmuls   f3, f3, f4
    fsubs   f1, f3, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x4c(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x7ea0(r2)
    stw     r0, 0x84(sp)
    lfs     f3, -0x7e84(r2)
    stw     r29, 0x80(sp)
    lfs     f1, -0x7e90(r2)
    lfd     f0, 0x80(sp)
    lfs     f2, -0x7e80(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x50(sp)
    fmuls   f3, f3, f4
    fsubs   f1, f3, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x50(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x7ea0(r2)
    stw     r0, 0x7c(sp)
    li      r4, 0x0
    lfs     f3, -0x7e84(r2)
    addi    r5, r31, 0xf4
    stw     r29, 0x78(sp)
    lfs     f1, -0x7e90(r2)
    lfd     f0, 0x78(sp)
    lfs     f2, -0x7e80(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x54(sp)
    stw     r4, 0x58(sp)
    fmuls   f3, f3, f4
    fsubs   f1, f3, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x54(sp)
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x54(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x58(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x60(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x64(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x60(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x64(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    lwz     r3, 0xf4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8000ba5c
    addi    r3, r3, 0x10
    b       branch_0x8000ba60

branch_0x8000ba5c:
    addi    r3, r5, 0x4
branch_0x8000ba60:
    lfs     f1, 0x14(r31)
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8000ba8c
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    b       branch_0x8000baa0

branch_0x8000ba8c:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
branch_0x8000baa0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x8c(r31)
    lwz     r3, 0xe0(r3)
    lwz     r0, 0x20(r4)
    cmpw    r3, r0
    bge-    branch_0x8000bb54
    lbz     r0, R13Off_m0x71b8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000bb18
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveAnimalBirdComeback@ha
    stw     r0, R13Off_m0x71b4(r13)
    addi    r0, r3, __vvt__24TNerveAnimalBirdComeback@l
    lis     r4, __dt__24TNerveAnimalBirdComebackFv@ha
    stw     r0, R13Off_m0x71b4(r13)
    lis     r3, unk_803e9928@ha
    addi    r5, r3, unk_803e9928@l
    addi    r4, r4, __dt__24TNerveAnimalBirdComebackFv@l
    addi    r3, r13, R13Off_m0x71b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71b8(r13)
branch_0x8000bb18:
    addi    r4, r13, R13Off_m0x71b4
    cmplwi  r4, 0x0
    beq-    branch_0x8000bb4c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000bb4c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000bb4c:
    li      r3, 0x1
    b       branch_0x8000bb60

branch_0x8000bb54:
    mr      r3, r31
    bl      doFlyToCurPathNode__11TAnimalBirdFv
    li      r3, 0x0
branch_0x8000bb60:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl execute__23TNerveAnimalBirdTakeoffCFP24TSpineBase_10TLiveActor_
execute__23TNerveAnimalBirdTakeoffCFP24TSpineBase_10TLiveActor_: # 0x8000bb7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000bc20
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0xf0(r31)
    li      r0, 0x0
    li      r4, 0x0
    ori     r3, r3, 0x80
    stw     r3, 0xf0(r31)
    lfs     f0, -0x7eac(r2)
    stfs    f0, 0xcc(r31)
    stw     r0, 0x17c(r31)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x7e8c(r2)
    li      r4, 0x386b
    lfs     f0, 0xc(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xc(r3)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8000bc20
    addi    r4, r31, 0x10
    li      r3, 0x386b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8000bc20:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8000bcd0
    lbz     r0, R13Off_m0x71c8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000bc78
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveAnimalBirdGraphWander@ha
    stw     r0, R13Off_m0x71c4(r13)
    addi    r0, r3, __vvt__27TNerveAnimalBirdGraphWander@l
    lis     r4, __dt__27TNerveAnimalBirdGraphWanderFv@ha
    stw     r0, R13Off_m0x71c4(r13)
    lis     r3, unk_803e9910@ha
    addi    r5, r3, unk_803e9910@l
    addi    r4, r4, __dt__27TNerveAnimalBirdGraphWanderFv@l
    addi    r3, r13, R13Off_m0x71c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c8(r13)
branch_0x8000bc78:
    addi    r4, r13, R13Off_m0x71c4
    cmplwi  r4, 0x0
    beq-    branch_0x8000bcac
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000bcac
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000bcac:
    lwz     r4, 0xf0(r31)
    li      r0, 0x0
    li      r3, 0x1
    ori     r4, r4, 0x80
    stw     r4, 0xf0(r31)
    lfs     f0, -0x7eac(r2)
    stfs    f0, 0xcc(r31)
    stw     r0, 0x17c(r31)
    b       branch_0x8000bcd4

branch_0x8000bcd0:
    li      r3, 0x0
branch_0x8000bcd4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __dt__23TNerveAnimalBirdTakeoffFv
__dt__23TNerveAnimalBirdTakeoffFv: # 0x8000bcec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000bd30
    lis     r3, __vvt__23TNerveAnimalBirdTakeoff@ha
    addi    r0, r3, __vvt__23TNerveAnimalBirdTakeoff@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000bd20
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000bd20:
    extsh.  r0, r4
    ble-    branch_0x8000bd30
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000bd30:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__28TNerveAnimalBirdWalkOnGroundCFP24TSpineBase_10TLiveActor_
execute__28TNerveAnimalBirdWalkOnGroundCFP24TSpineBase_10TLiveActor_: # 0x8000bd48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    mr      r30, r4
    stw     r29, 0xa4(sp)
    stw     r28, 0xa0(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000bda0
    lfs     f1, 0x170(r31)
    li      r4, 0x8
    lfs     f0, -0x7ea8(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x170(r31)
    lwz     r3, 0x74(r31)
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
branch_0x8000bda0:
    lwz     r0, 0x178(r31)
    li      r29, 0x0
    li      r28, 0x1
    cmpwi   r0, 0x0
    bgt-    branch_0x8000bdc8
    mr      r3, r31
    bl      isFindMario__11TAnimalBirdCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8000bdc8
    mr      r28, r29
branch_0x8000bdc8:
    clrlwi. r0, r28, 24
    beq-    branch_0x8000be08
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7ea0(r2)
    stw     r0, 0x9c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x7e84(r2)
    stw     r0, 0x98(sp)
    lfs     f0, -0x7e90(r2)
    lfd     f2, 0x98(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x8000be08
    li      r29, 0x1
branch_0x8000be08:
    clrlwi. r0, r29, 24
    beq-    branch_0x8000be90
    lbz     r0, R13Off_m0x71d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000be54
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveAnimalBirdTakeoff@ha
    stw     r0, R13Off_m0x71cc(r13)
    addi    r0, r3, __vvt__23TNerveAnimalBirdTakeoff@l
    lis     r4, __dt__23TNerveAnimalBirdTakeoffFv@ha
    stw     r0, R13Off_m0x71cc(r13)
    lis     r3, unk_803e9904@ha
    addi    r5, r3, unk_803e9904@l
    addi    r4, r4, __dt__23TNerveAnimalBirdTakeoffFv@l
    addi    r3, r13, R13Off_m0x71cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71d0(r13)
branch_0x8000be54:
    addi    r4, r13, R13Off_m0x71cc
    cmplwi  r4, 0x0
    beq-    branch_0x8000be88
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000be88
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000be88:
    li      r3, 0x1
    b       branch_0x8000c0a4

branch_0x8000be90:
    lfs     f0, -0x7e7c(r2)
    mr      r3, r31
    stfs    f0, 0xcc(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x1a8(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f3, f31, f1
    lfs     f1, 0x170(r31)
    lfs     f0, 0x34(r31)
    lfs     f2, -0x7eac(r2)
    fmadds  f1, f1, f3, f0
    lfs     f3, -0x7e78(r2)
    bl      MsWrap_f___Ffff_8000c0d8
    stfs    f1, 0x34(r31)
    addi    r3, sp, 0x84
    addi    r4, r31, 0x30
    bl      SMS_Eular2Quat__FRCQ29JGeometry8TVec3_f_
    lwz     r4, 0x84(sp)
    mr      r3, r31
    lwz     r0, 0x88(sp)
    stw     r4, 0x68(sp)
    lwz     r4, 0x8c(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x90(sp)
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1bc(r3)
    addi    r3, sp, 0x44
    lfs     f0, -0x7eac(r2)
    stfs    f0, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f1, 0x80(sp)
    bl      __ct__Q29JGeometry8TVec4_f_Fv
    lfs     f5, 0x70(sp)
    addi    r3, sp, 0x78
    lfs     f7, 0x7c(sp)
    lfs     f4, 0x78(sp)
    fneg    f11, f5
    lfs     f0, 0x68(sp)
    fmuls   f2, f5, f7
    lfs     f9, 0x6c(sp)
    lfs     f6, 0x80(sp)
    fneg    f10, f0
    lfs     f8, 0x74(sp)
    fmuls   f1, f5, f4
    fmsubs  f2, f9, f6, f2
    fmuls   f0, f9, f7
    fmadds  f1, f10, f6, f1
    fmadds  f3, f8, f4, f2
    fmsubs  f0, f10, f4, f0
    fmadds  f2, f8, f7, f1
    stfs    f3, 0x44(sp)
    fmuls   f1, f9, f4
    fnmsubs  f0, f5, f6, f0
    stfs    f2, 0x48(sp)
    fneg    f9, f9
    lfs     f2, 0x68(sp)
    fmsubs  f1, f2, f7, f1
    fmadds  f1, f8, f6, f1
    stfs    f1, 0x4c(sp)
    stfs    f0, 0x50(sp)
    lfs     f0, 0x48(sp)
    lfs     f3, 0x44(sp)
    fmuls   f2, f0, f11
    lfs     f4, 0x4c(sp)
    fmuls   f1, f0, f8
    lfs     f6, 0x50(sp)
    fmuls   f0, f0, f10
    fmadds  f2, f3, f8, f2
    fmsubs  f0, f3, f9, f0
    fmadds  f1, f3, f5, f1
    fnmsubs  f3, f4, f9, f2
    fmadds  f0, f4, f8, f0
    fmadds  f2, f4, f10, f1
    fmadds  f1, f6, f10, f3
    fmadds  f3, f6, f11, f0
    fmadds  f2, f6, f9, f2
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000c0c8
    lwz     r4, 0x78(sp)
    mr      r3, r31
    lwz     r0, 0x7c(sp)
    stw     r4, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x80(sp)
    stw     r0, 0x9c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1d0(r3)
    lwz     r0, 0x20(r30)
    cmpw    r3, r0
    bge-    branch_0x8000c0a0
    lbz     r0, R13Off_m0x71e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000c064
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveAnimalBirdWaitOnGround@ha
    stw     r0, R13Off_m0x71e4(r13)
    addi    r0, r3, __vvt__28TNerveAnimalBirdWaitOnGround@l
    lis     r4, __dt__28TNerveAnimalBirdWaitOnGroundFv@ha
    stw     r0, R13Off_m0x71e4(r13)
    lis     r3, unk_803e98e0@ha
    addi    r5, r3, unk_803e98e0@l
    addi    r4, r4, __dt__28TNerveAnimalBirdWaitOnGroundFv@l
    addi    r3, r13, R13Off_m0x71e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71e8(r13)
branch_0x8000c064:
    addi    r4, r13, R13Off_m0x71e4
    cmplwi  r4, 0x0
    beq-    branch_0x8000c098
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000c098
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000c098:
    li      r3, 0x1
    b       branch_0x8000c0a4

branch_0x8000c0a0:
    li      r3, 0x0
branch_0x8000c0a4:
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lwz     r31, 0xac(sp)
    mtlr    r0
    lwz     r30, 0xa8(sp)
    lwz     r29, 0xa4(sp)
    lwz     r28, 0xa0(sp)
    addi    sp, sp, 0xb8
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8000c0c8
set_f___Q29JGeometry8TVec3_f_Ffff_8000c0c8: # 0x8000c0c8
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl MsWrap_f___Ffff_8000c0d8
MsWrap_f___Ffff_8000c0d8: # 0x8000c0d8
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x8000c114
    fmr     f1, f2
    blr

branch_0x8000c0ec:
    b       branch_0x8000c0f4

branch_0x8000c0f0:
    fsubs   f1, f1, f0
branch_0x8000c0f4:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x8000c0f0
    b       branch_0x8000c108

branch_0x8000c104:
    fadds   f1, f1, f0
branch_0x8000c108:
    fcmpo   cr0, f1, f2
    blt+    branch_0x8000c104
    blr

branch_0x8000c114:
    fsubs   f0, f3, f2
    b       branch_0x8000c0f4

branch_0x8000c11c:
    blr


.globl theNerve__28TNerveAnimalBirdWalkOnGroundFv
theNerve__28TNerveAnimalBirdWalkOnGroundFv: # 0x8000c120
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x71d8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000c170
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveAnimalBirdWalkOnGround@ha
    stw     r0, R13Off_m0x71d4(r13)
    addi    r0, r3, __vvt__28TNerveAnimalBirdWalkOnGround@l
    lis     r4, __dt__28TNerveAnimalBirdWalkOnGroundFv@ha
    stw     r0, R13Off_m0x71d4(r13)
    lis     r3, unk_803e98f8@ha
    addi    r5, r3, unk_803e98f8@l
    addi    r4, r4, __dt__28TNerveAnimalBirdWalkOnGroundFv@l
    addi    r3, r13, R13Off_m0x71d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71d8(r13)
branch_0x8000c170:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x71d4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__28TNerveAnimalBirdWalkOnGroundFv
__dt__28TNerveAnimalBirdWalkOnGroundFv: # 0x8000c184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000c1c8
    lis     r3, __vvt__28TNerveAnimalBirdWalkOnGround@ha
    addi    r0, r3, __vvt__28TNerveAnimalBirdWalkOnGround@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000c1b8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000c1b8:
    extsh.  r0, r4
    ble-    branch_0x8000c1c8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000c1c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__30TNerveAnimalBirdActionOnGroundCFP24TSpineBase_10TLiveActor_
execute__30TNerveAnimalBirdActionOnGroundCFP24TSpineBase_10TLiveActor_: # 0x8000c1e0
    mflr    r0
    lis     r3, unk_803e98e0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r27, 0x4c(sp)
    mr      r29, r4
    addi    r31, r3, unk_803e98e0@l
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000c308
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7ea0(r2)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    lis     r3, cRandomAnims__9_unnamed_@h
    lfs     f1, -0x7e84(r2)
    stw     r0, 0x40(sp)
    lfs     f0, -0x7e74(r2)
    addi    r0, r3, cRandomAnims__9_unnamed_@l
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r3, 0x3c(sp)
    slwi    r3, r3, 2
    add     r3, r0, r3
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x8
    mr      r27, r0
    bne-    branch_0x8000c2e4
    lbz     r0, R13Off_m0x71d8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000c2a8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveAnimalBirdWalkOnGround@ha
    stw     r0, R13Off_m0x71d4(r13)
    addi    r0, r3, __vvt__28TNerveAnimalBirdWalkOnGround@l
    lis     r3, __dt__28TNerveAnimalBirdWalkOnGroundFv@ha
    stw     r0, R13Off_m0x71d4(r13)
    addi    r4, r3, __dt__28TNerveAnimalBirdWalkOnGroundFv@l
    addi    r3, r13, R13Off_m0x71d4
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71d8(r13)
branch_0x8000c2a8:
    addi    r4, r13, R13Off_m0x71d4
    cmplwi  r4, 0x0
    beq-    branch_0x8000c2dc
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8000c2dc
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8000c2dc:
    li      r3, 0x1
    b       branch_0x8000c488

branch_0x8000c2e4:
    lwz     r28, 0x74(r30)
    addi    r4, r27, 0x0
    addi    r3, r28, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8000c308
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8000c308:
    lwz     r0, 0x178(r30)
    li      r28, 0x0
    li      r27, 0x1
    cmpwi   r0, 0x0
    bgt-    branch_0x8000c330
    mr      r3, r30
    bl      isFindMario__11TAnimalBirdCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8000c330
    mr      r27, r28
branch_0x8000c330:
    clrlwi. r0, r27, 24
    beq-    branch_0x8000c370
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7ea0(r2)
    stw     r0, 0x3c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x7e84(r2)
    stw     r0, 0x38(sp)
    lfs     f0, -0x7e90(r2)
    lfd     f2, 0x38(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x8000c370
    li      r28, 0x1
branch_0x8000c370:
    clrlwi. r0, r28, 24
    beq-    branch_0x8000c3f4
    lbz     r0, R13Off_m0x71d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000c3b8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveAnimalBirdTakeoff@ha
    stw     r0, R13Off_m0x71cc(r13)
    addi    r0, r3, __vvt__23TNerveAnimalBirdTakeoff@l
    lis     r3, __dt__23TNerveAnimalBirdTakeoffFv@ha
    stw     r0, R13Off_m0x71cc(r13)
    addi    r4, r3, __dt__23TNerveAnimalBirdTakeoffFv@l
    addi    r3, r13, R13Off_m0x71cc
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71d0(r13)
branch_0x8000c3b8:
    addi    r4, r13, R13Off_m0x71cc
    cmplwi  r4, 0x0
    beq-    branch_0x8000c3ec
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8000c3ec
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8000c3ec:
    li      r3, 0x1
    b       branch_0x8000c488

branch_0x8000c3f4:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8000c484
    lbz     r0, R13Off_m0x71e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000c448
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveAnimalBirdWaitOnGround@ha
    stw     r0, R13Off_m0x71e4(r13)
    addi    r0, r3, __vvt__28TNerveAnimalBirdWaitOnGround@l
    lis     r3, __dt__28TNerveAnimalBirdWaitOnGroundFv@ha
    stw     r0, R13Off_m0x71e4(r13)
    addi    r4, r3, __dt__28TNerveAnimalBirdWaitOnGroundFv@l
    addi    r3, r13, R13Off_m0x71e4
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71e8(r13)
branch_0x8000c448:
    addi    r4, r13, R13Off_m0x71e4
    cmplwi  r4, 0x0
    beq-    branch_0x8000c47c
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8000c47c
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8000c47c:
    li      r3, 0x1
    b       branch_0x8000c488

branch_0x8000c484:
    li      r3, 0x0
branch_0x8000c488:
    lmw     r27, 0x4c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl theNerve__30TNerveAnimalBirdActionOnGroundFv
theNerve__30TNerveAnimalBirdActionOnGroundFv: # 0x8000c49c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x71e0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000c4ec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__30TNerveAnimalBirdActionOnGround@ha
    stw     r0, R13Off_m0x71dc(r13)
    addi    r0, r3, __vvt__30TNerveAnimalBirdActionOnGround@l
    lis     r4, __dt__30TNerveAnimalBirdActionOnGroundFv@ha
    stw     r0, R13Off_m0x71dc(r13)
    lis     r3, unk_803e98ec@ha
    addi    r5, r3, unk_803e98ec@l
    addi    r4, r4, __dt__30TNerveAnimalBirdActionOnGroundFv@l
    addi    r3, r13, R13Off_m0x71dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71e0(r13)
branch_0x8000c4ec:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x71dc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__30TNerveAnimalBirdActionOnGroundFv
__dt__30TNerveAnimalBirdActionOnGroundFv: # 0x8000c500
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000c544
    lis     r3, __vvt__30TNerveAnimalBirdActionOnGround@ha
    addi    r0, r3, __vvt__30TNerveAnimalBirdActionOnGround@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000c534
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000c534:
    extsh.  r0, r4
    ble-    branch_0x8000c544
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000c544:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__28TNerveAnimalBirdWaitOnGroundCFP24TSpineBase_10TLiveActor_
execute__28TNerveAnimalBirdWaitOnGroundCFP24TSpineBase_10TLiveActor_: # 0x8000c55c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r4
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    stw     r28, 0x68(sp)
    lwz     r0, 0x20(r4)
    lwz     r28, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000c5a4
    lwz     r3, 0x74(r28)
    li      r4, 0x7
    bl      setBckFromIndex__6MActorFi
    mr      r3, r28
    bl      setCurAnmSound__10TLiveActorFv
branch_0x8000c5a4:
    lwz     r0, 0x178(r28)
    li      r30, 0x0
    li      r29, 0x1
    cmpwi   r0, 0x0
    bgt-    branch_0x8000c5cc
    mr      r3, r28
    bl      isFindMario__11TAnimalBirdCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8000c5cc
    mr      r29, r30
branch_0x8000c5cc:
    clrlwi. r0, r29, 24
    beq-    branch_0x8000c60c
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7ea0(r2)
    stw     r0, 0x64(sp)
    lis     r0, 0x4330
    lfs     f1, -0x7e84(r2)
    stw     r0, 0x60(sp)
    lfs     f0, -0x7e90(r2)
    lfd     f2, 0x60(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x8000c60c
    li      r30, 0x1
branch_0x8000c60c:
    clrlwi. r0, r30, 24
    beq-    branch_0x8000c694
    lbz     r0, R13Off_m0x71d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000c658
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveAnimalBirdTakeoff@ha
    stw     r0, R13Off_m0x71cc(r13)
    addi    r0, r3, __vvt__23TNerveAnimalBirdTakeoff@l
    lis     r4, __dt__23TNerveAnimalBirdTakeoffFv@ha
    stw     r0, R13Off_m0x71cc(r13)
    lis     r3, unk_803e9904@ha
    addi    r5, r3, unk_803e9904@l
    addi    r4, r4, __dt__23TNerveAnimalBirdTakeoffFv@l
    addi    r3, r13, R13Off_m0x71cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71d0(r13)
branch_0x8000c658:
    addi    r4, r13, R13Off_m0x71cc
    cmplwi  r4, 0x0
    beq-    branch_0x8000c68c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8000c68c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8000c68c:
    li      r3, 0x1
    b       branch_0x8000c7e0

branch_0x8000c694:
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8000c7dc
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x8c(r28)
    lwz     r3, 0x144(r3)
    lwz     r0, 0x20(r4)
    subf.   r29, r3, r0
    bge-    branch_0x8000c6d8
    li      r0, 0x0
    b       branch_0x8000c754

branch_0x8000c6d8:
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1f8(r3)
    xoris   r3, r29, 0x8000
    stw     r3, 0x64(sp)
    lis     r30, 0x4330
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    lfd     f2, -0x7ea0(r2)
    stw     r30, 0x60(sp)
    stw     r30, 0x58(sp)
    lfd     f1, 0x60(sp)
    lfd     f0, 0x58(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x7ea0(r2)
    stw     r0, 0x54(sp)
    lfs     f0, -0x7e84(r2)
    stw     r30, 0x50(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fcmpo   cr0, f0, f31
    mfcr    r0
    srwi    r0, r0, 31
branch_0x8000c754:
    clrlwi. r0, r0, 24
    beq-    branch_0x8000c7dc
    lbz     r0, R13Off_m0x71e0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000c7a0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__30TNerveAnimalBirdActionOnGround@ha
    stw     r0, R13Off_m0x71dc(r13)
    addi    r0, r3, __vvt__30TNerveAnimalBirdActionOnGround@l
    lis     r4, __dt__30TNerveAnimalBirdActionOnGroundFv@ha
    stw     r0, R13Off_m0x71dc(r13)
    lis     r3, unk_803e98ec@ha
    addi    r5, r3, unk_803e98ec@l
    addi    r4, r4, __dt__30TNerveAnimalBirdActionOnGroundFv@l
    addi    r3, r13, R13Off_m0x71dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71e0(r13)
branch_0x8000c7a0:
    addi    r4, r13, R13Off_m0x71dc
    cmplwi  r4, 0x0
    beq-    branch_0x8000c7d4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8000c7d4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8000c7d4:
    li      r3, 0x1
    b       branch_0x8000c7e0

branch_0x8000c7dc:
    li      r3, 0x0
branch_0x8000c7e0:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lwz     r31, 0x74(sp)
    mtlr    r0
    lwz     r30, 0x70(sp)
    lwz     r29, 0x6c(sp)
    lwz     r28, 0x68(sp)
    addi    sp, sp, 0x80
    blr


.globl theNerve__28TNerveAnimalBirdWaitOnGroundFv
theNerve__28TNerveAnimalBirdWaitOnGroundFv: # 0x8000c804
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x71e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000c854
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveAnimalBirdWaitOnGround@ha
    stw     r0, R13Off_m0x71e4(r13)
    addi    r0, r3, __vvt__28TNerveAnimalBirdWaitOnGround@l
    lis     r4, __dt__28TNerveAnimalBirdWaitOnGroundFv@ha
    stw     r0, R13Off_m0x71e4(r13)
    lis     r3, unk_803e98e0@ha
    addi    r5, r3, unk_803e98e0@l
    addi    r4, r4, __dt__28TNerveAnimalBirdWaitOnGroundFv@l
    addi    r3, r13, R13Off_m0x71e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71e8(r13)
branch_0x8000c854:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x71e4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__18TAnimalBirdManagerFv
createModelData__18TAnimalBirdManagerFv: # 0x8000c868
    mflr    r0
    lis     r4, entry_3023@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3023@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__18TAnimalBirdManagerFv
loadAfter__18TAnimalBirdManagerFv: # 0x8000c89c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r0, 0x14(r31)
    li      r3, 0x3869
    clrlwi  r4, r0, 16
    bl      createRandPlayVec__Q214MSoundSESystem10MSRandPlayFUlUs
    lwz     r0, 0x14(r31)
    li      r3, 0x3870
    clrlwi  r4, r0, 16
    bl      createRandPlayVec__Q214MSoundSESystem10MSRandPlayFUlUs
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl load__18TAnimalBirdManagerFR20JSUMemoryInputStream
load__18TAnimalBirdManagerFR20JSUMemoryInputStream: # 0x8000c8e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x210
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8000c928
    lis     r3, unk_803739e4@h
    addi    r4, r3, unk_803739e4@l
    addi    r3, r29, 0x0
    bl      __ct__17TAnimalBirdParamsFPCc
branch_0x8000c928:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__18TAnimalBirdManagerFPCc
__ct__18TAnimalBirdManagerFPCc: # 0x8000c954
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__18TAnimalBirdManager@ha
    addi    r0, r3, __vvt__18TAnimalBirdManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__17TAnimalBirdParamsFPCc
__ct__17TAnimalBirdParamsFPCc: # 0x8000c990
    mflr    r0
    lis     r5, unk_80373808@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, unk_80373808@l
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x1f0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x1f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0xa8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x7e74(r2)
    addi    r3, r30, 0x1fc
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x1fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x208
    lfs     f0, -0x7e70(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x208
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r27, r3, __vvt__10TParamT_l_@l
    stw     r27, 0xd0(r31)
    li      r0, 0x708
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0xe0(r31)
    addi    r26, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x218
    stw     r26, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x218
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x228
    lfs     f0, -0x7e6c(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x228
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x238
    lfs     f0, -0x7e68(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x238
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x248
    lfs     f0, -0x7e64(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x248
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x258
    lfs     f0, -0x7e60(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x258
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x134(r31)
    li      r25, 0x64
    addi    r3, r30, 0x268
    stw     r25, 0x144(r31)
    stw     r26, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x268
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x148(r31)
    li      r0, 0x2d
    addi    r3, r30, 0x27c
    stw     r0, 0x158(r31)
    stw     r26, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x27c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x15c(r31)
    li      r0, 0x1e
    addi    r3, r30, 0x290
    stw     r0, 0x16c(r31)
    stw     r26, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x290
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x2a4
    lfs     f0, -0x7e5c(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x2a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x2b4
    lfs     f0, -0x7e58(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x2b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x2c4
    lfs     f0, -0x7e90(r2)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x2c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x2d4
    lfs     f0, -0x7e58(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c0(r31)
    addi    r3, r30, 0x2e0
    stw     r25, 0x1d0(r31)
    stw     r26, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x2e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x2f0
    lfs     f0, -0x7e54(r2)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x2f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1e8(r31)
    li      r0, 0x12c
    addi    r3, r30, 0x300
    stw     r0, 0x1f8(r31)
    stw     r26, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x300
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    mr      r3, r31
    lfs     f0, -0x7e50(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl doLanding__11TAnimalBirdFb
doLanding__11TAnimalBirdFb: # 0x8000cd08
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    stfd    f30, 0x148(sp)
    stw     r31, 0x144(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x140(sp)
    beq-    branch_0x8000ce14
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x174(r31)
    lfs     f0, 0xb8(r3)
    fmuls   f31, f1, f0
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f31, f31, f1
    addi    r3, sp, 0xf0
    addi    r4, r31, 0x30
    bl      SMS_Eular2Quat__FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0xf0(sp)
    lwz     r0, 0xf4(sp)
    stw     r3, 0x120(sp)
    lwz     r3, 0xf8(sp)
    stw     r0, 0x124(sp)
    lwz     r0, 0xfc(sp)
    stw     r3, 0x128(sp)
    lfs     f3, -0x7eac(r2)
    stw     r0, 0x12c(sp)
    lfs     f10, 0x128(sp)
    lfs     f1, 0x120(sp)
    fmuls   f2, f10, f3
    lfs     f7, 0x124(sp)
    fneg    f9, f1
    lfs     f8, 0x12c(sp)
    fmuls   f6, f7, f3
    fmuls   f4, f8, f3
    fmadds  f0, f9, f31, f2
    fmsubs  f2, f7, f31, f2
    fneg    f11, f10
    fadds   f5, f4, f0
    fmsubs  f1, f1, f3, f6
    fadds   f4, f4, f2
    fmuls   f0, f5, f11
    fmsubs  f2, f9, f3, f6
    fmadds  f6, f8, f31, f1
    fneg    f7, f7
    fmadds  f1, f4, f8, f0
    fmuls   f0, f5, f9
    fnmsubs  f2, f10, f31, f2
    fnmsubs  f1, f6, f7, f1
    fmsubs  f0, f4, f7, f0
    fmadds  f1, f2, f9, f1
    fmadds  f0, f6, f8, f0
    stfs    f1, 0xe4(sp)
    fmadds  f0, f2, f11, f0
    stfs    f3, 0xe8(sp)
    stfs    f0, 0xec(sp)
    lwz     r3, 0xe4(sp)
    lwz     r0, 0xe8(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xec(sp)
    stw     r0, 0xb4(r31)
branch_0x8000ce14:
    lfs     f0, -0x7eac(r2)
    li      r30, 0x0
    stfs    f0, 0x11c(sp)
    stfs    f0, 0x118(sp)
    stfs    f0, 0x114(sp)
    lwz     r3, 0x154(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8000ce44
    addi    r4, sp, 0xb4
    addi    r5, r31, 0x158
    bl      getPoint__11TWireBinderCFPQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    b       branch_0x8000ce54

branch_0x8000ce44:
    lwz     r3, R13Off_m0x6328(r13)
    addi    r4, r31, 0x10
    addi    r5, r31, 0xc4
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
branch_0x8000ce54:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8000ce84
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x180(r3)
    fneg    f0, f0
    stfs    f0, 0x118(sp)
    b       branch_0x8000ce88

branch_0x8000ce84:
    li      r30, 0x1
branch_0x8000ce88:
    lfs     f0, 0x164(r31)
    mr      r3, r31
    stfs    f0, 0x30(r31)
    lfs     f0, 0x16c(r31)
    stfs    f0, 0x38(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x194(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f30, f31, f1
    lfs     f31, 0x168(r31)
    lfs     f0, -0x7e4c(r2)
    lfs     f1, 0x34(r31)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_8000c0d8
    fsubs   f0, f31, f1
    fneg    f31, f30
    fcmpo   cr0, f0, f31
    bge-    branch_0x8000cee4
    b       branch_0x8000cef8

branch_0x8000cee4:
    fcmpo   cr0, f0, f30
    ble-    branch_0x8000cef4
    fmr     f31, f30
    b       branch_0x8000cef8

branch_0x8000cef4:
    fmr     f31, f0
branch_0x8000cef8:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x7e78(r2)
    fadds   f2, f1, f31
    b       branch_0x8000cf0c

branch_0x8000cf08:
    fsubs   f2, f2, f0
branch_0x8000cf0c:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x8000cf08
    lfs     f1, -0x7e78(r2)
    lfs     f0, -0x7eac(r2)
    b       branch_0x8000cf28

branch_0x8000cf24:
    fadds   f2, f2, f1
branch_0x8000cf28:
    fcmpo   cr0, f2, f0
    blt+    branch_0x8000cf24
    stfs    f2, 0x34(r31)
    lwz     r3, 0x114(sp)
    lwz     r0, 0x118(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x11c(sp)
    stw     r0, 0x9c(r31)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xe0(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    lfs     f2, 0xe0(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7eac(r2)
    mr      r3, r31
    stfs    f0, 0x100(sp)
    stfs    f0, 0x104(sp)
    stfs    f1, 0x108(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1e4(r3)
    addi    r3, sp, 0xc8
    lfs     f0, 0x100(sp)
    addi    r4, r31, 0x30
    fmuls   f0, f0, f1
    stfs    f0, 0x100(sp)
    lfs     f0, 0x104(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x104(sp)
    lfs     f0, 0x108(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x108(sp)
    bl      SMS_Eular2Quat__FRCQ29JGeometry8TVec3_f_
    lfs     f7, 0xd0(sp)
    clrlwi. r0, r30, 24
    lfs     f13, 0x100(sp)
    li      r3, 0x0
    lfs     f4, 0xc8(sp)
    lfs     f3, 0x104(sp)
    fmuls   f0, f7, f13
    fneg    f11, f4
    lfs     f8, 0x108(sp)
    fmuls   f2, f7, f3
    lfs     f10, 0xcc(sp)
    fmadds  f1, f11, f8, f0
    lfs     f9, 0xd4(sp)
    fmsubs  f2, f10, f8, f2
    fmuls   f0, f10, f13
    fmadds  f6, f9, f3, f1
    fmuls   f1, f10, f3
    fmsubs  f4, f4, f3, f0
    fneg    f12, f7
    fmadds  f5, f9, f13, f2
    fmsubs  f3, f11, f13, f1
    fmuls   f2, f6, f12
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
    stfs    f2, 0x100(sp)
    fmadds  f0, f3, f12, f0
    stfs    f1, 0x104(sp)
    stfs    f0, 0x108(sp)
    lwz     r4, 0x100(sp)
    lwz     r0, 0x104(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x108(sp)
    stw     r0, 0xb4(r31)
    beq-    branch_0x8000d0ac
    fabs    f1, f31
    lfs     f0, -0x7e48(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8000d0ac
    li      r3, 0x1
branch_0x8000d0ac:
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lfd     f30, 0x148(sp)
    mtlr    r0
    lwz     r31, 0x144(sp)
    lwz     r30, 0x140(sp)
    addi    sp, sp, 0x158
    blr


.globl doFlyToCurPathNode__11TAnimalBirdFv
doFlyToCurPathNode__11TAnimalBirdFv: # 0x8000d0cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stfd    f31, 0xf8(sp)
    stfd    f30, 0xf0(sp)
    stfd    f29, 0xe8(sp)
    stw     r31, 0xe4(sp)
    mr      r31, r3
    stw     r30, 0xe0(sp)
    lwz     r4, 0xf4(r3)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x8000d108
    addi    r4, r4, 0x10
    b       branch_0x8000d10c

branch_0x8000d108:
    addi    r4, r3, 0x4
branch_0x8000d10c:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xbc(sp)
    lfs     f1, 0xb4(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb4(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb8(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0xb4(sp)
    lfs     f3, 0xbc(sp)
    lfs     f0, 0xb8(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x7eac(r2)
    fadds   f1, f2, f1
    fadds   f30, f3, f1
    fcmpo   cr0, f30, f0
    cror    2, 0, 2
    bne-    branch_0x8000d188
    b       branch_0x8000d1ac

branch_0x8000d188:
    frsqrte f3, f30
    lfs     f2, -0x7e90(r2)
    lfs     f0, -0x7e8c(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f30, f1, f0
    fmuls   f0, f2, f0
    fmuls   f30, f30, f0
branch_0x8000d1ac:
    lfs     f0, -0x7e94(r2)
    fcmpo   cr0, f30, f0
    blt-    branch_0x8000d428
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x174(r31)
    lfs     f0, 0xb8(r3)
    fmuls   f31, f1, f0
    bl      SMSGetAnmFrameRate__Fv
    lwz     r12, 0x0(r31)
    fmuls   f29, f31, f1
    mr      r3, r31
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0xcc(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f31, f31, f1
    mr      r3, r31
    fmr     f1, f29
    fmr     f2, f31
    bl      calcMinimumTurnRadius__11TSpineEnemyCFff
    lfs     f0, -0x7e58(r2)
    fmuls   f0, f0, f1
    fcmpo   cr0, f30, f0
    cror    2, 0, 2
    bne-    branch_0x8000d23c
    lfs     f0, -0x7e90(r2)
    fmr     f1, f29
    mr      r3, r31
    fmuls   f2, f0, f30
    bl      calcTurnSpeedToReach__11TSpineEnemyCFff
    fmr     f31, f1
branch_0x8000d23c:
    fmr     f1, f29
    addi    r3, r31, 0x30
    fmr     f2, f31
    addi    r4, sp, 0xb4
    bl      getRotationFlyToDir__11TAnimalBaseFPQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ff
    addi    r3, sp, 0x88
    addi    r4, r31, 0x30
    bl      SMS_Eular2Quat__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x88(sp)
    mr      r3, r31
    lfs     f0, -0x7eac(r2)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x8c(sp)
    lwz     r4, 0x90(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0x94(sp)
    stw     r4, 0xac(sp)
    stw     r0, 0xb0(sp)
    stfs    f0, 0x98(sp)
    stfs    f0, 0x9c(sp)
    stfs    f29, 0xa0(sp)
    lfs     f7, 0xac(sp)
    lfs     f13, 0x98(sp)
    lfs     f2, 0xa4(sp)
    fneg    f12, f7
    lfs     f5, 0x9c(sp)
    fmuls   f1, f7, f13
    lfs     f10, 0xa8(sp)
    fneg    f11, f2
    lfs     f8, 0xa0(sp)
    fmuls   f3, f7, f5
    fmuls   f0, f10, f13
    lfs     f9, 0xb0(sp)
    fmadds  f1, f11, f8, f1
    fmsubs  f4, f2, f5, f0
    fmsubs  f3, f10, f8, f3
    fmadds  f6, f9, f5, f1
    fmuls   f1, f10, f5
    fmadds  f5, f9, f13, f3
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
    stfs    f2, 0x98(sp)
    fmadds  f0, f3, f12, f0
    stfs    f1, 0x9c(sp)
    stfs    f0, 0xa0(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x158(r3)
    lis     r30, 0x4330
    lwz     r4, 0x178(r31)
    addi    r3, r31, 0x0
    xoris   r0, r0, 0x8000
    xoris   r4, r4, 0x8000
    stw     r0, 0xd4(sp)
    lfd     f3, -0x7ea0(r2)
    stw     r4, 0xdc(sp)
    lfs     f4, -0x7e5c(r2)
    stw     r30, 0xd8(sp)
    lfs     f0, 0x98(sp)
    stw     r30, 0xd0(sp)
    lfd     f2, 0xd8(sp)
    lfd     f1, 0xd0(sp)
    fsubs   f2, f2, f3
    fsubs   f1, f1, f3
    fdivs   f1, f2, f1
    fsubs   f1, f4, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x98(sp)
    lfs     f0, 0x9c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x158(r3)
    mr      r3, r31
    lwz     r4, 0x178(r31)
    xoris   r0, r0, 0x8000
    lwz     r12, 0x0(r31)
    xoris   r4, r4, 0x8000
    stw     r0, 0xc4(sp)
    lwz     r12, 0x108(r12)
    stw     r4, 0xcc(sp)
    lfd     f2, -0x7ea0(r2)
    mtlr    r12
    stw     r30, 0xc8(sp)
    stw     r30, 0xc0(sp)
    lfd     f1, 0xc8(sp)
    lfd     f0, 0xc0(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f30, f1, f0
    blrl
    lfs     f0, 0x20c(r3)
    lfs     f1, 0x9c(sp)
    fmuls   f0, f0, f30
    fsubs   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lwz     r3, 0x98(sp)
    lwz     r0, 0x9c(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0xa0(sp)
    stw     r0, 0x9c(r31)
branch_0x8000d428:
    lwz     r0, 0x104(sp)
    lfd     f31, 0xf8(sp)
    lfd     f30, 0xf0(sp)
    mtlr    r0
    lfd     f29, 0xe8(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    addi    sp, sp, 0x100
    blr


.globl getLatestNerve__24TSpineBase_10TLiveActor_CFv
getLatestNerve__24TSpineBase_10TLiveActor_CFv: # 0x8000d44c
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8000d460
    mr      r3, r0
    blr

branch_0x8000d460:
    lwz     r3, 0x1c(r3)
    blr


.globl isFindMario__11TAnimalBirdCFv
isFindMario__11TAnimalBirdCFv: # 0x8000d468
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    mr      r29, r3
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r12, 0x0(r29)
    lfs     f0, 0x14(r29)
    lfs     f1, 0x4(r4)
    lwz     r12, 0x108(r12)
    fsubs   f0, f1, f0
    mtlr    r12
    fabs    f31, f0
    blrl
    lfs     f0, 0x108(r3)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8000d4c0
    li      r3, 0x0
    b       branch_0x8000d540

branch_0x8000d4c0:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x11c
    addi    r3, r29, 0x0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x130
    addi    r3, r29, 0x0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r5, r3, 0xf4
    lfs     f3, 0x174(r29)
    lfs     f1, 0x0(r5)
    mr      r3, r29
    lfs     f2, 0x0(r30)
    lfs     f0, 0x0(r31)
    fmuls   f1, f3, f1
    fmuls   f2, f3, f2
    lwz     r4, R13Off_m0x60b4(r13)
    fmuls   f3, f3, f0
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24
branch_0x8000d540:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl __ct__24TNerveBase_10TLiveActor_Fv
__ct__24TNerveBase_10TLiveActor_Fv: # 0x8000d560
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r3)
    blr


.globl getBasNameTable__11TAnimalBirdCFv
getBasNameTable__11TAnimalBirdCFv: # 0x8000d570
    lis     r3, bird_bastable@ha
    addi    r3, r3, bird_bastable@l
    blr


.globl bind__11TAnimalBirdFv
bind__11TAnimalBirdFv: # 0x8000d57c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    mr      r25, r3
    li      r29, 0x0
    lwz     r0, 0x154(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8000d638
    li      r28, 0x1
    lwz     r30, 0x8c(r25)
    addi    r27, r28, 0x0
    addi    r26, r28, 0x0
    bl      theNerve__28TNerveAnimalBirdWaitOnGroundFv
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r31
    beq-    branch_0x8000d5e4
    bl      theNerve__30TNerveAnimalBirdActionOnGroundFv
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r31
    beq-    branch_0x8000d5e4
    mr      r26, r29
branch_0x8000d5e4:
    clrlwi. r0, r26, 24
    bne-    branch_0x8000d608
    bl      theNerve__28TNerveAnimalBirdWalkOnGroundFv
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r31
    beq-    branch_0x8000d608
    li      r27, 0x0
branch_0x8000d608:
    clrlwi. r0, r27, 24
    bne-    branch_0x8000d62c
    bl      theNerve__26TNerveAnimalBirdPreLandingFv
    mr      r31, r3
    lwz     r3, 0x8c(r25)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r31
    beq-    branch_0x8000d62c
    li      r28, 0x0
branch_0x8000d62c:
    clrlwi. r0, r28, 24
    beq-    branch_0x8000d638
    li      r29, 0x1
branch_0x8000d638:
    clrlwi. r0, r29, 24
    bne-    branch_0x8000d64c
    mr      r3, r25
    bl      bind__10TLiveActorFv
    b       branch_0x8000d664

branch_0x8000d64c:
    lwz     r3, 0x154(r25)
    mr      r4, r25
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8000d664:
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl moveObject__11TAnimalBirdFv
moveObject__11TAnimalBirdFv: # 0x8000d678
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r26, 0x60(sp)
    mr      r31, r3
    lwz     r0, 0x178(r3)
    lis     r3, unk_803e98e0@ha
    addi    r30, r3, unk_803e98e0@l
    cmpwi   r0, 0x0
    ble-    branch_0x8000d6ac
    lwz     r3, 0x178(r31)
    addi    r0, r3, -0x1
    stw     r0, 0x178(r31)
branch_0x8000d6ac:
    lwz     r29, 0x8c(r31)
    lwz     r26, 0x14(r29)
    cmplwi  r26, 0x0
    beq-    branch_0x8000d6c0
    b       branch_0x8000d6c4

branch_0x8000d6c0:
    lwz     r26, 0x1c(r29)
branch_0x8000d6c4:
    lbz     r0, R13Off_m0x71e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000d700
    addi    r3, r13, R13Off_m0x71e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveAnimalBirdWaitOnGround@ha
    addi    r0, r3, __vvt__28TNerveAnimalBirdWaitOnGround@l
    lis     r3, __dt__28TNerveAnimalBirdWaitOnGroundFv@ha
    stw     r0, R13Off_m0x71e4(r13)
    addi    r4, r3, __dt__28TNerveAnimalBirdWaitOnGroundFv@l
    addi    r3, r13, R13Off_m0x71e4
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71e8(r13)
branch_0x8000d700:
    addi    r0, r13, R13Off_m0x71e4
    cmplw   r26, r0
    li      r27, 0x1
    addi    r26, r27, 0x0
    beq-    branch_0x8000d730
    bl      theNerve__30TNerveAnimalBirdActionOnGroundFv
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r28
    beq-    branch_0x8000d730
    li      r26, 0x0
branch_0x8000d730:
    clrlwi. r0, r26, 24
    bne-    branch_0x8000d754
    bl      theNerve__28TNerveAnimalBirdWalkOnGroundFv
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r28
    beq-    branch_0x8000d754
    li      r27, 0x0
branch_0x8000d754:
    clrlwi. r0, r27, 24
    beq-    branch_0x8000d80c
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8000d804
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x17c(r31)
    lwz     r3, 0x16c(r3)
    addi    r0, r4, 0x1
    cmpw    r3, r0
    stw     r0, 0x17c(r31)
    bge-    branch_0x8000d80c
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x71d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000d7dc
    addi    r3, r13, R13Off_m0x71cc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__23TNerveAnimalBirdTakeoff@ha
    addi    r0, r3, __vvt__23TNerveAnimalBirdTakeoff@l
    lis     r3, __dt__23TNerveAnimalBirdTakeoffFv@ha
    stw     r0, R13Off_m0x71cc(r13)
    addi    r4, r3, __dt__23TNerveAnimalBirdTakeoffFv@l
    addi    r3, r13, R13Off_m0x71cc
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71d0(r13)
branch_0x8000d7dc:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x71cc
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8000d7f4
    stw     r0, 0x1c(r4)
branch_0x8000d7f4:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x8000d80c

branch_0x8000d804:
    li      r0, 0x0
    stw     r0, 0x17c(r31)
branch_0x8000d80c:
    bl      theNerve__28TNerveAnimalBirdChangeToCoinFv
    mr      r29, r3
    lwz     r3, 0x8c(r31)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    subf    r0, r3, r29
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x8000d8a4
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8000d8a4
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x71c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000d880
    addi    r3, r13, R13Off_m0x71bc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveAnimalBirdChangeToCoin@ha
    addi    r0, r3, __vvt__28TNerveAnimalBirdChangeToCoin@l
    lis     r3, __dt__28TNerveAnimalBirdChangeToCoinFv@ha
    stw     r0, R13Off_m0x71bc(r13)
    addi    r4, r3, __dt__28TNerveAnimalBirdChangeToCoinFv@l
    addi    r3, r13, R13Off_m0x71bc
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c0(r13)
branch_0x8000d880:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x71bc
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8000d898
    stw     r0, 0x1c(r4)
branch_0x8000d898:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8000d8a4:
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8000d8b8
    b       branch_0x8000d8bc

branch_0x8000d8b8:
    lwz     r28, 0x1c(r3)
branch_0x8000d8bc:
    lbz     r0, R13Off_m0x71c8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000d8f8
    addi    r3, r13, R13Off_m0x71c4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__27TNerveAnimalBirdGraphWander@ha
    addi    r0, r3, __vvt__27TNerveAnimalBirdGraphWander@l
    lis     r3, __dt__27TNerveAnimalBirdGraphWanderFv@ha
    stw     r0, R13Off_m0x71c4(r13)
    addi    r4, r3, __dt__27TNerveAnimalBirdGraphWanderFv@l
    addi    r3, r13, R13Off_m0x71c4
    addi    r5, r30, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c8(r13)
branch_0x8000d8f8:
    addi    r0, r13, R13Off_m0x71c4
    cmplw   r28, r0
    li      r26, 0x1
    beq-    branch_0x8000d918
    bl      theNerve__24TNerveAnimalBirdComebackFv
    cmplw   r28, r3
    beq-    branch_0x8000d918
    li      r26, 0x0
branch_0x8000d918:
    clrlwi. r0, r26, 24
    beq-    branch_0x8000d944
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3869
    lha     r28, 0x7c(r31)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8000d944
    li      r3, 0x3869
    addi    r4, r28, 0x0
    bl      startSeRandPlay__Q214MSoundSESystem10MSRandPlayFUlUl
branch_0x8000d944:
    lwz     r29, 0x8c(r31)
    lwz     r26, 0x14(r29)
    cmplwi  r26, 0x0
    beq-    branch_0x8000d958
    b       branch_0x8000d95c

branch_0x8000d958:
    lwz     r26, 0x1c(r29)
branch_0x8000d95c:
    lbz     r0, R13Off_m0x71e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000d998
    addi    r3, r13, R13Off_m0x71e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveAnimalBirdWaitOnGround@ha
    addi    r0, r3, __vvt__28TNerveAnimalBirdWaitOnGround@l
    lis     r3, __dt__28TNerveAnimalBirdWaitOnGroundFv@ha
    stw     r0, R13Off_m0x71e4(r13)
    addi    r4, r3, __dt__28TNerveAnimalBirdWaitOnGroundFv@l
    addi    r3, r13, R13Off_m0x71e4
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71e8(r13)
branch_0x8000d998:
    addi    r0, r13, R13Off_m0x71e4
    cmplw   r26, r0
    li      r26, 0x1
    addi    r27, r26, 0x0
    beq-    branch_0x8000d9c8
    bl      theNerve__30TNerveAnimalBirdActionOnGroundFv
    addi    r30, r3, 0x0
    addi    r3, r29, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r30
    beq-    branch_0x8000d9c8
    li      r27, 0x0
branch_0x8000d9c8:
    clrlwi. r0, r27, 24
    bne-    branch_0x8000d9ec
    bl      theNerve__28TNerveAnimalBirdWalkOnGroundFv
    addi    r30, r3, 0x0
    addi    r3, r29, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r30
    beq-    branch_0x8000d9ec
    li      r26, 0x0
branch_0x8000d9ec:
    clrlwi. r0, r26, 24
    beq-    branch_0x8000da18
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3870
    lha     r28, 0x7c(r31)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8000da18
    li      r3, 0x3870
    addi    r4, r28, 0x0
    bl      startSeRandPlay__Q214MSoundSESystem10MSRandPlayFUlUl
branch_0x8000da18:
    mr      r3, r31
    bl      moveObject__10TLiveActorFv
    lmw     r26, 0x60(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl calcRootMatrix__11TAnimalBirdFv
calcRootMatrix__11TAnimalBirdFv: # 0x8000da34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x68(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8000da88
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    b       branch_0x8000da90

branch_0x8000da88:
    mr      r3, r30
    bl      calcRootMatrix__11TSpineEnemyFv
branch_0x8000da90:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f1, 0x3c(r3)
    lfs     f0, -0x7e44(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl receiveMessage__11TAnimalBirdFP9THitActorUl
receiveMessage__11TAnimalBirdFP9THitActorUl: # 0x8000dac0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0xf0(r3)
    lis     r3, unk_803e98e0@ha
    addi    r30, r3, unk_803e98e0@l
    clrlwi. r0, r0, 31
    beq-    branch_0x8000dafc
    li      r3, 0x0
    b       branch_0x8000de48

branch_0x8000dafc:
    cmplwi  r5, 0xf
    bne-    branch_0x8000db9c
    lfs     f0, -0x7e5c(r2)
    addi    r6, sp, 0x58
    addi    r4, r29, 0x10
    stfs    f0, 0x58(sp)
    li      r3, 0xe7
    li      r5, 0x0
    stfs    f0, 0x5c(sp)
    stfs    f0, 0x60(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r29, 0x10
    lfs     f1, -0x7eac(r2)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r0, 0x178(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8000db94
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x158(r3)
    stw     r0, 0x178(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8000db94
    lbz     r3, 0x13c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8000db94
    addi    r0, r3, -0x1
    stb     r0, 0x13c(r31)
branch_0x8000db94:
    li      r3, 0x1
    b       branch_0x8000de48

branch_0x8000db9c:
    cmplwi  r5, 0x4
    bne-    branch_0x8000dbec
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8000dbec
    lwz     r0, 0x64(r31)
    addi    r6, sp, 0x4c
    addi    r4, r29, 0x10
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    li      r3, 0xe7
    li      r5, 0x0
    stw     r29, 0x68(r31)
    lfs     f0, -0x7e5c(r2)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    stfs    f0, 0x54(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    li      r3, 0x1
    b       branch_0x8000de48

branch_0x8000dbec:
    addi    r0, r5, -0x6
    cmplwi  r0, 0x1
    bgt-    branch_0x8000dc20
    lwz     r0, 0x68(r31)
    cmplw   r0, r29
    bne-    branch_0x8000dc20
    li      r0, 0x0
    stw     r0, 0x68(r31)
    li      r3, 0x1
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    b       branch_0x8000de48

branch_0x8000dc20:
    cmplwi  r5, 0xb
    bne-    branch_0x8000dd1c
    li      r0, 0x0
    stw     r0, 0x68(r31)
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8000dc44
    b       branch_0x8000dc48

branch_0x8000dc44:
    lwz     r29, 0x1c(r3)
branch_0x8000dc48:
    lbz     r0, R13Off_m0x71c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000dc84
    addi    r3, r13, R13Off_m0x71bc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveAnimalBirdChangeToCoin@ha
    addi    r0, r3, __vvt__28TNerveAnimalBirdChangeToCoin@l
    lis     r3, __dt__28TNerveAnimalBirdChangeToCoinFv@ha
    stw     r0, R13Off_m0x71bc(r13)
    addi    r4, r3, __dt__28TNerveAnimalBirdChangeToCoinFv@l
    addi    r3, r13, R13Off_m0x71bc
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c0(r13)
branch_0x8000dc84:
    addi    r3, r13, R13Off_m0x71bc
    cmplw   r29, r3
    beq-    branch_0x8000dd00
    lwz     r4, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, R13Off_m0x71c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000dcd8
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__28TNerveAnimalBirdChangeToCoin@ha
    stw     r0, R13Off_m0x71bc(r13)
    addi    r0, r4, __vvt__28TNerveAnimalBirdChangeToCoin@l
    lis     r4, __dt__28TNerveAnimalBirdChangeToCoinFv@ha
    stw     r0, R13Off_m0x71bc(r13)
    addi    r4, r4, __dt__28TNerveAnimalBirdChangeToCoinFv@l
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c0(r13)
branch_0x8000dcd8:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x71bc
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8000dcf0
    stw     r0, 0x1c(r4)
branch_0x8000dcf0:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x8000dd14

branch_0x8000dd00:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8000dd14:
    li      r3, 0x1
    b       branch_0x8000de48

branch_0x8000dd1c:
    cmplwi  r5, 0x0
    bne-    branch_0x8000de3c
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0xd
    bne-    branch_0x8000dd3c
    li      r0, 0x1
    b       branch_0x8000dd40

branch_0x8000dd3c:
    li      r0, 0x0
branch_0x8000dd40:
    clrlwi. r0, r0, 24
    beq-    branch_0x8000de3c
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8000dd5c
    b       branch_0x8000dd60

branch_0x8000dd5c:
    lwz     r29, 0x1c(r3)
branch_0x8000dd60:
    lbz     r0, R13Off_m0x71c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000dd9c
    addi    r3, r13, R13Off_m0x71bc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveAnimalBirdChangeToCoin@ha
    addi    r0, r3, __vvt__28TNerveAnimalBirdChangeToCoin@l
    lis     r3, __dt__28TNerveAnimalBirdChangeToCoinFv@ha
    stw     r0, R13Off_m0x71bc(r13)
    addi    r4, r3, __dt__28TNerveAnimalBirdChangeToCoinFv@l
    addi    r3, r13, R13Off_m0x71bc
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c0(r13)
branch_0x8000dd9c:
    addi    r3, r13, R13Off_m0x71bc
    cmplw   r29, r3
    beq-    branch_0x8000de18
    lwz     r4, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, R13Off_m0x71c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000ddf0
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__28TNerveAnimalBirdChangeToCoin@ha
    stw     r0, R13Off_m0x71bc(r13)
    addi    r0, r4, __vvt__28TNerveAnimalBirdChangeToCoin@l
    lis     r4, __dt__28TNerveAnimalBirdChangeToCoinFv@ha
    stw     r0, R13Off_m0x71bc(r13)
    addi    r4, r4, __dt__28TNerveAnimalBirdChangeToCoinFv@l
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71c0(r13)
branch_0x8000ddf0:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x71bc
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8000de08
    stw     r0, 0x1c(r4)
branch_0x8000de08:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x8000de34

branch_0x8000de18:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r31, 0x0
    li      r5, 0xf
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8000de34:
    li      r3, 0x1
    b       branch_0x8000de48

branch_0x8000de3c:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      receiveMessage__11TSpineEnemyFP9THitActorUl
branch_0x8000de48:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl loadAfter__11TAnimalBirdFv
loadAfter__11TAnimalBirdFv: # 0x8000de64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r3, 0x3869
    addi    r4, r31, 0x10
    bl      registerTrans__Q214MSoundSESystem10MSRandPlayFUlPC3Vec
    li      r3, 0x3870
    addi    r4, r31, 0x10
    bl      registerTrans__Q214MSoundSESystem10MSRandPlayFUlPC3Vec
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl load__11TAnimalBirdFR20JSUMemoryInputStream
load__11TAnimalBirdFR20JSUMemoryInputStream: # 0x8000dea8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r4, 0x0
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, sp, 0x34
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x34(sp)
    cmpwi   r3, 0x0
    blt-    branch_0x8000def8
    addi    r4, r2, R2Off_m0x7e40
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x150(r31)
    b       branch_0x8000df08

branch_0x8000def8:
    li      r3, 0x64
    addi    r4, r2, R2Off_m0x7e38
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x150(r31)
branch_0x8000df08:
    lwz     r4, 0x150(r31)
    lis     r3, unk_20000010@h
    addi    r0, r3, unk_20000010@l
    lwz     r4, 0x4c(r4)
    cmpw    r4, r0
    beq-    branch_0x8000df64
    bge-    branch_0x8000df34
    addi    r0, r3, 0xf
    cmpw    r4, r0
    bge-    branch_0x8000df58
    b       branch_0x8000df40

branch_0x8000df34:
    addi    r0, r3, 0x13
    cmpw    r4, r0
    beq-    branch_0x8000df4c
branch_0x8000df40:
    li      r0, 0x1
    stw     r0, 0x180(r31)
    b       branch_0x8000df98

branch_0x8000df4c:
    li      r0, 0x2
    stw     r0, 0x180(r31)
    b       branch_0x8000df98

branch_0x8000df58:
    li      r0, 0x3
    stw     r0, 0x180(r31)
    b       branch_0x8000df98

branch_0x8000df64:
    li      r0, 0x0
    stw     r0, 0x180(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r0, 0x34(sp)
    lbz     r4, 0x7c(r3)
    lwz     r3, R13Off_m0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x8000df98
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
branch_0x8000df98:
    lwz     r4, 0x180(r31)
    lis     r3, cColorTable__9_unnamed_@h
    addi    r0, r3, cColorTable__9_unnamed_@l
    slwi    r3, r4, 3
    add     r29, r0, r3
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    lwz     r4, R2Off_m0x7eb0(r2)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    addi    r6, r29, 0x0
    clrlwi  r4, r30, 16
    li      r5, 0x2
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl initParams__11TAnimalBirdFv
initParams__11TAnimalBirdFv: # 0x8000dffc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x158(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x15c(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x160(r31)
    lfs     f1, 0x15c(r31)
    lfs     f0, -0x7e60(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x15c(r31)
    lfs     f0, 0x30(r31)
    stfs    f0, 0x164(r31)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x168(r31)
    lfs     f0, 0x38(r31)
    stfs    f0, 0x16c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8000e088
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8000e08c

branch_0x8000e088:
    li      r0, 0x1
branch_0x8000e08c:
    stb     r0, 0x13c(r31)
    li      r0, 0x0
    stw     r0, 0x178(r31)
    stw     r0, 0x17c(r31)
    lfs     f0, -0x7e5c(r2)
    stfs    f0, 0x170(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x7ea0(r2)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    lfs     f3, -0x7e84(r2)
    addi    r3, r31, 0x10
    stw     r0, 0x18(sp)
    lfs     f1, -0x7e90(r2)
    lfd     f0, 0x18(sp)
    lfs     f2, -0x7e70(r2)
    fsubs   f4, f0, f4
    lfs     f0, -0x7e5c(r2)
    fmuls   f3, f3, f4
    fsubs   f1, f3, f1
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x174(r31)
    bl      isOnWire__11TWireBinderFRCQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x8000e134
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8000e124
    mr      r3, r30
    bl      __ct__7TBinderFv
    lis     r3, __vvt__11TWireBinder@ha
    addi    r0, r3, __vvt__11TWireBinder@l
    stw     r0, 0x0(r30)
branch_0x8000e124:
    stw     r30, 0x154(r31)
    addi    r4, r31, 0x10
    lwz     r3, 0x154(r31)
    bl      init__11TWireBinderFRCQ29JGeometry8TVec3_f_
branch_0x8000e134:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl init__11TAnimalBirdFP12TLiveManager
init__11TAnimalBirdFP12TLiveManager: # 0x8000e14c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    stw     r4, 0x70(r3)
    mr      r4, r31
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8000e194
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8000e194:
    stw     r30, 0x78(r31)
    lis     r3, unk_803739a8@h
    addi    r4, r3, unk_803739a8@l
    lwz     r3, 0x78(r31)
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lbz     r0, R13Off_m0x71e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e1f4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveAnimalBirdWaitOnGround@ha
    stw     r0, R13Off_m0x71e4(r13)
    addi    r0, r3, __vvt__28TNerveAnimalBirdWaitOnGround@l
    lis     r4, __dt__28TNerveAnimalBirdWaitOnGroundFv@ha
    stw     r0, R13Off_m0x71e4(r13)
    lis     r3, unk_803e98e0@ha
    addi    r5, r3, unk_803e98e0@l
    addi    r4, r4, __dt__28TNerveAnimalBirdWaitOnGroundFv@l
    addi    r3, r13, R13Off_m0x71e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71e8(r13)
branch_0x8000e1f4:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    addi    r0, r13, R13Off_m0x71e4
    stw     r4, 0x8(r5)
    mr      r3, r31
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    bl      initParams__11TAnimalBirdFv
    lfs     f1, -0x7e34(r2)
    lis     r4, 0x1000
    lfs     f3, -0x7e30(r2)
    mr      r3, r31
    fmr     f2, f1
    lfs     f4, -0x7e2c(r2)
    addi    r4, r4, 0x32
    li      r5, 0x0
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x2
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lfs     f0, -0x7e44(r2)
    stfs    f0, 0xb8(r31)
    bl      initAnmSound__10TLiveActorFv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__11TAnimalBirdFPCc
__ct__11TAnimalBirdFPCc: # 0x8000e284
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__11TAnimalBird@ha
    addi    r3, r3, __vvt__11TAnimalBird@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x150(r31)
    stw     r0, 0x154(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18TAnimalBirdManagerFv
__dt__18TAnimalBirdManagerFv: # 0x8000e2d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8000e31c
    lis     r3, __vvt__18TAnimalBirdManager@ha
    addi    r0, r3, __vvt__18TAnimalBirdManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8000e31c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8000e31c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TAnimalBirdFv
__dt__11TAnimalBirdFv: # 0x8000e338
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8000e388
    lis     r3, __vvt__11TAnimalBird@ha
    addi    r3, r3, __vvt__11TAnimalBird@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8000e388
    mr      r3, r30
    bl      __dl__FPv
branch_0x8000e388:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_: # 0x8000e3a4
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x0
    addi    r7, r5, 0x0
    stwu    sp, -0x20(sp)
    addi    r4, r8, 0x0
    mr      r5, r0
    stw     r31, 0x1c(sp)
    addi    r31, r6, 0x0
    li      r6, 0x0
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8000e410
    lfs     f0, 0x0(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x17c(r3)
branch_0x8000e410:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __sinit_Bird_cpp
__sinit_Bird_cpp: # 0x8000e424
    mflr    r0
    lis     r3, unk_803e98e0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803e98e0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e46c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8000e46c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e49c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8000e49c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e4cc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8000e4cc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e4fc
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8000e4fc:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e52c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8000e52c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e55c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8000e55c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e58c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8000e58c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e5bc
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8000e5bc:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e5ec
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8000e5ec:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e61c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8000e61c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e64c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8000e64c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e67c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8000e67c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e6ac
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8000e6ac:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e6dc
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8000e6dc:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e70c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8000e70c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8000e720
unk_8000e720: # 0x8000e720
    addi    r3, r3, -0x20
    b       __dt__11TAnimalBirdFv

