
.globl polygonIsInGrid__17TMapCollisionDataFffffP12TBGCheckData
polygonIsInGrid__17TMapCollisionDataFffffP12TBGCheckData: # 0x8018ab54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2c0(sp)
    stfd    f31, 0x2b8(sp)
    fmr     f31, f4
    stfd    f30, 0x2b0(sp)
    fmr     f30, f3
    stfd    f29, 0x2a8(sp)
    fmr     f29, f2
    stfd    f28, 0x2a0(sp)
    fmr     f28, f1
    stfd    f27, 0x298(sp)
    stfd    f26, 0x290(sp)
    stw     r31, 0x28c(sp)
    mr      r31, r4
    stw     r30, 0x288(sp)
    stw     r29, 0x284(sp)
    stw     r28, 0x280(sp)
    lfs     f0, -0x4458(r2)
    lfs     f5, 0x38(r4)
    fcmpo   cr0, f5, f0
    bge-    branch_0x8018abb4
    li      r3, 0x1
    b       branch_0x8018b154

branch_0x8018abb4:
    lfs     f0, 0x10(r31)
    lfs     f3, 0x18(r31)
    fcmpo   cr0, f28, f0
    cror    2, 0, 2
    bne-    branch_0x8018abf4
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    bne-    branch_0x8018abf4
    fcmpo   cr0, f29, f3
    cror    2, 0, 2
    bne-    branch_0x8018abf4
    fcmpo   cr0, f3, f31
    cror    2, 0, 2
    bne-    branch_0x8018abf4
    li      r0, 0x1
    b       branch_0x8018abf8

branch_0x8018abf4:
    li      r0, 0x0
branch_0x8018abf8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018ac98
    lfs     f1, 0x1c(r31)
    lfs     f4, 0x24(r31)
    fcmpo   cr0, f28, f1
    cror    2, 0, 2
    bne-    branch_0x8018ac40
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    bne-    branch_0x8018ac40
    fcmpo   cr0, f29, f4
    cror    2, 0, 2
    bne-    branch_0x8018ac40
    fcmpo   cr0, f4, f31
    cror    2, 0, 2
    bne-    branch_0x8018ac40
    li      r0, 0x1
    b       branch_0x8018ac44

branch_0x8018ac40:
    li      r0, 0x0
branch_0x8018ac44:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018ac98
    lfs     f2, 0x28(r31)
    lfs     f5, 0x30(r31)
    fcmpo   cr0, f28, f2
    cror    2, 0, 2
    bne-    branch_0x8018ac8c
    fcmpo   cr0, f2, f30
    cror    2, 0, 2
    bne-    branch_0x8018ac8c
    fcmpo   cr0, f29, f5
    cror    2, 0, 2
    bne-    branch_0x8018ac8c
    fcmpo   cr0, f5, f31
    cror    2, 0, 2
    bne-    branch_0x8018ac8c
    li      r0, 0x1
    b       branch_0x8018ac90

branch_0x8018ac8c:
    li      r0, 0x0
branch_0x8018ac90:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018aca0
branch_0x8018ac98:
    li      r3, 0x1
    b       branch_0x8018b154

branch_0x8018aca0:
    fsubs   f8, f3, f29
    lfs     f12, -0x4458(r2)
    fsubs   f7, f1, f0
    fsubs   f6, f0, f28
    fsubs   f27, f4, f3
    fmuls   f26, f8, f7
    fmuls   f6, f6, f27
    fsubs   f8, f26, f6
    fcmpo   cr0, f8, f12
    bge-    branch_0x8018acd0
    li      r0, 0x0
    b       branch_0x8018ad24

branch_0x8018acd0:
    fsubs   f9, f1, f28
    fsubs   f8, f5, f4
    fsubs   f11, f4, f29
    fsubs   f10, f2, f1
    fmuls   f8, f9, f8
    fmsubs  f8, f11, f10, f8
    fcmpo   cr0, f8, f12
    bge-    branch_0x8018acf8
    li      r0, 0x0
    b       branch_0x8018ad24

branch_0x8018acf8:
    fsubs   f9, f2, f28
    fsubs   f8, f3, f5
    fsubs   f11, f5, f29
    fsubs   f10, f0, f2
    fmuls   f8, f9, f8
    fmsubs  f8, f11, f10, f8
    fcmpo   cr0, f8, f12
    bge-    branch_0x8018ad20
    li      r0, 0x0
    b       branch_0x8018ad24

branch_0x8018ad20:
    li      r0, 0x1
branch_0x8018ad24:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018ae98
    fsubs   f8, f0, f30
    lfs     f13, -0x4458(r2)
    fmuls   f8, f8, f27
    fsubs   f9, f26, f8
    fcmpo   cr0, f9, f13
    bge-    branch_0x8018ad4c
    li      r0, 0x0
    b       branch_0x8018ada0

branch_0x8018ad4c:
    fsubs   f10, f1, f30
    fsubs   f9, f5, f4
    fsubs   f12, f4, f29
    fsubs   f11, f2, f1
    fmuls   f9, f10, f9
    fmsubs  f9, f12, f11, f9
    fcmpo   cr0, f9, f13
    bge-    branch_0x8018ad74
    li      r0, 0x0
    b       branch_0x8018ada0

branch_0x8018ad74:
    fsubs   f10, f2, f30
    fsubs   f9, f3, f5
    fsubs   f12, f5, f29
    fsubs   f11, f0, f2
    fmuls   f9, f10, f9
    fmsubs  f9, f12, f11, f9
    fcmpo   cr0, f9, f13
    bge-    branch_0x8018ad9c
    li      r0, 0x0
    b       branch_0x8018ada0

branch_0x8018ad9c:
    li      r0, 0x1
branch_0x8018ada0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018ae98
    fsubs   f9, f3, f31
    lfs     f11, -0x4458(r2)
    fmuls   f12, f9, f7
    fsubs   f6, f12, f6
    fcmpo   cr0, f6, f11
    bge-    branch_0x8018adc8
    li      r0, 0x0
    b       branch_0x8018ae1c

branch_0x8018adc8:
    fsubs   f7, f1, f28
    fsubs   f6, f5, f4
    fsubs   f10, f4, f31
    fsubs   f9, f2, f1
    fmuls   f6, f7, f6
    fmsubs  f6, f10, f9, f6
    fcmpo   cr0, f6, f11
    bge-    branch_0x8018adf0
    li      r0, 0x0
    b       branch_0x8018ae1c

branch_0x8018adf0:
    fsubs   f7, f2, f28
    fsubs   f6, f3, f5
    fsubs   f10, f5, f31
    fsubs   f9, f0, f2
    fmuls   f6, f7, f6
    fmsubs  f6, f10, f9, f6
    fcmpo   cr0, f6, f11
    bge-    branch_0x8018ae18
    li      r0, 0x0
    b       branch_0x8018ae1c

branch_0x8018ae18:
    li      r0, 0x1
branch_0x8018ae1c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018ae98
    fsubs   f6, f12, f8
    lfs     f9, -0x4458(r2)
    fcmpo   cr0, f6, f9
    bge-    branch_0x8018ae3c
    li      r0, 0x0
    b       branch_0x8018ae90

branch_0x8018ae3c:
    fsubs   f7, f1, f30
    fsubs   f6, f5, f4
    fsubs   f8, f4, f31
    fsubs   f4, f2, f1
    fmuls   f1, f7, f6
    fmsubs  f1, f8, f4, f1
    fcmpo   cr0, f1, f9
    bge-    branch_0x8018ae64
    li      r0, 0x0
    b       branch_0x8018ae90

branch_0x8018ae64:
    fsubs   f4, f2, f30
    fsubs   f1, f3, f5
    fsubs   f3, f5, f31
    fsubs   f2, f0, f2
    fmuls   f0, f4, f1
    fmsubs  f0, f3, f2, f0
    fcmpo   cr0, f0, f9
    bge-    branch_0x8018ae8c
    li      r0, 0x0
    b       branch_0x8018ae90

branch_0x8018ae8c:
    li      r0, 0x1
branch_0x8018ae90:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018aea0
branch_0x8018ae98:
    li      r3, 0x1
    b       branch_0x8018b154

branch_0x8018aea0:
    addi    r30, r31, 0x1c
    fmr     f1, f28
    addi    r29, r31, 0x10
    fmr     f2, f29
    fmr     f3, f30
    lfs     f5, 0x10(r31)
    fmr     f4, f29
    lfs     f6, 0x18(r31)
    lfs     f7, 0x1c(r31)
    lfs     f8, 0x24(r31)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    bne-    branch_0x8018af30
    addi    r28, r31, 0x28
    fmr     f1, f28
    fmr     f2, f29
    lfs     f5, 0x0(r30)
    fmr     f3, f30
    lfs     f6, 0x8(r30)
    fmr     f4, f29
    lfs     f7, 0x28(r31)
    lfs     f8, 0x30(r31)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    bne-    branch_0x8018af30
    fmr     f1, f28
    lfs     f5, 0x0(r28)
    fmr     f2, f29
    lfs     f6, 0x8(r28)
    fmr     f3, f30
    fmr     f4, f29
    lfs     f7, 0x0(r29)
    lfs     f8, 0x8(r29)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    beq-    branch_0x8018af38
branch_0x8018af30:
    li      r0, 0x1
    b       branch_0x8018af3c

branch_0x8018af38:
    li      r0, 0x0
branch_0x8018af3c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018af4c
    li      r3, 0x1
    b       branch_0x8018b154

branch_0x8018af4c:
    addi    r28, r31, 0x1c
    fmr     f1, f28
    addi    r29, r31, 0x10
    fmr     f2, f31
    fmr     f3, f30
    lfs     f5, 0x10(r31)
    fmr     f4, f31
    lfs     f6, 0x18(r31)
    lfs     f7, 0x1c(r31)
    lfs     f8, 0x24(r31)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    bne-    branch_0x8018afdc
    addi    r30, r31, 0x28
    fmr     f1, f28
    fmr     f2, f31
    lfs     f5, 0x0(r28)
    fmr     f3, f30
    lfs     f6, 0x8(r28)
    fmr     f4, f31
    lfs     f7, 0x28(r31)
    lfs     f8, 0x30(r31)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    bne-    branch_0x8018afdc
    fmr     f1, f28
    lfs     f5, 0x0(r30)
    fmr     f2, f31
    lfs     f6, 0x8(r30)
    fmr     f3, f30
    fmr     f4, f31
    lfs     f7, 0x0(r29)
    lfs     f8, 0x8(r29)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    beq-    branch_0x8018afe4
branch_0x8018afdc:
    li      r0, 0x1
    b       branch_0x8018afe8

branch_0x8018afe4:
    li      r0, 0x0
branch_0x8018afe8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018aff8
    li      r3, 0x1
    b       branch_0x8018b154

branch_0x8018aff8:
    addi    r28, r31, 0x1c
    fmr     f1, f28
    addi    r29, r31, 0x10
    fmr     f2, f29
    fmr     f3, f28
    lfs     f5, 0x10(r31)
    fmr     f4, f31
    lfs     f6, 0x18(r31)
    lfs     f7, 0x1c(r31)
    lfs     f8, 0x24(r31)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    bne-    branch_0x8018b088
    addi    r30, r31, 0x28
    fmr     f1, f28
    fmr     f2, f29
    lfs     f5, 0x0(r28)
    fmr     f3, f28
    lfs     f6, 0x8(r28)
    fmr     f4, f31
    lfs     f7, 0x28(r31)
    lfs     f8, 0x30(r31)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    bne-    branch_0x8018b088
    fmr     f1, f28
    lfs     f5, 0x0(r30)
    fmr     f2, f29
    lfs     f6, 0x8(r30)
    fmr     f3, f28
    fmr     f4, f31
    lfs     f7, 0x0(r29)
    lfs     f8, 0x8(r29)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    beq-    branch_0x8018b090
branch_0x8018b088:
    li      r0, 0x1
    b       branch_0x8018b094

branch_0x8018b090:
    li      r0, 0x0
branch_0x8018b094:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018b0a4
    li      r3, 0x1
    b       branch_0x8018b154

branch_0x8018b0a4:
    addi    r28, r31, 0x1c
    fmr     f1, f30
    addi    r29, r31, 0x10
    fmr     f2, f29
    fmr     f3, f30
    lfs     f5, 0x10(r31)
    fmr     f4, f31
    lfs     f6, 0x18(r31)
    lfs     f7, 0x1c(r31)
    lfs     f8, 0x24(r31)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    bne-    branch_0x8018b134
    addi    r30, r31, 0x28
    fmr     f1, f30
    fmr     f2, f29
    lfs     f5, 0x0(r28)
    fmr     f3, f30
    lfs     f6, 0x8(r28)
    fmr     f4, f31
    lfs     f7, 0x28(r31)
    lfs     f8, 0x30(r31)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    bne-    branch_0x8018b134
    fmr     f1, f30
    lfs     f5, 0x0(r30)
    fmr     f2, f29
    lfs     f6, 0x8(r30)
    fmr     f3, f30
    fmr     f4, f31
    lfs     f7, 0x0(r29)
    lfs     f8, 0x8(r29)
    bl      checkLinesCollision__Fffffffff
    clrlwi. r0, r3, 24
    beq-    branch_0x8018b13c
branch_0x8018b134:
    li      r0, 0x1
    b       branch_0x8018b140

branch_0x8018b13c:
    li      r0, 0x0
branch_0x8018b140:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018b150
    li      r3, 0x1
    b       branch_0x8018b154

branch_0x8018b150:
    li      r3, 0x0
branch_0x8018b154:
    lwz     r0, 0x2c4(sp)
    lfd     f31, 0x2b8(sp)
    lfd     f30, 0x2b0(sp)
    mtlr    r0
    lfd     f29, 0x2a8(sp)
    lfd     f28, 0x2a0(sp)
    lfd     f27, 0x298(sp)
    lfd     f26, 0x290(sp)
    lwz     r31, 0x28c(sp)
    lwz     r30, 0x288(sp)
    lwz     r29, 0x284(sp)
    lwz     r28, 0x280(sp)
    addi    sp, sp, 0x2c0
    blr


.globl checkLinesCollision__Fffffffff
checkLinesCollision__Fffffffff: # 0x8018b18c
    fsubs   f13, f3, f1
    stwu    sp, -0x38(sp)
    fsubs   f10, f6, f4
    stfd    f31, 0x30(sp)
    fsubs   f9, f8, f4
    fmuls   f11, f13, f10
    lfs     f0, -0x4458(r2)
    fsubs   f31, f4, f2
    fsubs   f12, f5, f3
    fsubs   f10, f7, f3
    fmuls   f9, f13, f9
    fmsubs  f11, f31, f12, f11
    fmsubs  f9, f31, f10, f9
    fcmpo   cr0, f11, f0
    cror    2, 1, 2
    bne-    branch_0x8018b1d8
    fcmpo   cr0, f9, f0
    cror    2, 1, 2
    beq-    branch_0x8018b1ec
branch_0x8018b1d8:
    lfs     f0, -0x4458(r2)
    fcmpo   cr0, f11, f0
    bge-    branch_0x8018b1f4
    fcmpo   cr0, f9, f0
    bge-    branch_0x8018b1f4
branch_0x8018b1ec:
    li      r3, 0x0
    b       branch_0x8018b258

branch_0x8018b1f4:
    fsubs   f9, f7, f5
    lfs     f0, -0x4458(r2)
    fsubs   f5, f2, f8
    fsubs   f2, f4, f8
    fsubs   f8, f8, f6
    fsubs   f6, f1, f7
    fmuls   f4, f9, f5
    fsubs   f3, f3, f7
    fmuls   f1, f9, f2
    fmsubs  f2, f8, f6, f4
    fmsubs  f1, f8, f3, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x8018b238
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq-    branch_0x8018b24c
branch_0x8018b238:
    lfs     f0, -0x4458(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8018b254
    fcmpo   cr0, f1, f0
    bge-    branch_0x8018b254
branch_0x8018b24c:
    li      r3, 0x0
    b       branch_0x8018b258

branch_0x8018b254:
    li      r3, 0x1
branch_0x8018b258:
    lfd     f31, 0x30(sp)
    addi    sp, sp, 0x38
    blr

