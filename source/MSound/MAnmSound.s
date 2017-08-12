
.globl startAnimSound__12MAnmSoundNPCFPvUlPP8JAISoundP8JAIActorUc
startAnimSound__12MAnmSoundNPCFPvUlPP8JAISoundP8JAIActorUc: # 0x800129c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stmw    r26, 0x60(sp)
    mr      r26, r3
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    addi    r4, r27, 0x0
    lwz     r3, R13Off_m0x7164(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80012bfc
    lwz     r0, 0x80(r26)
    lwz     r31, 0x90(r26)
    slwi    r5, r0, 5
    add     r3, r31, r5
    lwz     r3, 0x18(r3)
    clrrwi. r4, r3, 16
    beq-    branch_0x80012ae8
    clrrwi. r0, r4, 24
    beq-    branch_0x80012a64
    lwz     r6, 0x84(r26)
    srwi    r3, r3, 24
    addi    r7, r3, 0x1
    cmplwi  r6, 0x0
    beq-    branch_0x80012a64
    lbz     r3, 0x98(r26)
    divwu   r0, r3, r7
    mullw   r0, r0, r7
    subf    r0, r0, r3
    add     r3, r6, r0
    divwu   r0, r3, r7
    mullw   r0, r0, r7
    subf.   r0, r0, r3
    bne-    branch_0x80012bfc
branch_0x80012a64:
    rlwinm. r0, r4, 0, 8, 15
    beq-    branch_0x80012ae8
    lis     r3, unk_0019660d@h
    lwz     r4, R13Off_m0x5d80(r13)
    addi    r0, r3, unk_0019660d@l
    lfd     f3, -0x7d20(r2)
    mullw   r3, r4, r0
    lfs     f0, -0x7d38(r2)
    add     r4, r31, r5
    addis   r3, r3, 0x3c6f
    lwz     r4, 0x18(r4)
    addi    r0, r3, -0xca1
    stw     r0, R13Off_m0x5d80(r13)
    extrwi  r3, r4, 8, 8
    addi    r0, r3, 0x1
    lwz     r3, R13Off_m0x5d80(r13)
    clrlwi  r0, r0, 24
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    srwi    r3, r3, 9
    oris    r3, r3, 0x3f80
    stw     r0, 0x58(sp)
    stw     r3, 0x44(sp)
    lfd     f2, 0x58(sp)
    lfs     f1, 0x44(sp)
    fsubs   f0, f1, f0
    fsubs   f1, f2, f3
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r0, 0x54(sp)
    clrlwi. r0, r0, 24
    bne-    branch_0x80012bfc
branch_0x80012ae8:
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    bl      checkMonoSound__Q214MSoundSESystem8MSoundSEFUlP8JAIActor
    clrlwi. r0, r3, 24
    beq-    branch_0x80012bfc
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r7, r30, 0x0
    li      r6, 0x0
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80012bfc
    lwz     r0, 0x80(r26)
    slwi    r0, r0, 5
    add     r3, r31, r0
    lwz     r0, 0x18(r3)
    rlwinm. r0, r0, 0, 16, 16
    bne-    branch_0x80012bfc
    lfs     f31, -0x7d38(r2)
    lwz     r27, 0x4(r29)
    lwz     r3, R13Off_m0x7164(r13)
    bl      cameraLooksAtMario__6MSoundFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80012bac
    lwz     r3, R13Off_m0x7164(r13)
    lfs     f1, 0x4(r27)
    lwz     r29, 0xb0(r3)
    lfs     f2, -0x7d34(r2)
    lfs     f0, 0x4(r29)
    fsubs   f1, f1, f0
    bl      powf
    lfs     f3, 0x0(r27)
    fmr     f29, f1
    lfs     f0, 0x0(r29)
    lfs     f2, -0x7d34(r2)
    fsubs   f1, f3, f0
    bl      powf
    lfs     f3, 0x8(r27)
    fmr     f30, f1
    lfs     f0, 0x8(r29)
    lfs     f2, -0x7d34(r2)
    fsubs   f1, f3, f0
    bl      powf
    fadds   f0, f30, f29
    fadds   f1, f1, f0
    bl      sqrtf__3stdFf
    b       branch_0x80012bb0

branch_0x80012bac:
    lfs     f1, -0x7d30(r2)
branch_0x80012bb0:
    lfs     f0, -0x7d30(r2)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80012be4
    lwz     r0, 0x80(r26)
    li      r4, 0x8
    lfs     f2, -0x7d2c(r2)
    slwi    r0, r0, 5
    lfs     f3, -0x7d28(r2)
    add     r3, r31, r0
    lwz     r0, 0x18(r3)
    extrwi  r3, r0, 3, 17
    bl      calcVolume__8MSHandleFfffUcUc
    fmr     f31, f1
branch_0x80012be4:
    fmr     f1, f31
    lwz     r3, 0x0(r28)
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      setSeInterVolume__8JAISoundFUcfUlUc
branch_0x80012bfc:
    lmw     r26, 0x60(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    addi    sp, sp, 0x90
    blr


.globl sqrtf__3stdFf
sqrtf__3stdFf: # 0x80012c1c
    stwu    sp, -0x10(sp)
    lfs     f0, -0x7d30(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80012c78
    frsqrte f2, f1
    lfd     f4, -0x7d18(r2)
    lfd     f3, -0x7d10(r2)
    fmul    f0, f2, f2
    fmul    f2, f4, f2
    fnmsub   f0, f1, f0, f3
    fmul    f2, f2, f0
    fmul    f0, f2, f2
    fmul    f2, f4, f2
    fnmsub   f0, f1, f0, f3
    fmul    f2, f2, f0
    fmul    f0, f2, f2
    fmul    f2, f4, f2
    fnmsub   f0, f1, f0, f3
    fmul    f0, f2, f0
    fmul    f0, f1, f0
    frsp    f0, f0
    stfs    f0, 0xc(sp)
    lfs     f1, 0xc(sp)
branch_0x80012c78:
    addi    sp, sp, 0x10
    blr


.globl startAnimSound__14MAnmSoundMarioFPvUlPP8JAISoundP8JAIActorUc
startAnimSound__14MAnmSoundMarioFPvUlPP8JAISoundP8JAIActorUc: # 0x80012c80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r8, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r7, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x28(sp)
    mr      r28, r5
    addi    r4, r28, 0x0
    lwz     r3, R13Off_m0x7164(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80012d58
    srwi.   r3, r28, 30
    extrwi  r0, r28, 4, 16
    bne-    branch_0x80012cd0
    b       branch_0x80012cf4

branch_0x80012cd0:
    cmplwi  r3, 0x2
    bne-    branch_0x80012ce0
    li      r0, 0x10
    b       branch_0x80012cf4

branch_0x80012ce0:
    cmplwi  r3, 0x3
    bne-    branch_0x80012cf0
    li      r0, 0x11
    b       branch_0x80012cf4

branch_0x80012cf0:
    li      r0, -0x1
branch_0x80012cf4:
    cmpwi   r0, 0x7
    beq-    branch_0x80012d20
    bge-    branch_0x80012d40
    cmpwi   r0, 0x0
    beq-    branch_0x80012d0c
    b       branch_0x80012d40

branch_0x80012d0c:
    lwz     r0, 0xc(r30)
    rlwinm  r0, r0, 0, 19, 19
    cmplwi  r0, 0x1000
    bne-    branch_0x80012d40
    b       branch_0x80012d58

branch_0x80012d20:
    lwz     r5, 0xc(r30)
    mr      r4, r28
    lwz     r3, R13Off_m0x7164(r13)
    extrwi  r0, r5, 4, 4
    srwi    r6, r5, 28
    extsh   r5, r0
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x80012d58

branch_0x80012d40:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r7, r31, 0x0
    li      r6, 0x0
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
branch_0x80012d58:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl setSpeedModifySound__9MAnmSoundFP8JAISoundP22JAIAnimeFrameSoundDataf
setSpeedModifySound__9MAnmSoundFP8JAISoundP22JAIAnimeFrameSoundDataf: # 0x80012d78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    li      r5, 0x14
    stw     r30, 0x20(sp)
    mr      r30, r4
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r0, 0x8(r4)
    lis     r4, unk_00100000@h
    mr      r3, r0
    bl      getSwitch__6MSoundFUlUlUl
    cmplwi  r3, 0x0
    beq-    branch_0x80012dd4
    fmr     f1, f31
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      setSpeedModifySound__13JAIAnimeSoundFP8JAISoundP22JAIAnimeFrameSoundDataf
branch_0x80012dd4:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x30
    blr


.globl startAnimSound__9MAnmSoundFPvUlPP8JAISoundP8JAIActorUc
startAnimSound__9MAnmSoundFPvUlPP8JAISoundP8JAIActorUc: # 0x80012df4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r8, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r7, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x20(sp)
    mr      r28, r5
    addi    r4, r28, 0x0
    lwz     r3, R13Off_m0x7164(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80012e4c
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r7, r31, 0x0
    li      r6, 0x0
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
branch_0x80012e4c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl animeLoop__9MAnmSoundFP3VecffUlUc
animeLoop__9MAnmSoundFP3VecffUlUc: # 0x80012e6c
    mflr    r0
    addi    r8, r4, unk_00100000@l
    stw     r0, 0x4(sp)
    addi    r7, r6, 0x0
    stwu    sp, -0x8(sp)
    lwz     r0, 0x90(r3)
    cmplwi  r0, 0x0
    addi    r0, r5, 0x0
    beq-    branch_0x80012ea0
    lwz     r4, R13Off_m0x5d90(r13)
    addi    r5, r8, 0x0
    mr      r6, r0
    bl      setAnimSoundVec__13JAIAnimeSoundFP8JAIBasicP3VecffUlUc
branch_0x80012ea0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initAnmSound__9MAnmSoundFPvUlf
initAnmSound__9MAnmSoundFPvUlf: # 0x80012eb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      initActorAnimSound__13JAIAnimeSoundFPvUlf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__9MAnmSoundFP6MSound
__ct__9MAnmSoundFP6MSound: # 0x80012ed0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13JAIAnimeSoundFv
    lis     r3, __vvt__9MAnmSound@ha
    addi    r0, r3, __vvt__9MAnmSound@l
    stw     r0, 0x94(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x90(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_MAnmSound_cpp
__sinit_MAnmSound_cpp: # 0x80012f14
    mflr    r0
    lis     r3, unk_803e9b10@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803e9b10@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80012f5c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80012f5c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80012f8c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80012f8c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80012fbc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80012fbc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80012fec
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80012fec:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8001301c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8001301c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8001304c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8001304c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8001307c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8001307c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800130ac
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x800130ac:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800130dc
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x800130dc:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8001310c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8001310c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8001313c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8001313c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8001316c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8001316c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8001319c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8001319c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800131cc
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x800131cc:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800131fc
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x800131fc:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

