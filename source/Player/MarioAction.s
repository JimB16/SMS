
.globl actnMain__6TMarioFv
actnMain__6TMarioFv: # 0x8023f6b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r5, 0x7c(r3)
    li      r3, 0x0
    cmpwi   r5, 0x383
    beq-    branch_0x8023f71c
    bge-    branch_0x8023f704
    lis     r4, unk_80000588@h
    addi    r0, r4, unk_80000588@l
    cmpw    r5, r0
    beq-    branch_0x8023f8bc
    bge-    branch_0x8023f8fc
    addi    r0, r4, 0x387
    cmpw    r5, r0
    beq-    branch_0x8023f838
    b       branch_0x8023f8fc

branch_0x8023f704:
    cmpwi   r5, 0x386
    beq-    branch_0x8023f7a0
    bge-    branch_0x8023f8fc
    cmpwi   r5, 0x385
    bge-    branch_0x8023f8fc
    b       branch_0x8023f728

branch_0x8023f71c:
    mr      r3, r31
    bl      taking__6TMarioFv
    b       branch_0x8023f8fc

branch_0x8023f728:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8023f748
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8023f8fc

branch_0x8023f748:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8023f784
    lfs     f1, -0x14b0(r2)
    addi    r3, r31, 0x0
    li      r4, 0xc3
    bl      setAnimation__6TMarioFif
    lis     r4, unk_0c400201@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0c400201@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8023f8fc

branch_0x8023f784:
    lis     r4, unk_0c400201@h
    addi    r3, r31, 0x0
    addi    r5, r4, unk_0c400201@l
    li      r4, 0x110
    bl      stopCommon__6TMarioFii
    li      r3, 0x0
    b       branch_0x8023f8fc

branch_0x8023f7a0:
    lwz     r3, 0x74(r31)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8023f7dc
    mr      r3, r31
    bl      considerRotateJumpStart__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8023f7c4
    li      r3, 0x1
    b       branch_0x8023f8fc

branch_0x8023f7c4:
    lis     r4, unk_02000880@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_02000880@l
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x8023f8fc

branch_0x8023f7dc:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x8023f7fc
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8023f8fc

branch_0x8023f7fc:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8023f81c
    addi    r3, r31, 0x0
    li      r4, 0x50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8023f8fc

branch_0x8023f81c:
    lis     r4, unk_0c400201@h
    addi    r3, r31, 0x0
    addi    r5, r4, unk_0c400201@l
    li      r4, 0x5a
    bl      stopCommon__6TMarioFii
    li      r3, 0x0
    b       branch_0x8023f8fc

branch_0x8023f838:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8023f858
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8023f8fc

branch_0x8023f858:
    lis     r4, unk_0c400201@h
    addi    r3, r31, 0x0
    addi    r5, r4, unk_0c400201@l
    li      r4, 0x6e
    bl      stopCommon__6TMarioFii
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023f8b4
    lwz     r3, 0x3a8(r31)
    lfs     f1, -0x14ac(r2)
    lwz     r3, 0xc(r3)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8023f8b4
    lwz     r3, 0x6c(r31)
    addi    r4, r31, 0x0
    li      r5, 0x6
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x6c(r31)
branch_0x8023f8b4:
    li      r3, 0x0
    b       branch_0x8023f8fc

branch_0x8023f8bc:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8023f8dc
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8023f8fc

branch_0x8023f8dc:
    lis     r4, unk_0c400201@h
    addi    r3, r31, 0x0
    addi    r5, r4, unk_0c400201@l
    li      r4, 0x65
    bl      stopCommon__6TMarioFii
    mr      r3, r31
    bl      checkThrowObject__6TMarioFv
    li      r3, 0x0
branch_0x8023f8fc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl taking__6TMarioFv
taking__6TMarioFv: # 0x8023f910
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8023f944
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8023fa20

branch_0x8023f944:
    lfs     f1, -0x14b0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x6b
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x384(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023f9d8
    lwz     r3, 0x3a8(r31)
    lfs     f1, -0x14a8(r2)
    lwz     r3, 0xc(r3)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8023f9d8
    lwz     r3, 0x384(r31)
    addi    r4, r31, 0x0
    li      r5, 0x4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8023f9b4
    addi    r3, r31, 0x0
    li      r4, 0x788f
    bl      startVoice__6TMarioFUl
    lwz     r0, 0x384(r31)
    stw     r0, 0x6c(r31)
    b       branch_0x8023f9d0

branch_0x8023f9b4:
    lis     r4, unk_0c400201@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0c400201@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8023fa20

branch_0x8023f9d0:
    li      r0, 0x0
    stw     r0, 0x384(r31)
branch_0x8023f9d8:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8023fa14
    li      r0, 0x2
    stw     r0, 0x380(r31)
    li      r0, 0x0
    lis     r4, unk_0c400201@h
    sth     r0, 0x37e(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0c400201@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8023fa20

branch_0x8023fa14:
    mr      r3, r31
    bl      waitProcess__6TMarioFv
    li      r3, 0x0
branch_0x8023fa20:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __sinit_MarioAction_cpp
__sinit_MarioAction_cpp: # 0x8023fa34
    mflr    r0
    lis     r3, unk_803fb420@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fb420@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fa7c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8023fa7c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8023faac
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8023faac:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fadc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8023fadc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fb0c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8023fb0c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fb3c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8023fb3c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fb6c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8023fb6c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fb9c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8023fb9c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fbcc
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8023fbcc:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fbfc
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8023fbfc:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fc2c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8023fc2c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fc5c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8023fc5c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fc8c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8023fc8c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fcbc
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8023fcbc:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fcec
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8023fcec:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fd1c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8023fd1c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

