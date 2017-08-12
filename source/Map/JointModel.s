
.globl getJ3DModelDataFlag__11TJointModelCFv
getJ3DModelDataFlag__11TJointModelCFv: # 0x80187ea0
    lis     r3, 0x1002
    blr


.globl newJointObj__9TJointObjCFv
newJointObj__9TJointObjCFv: # 0x80187ea8
    mflr    r0
    li      r3, 0x20
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80187ed0
    mr      r3, r31
    bl      __ct__9TJointObjFv
branch_0x80187ed0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__11TJointModelFv
__ct__11TJointModelFv: # 0x80187ee8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9TJointObjFv
    lis     r3, __vvt__11TJointModel@h
    addi    r0, r3, __vvt__11TJointModel@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    stw     r0, 0x24(r31)
    stw     r0, 0x28(r31)
    stw     r0, 0x2c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initJointModel__11TJointModelFP18TJointModelManagerPCcP13MActorAnmData
initJointModel__11TJointModelFP18TJointModelManagerPCcP13MActorAnmData: # 0x80187f38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r4, 0x20(r3)
    addi    r4, r5, 0x0
    addi    r5, r6, 0x0
    bl      initActor__11TJointModelFPCcP13MActorAnmData
    lwz     r4, 0x24(r31)
    mr      r3, r31
    lwz     r4, 0x20(r4)
    lwz     r4, 0x0(r4)
    bl      initJointObj__9TJointObjFP8J3DJoint
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl initActor__11TJointModelFPCcP13MActorAnmData
initActor__11TJointModelFPCcP13MActorAnmData: # 0x80187f84
    mflr    r0
    addi    r7, r4, 0x0
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    li      r4, 0x40
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x78(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x74(sp)
    stw     r28, 0x70(sp)
    lwz     r6, 0x20(r3)
    lis     r3, unk_80388bf0@ha
    addi    r0, r3, unk_80388bf0@l
    lwz     r6, 0x1c(r6)
    mr      r5, r0
    addi    r3, sp, 0x30
    bl      snprintf
    addi    r3, sp, 0x30
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r0, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    mr      r29, r0
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x24(r30)
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80188028
    lwz     r4, 0x24(r30)
    addi    r3, r28, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80188028:
    lis     r3, j3dDefaultMtx@h
    stw     r28, 0x28(r30)
    addi    r29, r3, j3dDefaultMtx@l
    li      r28, 0x0
    b       branch_0x80188054

branch_0x8018803c:
    lwz     r3, 0x28(r4)
    clrlslwi  r0, r28, 16, 2
    mr      r4, r29
    lwzx    r3, r3, r0
    bl      calc__11J3DMaterialFPA4_f
    addi    r28, r28, 0x1
branch_0x80188054:
    lwz     r4, 0x24(r30)
    clrlwi  r0, r28, 16
    lhz     r3, 0x24(r4)
    cmplw   r0, r3
    blt+    branch_0x8018803c
    lwz     r3, 0x28(r30)
    bl      makeDL__8J3DModelFv
    lwz     r3, 0x28(r30)
    bl      lock__8J3DModelFv
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80188094
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x80188094:
    stw     r28, 0x2c(r30)
    li      r5, 0x0
    lwz     r3, 0x2c(r30)
    lwz     r4, 0x28(r30)
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x80
    blr


.globl perform__11TJointModelFUlPQ26JDrama9TGraphics
perform__11TJointModelFUlPQ26JDrama9TGraphics: # 0x801880c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x8(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x801880e8
    li      r0, 0x1
    b       branch_0x801880ec

branch_0x801880e8:
    li      r0, 0x0
branch_0x801880ec:
    clrlwi. r0, r0, 24
    bne-    branch_0x801880fc
    lwz     r3, 0x2c(r3)
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x801880fc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __sinit_JointModel_cpp
__sinit_JointModel_cpp: # 0x8018810c
    mflr    r0
    lis     r3, unk_803f77f8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f77f8@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80188154
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80188154:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80188184
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80188184:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801881b4
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801881b4:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801881e4
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801881e4:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80188214
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80188214:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80188244
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80188244:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80188274
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80188274:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801882a4
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801882a4:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801882d4
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801882d4:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80188304
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80188304:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80188334
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80188334:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80188364
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80188364:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80188394
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80188394:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801883c4
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801883c4:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801883f4
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801883f4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

