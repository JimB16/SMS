
.globl __ct__7TMapXluFv
__ct__7TMapXluFv: # 0x80199914
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    blr


.globl init__7TMapXluFR20JSUMemoryInputStream
init__7TMapXluFR20JSUMemoryInputStream: # 0x80199924
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x10(sp)
    stw     r0, 0x0(r30)
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x80199a24
    mulli   r3, r0, 0xc
    bl      __nwa__FUl
    stw     r3, 0x4(r30)
    li      r27, 0x0
    li      r29, 0x0
    b       branch_0x80199a18

branch_0x80199978:
    lwz     r0, 0x4(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    add     r26, r0, r29
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x10(sp)
    stw     r0, 0x0(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x4(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r26)
    li      r25, 0x0
    li      r28, 0x0
    b       branch_0x80199a04

branch_0x801999c4:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x10(sp)
    mr      r3, r31
    lwz     r6, 0x4(r26)
    addi    r4, sp, 0x10
    li      r5, 0x4
    stwx    r0, r6, r28
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x10(sp)
    addi    r25, r25, 0x1
    lwz     r3, 0x8(r26)
    stwx    r0, r3, r28
    addi    r28, r28, 0x4
branch_0x80199a04:
    lwz     r0, 0x0(r26)
    cmpw    r25, r0
    blt+    branch_0x801999c4
    addi    r27, r27, 0x1
    addi    r29, r29, 0xc
branch_0x80199a18:
    lwz     r0, 0x0(r30)
    cmpw    r27, r0
    blt+    branch_0x80199978
branch_0x80199a24:
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl changeXluJoint__7TMapXluFi
changeXluJoint__7TMapXluFi: # 0x80199a38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    mr      r29, r3
    stw     r28, 0x78(sp)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    blt-    branch_0x80199a70
    li      r3, 0x0
    b       branch_0x80199b30

branch_0x80199a70:
    li      r30, 0x0
    li      r28, 0x0
    b       branch_0x80199a9c

branch_0x80199a7c:
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r28
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r28, r28, 0x4
branch_0x80199a9c:
    lwz     r3, R13Off_m0x6328(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x10(r3)
    cmpw    r30, r0
    blt+    branch_0x80199a7c
    mulli   r31, r31, 0xc
    li      r30, 0x0
    li      r28, 0x0
    b       branch_0x80199b18

branch_0x80199ac8:
    lwz     r4, R13Off_m0x6328(r13)
    lwz     r3, 0x4(r6)
    lwz     r4, 0x14(r4)
    lwzx    r0, r3, r28
    lwz     r5, 0x14(r4)
    lwz     r3, 0x8(r6)
    slwi    r4, r0, 2
    lwz     r5, 0x0(r5)
    lwzx    r0, r3, r28
    lwz     r3, 0x14(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r4
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r28, r28, 0x4
branch_0x80199b18:
    lwz     r0, 0x4(r29)
    add     r6, r31, r0
    lwz     r0, 0x0(r6)
    cmpw    r30, r0
    blt+    branch_0x80199ac8
    li      r3, 0x1
branch_0x80199b30:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    lwz     r28, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl changeNormalJoint__7TMapXluFv
changeNormalJoint__7TMapXluFv: # 0x80199b50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r27, 0x74(sp)
    addi    r29, r3, 0x0
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x80199b90

branch_0x80199b70:
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    addi    r27, r27, 0x4
branch_0x80199b90:
    lwz     r3, R13Off_m0x6328(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x10(r3)
    cmpw    r28, r0
    blt+    branch_0x80199b70
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x80199c30

branch_0x80199bb8:
    li      r30, 0x0
    li      r27, 0x0
    b       branch_0x80199c14

branch_0x80199bc4:
    lwz     r4, R13Off_m0x6328(r13)
    lwz     r3, 0x4(r6)
    lwz     r4, 0x14(r4)
    lwzx    r0, r3, r27
    lwz     r5, 0x14(r4)
    lwz     r3, 0x8(r6)
    slwi    r4, r0, 2
    lwz     r5, 0x0(r5)
    lwzx    r0, r3, r27
    lwz     r3, 0x14(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r4
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r27, r27, 0x4
branch_0x80199c14:
    lwz     r0, 0x4(r29)
    add     r6, r28, r0
    lwz     r0, 0x0(r6)
    cmpw    r30, r0
    blt+    branch_0x80199bc4
    addi    r31, r31, 0x1
    addi    r28, r28, 0xc
branch_0x80199c30:
    lwz     r0, 0x0(r29)
    cmpw    r31, r0
    blt+    branch_0x80199bb8
    lmw     r27, 0x74(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl __sinit_MapXlu_cpp
__sinit_MapXlu_cpp: # 0x80199c50
    mflr    r0
    lis     r3, unk_803f83c8@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f83c8@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80199c98
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80199c98:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80199cc8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80199cc8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80199cf8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80199cf8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80199d28
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80199d28:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80199d58
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80199d58:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80199d88
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80199d88:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80199db8
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80199db8:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80199de8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80199de8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80199e18
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80199e18:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80199e48
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80199e48:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80199e78
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80199e78:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80199ea8
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80199ea8:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80199ed8
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80199ed8:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80199f08
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80199f08:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80199f38
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80199f38:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

