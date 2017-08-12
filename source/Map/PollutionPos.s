
.globl __ct__13TPollutionPosFv
__ct__13TPollutionPosFv: # 0x8019ed18
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    lfs     f0, -0x4168(r2)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x18(r3)
    stw     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    blr


.globl init__13TPollutionPosFP15TPollutionLayerffPUcii
init__13TPollutionPosFP15TPollutionLayerffPUcii: # 0x8019ed48
    stw     r4, 0x20(r3)
    li      r4, 0x1
    stw     r5, 0x1c(r3)
    stfs    f1, 0x10(r3)
    stfs    f2, 0x14(r3)
    lfs     f1, -0x4164(r2)
    lfs     f0, 0x14(r3)
    fdivs   f0, f1, f0
    stfs    f0, 0x18(r3)
    stw     r6, 0x8(r3)
    stw     r7, 0xc(r3)
    lwz     r0, 0x8(r3)
    slw     r0, r4, r0
    stw     r0, 0x0(r3)
    lwz     r0, 0xc(r3)
    slw     r0, r4, r0
    stw     r0, 0x4(r3)
    blr


.globl worldToTexSize__13TPollutionPosCFf
worldToTexSize__13TPollutionPosCFf: # 0x8019ed90
    stwu    sp, -0x18(sp)
    lfs     f0, 0x18(r3)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x18
    blr


.globl worldToDepth__13TPollutionPosCFf
worldToDepth__13TPollutionPosCFf: # 0x8019edb0
    stwu    sp, -0x18(sp)
    lfs     f2, 0x10(r3)
    lfs     f0, -0x4160(r2)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    fctiwz  f0, f1
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x18
    blr


.globl isProhibit__13TPollutionPosCFii
isProhibit__13TPollutionPosCFii: # 0x8019edd8
    cmpwi   r4, 0x0
    blt-    branch_0x8019ee00
    lwz     r0, 0x0(r3)
    cmpw    r0, r4
    ble-    branch_0x8019ee00
    cmpwi   r5, 0x0
    blt-    branch_0x8019ee00
    lwz     r0, 0x4(r3)
    cmpw    r0, r5
    bgt-    branch_0x8019ee08
branch_0x8019ee00:
    li      r3, 0x1
    blr

branch_0x8019ee08:
    lwz     r6, 0x8(r3)
    srawi   r7, r4, 3
    lwz     r8, 0x1c(r3)
    srawi   r3, r5, 2
    addi    r0, r6, -0x3
    slw     r0, r3, r0
    add     r0, r7, r0
    clrlwi  r3, r4, 29
    slwi    r0, r0, 5
    add     r0, r0, r3
    clrlslwi  r3, r5, 30, 3
    add     r0, r0, r8
    lbzx    r0, r3, r0
    cmpwi   r0, 0xff
    bge-    branch_0x8019ee4c
    li      r3, 0x0
    blr

branch_0x8019ee4c:
    li      r3, 0x1
    blr


.globl isSame__13TPollutionPosCFiif
isSame__13TPollutionPosCFiif: # 0x8019ee54
    cmpwi   r4, 0x0
    stwu    sp, -0x58(sp)
    blt-    branch_0x8019ee80
    lwz     r0, 0x0(r3)
    cmpw    r0, r4
    ble-    branch_0x8019ee80
    cmpwi   r5, 0x0
    blt-    branch_0x8019ee80
    lwz     r0, 0x4(r3)
    cmpw    r0, r5
    bgt-    branch_0x8019ee88
branch_0x8019ee80:
    li      r0, 0x0
    b       branch_0x8019ee8c

branch_0x8019ee88:
    li      r0, 0x1
branch_0x8019ee8c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8019ee9c
    li      r3, 0x0
    b       branch_0x8019ef20

branch_0x8019ee9c:
    lwz     r6, 0x8(r3)
    srawi   r8, r4, 3
    srawi   r7, r5, 2
    lwz     r9, 0x1c(r3)
    addi    r0, r6, -0x3
    slw     r0, r7, r0
    add     r0, r8, r0
    clrlwi  r4, r4, 29
    slwi    r0, r0, 5
    add     r0, r0, r4
    clrlslwi  r4, r5, 30, 3
    add     r0, r0, r9
    lbzx    r4, r4, r0
    cmpwi   r4, 0xff
    bge-    branch_0x8019ef1c
    lfs     f0, 0x10(r3)
    lwz     r3, 0x20(r3)
    fsubs   f1, f1, f0
    lfs     f0, -0x4160(r2)
    lwz     r5, 0x48(r3)
    fmuls   f1, f1, f0
    subf    r0, r5, r4
    fctiwz  f0, f1
    stfd    f0, 0x50(sp)
    lwz     r3, 0x54(sp)
    cmpw    r0, r3
    bgt-    branch_0x8019ef1c
    add     r0, r4, r5
    cmpw    r3, r0
    bgt-    branch_0x8019ef1c
    li      r3, 0x1
    b       branch_0x8019ef20

branch_0x8019ef1c:
    li      r3, 0x0
branch_0x8019ef20:
    addi    sp, sp, 0x58
    blr


.globl getDepthWorld__13TPollutionPosCFii
getDepthWorld__13TPollutionPosCFii: # 0x8019ef28
    stwu    sp, -0x38(sp)
    srawi   r8, r4, 3
    srawi   r7, r5, 2
    lwz     r6, 0x8(r3)
    clrlwi  r4, r4, 29
    lwz     r9, 0x1c(r3)
    addi    r0, r6, -0x3
    slw     r0, r7, r0
    add     r0, r8, r0
    slwi    r0, r0, 5
    add     r0, r0, r4
    clrlslwi  r4, r5, 30, 3
    add     r0, r0, r9
    lbzx    r0, r4, r0
    cmpwi   r0, 0xff
    bge-    branch_0x8019ef98
    xoris   r0, r0, 0x8000
    lfd     f2, -0x4158(r2)
    stw     r0, 0x34(sp)
    lis     r0, 0x4330
    lfs     f0, 0x14(r3)
    stw     r0, 0x30(sp)
    lfs     f3, 0x10(r3)
    lfd     f1, 0x30(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fadds   f1, f3, f0
    b       branch_0x8019ef9c

branch_0x8019ef98:
    lfs     f1, -0x415c(r2)
branch_0x8019ef9c:
    addi    sp, sp, 0x38
    blr


.globl getEdgeDegree__13TPollutionPosCFii
getEdgeDegree__13TPollutionPosCFii: # 0x8019efa4
    stwu    sp, -0x38(sp)
    cmpwi   r4, 0x0
    stw     r31, 0x34(sp)
    blt-    branch_0x8019efd4
    lwz     r0, 0x0(r3)
    cmpw    r0, r4
    ble-    branch_0x8019efd4
    cmpwi   r5, 0x0
    blt-    branch_0x8019efd4
    lwz     r0, 0x4(r3)
    cmpw    r0, r5
    bgt-    branch_0x8019efdc
branch_0x8019efd4:
    li      r0, 0x0
    b       branch_0x8019efe0

branch_0x8019efdc:
    li      r0, 0x1
branch_0x8019efe0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8019eff0
    li      r3, 0x0
    b       branch_0x8019f0ec

branch_0x8019eff0:
    li      r0, 0x3
    mtctr   r0
    li      r12, 0x0
    li      r31, -0x1
branch_0x8019f000:
    add     r0, r5, r31
    srawi   r10, r0, 2
    clrlslwi  r11, r0, 30, 3
    b       branch_0x8019f014

branch_0x8019f010:
    beq-    branch_0x8019f050
branch_0x8019f014:
    lwz     r7, 0x8(r3)
    addi    r9, r4, -0x1
    srawi   r8, r9, 3
    lwz     r6, 0x1c(r3)
    addi    r0, r7, -0x3
    slw     r0, r10, r0
    add     r0, r8, r0
    clrlwi  r9, r9, 29
    slwi    r0, r0, 5
    add     r0, r0, r9
    add     r0, r11, r0
    lbzx    r0, r6, r0
    cmplwi  r0, 0xff
    bne-    branch_0x8019f050
    addi    r12, r12, 0x1
branch_0x8019f050:
    li      r6, 0x0
    cmpwi   r6, 0x0
    bne-    branch_0x8019f064
    cmpwi   r31, 0x0
    beq-    branch_0x8019f0a4
branch_0x8019f064:
    lwz     r7, 0x8(r3)
    srawi   r8, r4, 3
    clrlwi  r9, r4, 29
    lwz     r6, 0x1c(r3)
    addi    r0, r7, -0x3
    slw     r0, r10, r0
    add     r0, r8, r0
    slwi    r0, r0, 5
    add     r0, r0, r9
    add     r0, r11, r0
    lbzx    r0, r6, r0
    cmplwi  r0, 0xff
    bne-    branch_0x8019f0a4
    addi    r12, r12, 0x1
    b       branch_0x8019f0a4

branch_0x8019f0a0:
    beq-    branch_0x8019f0e0
branch_0x8019f0a4:
    lwz     r7, 0x8(r3)
    addi    r9, r4, 0x1
    srawi   r8, r9, 3
    lwz     r6, 0x1c(r3)
    addi    r0, r7, -0x3
    slw     r0, r10, r0
    add     r0, r8, r0
    clrlwi  r9, r9, 29
    slwi    r0, r0, 5
    add     r0, r0, r9
    add     r0, r11, r0
    lbzx    r0, r6, r0
    cmplwi  r0, 0xff
    bne-    branch_0x8019f0e0
    addi    r12, r12, 0x1
branch_0x8019f0e0:
    addi    r31, r31, 0x1
    bdnz+      branch_0x8019f000
    mr      r3, r12
branch_0x8019f0ec:
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    blr


.globl __sinit_PollutionPos_cpp
__sinit_PollutionPos_cpp: # 0x8019f0f8
    mflr    r0
    lis     r3, unk_803f8760@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f8760@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f140
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8019f140:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f170
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8019f170:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f1a0
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8019f1a0:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f1d0
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8019f1d0:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f200
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8019f200:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f230
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8019f230:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f260
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8019f260:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f290
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8019f290:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f2c0
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8019f2c0:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f2f0
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8019f2f0:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f320
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8019f320:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f350
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8019f350:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f380
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8019f380:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f3b0
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8019f3b0:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8019f3e0
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8019f3e0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

