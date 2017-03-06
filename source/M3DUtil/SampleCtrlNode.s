
.globl __ct__15SampleCtrlShapeFP8J3DShape
__ct__15SampleCtrlShapeFP8J3DShape: # 0x8023e8bc
    lis     r5, 0x803e
    subi    r0, r5, 0x4108
    stw     r0, 0x0(r3)
    li      r5, 0x0
    stw     r5, 0x4(r3)
    stw     r4, 0x4(r3)
    lwz     r4, 0x4(r3)
    lwz     r0, 0x8(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x8023e8e8
    li      r5, 0x1
branch_0x8023e8e8:
    cmpwi   r5, 0x0
    beq-    branch_0x8023e8fc
    li      r0, 0x0
    stb     r0, 0x8(r3)
    blr

branch_0x8023e8fc:
    li      r0, 0x1
    stb     r0, 0x8(r3)
    blr


.globl __ct__18SampleCtrlMaterialFP11J3DMaterial
__ct__18SampleCtrlMaterialFP11J3DMaterial: # 0x8023e908
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    subi    r0, r5, 0x4114
    subi    r5, r13, 0x753c
    stwu    sp, -0xc8(sp)
    stmw    r26, 0xb0(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    li      r4, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    lbz     r3, -0x753c(r13)
    stb     r3, 0x38(r27)
    lbz     r3, 0x1(r5)
    stb     r3, 0x39(r27)
    lbz     r3, 0x2(r5)
    stb     r3, 0x3a(r27)
    stw     r0, 0x4(r27)
    stw     r0, 0x8(r27)
    stw     r0, 0xc(r27)
    stw     r0, 0x10(r27)
    stw     r28, 0x4(r27)
    lwz     r3, 0x20(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x0(r3)
    addi    r26, sp, 0x90
    li      r30, 0x0
    stw     r0, 0x14(r27)
    b       branch_0x8023ea84

branch_0x8023e98c:
    lwz     r3, 0x20(r28)
    clrlwi  r29, r30, 24
    addi    r4, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lhz     r3, 0x0(r3)
    slwi    r0, r29, 3
    add     r31, r27, r0
    extrwi  r0, r3, 1, 30
    stb     r0, 0x18(r31)
    mr      r4, r29
    lwz     r3, 0x20(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r3)
    addi    r4, r29, 0x0
    clrlwi  r0, r0, 31
    stb     r0, 0x19(r31)
    lwz     r3, 0x20(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r3)
    addi    r4, r29, 0x0
    extrwi  r0, r0, 1, 25
    stb     r0, 0x1d(r31)
    lwz     r3, 0x20(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lhz     r3, 0x0(r3)
    addi    r4, r29, 0x0
    rlwinm  r0, r3, 25, 24, 27
    rlwimi  r0, r3, 30, 28, 31
    stb     r0, 0x1a(r31)
    lwz     r3, 0x20(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r3)
    addi    r4, r29, 0x0
    extrwi  r0, r0, 2, 23
    stb     r0, 0x1b(r31)
    lwz     r3, 0x20(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lwz     r0, -0x75e0(r13)
    addi    r30, r30, 0x1
    stw     r0, 0x90(sp)
    lhz     r0, 0x0(r3)
    extrwi  r0, r0, 2, 21
    lbzx    r0, r26, r0
    stb     r0, 0x1c(r31)
branch_0x8023ea84:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x4
    blt+    branch_0x8023e98c
    lwz     r3, 0x28(r28)
    li      r4, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    stb     r0, 0x38(r27)
    lbz     r0, 0x1(r3)
    stb     r0, 0x39(r27)
    lbz     r0, 0x2(r3)
    stb     r0, 0x3a(r27)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x64(r12)
    mtlr    r12
    blrl
    clrlwi  r26, r3, 24
    li      r29, 0x0
    b       branch_0x8023edc0

branch_0x8023eae0:
    lwz     r3, 0x28(r28)
    clrlwi  r31, r29, 24
    addi    r4, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    mulli   r0, r31, 0x14
    lbz     r3, 0x2(r3)
    extrwi  r3, r3, 4, 24
    add     r30, r27, r0
    stb     r3, 0x3d(r30)
    mr      r4, r31
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x2(r3)
    addi    r4, r31, 0x0
    clrlwi  r0, r0, 28
    stb     r0, 0x3e(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x3(r3)
    addi    r4, r31, 0x0
    extrwi  r0, r0, 4, 24
    stb     r0, 0x3f(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x3(r3)
    addi    r4, r31, 0x0
    clrlwi  r0, r0, 28
    stb     r0, 0x40(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r4, 0x1(r3)
    clrlwi  r0, r4, 30
    cmplwi  r0, 0x3
    beq-    branch_0x8023ebac
    extrwi  r3, r4, 1, 29
    b       branch_0x8023ebbc

branch_0x8023ebac:
    extrwi  r3, r4, 1, 29
    rlwinm  r0, r4, 29, 29, 30
    add     r3, r3, r0
    addi    r3, r3, 0x8
branch_0x8023ebbc:
    stb     r3, 0x41(r30)
    mr      r4, r31
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    addi    r4, r31, 0x0
    clrlwi  r0, r0, 30
    stb     r0, 0x42(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    addi    r4, r31, 0x0
    extrwi  r0, r0, 2, 26
    stb     r0, 0x43(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    addi    r4, r31, 0x0
    extrwi  r0, r0, 1, 28
    stb     r0, 0x44(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    addi    r4, r31, 0x0
    extrwi  r0, r0, 2, 24
    stb     r0, 0x45(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x6(r3)
    addi    r4, r31, 0x0
    extrwi  r0, r0, 3, 24
    stb     r0, 0x46(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x6(r3)
    addi    r4, r31, 0x0
    extrwi  r0, r0, 3, 27
    stb     r0, 0x47(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7(r3)
    mr      r4, r31
    lbz     r5, 0x6(r3)
    extrwi  r0, r0, 1, 24
    insrwi  r0, r5, 2, 29
    stb     r0, 0x48(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7(r3)
    addi    r4, r31, 0x0
    extrwi  r0, r0, 3, 25
    stb     r0, 0x49(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r4, 0x5(r3)
    clrlwi  r0, r4, 30
    cmplwi  r0, 0x3
    beq-    branch_0x8023ed18
    extrwi  r3, r4, 1, 29
    b       branch_0x8023ed28

branch_0x8023ed18:
    extrwi  r3, r4, 1, 29
    rlwinm  r0, r4, 29, 29, 30
    add     r3, r3, r0
    addi    r3, r3, 0x8
branch_0x8023ed28:
    stb     r3, 0x4a(r30)
    mr      r4, r31
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x5(r3)
    addi    r4, r31, 0x0
    clrlwi  r0, r0, 30
    stb     r0, 0x4b(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x5(r3)
    addi    r4, r31, 0x0
    extrwi  r0, r0, 2, 26
    stb     r0, 0x4c(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x5(r3)
    addi    r4, r31, 0x0
    extrwi  r0, r0, 1, 28
    stb     r0, 0x4d(r30)
    lwz     r3, 0x28(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x5(r3)
    addi    r29, r29, 0x1
    extrwi  r0, r0, 2, 24
    stb     r0, 0x4e(r30)
branch_0x8023edc0:
    clrlwi  r0, r29, 24
    cmplw   r0, r26
    blt+    branch_0x8023eae0
    mr      r3, r27
    lmw     r26, 0xb0(sp)
    lwz     r0, 0xcc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl __ct__15SampleCtrlJointFP8J3DJoint
__ct__15SampleCtrlJointFP8J3DJoint: # 0x8023ede4
    lis     r5, 0x803e
    subi    r0, r5, 0x4120
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r4, 0x4(r3)
    lfs     f0, 0x3c(r4)
    stfs    f0, 0x18(r3)
    lfs     f0, 0x40(r4)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x44(r4)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x48(r4)
    stfs    f0, 0x24(r3)
    lfs     f0, 0x4c(r4)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x50(r4)
    stfs    f0, 0x2c(r3)
    lfs     f0, 0x54(r4)
    stfs    f0, 0x30(r3)
    blr


.globl __dt__15SampleCtrlJointFv
__dt__15SampleCtrlJointFv: # 0x8023ee48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8023ee7c
    lis     r3, 0x803e
    subi    r3, r3, 0x4120
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8023ee7c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8023ee7c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18SampleCtrlMaterialFv
__dt__18SampleCtrlMaterialFv: # 0x8023ee94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8023eec8
    lis     r3, 0x803e
    subi    r3, r3, 0x4114
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8023eec8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8023eec8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15SampleCtrlShapeFv
__dt__15SampleCtrlShapeFv: # 0x8023eee0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8023ef14
    lis     r3, 0x803e
    subi    r3, r3, 0x4108
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8023ef14
    mr      r3, r31
    bl      __dl__FPv
branch_0x8023ef14:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

