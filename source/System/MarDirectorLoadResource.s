
.globl thpInit__12TMarDirectorFv
thpInit__12TMarDirectorFv: # 0x802b35cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stfd    f30, 0x38(sp)
    stfd    f29, 0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802b36bc
    li      r3, 0x0
    bl      THPPlayerInit
    lis     r3, 0x803a
    addi    r3, r3, 0x7830
    li      r4, 0x0
    bl      THPPlayerOpen
    cmpwi   r3, 0x0
    bne-    branch_0x802b3624
    li      r3, 0x1
    b       branch_0x802b36c0

branch_0x802b3624:
    bl      THPPlayerCalcNeedMemory
    li      r4, 0x20
    bl      __nwa__FUli
    bl      THPPlayerSetBuffer
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      THPPlayerPrepare
    cmpwi   r3, 0x0
    bne-    branch_0x802b3654
    li      r3, 0x1
    b       branch_0x802b36c0

branch_0x802b3654:
    bl      OSGetTick
    lis     r4, 0x8000
    lfd     f29, -0x80(rtoc)
    lwz     r0, 0xf8(r4)
    mr      r29, r3
    lfd     f30, -0x78(rtoc)
    lis     r30, 0x4330
    lfs     f31, -0x88(rtoc)
    srwi    r31, r0, 2
branch_0x802b3678:
    bl      OSGetTick
    subf    r0, r29, r3
    stw     r31, 0x14(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r30, 0x10(sp)
    lfd     f1, 0x18(sp)
    lfd     f0, 0x10(sp)
    fsubs   f1, f1, f29
    fsubs   f0, f0, f30
    fdivs   f0, f1, f0
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    beq-    branch_0x802b36bc
    bl      OSYieldThread
    b       branch_0x802b3678

branch_0x802b36bc:
    li      r3, 0x0
branch_0x802b36c0:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    mtlr    r0
    lfd     f29, 0x30(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x48
    blr


.globl loadParticleMario__12TMarDirectorFv
loadParticleMario__12TMarDirectorFv: # 0x802b36e8
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    subi    r31, r3, 0x2f98
    lis     r3, 0x803a
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x7750
    stw     r29, 0xc(sp)
    addi    r29, r31, 0x1
    stw     r28, 0x8(sp)
    lbz     r0, 0x1(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b373c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0xf8
    li      r5, 0x1
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b373c:
    addi    r29, r31, 0x2
    lbz     r0, 0x2(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3764
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x10c
    li      r5, 0x2
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b3764:
    addi    r29, r31, 0x3
    lbz     r0, 0x3(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b378c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x120
    li      r5, 0x3
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b378c:
    addi    r29, r31, 0x4
    lbz     r0, 0x4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b37b4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x134
    li      r5, 0x4
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b37b4:
    addi    r29, r31, 0x5
    lbz     r0, 0x5(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b37dc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x148
    li      r5, 0x5
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b37dc:
    addi    r29, r31, 0x6
    lbz     r0, 0x6(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3804
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x15c
    li      r5, 0x6
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b3804:
    addi    r29, r31, 0x7
    lbz     r0, 0x7(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b382c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x170
    li      r5, 0x7
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b382c:
    addi    r29, r31, 0x8
    lbz     r0, 0x8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3854
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x180
    li      r5, 0x8
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b3854:
    addi    r29, r31, 0x9
    lbz     r0, 0x9(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b387c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x190
    li      r5, 0x9
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b387c:
    addi    r29, r31, 0xa
    lbz     r0, 0xa(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b38a4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x1a0
    li      r5, 0xa
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b38a4:
    addi    r29, r31, 0xb
    lbz     r0, 0xb(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b38cc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x1b0
    li      r5, 0xb
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b38cc:
    addi    r29, r31, 0xc
    lbz     r0, 0xc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b38f4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x1c0
    li      r5, 0xc
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b38f4:
    addi    r29, r31, 0x15
    lbz     r0, 0x15(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b391c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x1d0
    li      r5, 0x15
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b391c:
    addi    r29, r31, 0x16
    lbz     r0, 0x16(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3944
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x1e4
    li      r5, 0x16
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b3944:
    addi    r29, r31, 0x17
    lbz     r0, 0x17(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b396c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x1f8
    li      r5, 0x17
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b396c:
    addi    r29, r31, 0xd
    lbz     r0, 0xd(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3994
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x20c
    li      r5, 0xd
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b3994:
    addi    r29, r31, 0xe
    lbz     r0, 0xe(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b39bc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x218
    li      r5, 0xe
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b39bc:
    addi    r28, r31, 0xf
    lbz     r0, 0xf(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b39e4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x22c
    li      r5, 0xf
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b39e4:
    lbz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3a08
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x218
    li      r5, 0xe
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x802b3a08:
    lbz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3a2c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x22c
    li      r5, 0xf
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3a2c:
    addi    r28, r31, 0x10
    lbz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3a54
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x240
    li      r5, 0x10
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3a54:
    addi    r28, r31, 0x11
    lbz     r0, 0x11(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3a7c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x254
    li      r5, 0x11
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3a7c:
    addi    r28, r31, 0x12
    lbz     r0, 0x12(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3aa4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x268
    li      r5, 0x12
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3aa4:
    addi    r28, r31, 0x13
    lbz     r0, 0x13(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3acc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x27c
    li      r5, 0x13
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3acc:
    addi    r28, r31, 0x14
    lbz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3af4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x290
    li      r5, 0x14
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3af4:
    addi    r28, r31, 0x18
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3b1c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x2a4
    li      r5, 0x18
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3b1c:
    addi    r28, r31, 0x19
    lbz     r0, 0x19(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3b44
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x2b8
    li      r5, 0x19
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3b44:
    addi    r28, r31, 0x24
    lbz     r0, 0x24(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3b6c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x2cc
    li      r5, 0x24
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3b6c:
    addi    r28, r31, 0x25
    lbz     r0, 0x25(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3b94
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x2e0
    li      r5, 0x25
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3b94:
    addi    r28, r31, 0x26
    lbz     r0, 0x26(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3bbc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x2f4
    li      r5, 0x26
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3bbc:
    addi    r28, r31, 0x27
    lbz     r0, 0x27(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3be4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x308
    li      r5, 0x27
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3be4:
    addi    r28, r31, 0x28
    lbz     r0, 0x28(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3c0c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x320
    li      r5, 0x28
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3c0c:
    addi    r28, r31, 0x29
    lbz     r0, 0x29(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3c34
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x338
    li      r5, 0x29
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3c34:
    addi    r28, r31, 0x2a
    lbz     r0, 0x2a(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3c5c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x34c
    li      r5, 0x2a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3c5c:
    addi    r28, r31, 0x2b
    lbz     r0, 0x2b(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3c84
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x364
    li      r5, 0x2b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3c84:
    addi    r28, r31, 0x2c
    lbz     r0, 0x2c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3cac
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x378
    li      r5, 0x2c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3cac:
    addi    r28, r31, 0x2d
    lbz     r0, 0x2d(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3cd4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x390
    li      r5, 0x2d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3cd4:
    addi    r28, r31, 0x2e
    lbz     r0, 0x2e(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3cfc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x3a8
    li      r5, 0x2e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3cfc:
    addi    r28, r31, 0x2f
    lbz     r0, 0x2f(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3d24
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x3bc
    li      r5, 0x2f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3d24:
    addi    r28, r31, 0x30
    lbz     r0, 0x30(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3d4c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x3d0
    li      r5, 0x30
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3d4c:
    addi    r28, r31, 0x31
    lbz     r0, 0x31(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3d74
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x3e4
    li      r5, 0x31
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3d74:
    addi    r28, r31, 0x32
    lbz     r0, 0x32(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3d9c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x3fc
    li      r5, 0x32
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3d9c:
    addi    r28, r31, 0x33
    lbz     r0, 0x33(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3dc4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x414
    li      r5, 0x33
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3dc4:
    addi    r28, r31, 0x34
    lbz     r0, 0x34(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3dec
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x428
    li      r5, 0x34
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3dec:
    addi    r28, r31, 0x35
    lbz     r0, 0x35(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3e14
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x43c
    li      r5, 0x35
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3e14:
    addi    r28, r31, 0x36
    lbz     r0, 0x36(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3e3c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x450
    li      r5, 0x36
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3e3c:
    addi    r28, r31, 0x37
    lbz     r0, 0x37(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3e64
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x464
    li      r5, 0x37
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3e64:
    addi    r28, r31, 0x38
    lbz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3e8c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x478
    li      r5, 0x38
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3e8c:
    addi    r28, r31, 0x39
    lbz     r0, 0x39(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3eb4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x48c
    li      r5, 0x39
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3eb4:
    addi    r28, r31, 0x3a
    lbz     r0, 0x3a(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3edc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x4a0
    li      r5, 0x3a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3edc:
    addi    r28, r31, 0x3b
    lbz     r0, 0x3b(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3f04
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x4b4
    li      r5, 0x3b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3f04:
    addi    r28, r31, 0x3d
    lbz     r0, 0x3d(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3f2c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x4c8
    li      r5, 0x3d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3f2c:
    addi    r28, r31, 0x3e
    lbz     r0, 0x3e(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3f54
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x4dc
    li      r5, 0x3e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3f54:
    addi    r28, r31, 0x3f
    lbz     r0, 0x3f(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3f7c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x4f0
    li      r5, 0x3f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3f7c:
    addi    r28, r31, 0x40
    lbz     r0, 0x40(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3fa4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x500
    li      r5, 0x40
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3fa4:
    addi    r28, r31, 0x41
    lbz     r0, 0x41(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3fcc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x514
    li      r5, 0x41
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3fcc:
    addi    r28, r31, 0x42
    lbz     r0, 0x42(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b3ff4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x528
    li      r5, 0x42
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b3ff4:
    addi    r28, r31, 0x43
    lbz     r0, 0x43(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b401c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x53c
    li      r5, 0x43
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b401c:
    addi    r28, r31, 0x44
    lbz     r0, 0x44(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4044
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x554
    li      r5, 0x44
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4044:
    addi    r28, r31, 0x45
    lbz     r0, 0x45(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b406c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x56c
    li      r5, 0x45
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b406c:
    addi    r28, r31, 0x46
    lbz     r0, 0x46(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4094
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x584
    li      r5, 0x46
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4094:
    addi    r28, r31, 0x47
    lbz     r0, 0x47(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b40bc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x59c
    li      r5, 0x47
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b40bc:
    addi    r28, r31, 0x48
    lbz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b40e4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x5b0
    li      r5, 0x48
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b40e4:
    addi    r28, r31, 0x49
    lbz     r0, 0x49(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b410c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x5c4
    li      r5, 0x49
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b410c:
    addi    r28, r31, 0x4a
    lbz     r0, 0x4a(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4134
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x5d8
    li      r5, 0x4a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4134:
    addi    r28, r31, 0x4b
    lbz     r0, 0x4b(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b415c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x5ec
    li      r5, 0x4b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b415c:
    addi    r28, r31, 0x4c
    lbz     r0, 0x4c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4184
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x600
    li      r5, 0x4c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4184:
    addi    r28, r31, 0x4d
    lbz     r0, 0x4d(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b41ac
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x614
    li      r5, 0x4d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b41ac:
    addi    r28, r31, 0x4e
    lbz     r0, 0x4e(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b41d4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x628
    li      r5, 0x4e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b41d4:
    addi    r28, r31, 0xfe
    lbz     r0, 0xfe(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b41fc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x63c
    li      r5, 0xfe
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b41fc:
    addi    r28, r31, 0xff
    lbz     r0, 0xff(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4224
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x650
    li      r5, 0xff
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4224:
    addi    r28, r31, 0x100
    lbz     r0, 0x100(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b424c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x664
    li      r5, 0x100
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b424c:
    addi    r28, r31, 0x101
    lbz     r0, 0x101(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4274
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x678
    li      r5, 0x101
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4274:
    addi    r28, r31, 0x102
    lbz     r0, 0x102(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b429c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x68c
    li      r5, 0x102
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b429c:
    addi    r28, r31, 0x103
    lbz     r0, 0x103(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b42c4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x6a0
    li      r5, 0x103
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b42c4:
    addi    r28, r31, 0x107
    lbz     r0, 0x107(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b42ec
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x6b4
    li      r5, 0x107
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b42ec:
    addi    r28, r31, 0x108
    lbz     r0, 0x108(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4314
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x6c8
    li      r5, 0x108
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4314:
    addi    r28, r31, 0x109
    lbz     r0, 0x109(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b433c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x6dc
    li      r5, 0x109
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b433c:
    addi    r28, r31, 0x104
    lbz     r0, 0x104(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4364
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x6f0
    li      r5, 0x104
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4364:
    addi    r28, r31, 0x105
    lbz     r0, 0x105(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b438c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x700
    li      r5, 0x105
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b438c:
    addi    r28, r31, 0x106
    lbz     r0, 0x106(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b43b4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x710
    li      r5, 0x106
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b43b4:
    addi    r28, r31, 0x10c
    lbz     r0, 0x10c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b43dc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x724
    li      r5, 0x10c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b43dc:
    addi    r28, r31, 0x10d
    lbz     r0, 0x10d(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4404
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x734
    li      r5, 0x10d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4404:
    addi    r28, r31, 0x10e
    lbz     r0, 0x10e(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b442c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x748
    li      r5, 0x10e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b442c:
    addi    r28, r31, 0x10f
    lbz     r0, 0x10f(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4454
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x758
    li      r5, 0x10f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4454:
    addi    r28, r31, 0x110
    lbz     r0, 0x110(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b447c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x770
    li      r5, 0x110
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b447c:
    addi    r28, r31, 0x111
    lbz     r0, 0x111(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b44a4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x788
    li      r5, 0x111
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b44a4:
    addi    r28, r31, 0x112
    lbz     r0, 0x112(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b44cc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x798
    li      r5, 0x112
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b44cc:
    addi    r28, r31, 0x113
    lbz     r0, 0x113(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b44f4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x7ac
    li      r5, 0x113
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b44f4:
    addi    r28, r31, 0x114
    lbz     r0, 0x114(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b451c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x7c0
    li      r5, 0x114
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b451c:
    addi    r28, r31, 0x115
    lbz     r0, 0x115(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4544
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x7d4
    li      r5, 0x115
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4544:
    addi    r28, r31, 0x116
    lbz     r0, 0x116(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b456c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x7e8
    li      r5, 0x116
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b456c:
    addi    r28, r31, 0x117
    lbz     r0, 0x117(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4594
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x7f8
    li      r5, 0x117
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4594:
    addi    r28, r31, 0x118
    lbz     r0, 0x118(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b45bc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x808
    li      r5, 0x118
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b45bc:
    addi    r28, r31, 0x119
    lbz     r0, 0x119(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b45e4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x818
    li      r5, 0x119
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b45e4:
    addi    r28, r31, 0x121
    lbz     r0, 0x121(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b460c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x828
    li      r5, 0x121
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b460c:
    addi    r28, r31, 0x122
    lbz     r0, 0x122(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4634
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x83c
    li      r5, 0x122
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4634:
    addi    r28, r31, 0x123
    lbz     r0, 0x123(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b465c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x850
    li      r5, 0x123
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b465c:
    addi    r28, r31, 0x124
    lbz     r0, 0x124(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4684
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x864
    li      r5, 0x124
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4684:
    addi    r28, r31, 0x10a
    lbz     r0, 0x10a(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b46ac
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x874
    li      r5, 0x10a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b46ac:
    addi    r28, r31, 0x10b
    lbz     r0, 0x10b(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b46d4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x888
    li      r5, 0x10b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b46d4:
    addi    r28, r31, 0x11a
    lbz     r0, 0x11a(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b46fc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x89c
    li      r5, 0x11a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b46fc:
    addi    r28, r31, 0x11b
    lbz     r0, 0x11b(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4724
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x8b0
    li      r5, 0x11b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4724:
    addi    r28, r31, 0x11c
    lbz     r0, 0x11c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b474c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x8c4
    li      r5, 0x11c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b474c:
    addi    r28, r31, 0x11d
    lbz     r0, 0x11d(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4774
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x8d8
    li      r5, 0x11d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4774:
    addi    r28, r31, 0x11e
    lbz     r0, 0x11e(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b479c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x8ec
    li      r5, 0x11e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b479c:
    addi    r28, r31, 0x11f
    lbz     r0, 0x11f(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b47c4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x900
    li      r5, 0x11f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b47c4:
    addi    r28, r31, 0x120
    lbz     r0, 0x120(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b47ec
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x914
    li      r5, 0x120
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b47ec:
    addi    r28, r31, 0x1d4
    lbz     r0, 0x1d4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4814
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x928
    li      r5, 0x1d4
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4814:
    addi    r28, r31, 0x1d5
    lbz     r0, 0x1d5(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b483c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x93c
    li      r5, 0x1d5
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b483c:
    addi    r28, r31, 0x1d6
    lbz     r0, 0x1d6(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4864
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x954
    li      r5, 0x1d6
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4864:
    addi    r28, r31, 0x1e8
    lbz     r0, 0x1e8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b488c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x964
    li      r5, 0x1e8
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b488c:
    addi    r28, r31, 0x1e7
    lbz     r0, 0x1e7(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b48b4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x978
    li      r5, 0x1e7
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b48b4:
    addi    r28, r31, 0x1e9
    lbz     r0, 0x1e9(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b48dc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x98c
    li      r5, 0x1e9
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b48dc:
    addi    r28, r31, 0x1ea
    lbz     r0, 0x1ea(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b4904
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x9a0
    li      r5, 0x1ea
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b4904:
    addi    r28, r31, 0x1f8
    lbz     r0, 0x1f8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b492c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x9b4
    li      r5, 0x1f8
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x802b492c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    blr


.globl loadParticle__12TMarDirectorFv
loadParticle__12TMarDirectorFv: # 0x802b494c
    mflr    r0
    lis     r5, 0x803a
    stw     r0, 0x4(sp)
    lis     r4, 0x8040
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r28, r3, 0x0
    subi    r27, r4, 0x2f98
    addi    r31, r5, 0x7750
    lis     r3, 0x20
    li      r4, -0x20
    bl      __nwa__FUli
    addi    r30, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r31, 0x9c8
    lis     r5, 0x20
    li      r6, 0x0
    bl      SMSLoadArchive__FPCcPvUlP7JKRHeap
    li      r3, 0x6c
    li      r4, -0x20
    bl      __nw__FUli
    cmplwi  r3, 0x0
    beq-    branch_0x802b49ac
    bl      __ct__13JKRMemArchiveFv
branch_0x802b49ac:
    addi    r29, r3, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    mr      r3, r29
    lwz     r12, 0x0(r29)
    subi    r4, rtoc, 0x70
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    bl      loadParticleMario__12TMarDirectorFv
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x9dc
    li      r5, 0x127
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x9f0
    li      r5, 0x128
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xa04
    li      r5, 0x129
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xa18
    li      r5, 0x12a
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xa2c
    li      r5, 0x52
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xa3c
    li      r5, 0x53
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xa4c
    li      r5, 0x54
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xa5c
    li      r5, 0x7f
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xa74
    li      r5, 0x80
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xa8c
    li      r5, 0x81
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xaa4
    li      r5, 0x82
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xabc
    li      r5, 0x83
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xad4
    li      r5, 0x84
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xaec
    li      r5, 0x85
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xb00
    li      r5, 0x86
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xb18
    li      r5, 0x87
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xb2c
    li      r5, 0x88
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xb40
    li      r5, 0x8b
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xb54
    li      r5, 0xa1
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xb68
    li      r5, 0xa2
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xb7c
    li      r5, 0xa3
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xb90
    li      r5, 0xa4
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xba8
    li      r5, 0xa5
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xbbc
    li      r5, 0xa6
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xbd0
    li      r5, 0xb2
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xbe4
    li      r5, 0xb3
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xbf8
    li      r5, 0xb4
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xc0c
    li      r5, 0xb5
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xc20
    li      r5, 0xb6
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xc34
    li      r5, 0xb7
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xc48
    li      r5, 0xb8
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xc5c
    li      r5, 0xb9
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xc70
    li      r5, 0xba
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xc84
    li      r5, 0xbb
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xc98
    li      r5, 0xbc
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xcb0
    li      r5, 0xbd
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xcc8
    li      r5, 0xbe
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xcd8
    li      r5, 0xbf
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xce8
    li      r5, 0xc0
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xcf8
    li      r5, 0xc1
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xd10
    li      r5, 0xc2
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xd28
    li      r5, 0xc3
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xd40
    li      r5, 0x70
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xd50
    li      r5, 0x71
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xd64
    li      r5, 0x72
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xd78
    li      r5, 0x73
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xd8c
    li      r5, 0x74
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xda0
    li      r5, 0x75
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xdb4
    li      r5, 0xc7
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xdc8
    li      r5, 0xc8
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xddc
    li      r5, 0xc9
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xdec
    li      r5, 0xca
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xe04
    li      r5, 0xcb
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xe18
    li      r5, 0xcc
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xe2c
    li      r5, 0xcd
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xe40
    li      r5, 0xce
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xe50
    li      r5, 0x64
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xe64
    li      r5, 0xe2
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xe78
    li      r5, 0xe3
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xe90
    li      r5, 0xe4
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xea4
    li      r5, 0xe5
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xebc
    li      r5, 0xe6
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xed0
    li      r5, 0xe7
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xee4
    li      r5, 0x6d
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xef8
    li      r5, 0x12f
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xf0c
    li      r5, 0x130
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xf1c
    li      r5, 0x135
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xf30
    li      r5, 0x136
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xf44
    li      r5, 0x137
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xf58
    li      r5, 0x13c
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xf6c
    li      r5, 0x13d
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xf80
    li      r5, 0x13e
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xf98
    li      r5, 0x13f
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xfb0
    li      r5, 0x165
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xfc4
    li      r5, 0x170
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xfd8
    li      r5, 0x171
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xfec
    li      r5, 0x1f7
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1000
    li      r5, 0x172
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1010
    li      r5, 0x173
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1024
    li      r5, 0x174
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1038
    li      r5, 0x175
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1048
    li      r5, 0x176
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1058
    li      r5, 0x177
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x106c
    li      r5, 0x178
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x107c
    li      r5, 0x179
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1090
    li      r5, 0x17a
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x10a0
    li      r5, 0x17b
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x10b4
    li      r5, 0x17c
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x10c8
    li      r5, 0x17d
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x10e0
    li      r5, 0x17e
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x10f4
    li      r5, 0x17f
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1108
    li      r5, 0x180
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1118
    li      r5, 0x181
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x112c
    li      r5, 0x182
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1140
    li      r5, 0x183
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1154
    li      r5, 0x185
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1164
    li      r5, 0x186
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1178
    li      r5, 0x187
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x118c
    li      r5, 0x188
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x11a0
    li      r5, 0x18b
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x11b0
    li      r5, 0x12c
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x11c4
    li      r5, 0x1c4
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x11d8
    li      r5, 0x1c5
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x11ec
    li      r5, 0x1d1
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1200
    li      r5, 0x1d2
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1214
    li      r5, 0x1d8
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x122c
    li      r5, 0x1d9
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1244
    li      r5, 0x1da
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1258
    li      r5, 0x1db
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1268
    li      r5, 0x1f1
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x127c
    li      r5, 0x1ec
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1294
    li      r5, 0x1ed
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x12a8
    li      r5, 0x1f5
    bl      load__18JPAResourceManagerFPCcUs
    addi    r26, r27, 0xd1
    lbz     r0, 0xd1(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x802b5110
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x12bc
    li      r5, 0xd1
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r26)
branch_0x802b5110:
    addi    r26, r27, 0xd2
    lbz     r0, 0xd2(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x802b5138
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x12d0
    li      r5, 0xd2
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r26)
branch_0x802b5138:
    addi    r26, r27, 0x12e
    lbz     r0, 0x12e(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x802b5160
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x12e4
    li      r5, 0x12e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r26)
branch_0x802b5160:
    addi    r26, r27, 0xd0
    lbz     r0, 0xd0(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x802b5188
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x12f8
    li      r5, 0xd0
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r26)
branch_0x802b5188:
    addi    r26, r27, 0x12d
    lbz     r0, 0x12d(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x802b51b0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x130c
    li      r5, 0x12d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r26)
branch_0x802b51b0:
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x131c
    li      r5, 0x1f9
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1330
    li      r5, 0x1fa
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1344
    li      r5, 0x1fb
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x135c
    li      r5, 0x1fc
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1374
    li      r5, 0x1fd
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1384
    li      r5, 0x1fe
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1394
    li      r5, 0x1ff
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x13a4
    li      r5, 0x200
    bl      load__18JPAResourceManagerFPCcUs
    lwz     r0, -0x5fe0(r13)
    mr      r3, r29
    lwz     r4, -0x5fdc(r13)
    stw     r0, 0xa4(r4)
    bl      unmountFixed__13JKRMemArchiveFv
    lbz     r0, 0x7c(r28)
    cmplwi  r0, 0x4
    bne-    branch_0x802b52a4
    lbz     r0, 0x7d(r28)
    cmplwi  r0, 0x2
    bne-    branch_0x802b52a4
    addi    r4, r30, 0x0
    addi    r3, r31, 0x13b8
    lis     r5, 0x20
    li      r6, 0x0
    bl      SMSLoadArchive__FPCcPvUlP7JKRHeap
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    mr      r3, r29
    lwz     r12, 0x0(r29)
    subi    r4, rtoc, 0x70
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    bl      staticLoadParticle__13TBossHanachanFv
    mr      r3, r29
    bl      unmountFixed__13JKRMemArchiveFv
branch_0x802b52a4:
    lwz     r3, -0x5f2c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl initLoadParticle__12TMarDirectorFv
initLoadParticle__12TMarDirectorFv: # 0x802b52cc
    li      r0, 0x8
    lis     r3, 0x8040
    mtctr   r0
    subi    r0, r3, 0x2f98
    li      r5, 0x0
    li      r3, 0x0
branch_0x802b52e4:
    add     r4, r0, r5
    stb     r3, 0x0(r4)
    addi    r5, r5, 0x8
    stb     r3, 0x1(r4)
    stb     r3, 0x2(r4)
    stb     r3, 0x3(r4)
    stb     r3, 0x4(r4)
    stb     r3, 0x5(r4)
    stb     r3, 0x6(r4)
    stb     r3, 0x7(r4)
    add     r4, r0, r5
    addi    r5, r5, 0x8
    stb     r3, 0x0(r4)
    stb     r3, 0x1(r4)
    stb     r3, 0x2(r4)
    stb     r3, 0x3(r4)
    stb     r3, 0x4(r4)
    stb     r3, 0x5(r4)
    stb     r3, 0x6(r4)
    stb     r3, 0x7(r4)
    add     r4, r0, r5
    addi    r5, r5, 0x8
    stb     r3, 0x0(r4)
    stb     r3, 0x1(r4)
    stb     r3, 0x2(r4)
    stb     r3, 0x3(r4)
    stb     r3, 0x4(r4)
    stb     r3, 0x5(r4)
    stb     r3, 0x6(r4)
    stb     r3, 0x7(r4)
    add     r4, r0, r5
    addi    r5, r5, 0x8
    stb     r3, 0x0(r4)
    stb     r3, 0x1(r4)
    stb     r3, 0x2(r4)
    stb     r3, 0x3(r4)
    stb     r3, 0x4(r4)
    stb     r3, 0x5(r4)
    stb     r3, 0x6(r4)
    stb     r3, 0x7(r4)
    add     r4, r0, r5
    addi    r5, r5, 0x8
    stb     r3, 0x0(r4)
    stb     r3, 0x1(r4)
    stb     r3, 0x2(r4)
    stb     r3, 0x3(r4)
    stb     r3, 0x4(r4)
    stb     r3, 0x5(r4)
    stb     r3, 0x6(r4)
    stb     r3, 0x7(r4)
    add     r4, r0, r5
    addi    r5, r5, 0x8
    stb     r3, 0x0(r4)
    stb     r3, 0x1(r4)
    stb     r3, 0x2(r4)
    stb     r3, 0x3(r4)
    stb     r3, 0x4(r4)
    stb     r3, 0x5(r4)
    stb     r3, 0x6(r4)
    stb     r3, 0x7(r4)
    add     r4, r0, r5
    addi    r5, r5, 0x8
    stb     r3, 0x0(r4)
    stb     r3, 0x1(r4)
    stb     r3, 0x2(r4)
    stb     r3, 0x3(r4)
    stb     r3, 0x4(r4)
    stb     r3, 0x5(r4)
    stb     r3, 0x6(r4)
    stb     r3, 0x7(r4)
    add     r4, r0, r5
    addi    r5, r5, 0x8
    stb     r3, 0x0(r4)
    stb     r3, 0x1(r4)
    stb     r3, 0x2(r4)
    stb     r3, 0x3(r4)
    stb     r3, 0x4(r4)
    stb     r3, 0x5(r4)
    stb     r3, 0x6(r4)
    stb     r3, 0x7(r4)
    bdnz+      branch_0x802b52e4
    subfic  r0, r5, 0x201
    lis     r3, 0x8040
    mtctr   r0
    cmpwi   r5, 0x201
    subi    r0, r3, 0x2f98
    li      r4, 0x0
    bgelr-    

branch_0x802b5444:
    add     r3, r0, r5
    stb     r4, 0x0(r3)
    addi    r5, r5, 0x1
    bdnz+      branch_0x802b5444
    blr


.globl loadResource__12TMarDirectorFv
loadResource__12TMarDirectorFv: # 0x802b5458
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x170(sp)
    stmw    r27, 0x15c(sp)
    addi    r31, r3, 0x0
    addi    r30, r4, 0x7750
    li      r3, 0x3bc
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802b5490
    addi    r3, r28, 0x0
    addi    r4, r30, 0x13d4
    bl      __ct__21TMarioParticleManagerFPCc
branch_0x802b5490:
    stw     r28, gpMarioParticleManager(r13)
    li      r29, 0x3e8
    lwz     r3, gpMarDirector(r13)
    li      r28, 0x100
    li      r4, 0x20
    lbz     r0, 0x7c(r3)
    cmpwi   r0, 0x34
    beq-    branch_0x802b5554
    bge-    branch_0x802b54e4
    cmpwi   r0, 0x9
    beq-    branch_0x802b5540
    bge-    branch_0x802b54d8
    cmpwi   r0, 0x5
    beq-    branch_0x802b551c
    bge-    branch_0x802b5574
    cmpwi   r0, 0x4
    bge-    branch_0x802b555c
    b       branch_0x802b5574

branch_0x802b54d8:
    cmpwi   r0, 0x21
    beq-    branch_0x802b5510
    b       branch_0x802b5574

branch_0x802b54e4:
    cmpwi   r0, 0x3b
    beq-    branch_0x802b5574
    bge-    branch_0x802b5504
    cmpwi   r0, 0x3a
    bge-    branch_0x802b5530
    cmpwi   r0, 0x38
    bge-    branch_0x802b5538
    b       branch_0x802b5574

branch_0x802b5504:
    cmpwi   r0, 0x3d
    bge-    branch_0x802b5574
    b       branch_0x802b5570

branch_0x802b5510:
    li      r29, 0xbb8
    li      r4, 0x78
    b       branch_0x802b5574

branch_0x802b551c:
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802b5574
    li      r29, 0x5dc
    b       branch_0x802b5574

branch_0x802b5530:
    li      r29, 0xfa0
    b       branch_0x802b5574

branch_0x802b5538:
    li      r29, 0xbb8
    b       branch_0x802b5574

branch_0x802b5540:
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802b5574
    li      r29, 0x5dc
    b       branch_0x802b5574

branch_0x802b5554:
    li      r29, 0xbb8
    b       branch_0x802b5574

branch_0x802b555c:
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x802b5574
    li      r29, 0xbb8
    b       branch_0x802b5574

branch_0x802b5570:
    li      r29, 0x1388
branch_0x802b5574:
    lwz     r3, gpMarioParticleManager(r13)
    bl      createEffectInfoAry__21TMarioParticleManagerFi
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802b55a0
    addi    r3, r27, 0x0
    li      r4, 0x201
    li      r5, 0x800
    li      r6, 0x0
    bl      __ct__18JPAResourceManagerFUlUlP7JKRHeap
branch_0x802b55a0:
    stw     r27, -0x5fe0(r13)
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802b55d0
    lwz     r4, -0x5fe0(r13)
    addi    r3, r27, 0x0
    addi    r5, r29, 0x0
    slwi    r7, r28, 1
    li      r6, 0x100
    li      r8, 0x0
    bl      __ct__17JPAEmitterManagerFP18JPAResourceManagerlllP7JKRHeap
branch_0x802b55d0:
    lwz     r4, gpMarioParticleManager(r13)
    li      r3, 0x148
    stw     r27, 0x3b8(r4)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802b5604
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0xc8
    li      r6, 0x20
    li      r7, 0x40
    li      r8, 0x0
    bl      __ct__17JPAEmitterManagerFP18JPAResourceManagerlllP7JKRHeap
branch_0x802b5604:
    stw     r27, -0x5fdc(r13)
    mr      r3, r31
    bl      loadParticle__12TMarDirectorFv
    addi    r3, r30, 0x13ec
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      SMSLoadArchive__FPCcPvUlP7JKRHeap
    addi    r28, r3, 0x0
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802b5640
    mr      r3, r27
    bl      __ct__13JKRMemArchiveFv
branch_0x802b5640:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    clrlwi. r0, r3, 24
    bne-    branch_0x802b5660
    li      r3, 0x1
    b       branch_0x802b5820

branch_0x802b5660:
    addi    r3, sp, 0x60
    bl      __ct__10JKRDvdFileFv
    addi    r3, sp, 0x60
    addi    r4, r30, 0x13fc
    bl      open__10JKRDvdFileFPCc
    clrlwi. r0, r3, 24
    bne-    branch_0x802b5690
    addi    r3, sp, 0x60
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    li      r3, 0x1
    b       branch_0x802b5820

branch_0x802b5690:
    lwz     r0, 0xf0(sp)
    addi    r3, sp, 0x60
    li      r4, 0x0
    stw     r0, -0x6054(r13)
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    stw     r3, -0x6058(r13)
    lwz     r0, -0x6058(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802b56e0
    addi    r3, sp, 0x60
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    li      r3, 0x1
    b       branch_0x802b5820

branch_0x802b56e0:
    addi    r3, sp, 0x60
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    lis     r3, 0x8
    li      r4, -0x20
    bl      __nwa__FUli
    addi    r28, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r30, 0x1410
    lis     r5, 0x8
    li      r6, 0x0
    bl      SMSLoadArchive__FPCcPvUlP7JKRHeap
    cmplwi  r3, 0x0
    bne-    branch_0x802b5720
    li      r3, 0x1
    b       branch_0x802b5820

branch_0x802b5720:
    li      r3, 0x6c
    li      r4, -0x20
    bl      __nw__FUli
    cmplwi  r3, 0x0
    beq-    branch_0x802b5738
    bl      __ct__13JKRMemArchiveFv
branch_0x802b5738:
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    clrlwi. r0, r3, 24
    bne-    branch_0x802b5754
    li      r3, 0x1
    b       branch_0x802b5820

branch_0x802b5754:
    lis     r3, 0x803f
    subi    r29, r3, 0x6900
    addi    r3, r29, 0x0
    bl      mountStageArchive__12TApplicationFv
    stw     r3, 0xb8(r31)
    lwz     r0, 0xb8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b577c
    li      r3, 0x1
    b       branch_0x802b5820

branch_0x802b577c:
    lbz     r0, 0xe(r29)
    cmplwi  r0, 0xf
    bne-    branch_0x802b57d8
    addi    r3, r30, 0x1424
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      SMSLoadArchive__FPCcPvUlP7JKRHeap
    addi    r28, r3, 0x0
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802b57b8
    mr      r3, r27
    bl      __ct__13JKRMemArchiveFv
branch_0x802b57b8:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    clrlwi. r0, r3, 24
    bne-    branch_0x802b57d8
    li      r3, 0x1
    b       branch_0x802b5820

branch_0x802b57d8:
    lis     r3, 0x6
    addi    r3, r3, 0x4000
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0xd4(r31)
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802b5804
    mr      r3, r27
    bl      __ct__13JKRMemArchiveFv
branch_0x802b5804:
    stw     r27, 0xd8(r31)
    mr      r3, r31
    bl      thpInit__12TMarDirectorFv
    cmpwi   r3, 0x0
    beq-    branch_0x802b581c
    b       branch_0x802b5820

branch_0x802b581c:
    li      r3, 0x0
branch_0x802b5820:
    lmw     r27, 0x15c(sp)
    lwz     r0, 0x174(sp)
    addi    sp, sp, 0x170
    mtlr    r0
    blr


.globl __sinit_MarDirectorLoadResource_cpp
__sinit_MarDirectorLoadResource_cpp: # 0x802b5834
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x2f98
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802b587c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x204
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x802b587c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802b58ac
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x210
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x802b58ac:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802b58dc
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x21c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x802b58dc:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802b590c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x228
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x802b590c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802b593c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x234
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x802b593c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802b596c
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x240
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802b596c:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802b599c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x24c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802b599c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802b59cc
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x258
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x802b59cc:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802b59fc
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x264
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802b59fc:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802b5a2c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x270
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x802b5a2c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802b5a5c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x27c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x802b5a5c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802b5a8c
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x288
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802b5a8c:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802b5abc
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x294
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802b5abc:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802b5aec
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x2a0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x802b5aec:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802b5b1c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x2ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x802b5b1c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

