
.globl stopAnmSound__10TLiveActorFv
stopAnmSound__10TLiveActorFv: # 0x80217954
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x80(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80217980
    lwz     r0, 0x84(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80217980
    mr      r3, r4
    bl      stop__13JAIAnimeSoundFv
branch_0x80217980:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getBasNameTable__10TLiveActorCFv
getBasNameTable__10TLiveActorCFv: # 0x80217990
    li      r3, 0x0
    blr


.globl setCurAnmSound__10TLiveActorFv
setCurAnmSound__10TLiveActorFv: # 0x80217998
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, 0x74(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80217a04
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    mr.     r31, r3
    blt-    branch_0x80217a04
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x802179f8
    li      r0, 0x0
    b       branch_0x80217a00

branch_0x802179f8:
    slwi    r0, r31, 2
    lwzx    r0, r3, r0
branch_0x80217a00:
    mr      r30, r0
branch_0x80217a04:
    lwz     r0, 0x80(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x80217a30
    lis     r3, unk_8039d088@ha
    lwz     r6, 0x4(r29)
    lis     r4, unk_8039d098@ha
    crxor   6, 6, 6
    addi    r5, r4, unk_8039d098@l
    addi    r3, r3, unk_8039d088@l
    li      r4, 0x386
    bl      OSPanic
branch_0x80217a30:
    stw     r30, 0x84(r29)
    lwz     r3, 0x84(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80217a5c
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x80(r29)
    lfs     f1, -0x1958(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x80217a70

branch_0x80217a5c:
    lwz     r3, 0x80(r29)
    li      r4, 0x0
    lfs     f1, -0x1958(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x80217a70:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl setAnmSound__10TLiveActorFPCc
setAnmSound__10TLiveActorFPCc: # 0x80217a8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r0, 0x80(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80217ad4
    lis     r3, unk_8039d088@ha
    lwz     r6, 0x4(r30)
    lis     r4, unk_8039d098@ha
    crxor   6, 6, 6
    addi    r5, r4, unk_8039d098@l
    addi    r3, r3, unk_8039d088@l
    li      r4, 0x386
    bl      OSPanic
branch_0x80217ad4:
    stw     r31, 0x84(r30)
    lwz     r3, 0x84(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80217b04
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r0, r3
    lwz     r3, 0x80(r30)
    lfs     f1, -0x1958(r2)
    mr      r4, r0
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x80217b18

branch_0x80217b04:
    lwz     r3, 0x80(r30)
    li      r4, 0x0
    lfs     f1, -0x1958(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x80217b18:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl updateAnmSound__10TLiveActorFv
updateAnmSound__10TLiveActorFv: # 0x80217b30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x80(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80217b84
    lwz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80217b84
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f2, 0xc(r3)
    addi    r4, r31, 0x10
    lfs     f1, 0x10(r3)
    li      r5, 0x0
    lwz     r3, 0x80(r31)
    li      r6, 0x4
    bl      animeLoop__9MAnmSoundFP3VecffUlUc
branch_0x80217b84:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initAnmSound__10TLiveActorFv
initAnmSound__10TLiveActorFv: # 0x80217b98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    lwz     r0, 0x80(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80217c90
    lwz     r0, 0x4c(r31)
    rlwinm. r0, r0, 0, 5, 5
    beq-    branch_0x80217bd0
    li      r0, 0x1
    b       branch_0x80217bd4

branch_0x80217bd0:
    li      r0, 0x0
branch_0x80217bd4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80217c5c
    li      r3, 0x9c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80217c54
    lwz     r4, R13Off_m0x6044(r13)
    mr      r3, r30
    bl      __ct__9MAnmSoundFP6MSound
    lis     r3, __vvt__12MAnmSoundNPC@ha
    addi    r0, r3, __vvt__12MAnmSoundNPC@l
    stw     r0, 0x94(r30)
    lis     r3, unk_0019660d@h
    addi    r0, r3, unk_0019660d@l
    lwz     r3, R13Off_m0x5d80(r13)
    lfs     f0, -0x1950(r2)
    mullw   r3, r3, r0
    lfs     f2, -0x1954(r2)
    addis   r3, r3, 0x3c6f
    addi    r0, r3, -0xca1
    stw     r0, R13Off_m0x5d80(r13)
    lwz     r0, R13Off_m0x5d80(r13)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x2c(sp)
    lfs     f1, 0x2c(sp)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    stb     r0, 0x98(r30)
branch_0x80217c54:
    stw     r30, 0x80(r31)
    b       branch_0x80217c7c

branch_0x80217c5c:
    li      r3, 0x98
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80217c78
    lwz     r4, R13Off_m0x6044(r13)
    mr      r3, r30
    bl      __ct__9MAnmSoundFP6MSound
branch_0x80217c78:
    stw     r30, 0x80(r31)
branch_0x80217c7c:
    lwz     r3, 0x80(r31)
    li      r4, 0x0
    lfs     f1, -0x1958(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x80217c90:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl getTakingMtx__10TLiveActorFv
getTakingMtx__10TLiveActorFv: # 0x80217ca8
    lwz     r3, 0x74(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80217cbc
    li      r3, 0x0
    blr

branch_0x80217cbc:
    lwz     r3, 0x4(r3)
    addi    r3, r3, 0x20
    blr


.globl getFocalPoint__10TLiveActorCFv
getFocalPoint__10TLiveActorCFv: # 0x80217cc8
    lwz     r5, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r5, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x18(r4)
    stw     r0, 0x8(r3)
    blr


.globl getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_: # 0x80217ce4
    lwz     r6, 0x74(r3)
    cmplwi  r6, 0x0
    bne-    branch_0x80217d10
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r3)
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x18(r3)
    li      r3, -0x1
    stw     r0, 0x8(r5)
    blr

branch_0x80217d10:
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80217d3c
    lwz     r6, 0x10(r3)
    lwz     r0, 0x14(r3)
    stw     r6, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x18(r3)
    mr      r3, r4
    stw     r0, 0x8(r5)
    blr

branch_0x80217d3c:
    lwz     r3, 0x4(r6)
    mulli   r0, r4, 0x30
    lwz     r6, 0x58(r3)
    addi    r3, r4, 0x0
    add     r4, r6, r0
    lfs     f2, 0x2c(r4)
    lfs     f1, 0x1c(r4)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x0(r5)
    stfs    f1, 0x4(r5)
    stfs    f2, 0x8(r5)
    blr


.globl hasMapCollision__10TLiveActorCFv
hasMapCollision__10TLiveActorCFv: # 0x80217d6c
    lwz     r0, 0xec(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80217d80
    li      r3, 0x1
    blr

branch_0x80217d80:
    li      r3, 0x0
    blr


.globl getGravityY__10TLiveActorCFv
getGravityY__10TLiveActorCFv: # 0x80217d88
    lfs     f1, 0xcc(r3)
    blr


.globl calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff: # 0x80217d90
    mflr    r0
    addi    r4, r4, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    addi    r3, r5, 0x0
    lfs     f3, -0x194c(r2)
    addi    r5, sp, 0x24
    bl      SMSCalcJumpVelocityY__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fffPQ29JGeometry8TVec3_f_
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r3, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x8(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl performOnlyDraw__10TLiveActorFUlPQ26JDrama9TGraphics
performOnlyDraw__10TLiveActorFUlPQ26JDrama9TGraphics: # 0x80217de4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r0, 0xf0(r3)
    andi.   r0, r0, 0x201
    bne-    branch_0x80217ea0
    lwz     r0, 0x74(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80217ea0
    rlwinm. r31, r29, 0, 29, 29
    beq-    branch_0x80217e40
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xd4(r12)
    mtlr    r12
    blrl
branch_0x80217e40:
    lwz     r0, 0xf0(r28)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x80217ea0
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x80217e70
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r28)
    bl      calc__6MActorFv
branch_0x80217e70:
    cmplwi  r31, 0x0
    beq-    branch_0x80217e80
    lwz     r3, 0x74(r28)
    bl      viewCalc__6MActorFv
branch_0x80217e80:
    rlwinm. r0, r29, 0, 22, 22
    beq-    branch_0x80217ea0
    mr      r3, r28
    lwz     r12, 0x0(r28)
    mr      r4, r30
    lwz     r12, 0xd8(r12)
    mtlr    r12
    blrl
branch_0x80217ea0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl perform__10TLiveActorFUlPQ26JDrama9TGraphics
perform__10TLiveActorFUlPQ26JDrama9TGraphics: # 0x80217ec0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0xf0(r3)
    andi.   r0, r0, 0x201
    bne-    branch_0x80217fb4
    clrlwi. r0, r28, 31
    beq-    branch_0x80217f04
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
branch_0x80217f04:
    rlwinm. r31, r28, 0, 30, 30
    beq-    branch_0x80217f20
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xf4(r12)
    mtlr    r12
    blrl
branch_0x80217f20:
    lwz     r3, 0x74(r27)
    cmplwi  r3, 0x0
    beq-    branch_0x80217fb4
    cmplwi  r31, 0x0
    beq-    branch_0x80217f38
    bl      frameUpdate__6MActorFv
branch_0x80217f38:
    rlwinm. r30, r28, 0, 29, 29
    beq-    branch_0x80217f54
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xd4(r12)
    mtlr    r12
    blrl
branch_0x80217f54:
    lwz     r0, 0xf0(r27)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x80217fb4
    cmplwi  r31, 0x0
    beq-    branch_0x80217f84
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r27)
    bl      calc__6MActorFv
branch_0x80217f84:
    cmplwi  r30, 0x0
    beq-    branch_0x80217f94
    lwz     r3, 0x74(r27)
    bl      viewCalc__6MActorFv
branch_0x80217f94:
    rlwinm. r0, r28, 0, 22, 22
    beq-    branch_0x80217fb4
    mr      r3, r27
    lwz     r12, 0x0(r27)
    mr      r4, r29
    lwz     r12, 0xd8(r12)
    mtlr    r12
    blrl
branch_0x80217fb4:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl drawObject__10TLiveActorFPQ26JDrama9TGraphics
drawObject__10TLiveActorFPQ26JDrama9TGraphics: # 0x80217fc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 30
    bne-    branch_0x8021800c
    lwz     r3, 0x74(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x80217ff8
    b       branch_0x8021800c

branch_0x80217ff8:
    lwz     r4, 0xc4(r31)
    addi    r5, r31, 0x10
    bl      setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x74(r31)
    bl      entry__6MActorFv
branch_0x8021800c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl requestShadow__10TLiveActorFv
requestShadow__10TLiveActorFv: # 0x80218020
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r3, 0xf0(r3)
    andi.   r0, r3, 0xb
    bne-    branch_0x80218178
    andi.   r0, r3, 0x204
    beq-    branch_0x80218050
    rlwinm. r0, r3, 0, 21, 21
    beq-    branch_0x80218124
branch_0x80218050:
    lfs     f0, -0x1958(r2)
    li      r4, 0x0
    li      r5, 0x1
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    stfs    f0, 0x34(sp)
    stb     r4, 0x38(sp)
    stb     r5, 0x39(sp)
    stw     r4, 0x3c(sp)
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x24(sp)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x802180ac
    b       branch_0x802180b0

branch_0x802180ac:
    mr      r5, r4
branch_0x802180b0:
    cmpwi   r5, 0x0
    bne-    branch_0x802180c8
    lfs     f0, 0xc8(r31)
    li      r0, 0x0
    stfs    f0, 0x20(sp)
    stb     r0, 0x39(sp)
branch_0x802180c8:
    lfs     f0, 0xb8(r31)
    mr      r3, r31
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x28(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    stb     r3, 0x38(sp)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x30(sp)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x80218114
    lwz     r5, 0x4c(r31)
    addi    r4, sp, 0x1c
    lwz     r3, R13Off_m0x6100(r13)
    bl      forceRequest__19TMBindShadowManagerFRC20TCircleShadowRequestUl
    b       branch_0x80218124

branch_0x80218114:
    lwz     r5, 0x4c(r31)
    addi    r4, sp, 0x1c
    lwz     r3, R13Off_m0x6100(r13)
    bl      request__19TMBindShadowManagerFRC20TCircleShadowRequestUl
branch_0x80218124:
    lwz     r0, 0xf0(r31)
    andi.   r0, r0, 0x204
    bne-    branch_0x80218178
    lwz     r0, 0x4c(r31)
    rlwinm. r0, r0, 0, 1, 1
    beq-    branch_0x80218144
    li      r0, 0x1
    b       branch_0x80218148

branch_0x80218144:
    li      r0, 0x0
branch_0x80218148:
    clrlwi. r0, r0, 24
    bne-    branch_0x80218178
    lwz     r5, 0x10(r31)
    addi    r4, sp, 0x10
    lwz     r0, 0x14(r31)
    lwz     r3, R13Off_m0x6138(r13)
    stw     r5, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(sp)
    lfs     f1, 0xb8(r31)
    bl      request__16TQuestionManagerFQ29JGeometry8TVec3_f_f
branch_0x80218178:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl moveObject__10TLiveActorFv
moveObject__10TLiveActorFv: # 0x8021818c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x1958(r2)
    mr      r3, r31
    stfs    f0, 0x9c(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0x94(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      calcRideMomentum__10TLiveActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xcc(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x10(r31)
    mr      r3, r31
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, 0xa0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, 0xa4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x38(r31)
    lfs     f0, 0xa8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x38(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xd4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802182dc
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x802182a4
    lwz     r3, 0xd4(r31)
    addi    r4, sp, 0xc
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x802182c0

branch_0x802182a4:
    lwz     r3, 0xd4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0xc
    bl      PSMTXCopy
branch_0x802182c0:
    addi    r3, sp, 0xc
    addi    r4, r3, 0x0
    bl      PSMTXInverse
    addi    r3, sp, 0xc
    addi    r4, r31, 0x10
    addi    r5, r31, 0xd8
    bl      PSMTXMultVec
branch_0x802182dc:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl setGroundCollision__10TLiveActorFv
setGroundCollision__10TLiveActorFv: # 0x802182f0
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0xec(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80218334
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80218334
    lwz     r12, 0x0(r3)
    addi    r4, r6, 0x10
    addi    r5, r6, 0x30
    lwz     r12, 0xc(r12)
    addi    r6, r6, 0x24
    mtlr    r12
    blrl
branch_0x80218334:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getShadowType__10TLiveActorFv
getShadowType__10TLiveActorFv: # 0x80218344
    li      r3, 0x0
    blr


.globl receiveMessage__10TLiveActorFP9THitActorUl
receiveMessage__10TLiveActorFP9THitActorUl: # 0x8021834c
    li      r3, 0x0
    blr


.globl kill__10TLiveActorFv
kill__10TLiveActorFv: # 0x80218354
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x40
    stw     r0, 0xf0(r3)
    blr


.globl calcRootMatrix__10TLiveActorFv
calcRootMatrix__10TLiveActorFv: # 0x80218370
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    lfs     f2, -0x1948(r2)
    lfs     f0, 0x38(r3)
    lfs     f1, 0x34(r3)
    lfs     f3, 0x30(r3)
    fmuls   f0, f2, f0
    fmuls   f1, f2, f1
    lwz     r3, 0x74(r3)
    fmuls   f2, f2, f3
    fctiwz  f0, f0
    fctiwz  f4, f1
    fctiwz  f5, f2
    lwz     r31, 0x4(r3)
    stfd    f0, 0x20(sp)
    lfs     f3, 0x18(r30)
    stfd    f5, 0x30(sp)
    lfs     f2, 0x14(r30)
    addi    r3, r31, 0x20
    stfd    f4, 0x28(sp)
    lfs     f1, 0x10(r30)
    lwz     r4, 0x34(sp)
    lwz     r5, 0x2c(sp)
    lwz     r6, 0x24(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl control__10TLiveActorFv
control__10TLiveActorFv: # 0x80218414
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x90(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80218438
    lwz     r0, 0x4(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80218458
branch_0x80218438:
    lwz     r3, 0x8c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802184cc
    lwz     r12, 0x24(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802184cc

branch_0x80218458:
    lwz     r3, 0x8c(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8021848c
    cmplwi  r4, 0x0
    beq-    branch_0x802184cc
    cmpwi   r0, 0x0
    beq-    branch_0x802184cc
    mr      r3, r4
    lwz     r12, 0x5c(r4)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x802184cc

branch_0x8021848c:
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802184a4
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x802184b8
branch_0x802184a4:
    lwz     r12, 0x24(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802184cc

branch_0x802184b8:
    mr      r3, r4
    lwz     r12, 0x5c(r4)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802184cc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl bind__10TLiveActorFv
bind__10TLiveActorFv: # 0x802184dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x80218720
    lwz     r3, 0x88(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80218524
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x80218720

branch_0x80218524:
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    addi    r30, sp, 0x34
    stw     r4, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x34(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x194c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802185d4
    stfs    f0, 0xb0(r31)
branch_0x802185d4:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80218608
    lfs     f1, 0x30(sp)
    addi    r4, r31, 0xc4
    lfs     f0, 0xc0(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x2c(sp)
    lfs     f3, 0x34(sp)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    b       branch_0x8021862c

branch_0x80218608:
    lfs     f1, 0x30(sp)
    addi    r4, r31, 0xc4
    lfs     f0, 0xc0(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x2c(sp)
    lfs     f3, 0x34(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
branch_0x8021862c:
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x1950(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r31)
    lfs     f1, -0x1944(r2)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x30(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x802186b8
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80218670
    li      r0, 0x1
    b       branch_0x80218674

branch_0x80218670:
    li      r0, 0x0
branch_0x80218674:
    clrlwi. r0, r0, 24
    beq-    branch_0x80218690
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80218690:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lfs     f0, -0x1958(r2)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x30(sp)
    b       branch_0x802186c4

branch_0x802186b8:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x802186c4:
    lfs     f1, 0x30(sp)
    mr      r5, r30
    lfs     f0, 0xc0(r31)
    addi    r4, sp, 0x2c
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f1, f1, f0
    lfs     f2, 0xbc(r31)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r0, 0x2c(sp)
    addi    r3, sp, 0x10
    lwz     r5, 0x30(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x10(sp)
    lwz     r0, 0x34(sp)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x18(sp)
    stw     r0, 0x9c(r31)
branch_0x80218720:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl load__10TLiveActorFR20JSUMemoryInputStream
load__10TLiveActorFR20JSUMemoryInputStream: # 0x80218738
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stw     r31, 0x12c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x128(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x28
    li      r5, 0x100
    bl      readString__14JSUInputStreamFPcUs
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, sp, 0x28
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x28
    mtlr    r12
    blrl
    mr      r31, r3
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0xbc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x134(sp)
    lwz     r31, 0x12c(sp)
    lwz     r30, 0x128(sp)
    mtlr    r0
    addi    sp, sp, 0x130
    blr


.globl init__10TLiveActorFP12TLiveManager
init__10TLiveActorFP12TLiveManager: # 0x802187d0
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    bne-    branch_0x80218848
    lwz     r30, 0x3c(r31)
    cmplwi  r30, 0x0
    beq-    branch_0x80218838
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80218820
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80218820:
    stw     r29, 0x78(r31)
    li      r5, 0x0
    lwz     r4, 0xc(r30)
    lwz     r3, 0x78(r31)
    bl      createMActorFromDefaultBmd__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
branch_0x80218838:
    lwz     r3, R13Off_m0x70b0(r13)
    mr      r4, r31
    bl      registerAloneActor__10TConductorFP10TLiveActor
    b       branch_0x80218890

branch_0x80218848:
    stw     r4, 0x70(r31)
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8021886c
    lwz     r4, 0x70(r31)
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8021886c:
    stw     r29, 0x78(r31)
    mr      r4, r31
    lwz     r3, 0x70(r31)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    lwz     r3, 0x78(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      createMActorFromNthData__13TMActorKeeperFiUl
    stw     r3, 0x74(r31)
branch_0x80218890:
    lfs     f2, 0xc0(r31)
    mr      r3, r31
    lfs     f1, 0xbc(r31)
    li      r4, 0x0
    fmr     f4, f2
    fmr     f3, f1
    li      r5, 0x1
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 22, 20
    stw     r0, 0xf0(r31)
    lwz     r0, 0x80(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802189a0
    bne-    branch_0x802189a0
    lwz     r0, 0x4c(r31)
    rlwinm. r0, r0, 0, 5, 5
    beq-    branch_0x802188f0
    li      r0, 0x1
    b       branch_0x802188f4

branch_0x802188f0:
    li      r0, 0x0
branch_0x802188f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8021896c
    li      r3, 0x9c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80218964
    stw     r29, 0x3c(sp)
    lwz     r4, R13Off_m0x6044(r13)
    lwz     r3, 0x3c(sp)
    bl      __ct__9MAnmSoundFP6MSound
    lis     r3, __vvt__12MAnmSoundNPC@ha
    lwz     r30, 0x3c(sp)
    addi    r0, r3, __vvt__12MAnmSoundNPC@l
    stw     r0, 0x94(r30)
    addi    r3, r13, R13Off_m0x5d80
    bl      get__Q25JMath13TRandom_fast_Fv
    srwi    r0, r3, 9
    lfs     f0, -0x1950(r2)
    oris    r0, r0, 0x3f80
    lfs     f2, -0x1954(r2)
    stw     r0, 0x38(sp)
    lfs     f1, 0x38(sp)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stb     r0, 0x98(r30)
branch_0x80218964:
    stw     r29, 0x80(r31)
    b       branch_0x8021898c

branch_0x8021896c:
    li      r3, 0x98
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80218988
    lwz     r4, R13Off_m0x6044(r13)
    mr      r3, r29
    bl      __ct__9MAnmSoundFP6MSound
branch_0x80218988:
    stw     r29, 0x80(r31)
branch_0x8021898c:
    lwz     r3, 0x80(r31)
    li      r4, 0x0
    lfs     f1, -0x1958(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x802189a0:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl initLodAnm__10TLiveActorFPC12TLodAnmIndexif
initLodAnm__10TLiveActorFPC12TLodAnmIndexif: # 0x802189bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    stw     r28, 0x18(sp)
    lwz     r0, 0xd0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80218a24
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80218a20
    fmr     f1, f31
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      __ct__7TLodAnmFP10TLiveActorPC12TLodAnmIndexif
branch_0x80218a20:
    stw     r28, 0xd0(r29)
branch_0x80218a24:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl getRootJointMtx__10TLiveActorCFv
getRootJointMtx__10TLiveActorCFv: # 0x80218a48
    li      r3, 0x0
    blr


.globl getModel__10TLiveActorCFv
getModel__10TLiveActorCFv: # 0x80218a50
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    blr


.globl calcRideMomentum__10TLiveActorFv
calcRideMomentum__10TLiveActorFv: # 0x80218a5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    lbz     r0, 0xe8(r3)
    extsb.  r0, r0
    beq-    branch_0x80218c60
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xb4(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80218c58
    lwz     r3, 0xd4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80218ab8
    lwz     r4, 0xc4(r31)
    lwz     r0, 0x44(r4)
    cmplw   r3, r0
    beq-    branch_0x80218b58
branch_0x80218ab8:
    lwz     r3, 0xc4(r31)
    lwz     r0, 0x44(r3)
    stw     r0, 0xd4(r31)
    lwz     r3, 0xd4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80218b30
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80218af8
    lwz     r3, 0xd4(r31)
    addi    r4, sp, 0x24
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x80218b14

branch_0x80218af8:
    lwz     r3, 0xd4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x24
    bl      PSMTXCopy
branch_0x80218b14:
    addi    r3, sp, 0x24
    addi    r4, r3, 0x0
    bl      PSMTXInverse
    addi    r3, sp, 0x24
    addi    r4, r31, 0x10
    addi    r5, r31, 0xd8
    bl      PSMTXMultVec
branch_0x80218b30:
    lbz     r0, 0xe8(r31)
    extsb   r0, r0
    cmpwi   r0, 0x2
    blt-    branch_0x80218c60
    lwz     r3, 0xd4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80218c60
    lfs     f0, 0x34(r3)
    stfs    f0, 0xe4(r31)
    b       branch_0x80218c60

branch_0x80218b58:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80218b80
    lwz     r3, 0xd4(r31)
    addi    r4, sp, 0x68
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x80218b9c

branch_0x80218b80:
    lwz     r3, 0xd4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x68
    bl      PSMTXCopy
branch_0x80218b9c:
    addi    r3, sp, 0x68
    addi    r4, r31, 0xd8
    addi    r5, sp, 0x5c
    bl      PSMTXMultVec
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x94(r31)
    lfs     f0, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r31)
    lfs     f1, 0x98(r31)
    lfs     f0, 0x60(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0x64(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
    lbz     r0, 0xe8(r31)
    extsb   r0, r0
    cmpwi   r0, 0x2
    blt-    branch_0x80218c60
    lwz     r3, 0xd4(r31)
    lfs     f0, -0x1940(r2)
    lfs     f31, 0x34(r3)
    lfs     f1, 0xe4(r31)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_80218c78
    fsubs   f0, f31, f1
    lfs     f1, 0xa4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa4(r31)
    lwz     r3, 0xd4(r31)
    lfs     f0, 0x34(r3)
    stfs    f0, 0xe4(r31)
    b       branch_0x80218c60

branch_0x80218c58:
    li      r0, 0x0
    stw     r0, 0xd4(r31)
branch_0x80218c60:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    mtlr    r0
    addi    sp, sp, 0xa8
    blr


.globl MsWrap_f___Ffff_80218c78
MsWrap_f___Ffff_80218c78: # 0x80218c78
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x80218cb4
    fmr     f1, f2
    blr

branch_0x80218c8c:
    b       branch_0x80218c94

branch_0x80218c90:
    fsubs   f1, f1, f0
branch_0x80218c94:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x80218c90
    b       branch_0x80218ca8

branch_0x80218ca4:
    fadds   f1, f1, f0
branch_0x80218ca8:
    fcmpo   cr0, f1, f2
    blt+    branch_0x80218ca4
    blr

branch_0x80218cb4:
    fsubs   f0, f3, f2
    b       branch_0x80218c94

branch_0x80218cbc:
    blr


.globl belongToGround__10TLiveActorCFv
belongToGround__10TLiveActorCFv: # 0x80218cc0
    lwz     r4, 0xc4(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80218d38
    lhz     r0, 0x4(r4)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80218ce0
    li      r0, 0x1
    b       branch_0x80218ce4

branch_0x80218ce0:
    li      r0, 0x0
branch_0x80218ce4:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80218cf8
    li      r0, 0x0
    b       branch_0x80218cfc

branch_0x80218cf8:
    li      r0, 0x1
branch_0x80218cfc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80218d38
    lwz     r0, 0x44(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80218d38
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80218d24
    li      r0, 0x1
    b       branch_0x80218d28

branch_0x80218d24:
    li      r0, 0x0
branch_0x80218d28:
    cmpwi   r0, 0x0
    bne-    branch_0x80218d38
    li      r3, 0x1
    blr

branch_0x80218d38:
    li      r3, 0x0
    blr


.globl calcRidePos__10TLiveActorFv
calcRidePos__10TLiveActorFv: # 0x80218d40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r3, 0xd4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80218dc0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80218d88
    lwz     r3, 0xd4(r31)
    addi    r4, sp, 0xc
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x80218da4

branch_0x80218d88:
    lwz     r3, 0xd4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0xc
    bl      PSMTXCopy
branch_0x80218da4:
    addi    r3, sp, 0xc
    addi    r4, r3, 0x0
    bl      PSMTXInverse
    addi    r3, sp, 0xc
    addi    r4, r31, 0x10
    addi    r5, r31, 0xd8
    bl      PSMTXMultVec
branch_0x80218dc0:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __dt__10TLiveActorFv
__dt__10TLiveActorFv: # 0x80218dd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80218e54
    lis     r3, __vvt__10TLiveActor@ha
    addi    r3, r3, __vvt__10TLiveActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80218e44
    lis     r3, __vvt__10TTakeActor@ha
    addi    r3, r3, __vvt__10TTakeActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80218e44
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80218e44:
    extsh.  r0, r31
    ble-    branch_0x80218e54
    mr      r3, r30
    bl      __dl__FPv
branch_0x80218e54:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__10TLiveActorFPCc
__ct__10TLiveActorFPCc: # 0x80218e70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    mr      r3, r31
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__10TTakeActor@ha
    addi    r3, r3, __vvt__10TTakeActor@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__10TLiveActor@ha
    stw     r0, 0x20(r31)
    li      r6, 0x0
    addi    r5, r3, __vvt__10TLiveActor@l
    stw     r6, 0x68(r31)
    addi    r4, r5, 0x24
    li      r3, 0x1
    stw     r6, 0x6c(r31)
    li      r0, 0x100
    stw     r5, 0x0(r31)
    stw     r4, 0x20(r31)
    stw     r6, 0x70(r31)
    stw     r6, 0x74(r31)
    stw     r6, 0x78(r31)
    sth     r6, 0x7c(r31)
    stw     r6, 0x80(r31)
    stw     r6, 0x84(r31)
    stw     r6, 0x88(r31)
    stw     r6, 0x8c(r31)
    stw     r6, 0x90(r31)
    lfs     f1, -0x1958(r2)
    stfs    f1, 0x94(r31)
    stfs    f1, 0x98(r31)
    stfs    f1, 0x9c(r31)
    stfs    f1, 0xa0(r31)
    stfs    f1, 0xa4(r31)
    stfs    f1, 0xa8(r31)
    stfs    f1, 0xac(r31)
    stfs    f1, 0xb0(r31)
    stfs    f1, 0xb4(r31)
    lfs     f0, -0x193c(r2)
    stfs    f0, 0xb8(r31)
    lfs     f0, -0x1938(r2)
    stfs    f0, 0xbc(r31)
    lfs     f0, -0x1934(r2)
    stfs    f0, 0xc0(r31)
    stw     r6, 0xc4(r31)
    stfs    f1, 0xc8(r31)
    lfs     f0, -0x1930(r2)
    stfs    f0, 0xcc(r31)
    stw     r6, 0xd0(r31)
    stw     r6, 0xd4(r31)
    stfs    f1, 0xe4(r31)
    stb     r3, 0xe8(r31)
    stw     r6, 0xec(r31)
    stw     r0, 0xf0(r31)
    stfs    f1, 0xe0(r31)
    stfs    f1, 0xdc(r31)
    stfs    f1, 0xd8(r31)
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x8
    beq-    branch_0x80218f88
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2000
    stw     r0, 0xf0(r31)
branch_0x80218f88:
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __sinit_liveactor_cpp
__sinit_liveactor_cpp: # 0x80218fa0
    mflr    r0
    lis     r3, unk_803fb130@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fb130@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80218fe8
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80218fe8:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80219018
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80219018:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80219048
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80219048:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80219078
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80219078:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802190a8
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x802190a8:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802190d8
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x802190d8:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80219108
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80219108:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80219138
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80219138:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80219168
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80219168:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80219198
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80219198:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802191c8
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x802191c8:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802191f8
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x802191f8:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80219228
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80219228:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80219258
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80219258:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80219288
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80219288:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8021929c
unk_8021929c: # 0x8021929c
    addi    r3, r3, -0x20
    b       __dt__10TLiveActorFv

