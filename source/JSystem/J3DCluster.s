
.globl deform__13J3DDeformDataFP8J3DModel
deform__13J3DDeformDataFP8J3DModel: # 0x802d34e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r4
    stw     r30, 0x80(sp)
    li      r30, 0x0
    stw     r29, 0x7c(sp)
    addi    r29, r3, 0x0
    lwz     r4, 0x98(r4)
    lwz     r3, 0x4(r4)
    lwz     r0, 0x8(r4)
    stw     r0, 0x4(r4)
    stw     r3, 0x8(r4)
    lwz     r4, 0x98(r31)
    lwz     r3, 0xc(r4)
    lwz     r0, 0x10(r4)
    stw     r0, 0xc(r4)
    stw     r3, 0x10(r4)
    b       branch_0x802d3554

branch_0x802d3530:
    clrlwi  r0, r30, 16
    lwz     r4, 0x8(r29)
    mulli   r3, r0, 0x24
    addi    r0, r3, 0x20
    lwzx    r3, r4, r0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      deform__11J3DDeformerFP8J3DModelUs
    addi    r30, r30, 0x1
branch_0x802d3554:
    lhz     r0, 0x0(r29)
    clrlwi  r3, r30, 16
    cmplw   r3, r0
    blt+    branch_0x802d3530
    lwz     r4, 0x4(r31)
    lwz     r3, 0x98(r31)
    lwz     r0, 0x3c(r4)
    lwz     r3, 0x4(r3)
    mulli   r4, r0, 0xc
    bl      DCStoreRange
    lwz     r4, 0x4(r31)
    lwz     r3, 0x98(r31)
    lwz     r0, 0x40(r4)
    lwz     r3, 0xc(r3)
    mulli   r4, r0, 0xc
    bl      DCStoreRange
    lwz     r3, 0x98(r31)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(r3)
    lwz     r3, 0x98(r31)
    lwz     r0, 0xc(r3)
    stw     r0, 0x30(r3)
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl setAnm__13J3DDeformDataFP13J3DAnmCluster
setAnm__13J3DDeformDataFP13J3DAnmCluster: # 0x802d35c8
    li      r7, 0x0
    b       branch_0x802d35ec

branch_0x802d35d0:
    clrlwi  r0, r7, 16
    lwz     r6, 0x8(r3)
    mulli   r5, r0, 0x24
    addi    r0, r5, 0x20
    lwzx    r5, r6, r0
    addi    r7, r7, 0x1
    stw     r4, 0x4(r5)
branch_0x802d35ec:
    lhz     r0, 0x0(r3)
    clrlwi  r5, r7, 16
    cmplw   r5, r0
    blt+    branch_0x802d35d0
    blr


.globl deform__11J3DDeformerFP8J3DModelUs
deform__11J3DDeformerFP8J3DModelUs: # 0x802d3600
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    li      r31, 0x0
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802d375c
    clrlwi  r0, r30, 16
    cmplwi  r0, 0x0
    li      r3, 0x0
    ble-    branch_0x802d36f0
    cmplwi  r0, 0x8
    subi    r0, r30, 0x8
    ble-    branch_0x802d36bc
    clrlwi  r0, r0, 16
    b       branch_0x802d36b0

branch_0x802d3650:
    clrlwi  r4, r3, 16
    lwz     r5, 0x0(r28)
    mulli   r4, r4, 0x24
    lwz     r5, 0x8(r5)
    add     r7, r5, r4
    addi    r6, r7, 0x24
    lhz     r4, 0x10(r7)
    addi    r5, r7, 0x48
    lhz     r6, 0x10(r6)
    add     r31, r31, r4
    lhz     r5, 0x10(r5)
    add     r31, r31, r6
    lhz     r6, 0x7c(r7)
    add     r31, r31, r5
    lhz     r5, 0xa0(r7)
    add     r31, r31, r6
    lhz     r6, 0xc4(r7)
    add     r31, r31, r5
    lhz     r5, 0xe8(r7)
    add     r31, r31, r6
    lhz     r4, 0x10c(r7)
    add     r31, r31, r5
    add     r31, r31, r4
    addi    r3, r3, 0x8
branch_0x802d36b0:
    clrlwi  r4, r3, 16
    cmplw   r4, r0
    blt+    branch_0x802d3650
branch_0x802d36bc:
    clrlwi  r0, r30, 16
    b       branch_0x802d36e4

branch_0x802d36c4:
    clrlwi  r4, r3, 16
    lwz     r5, 0x0(r28)
    mulli   r4, r4, 0x24
    lwz     r5, 0x8(r5)
    addi    r4, r4, 0x10
    lhzx    r4, r5, r4
    addi    r3, r3, 0x1
    add     r31, r31, r4
branch_0x802d36e4:
    clrlwi  r4, r3, 16
    cmplw   r4, r0
    blt+    branch_0x802d36c4
branch_0x802d36f0:
    clrlwi  r0, r30, 16
    mulli   r3, r0, 0x24
    addi    r27, r3, 0x10
    li      r26, 0x0
    b       branch_0x802d3730

branch_0x802d3704:
    lwz     r3, 0x4(r28)
    mr      r4, r31
    addi    r31, r31, 0x1
    lwz     r12, 0xc(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x8(r28)
    clrlslwi  r0, r26, 16, 2
    addi    r26, r26, 0x1
    stfsx   f1, r3, r0
branch_0x802d3730:
    lwz     r3, 0x0(r28)
    clrlwi  r4, r26, 16
    lwz     r3, 0x8(r3)
    lhzx    r0, r3, r27
    cmplw   r4, r0
    blt+    branch_0x802d3704
    lwz     r6, 0x8(r28)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      deform__11J3DDeformerFP8J3DModelUsPf
branch_0x802d375c:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl getWeight__13J3DAnmClusterCFUs
getWeight__13J3DAnmClusterCFUs: # 0x802d3770
    lfs     f1, 0x210(rtoc)
    blr


.globl deform__11J3DDeformerFP8J3DModelUsPf
deform__11J3DDeformerFP8J3DModelUsPf: # 0x802d3778
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stfd    f30, 0x108(sp)
    stfd    f29, 0x100(sp)
    stfd    f28, 0xf8(sp)
    stfd    f27, 0xf0(sp)
    stfd    f26, 0xe8(sp)
    stmw    r20, 0xb8(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r24, r5, 0x0
    addi    r31, r6, 0x0
    lwz     r0, 0x10(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802d37c4
    li      r0, 0x1
    b       branch_0x802d37c8

branch_0x802d37c4:
    li      r0, 0x0
branch_0x802d37c8:
    cmpwi   r0, 0x0
    beq-    branch_0x802d3e9c
    lwz     r3, 0x4(r30)
    bl      isDeformableVertexFormat__12J3DModelDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802d3e9c
    clrlwi  r7, r24, 16
    lwz     r4, 0x0(r29)
    mulli   r0, r7, 0x24
    lwz     r3, 0x8(r4)
    add     r28, r3, r0
    cmplwi  r7, 0x0
    lhz     r26, 0x12(r28)
    lhz     r25, 0x10(r28)
    li      r5, 0x0
    li      r6, 0x0
    ble-    branch_0x802d38d0
    cmplwi  r7, 0x8
    subi    r0, r24, 0x8
    ble-    branch_0x802d38a0
    clrlwi  r0, r0, 16
    b       branch_0x802d3894

branch_0x802d3820:
    clrlwi  r7, r6, 16
    mulli   r7, r7, 0x24
    add     r9, r3, r7
    lhz     r8, 0x10(r9)
    addi    r7, r9, 0x24
    lhz     r7, 0x10(r7)
    addi    r6, r6, 0x8
    add     r5, r8, r5
    addi    r5, r5, 0x1
    lhz     r8, 0x58(r9)
    add     r5, r7, r5
    lhz     r7, 0x10c(r9)
    addi    r5, r5, 0x1
    add     r5, r8, r5
    lhz     r8, 0x7c(r9)
    addi    r5, r5, 0x1
    add     r5, r8, r5
    lhz     r8, 0xa0(r9)
    addi    r5, r5, 0x1
    add     r5, r8, r5
    lhz     r8, 0xc4(r9)
    addi    r5, r5, 0x1
    add     r5, r8, r5
    lhz     r8, 0xe8(r9)
    addi    r5, r5, 0x1
    add     r5, r8, r5
    addi    r5, r5, 0x1
    add     r5, r7, r5
    addi    r5, r5, 0x1
branch_0x802d3894:
    clrlwi  r7, r6, 16
    cmplw   r7, r0
    blt+    branch_0x802d3820
branch_0x802d38a0:
    clrlwi  r0, r24, 16
    b       branch_0x802d38c4

branch_0x802d38a8:
    clrlwi  r7, r6, 16
    mulli   r7, r7, 0x24
    addi    r7, r7, 0x10
    lhzx    r7, r3, r7
    addi    r6, r6, 0x1
    add     r5, r7, r5
    addi    r5, r5, 0x1
branch_0x802d38c4:
    clrlwi  r7, r6, 16
    cmplw   r7, r0
    blt+    branch_0x802d38a8
branch_0x802d38d0:
    clrlwi  r0, r5, 16
    lwz     r6, 0xc(r4)
    mulli   r0, r0, 0xc
    addi    r3, r29, 0x0
    addi    r4, r25, 0x0
    addi    r5, r31, 0x0
    add     r27, r6, r0
    bl      normalizeWeight__11J3DDeformerFiPf
    lwz     r4, 0x98(r30)
    cmpwi   r26, 0x0
    lwz     r3, 0x0(r29)
    li      r6, 0x0
    lwz     r4, 0x4(r4)
    lwz     r0, 0x18(r3)
    li      r7, 0x0
    lwz     r5, 0x18(r28)
    ble-    branch_0x802d3a64
    cmpwi   r26, 0x8
    subi    r8, r26, 0x8
    ble-    branch_0x802d3a28
    addi    r3, r8, 0x7
    lfs     f0, 0x21c(rtoc)
    srwi    r3, r3, 3
    cmpwi   r8, 0x0
    mtctr   r3
    ble-    branch_0x802d3a28
branch_0x802d3938:
    add     r3, r5, r7
    lhz     r8, 0x0(r3)
    addi    r6, r6, 0x8
    addi    r7, r7, 0x10
    mulli   r8, r8, 0x3
    slwi    r8, r8, 2
    add     r8, r4, r8
    stfs    f0, 0x0(r8)
    stfs    f0, 0x4(r8)
    stfs    f0, 0x8(r8)
    lhz     r8, 0x2(r3)
    mulli   r8, r8, 0x3
    slwi    r8, r8, 2
    add     r8, r4, r8
    stfs    f0, 0x0(r8)
    stfs    f0, 0x4(r8)
    stfs    f0, 0x8(r8)
    lhz     r8, 0x4(r3)
    mulli   r8, r8, 0x3
    slwi    r8, r8, 2
    add     r8, r4, r8
    stfs    f0, 0x0(r8)
    stfs    f0, 0x4(r8)
    stfs    f0, 0x8(r8)
    lhz     r8, 0x6(r3)
    mulli   r8, r8, 0x3
    slwi    r8, r8, 2
    add     r8, r4, r8
    stfs    f0, 0x0(r8)
    stfs    f0, 0x4(r8)
    stfs    f0, 0x8(r8)
    lhz     r8, 0x8(r3)
    mulli   r8, r8, 0x3
    slwi    r8, r8, 2
    add     r8, r4, r8
    stfs    f0, 0x0(r8)
    stfs    f0, 0x4(r8)
    stfs    f0, 0x8(r8)
    lhz     r8, 0xa(r3)
    mulli   r8, r8, 0x3
    slwi    r8, r8, 2
    add     r8, r4, r8
    stfs    f0, 0x0(r8)
    stfs    f0, 0x4(r8)
    stfs    f0, 0x8(r8)
    lhz     r8, 0xc(r3)
    mulli   r8, r8, 0x3
    slwi    r8, r8, 2
    add     r8, r4, r8
    stfs    f0, 0x0(r8)
    stfs    f0, 0x4(r8)
    stfs    f0, 0x8(r8)
    lhz     r3, 0xe(r3)
    mulli   r3, r3, 0x3
    slwi    r3, r3, 2
    add     r3, r4, r3
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    bdnz+      branch_0x802d3938
branch_0x802d3a28:
    subf    r3, r6, r26
    lfs     f0, 0x21c(rtoc)
    cmpw    r6, r26
    mtctr   r3
    slwi    r3, r6, 1
    bge-    branch_0x802d3a64
branch_0x802d3a40:
    lhzx    r6, r5, r3
    addi    r3, r3, 0x2
    mulli   r6, r6, 0x3
    slwi    r6, r6, 2
    add     r6, r4, r6
    stfs    f0, 0x0(r6)
    stfs    f0, 0x4(r6)
    stfs    f0, 0x8(r6)
    bdnz+      branch_0x802d3a40
branch_0x802d3a64:
    lwz     r6, 0x214(rtoc)
    addi    r8, sp, 0x98
    lwz     r5, 0x218(rtoc)
    li      r3, 0x0
    stw     r6, 0x98(sp)
    stw     r5, 0x9c(sp)
    b       branch_0x802d3b38

branch_0x802d3a80:
    clrlslwi  r10, r3, 16, 1
    li      r5, 0x0
    b       branch_0x802d3b28

branch_0x802d3a8c:
    clrlwi  r7, r5, 16
    lwz     r6, 0x18(r28)
    mulli   r7, r7, 0xc
    lhzx    r6, r10, r6
    add     r7, r27, r7
    lwz     r7, 0x4(r7)
    mulli   r6, r6, 0xc
    lhzx    r11, r10, r7
    clrlslwi  r7, r5, 16, 2
    rlwinm  r9, r11, 0, 19, 15
    mulli   r9, r9, 0xc
    add     r12, r0, r9
    rlwinm  r9, r11, 19, 29, 29
    lfs     f2, 0x0(r12)
    lfsx    f0, r8, r9
    add     r9, r31, r7
    lfs     f3, 0x4(r12)
    rlwinm  r7, r11, 20, 29, 29
    lfs     f4, 0x8(r12)
    add     r12, r4, r6
    fmuls   f2, f2, f0
    lfs     f1, 0x0(r9)
    rlwinm  r6, r11, 21, 29, 29
    lfs     f0, 0x0(r12)
    addi    r5, r5, 0x1
    fmadds  f0, f2, f1, f0
    lfsx    f2, r8, r7
    lfsx    f1, r8, r6
    fmuls   f3, f3, f2
    stfs    f0, 0x0(r12)
    fmuls   f4, f4, f1
    lfs     f1, 0x0(r9)
    lfs     f0, 0x4(r12)
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x4(r12)
    lfs     f1, 0x0(r9)
    lfs     f0, 0x8(r12)
    fmadds  f0, f4, f1, f0
    stfs    f0, 0x8(r12)
branch_0x802d3b28:
    clrlwi  r6, r5, 16
    cmpw    r6, r25
    blt+    branch_0x802d3a8c
    addi    r3, r3, 0x1
branch_0x802d3b38:
    clrlwi  r5, r3, 16
    cmpw    r5, r26
    blt+    branch_0x802d3a80
    lwz     r0, 0x10(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x802d3b58
    li      r0, 0x1
    b       branch_0x802d3b5c

branch_0x802d3b58:
    li      r0, 0x0
branch_0x802d3b5c:
    cmpwi   r0, 0x0
    beq-    branch_0x802d3e9c
    lbz     r0, 0xc(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x802d3e9c
    lwz     r4, 0x98(r30)
    li      r24, 0x0
    lwz     r3, 0x0(r29)
    lwz     r25, 0xc(r4)
    lwz     r30, 0x1c(r3)
    lwz     r26, 0xc(r29)
    lfs     f26, 0x21c(rtoc)
    b       branch_0x802d3c5c

branch_0x802d3b90:
    clrlwi  r0, r24, 16
    mulli   r0, r0, 0xc
    add     r4, r26, r0
    stfs    f26, 0x0(r4)
    clrlslwi  r5, r24, 16, 1
    li      r8, 0x0
    stfs    f26, 0x4(r4)
    stfs    f26, 0x8(r4)
    b       branch_0x802d3c40

branch_0x802d3bb4:
    clrlwi  r7, r8, 16
    mulli   r0, r7, 0xc
    add     r3, r27, r0
    lwz     r0, 0x8(r3)
    lhzx    r3, r5, r0
    rlwinm  r0, r3, 0, 19, 15
    mulli   r0, r0, 0xc
    add     r6, r30, r0
    rlwinm. r0, r3, 0, 16, 16
    lfs     f2, 0x0(r6)
    lfs     f3, 0x4(r6)
    lfs     f4, 0x8(r6)
    beq-    branch_0x802d3bec
    fneg    f2, f2
branch_0x802d3bec:
    rlwinm. r0, r3, 0, 17, 17
    beq-    branch_0x802d3bf8
    fneg    f3, f3
branch_0x802d3bf8:
    rlwinm. r0, r3, 0, 18, 18
    beq-    branch_0x802d3c04
    fneg    f4, f4
branch_0x802d3c04:
    slwi    r0, r7, 2
    lfs     f0, 0x0(r4)
    add     r3, r31, r0
    lfs     f1, 0x0(r3)
    addi    r8, r8, 0x1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x0(r4)
    lfs     f1, 0x0(r3)
    lfs     f0, 0x4(r4)
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x4(r4)
    lfs     f1, 0x0(r3)
    lfs     f0, 0x8(r4)
    fmadds  f0, f4, f1, f0
    stfs    f0, 0x8(r4)
branch_0x802d3c40:
    lhz     r0, 0x10(r28)
    clrlwi  r3, r8, 16
    cmplw   r3, r0
    blt+    branch_0x802d3bb4
    mr      r3, r29
    bl      normalize__11J3DDeformerFPf
    addi    r24, r24, 0x1
branch_0x802d3c5c:
    lhz     r0, 0x14(r28)
    clrlwi  r3, r24, 16
    cmplw   r3, r0
    blt+    branch_0x802d3b90
    lfs     f29, 0x220(rtoc)
    li      r24, 0x0
    lfs     f28, 0x210(rtoc)
    lis     r30, 0x4330
    lfs     f30, 0x224(rtoc)
    lfs     f31, 0x228(rtoc)
    lfs     f26, 0x21c(rtoc)
    lfd     f27, 0x230(rtoc)
    b       branch_0x802d3e8c

branch_0x802d3c90:
    lwz     r3, 0x1c(r28)
    clrlwi  r0, r24, 16
    mulli   r0, r0, 0xc
    stfs    f26, 0x70(sp)
    stfs    f26, 0x74(sp)
    add     r27, r3, r0
    li      r4, 0x0
    stfs    f26, 0x78(sp)
    lhz     r0, 0x0(r27)
    stw     r0, 0xb4(sp)
    stw     r30, 0xb0(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f0, f0, f27
    fdivs   f2, f28, f0
    b       branch_0x802d3d14

branch_0x802d3ccc:
    lwz     r3, 0x4(r27)
    clrlslwi  r0, r4, 16, 1
    lfs     f0, 0x70(sp)
    addi    r4, r4, 0x1
    lhzx    r0, r3, r0
    mulli   r0, r0, 0xc
    add     r3, r26, r0
    lfs     f1, 0x0(r3)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x74(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x78(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x78(sp)
branch_0x802d3d14:
    lhz     r0, 0x0(r27)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x802d3ccc
    addi    r3, r29, 0x0
    addi    r4, sp, 0x70
    bl      normalize__11J3DDeformerFPf
    li      r31, 0x0
    b       branch_0x802d3e78

branch_0x802d3d38:
    lwz     r3, 0x8(r27)
    clrlslwi  r0, r31, 16, 1
    lwz     r4, 0x4(r27)
    lhzx    r23, r3, r0
    lhzx    r0, r4, r0
    cmplwi  r23, 0xffff
    beq-    branch_0x802d3e74
    mulli   r0, r0, 0xc
    lfs     f1, 0x74(sp)
    lfs     f3, 0x70(sp)
    lfs     f5, 0x78(sp)
    add     r22, r26, r0
    addi    r21, r22, 0x4
    lfs     f2, 0x0(r22)
    lfs     f0, 0x4(r22)
    addi    r20, r22, 0x8
    lfs     f4, 0x8(r22)
    fmuls   f0, f1, f0
    fmadds  f0, f3, f2, f0
    fmadds  f0, f5, f4, f0
    fcmpo   cr0, f0, f28
    fmr     f1, f0
    cror    2, 1, 2
    bne-    branch_0x802d3da0
    lfs     f2, 0x21c(rtoc)
    b       branch_0x802d3dbc

branch_0x802d3da0:
    fcmpo   cr0, f1, f29
    ble-    branch_0x802d3db8
    bl      acosf
    fmuls   f0, f30, f1
    fdivs   f2, f0, f31
    b       branch_0x802d3dbc

branch_0x802d3db8:
    lfs     f2, 0x224(rtoc)
branch_0x802d3dbc:
    lfs     f0, 0x4(r28)
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x802d3df0
    mulli   r0, r23, 0xc
    lfs     f0, 0x70(sp)
    add     r3, r25, r0
    stfs    f0, 0x0(r3)
    lfs     f0, 0x74(sp)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x78(sp)
    stfs    f0, 0x8(r3)
    b       branch_0x802d3e74

branch_0x802d3df0:
    lfs     f1, 0x0(r28)
    fcmpo   cr0, f2, f1
    ble-    branch_0x802d3e20
    mulli   r0, r23, 0xc
    lfs     f0, 0x0(r22)
    add     r3, r25, r0
    stfs    f0, 0x0(r3)
    lfs     f0, 0x0(r21)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x0(r20)
    stfs    f0, 0x8(r3)
    b       branch_0x802d3e74

branch_0x802d3e20:
    fsubs   f3, f2, f0
    mulli   r0, r23, 0xc
    fsubs   f2, f1, f0
    lfs     f0, 0x0(r22)
    lfs     f1, 0x70(sp)
    fdivs   f2, f3, f2
    add     r3, r25, r0
    fsubs   f3, f28, f2
    fmuls   f0, f2, f0
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f0, 0x0(r21)
    lfs     f1, 0x74(sp)
    fmuls   f0, f2, f0
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f0, 0x0(r20)
    lfs     f1, 0x78(sp)
    fmuls   f0, f2, f0
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x8(r3)
branch_0x802d3e74:
    addi    r31, r31, 0x1
branch_0x802d3e78:
    lhz     r0, 0x0(r27)
    clrlwi  r3, r31, 16
    cmplw   r3, r0
    blt+    branch_0x802d3d38
    addi    r24, r24, 0x1
branch_0x802d3e8c:
    lhz     r0, 0x16(r28)
    clrlwi  r3, r24, 16
    cmplw   r3, r0
    blt+    branch_0x802d3c90
branch_0x802d3e9c:
    lmw     r20, 0xb8(sp)
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lfd     f30, 0x108(sp)
    mtlr    r0
    lfd     f29, 0x100(sp)
    lfd     f28, 0xf8(sp)
    lfd     f27, 0xf0(sp)
    lfd     f26, 0xe8(sp)
    addi    sp, sp, 0x118
    blr


.globl normalize__11J3DDeformerFPf
normalize__11J3DDeformerFPf: # 0x802d3ec8
    stwu    sp, -0x18(sp)
    lfs     f1, 0x0(r4)
    lfs     f0, 0x4(r4)
    fmuls   f2, f1, f1
    lfs     f3, 0x8(r4)
    fmuls   f1, f0, f0
    lfs     f0, 0x21c(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x802d3f44
    frsqrte f1, f4
    lfd     f3, 0x238(rtoc)
    lfd     f2, 0x240(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x10(sp)
    lfs     f4, 0x10(sp)
branch_0x802d3f44:
    lfs     f1, 0x210(rtoc)
    lfs     f0, 0x0(r4)
    fdivs   f1, f1, f4
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r4)
    lfs     f0, 0x4(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r4)
    lfs     f0, 0x8(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r4)
    addi    sp, sp, 0x18
    blr


.globl normalizeWeight__11J3DDeformerFiPf
normalizeWeight__11J3DDeformerFiPf: # 0x802d3f78
    lfs     f1, 0x21c(rtoc)
    li      r3, 0x0
    b       branch_0x802d3f94

branch_0x802d3f84:
    clrlslwi  r0, r3, 16, 2
    lfsx    f0, r5, r0
    addi    r3, r3, 0x1
    fadds   f1, f1, f0
branch_0x802d3f94:
    clrlwi  r0, r3, 16
    cmpw    r0, r4
    blt+    branch_0x802d3f84
    lfs     f0, 0x210(rtoc)
    li      r3, 0x0
    fdivs   f1, f0, f1
    b       branch_0x802d3fc4

branch_0x802d3fb0:
    clrlslwi  r0, r3, 16, 2
    lfsx    f0, r5, r0
    addi    r3, r3, 0x1
    fmuls   f0, f0, f1
    stfsx   f0, r5, r0
branch_0x802d3fc4:
    clrlwi  r0, r3, 16
    cmpw    r0, r4
    blt+    branch_0x802d3fb0
    blr


.globl __ct__13J3DSkinDeformFv
__ct__13J3DSkinDeformFv: # 0x802d3fd4
    lis     r4, 0x803e
    addi    r0, r4, 0x7e0
    stw     r0, 0x0(r3)
    li      r4, 0x0
    li      r0, 0x3
    stw     r4, 0x4(r3)
    stw     r4, 0x8(r3)
    stw     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    blr


.globl initMtxIndexArray__13J3DSkinDeformFP12J3DModelData
initMtxIndexArray__13J3DSkinDeformFP12J3DModelData: # 0x802d3ffc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stmw    r14, 0xc8(sp)
    mr      r28, r3
    addi    r16, r4, 0x0
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802d402c
    lwz     r0, 0x8(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x802d43c4
branch_0x802d402c:
    lwz     r0, 0x3c(r16)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    li      r4, 0x0
    stw     r3, 0x4(r28)
    addi    r5, r4, 0x0
    li      r6, 0x0
    b       branch_0x802d405c

branch_0x802d404c:
    lwz     r3, 0x4(r28)
    addi    r6, r6, 0x1
    sthx    r5, r3, r4
    addi    r4, r4, 0x2
branch_0x802d405c:
    lwz     r0, 0x3c(r16)
    cmplw   r6, r0
    blt+    branch_0x802d404c
    lwz     r0, 0x40(r16)
    cmplwi  r0, 0x0
    beq-    branch_0x802d40b0
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x8(r28)
    li      r6, 0x0
    li      r3, 0x0
    li      r5, 0x0
    b       branch_0x802d40a0

branch_0x802d4090:
    lwz     r4, 0x8(r28)
    addi    r6, r6, 0x1
    sthx    r5, r4, r3
    addi    r3, r3, 0x2
branch_0x802d40a0:
    lwz     r0, 0x40(r16)
    cmplw   r6, r0
    blt+    branch_0x802d4090
    b       branch_0x802d40b8

branch_0x802d40b0:
    li      r0, 0x0
    stw     r0, 0x8(r28)
branch_0x802d40b8:
    lhz     r0, 0x98(r16)
    li      r4, 0x20
    mulli   r3, r0, 0x24
    bl      __nwa__FUli
    stw     r3, 0xc(r28)
    addi    r0, sp, 0xac
    lis     r3, 0x803b
    stw     r0, 0xc4(sp)
    subi    r0, r3, 0x60a8
    lis     r4, 0xaaab
    stw     r0, 0xc0(sp)
    li      r0, 0x0
    subi    r18, r4, 0x5555
    sth     r0, 0xbe(sp)
    addi    r26, sp, 0x90
    b       branch_0x802d4334

branch_0x802d40f8:
    lwz     r3, 0xc0(sp)
    li      r27, -0x1
    lhz     r0, 0xbe(sp)
    li      r20, -0x1
    lwz     r4, 0x0(r3)
    lwz     r3, 0xc0(sp)
    clrlslwi  r14, r0, 16, 2
    li      r29, -0x1
    lwz     r3, 0x4(r3)
    li      r22, 0x0
    stw     r4, 0xac(sp)
    stw     r3, 0xb0(sp)
    lwz     r3, 0xc0(sp)
    lwz     r4, 0x8(r3)
    lwz     r3, 0xc0(sp)
    lwz     r0, 0xc(r3)
    stw     r4, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r3, 0x30(r16)
    lwzx    r3, r3, r14
    lwz     r4, 0x2c(r3)
    b       branch_0x802d41c4

branch_0x802d4150:
    cmpwi   r0, 0xa
    beq-    branch_0x802d419c
    bge-    branch_0x802d4174
    cmpwi   r0, 0x0
    beq-    branch_0x802d4180
    blt-    branch_0x802d41ac
    cmpwi   r0, 0x9
    bge-    branch_0x802d4188
    b       branch_0x802d41ac

branch_0x802d4174:
    cmpwi   r0, 0xd
    beq-    branch_0x802d41ac
    b       branch_0x802d41ac

branch_0x802d4180:
    mr      r27, r22
    b       branch_0x802d41ac

branch_0x802d4188:
    lwz     r0, 0x4(r4)
    addi    r20, r22, 0x0
    cmpwi   r0, 0x3
    beq-    branch_0x802d41ac
    b       branch_0x802d43c4

branch_0x802d419c:
    lwz     r0, 0x4(r4)
    addi    r29, r22, 0x0
    cmpwi   r0, 0x3
    bne-    branch_0x802d43c4
branch_0x802d41ac:
    lwz     r0, 0x4(r4)
    addi    r4, r4, 0x8
    lwz     r3, 0xc4(sp)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    add     r22, r22, r0
branch_0x802d41c4:
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0xff
    bne+    branch_0x802d4150
    li      r0, 0x0
    sth     r0, 0xbc(sp)
    b       branch_0x802d42e4

branch_0x802d41dc:
    lhz     r0, 0xbc(sp)
    lwz     r4, 0x38(r3)
    clrlslwi  r17, r0, 16, 2
    lwz     r3, 0x34(r3)
    lwzx    r4, r4, r17
    lwzx    r19, r3, r17
    lwz     r15, 0x8(r4)
    addi    r25, r15, 0x0
    b       branch_0x802d42b8

branch_0x802d4200:
    lbz     r0, 0x0(r25)
    cmplwi  r0, 0xa0
    beq-    branch_0x802d4214
    cmplwi  r0, 0x98
    bne-    branch_0x802d42d8
branch_0x802d4214:
    lhz     r21, 0x1(r25)
    li      r31, 0x0
    b       branch_0x802d42a4

branch_0x802d4220:
    mullw   r0, r22, r31
    lwz     r12, 0x0(r19)
    lwz     r12, 0x14(r12)
    mtlr    r12
    add     r4, r25, r0
    addi    r4, r4, 0x3
    lbzx    r0, r4, r27
    mr      r3, r19
    lhzx    r23, r4, r20
    mulhwu  r0, r18, r0
    lhzx    r24, r4, r29
    extrwi  r30, r0, 8, 23
    addi    r4, r30, 0x0
    blrl
    clrlwi  r0, r3, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x802d4270
    slwi    r0, r30, 1
    lhzx    r3, r26, r0
    b       branch_0x802d4280

branch_0x802d4270:
    cmpwi   r27, -0x1
    beq-    branch_0x802d4280
    slwi    r0, r30, 1
    sthx    r3, r26, r0
branch_0x802d4280:
    lwz     r4, 0x4(r28)
    slwi    r0, r23, 1
    cmpwi   r29, -0x1
    sthx    r3, r4, r0
    beq-    branch_0x802d42a0
    lwz     r4, 0x8(r28)
    slwi    r0, r24, 1
    sthx    r3, r4, r0
branch_0x802d42a0:
    addi    r31, r31, 0x1
branch_0x802d42a4:
    cmpw    r31, r21
    blt+    branch_0x802d4220
    mullw   r0, r22, r21
    add     r25, r25, r0
    addi    r25, r25, 0x3
branch_0x802d42b8:
    lwz     r0, 0x30(r16)
    subf    r4, r15, r25
    lwzx    r3, r14, r0
    lwz     r0, 0x38(r3)
    lwzx    r3, r17, r0
    lwz     r0, 0x4(r3)
    cmplw   r4, r0
    blt+    branch_0x802d4200
branch_0x802d42d8:
    lhz     r3, 0xbc(sp)
    addi    r3, r3, 0x1
    sth     r3, 0xbc(sp)
branch_0x802d42e4:
    lwz     r5, 0x30(r16)
    lhz     r0, 0xbc(sp)
    lwzx    r3, r14, r5
    lhz     r4, 0x6(r3)
    cmplw   r0, r4
    blt+    branch_0x802d41dc
    cmpwi   r29, -0x1
    bne-    branch_0x802d4328
    lwzx    r3, r5, r14
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x10
    stw     r0, 0x8(r3)
    lwz     r3, 0x30(r16)
    lwzx    r3, r3, r14
    lwz     r0, 0x8(r3)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0x8(r3)
branch_0x802d4328:
    lhz     r3, 0xbe(sp)
    addi    r3, r3, 0x1
    sth     r3, 0xbe(sp)
branch_0x802d4334:
    lhz     r3, 0x2c(r16)
    lhz     r0, 0xbe(sp)
    cmplw   r0, r3
    blt+    branch_0x802d40f8
    li      r7, 0x0
    li      r3, 0x0
    li      r4, 0x0
    b       branch_0x802d4378

branch_0x802d4354:
    lwz     r5, 0x4(r28)
    lhz     r0, 0x98(r16)
    add     r6, r5, r3
    lhz     r5, 0x0(r6)
    cmplw   r5, r0
    blt-    branch_0x802d4370
    sth     r4, 0x0(r6)
branch_0x802d4370:
    addi    r7, r7, 0x1
    addi    r3, r3, 0x2
branch_0x802d4378:
    lwz     r0, 0x3c(r16)
    cmplw   r7, r0
    blt+    branch_0x802d4354
    li      r7, 0x0
    li      r3, 0x0
    li      r4, 0x0
    b       branch_0x802d43b8

branch_0x802d4394:
    lwz     r5, 0x8(r28)
    lhz     r0, 0x98(r16)
    add     r6, r5, r3
    lhz     r5, 0x0(r6)
    cmplw   r5, r0
    blt-    branch_0x802d43b0
    sth     r4, 0x0(r6)
branch_0x802d43b0:
    addi    r7, r7, 0x1
    addi    r3, r3, 0x2
branch_0x802d43b8:
    lwz     r0, 0x40(r16)
    cmplw   r7, r0
    blt+    branch_0x802d4394
branch_0x802d43c4:
    lmw     r14, 0xc8(sp)
    lwz     r0, 0x114(sp)
    addi    sp, sp, 0x110
    mtlr    r0
    blr


.globl calcNrmMtx__13J3DSkinDeformFP8J3DModel
calcNrmMtx__13J3DSkinDeformFP8J3DModel: # 0x802d43d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    li      r30, 0x0
    stw     r29, 0x64(sp)
    mr      r29, r4
    stw     r28, 0x60(sp)
    addi    r28, r3, 0x0
    lwz     r31, 0x4(r4)
    b       branch_0x802d44d4

branch_0x802d4408:
    lwz     r3, 0x9c(r31)
    clrlwi  r6, r30, 16
    lbzx    r0, r3, r6
    cmplwi  r0, 0x0
    bne-    branch_0x802d4478
    lwz     r3, 0xa0(r31)
    slwi    r0, r6, 1
    lwz     r4, 0x50(r29)
    lhzx    r7, r3, r0
    lbzx    r0, r4, r7
    cmplwi  r0, 0x1
    bne-    branch_0x802d4458
    mulli   r3, r7, 0x30
    lwz     r5, 0x58(r29)
    lwz     r4, 0xc(r28)
    mulli   r0, r6, 0x24
    add     r3, r5, r3
    add     r4, r4, r0
    bl      J3DPSMtx33CopyFrom34__FPA4_fPA3_f
    b       branch_0x802d44d0

branch_0x802d4458:
    mulli   r4, r6, 0x24
    lwz     r5, 0xc(r28)
    lwz     r3, 0x58(r29)
    mulli   r0, r7, 0x30
    add     r4, r5, r4
    add     r3, r3, r0
    bl      J3DPSCalcInverseTranspose__FPA4_fPA3_f
    b       branch_0x802d44d0

branch_0x802d4478:
    lwz     r3, 0xa0(r31)
    slwi    r0, r6, 1
    lwz     r4, 0x54(r29)
    lhzx    r7, r3, r0
    lbzx    r0, r4, r7
    cmplwi  r0, 0x1
    bne-    branch_0x802d44b4
    mulli   r3, r7, 0x30
    lwz     r5, 0x5c(r29)
    lwz     r4, 0xc(r28)
    mulli   r0, r6, 0x24
    add     r3, r5, r3
    add     r4, r4, r0
    bl      J3DPSMtx33CopyFrom34__FPA4_fPA3_f
    b       branch_0x802d44d0

branch_0x802d44b4:
    mulli   r4, r6, 0x24
    lwz     r5, 0xc(r28)
    lwz     r3, 0x5c(r29)
    mulli   r0, r7, 0x30
    add     r4, r5, r4
    add     r3, r3, r0
    bl      J3DPSCalcInverseTranspose__FPA4_fPA3_f
branch_0x802d44d0:
    addi    r30, r30, 0x1
branch_0x802d44d4:
    lhz     r0, 0x98(r31)
    clrlwi  r3, r30, 16
    cmplw   r3, r0
    blt+    branch_0x802d4408
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl deform__13J3DSkinDeformFP8J3DModel
deform__13J3DSkinDeformFP8J3DModel: # 0x802d4504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    mr      r29, r4
    mr      r28, r3
    lwz     r4, 0x58(r4)
    stw     r4, 0x10(sp)
    lwz     r3, 0x5c(r29)
    stw     r3, 0x14(sp)
    lwz     r3, 0x8(r29)
    rlwinm. r3, r3, 0, 29, 29
    beq-    branch_0x802d4540
    li      r3, 0x1
    b       branch_0x802d4544

branch_0x802d4540:
    li      r3, 0x0
branch_0x802d4544:
    cmpwi   r3, 0x0
    beq-    branch_0x802d4768
    lwz     r8, 0x98(r29)
    addi    r9, sp, 0x10
    li      r5, 0x0
    lwz     r4, 0x1c(r8)
    li      r7, 0x0
    lwz     r3, 0x20(r8)
    stw     r3, 0x1c(r8)
    stw     r4, 0x20(r8)
    lwz     r4, 0x4(r29)
    lwz     r3, 0x98(r29)
    lwz     r4, 0x3c(r4)
    lwz     r26, 0x2c(r3)
    cmpwi   r4, 0x0
    lwz     r31, 0x1c(r3)
    ble-    branch_0x802d4748
    srwi.   r3, r4, 1
    mtctr   r3
    beq-    branch_0x802d46b0
branch_0x802d4594:
    lwz     r12, 0x4(r28)
    add     r27, r31, r5
    lwz     r3, 0x4(r29)
    add     r30, r26, r5
    lhzx    r10, r12, r7
    lwz     r11, 0x9c(r3)
    lwz     r8, 0xa0(r3)
    slwi    r3, r10, 1
    lbzx    r10, r11, r10
    lhzx    r3, r8, r3
    slwi    r10, r10, 2
    mulli   r3, r3, 0x30
    lwzx    r10, r9, r10
    add     r3, r10, r3
    psq_l   f0, 0x0(30), 0, 0
    psq_l   f2, 0x0(3), 0, 0
    psq_l   f1, 0x8(30), 1, 0
    ps_mul  f4, f2, f0
    psq_l   f3, 0x8(3), 0, 0
    ps_madd f5, f3, f1, f4
    psq_l   f8, 0x10(3), 0, 0
    ps_sum0 f6, f5, f6, f5
    psq_l   f9, 0x18(3), 0, 0
    ps_mul  f10, f8, f0
    psq_st  f6, 0x0(27), 1, 0
    ps_madd f11, f9, f1, f10
    psq_l   f2, 0x20(3), 0, 0
    ps_sum0 f12, f11, f12, f11
    psq_l   f3, 0x28(3), 0, 0
    ps_mul  f4, f2, f0
    psq_st  f12, 0x4(27), 1, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_st  f6, 0x8(27), 1, 0
    addi    r5, r5, 0xc
    addi    r7, r7, 0x2
    lhzx    r10, r12, r7
    add     r27, r31, r5
    add     r30, r26, r5
    slwi    r3, r10, 1
    lbzx    r10, r11, r10
    lhzx    r3, r8, r3
    slwi    r10, r10, 2
    mulli   r3, r3, 0x30
    lwzx    r10, r9, r10
    add     r3, r10, r3
    psq_l   f0, 0x0(30), 0, 0
    psq_l   f2, 0x0(3), 0, 0
    psq_l   f1, 0x8(30), 1, 0
    ps_mul  f4, f2, f0
    psq_l   f3, 0x8(3), 0, 0
    ps_madd f5, f3, f1, f4
    psq_l   f8, 0x10(3), 0, 0
    ps_sum0 f6, f5, f6, f5
    psq_l   f9, 0x18(3), 0, 0
    ps_mul  f10, f8, f0
    psq_st  f6, 0x0(27), 1, 0
    ps_madd f11, f9, f1, f10
    psq_l   f2, 0x20(3), 0, 0
    ps_sum0 f12, f11, f12, f11
    psq_l   f3, 0x28(3), 0, 0
    ps_mul  f4, f2, f0
    psq_st  f12, 0x4(27), 1, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_st  f6, 0x8(27), 1, 0
    addi    r5, r5, 0xc
    addi    r7, r7, 0x2
    bdnz+      branch_0x802d4594
    andi.   r4, r4, 0x1
    beq-    branch_0x802d4748
branch_0x802d46b0:
    mtctr   r4
branch_0x802d46b4:
    lwz     r12, 0x4(r28)
    add     r27, r31, r5
    lwz     r3, 0x4(r29)
    add     r30, r26, r5
    lhzx    r10, r12, r7
    lwz     r11, 0x9c(r3)
    lwz     r8, 0xa0(r3)
    slwi    r3, r10, 1
    lbzx    r10, r11, r10
    lhzx    r3, r8, r3
    slwi    r10, r10, 2
    mulli   r3, r3, 0x30
    lwzx    r10, r9, r10
    add     r3, r10, r3
    psq_l   f0, 0x0(30), 0, 0
    psq_l   f2, 0x0(3), 0, 0
    psq_l   f1, 0x8(30), 1, 0
    ps_mul  f4, f2, f0
    psq_l   f3, 0x8(3), 0, 0
    ps_madd f5, f3, f1, f4
    psq_l   f8, 0x10(3), 0, 0
    ps_sum0 f6, f5, f6, f5
    psq_l   f9, 0x18(3), 0, 0
    ps_mul  f10, f8, f0
    psq_st  f6, 0x0(27), 1, 0
    ps_madd f11, f9, f1, f10
    psq_l   f2, 0x20(3), 0, 0
    ps_sum0 f12, f11, f12, f11
    psq_l   f3, 0x28(3), 0, 0
    ps_mul  f4, f2, f0
    psq_st  f12, 0x4(27), 1, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_st  f6, 0x8(27), 1, 0
    addi    r5, r5, 0xc
    addi    r7, r7, 0x2
    bdnz+      branch_0x802d46b4
branch_0x802d4748:
    lwz     r3, 0x4(r29)
    lwz     r5, 0x98(r29)
    lwz     r4, 0x3c(r3)
    lwz     r3, 0x1c(r5)
    mulli   r4, r4, 0xc
    bl      DCStoreRange
    lwz     r3, 0x98(r29)
    stw     r31, 0x2c(r3)
branch_0x802d4768:
    lwz     r3, 0x8(r29)
    rlwinm. r3, r3, 0, 28, 28
    beq-    branch_0x802d477c
    li      r3, 0x1
    b       branch_0x802d4780

branch_0x802d477c:
    li      r3, 0x0
branch_0x802d4780:
    cmpwi   r3, 0x0
    beq-    branch_0x802d4994
    lwz     r8, 0x98(r29)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    lwz     r7, 0x24(r8)
    lwz     r5, 0x28(r8)
    stw     r5, 0x24(r8)
    stw     r7, 0x28(r8)
    lwz     r5, 0x98(r29)
    lwz     r7, 0x4(r29)
    lwz     r31, 0x30(r5)
    lwz     r26, 0x40(r7)
    lwz     r30, 0x24(r5)
    bl      calcNrmMtx__13J3DSkinDeformFP8J3DModel
    cmpwi   r26, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x0
    li      r7, 0x0
    ble-    branch_0x802d4974
    srwi.   r3, r4, 1
    mtctr   r3
    beq-    branch_0x802d48e8
branch_0x802d47dc:
    lwz     r8, 0x8(r28)
    add     r11, r30, r7
    lwz     r9, 0xc(r28)
    add     r10, r31, r7
    lhzx    r3, r8, r5
    mulli   r3, r3, 0x24
    add     r3, r9, r3
    lis     r6, 0x803e
    psq_l   f0, 0x0(10), 0, 0
    addi    r6, r6, 0x7d8
    psq_l   f2, 0x0(3), 0, 0
    psq_l   f13, 0x0(6), 0, 0
    psq_l   f1, 0x8(10), 1, 0
    ps_add  f1, f13, f1
    psq_l   f3, 0x8(3), 1, 0
    ps_mul  f4, f2, f0
    psq_l   f8, 0xc(3), 0, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_l   f9, 0x14(3), 1, 0
    ps_mul  f10, f8, f0
    psq_st  f6, 0x0(11), 1, 0
    ps_madd f11, f9, f1, f10
    psq_l   f2, 0x18(3), 0, 0
    ps_sum0 f12, f11, f12, f11
    psq_l   f3, 0x20(3), 1, 0
    ps_mul  f4, f2, f0
    psq_st  f12, 0x4(11), 1, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_st  f6, 0x8(11), 1, 0
    addi    r7, r7, 0xc
    addi    r5, r5, 0x2
    lhzx    r3, r8, r5
    add     r11, r30, r7
    add     r10, r31, r7
    mulli   r3, r3, 0x24
    add     r3, r9, r3
    lis     r6, 0x803e
    psq_l   f0, 0x0(10), 0, 0
    addi    r6, r6, 0x7d8
    psq_l   f2, 0x0(3), 0, 0
    psq_l   f13, 0x0(6), 0, 0
    psq_l   f1, 0x8(10), 1, 0
    ps_add  f1, f13, f1
    psq_l   f3, 0x8(3), 1, 0
    ps_mul  f4, f2, f0
    psq_l   f8, 0xc(3), 0, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_l   f9, 0x14(3), 1, 0
    ps_mul  f10, f8, f0
    psq_st  f6, 0x0(11), 1, 0
    ps_madd f11, f9, f1, f10
    psq_l   f2, 0x18(3), 0, 0
    ps_sum0 f12, f11, f12, f11
    psq_l   f3, 0x20(3), 1, 0
    ps_mul  f4, f2, f0
    psq_st  f12, 0x4(11), 1, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_st  f6, 0x8(11), 1, 0
    addi    r5, r5, 0x2
    addi    r7, r7, 0xc
    bdnz+      branch_0x802d47dc
    andi.   r4, r4, 0x1
    beq-    branch_0x802d4974
branch_0x802d48e8:
    mtctr   r4
branch_0x802d48ec:
    lwz     r8, 0x8(r28)
    add     r11, r30, r7
    lwz     r9, 0xc(r28)
    add     r10, r31, r7
    lhzx    r3, r8, r5
    mulli   r3, r3, 0x24
    add     r3, r9, r3
    lis     r6, 0x803e
    psq_l   f0, 0x0(10), 0, 0
    addi    r6, r6, 0x7d8
    psq_l   f2, 0x0(3), 0, 0
    psq_l   f13, 0x0(6), 0, 0
    psq_l   f1, 0x8(10), 1, 0
    ps_add  f1, f13, f1
    psq_l   f3, 0x8(3), 1, 0
    ps_mul  f4, f2, f0
    psq_l   f8, 0xc(3), 0, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_l   f9, 0x14(3), 1, 0
    ps_mul  f10, f8, f0
    psq_st  f6, 0x0(11), 1, 0
    ps_madd f11, f9, f1, f10
    psq_l   f2, 0x18(3), 0, 0
    ps_sum0 f12, f11, f12, f11
    psq_l   f3, 0x20(3), 1, 0
    ps_mul  f4, f2, f0
    psq_st  f12, 0x4(11), 1, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_st  f6, 0x8(11), 1, 0
    addi    r5, r5, 0x2
    addi    r7, r7, 0xc
    bdnz+      branch_0x802d48ec
branch_0x802d4974:
    lwz     r3, 0x4(r29)
    lwz     r5, 0x98(r29)
    lwz     r4, 0x40(r3)
    lwz     r3, 0x24(r5)
    mulli   r4, r4, 0xc
    bl      DCStoreRange
    lwz     r3, 0x98(r29)
    stw     r30, 0x30(r3)
branch_0x802d4994:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getColor__14J3DAnmVtxColorCFUcUsP8_GXColor
getColor__14J3DAnmVtxColorCFUcUsP8_GXColor: # 0x802d49a8
    blr


.globl __dt__13J3DSkinDeformFv
__dt__13J3DSkinDeformFv: # 0x802d49ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802d49e0
    lis     r3, 0x803e
    addi    r3, r3, 0x7e0
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802d49e0
    mr      r3, r31
    bl      __dl__FPv
branch_0x802d49e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

