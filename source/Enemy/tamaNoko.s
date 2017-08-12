
.globl __dt__18TNerveTamaNokoWaitFv
__dt__18TNerveTamaNokoWaitFv: # 0x800b9808
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b984c
    lis     r3, __vvt__18TNerveTamaNokoWait@h
    addi    r0, r3, __vvt__18TNerveTamaNokoWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800b983c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800b983c:
    extsh.  r0, r4
    ble-    branch_0x800b984c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b984c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveTamaNokoWaitCFP24TSpineBase_10TLiveActor_
execute__18TNerveTamaNokoWaitCFP24TSpineBase_10TLiveActor_: # 0x800b9864
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x2
    bge-    branch_0x800b98bc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xe
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r31, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
branch_0x800b98bc:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b99cc
    lwz     r5, 0x15c(r30)
    cmpwi   r5, 0xe
    bne-    branch_0x800b98e4
    li      r0, 0x1
    b       branch_0x800b98e8

branch_0x800b98e4:
    li      r0, 0x0
branch_0x800b98e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b990c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xd
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b99cc

branch_0x800b990c:
    cmpwi   r5, 0xd
    bne-    branch_0x800b991c
    li      r0, 0x1
    b       branch_0x800b9920

branch_0x800b991c:
    li      r0, 0x0
branch_0x800b9920:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b9974
    lwz     r3, 0x198(r30)
    lwz     r4, 0x20(r29)
    lwz     r0, 0x248(r3)
    cmpw    r4, r0
    ble-    branch_0x800b99cc
    cmpwi   r5, 0xd
    bne-    branch_0x800b994c
    li      r0, 0x1
    b       branch_0x800b9950

branch_0x800b994c:
    li      r0, 0x0
branch_0x800b9950:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b99cc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b99cc

branch_0x800b9974:
    cmpwi   r5, 0xc
    bne-    branch_0x800b9984
    li      r0, 0x1
    b       branch_0x800b9988

branch_0x800b9984:
    li      r0, 0x0
branch_0x800b9988:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b99cc
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x800b99c4
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800b99c4
    lwz     r4, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800b99c4:
    li      r3, 0x1
    b       branch_0x800b99d0

branch_0x800b99cc:
    li      r3, 0x0
branch_0x800b99d0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl execute__22TNerveTamaNokoHitWaterCFP24TSpineBase_10TLiveActor_
execute__22TNerveTamaNokoHitWaterCFP24TSpineBase_10TLiveActor_: # 0x800b99ec
    mflr    r0
    lis     r3, unk_803f19e0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, unk_803f19e0@l
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r4
    stw     r28, 0x48(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x2
    bge-    branch_0x800b9a50
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xf
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r28, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
branch_0x800b9a50:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b9d00
    lwz     r3, 0x15c(r30)
    cmpwi   r3, 0xf
    bne-    branch_0x800b9a78
    li      r0, 0x1
    b       branch_0x800b9a7c

branch_0x800b9a78:
    li      r0, 0x0
branch_0x800b9a7c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b9aa0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x10
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b9d00

branch_0x800b9aa0:
    cmpwi   r3, 0x10
    bne-    branch_0x800b9ab0
    li      r0, 0x1
    b       branch_0x800b9ab4

branch_0x800b9ab0:
    li      r0, 0x0
branch_0x800b9ab4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b9c34
    lwz     r3, 0x198(r30)
    lwz     r4, 0x20(r29)
    lwz     r0, 0x3dc(r3)
    cmpw    r4, r0
    bgt-    branch_0x800b9adc
    lbz     r0, 0x1b9(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x800b9b18
branch_0x800b9adc:
    li      r3, 0x0
    stb     r3, 0x1b9(r30)
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x800b9af4
    li      r3, 0x1
branch_0x800b9af4:
    clrlwi. r0, r3, 24
    bne-    branch_0x800b9d00
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b9d00

branch_0x800b9b18:
    lbz     r3, 0x165(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800b9b2c
    li      r0, 0x0
    stb     r0, 0x165(r30)
branch_0x800b9b2c:
    cmplwi  r3, 0x0
    beq-    branch_0x800b9b50
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x10
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b9d00

branch_0x800b9b50:
    li      r0, 0x0
    stw     r0, 0x8(r29)
    lbz     r0, R13Off_m0x6ac0(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9b98
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTamaNokoSleep@h
    stw     r0, R13Off_m0x6abc(r13)
    addi    r0, r3, __vvt__19TNerveTamaNokoSleep@l
    lis     r3, __dt__19TNerveTamaNokoSleepFv@ha
    stw     r0, R13Off_m0x6abc(r13)
    addi    r4, r3, __dt__19TNerveTamaNokoSleepFv@l
    addi    r3, r13, R13Off_m0x6abc
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ac0(r13)
branch_0x800b9b98:
    lwz     r0, 0x14(r29)
    addi    r3, r13, R13Off_m0x6abc
    cmplwi  r0, 0x0
    beq-    branch_0x800b9bac
    stw     r0, 0x1c(r29)
branch_0x800b9bac:
    li      r0, 0x0
    stw     r0, 0x20(r29)
    stw     r3, 0x14(r29)
    lbz     r0, R13Off_m0x6ac0(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9bf8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTamaNokoSleep@h
    stw     r0, R13Off_m0x6abc(r13)
    addi    r0, r3, __vvt__19TNerveTamaNokoSleep@l
    lis     r3, __dt__19TNerveTamaNokoSleepFv@ha
    stw     r0, R13Off_m0x6abc(r13)
    addi    r4, r3, __dt__19TNerveTamaNokoSleepFv@l
    addi    r3, r13, R13Off_m0x6abc
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ac0(r13)
branch_0x800b9bf8:
    addi    r4, r13, R13Off_m0x6abc
    cmplwi  r4, 0x0
    beq-    branch_0x800b9c2c
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800b9c2c
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800b9c2c:
    li      r3, 0x1
    b       branch_0x800b9d04

branch_0x800b9c34:
    cmpwi   r3, 0x1
    bne-    branch_0x800b9c44
    li      r0, 0x1
    b       branch_0x800b9c48

branch_0x800b9c44:
    li      r0, 0x0
branch_0x800b9c48:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b9d00
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x800b9c84
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800b9c84
    lwz     r4, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800b9c84:
    lbz     r0, R13Off_m0x6a88(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9cc4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTamaNokoWait@h
    stw     r0, R13Off_m0x6a84(r13)
    addi    r0, r3, __vvt__18TNerveTamaNokoWait@l
    lis     r3, __dt__18TNerveTamaNokoWaitFv@ha
    stw     r0, R13Off_m0x6a84(r13)
    addi    r4, r3, __dt__18TNerveTamaNokoWaitFv@l
    addi    r3, r13, R13Off_m0x6a84
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6a88(r13)
branch_0x800b9cc4:
    addi    r4, r13, R13Off_m0x6a84
    cmplwi  r4, 0x0
    beq-    branch_0x800b9cf8
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800b9cf8
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800b9cf8:
    li      r3, 0x1
    b       branch_0x800b9d04

branch_0x800b9d00:
    li      r3, 0x0
branch_0x800b9d04:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl __dt__19TNerveTamaNokoSleepFv
__dt__19TNerveTamaNokoSleepFv: # 0x800b9d24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b9d68
    lis     r3, __vvt__19TNerveTamaNokoSleep@h
    addi    r0, r3, __vvt__19TNerveTamaNokoSleep@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800b9d58
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800b9d58:
    extsh.  r0, r4
    ble-    branch_0x800b9d68
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b9d68:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__22TNerveTamaNokoHitWaterFv
__dt__22TNerveTamaNokoHitWaterFv: # 0x800b9d80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b9dc4
    lis     r3, __vvt__22TNerveTamaNokoHitWater@h
    addi    r0, r3, __vvt__22TNerveTamaNokoHitWater@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800b9db4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800b9db4:
    extsh.  r0, r4
    ble-    branch_0x800b9dc4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b9dc4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveTamaNokoSinkCFP24TSpineBase_10TLiveActor_
execute__18TNerveTamaNokoSinkCFP24TSpineBase_10TLiveActor_: # 0x800b9ddc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800b9e24
    li      r0, 0x1
    stb     r0, 0x195(r31)
    addi    r3, r31, 0x0
    li      r4, 0x6
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800b9e24:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b9fd8
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x6
    bne-    branch_0x800b9e4c
    li      r0, 0x1
    b       branch_0x800b9e50

branch_0x800b9e4c:
    li      r0, 0x0
branch_0x800b9e50:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b9e70
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800b9e70:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x70(r31)
    lwz     r7, 0x3c8(r3)
    li      r3, 0x0
    lwz     r5, 0x14(r6)
    lfs     f2, -0x61b8(r2)
    cmpwi   r5, 0x0
    mtctr   r5
    lfs     f0, -0x61b4(r2)
    ble-    branch_0x800b9ec8
branch_0x800b9ea8:
    lwz     r4, 0x18(r6)
    lwzx    r4, r4, r3
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x800b9ec0
    fadds   f2, f2, f0
branch_0x800b9ec0:
    addi    r3, r3, 0x4
    bdnz+      branch_0x800b9ea8
branch_0x800b9ec8:
    xoris   r0, r5, 0x8000
    lfd     f1, -0x61b0(r2)
    stw     r0, 0x54(sp)
    lis     r4, 0x4330
    xoris   r3, r7, 0x8000
    lwz     r0, 0x20(r30)
    stw     r4, 0x50(sp)
    lfd     f0, 0x50(sp)
    stw     r3, 0x4c(sp)
    fsubs   f0, f0, f1
    stw     r4, 0x48(sp)
    fdivs   f2, f2, f0
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f0, f2
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r7, 0x44(sp)
    cmpw    r0, r7
    ble-    branch_0x800b9fd8
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x7
    bne-    branch_0x800b9f2c
    li      r0, 0x1
    b       branch_0x800b9f30

branch_0x800b9f2c:
    li      r0, 0x0
branch_0x800b9f30:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b9fc0
    li      r0, 0x0
    stb     r0, 0x195(r31)
    lbz     r0, R13Off_m0x6a88(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9f84
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTamaNokoWait@h
    stw     r0, R13Off_m0x6a84(r13)
    addi    r0, r3, __vvt__18TNerveTamaNokoWait@l
    lis     r4, __dt__18TNerveTamaNokoWaitFv@ha
    stw     r0, R13Off_m0x6a84(r13)
    lis     r3, unk_803f1a34@h
    addi    r5, r3, unk_803f1a34@l
    addi    r4, r4, __dt__18TNerveTamaNokoWaitFv@l
    addi    r3, r13, R13Off_m0x6a84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6a88(r13)
branch_0x800b9f84:
    addi    r4, r13, R13Off_m0x6a84
    cmplwi  r4, 0x0
    beq-    branch_0x800b9fb8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800b9fb8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800b9fb8:
    li      r3, 0x1
    b       branch_0x800b9fdc

branch_0x800b9fc0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800b9fd8:
    li      r3, 0x0
branch_0x800b9fdc:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __dt__18TNerveTamaNokoSinkFv
__dt__18TNerveTamaNokoSinkFv: # 0x800b9ff4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ba038
    lis     r3, __vvt__18TNerveTamaNokoSink@h
    addi    r0, r3, __vvt__18TNerveTamaNokoSink@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800ba028
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800ba028:
    extsh.  r0, r4
    ble-    branch_0x800ba038
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ba038:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveTamaNokoThrownCFP24TSpineBase_10TLiveActor_
execute__20TNerveTamaNokoThrownCFP24TSpineBase_10TLiveActor_: # 0x800ba050
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800ba114
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x60ac(r13)
    lwz     r6, R13Off_m0x6090(r13)
    lha     r0, 0x0(r4)
    lwz     r7, R13Off_m0x5eac(r13)
    clrlwi  r0, r0, 16
    lwz     r4, R13Off_m0x5ea8(r13)
    sraw    r5, r0, r7
    lfs     f2, 0x0(r6)
    sraw    r0, r0, r7
    lfs     f4, 0x378(r3)
    slwi    r0, r0, 2
    lwz     r6, R13Off_m0x5ea4(r13)
    lfsx    f0, r4, r0
    slwi    r0, r5, 2
    lfsx    f3, r6, r0
    fmuls   f1, f2, f0
    fmuls   f0, f2, f3
    fmuls   f1, f4, f1
    fmuls   f0, f4, f0
    stfs    f1, 0x40(sp)
    lfs     f1, 0x364(r3)
    stfs    f1, 0x44(sp)
    stfs    f0, 0x48(sp)
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x48(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x61a8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x800ba114:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800ba128
    li      r0, 0x1
    b       branch_0x800ba12c

branch_0x800ba128:
    li      r0, 0x0
branch_0x800ba12c:
    cmpwi   r0, 0x0
    bne-    branch_0x800ba144
    li      r0, 0x0
    stb     r0, 0x164(r31)
    li      r3, 0x1
    b       branch_0x800ba148

branch_0x800ba144:
    li      r3, 0x0
branch_0x800ba148:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl __dt__20TNerveTamaNokoThrownFv
__dt__20TNerveTamaNokoThrownFv: # 0x800ba15c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ba1a0
    lis     r3, __vvt__20TNerveTamaNokoThrown@h
    addi    r0, r3, __vvt__20TNerveTamaNokoThrown@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800ba190
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800ba190:
    extsh.  r0, r4
    ble-    branch_0x800ba1a0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ba1a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveTamaNokoPickUpCFP24TSpineBase_10TLiveActor_
execute__20TNerveTamaNokoPickUpCFP24TSpineBase_10TLiveActor_: # 0x800ba1b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800ba1f4
    lbz     r0, 0x164(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800ba1f4
    li      r3, 0x1
    b       branch_0x800ba254

branch_0x800ba1f4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800ba250
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r30)
    lwz     r0, 0x33c(r3)
    cmpw    r4, r0
    ble-    branch_0x800ba250
    li      r0, 0x0
    stb     r0, 0x164(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800ba254

branch_0x800ba250:
    li      r3, 0x0
branch_0x800ba254:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__20TNerveTamaNokoPickUpFv
__dt__20TNerveTamaNokoPickUpFv: # 0x800ba26c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ba2b0
    lis     r3, __vvt__20TNerveTamaNokoPickUp@h
    addi    r0, r3, __vvt__20TNerveTamaNokoPickUp@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800ba2a0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800ba2a0:
    extsh.  r0, r4
    ble-    branch_0x800ba2b0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ba2b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveTamaNokoDownCFP24TSpineBase_10TLiveActor_
execute__18TNerveTamaNokoDownCFP24TSpineBase_10TLiveActor_: # 0x800ba2c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    stw     r29, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800ba450
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x701
    beq-    branch_0x800ba31c
    cmplwi  r0, 0x4701
    beq-    branch_0x800ba31c
    cmplwi  r0, 0x8701
    beq-    branch_0x800ba31c
    cmplwi  r0, 0xc701
    bne-    branch_0x800ba324
branch_0x800ba31c:
    li      r0, 0x1
    b       branch_0x800ba328

branch_0x800ba324:
    li      r0, 0x0
branch_0x800ba328:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ba3f0
    lbz     r0, R13Off_m0x6a98(r13)
    extsb.  r0, r0
    bne-    branch_0x800ba374
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTamaNokoSink@h
    stw     r0, R13Off_m0x6a94(r13)
    addi    r0, r3, __vvt__18TNerveTamaNokoSink@l
    lis     r4, __dt__18TNerveTamaNokoSinkFv@ha
    stw     r0, R13Off_m0x6a94(r13)
    lis     r3, unk_803f1a1c@h
    addi    r5, r3, unk_803f1a1c@l
    addi    r4, r4, __dt__18TNerveTamaNokoSinkFv@l
    addi    r3, r13, R13Off_m0x6a94
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6a98(r13)
branch_0x800ba374:
    addi    r4, r13, R13Off_m0x6a94
    cmplwi  r4, 0x0
    beq-    branch_0x800ba3a8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800ba3a8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800ba3a8:
    lis     r4, unk_8037e904@ha
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_8037e904@l
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800ba3e8
    lfs     f1, -0x61a4(r2)
    addi    r4, r31, 0x10
    lfs     f0, -0x61a0(r2)
    addi    r5, sp, 0x44
    stfs    f1, 0x44(sp)
    stfs    f0, 0x48(sp)
    stfs    f1, 0x4c(sp)
    bl      generate__16TEffectColumSandFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x800ba3e8:
    li      r3, 0x1
    b       branch_0x800ba530

branch_0x800ba3f0:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x28f9
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800ba420
    addi    r4, r31, 0x10
    li      r3, 0x28f9
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800ba420:
    li      r0, 0x1
    stb     r0, 0x164(r31)
    li      r4, 0x7
    lwz     r3, R13Off_m0x7108(r13)
    lfs     f1, -0x61b4(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800ba450:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xa
    bne-    branch_0x800ba46c
    lwz     r3, R13Off_m0x60f0(r13)
    addi    r5, r31, 0x10
    li      r4, 0x13
    bl      start__9RumbleMgrFiP3Vec
branch_0x800ba46c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r29, 0x33c(r3)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800ba52c
    lwz     r0, 0x20(r30)
    cmpw    r0, r29
    ble-    branch_0x800ba52c
    li      r0, 0x0
    stb     r0, 0x164(r31)
    lbz     r0, R13Off_m0x6a88(r13)
    extsb.  r0, r0
    bne-    branch_0x800ba4f0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTamaNokoWait@h
    stw     r0, R13Off_m0x6a84(r13)
    addi    r0, r3, __vvt__18TNerveTamaNokoWait@l
    lis     r4, __dt__18TNerveTamaNokoWaitFv@ha
    stw     r0, R13Off_m0x6a84(r13)
    lis     r3, unk_803f1a34@h
    addi    r5, r3, unk_803f1a34@l
    addi    r4, r4, __dt__18TNerveTamaNokoWaitFv@l
    addi    r3, r13, R13Off_m0x6a84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6a88(r13)
branch_0x800ba4f0:
    addi    r4, r13, R13Off_m0x6a84
    cmplwi  r4, 0x0
    beq-    branch_0x800ba524
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800ba524
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800ba524:
    li      r3, 0x1
    b       branch_0x800ba530

branch_0x800ba52c:
    li      r3, 0x0
branch_0x800ba530:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl __dt__18TNerveTamaNokoDownFv
__dt__18TNerveTamaNokoDownFv: # 0x800ba54c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ba590
    lis     r3, __vvt__18TNerveTamaNokoDown@h
    addi    r0, r3, __vvt__18TNerveTamaNokoDown@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800ba580
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800ba580:
    extsh.  r0, r4
    ble-    branch_0x800ba590
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ba590:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveTamaNokoAttackCFP24TSpineBase_10TLiveActor_
execute__20TNerveTamaNokoAttackCFP24TSpineBase_10TLiveActor_: # 0x800ba5a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stw     r31, 0xec(sp)
    stw     r30, 0xe8(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800ba68c
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x9
    bne-    branch_0x800ba5e8
    li      r0, 0x1
    b       branch_0x800ba5ec

branch_0x800ba5e8:
    li      r0, 0x0
branch_0x800ba5ec:
    clrlwi. r0, r0, 24
    bne-    branch_0x800ba60c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800ba60c:
    lwz     r3, R13Off_m0x60b8(r13)
    lfs     f0, -0x61b8(r2)
    stw     r3, 0xbc(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0xc0(sp)
    stfs    f0, 0xc4(sp)
    stfs    f0, 0xc8(sp)
    beq-    branch_0x800ba644
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f2, 0xc8(sp)
branch_0x800ba644:
    lwz     r3, 0xbc(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0xc0(sp)
    lwz     r3, 0xc4(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0xc8(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0xbc(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0xc0(sp)
    lwz     r3, 0xc4(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0xc8(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
branch_0x800ba68c:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x619c(r2)
    stw     r3, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xb8(sp)
    lfs     f1, 0xb4(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ba710
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x186
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x30
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800ba710
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
branch_0x800ba710:
    lbz     r0, 0x194(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800ba91c
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800ba730
    li      r0, 0x1
    b       branch_0x800ba734

branch_0x800ba730:
    li      r0, 0x0
branch_0x800ba734:
    cmpwi   r0, 0x0
    bne-    branch_0x800ba7cc
    mr      r3, r31
    bl      landEffect__9TTamaNokoFv
    li      r0, 0x0
    stb     r0, 0x194(r31)
    lbz     r0, R13Off_m0x6ab0(r13)
    extsb.  r0, r0
    bne-    branch_0x800ba790
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTamaNokoDown@h
    stw     r0, R13Off_m0x6aac(r13)
    addi    r0, r3, __vvt__18TNerveTamaNokoDown@l
    lis     r4, __dt__18TNerveTamaNokoDownFv@ha
    stw     r0, R13Off_m0x6aac(r13)
    lis     r3, unk_803f19f8@h
    addi    r5, r3, unk_803f19f8@l
    addi    r4, r4, __dt__18TNerveTamaNokoDownFv@l
    addi    r3, r13, R13Off_m0x6aac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ab0(r13)
branch_0x800ba790:
    addi    r4, r13, R13Off_m0x6aac
    cmplwi  r4, 0x0
    beq-    branch_0x800ba7c4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800ba7c4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800ba7c4:
    li      r3, 0x1
    b       branch_0x800bad3c

branch_0x800ba7cc:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x61b8(r2)
    stw     r3, 0xa4(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xac(sp)
    lfs     f1, 0xa8(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800bad38
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lfs     f1, -0x6198(r2)
    addi    r5, r31, 0x1ac
    lwz     r3, 0x4(r3)
    li      r4, 0x105
    lwz     r3, 0x58(r3)
    li      r6, 0x1
    addi    r3, r3, 0x30
    lfs     f2, 0x1c(r3)
    lfs     f3, 0x2c(r3)
    lfs     f0, 0xc(r3)
    fsubs   f1, f2, f1
    stfs    f0, 0x1ac(r31)
    stfs    f1, 0x1b0(r31)
    stfs    f3, 0x1b4(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800ba874
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
branch_0x800ba874:
    lwz     r3, 0x1bc(r31)
    lwz     r0, R13Off_m0x7e40(r13)
    cmpw    r3, r0
    bge-    branch_0x800ba8e0
    lwz     r0, 0xf0(r31)
    lis     r3, 0x4330
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r5, R13Off_m0x7e3c(r13)
    lwz     r0, 0x1bc(r31)
    xoris   r4, r5, 0x8000
    lfd     f1, -0x61b0(r2)
    stw     r4, 0xe4(sp)
    cmpw    r0, r5
    lfs     f2, -0x7e38(r13)
    stw     r3, 0xe0(sp)
    lfd     f0, 0xe0(sp)
    fsubs   f0, f0, f1
    fdivs   f1, f2, f0
    bge-    branch_0x800ba8d0
    lfs     f0, 0x34(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x34(r31)
branch_0x800ba8d0:
    lwz     r3, 0x1bc(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1bc(r31)
    b       branch_0x800bad38

branch_0x800ba8e0:
    lfs     f1, -0x61b8(r2)
    lfs     f0, -0x7e34(r13)
    stfs    f1, 0xcc(sp)
    stfs    f0, 0xd0(sp)
    stfs    f1, 0xd4(sp)
    lwz     r3, 0xcc(sp)
    lwz     r0, 0xd0(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xd4(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    b       branch_0x800bad38

branch_0x800ba91c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bac00
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0xa
    bne-    branch_0x800ba944
    li      r0, 0x1
    b       branch_0x800ba948

branch_0x800ba944:
    li      r0, 0x0
branch_0x800ba948:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ba96c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x9
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800bac00

branch_0x800ba96c:
    cmpwi   r3, 0x9
    bne-    branch_0x800ba97c
    li      r0, 0x1
    b       branch_0x800ba980

branch_0x800ba97c:
    li      r0, 0x0
branch_0x800ba980:
    clrlwi. r0, r0, 24
    beq-    branch_0x800baa2c
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xcc(r3)
    lfs     f0, 0x134(r31)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    ble-    branch_0x800ba9dc
    li      r0, 0x1
    stb     r0, 0x1b8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x8
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800bac00

branch_0x800ba9dc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    lfs     f0, 0x350(r3)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800bac00
    fmuls   f0, f0, f0
    lfs     f1, 0x134(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800bac00
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800bac00

branch_0x800baa2c:
    cmpwi   r3, 0x8
    bne-    branch_0x800baa3c
    li      r0, 0x1
    b       branch_0x800baa40

branch_0x800baa3c:
    li      r0, 0x0
branch_0x800baa40:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bac00
    lbz     r0, 0x1b8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800baa98
    li      r0, 0x0
    stb     r0, 0x1b8(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x800baa90
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800baa90
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800baa90:
    li      r3, 0x1
    b       branch_0x800bad3c

branch_0x800baa98:
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800baab0
    li      r0, 0x1
    b       branch_0x800baab4

branch_0x800baab0:
    li      r0, 0x0
branch_0x800baab4:
    clrlwi. r0, r0, 24
    bne-    branch_0x800bab04
    bl      SMS_IsMarioStatusTypeSwimming__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x800bab04
    bl      SMS_GetMarioGrPlane__Fv
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x800baaf0
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x800baaf0
    cmplwi  r3, 0x4104
    bne-    branch_0x800baaf8
branch_0x800baaf0:
    li      r0, 0x1
    b       branch_0x800baafc

branch_0x800baaf8:
    li      r0, 0x0
branch_0x800baafc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bab40
branch_0x800bab04:
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x800bab38
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800bab38
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800bab38:
    li      r3, 0x1
    b       branch_0x800bad3c

branch_0x800bab40:
    lwz     r3, R13Off_m0x60d8(r13)
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800babe8
    lbz     r0, R13Off_m0x6a88(r13)
    extsb.  r0, r0
    bne-    branch_0x800bab94
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTamaNokoWait@h
    stw     r0, R13Off_m0x6a84(r13)
    addi    r0, r3, __vvt__18TNerveTamaNokoWait@l
    lis     r4, __dt__18TNerveTamaNokoWaitFv@ha
    stw     r0, R13Off_m0x6a84(r13)
    lis     r3, unk_803f1a34@h
    addi    r5, r3, unk_803f1a34@l
    addi    r4, r4, __dt__18TNerveTamaNokoWaitFv@l
    addi    r3, r13, R13Off_m0x6a84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6a88(r13)
branch_0x800bab94:
    addi    r5, r13, R13Off_m0x6a84
    cmplwi  r5, 0x0
    beq-    branch_0x800babe8
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800babdc
    stw     r0, 0x1c(r30)
    lwz     r3, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r3, r0
    bge-    branch_0x800babdc
    lwz     r4, 0x14(r30)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r30)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800babdc:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r5, 0x14(r30)
branch_0x800babe8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800bac00:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x800bac14
    li      r0, 0x1
    b       branch_0x800bac18

branch_0x800bac14:
    li      r0, 0x0
branch_0x800bac18:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bad1c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6194(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800bacfc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x3a0(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r30, R13Off_m0x60b4(r13)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    mr      r4, r31
    fmr     f1, f31
    addi    r5, r30, 0x0
    addi    r3, sp, 0x98
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r5, 0x98(sp)
    li      r3, 0x1
    lwz     r4, 0x9c(sp)
    li      r0, 0x0
    stw     r5, 0x1a0(r31)
    stw     r4, 0x1a4(r31)
    lwz     r4, 0xa0(sp)
    stw     r4, 0x1a8(r31)
    lfs     f0, 0x1a0(r31)
    lfs     f1, -0x61a8(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a0(r31)
    lfs     f0, 0x1a8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a8(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6190(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r5, 0x1a0(r31)
    lwz     r4, 0x1a4(r31)
    stw     r5, 0xac(r31)
    stw     r4, 0xb0(r31)
    lwz     r4, 0x1a8(r31)
    stw     r4, 0xb4(r31)
    lwz     r4, 0xf0(r31)
    ori     r4, r4, 0x80
    stw     r4, 0xf0(r31)
    stb     r3, 0x194(r31)
    stw     r0, 0x1bc(r31)
branch_0x800bacfc:
    mr      r3, r31
    lfs     f1, -0x61a0(r2)
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    b       branch_0x800bad38

branch_0x800bad1c:
    mr      r3, r31
    lfs     f1, -0x61b4(r2)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
branch_0x800bad38:
    li      r3, 0x0
branch_0x800bad3c:
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    lwz     r31, 0xec(sp)
    mtlr    r0
    lwz     r30, 0xe8(sp)
    addi    sp, sp, 0xf8
    blr


.globl __dt__20TNerveTamaNokoAttackFv
__dt__20TNerveTamaNokoAttackFv: # 0x800bad58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800bad9c
    lis     r3, __vvt__20TNerveTamaNokoAttack@h
    addi    r0, r3, __vvt__20TNerveTamaNokoAttack@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800bad8c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800bad8c:
    extsh.  r0, r4
    ble-    branch_0x800bad9c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800bad9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveTamaNokoSleepCFP24TSpineBase_10TLiveActor_
execute__19TNerveTamaNokoSleepCFP24TSpineBase_10TLiveActor_: # 0x800badb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x15c(r3)
    addi    r31, r3, 0x0
    cmpwi   r0, 0xf
    bne-    branch_0x800bade0
    li      r0, 0x1
    b       branch_0x800bade4

branch_0x800bade0:
    li      r0, 0x0
branch_0x800bade4:
    clrlwi. r0, r0, 24
    bne-    branch_0x800bae28
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bae28
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xf
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, -0x61b8(r2)
    bl      setFrameRate__6MActorFfi
branch_0x800bae28:
    mr      r3, r31
    lfs     f1, -0x61b8(r2)
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl isCollidMove__9TTamaNokoFP9THitActor
isCollidMove__9TTamaNokoFP9THitActor: # 0x800bae5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    lwz     r0, 0x4c(r3)
    lwz     r3, 0x4c(r4)
    cmplw   r3, r0
    bne-    branch_0x800bae90
    li      r3, 0x1
    b       branch_0x800baf10

branch_0x800bae90:
    lbz     r0, R13Off_m0x6ab0(r13)
    extsb.  r0, r0
    bne-    branch_0x800baed4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTamaNokoDown@h
    stw     r0, R13Off_m0x6aac(r13)
    addi    r0, r3, __vvt__18TNerveTamaNokoDown@l
    lis     r4, __dt__18TNerveTamaNokoDownFv@ha
    stw     r0, R13Off_m0x6aac(r13)
    lis     r3, unk_803f19f8@h
    addi    r5, r3, unk_803f19f8@l
    addi    r4, r4, __dt__18TNerveTamaNokoDownFv@l
    addi    r3, r13, R13Off_m0x6aac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ab0(r13)
branch_0x800baed4:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6aac
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800baf0c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800baf10

branch_0x800baf0c:
    li      r3, 0x0
branch_0x800baf10:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl isReachedToGoal__9TTamaNokoCFv
isReachedToGoal__9TTamaNokoCFv: # 0x800baf28
    mflr    r0
    addi    r4, r3, 0x104
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r5, 0x104(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x800baf4c
    addi    r5, r5, 0x10
    b       branch_0x800baf50

branch_0x800baf4c:
    addi    r5, r4, 0x4
branch_0x800baf50:
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x1c(sp)
    lfs     f1, 0x14(sp)
    lfs     f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, -0x61b8(r2)
    stfs    f1, 0x18(sp)
    lfs     f0, 0x14(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800bafc0
    lfs     f0, 0x1c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800bafc0
    li      r3, 0x1
    b       branch_0x800bafe0

branch_0x800bafc0:
    addi    r3, sp, 0x14
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x6198(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800bafdc
    li      r3, 0x1
    b       branch_0x800bafe0

branch_0x800bafdc:
    li      r3, 0x0
branch_0x800bafe0:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setDeadAnm__9TTamaNokoFv
setDeadAnm__9TTamaNokoFv: # 0x800baff0
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


.globl setWalkAnm__9TTamaNokoFv
setWalkAnm__9TTamaNokoFv: # 0x800bb020
    mflr    r0
    li      r4, 0xa
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


.globl getGravityY__9TTamaNokoCFv
getGravityY__9TTamaNokoCFv: # 0x800bb050
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x6ab8(r13)
    extsb.  r0, r0
    bne-    branch_0x800bb0a8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTamaNokoAttack@h
    stw     r0, R13Off_m0x6ab4(r13)
    addi    r0, r3, __vvt__20TNerveTamaNokoAttack@l
    lis     r4, __dt__20TNerveTamaNokoAttackFv@ha
    stw     r0, R13Off_m0x6ab4(r13)
    lis     r3, unk_803f19ec@h
    addi    r5, r3, unk_803f19ec@l
    addi    r4, r4, __dt__20TNerveTamaNokoAttackFv@l
    addi    r3, r13, R13Off_m0x6ab4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ab8(r13)
branch_0x800bb0a8:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6ab4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800bb0c8
    lwz     r3, 0x198(r31)
    lfs     f1, 0x3b4(r3)
    b       branch_0x800bb130

branch_0x800bb0c8:
    lbz     r0, R13Off_m0x6aa0(r13)
    extsb.  r0, r0
    bne-    branch_0x800bb10c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTamaNokoThrown@h
    stw     r0, R13Off_m0x6a9c(r13)
    addi    r0, r3, __vvt__20TNerveTamaNokoThrown@l
    lis     r4, __dt__20TNerveTamaNokoThrownFv@ha
    stw     r0, R13Off_m0x6a9c(r13)
    lis     r3, unk_803f1a10@h
    addi    r5, r3, unk_803f1a10@l
    addi    r4, r4, __dt__20TNerveTamaNokoThrownFv@l
    addi    r3, r13, R13Off_m0x6a9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6aa0(r13)
branch_0x800bb10c:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6a9c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800bb12c
    lwz     r3, 0x198(r31)
    lfs     f1, 0x38c(r3)
    b       branch_0x800bb130

branch_0x800bb12c:
    lfs     f1, 0xcc(r31)
branch_0x800bb130:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl getBasNameTable__9TTamaNokoCFv
getBasNameTable__9TTamaNokoCFv: # 0x800bb144
    lis     r3, tamaNoko_bastable@h
    addi    r3, r3, tamaNoko_bastable@l
    blr


.globl setAfterDeadEffect__9TTamaNokoFv
setAfterDeadEffect__9TTamaNokoFv: # 0x800bb150
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    bl      setAfterDeadEffect__11TSmallEnemyFv
    lwz     r3, 0x19c(r30)
    li      r0, 0x1
    li      r4, 0x0
    stb     r0, 0x34(r3)
    lwz     r31, 0x19c(r30)
    lwz     r3, 0x18(r31)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x10(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bb1ac
    li      r0, 0x0
    b       branch_0x800bb1b0

branch_0x800bb1ac:
    lwz     r0, 0x0(r3)
branch_0x800bb1b0:
    stw     r0, 0x30(r31)
    lwz     r3, 0x30(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800bb1dc
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x2c(r31)
    lfs     f1, -0x61b8(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800bb1f0

branch_0x800bb1dc:
    lwz     r3, 0x2c(r31)
    li      r4, 0x0
    lfs     f1, -0x61b8(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800bb1f0:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xcc
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x295f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800bb238
    addi    r4, r30, 0x10
    li      r3, 0x295f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800bb238:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl landEffect__9TTamaNokoFv
landEffect__9TTamaNokoFv: # 0x800bb250
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    stw     r30, 0x88(sp)
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x701
    beq-    branch_0x800bb290
    cmplwi  r0, 0x4701
    beq-    branch_0x800bb290
    cmplwi  r0, 0x8701
    beq-    branch_0x800bb290
    cmplwi  r0, 0xc701
    bne-    branch_0x800bb298
branch_0x800bb290:
    li      r0, 0x1
    b       branch_0x800bb29c

branch_0x800bb298:
    li      r0, 0x0
branch_0x800bb29c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bb3b0
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x14
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr.     r30, r3
    beq-    branch_0x800bb328
    lwz     r4, 0x24(r31)
    addi    r3, sp, 0x40
    lwz     r0, 0x28(r31)
    lfs     f1, -0x618c(r2)
    stw     r4, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x48(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x40(sp)
    lwz     r3, 0x44(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
    lfs     f0, 0x74(sp)
    stfs    f0, 0x154(r30)
    lfs     f1, 0x78(sp)
    stfs    f1, 0x158(r30)
    lfs     f2, 0x7c(sp)
    stfs    f2, 0x15c(r30)
    lfs     f0, 0x74(sp)
    stfs    f0, 0x174(r30)
    stfs    f1, 0x178(r30)
    stfs    f2, 0x17c(r30)
branch_0x800bb328:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x53
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr.     r30, r3
    beq-    branch_0x800bb53c
    lwz     r4, 0x24(r31)
    addi    r3, sp, 0x34
    lwz     r0, 0x28(r31)
    lfs     f1, -0x618c(r2)
    stw     r4, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x3c(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x34(sp)
    lwz     r3, 0x38(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lfs     f0, 0x68(sp)
    stfs    f0, 0x154(r30)
    lfs     f1, 0x6c(sp)
    stfs    f1, 0x158(r30)
    lfs     f2, 0x70(sp)
    stfs    f2, 0x15c(r30)
    lfs     f0, 0x68(sp)
    stfs    f0, 0x174(r30)
    stfs    f1, 0x178(r30)
    stfs    f2, 0x17c(r30)
    b       branch_0x800bb53c

branch_0x800bb3b0:
    lfs     f1, -0x6188(r2)
    addi    r4, sp, 0x80
    lfs     f0, 0x14(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x80(sp)
    cmplwi  r3, 0x0
    beq-    branch_0x800bb434
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x800bb408
    cmplwi  r3, 0x101
    beq-    branch_0x800bb408
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x800bb408
    cmplwi  r3, 0x4104
    bne-    branch_0x800bb410
branch_0x800bb408:
    li      r0, 0x1
    b       branch_0x800bb414

branch_0x800bb410:
    li      r0, 0x0
branch_0x800bb414:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bb434
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    b       branch_0x800bb53c

branch_0x800bb434:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x14
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr.     r30, r3
    beq-    branch_0x800bb4b8
    lwz     r4, 0x24(r31)
    addi    r3, sp, 0x28
    lwz     r0, 0x28(r31)
    lfs     f1, -0x618c(r2)
    stw     r4, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x30(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x28(sp)
    lwz     r3, 0x2c(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x30(sp)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lfs     f0, 0x5c(sp)
    stfs    f0, 0x154(r30)
    lfs     f1, 0x60(sp)
    stfs    f1, 0x158(r30)
    lfs     f2, 0x64(sp)
    stfs    f2, 0x15c(r30)
    lfs     f0, 0x5c(sp)
    stfs    f0, 0x174(r30)
    stfs    f1, 0x178(r30)
    stfs    f2, 0x17c(r30)
branch_0x800bb4b8:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x13
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr.     r30, r3
    beq-    branch_0x800bb53c
    lwz     r4, 0x24(r31)
    addi    r3, sp, 0x1c
    lwz     r0, 0x28(r31)
    lfs     f1, -0x618c(r2)
    stw     r4, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x24(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x1c(sp)
    lwz     r3, 0x20(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lfs     f0, 0x50(sp)
    stfs    f0, 0x154(r30)
    lfs     f1, 0x54(sp)
    stfs    f1, 0x158(r30)
    lfs     f2, 0x58(sp)
    stfs    f2, 0x15c(r30)
    lfs     f0, 0x50(sp)
    stfs    f0, 0x174(r30)
    stfs    f1, 0x178(r30)
    stfs    f2, 0x17c(r30)
branch_0x800bb53c:
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x7
    lfs     f1, -0x61b4(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x8
    li      r5, 0x1
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl requestShadow__9TTamaNokoFv
requestShadow__9TTamaNokoFv: # 0x800bb578
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    lwz     r3, 0xf0(r3)
    andi.   r0, r3, 0xb
    bne-    branch_0x800bb740
    andi.   r0, r3, 0x204
    beq-    branch_0x800bb5a8
    rlwinm. r0, r3, 0, 21, 21
    beq-    branch_0x800bb6ec
branch_0x800bb5a8:
    lfs     f0, -0x61b8(r2)
    li      r5, 0x0
    li      r6, 0x1
    stfs    f0, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x80(sp)
    stfs    f0, 0x84(sp)
    stb     r5, 0x88(sp)
    stb     r6, 0x89(sp)
    stw     r5, 0x8c(sp)
    stfs    f0, 0x6c(sp)
    stfs    f0, 0x70(sp)
    stfs    f0, 0x74(sp)
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x800bb638
    lwz     r4, 0x74(r31)
    rlwinm. r0, r3, 0, 24, 24
    lwz     r3, 0x4(r4)
    lwz     r3, 0x58(r3)
    lfs     f0, 0x3c(r3)
    stfs    f0, 0x60(sp)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x64(sp)
    lwz     r3, 0x4(r4)
    lwz     r3, 0x58(r3)
    lfs     f0, 0x5c(r3)
    stfs    f0, 0x68(sp)
    beq-    branch_0x800bb620
    b       branch_0x800bb624

branch_0x800bb620:
    mr      r6, r5
branch_0x800bb624:
    cmpwi   r6, 0x0
    bne-    branch_0x800bb678
    li      r0, 0x0
    stb     r0, 0x89(sp)
    b       branch_0x800bb678

branch_0x800bb638:
    rlwinm. r0, r3, 0, 24, 24
    lwz     r4, 0x10(r31)
    lwz     r3, 0x14(r31)
    stw     r4, 0x60(sp)
    stw     r3, 0x64(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x68(sp)
    beq-    branch_0x800bb65c
    b       branch_0x800bb660

branch_0x800bb65c:
    mr      r6, r5
branch_0x800bb660:
    cmpwi   r6, 0x0
    bne-    branch_0x800bb678
    li      r0, 0x0
    stb     r0, 0x89(sp)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x64(sp)
branch_0x800bb678:
    lwz     r0, 0x60(sp)
    mr      r3, r31
    lwz     r4, 0x64(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x68(sp)
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    lfs     f0, 0xb8(r31)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x78(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    stb     r3, 0x88(sp)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x80(sp)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x800bb6dc
    lwz     r5, 0x4c(r31)
    addi    r4, sp, 0x6c
    lwz     r3, R13Off_m0x6100(r13)
    bl      forceRequest__19TMBindShadowManagerFRC20TCircleShadowRequestUl
    b       branch_0x800bb6ec

branch_0x800bb6dc:
    lwz     r5, 0x4c(r31)
    addi    r4, sp, 0x6c
    lwz     r3, R13Off_m0x6100(r13)
    bl      request__19TMBindShadowManagerFRC20TCircleShadowRequestUl
branch_0x800bb6ec:
    lwz     r0, 0xf0(r31)
    andi.   r0, r0, 0x204
    bne-    branch_0x800bb740
    lwz     r0, 0x4c(r31)
    rlwinm. r0, r0, 0, 1, 1
    beq-    branch_0x800bb70c
    li      r0, 0x1
    b       branch_0x800bb710

branch_0x800bb70c:
    li      r0, 0x0
branch_0x800bb710:
    clrlwi. r0, r0, 24
    bne-    branch_0x800bb740
    lwz     r5, 0x10(r31)
    addi    r4, sp, 0x54
    lwz     r0, 0x14(r31)
    lwz     r3, R13Off_m0x6138(r13)
    stw     r5, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x5c(sp)
    lfs     f1, 0xb8(r31)
    bl      request__16TQuestionManagerFQ29JGeometry8TVec3_f_f
branch_0x800bb740:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl calcRootMatrix__9TTamaNokoFv
calcRootMatrix__9TTamaNokoFv: # 0x800bb754
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x10
    bne-    branch_0x800bb77c
    li      r0, 0x1
    b       branch_0x800bb780

branch_0x800bb77c:
    li      r0, 0x0
branch_0x800bb780:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bb7d8
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x185
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800bb7d8
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
branch_0x800bb7d8:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0xb
    bne-    branch_0x800bb7ec
    li      r0, 0x1
    b       branch_0x800bb7f0

branch_0x800bb7ec:
    li      r0, 0x0
branch_0x800bb7f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bb864
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x6184(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800bb864
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x185
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800bb864
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
branch_0x800bb864:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800bb878
    li      r0, 0x1
    b       branch_0x800bb87c

branch_0x800bb878:
    li      r0, 0x0
branch_0x800bb87c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bb9d4
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x61b8(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    bne-    branch_0x800bb8bc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6180(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800bb8d4
branch_0x800bb8bc:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x11
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800bb8d4:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x617c(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800bb9d4
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x701
    beq-    branch_0x800bb918
    cmplwi  r0, 0x4701
    beq-    branch_0x800bb918
    cmplwi  r0, 0x8701
    beq-    branch_0x800bb918
    cmplwi  r0, 0xc701
    bne-    branch_0x800bb920
branch_0x800bb918:
    li      r0, 0x1
    b       branch_0x800bb924

branch_0x800bb920:
    li      r0, 0x0
branch_0x800bb924:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bb938
    mr      r3, r31
    bl      landEffect__9TTamaNokoFv
    b       branch_0x800bb9d4

branch_0x800bb938:
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x7
    lfs     f1, -0x61b4(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x8
    li      r5, 0x1
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xb6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800bb998
    lfs     f0, -0x61a8(r2)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x800bb998:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xb7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800bb9d4
    lfs     f0, -0x61a8(r2)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x800bb9d4:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x7
    bne-    branch_0x800bb9e8
    li      r0, 0x1
    b       branch_0x800bb9ec

branch_0x800bb9e8:
    li      r0, 0x0
branch_0x800bb9ec:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bbab8
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6178(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800bba18
    mr      r3, r31
    bl      landEffect__9TTamaNokoFv
branch_0x800bba18:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6174(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800bbab8
    lfs     f1, -0x6188(r2)
    addi    r4, sp, 0x38
    lfs     f0, 0x14(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x38(sp)
    cmplwi  r3, 0x0
    beq-    branch_0x800bbab8
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x800bba8c
    cmplwi  r3, 0x101
    beq-    branch_0x800bba8c
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x800bba8c
    cmplwi  r3, 0x4104
    bne-    branch_0x800bba94
branch_0x800bba8c:
    li      r0, 0x1
    b       branch_0x800bba98

branch_0x800bba94:
    li      r0, 0x0
branch_0x800bba98:
    clrlwi. r0, r0, 24
    bne-    branch_0x800bbab8
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x11
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800bbab8:
    lbz     r0, R13Off_m0x6ac0(r13)
    extsb.  r0, r0
    bne-    branch_0x800bbafc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTamaNokoSleep@h
    stw     r0, R13Off_m0x6abc(r13)
    addi    r0, r3, __vvt__19TNerveTamaNokoSleep@l
    lis     r4, __dt__19TNerveTamaNokoSleepFv@ha
    stw     r0, R13Off_m0x6abc(r13)
    lis     r3, unk_803f19e0@h
    addi    r5, r3, unk_803f19e0@l
    addi    r4, r4, __dt__19TNerveTamaNokoSleepFv@l
    addi    r3, r13, R13Off_m0x6abc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ac0(r13)
branch_0x800bbafc:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6abc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800bbb60
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x124
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800bbb60
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
branch_0x800bbb60:
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl doKeepDistance__9TTamaNokoFv
doKeepDistance__9TTamaNokoFv: # 0x800bbb7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x6ac0(r13)
    extsb.  r0, r0
    bne-    branch_0x800bbbd4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTamaNokoSleep@h
    stw     r0, R13Off_m0x6abc(r13)
    addi    r0, r3, __vvt__19TNerveTamaNokoSleep@l
    lis     r4, __dt__19TNerveTamaNokoSleepFv@ha
    stw     r0, R13Off_m0x6abc(r13)
    lis     r3, unk_803f19e0@h
    addi    r5, r3, unk_803f19e0@l
    addi    r4, r4, __dt__19TNerveTamaNokoSleepFv@l
    addi    r3, r13, R13Off_m0x6abc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ac0(r13)
branch_0x800bbbd4:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6abc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800bbbf0
    li      r3, 0x1
    b       branch_0x800bbbf4

branch_0x800bbbf0:
    li      r3, 0x0
branch_0x800bbbf4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl attackToMario__9TTamaNokoFv
attackToMario__9TTamaNokoFv: # 0x800bbc08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lbz     r0, 0x164(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800bbcb4
    lbz     r0, R13Off_m0x6ac0(r13)
    extsb.  r0, r0
    bne-    branch_0x800bbc6c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTamaNokoSleep@h
    stw     r0, R13Off_m0x6abc(r13)
    addi    r0, r3, __vvt__19TNerveTamaNokoSleep@l
    lis     r4, __dt__19TNerveTamaNokoSleepFv@ha
    stw     r0, R13Off_m0x6abc(r13)
    lis     r3, unk_803f19e0@h
    addi    r5, r3, unk_803f19e0@l
    addi    r4, r4, __dt__19TNerveTamaNokoSleepFv@l
    addi    r3, r13, R13Off_m0x6abc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ac0(r13)
branch_0x800bbc6c:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6abc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800bbcb4
    lbz     r0, 0x195(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800bbca8
    lfs     f1, -0x6170(r2)
    lfs     f0, 0x14(r31)
    lwz     r3, R13Off_m0x60b4(r13)
    fadds   f0, f1, f0
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x800bbcb4
branch_0x800bbca8:
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800bbcb4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl isHitValid__9TTamaNokoFUl
isHitValid__9TTamaNokoFUl: # 0x800bbcc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    cmplwi  r31, 0xb
    bne-    branch_0x800bbcec
    li      r3, 0x0
    b       branch_0x800bbd48

branch_0x800bbcec:
    lbz     r0, 0x195(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800bbd2c
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x7
    bne-    branch_0x800bbd0c
    li      r0, 0x1
    b       branch_0x800bbd10

branch_0x800bbd0c:
    li      r0, 0x0
branch_0x800bbd10:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bbd34
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x616c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800bbd34
branch_0x800bbd2c:
    li      r3, 0x0
    b       branch_0x800bbd48

branch_0x800bbd34:
    cmplwi  r31, 0x1
    bne-    branch_0x800bbd44
    li      r3, 0x1
    b       branch_0x800bbd48

branch_0x800bbd44:
    li      r3, 0x0
branch_0x800bbd48:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__9TTamaNokoFP9THitActorUl
receiveMessage__9TTamaNokoFP9THitActorUl: # 0x800bbd5c
    mflr    r0
    cmplwi  r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r3, 0x0
    bgt-    branch_0x800bbdc4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r5
    lwz     r12, 0x178(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800bbdbc
    li      r0, 0x0
    stb     r0, 0x184(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800bbdbc:
    li      r3, 0x1
    b       branch_0x800bbe9c

branch_0x800bbdc4:
    cmplwi  r5, 0xd
    bne-    branch_0x800bbdec
    li      r0, 0x0
    stb     r0, 0x13c(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
branch_0x800bbdec:
    cmplwi  r5, 0xf
    bne-    branch_0x800bbe98
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x61b8(r2)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r0, 0x160(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800bbe90
    li      r0, 0x1
    stw     r0, 0x160(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x800bbe90
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x18c(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x12c(r12)
    mtlr    r12
    blrl
branch_0x800bbe90:
    li      r3, 0x1
    b       branch_0x800bbe9c

branch_0x800bbe98:
    li      r3, 0x0
branch_0x800bbe9c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl changeByJuice__9TTamaNokoFv
changeByJuice__9TTamaNokoFv: # 0x800bbeb4
    li      r3, 0x0
    blr


.globl behaveToRelease__9TTamaNokoFv
behaveToRelease__9TTamaNokoFv: # 0x800bbebc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lbz     r0, 0x164(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800bbfcc
    lbz     r0, R13Off_m0x6aa0(r13)
    extsb.  r0, r0
    bne-    branch_0x800bbf20
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTamaNokoThrown@h
    stw     r0, R13Off_m0x6a9c(r13)
    addi    r0, r3, __vvt__20TNerveTamaNokoThrown@l
    lis     r4, __dt__20TNerveTamaNokoThrownFv@ha
    stw     r0, R13Off_m0x6a9c(r13)
    lis     r3, unk_803f1a10@h
    addi    r5, r3, unk_803f1a10@l
    addi    r4, r4, __dt__20TNerveTamaNokoThrownFv@l
    addi    r3, r13, R13Off_m0x6a9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6aa0(r13)
branch_0x800bbf20:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6a9c
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800bbfcc
    lbz     r0, R13Off_m0x6aa0(r13)
    extsb.  r0, r0
    bne-    branch_0x800bbf74
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__20TNerveTamaNokoThrown@h
    stw     r0, R13Off_m0x6a9c(r13)
    addi    r0, r4, __vvt__20TNerveTamaNokoThrown@l
    lis     r4, __dt__20TNerveTamaNokoThrownFv@ha
    stw     r0, R13Off_m0x6a9c(r13)
    lis     r5, unk_803f1a10@h
    addi    r4, r4, __dt__20TNerveTamaNokoThrownFv@l
    addi    r5, r5, unk_803f1a10@l
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6aa0(r13)
branch_0x800bbf74:
    addi    r6, r13, R13Off_m0x6a9c
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800bbfcc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800bbfc0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800bbfc0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800bbfc0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800bbfcc:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl behaveToTaken__9TTamaNokoFP9THitActor
behaveToTaken__9TTamaNokoFP9THitActor: # 0x800bbfe0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x6aa8(r13)
    extsb.  r0, r0
    bne-    branch_0x800bc038
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTamaNokoPickUp@h
    stw     r0, R13Off_m0x6aa4(r13)
    addi    r0, r3, __vvt__20TNerveTamaNokoPickUp@l
    lis     r4, __dt__20TNerveTamaNokoPickUpFv@ha
    stw     r0, R13Off_m0x6aa4(r13)
    lis     r3, unk_803f1a04@h
    addi    r5, r3, unk_803f1a04@l
    addi    r4, r4, __dt__20TNerveTamaNokoPickUpFv@l
    addi    r3, r13, R13Off_m0x6aa4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6aa8(r13)
branch_0x800bc038:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6aa4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800bc0e4
    lbz     r0, R13Off_m0x6aa8(r13)
    extsb.  r0, r0
    bne-    branch_0x800bc08c
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__20TNerveTamaNokoPickUp@h
    stw     r0, R13Off_m0x6aa4(r13)
    addi    r0, r4, __vvt__20TNerveTamaNokoPickUp@l
    lis     r4, __dt__20TNerveTamaNokoPickUpFv@ha
    stw     r0, R13Off_m0x6aa4(r13)
    lis     r5, unk_803f1a04@h
    addi    r4, r4, __dt__20TNerveTamaNokoPickUpFv@l
    addi    r5, r5, unk_803f1a04@l
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6aa8(r13)
branch_0x800bc08c:
    addi    r6, r13, R13Off_m0x6aa4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800bc0e4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800bc0d8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800bc0d8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800bc0d8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800bc0e4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl walkBehavior__9TTamaNokoFif
walkBehavior__9TTamaNokoFif: # 0x800bc0f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    fmr     f31, f1
    stfd    f30, 0x100(sp)
    stw     r31, 0xfc(sp)
    mr      r31, r3
    stw     r30, 0xf8(sp)
    mr      r30, r4
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x1bc(r3)
    mr      r3, r31
    stfs    f0, 0x144(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x30c(r3)
    addi    r3, r31, 0xf4
    stfs    f0, 0x140(r31)
    lwz     r4, 0xf4(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x800bc16c
    addi    r5, r4, 0x10
    b       branch_0x800bc170

branch_0x800bc16c:
    addi    r5, r3, 0x4
branch_0x800bc170:
    lwz     r4, 0x0(r5)
    addi    r3, sp, 0xdc
    lwz     r0, 0x4(r5)
    stw     r4, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xe4(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, 0xe0(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xe0(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xe4(sp)
    bl      PSVECMag
    lfs     f2, -0x61b8(r2)
    lfs     f1, 0xe4(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800bc1f0
    lfs     f0, 0xdc(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800bc1e8
    lfs     f30, -0x6184(r2)
    b       branch_0x800bc26c

branch_0x800bc1e8:
    lfs     f30, -0x6168(r2)
    b       branch_0x800bc26c

branch_0x800bc1f0:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800bc230
    lfs     f2, 0xdc(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x61b0(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6164(r2)
    stw     r0, 0xf4(sp)
    lis     r0, 0x4330
    stw     r0, 0xf0(sp)
    lfd     f1, 0xf0(sp)
    fsubs   f1, f1, f2
    fmuls   f30, f0, f1
    b       branch_0x800bc26c

branch_0x800bc230:
    fneg    f1, f1
    lfs     f2, 0xdc(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x61b0(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6164(r2)
    stw     r0, 0xf4(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6160(r2)
    stw     r0, 0xf0(sp)
    lfd     f2, 0xf0(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f30, f0, f1
branch_0x800bc26c:
    lfs     f0, -0x615c(r2)
    b       branch_0x800bc278

branch_0x800bc274:
    fsubs   f30, f30, f0
branch_0x800bc278:
    fcmpo   cr0, f30, f0
    cror    2, 1, 2
    beq+    branch_0x800bc274
    lfs     f1, -0x615c(r2)
    lfs     f0, -0x61b8(r2)
    b       branch_0x800bc294

branch_0x800bc290:
    fadds   f30, f30, f1
branch_0x800bc294:
    fcmpo   cr0, f30, f0
    blt+    branch_0x800bc290
    lfs     f0, -0x6160(r2)
    lfs     f1, 0x34(r31)
    fsubs   f2, f30, f0
    fadds   f3, f0, f30
    bl      MsWrap_f___Ffff_800bc5dc
    fsubs   f1, f30, f1
    lfs     f0, -0x61b8(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800bc2e0
    lfs     f0, 0x144(r31)
    fmuls   f0, f0, f31
    fcmpo   cr0, f1, f0
    ble-    branch_0x800bc2d4
    b       branch_0x800bc2d8

branch_0x800bc2d4:
    fmr     f0, f1
branch_0x800bc2d8:
    fmr     f2, f0
    b       branch_0x800bc300

branch_0x800bc2e0:
    lfs     f0, 0x144(r31)
    fneg    f0, f0
    fmuls   f0, f0, f31
    fcmpo   cr0, f1, f0
    ble-    branch_0x800bc2f8
    b       branch_0x800bc2fc

branch_0x800bc2f8:
    fmr     f1, f0
branch_0x800bc2fc:
    fmr     f2, f1
branch_0x800bc300:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x615c(r2)
    fadds   f1, f1, f2
    b       branch_0x800bc314

branch_0x800bc310:
    fsubs   f1, f1, f0
branch_0x800bc314:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x800bc310
    lfs     f0, -0x615c(r2)
    lfs     f2, -0x61b8(r2)
    b       branch_0x800bc330

branch_0x800bc32c:
    fadds   f1, f1, f0
branch_0x800bc330:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800bc32c
    cmpwi   r30, 0x5
    stfs    f1, 0x34(r31)
    beq-    branch_0x800bc3fc
    cmpwi   r30, 0x3
    beq-    branch_0x800bc3fc
    lwz     r0, 0x94(r31)
    addi    r3, sp, 0xc4
    lwz     r4, 0x98(r31)
    lfs     f1, -0x6158(r2)
    stw     r0, 0xd0(sp)
    lwz     r0, R13Off_m0x5eac(r13)
    stw     r4, 0xd4(sp)
    lwz     r6, R13Off_m0x5ea4(r13)
    lwz     r5, 0x9c(r31)
    lwz     r4, R13Off_m0x5ea8(r13)
    stw     r5, 0xd8(sp)
    lfs     f0, 0x34(r31)
    lfs     f3, 0x140(r31)
    fmuls   f0, f1, f0
    fmuls   f4, f3, f31
    fctiwz  f0, f0
    stfd    f0, 0xf0(sp)
    lwz     r5, 0xf4(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800bc5cc
    lfs     f2, 0xd0(sp)
    lfs     f0, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    fadds   f2, f2, f0
    lfs     f0, 0xcc(sp)
    stfs    f2, 0xd0(sp)
    lfs     f2, 0xd4(sp)
    fadds   f1, f2, f1
    stfs    f1, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lwz     r3, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0xd8(sp)
    stw     r0, 0x9c(r31)
branch_0x800bc3fc:
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r30, r3
    bne-    branch_0x800bc4b8
    lwz     r4, 0x8c(r31)
    lis     r3, unk_51eb851f@ha
    addi    r0, r3, unk_51eb851f@l
    lwz     r4, 0x20(r4)
    mulhw   r0, r0, r4
    srawi   r0, r0, 6
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xc8
    subf    r0, r0, r4
    cmpwi   r0, 0x1
    bne-    branch_0x800bc4b8
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x11c(r3)
    lfs     f0, 0x134(r31)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    ble-    branch_0x800bc4b8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xb
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    lwz     r3, 0x18(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800bc4ac
    stw     r0, 0x1c(r4)
branch_0x800bc4ac:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x800bc4b8:
    lwz     r0, 0x1c0(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x800bc5ac
    lbz     r0, R13Off_m0x6ac0(r13)
    extsb.  r0, r0
    bne-    branch_0x800bc508
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTamaNokoSleep@h
    stw     r0, R13Off_m0x6abc(r13)
    addi    r0, r3, __vvt__19TNerveTamaNokoSleep@l
    lis     r4, __dt__19TNerveTamaNokoSleepFv@ha
    stw     r0, R13Off_m0x6abc(r13)
    lis     r3, unk_803f19e0@h
    addi    r5, r3, unk_803f19e0@l
    addi    r4, r4, __dt__19TNerveTamaNokoSleepFv@l
    addi    r3, r13, R13Off_m0x6abc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ac0(r13)
branch_0x800bc508:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6abc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800bc5ac
    lwz     r3, 0x1c0(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c0(r31)
    lwz     r0, 0x1c0(r31)
    cmpwi   r0, 0x190
    ble-    branch_0x800bc5ac
    li      r0, 0x0
    stw     r0, 0x1c0(r31)
    lwz     r3, 0x8c(r31)
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x6a90(r13)
    extsb.  r0, r0
    bne-    branch_0x800bc588
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveTamaNokoHitWater@h
    stw     r0, R13Off_m0x6a8c(r13)
    addi    r0, r3, __vvt__22TNerveTamaNokoHitWater@l
    lis     r4, __dt__22TNerveTamaNokoHitWaterFv@ha
    stw     r0, R13Off_m0x6a8c(r13)
    lis     r3, unk_803f1a28@h
    addi    r5, r3, unk_803f1a28@l
    addi    r4, r4, __dt__22TNerveTamaNokoHitWaterFv@l
    addi    r3, r13, R13Off_m0x6a8c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6a90(r13)
branch_0x800bc588:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6a8c
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800bc5a0
    stw     r0, 0x1c(r4)
branch_0x800bc5a0:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x800bc5ac:
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lfd     f30, 0x100(sp)
    mtlr    r0
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    addi    sp, sp, 0x110
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_800bc5cc
set_f___Q29JGeometry8TVec3_f_Ffff_800bc5cc: # 0x800bc5cc
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl MsWrap_f___Ffff_800bc5dc
MsWrap_f___Ffff_800bc5dc: # 0x800bc5dc
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x800bc618
    fmr     f1, f2
    blr

branch_0x800bc5f0:
    b       branch_0x800bc5f8

branch_0x800bc5f4:
    fsubs   f1, f1, f0
branch_0x800bc5f8:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x800bc5f4
    b       branch_0x800bc60c

branch_0x800bc608:
    fadds   f1, f1, f0
branch_0x800bc60c:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800bc608
    blr

branch_0x800bc618:
    fsubs   f0, f3, f2
    b       branch_0x800bc5f8

branch_0x800bc620:
    blr


.globl behaveToWater__9TTamaNokoFP9THitActor
behaveToWater__9TTamaNokoFP9THitActor: # 0x800bc624
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x44(sp)
    li      r29, 0x1
    stw     r0, 0x160(r3)
    lis     r3, unk_803f19e0@h
    addi    r31, r3, unk_803f19e0@l
    stb     r29, 0x165(r30)
    lbz     r0, R13Off_m0x6ac0(r13)
    extsb.  r0, r0
    bne-    branch_0x800bc694
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTamaNokoSleep@h
    stw     r0, R13Off_m0x6abc(r13)
    addi    r0, r3, __vvt__19TNerveTamaNokoSleep@l
    lis     r3, __dt__19TNerveTamaNokoSleepFv@ha
    stw     r0, R13Off_m0x6abc(r13)
    addi    r4, r3, __dt__19TNerveTamaNokoSleepFv@l
    addi    r3, r13, R13Off_m0x6abc
    addi    r5, r31, 0x0
    bl      __register_global_object
    stb     r29, R13Off_m0x6ac0(r13)
branch_0x800bc694:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6abc
    lwz     r29, 0x14(r3)
    cmplw   r29, r0
    bne-    branch_0x800bc744
    lbz     r0, R13Off_m0x6a90(r13)
    extsb.  r0, r0
    bne-    branch_0x800bc6e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveTamaNokoHitWater@h
    stw     r0, R13Off_m0x6a8c(r13)
    addi    r0, r3, __vvt__22TNerveTamaNokoHitWater@l
    lis     r3, __dt__22TNerveTamaNokoHitWaterFv@ha
    stw     r0, R13Off_m0x6a8c(r13)
    addi    r4, r3, __dt__22TNerveTamaNokoHitWaterFv@l
    addi    r3, r13, R13Off_m0x6a8c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6a90(r13)
branch_0x800bc6e8:
    addi    r6, r13, R13Off_m0x6a8c
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800bc7e8
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800bc734
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800bc734
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800bc734:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800bc7e8

branch_0x800bc744:
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r29, r3
    bne-    branch_0x800bc7e8
    lbz     r0, R13Off_m0x6ab8(r13)
    extsb.  r0, r0
    bne-    branch_0x800bc790
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTamaNokoAttack@h
    stw     r0, R13Off_m0x6ab4(r13)
    addi    r0, r3, __vvt__20TNerveTamaNokoAttack@l
    lis     r3, __dt__20TNerveTamaNokoAttackFv@ha
    stw     r0, R13Off_m0x6ab4(r13)
    addi    r4, r3, __dt__20TNerveTamaNokoAttackFv@l
    addi    r3, r13, R13Off_m0x6ab4
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ab8(r13)
branch_0x800bc790:
    addi    r6, r13, R13Off_m0x6ab4
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800bc7e8
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800bc7dc
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800bc7dc
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800bc7dc:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800bc7e8:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl behaveToFindMario__9TTamaNokoFv
behaveToFindMario__9TTamaNokoFv: # 0x800bc804
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x6ab8(r13)
    extsb.  r0, r0
    bne-    branch_0x800bc85c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTamaNokoAttack@h
    stw     r0, R13Off_m0x6ab4(r13)
    addi    r0, r3, __vvt__20TNerveTamaNokoAttack@l
    lis     r4, __dt__20TNerveTamaNokoAttackFv@ha
    stw     r0, R13Off_m0x6ab4(r13)
    lis     r3, unk_803f19ec@h
    addi    r5, r3, unk_803f19ec@l
    addi    r4, r4, __dt__20TNerveTamaNokoAttackFv@l
    addi    r3, r13, R13Off_m0x6ab4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ab8(r13)
branch_0x800bc85c:
    addi    r5, r13, R13Off_m0x6ab4
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x800bc894
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x800bc894
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x800bc894:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl moveObject__9TTamaNokoFv
moveObject__9TTamaNokoFv: # 0x800bc8a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    bl      moveObject__12TWalkerEnemyFv
    lwz     r3, 0x8c(r30)
    lwz     r31, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r31, r3
    bne-    branch_0x800bc924
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0xa
    bne-    branch_0x800bc8ec
    li      r0, 0x1
    b       branch_0x800bc8f0

branch_0x800bc8ec:
    li      r0, 0x0
branch_0x800bc8f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bc924
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bc924
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x9
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800bc924:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl perform__9TTamaNokoFUlPQ26JDrama9TGraphics
perform__9TTamaNokoFUlPQ26JDrama9TGraphics: # 0x800bc93c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x19c(r29)
    lbz     r0, 0x34(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800bc98c
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800bc98c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl reset__9TTamaNokoFv
reset__9TTamaNokoFv: # 0x800bc9a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    li      r3, 0x0
    stb     r3, 0x194(r31)
    li      r0, 0x1
    stb     r3, 0x195(r31)
    stb     r3, 0x1b8(r31)
    stb     r0, 0x1b9(r31)
    lfs     f0, -0x6154(r2)
    stfs    f0, 0xb8(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1000
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMActorAndKeeper__9TTamaNokoFv
setMActorAndKeeper__9TTamaNokoFv: # 0x800bca00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800bca38
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800bca38:
    stw     r30, 0x78(r31)
    lis     r3, unk_8037e8f0@ha
    addi    r4, r3, unk_8037e8f0@l
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


.globl init__9TTamaNokoFP12TLiveManager
init__9TTamaNokoFP12TLiveManager: # 0x800bca6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, unk_10000018@h
    addi    r0, r3, unk_10000018@l
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    stw     r0, 0x150(r31)
    lbz     r0, R13Off_m0x6ac0(r13)
    extsb.  r0, r0
    bne-    branch_0x800bcae0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTamaNokoSleep@h
    stw     r0, R13Off_m0x6abc(r13)
    addi    r0, r3, __vvt__19TNerveTamaNokoSleep@l
    lis     r4, __dt__19TNerveTamaNokoSleepFv@ha
    stw     r0, R13Off_m0x6abc(r13)
    lis     r3, unk_803f19e0@h
    addi    r5, r3, unk_803f19e0@l
    addi    r4, r4, __dt__19TNerveTamaNokoSleepFv@l
    addi    r3, r13, R13Off_m0x6abc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ac0(r13)
branch_0x800bcae0:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    addi    r0, r13, R13Off_m0x6abc
    stw     r4, 0x8(r5)
    mr      r3, r31
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x198(r31)
    lha     r0, 0x7c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800bcb4c
    li      r30, 0x0
    b       branch_0x800bcb30

branch_0x800bcb2c:
    addi    r30, r30, 0x1
branch_0x800bcb30:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r30, 24
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x800bcb2c
branch_0x800bcb4c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl load__9TTamaNokoFR20JSUMemoryInputStream
load__9TTamaNokoFR20JSUMemoryInputStream: # 0x800bcb64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__9TTamaNokoFPCc
__ct__9TTamaNokoFPCc: # 0x800bcba4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, __vvt__9TTamaNoko@h
    addi    r3, r3, __vvt__9TTamaNoko@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stb     r4, 0x194(r31)
    stb     r4, 0x195(r31)
    stb     r4, 0x1b8(r31)
    stb     r0, 0x1b9(r31)
    stw     r4, 0x1c0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__16TTamaNokoManagerFv
createModelData__16TTamaNokoManagerFv: # 0x800bcc04
    mflr    r0
    lis     r4, entry_3142@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3142@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__16TTamaNokoManagerFv
createEnemyInstance__16TTamaNokoManagerFv: # 0x800bcc38
    mflr    r0
    li      r3, 0x1c4
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800bcc68
    lis     r3, unk_8037e920@ha
    addi    r4, r3, unk_8037e920@l
    addi    r3, r31, 0x0
    bl      __ct__9TTamaNokoFPCc
branch_0x800bcc68:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initSetEnemies__16TTamaNokoManagerFv
initSetEnemies__16TTamaNokoManagerFv: # 0x800bcc80
    mflr    r0
    lis     r4, unk_8037e92c@ha
    stw     r0, 0x4(sp)
    addi    r0, r4, unk_8037e92c@l
    stwu    sp, -0xe0(sp)
    stmw    r23, 0xbc(sp)
    addi    r31, r3, 0x0
    mr      r3, r0
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r28, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800bccd0
    addi    r3, r28, 0x0
    lis     r4, 0x1022
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800bccd0:
    lis     r4, unk_8037e954@ha
    lis     r3, __vvt__15TTamaNokoFlower@h
    addi    r27, r25, 0x0
    addi    r28, r4, unk_8037e954@l
    addi    r29, r3, __vvt__15TTamaNokoFlower@l
    li      r26, 0x0
    li      r30, 0x0
    b       branch_0x800bcd8c

branch_0x800bccf0:
    lwz     r4, 0x18(r31)
    li      r3, 0x38
    lwzx    r25, r4, r30
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800bcd80
    stw     r24, 0x84(sp)
    addi    r4, r25, 0x0
    addi    r6, r27, 0x0
    lwz     r3, 0x84(sp)
    addi    r8, r28, 0x0
    li      r5, 0x0
    li      r7, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
    lwz     r4, 0x84(sp)
    li      r0, 0x0
    li      r3, 0x98
    stw     r29, 0x0(r4)
    stb     r0, 0x1c(r4)
    stw     r0, 0x2c(r4)
    stw     r0, 0x30(r4)
    stb     r0, 0x34(r4)
    stb     r0, 0x35(r4)
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800bcd64
    lwz     r4, R13Off_m0x6044(r13)
    mr      r3, r23
    bl      __ct__9MAnmSoundFP6MSound
branch_0x800bcd64:
    lwz     r3, 0x84(sp)
    li      r4, 0x0
    li      r5, 0x1
    stw     r23, 0x2c(r3)
    lwz     r3, 0x2c(r3)
    lfs     f1, -0x61b8(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800bcd80:
    stw     r24, 0x19c(r25)
    addi    r26, r26, 0x1
    addi    r30, r30, 0x4
branch_0x800bcd8c:
    lwz     r0, 0x14(r31)
    cmpw    r26, r0
    blt+    branch_0x800bccf0
    lmw     r23, 0xbc(sp)
    lwz     r0, 0xe4(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl loadAfter__16TTamaNokoManagerFv
loadAfter__16TTamaNokoManagerFv: # 0x800bcdac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      loadAfter__18TSmallEnemyManagerFv
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r31, r3, 0x70
    lbz     r0, 0x70(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800bcdf4
    lis     r4, unk_8037e968@ha
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r4, unk_8037e968@l
    li      r5, 0x70
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x800bcdf4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__16TTamaNokoManagerFR20JSUMemoryInputStream
load__16TTamaNokoManagerFR20JSUMemoryInputStream: # 0x800bce08
    mflr    r0
    lis     r5, unk_8037e608@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r24, 0x18(sp)
    addi    r24, r3, 0x0
    addi    r30, r5, unk_8037e608@l
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x3e0
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800bd004
    stw     r25, 0x10(sp)
    addi    r4, r30, 0x384
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x398
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x398
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r27, r3, __vvt__10TParamT_l_@l
    stw     r27, 0x32c(r31)
    li      r0, 0x3c
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x33c(r31)
    addi    r26, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x3a8
    stw     r26, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x3a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x340(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6198(r2)
    addi    r3, r30, 0x3bc
    stfs    f0, 0x350(r31)
    stw     r28, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x3bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x354(r31)
    addi    r3, r30, 0x3c8
    lfs     f0, -0x6150(r2)
    stfs    f0, 0x364(r31)
    stw     r28, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x3c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x368(r31)
    addi    r3, r30, 0x3d8
    lfs     f0, -0x61a0(r2)
    stfs    f0, 0x378(r31)
    stw     r28, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x3d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x37c(r31)
    addi    r3, r30, 0x3ec
    lfs     f0, -0x614c(r2)
    stfs    f0, 0x38c(r31)
    stw     r28, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x3ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x390(r31)
    addi    r3, r30, 0x3fc
    lfs     f0, -0x6170(r2)
    stfs    f0, 0x3a0(r31)
    stw     r28, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x3fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a4(r31)
    addi    r3, r30, 0x410
    lfs     f0, -0x6148(r2)
    stfs    f0, 0x3b4(r31)
    stw     r28, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x410
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3b8(r31)
    li      r0, 0x1f4
    addi    r3, r30, 0x41c
    stw     r0, 0x3c8(r31)
    stw     r26, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x41c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3cc(r31)
    li      r0, 0x64
    mr      r3, r31
    stw     r0, 0x3dc(r31)
    stw     r26, 0x3cc(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x800bd004:
    stw     r25, 0x38(r24)
    lmw     r24, 0x18(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__16TTamaNokoManagerFPCc
__ct__16TTamaNokoManagerFPCc: # 0x800bd01c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__16TTamaNokoManager@h
    addi    r0, r3, __vvt__16TTamaNokoManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__15TTamaNokoFlowerFUlPQ26JDrama9TGraphics
perform__15TTamaNokoFlowerFUlPQ26JDrama9TGraphics: # 0x800bd058
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    stfd    f30, 0x148(sp)
    stfd    f29, 0x140(sp)
    stfd    f28, 0x138(sp)
    stfd    f27, 0x130(sp)
    stfd    f26, 0x128(sp)
    stfd    f25, 0x120(sp)
    stfd    f24, 0x118(sp)
    stfd    f23, 0x110(sp)
    stmw    r24, 0xf0(sp)
    addi    r27, r4, 0x0
    addi    r26, r3, 0x0
    addi    r28, r5, 0x0
    beq-    branch_0x800bd2b0
    lwz     r3, R13Off_m0x6048(r13)
    li      r0, 0x1
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x1
    beq-    branch_0x800bd0c0
    cmplwi  r3, 0x2
    beq-    branch_0x800bd0c0
    li      r0, 0x0
branch_0x800bd0c0:
    clrlwi. r0, r0, 24
    bne-    branch_0x800bd2b0
    lbz     r0, 0x35(r26)
    cmplwi  r0, 0x0
    beq-    branch_0x800bd26c
    lbz     r0, 0x1c(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x800bd26c
    cmplwi  r3, 0x3
    li      r0, 0x1
    beq-    branch_0x800bd0f8
    cmplwi  r3, 0x4
    beq-    branch_0x800bd0f8
    li      r0, 0x0
branch_0x800bd0f8:
    clrlwi. r0, r0, 24
    bne-    branch_0x800bd26c
    li      r0, 0x1
    stb     r0, 0x1c(r26)
    addi    r30, sp, 0xa0
    li      r29, 0x0
    lfs     f27, -0x61b8(r2)
    lis     r31, 0x4330
    lfs     f28, -0x6144(r2)
    lis     r24, 0x2000
    lfs     f29, -0x6158(r2)
    lfs     f30, -0x6140(r2)
    lfd     f31, -0x61b0(r2)
    lfs     f24, -0x61b4(r2)
    lfs     f25, -0x613c(r2)
    lfs     f26, -0x6138(r2)
branch_0x800bd138:
    addi    r0, r29, 0x1
    stfs    f27, 0xd0(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0xec(sp)
    addi    r4, sp, 0xd0
    addi    r3, r30, 0x0
    stw     r31, 0xe8(sp)
    mr      r5, r4
    lfd     f0, 0xe8(sp)
    stfs    f27, 0xd4(sp)
    fsubs   f0, f0, f31
    stfs    f28, 0xd8(sp)
    fmuls   f0, f30, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    fmuls   f0, f29, f0
    fctiwz  f0, f0
    stfd    f0, 0xe0(sp)
    lwz     r7, 0xe4(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    lfsx    f2, r6, r0
    fneg    f0, f1
    stfs    f2, 0xa0(sp)
    stfs    f27, 0xa4(sp)
    stfs    f1, 0xa8(sp)
    stfs    f27, 0xac(sp)
    stfs    f27, 0xb0(sp)
    stfs    f24, 0xb4(sp)
    stfs    f27, 0xb8(sp)
    stfs    f27, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    stfs    f27, 0xc4(sp)
    stfs    f2, 0xc8(sp)
    stfs    f27, 0xcc(sp)
    bl      PSMTXMultVec
    lwz     r7, 0x10(r26)
    addi    r4, r24, 0xe
    lfs     f0, 0xd0(sp)
    li      r5, 0x1
    lwz     r6, 0x10(r7)
    lwz     r0, 0x14(r7)
    lwz     r3, R13Off_m0x62b0(r13)
    stw     r6, 0x94(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x18(r7)
    stw     r0, 0x9c(sp)
    lfs     f1, 0x94(sp)
    lfs     f23, 0x98(sp)
    lfs     f3, 0x9c(sp)
    fadds   f1, f1, f0
    lfs     f0, 0xd8(sp)
    fmr     f2, f23
    fadds   f3, f3, f0
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr.     r25, r3
    beq-    branch_0x800bd260
    addi    r3, sp, 0xd0
    stfs    f23, 0x14(r25)
    mr      r4, r3
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0xd0(sp)
    lfs     f1, 0xd8(sp)
    fmuls   f0, f25, f0
    fmuls   f1, f25, f1
    stfs    f0, 0xac(r25)
    stfs    f26, 0xb0(r25)
    stfs    f1, 0xb4(r25)
    lwz     r0, 0xf0(r25)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r25)
branch_0x800bd260:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x5
    blt+    branch_0x800bd138
branch_0x800bd26c:
    lbz     r0, 0x35(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x800bd2b0
    lwz     r3, 0x18(r26)
    li      r4, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bd2b0
    lwz     r3, 0x18(r26)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800bd2b0
    li      r0, 0x1
    stb     r0, 0x35(r26)
    bl      reviveOneSunflower__9TNpcEventFv
branch_0x800bd2b0:
    rlwinm. r0, r27, 0, 30, 30
    beq-    branch_0x800bd34c
    lwz     r4, 0x10(r26)
    addi    r3, sp, 0x64
    lfs     f26, 0x18(r4)
    lfs     f25, 0x14(r4)
    lfs     f24, 0x10(r4)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f24, 0x70(sp)
    addi    r3, sp, 0x64
    stfs    f25, 0x80(sp)
    stfs    f26, 0x90(sp)
    lwz     r4, 0x18(r26)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r0, 0x2c(r26)
    cmplwi  r0, 0x0
    beq-    branch_0x800bd34c
    lwz     r0, 0x30(r26)
    cmplwi  r0, 0x0
    beq-    branch_0x800bd34c
    lwz     r3, 0x18(r26)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r8, 0x10(r26)
    addi    r4, r26, 0x20
    li      r5, 0x0
    lwz     r7, 0x10(r8)
    li      r6, 0x4
    lwz     r0, 0x14(r8)
    stw     r7, 0x20(r26)
    stw     r0, 0x24(r26)
    lwz     r0, 0x18(r8)
    stw     r0, 0x28(r26)
    lfs     f2, 0xc(r3)
    lfs     f1, 0x10(r3)
    lwz     r3, 0x2c(r26)
    bl      animeLoop__9MAnmSoundFP3VecffUlUc
branch_0x800bd34c:
    lwz     r3, R13Off_m0x6048(r13)
    li      r0, 0x1
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x800bd36c
    cmplwi  r3, 0x4
    beq-    branch_0x800bd36c
    li      r0, 0x0
branch_0x800bd36c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800bd3b8
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x800bd38c
    cmplwi  r3, 0x2
    beq-    branch_0x800bd38c
    li      r0, 0x0
branch_0x800bd38c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800bd3b8
    rlwinm. r0, r27, 0, 29, 29
    beq-    branch_0x800bd3a4
    lwz     r3, 0x18(r26)
    bl      viewCalc__6MActorFv
branch_0x800bd3a4:
    rlwinm. r0, r27, 0, 22, 22
    beq-    branch_0x800bd3c8
    lwz     r3, 0x18(r26)
    bl      entry__6MActorFv
    b       branch_0x800bd3c8

branch_0x800bd3b8:
    lwz     r3, 0x18(r26)
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x800bd3c8:
    lmw     r24, 0xf0(sp)
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lfd     f30, 0x148(sp)
    mtlr    r0
    lfd     f29, 0x140(sp)
    lfd     f28, 0x138(sp)
    lfd     f27, 0x130(sp)
    lfd     f26, 0x128(sp)
    lfd     f25, 0x120(sp)
    lfd     f24, 0x118(sp)
    lfd     f23, 0x110(sp)
    addi    sp, sp, 0x158
    blr


.globl forceKill__9TTamaNokoFv
forceKill__9TTamaNokoFv: # 0x800bd400
    blr


.globl __dt__9TTamaNokoFv
__dt__9TTamaNokoFv: # 0x800bd404
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800bd484
    lis     r3, __vvt__9TTamaNoko@h
    addi    r3, r3, __vvt__9TTamaNoko@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800bd474
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800bd474
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800bd474:
    extsh.  r0, r31
    ble-    branch_0x800bd484
    mr      r3, r30
    bl      __dl__FPv
branch_0x800bd484:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TTamaNokoManagerFv
__dt__16TTamaNokoManagerFv: # 0x800bd4a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800bd4f8
    lis     r3, __vvt__16TTamaNokoManager@h
    addi    r0, r3, __vvt__16TTamaNokoManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x800bd4e8
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800bd4e8:
    extsh.  r0, r31
    ble-    branch_0x800bd4f8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800bd4f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TTamaNokoFlowerFv
__dt__15TTamaNokoFlowerFv: # 0x800bd514
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800bd57c
    lis     r3, __vvt__15TTamaNokoFlower@h
    addi    r0, r3, __vvt__15TTamaNokoFlower@l
    stw     r0, 0x0(r30)
    beq-    branch_0x800bd56c
    lis     r3, __vvt__12TSharedParts@ha
    addi    r0, r3, __vvt__12TSharedParts@l
    stw     r0, 0x0(r30)
    beq-    branch_0x800bd56c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800bd56c:
    extsh.  r0, r31
    ble-    branch_0x800bd57c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800bd57c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_tamaNoko_cpp
__sinit_tamaNoko_cpp: # 0x800bd598
    mflr    r0
    lis     r3, unk_803f19e0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f19e0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd5e0
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x800bd5e0:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd610
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x800bd610:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd640
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x800bd640:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd670
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x800bd670:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd6a0
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x800bd6a0:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd6d0
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x800bd6d0:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd700
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x800bd700:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd730
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x800bd730:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd760
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x800bd760:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd790
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x800bd790:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd7c0
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x800bd7c0:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd7f0
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x800bd7f0:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd820
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x800bd820:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd850
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x800bd850:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800bd880
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x800bd880:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_800bd894
unk_800bd894: # 0x800bd894
    addi    r3, r3, -0x20
    b       __dt__9TTamaNokoFv

