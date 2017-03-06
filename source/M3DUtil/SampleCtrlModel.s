
.globl __ct__19SampleCtrlModelDataFP12J3DModelData
__ct__19SampleCtrlModelDataFP12J3DModelData: # 0x8023ef2c
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    subi    r0, r5, 0x40f8
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x14(r3)
    sth     r0, 0x18(r3)
    sth     r0, 0x1a(r3)
    sth     r0, 0x1c(r3)
    sth     r0, 0x1e(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r31, 0x4(r3)
    lhz     r0, 0x1c(r4)
    sth     r0, 0x18(r3)
    lhz     r0, 0x24(r4)
    sth     r0, 0x1a(r3)
    lhz     r0, 0x2c(r4)
    sth     r0, 0x1c(r3)
    lwz     r3, 0xac(r4)
    lhz     r0, 0x0(r3)
    sth     r0, 0x1e(r30)
    lhz     r0, 0x1c(r4)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r30)
    lhz     r0, 0x24(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r30)
    lhz     r0, 0x2c(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x10(r30)
    li      r28, 0x0
    b       branch_0x8023f024

branch_0x8023efd8:
    li      r3, 0x34
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8023effc
    lwz     r3, 0x20(r31)
    clrlslwi  r0, r28, 16, 2
    lwzx    r4, r3, r0
    mr      r3, r27
    bl      __ct__15SampleCtrlJointFP8J3DJoint
branch_0x8023effc:
    lwz     r3, 0x8(r30)
    clrlslwi  r29, r28, 16, 2
    mr      r4, r28
    stwx    r27, r3, r29
    lwz     r3, 0xb0(r31)
    bl      getName__10JUTNameTabCFUs
    lwz     r4, 0x8(r30)
    addi    r28, r28, 0x1
    lwzx    r4, r4, r29
    stw     r3, 0x8(r4)
branch_0x8023f024:
    lhz     r0, 0x1c(r31)
    clrlwi  r3, r28, 16
    cmplw   r3, r0
    blt+    branch_0x8023efd8
    li      r28, 0x0
    b       branch_0x8023f088

branch_0x8023f03c:
    li      r3, 0x17c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8023f060
    lwz     r3, 0x28(r31)
    clrlslwi  r0, r28, 16, 2
    lwzx    r4, r3, r0
    mr      r3, r27
    bl      __ct__18SampleCtrlMaterialFP11J3DMaterial
branch_0x8023f060:
    lwz     r3, 0xc(r30)
    clrlslwi  r29, r28, 16, 2
    mr      r4, r28
    stwx    r27, r3, r29
    lwz     r3, 0xb4(r31)
    bl      getName__10JUTNameTabCFUs
    lwz     r4, 0xc(r30)
    addi    r28, r28, 0x1
    lwzx    r4, r4, r29
    stw     r3, 0x8(r4)
branch_0x8023f088:
    lhz     r0, 0x24(r31)
    clrlwi  r3, r28, 16
    cmplw   r3, r0
    blt+    branch_0x8023f03c
    li      r28, 0x0
    b       branch_0x8023f0d4

branch_0x8023f0a0:
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8023f0c4
    lwz     r3, 0x30(r31)
    clrlslwi  r0, r28, 16, 2
    lwzx    r4, r3, r0
    mr      r3, r27
    bl      __ct__15SampleCtrlShapeFP8J3DShape
branch_0x8023f0c4:
    lwz     r3, 0x10(r30)
    clrlslwi  r0, r28, 16, 2
    addi    r28, r28, 0x1
    stwx    r27, r3, r0
branch_0x8023f0d4:
    lhz     r0, 0x2c(r31)
    clrlwi  r3, r28, 16
    cmplw   r3, r0
    blt+    branch_0x8023f0a0
    lwz     r4, 0x10(r31)
    mr      r3, r30
    bl      makeHierarchy__19SampleCtrlModelDataFP8J3DJoint
    stw     r3, 0x14(r30)
    mr      r3, r30
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl makeHierarchy__19SampleCtrlModelDataFP8J3DJoint
makeHierarchy__19SampleCtrlModelDataFP8J3DJoint: # 0x8023f10c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    stw     r30, 0x40(sp)
    mr      r30, r3
    stw     r29, 0x3c(sp)
    lwz     r7, 0x60(r4)
    b       branch_0x8023f184

branch_0x8023f134:
    lhz     r3, 0xc(r7)
    lhz     r0, 0x18(r31)
    lwz     r5, 0xc(r30)
    slwi    r4, r3, 2
    lwz     r3, 0x8(r30)
    slwi    r0, r0, 2
    lwz     r6, 0x4(r7)
    lwzx    r4, r5, r4
    lwzx    r3, r3, r0
    stw     r4, 0x14(r3)
    lhz     r3, 0x4(r6)
    lhz     r0, 0xc(r7)
    lwz     r5, 0x10(r30)
    slwi    r4, r3, 2
    lwz     r3, 0xc(r30)
    slwi    r0, r0, 2
    lwzx    r4, r5, r4
    lwzx    r3, r3, r0
    stw     r4, 0x10(r3)
    lwz     r7, 0x0(r7)
branch_0x8023f184:
    cmplwi  r7, 0x0
    bne+    branch_0x8023f134
    lwz     r4, 0x10(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8023f1b4
    lhz     r29, 0x18(r31)
    mr      r3, r30
    bl      makeHierarchy__19SampleCtrlModelDataFP8J3DJoint
    lwz     r4, 0x8(r30)
    slwi    r0, r29, 2
    lwzx    r4, r4, r0
    stw     r3, 0xc(r4)
branch_0x8023f1b4:
    lwz     r4, 0x14(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8023f1dc
    lhz     r29, 0x18(r31)
    mr      r3, r30
    bl      makeHierarchy__19SampleCtrlModelDataFP8J3DJoint
    lwz     r4, 0x8(r30)
    slwi    r0, r29, 2
    lwzx    r4, r4, r0
    stw     r3, 0x10(r4)
branch_0x8023f1dc:
    lhz     r0, 0x18(r31)
    lwz     r3, 0x8(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __dt__19SampleCtrlModelDataFv
__dt__19SampleCtrlModelDataFv: # 0x8023f208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8023f23c
    lis     r3, 0x803e
    subi    r3, r3, 0x40f8
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8023f23c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8023f23c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

