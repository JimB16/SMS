
.globl __ct__9TJointObjFv
__ct__9TJointObjFv: # 0x80188b18
    lis     r4, __vvt__9TJointObj@h
    addi    r0, r4, __vvt__9TJointObj@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    blr


.globl initJointObj__9TJointObjFP8J3DJoint
initJointObj__9TJointObjFP8J3DJoint: # 0x80188b48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r4, 0xc(r3)
    bl      initChildren__9TJointObjFv
    lwz     r3, 0xc(r31)
    li      r4, 0x0
    lwz     r3, 0x60(r3)
    b       branch_0x80188b7c

branch_0x80188b74:
    lwz     r3, 0x0(r3)
    addi    r4, r4, 0x1
branch_0x80188b7c:
    cmplwi  r3, 0x0
    bne+    branch_0x80188b74
    stw     r4, 0x18(r31)
    lwz     r0, 0x18(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x80188be8
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x1c(r31)
    li      r4, 0x0
    lwz     r5, 0x1c(r31)
    lwz     r3, 0xc(r31)
    cmplwi  r5, 0x0
    lwz     r3, 0x60(r3)
    beq-    branch_0x80188be0
    b       branch_0x80188bcc

branch_0x80188bbc:
    lwz     r0, 0x4(r3)
    stwx    r0, r5, r4
    addi    r4, r4, 0x4
    lwz     r3, 0x0(r3)
branch_0x80188bcc:
    cmplwi  r3, 0x0
    bne+    branch_0x80188bbc
    b       branch_0x80188be8

branch_0x80188bd8:
    b       branch_0x80188be0

branch_0x80188bdc:
    lwz     r3, 0x0(r3)
branch_0x80188be0:
    cmplwi  r3, 0x0
    bne+    branch_0x80188bdc
branch_0x80188be8:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl initChildren__9TJointObjFv
initChildren__9TJointObjFv: # 0x80188bfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    mr      r28, r3
    lwz     r3, 0xc(r3)
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    mr      r31, r0
    beq-    branch_0x80188cc4
    mr      r4, r31
    b       branch_0x80188c48

branch_0x80188c38:
    lwz     r3, 0x10(r28)
    lwz     r4, 0x14(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x10(r28)
branch_0x80188c48:
    cmplwi  r4, 0x0
    bne+    branch_0x80188c38
    lwz     r0, 0x10(r28)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x14(r28)
    lwz     r30, 0x10(r28)
    b       branch_0x80188cbc

branch_0x80188c68:
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r29, r30, -0x1
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x14(r28)
    slwi    r0, r29, 2
    addi    r4, r31, 0x0
    stwx    r3, r5, r0
    lwz     r3, 0x14(r28)
    lwzx    r3, r3, r0
    stw     r29, 0x4(r3)
    lwz     r3, 0x14(r28)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r31, 0x14(r31)
    addi    r30, r30, -0x1
branch_0x80188cbc:
    cmpwi   r30, 0x0
    bgt+    branch_0x80188c68
branch_0x80188cc4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl kill__9TJointObjFv
kill__9TJointObjFv: # 0x80188ce4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    li      r29, 0x0
    b       branch_0x80188d2c

branch_0x80188d0c:
    lwz     r3, 0x14(r31)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x80188d2c:
    lwz     r0, 0x10(r31)
    cmpw    r29, r0
    blt+    branch_0x80188d0c
    lwz     r0, 0x8(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x80188d4c
    li      r0, 0x1
    b       branch_0x80188d50

branch_0x80188d4c:
    li      r0, 0x0
branch_0x80188d50:
    clrlwi. r0, r0, 24
    bne-    branch_0x80188db0
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x80188d80

branch_0x80188d64:
    lwz     r4, 0x1c(r31)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80188d80:
    lwz     r0, 0x18(r31)
    cmpw    r5, r0
    blt+    branch_0x80188d64
    lwz     r0, 0x8(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r31)
    lwz     r0, 0x8(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x8(r31)
    lwz     r0, 0x8(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x8(r31)
branch_0x80188db0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl alive__9TJointObjFv
alive__9TJointObjFv: # 0x80188dcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    b       branch_0x80188e14

branch_0x80188df4:
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80188e14:
    lwz     r0, 0x10(r29)
    cmpw    r30, r0
    blt+    branch_0x80188df4
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x80188e48

branch_0x80188e2c:
    lwz     r4, 0x1c(r29)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lwz     r0, 0x8(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r4)
branch_0x80188e48:
    lwz     r0, 0x18(r29)
    cmpw    r5, r0
    blt+    branch_0x80188e2c
    lwz     r0, 0x8(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r29)
    lwz     r0, 0x8(r29)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x8(r29)
    lwz     r0, 0x8(r29)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x8(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl sleep__9TJointObjFv
sleep__9TJointObjFv: # 0x80188e94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    li      r29, 0x0
    b       branch_0x80188edc

branch_0x80188ebc:
    lwz     r3, 0x14(r31)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x80188edc:
    lwz     r0, 0x10(r31)
    cmpw    r29, r0
    blt+    branch_0x80188ebc
    lwz     r3, 0x8(r31)
    clrlwi. r0, r3, 31
    beq-    branch_0x80188efc
    li      r0, 0x1
    b       branch_0x80188f00

branch_0x80188efc:
    li      r0, 0x0
branch_0x80188f00:
    clrlwi. r0, r0, 24
    bne-    branch_0x80188f70
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80188f18
    li      r0, 0x1
    b       branch_0x80188f1c

branch_0x80188f18:
    li      r0, 0x0
branch_0x80188f1c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80188f70
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x80188f4c

branch_0x80188f30:
    lwz     r4, 0x1c(r31)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80188f4c:
    lwz     r0, 0x18(r31)
    cmpw    r5, r0
    blt+    branch_0x80188f30
    lwz     r0, 0x8(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x8(r31)
    lwz     r0, 0x8(r31)
    ori     r0, r0, 0x2
    stw     r0, 0x8(r31)
branch_0x80188f70:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl awake__9TJointObjFv
awake__9TJointObjFv: # 0x80188f8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    li      r29, 0x0
    b       branch_0x80188fd4

branch_0x80188fb4:
    lwz     r3, 0x14(r31)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x80188fd4:
    lwz     r0, 0x10(r31)
    cmpw    r29, r0
    blt+    branch_0x80188fb4
    lwz     r0, 0x8(r31)
    rlwinm. r0, r0, 0, 29, 30
    beq-    branch_0x80188ff4
    li      r0, 0x1
    b       branch_0x80188ff8

branch_0x80188ff4:
    li      r0, 0x0
branch_0x80188ff8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018904c
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x80189028

branch_0x8018900c:
    lwz     r4, 0x1c(r31)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lwz     r0, 0x8(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r4)
branch_0x80189028:
    lwz     r0, 0x18(r31)
    cmpw    r5, r0
    blt+    branch_0x8018900c
    lwz     r0, 0x8(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x8(r31)
    lwz     r0, 0x8(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x8(r31)
branch_0x8018904c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl sit__9TJointObjFv
sit__9TJointObjFv: # 0x80189068
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    b       branch_0x801890b0

branch_0x80189090:
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x801890b0:
    lwz     r0, 0x10(r29)
    cmpw    r30, r0
    blt+    branch_0x80189090
    lwz     r0, 0x8(r29)
    clrlwi. r0, r0, 29
    beq-    branch_0x801890d0
    li      r0, 0x1
    b       branch_0x801890d4

branch_0x801890d0:
    li      r0, 0x0
branch_0x801890d4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018911c
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x80189104

branch_0x801890e8:
    lwz     r4, 0x1c(r29)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80189104:
    lwz     r0, 0x18(r29)
    cmpw    r5, r0
    blt+    branch_0x801890e8
    lwz     r0, 0x8(r29)
    ori     r0, r0, 0x4
    stw     r0, 0x8(r29)
branch_0x8018911c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl stand__9TJointObjFv
stand__9TJointObjFv: # 0x80189138
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    b       branch_0x80189180

branch_0x80189160:
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80189180:
    lwz     r0, 0x10(r29)
    cmpw    r30, r0
    blt+    branch_0x80189160
    lwz     r0, 0x8(r29)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x801891a0
    li      r0, 0x1
    b       branch_0x801891a4

branch_0x801891a0:
    li      r0, 0x0
branch_0x801891a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801891ec
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x801891d4

branch_0x801891b8:
    lwz     r4, 0x1c(r29)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lwz     r0, 0x8(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r4)
branch_0x801891d4:
    lwz     r0, 0x18(r29)
    cmpw    r5, r0
    blt+    branch_0x801891b8
    lwz     r0, 0x8(r29)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x8(r29)
branch_0x801891ec:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __sinit_JointObj_cpp
__sinit_JointObj_cpp: # 0x80189208
    mflr    r0
    lis     r3, unk_803f7968@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f7968@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80189250
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80189250:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80189280
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80189280:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801892b0
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801892b0:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801892e0
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801892e0:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80189310
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80189310:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80189340
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80189340:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80189370
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80189370:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801893a0
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801893a0:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801893d0
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801893d0:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80189400
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80189400:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80189430
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80189430:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80189460
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80189460:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80189490
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80189490:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801894c0
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801894c0:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801894f0
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801894f0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

