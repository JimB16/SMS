
.globl __ct__20TMapCheckGroundPlaneFv
__ct__20TMapCheckGroundPlaneFv: # 0x801a28c8
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    lfs     f0, -0x40e8(r2)
    stfs    f0, 0x8(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    stw     r0, 0x18(r3)
    blr


.globl init__20TMapCheckGroundPlaneFiif
init__20TMapCheckGroundPlaneFiif: # 0x801a28f0
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    stw     r4, 0x0(r3)
    stw     r5, 0x4(r3)
    stfs    f1, 0x8(r3)
    lfs     f1, -0x40e4(r2)
    lfs     f0, 0x8(r3)
    fdivs   f0, f1, f0
    stfs    f0, 0xc(r3)
    lwz     r3, 0x0(r3)
    lfd     f1, -0x40d8(r2)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x8(r30)
    stw     r3, 0x2c(sp)
    stw     r0, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x10(r30)
    lfs     f0, -0x40e0(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r3, 0x4(r30)
    lwz     r0, 0x0(r30)
    mullw   r0, r3, r0
    slwi    r31, r0, 1
    mulli   r3, r31, 0x48
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__12TBGCheckDataFv@h
    addi    r4, r4, __ct__12TBGCheckDataFv@l
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0x48
    bl      __construct_new_array
    stw     r3, 0x18(r30)
    lwz     r3, R13Off_m0x6320(r13)
    stw     r30, 0x244(r3)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl checkPlaneGround__20TMapCheckGroundPlaneFfffPPC12TBGCheckData
checkPlaneGround__20TMapCheckGroundPlaneFfffPPC12TBGCheckData: # 0x801a29b8
    stwu    sp, -0x88(sp)
    lfs     f6, 0x14(r3)
    fneg    f0, f6
    fcmpo   cr0, f1, f0
    blt-    branch_0x801a29e4
    fcmpo   cr0, f6, f1
    blt-    branch_0x801a29e4
    fcmpo   cr0, f3, f0
    blt-    branch_0x801a29e4
    fcmpo   cr0, f6, f3
    bge-    branch_0x801a29f8
branch_0x801a29e4:
    lis     r3, mIllegalCheckData__17TMapCollisionData@h
    addi    r0, r3, mIllegalCheckData__17TMapCollisionData@l
    stw     r0, 0x0(r4)
    lfs     f1, -0x40d0(r2)
    b       branch_0x801a2ae4

branch_0x801a29f8:
    fadds   f2, f1, f6
    lfs     f5, 0xc(r3)
    fadds   f0, f3, f6
    lis     r5, 0x4330
    lfd     f4, -0x40d8(r2)
    fmuls   f2, f5, f2
    lfs     f7, 0x8(r3)
    fmuls   f5, f5, f0
    fctiwz  f0, f2
    fctiwz  f5, f5
    stfd    f0, 0x80(sp)
    lwz     r6, 0x84(sp)
    stfd    f5, 0x68(sp)
    xoris   r0, r6, 0x8000
    stw     r0, 0x74(sp)
    lwz     r0, 0x6c(sp)
    stw     r5, 0x70(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x64(sp)
    lfd     f0, 0x70(sp)
    stw     r5, 0x60(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x60(sp)
    stfd    f5, 0x78(sp)
    fmsubs  f2, f2, f7, f6
    fsubs   f0, f0, f4
    lwz     r7, 0x7c(sp)
    fsubs   f2, f1, f2
    fmsubs  f0, f0, f7, f6
    fsubs   f2, f7, f2
    fsubs   f0, f3, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x801a2a9c
    lwz     r0, 0x4(r3)
    lwz     r3, 0x18(r3)
    mullw   r0, r7, r0
    add     r0, r6, r0
    slwi    r0, r0, 1
    mulli   r0, r0, 0x48
    add     r3, r3, r0
    b       branch_0x801a2abc

branch_0x801a2a9c:
    lwz     r0, 0x4(r3)
    lwz     r5, 0x18(r3)
    mullw   r0, r7, r0
    add     r0, r6, r0
    slwi    r3, r0, 1
    addi    r0, r3, 0x1
    mulli   r0, r0, 0x48
    add     r3, r5, r0
branch_0x801a2abc:
    lfs     f0, 0x3c(r3)
    lfs     f4, 0x34(r3)
    fmuls   f2, f3, f0
    lfs     f3, 0x40(r3)
    lfs     f0, 0x38(r3)
    fmadds  f1, f1, f4, f2
    stw     r3, 0x0(r4)
    fadds   f1, f3, f1
    fneg    f1, f1
    fdivs   f1, f1, f0
branch_0x801a2ae4:
    addi    sp, sp, 0x88
    blr


.globl getCheckData__20TMapCheckGroundPlaneCFiii
getCheckData__20TMapCheckGroundPlaneCFiii: # 0x801a2aec
    lwz     r0, 0x4(r3)
    lwz     r3, 0x18(r3)
    mullw   r0, r5, r0
    add     r0, r4, r0
    slwi    r0, r0, 1
    add     r0, r6, r0
    mulli   r0, r0, 0x48
    add     r3, r3, r0
    blr


.globl __sinit_MapCollisionPlane_cpp
__sinit_MapCollisionPlane_cpp: # 0x801a2b10
    mflr    r0
    lis     r3, unk_803f8c28@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f8c28@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2b58
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801a2b58:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2b88
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801a2b88:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2bb8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801a2bb8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2be8
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801a2be8:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2c18
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801a2c18:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2c48
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801a2c48:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2c78
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801a2c78:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2ca8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801a2ca8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2cd8
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801a2cd8:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2d08
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801a2d08:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2d38
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801a2d38:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2d68
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801a2d68:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2d98
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801a2d98:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2dc8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801a2dc8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2df8
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801a2df8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

