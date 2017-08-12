
.globl __ct__13J3DDrawBufferFUl
__ct__13J3DDrawBufferFUl: # 0x802ef5c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    slwi    r3, r4, 2
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x0(r30)
    li      r4, 0x0
    lis     r0, 0x4330
    stw     r31, 0x4(r30)
    mr      r3, r30
    stw     r4, 0x8(r30)
    stw     r4, 0xc(r30)
    lfs     f0, 0x340(r2)
    stfs    f0, 0x10(r30)
    lfs     f0, 0x344(r2)
    stfs    f0, 0x14(r30)
    stw     r4, 0x1c(r30)
    stw     r4, 0x20(r30)
    lwz     r4, 0x4(r30)
    lfs     f2, 0x14(r30)
    stw     r4, 0x14(sp)
    lfs     f0, 0x10(r30)
    stw     r0, 0x10(sp)
    lfd     f1, 0x348(r2)
    fsubs   f2, f2, f0
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x18(r30)
    bl      frameInit__13J3DDrawBufferFv
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl frameInit__13J3DDrawBufferFv
frameInit__13J3DDrawBufferFv: # 0x802ef66c
    li      r4, 0x0
    addi    r6, r4, 0x0
    li      r7, 0x0
    b       branch_0x802ef68c

branch_0x802ef67c:
    lwz     r5, 0x0(r3)
    addi    r7, r7, 0x1
    stwx    r6, r5, r4
    addi    r4, r4, 0x4
branch_0x802ef68c:
    lwz     r0, 0x4(r3)
    cmplw   r7, r0
    blt+    branch_0x802ef67c
    li      r0, 0x0
    stw     r0, 0x20(r3)
    blr


.globl entryMatSort__13J3DDrawBufferFP12J3DMatPacket
entryMatSort__13J3DDrawBufferFP12J3DMatPacket: # 0x802ef6a4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x3c(sp)
    stw     r28, 0x38(sp)
    stw     r0, 0x4(r4)
    lis     r4, j3dSys@h
    addi    r3, r4, j3dSys@l
    stw     r0, 0x8(r31)
    li      r4, 0x0
    lwz     r5, 0x34(r31)
    stw     r0, 0x4(r5)
    stw     r0, 0x8(r5)
    lwz     r5, 0x38(r31)
    lwz     r29, 0x54(r3)
    lwz     r3, 0x28(r5)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    clrlwi  r0, r3, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x802ef71c
    li      r5, 0x0
    b       branch_0x802ef728

branch_0x802ef71c:
    lwz     r3, 0x4(r29)
    slwi    r0, r0, 5
    add     r5, r3, r0
branch_0x802ef728:
    lwz     r0, 0x3c(r31)
    clrrwi. r0, r0, 31
    beq-    branch_0x802ef750
    lwz     r4, 0x0(r30)
    li      r3, 0x1
    lwz     r0, 0x0(r4)
    stw     r0, 0x4(r31)
    lwz     r4, 0x0(r30)
    stw     r31, 0x0(r4)
    b       branch_0x802ef7dc

branch_0x802ef750:
    lwz     r3, 0x4(r30)
    lwz     r4, 0x0(r30)
    addi    r0, r3, -0x1
    and     r0, r5, r0
    slwi    r29, r0, 2
    lwzx    r0, r4, r29
    cmplwi  r0, 0x0
    bne-    branch_0x802ef77c
    stwx    r31, r4, r29
    li      r3, 0x1
    b       branch_0x802ef7dc

branch_0x802ef77c:
    mr      r28, r0
    b       branch_0x802ef7bc

branch_0x802ef784:
    mr      r3, r28
    lwz     r12, 0x0(r28)
    mr      r4, r31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x802ef7b8
    lwz     r4, 0x34(r31)
    mr      r3, r28
    bl      addShapePacket__12J3DMatPacketFP14J3DShapePacket
    li      r3, 0x0
    b       branch_0x802ef7dc

branch_0x802ef7b8:
    lwz     r28, 0x4(r28)
branch_0x802ef7bc:
    cmplwi  r28, 0x0
    bne+    branch_0x802ef784
    lwz     r4, 0x0(r30)
    li      r3, 0x1
    lwzx    r0, r4, r29
    stw     r0, 0x4(r31)
    lwz     r4, 0x0(r30)
    stwx    r31, r4, r29
branch_0x802ef7dc:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket
entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket: # 0x802ef7fc
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r7, 0x44(r4)
    lwz     r3, 0x4(r3)
    cmplwi  r7, 0x0
    addi    r0, r3, -0x1
    and     r3, r7, r0
    bne-    branch_0x802ef830
    mr      r3, r8
    bl      entryMatSort__13J3DDrawBufferFP12J3DMatPacket
    b       branch_0x802ef8ac

branch_0x802ef830:
    li      r0, 0x0
    stw     r0, 0x4(r4)
    slwi    r6, r3, 2
    stw     r0, 0x8(r4)
    lwz     r3, 0x34(r4)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    lwz     r0, 0x0(r8)
    add     r3, r0, r6
    lwz     r5, 0x0(r3)
    cmplwi  r5, 0x0
    bne-    branch_0x802ef86c
    stw     r4, 0x0(r3)
    li      r3, 0x1
    b       branch_0x802ef8ac

branch_0x802ef86c:
    mr      r3, r5
    b       branch_0x802ef894

branch_0x802ef874:
    lwz     r0, 0x44(r3)
    cmplw   r0, r7
    bne-    branch_0x802ef890
    lwz     r4, 0x34(r4)
    bl      addShapePacket__12J3DMatPacketFP14J3DShapePacket
    li      r3, 0x0
    b       branch_0x802ef8ac

branch_0x802ef890:
    lwz     r3, 0x4(r3)
branch_0x802ef894:
    cmplwi  r3, 0x0
    bne+    branch_0x802ef874
    stw     r5, 0x4(r4)
    li      r3, 0x1
    lwz     r5, 0x0(r8)
    stwx    r4, r5, r6
branch_0x802ef8ac:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl entryZSort__13J3DDrawBufferFP12J3DMatPacket
entryZSort__13J3DDrawBufferFP12J3DMatPacket: # 0x802ef8bc
    mflr    r0
    lis     r5, j3dSys@h
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    addi    r3, r5, j3dSys@l
    stw     r0, 0x4(r4)
    addi    r4, sp, 0x18
    stw     r0, 0x8(r31)
    lwz     r5, 0x34(r31)
    stw     r0, 0x4(r5)
    stw     r0, 0x8(r5)
    lwz     r5, 0x1c(r30)
    lfs     f0, 0xc(r5)
    stfs    f0, 0x24(sp)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x28(sp)
    lfs     f0, 0x2c(r5)
    stfs    f0, 0x2c(sp)
    lwz     r0, 0x24(sp)
    lwz     r5, 0x28(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x2c(sp)
    stw     r5, 0x1c(sp)
    stw     r0, 0x20(sp)
    bl      J3DCalcZValue__FPA4_f3Vec
    lfs     f0, 0x10(r30)
    fneg    f2, f1
    lfs     f1, 0x18(r30)
    fadds   f0, f0, f1
    fcmpo   cr0, f0, f2
    bge-    branch_0x802ef978
    lfs     f0, 0x14(r30)
    fsubs   f0, f0, f1
    fcmpo   cr0, f0, f2
    ble-    branch_0x802ef96c
    fdivs   f1, f2, f1
    bl      __cvt_fp2unsigned
    mr      r6, r3
    b       branch_0x802ef97c

branch_0x802ef96c:
    lwz     r3, 0x4(r30)
    addi    r6, r3, -0x1
    b       branch_0x802ef97c

branch_0x802ef978:
    li      r6, 0x0
branch_0x802ef97c:
    lwz     r5, 0x4(r30)
    li      r3, 0x1
    lwz     r4, 0x0(r30)
    addi    r0, r5, -0x1
    subf    r0, r6, r0
    slwi    r5, r0, 2
    lwzx    r0, r4, r5
    stw     r0, 0x4(r31)
    lwz     r4, 0x0(r30)
    stwx    r31, r4, r5
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl entryModelSort__13J3DDrawBufferFP12J3DMatPacket
entryModelSort__13J3DDrawBufferFP12J3DMatPacket: # 0x802ef9bc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x8(sp)
    stw     r0, 0x4(r4)
    stw     r0, 0x8(r4)
    lwz     r5, 0x34(r4)
    stw     r0, 0x4(r5)
    stw     r0, 0x8(r5)
    lwz     r3, 0x20(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802ef9f8
    bl      addChildPacket__9J3DPacketFP9J3DPacket
    li      r3, 0x1
    b       branch_0x802ef9fc

branch_0x802ef9f8:
    li      r3, 0x0
branch_0x802ef9fc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket
entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket: # 0x802efa0c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x8(sp)
    stw     r0, 0x4(r4)
    stw     r0, 0x8(r4)
    lwz     r5, 0x34(r4)
    stw     r0, 0x4(r5)
    stw     r0, 0x8(r5)
    lwz     r3, 0x20(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802efa4c
    lwz     r4, 0x34(r4)
    bl      addChildPacket__9J3DPacketFP9J3DPacket
    li      r3, 0x1
    b       branch_0x802efa50

branch_0x802efa4c:
    li      r3, 0x0
branch_0x802efa50:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl entryNonSort__13J3DDrawBufferFP12J3DMatPacket
entryNonSort__13J3DDrawBufferFP12J3DMatPacket: # 0x802efa60
    li      r0, 0x0
    stw     r0, 0x4(r4)
    stw     r0, 0x8(r4)
    lwz     r5, 0x34(r4)
    stw     r0, 0x4(r5)
    stw     r0, 0x8(r5)
    lwz     r5, 0x0(r3)
    lwz     r0, 0x0(r5)
    stw     r0, 0x4(r4)
    lwz     r5, 0x0(r3)
    li      r3, 0x1
    stw     r4, 0x0(r5)
    blr


.globl entryImm__13J3DDrawBufferFP9J3DPacketUs
entryImm__13J3DDrawBufferFP9J3DPacketUs: # 0x802efa94
    lwz     r6, 0x0(r3)
    clrlslwi  r7, r5, 16, 2
    lwzx    r0, r6, r7
    stw     r0, 0x4(r4)
    lwz     r5, 0x0(r3)
    li      r3, 0x1
    stwx    r4, r5, r7
    blr


.globl draw__13J3DDrawBufferCFv
draw__13J3DDrawBufferCFv: # 0x802efab4
    mflr    r0
    lis     r4, drawFuncTable__13J3DDrawBuffer@h
    stw     r0, 0x4(sp)
    addi    r0, r4, drawFuncTable__13J3DDrawBuffer@l
    stwu    sp, -0x18(sp)
    lwz     r5, 0x8(r3)
    addi    r12, sp, 0xc
    mulli   r4, r5, 0xc
    add     r5, r0, r4
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x14(sp)
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl drawHead__13J3DDrawBufferCFv
drawHead__13J3DDrawBufferCFv: # 0x802efb08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    b       branch_0x802efb68

branch_0x802efb34:
    lwz     r3, 0x0(r28)
    lwzx    r29, r3, r31
    b       branch_0x802efb58

branch_0x802efb40:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r29, 0x4(r29)
branch_0x802efb58:
    cmplwi  r29, 0x0
    bne+    branch_0x802efb40
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x802efb68:
    lwz     r0, 0x4(r28)
    cmplw   r30, r0
    blt+    branch_0x802efb34
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl drawTail__13J3DDrawBufferCFv
drawTail__13J3DDrawBufferCFv: # 0x802efb94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    lwz     r3, 0x4(r3)
    addi    r30, r3, -0x1
    slwi    r31, r30, 2
    b       branch_0x802efbf8

branch_0x802efbc4:
    lwz     r3, 0x0(r28)
    lwzx    r29, r3, r31
    b       branch_0x802efbe8

branch_0x802efbd0:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r29, 0x4(r29)
branch_0x802efbe8:
    cmplwi  r29, 0x0
    bne+    branch_0x802efbd0
    addi    r30, r30, -0x1
    addi    r31, r31, -0x4
branch_0x802efbf8:
    cmpwi   r30, 0x0
    bge+    branch_0x802efbc4
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __sinit_J3DDrawBuffer_cpp
__sinit_J3DDrawBuffer_cpp: # 0x802efc20
    lis     r3, unk_803e16d8@h
    addi    r4, r3, unk_803e16d8@l
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x48(r4)
    stw     r0, 0x4c(r4)
    lwz     r0, 0x8(r4)
    stw     r0, 0x50(r4)
    lwz     r3, 0xc(r4)
    lwz     r0, 0x10(r4)
    stw     r3, 0x54(r4)
    stw     r0, 0x58(r4)
    lwz     r0, 0x14(r4)
    stw     r0, 0x5c(r4)
    lwz     r3, 0x18(r4)
    lwz     r0, 0x1c(r4)
    stw     r3, 0x60(r4)
    stw     r0, 0x64(r4)
    lwz     r0, 0x20(r4)
    stw     r0, 0x68(r4)
    lwz     r3, 0x24(r4)
    lwz     r0, 0x28(r4)
    stw     r3, 0x6c(r4)
    stw     r0, 0x70(r4)
    lwz     r0, 0x2c(r4)
    stw     r0, 0x74(r4)
    lwz     r3, 0x30(r4)
    lwz     r0, 0x34(r4)
    stw     r3, 0x78(r4)
    stw     r0, 0x7c(r4)
    lwz     r0, 0x38(r4)
    stw     r0, 0x80(r4)
    lwz     r3, 0x3c(r4)
    lwz     r0, 0x40(r4)
    stw     r3, 0x84(r4)
    stw     r0, 0x88(r4)
    lwz     r0, 0x44(r4)
    stw     r0, 0x8c(r4)
    lwz     r3, 0x90(r4)
    lwz     r0, 0x94(r4)
    stw     r3, 0xa8(r4)
    stw     r0, 0xac(r4)
    lwz     r0, 0x98(r4)
    stw     r0, 0xb0(r4)
    lwz     r3, 0x9c(r4)
    lwz     r0, 0xa0(r4)
    stw     r3, 0xb4(r4)
    stw     r0, 0xb8(r4)
    lwz     r0, 0xa4(r4)
    stw     r0, 0xbc(r4)
    blr

