
.globl mtxEffectHide__9TMarioCapFv
mtxEffectHide__9TMarioCapFv: # 0x8024199c
    li      r6, 0x0
    lwz     r7, 0x20(r3)
    mr      r4, r6
    b       branch_0x802419c8

branch_0x802419ac:
    lwz     r5, 0x10(r7)
    addi    r6, r6, 0x1
    lwzx    r5, r5, r4
    addi    r4, r4, 0x4
    lhz     r0, 0x4(r5)
    clrrwi  r0, r0, 1
    sth     r0, 0x4(r5)
branch_0x802419c8:
    lhz     r0, 0x0(r7)
    cmpw    r6, r0
    blt+    branch_0x802419ac
    lwz     r6, 0x24(r3)
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x80241a00

branch_0x802419e4:
    lwz     r4, 0x10(r6)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x4(r4)
    clrrwi  r0, r0, 1
    sth     r0, 0x4(r4)
branch_0x80241a00:
    lhz     r0, 0x0(r6)
    cmpw    r5, r0
    blt+    branch_0x802419e4
    blr


.globl mtxEffectShow__9TMarioCapFv
mtxEffectShow__9TMarioCapFv: # 0x80241a10
    li      r6, 0x0
    lwz     r7, 0x20(r3)
    mr      r4, r6
    b       branch_0x80241a3c

branch_0x80241a20:
    lwz     r5, 0x10(r7)
    addi    r6, r6, 0x1
    lwzx    r5, r5, r4
    addi    r4, r4, 0x4
    lhz     r0, 0x4(r5)
    ori     r0, r0, 0x1
    sth     r0, 0x4(r5)
branch_0x80241a3c:
    lhz     r0, 0x0(r7)
    cmpw    r6, r0
    blt+    branch_0x80241a20
    lwz     r6, 0x24(r3)
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x80241a74

branch_0x80241a58:
    lwz     r4, 0x10(r6)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x4(r4)
    ori     r0, r0, 0x1
    sth     r0, 0x4(r4)
branch_0x80241a74:
    lhz     r0, 0x0(r6)
    cmpw    r5, r0
    blt+    branch_0x80241a58
    blr


.globl perform__9TMarioCapFUlPQ26JDrama9TGraphics
perform__9TMarioCapFUlPQ26JDrama9TGraphics: # 0x80241a84
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x1e0(sp)
    stw     r31, 0x1dc(sp)
    stw     r30, 0x1d8(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1d4(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x80241fb4
    lwz     r3, 0x8(r29)
    lhz     r0, 0xfa(r3)
    cmplwi  r0, 0x12d
    bne-    branch_0x80241bd8
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, 0x10(r3)
    lfs     f0, -0x1428(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80241b54
    lwz     r0, 0x14(r29)
    li      r4, 0x0
    stw     r0, 0xc(r29)
    lwz     r3, 0x10(r29)
    lwz     r5, 0x4(r3)
    b       branch_0x80241b04

branch_0x80241ae8:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80241b04:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80241ae8
    lwz     r3, 0x14(r29)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80241b40

branch_0x80241b24:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x80241b40:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80241b24
    b       branch_0x80241e2c

branch_0x80241b54:
    lwz     r0, 0x10(r29)
    li      r4, 0x0
    stw     r0, 0xc(r29)
    lwz     r3, 0x10(r29)
    lwz     r5, 0x4(r3)
    b       branch_0x80241b88

branch_0x80241b6c:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x80241b88:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80241b6c
    lwz     r3, 0x14(r29)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80241bc4

branch_0x80241ba8:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80241bc4:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80241ba8
    b       branch_0x80241e2c

branch_0x80241bd8:
    lhz     r0, 0x4(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x80241bec
    li      r0, 0x1
    b       branch_0x80241bf0

branch_0x80241bec:
    li      r0, 0x0
branch_0x80241bf0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80241dac
    lwz     r0, 0x10(r29)
    li      r4, 0x0
    stw     r0, 0xc(r29)
    lwz     r3, 0x10(r29)
    lwz     r5, 0x4(r3)
    b       branch_0x80241c2c

branch_0x80241c10:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x80241c2c:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80241c10
    lwz     r3, 0x14(r29)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80241c68

branch_0x80241c4c:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80241c68:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80241c4c
    lwz     r5, 0x8(r29)
    li      r31, 0x0
    lwz     r3, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r3, 0x174(sp)
    stw     r0, 0x178(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0x17c(sp)
    lfs     f1, 0x174(sp)
    lfs     f0, 0x29c(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x174(sp)
    lfs     f1, 0x178(sp)
    lfs     f0, 0x2a0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x178(sp)
    lfs     f1, 0x17c(sp)
    lfs     f0, 0x2a4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x17c(sp)
    lwz     r0, 0x174(sp)
    lwz     r3, 0x178(sp)
    stw     r0, 0x1ac(sp)
    lwz     r0, 0x17c(sp)
    stw     r3, 0x1b0(sp)
    stw     r0, 0x1b4(sp)
    lfs     f1, 0x1ac(sp)
    lfs     f0, 0x1b0(sp)
    lfs     f2, 0x1b4(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r3, 0x8(r29)
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xff7f
    cmplwi  r0, 0x446
    bne-    branch_0x80241d28
    lfs     f0, -0x1424(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80241d28
    li      r31, 0x1
branch_0x80241d28:
    addis   r0, r3, 0xfd7f
    cmplwi  r0, 0x89a
    bne-    branch_0x80241d38
    li      r31, 0x1
branch_0x80241d38:
    addis   r0, r3, 0xff7f
    cmplwi  r0, 0x89b
    bne-    branch_0x80241d48
    li      r31, 0x1
branch_0x80241d48:
    rlwinm. r0, r3, 0, 20, 20
    beq-    branch_0x80241d58
    li      r0, 0x1
    b       branch_0x80241d5c

branch_0x80241d58:
    li      r0, 0x0
branch_0x80241d5c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80241d74
    lfs     f0, -0x1424(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80241d74
    li      r31, 0x1
branch_0x80241d74:
    cmplwi  r3, 0x891
    bne-    branch_0x80241d80
    li      r31, 0x0
branch_0x80241d80:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80241d9c
    lwz     r3, 0x30(r29)
    lfs     f1, 0x34(r29)
    bl      clash__19TTrembleModelEffectFf
    b       branch_0x80241e2c

branch_0x80241d9c:
    lwz     r3, 0x30(r29)
    lfs     f1, -0x1420(rtoc)
    bl      clash__19TTrembleModelEffectFf
    b       branch_0x80241e2c

branch_0x80241dac:
    lwz     r0, 0x14(r29)
    li      r4, 0x0
    stw     r0, 0xc(r29)
    lwz     r3, 0x10(r29)
    lwz     r5, 0x4(r3)
    b       branch_0x80241de0

branch_0x80241dc4:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80241de0:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80241dc4
    lwz     r3, 0x14(r29)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80241e1c

branch_0x80241e00:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x80241e1c:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80241e00
branch_0x80241e2c:
    lwz     r3, 0x8(r29)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80241e44
    li      r0, 0x1
    b       branch_0x80241e48

branch_0x80241e44:
    li      r0, 0x0
branch_0x80241e48:
    clrlwi. r0, r0, 24
    beq-    branch_0x80241e5c
    lhz     r0, 0x4(r29)
    ori     r0, r0, 0x2
    sth     r0, 0x4(r29)
branch_0x80241e5c:
    lhz     r0, 0x4(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80241e70
    li      r0, 0x1
    b       branch_0x80241e74

branch_0x80241e70:
    li      r0, 0x0
branch_0x80241e74:
    clrlwi. r0, r0, 24
    beq-    branch_0x80241ebc
    lwz     r3, 0x18(r29)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80241ea8

branch_0x80241e8c:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x80241ea8:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80241e8c
    b       branch_0x80241ef8

branch_0x80241ebc:
    lwz     r3, 0x18(r29)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80241ee8

branch_0x80241ecc:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80241ee8:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80241ecc
branch_0x80241ef8:
    lhz     r0, 0x4(r29)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80241f0c
    li      r0, 0x1
    b       branch_0x80241f10

branch_0x80241f0c:
    li      r0, 0x0
branch_0x80241f10:
    clrlwi. r0, r0, 24
    beq-    branch_0x80241f2c
    lwz     r3, 0x1c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80241f2c:
    lwz     r3, 0xc(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x18(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r31, 0x0
    b       branch_0x80241f9c

branch_0x80241f5c:
    lwz     r3, 0x28(r4)
    clrlslwi  r0, r31, 16, 2
    li      r4, 0x0
    lwzx    r3, r3, r0
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x8(r29)
    addi    r31, r31, 0x1
    lfs     f0, 0x134(r4)
    fctiwz  f0, f0
    stfd    f0, 0x1c8(sp)
    lwz     r0, 0x1cc(sp)
    stb     r0, 0x3(r3)
branch_0x80241f9c:
    lwz     r4, 0xc(r29)
    clrlwi  r3, r31, 16
    lwz     r4, 0x4(r4)
    lhz     r0, 0x24(r4)
    cmplw   r3, r0
    blt+    branch_0x80241f5c
branch_0x80241fb4:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x80242038
    lwz     r3, 0xc(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x4(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80241fe4
    li      r0, 0x1
    b       branch_0x80241fe8

branch_0x80241fe4:
    li      r0, 0x0
branch_0x80241fe8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80242004
    lwz     r3, 0x18(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x80242004:
    lhz     r0, 0x4(r29)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80242018
    li      r0, 0x1
    b       branch_0x8024201c

branch_0x80242018:
    li      r0, 0x0
branch_0x8024201c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80242038
    lwz     r3, 0x1c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x80242038:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x802420bc
    lwz     r3, 0xc(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x4(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80242068
    li      r0, 0x1
    b       branch_0x8024206c

branch_0x80242068:
    li      r0, 0x0
branch_0x8024206c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80242088
    lwz     r3, 0x18(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80242088:
    lhz     r0, 0x4(r29)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8024209c
    li      r0, 0x1
    b       branch_0x802420a0

branch_0x8024209c:
    li      r0, 0x0
branch_0x802420a0:
    clrlwi. r0, r0, 24
    beq-    branch_0x802420bc
    lwz     r3, 0x1c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802420bc:
    rlwinm. r0, r30, 0, 3, 3
    beq-    branch_0x802420ec
    lhz     r0, 0x4(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x802420d8
    li      r0, 0x1
    b       branch_0x802420dc

branch_0x802420d8:
    li      r0, 0x0
branch_0x802420dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x802420ec
    lwz     r3, 0x30(r29)
    bl      movement__19TTrembleModelEffectFv
branch_0x802420ec:
    lwz     r0, 0x1e4(sp)
    lwz     r31, 0x1dc(sp)
    lwz     r30, 0x1d8(sp)
    mtlr    r0
    lwz     r29, 0x1d4(sp)
    addi    sp, sp, 0x1e0
    blr


.globl createMirrorCap__9TMarioCapFv
createMirrorCap__9TMarioCapFv: # 0x80242108
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r28, r3, 0x0
    subi    r30, r4, 0x2134
    li      r29, 0x0
    li      r31, 0x0
branch_0x8024212c:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80242148
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    bl      __ct__12TMirrorActorFPCc
branch_0x80242148:
    add     r4, r28, r31
    addi    r3, r4, 0x28
    stw     r27, 0x28(r4)
    li      r5, 0x4
    lwz     r3, 0x0(r3)
    lwz     r4, 0x10(r4)
    bl      init__12TMirrorActorFP8J3DModelUs
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r31, r31, 0x4
    blt+    branch_0x8024212c
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__9TMarioCapFP6TMario
__ct__9TMarioCapFP6TMario: # 0x80242188
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    subi    r0, r5, 0x40c0
    stwu    sp, -0x180(sp)
    stmw    r27, 0x16c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    lis     r3, 0x803a
    subi    r30, r3, 0x2188
    stw     r4, 0x8(r31)
    addi    r3, r30, 0x64
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1010
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    lwz     r4, 0x8(r31)
    mr      r29, r3
    lwz     r7, 0xac(r29)
    lwz     r3, 0x3a8(r4)
    li      r4, 0x20
    lwz     r5, 0x4(r7)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xac(r3)
    lwz     r6, 0x4(r3)
    lwz     r3, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r3, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r3, 0x8(r5)
    stw     r0, 0xc(r5)
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r3, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r3, 0x4(r7)
    lwz     r0, 0x1c(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r7)
    lwz     r0, 0xc(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r29)
    lwz     r3, 0x4(r3)
    bl      DCFlushRange
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80242284
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80242284:
    stw     r27, 0x10(r31)
    addi    r3, r30, 0x7c
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1010
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    lwz     r4, 0x8(r31)
    mr      r29, r3
    lwz     r7, 0xac(r29)
    lwz     r3, 0x3a8(r4)
    li      r4, 0x20
    lwz     r5, 0x4(r7)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xac(r3)
    lwz     r6, 0x4(r3)
    lwz     r3, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r3, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r3, 0x8(r5)
    stw     r0, 0xc(r5)
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r3, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r3, 0x4(r7)
    lwz     r0, 0x1c(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r7)
    lwz     r0, 0xc(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r29)
    lwz     r3, 0x4(r3)
    bl      DCFlushRange
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80242358
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80242358:
    stw     r27, 0x14(r31)
    lwz     r3, 0x8(r31)
    lwz     r0, 0x470(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802423ac
    li      r27, 0x0
    li      r29, 0x0
branch_0x80242374:
    addi    r28, r29, 0x10
    lwz     r5, 0x8(r31)
    add     r28, r31, r28
    lwz     r3, 0x0(r28)
    addi    r4, r30, 0x44
    lwz     r5, 0x470(r5)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r3, 0x0(r28)
    bl      SMS_MakeDLAndLock__FP8J3DModel
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x80242374
branch_0x802423ac:
    addi    r3, r30, 0x94
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1010
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r27, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802423e4
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x802423e4:
    stw     r28, 0x18(r31)
    addi    r3, r30, 0xbc
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1010
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r27, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80242420
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80242420:
    stw     r28, 0x1c(r31)
    addi    r4, r30, 0xd8
    lwz     r3, 0x18(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0x8(r31)
    lwz     r4, 0x10(r31)
    lwz     r3, 0x3a8(r5)
    lbz     r0, 0x3d0(r5)
    addi    r4, r4, 0x20
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r27, r3, r0
    addi    r3, r27, 0x0
    bl      PSMTXCopy
    lwz     r3, 0x10(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x14(r31)
    addi    r3, r27, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x8(r31)
    lwz     r4, 0x18(r31)
    lwz     r3, 0x3a8(r5)
    lbz     r0, 0x3cf(r5)
    addi    r4, r4, 0x20
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    bl      PSMTXCopy
    lwz     r3, 0x18(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r3, 0x14
    bl      __nw__FUl
    stw     r3, 0x20(r31)
    li      r3, 0x14
    bl      __nw__FUl
    stw     r3, 0x24(r31)
    li      r28, 0x1
    li      r3, 0x2
    lwz     r4, 0x20(r31)
    sth     r28, 0x0(r4)
    bl      __nwa__FUl
    sth     r28, 0x0(r3)
    lwz     r4, 0x20(r31)
    stw     r3, 0x8(r4)
    li      r3, 0x1
    bl      __nwa__FUl
    li      r29, 0x0
    stb     r29, 0x0(r3)
    addi    r5, r30, 0xe8
    lwz     r4, 0x20(r31)
    stw     r3, 0x4(r4)
    lwz     r3, 0x20(r31)
    lwz     r4, 0x10(r31)
    bl      setup__15TMultiMtxEffectFP8J3DModelPCc
    lwz     r4, 0x24(r31)
    li      r3, 0x2
    sth     r28, 0x0(r4)
    bl      __nwa__FUl
    sth     r28, 0x0(r3)
    lwz     r4, 0x24(r31)
    stw     r3, 0x8(r4)
    li      r3, 0x1
    bl      __nwa__FUl
    stb     r29, 0x0(r3)
    addi    r5, r30, 0xe8
    lwz     r4, 0x24(r31)
    stw     r3, 0x4(r4)
    lwz     r3, 0x24(r31)
    lwz     r4, 0x14(r31)
    bl      setup__15TMultiMtxEffectFP8J3DModelPCc
    sth     r28, 0x4(r31)
    li      r27, 0x0
    li      r3, 0x40
    lwz     r0, 0x10(r31)
    stw     r0, 0xc(r31)
    bl      __nw__FUl
    slwi    r0, r27, 2
    stw     r3, 0x30(r31)
    add     r4, r31, r0
    lwz     r3, 0x30(r4)
    lwz     r4, 0x10(r4)
    bl      init__19TTrembleModelEffectFP8J3DModel
    lfs     f0, -0x141c(rtoc)
    li      r27, 0x0
    li      r29, 0x0
    stfs    f0, 0x34(r31)
branch_0x802425b8:
    add     r28, r31, r29
    li      r30, 0x0
    b       branch_0x802425d8

branch_0x802425c4:
    addi    r4, r30, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      SMS_InitPacket_OneTevKColorAndFog__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
    addi    r30, r30, 0x1
branch_0x802425d8:
    lwz     r3, 0x10(r28)
    clrlwi  r4, r30, 16
    lwz     r5, 0x4(r3)
    lhz     r0, 0x24(r5)
    cmplw   r4, r0
    blt+    branch_0x802425c4
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x802425b8
    mr      r3, r31
    lmw     r27, 0x16c(sp)
    lwz     r0, 0x184(sp)
    addi    sp, sp, 0x180
    mtlr    r0
    blr

