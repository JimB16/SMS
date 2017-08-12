
.globl GXSetFog
GXSetFog: # 0x80361b20
    mflr    r0
    fcmpu   cr0, f4, f3
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r4, 0x0
    beq-    branch_0x80361b50
    fcmpu   cr0, f2, f1
    bne-    branch_0x80361b60
branch_0x80361b50:
    lfs     f3, 0xbb0(r2)
    lfs     f4, 0xbb4(r2)
    fmr     f5, f3
    b       branch_0x80361b7c

branch_0x80361b60:
    fsubs   f0, f4, f3
    fsubs   f5, f2, f1
    fmuls   f2, f4, f3
    fdivs   f4, f4, f0
    fmuls   f0, f0, f5
    fdivs   f5, f1, f5
    fdivs   f3, f2, f0
branch_0x80361b7c:
    lfs     f1, 0xbb4(r2)
    li      r3, 0x0
    lfd     f0, 0xbb8(r2)
    b       branch_0x80361b94

branch_0x80361b8c:
    fmuls   f4, f4, f1
    addi    r3, r3, 0x1
branch_0x80361b94:
    fcmpo   cr0, f4, f0
    bgt+    branch_0x80361b8c
    lfd     f0, 0xbc8(r2)
    lfs     f2, 0xbc0(r2)
    lfs     f1, 0xbb0(r2)
    b       branch_0x80361bb4

branch_0x80361bac:
    fmuls   f4, f4, f2
    addi    r3, r3, -0x1
branch_0x80361bb4:
    fcmpo   cr0, f4, f1
    ble-    branch_0x80361bc4
    fcmpo   cr0, f4, f0
    blt+    branch_0x80361bac
branch_0x80361bc4:
    addi    r30, r3, 0x1
    lfs     f0, 0xbd0(r2)
    li      r0, 0x1
    lfd     f2, 0xbd8(r2)
    slw     r0, r0, r30
    fmuls   f1, f0, f4
    xoris   r3, r0, 0x8000
    stfs    f5, 0x28(sp)
    lis     r0, 0x4330
    stw     r3, 0x34(sp)
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f2
    fdivs   f0, f3, f0
    stfs    f0, 0x2c(sp)
    bl      __cvt_fp2unsigned
    lwz     r0, 0x2c(sp)
    clrlwi  r9, r3, 8
    lbz     r6, 0x1(r29)
    clrlwi  r8, r30, 8
    rlwinm  r4, r0, 20, 13, 20
    rlwimi  r4, r0, 20, 21, 31
    lbz     r11, 0x2(r29)
    rlwinm  r0, r0, 20, 12, 12
    lbz     r5, 0x0(r29)
    insrwi  r0, r4, 19, 13
    lwz     r12, 0x28(sp)
    clrlwi  r7, r0, 8
    lwz     r3, R13Off_m0x72f8(r13)
    oris    r10, r7, 0xee00
    li      r0, 0x61
    lis     r4, 0xcc01
    stb     r0, -0x8000(r4)
    oris    r7, r9, 0xef00
    slwi    r6, r6, 8
    stw     r10, -0x8000(r4)
    rlwinm  r10, r12, 20, 13, 20
    rlwimi  r10, r12, 20, 21, 31
    stb     r0, -0x8000(r4)
    rlwinm  r9, r12, 20, 12, 12
    insrwi  r9, r10, 19, 13
    stw     r7, -0x8000(r4)
    oris    r7, r8, 0xf000
    insrwi  r6, r11, 8, 24
    stb     r0, -0x8000(r4)
    stw     r7, -0x8000(r4)
    slwi    r7, r31, 21
    insrwi  r7, r9, 20, 12
    clrlwi  r7, r7, 8
    stb     r0, -0x8000(r4)
    oris    r7, r7, 0xf100
    stw     r7, -0x8000(r4)
    stb     r0, -0x8000(r4)
    slwi    r0, r5, 16
    insrwi  r0, r6, 16, 16
    clrlwi  r0, r0, 8
    oris    r0, r0, 0xf200
    stw     r0, -0x8000(r4)
    li      r0, 0x0
    sth     r0, 0x2(r3)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl GXSetFogRangeAdj
GXSetFogRangeAdj: # 0x80361cd0
    clrlwi. r0, r3, 24
    beq-    branch_0x80361d94
    lhz     r8, 0x2(r5)
    li      r0, 0x61
    lhz     r10, 0x0(r5)
    lis     r6, 0xcc01
    slwi    r8, r8, 12
    insrwi  r8, r10, 12, 20
    stb     r0, -0x8000(r6)
    li      r7, 0xe9
    clrlwi  r9, r8, 8
    insrwi  r9, r7, 8, 0
    stw     r9, -0x8000(r6)
    li      r7, 0xea
    slwi    r9, r7, 24
    lhzu    r10, 0x4(r5)
    li      r7, 0xeb
    lhz     r8, 0x2(r5)
    slwi    r8, r8, 12
    stb     r0, -0x8000(r6)
    insrwi  r8, r10, 12, 20
    insrwi  r9, r8, 24, 8
    stw     r9, -0x8000(r6)
    slwi    r9, r7, 24
    li      r7, 0xec
    lhz     r8, 0x6(r5)
    lhz     r10, 0x4(r5)
    slwi    r8, r8, 12
    insrwi  r8, r10, 12, 20
    stb     r0, -0x8000(r6)
    insrwi  r9, r8, 24, 8
    stw     r9, -0x8000(r6)
    slwi    r9, r7, 24
    li      r7, 0xed
    lhz     r8, 0xa(r5)
    lhz     r10, 0x8(r5)
    slwi    r8, r8, 12
    insrwi  r8, r10, 12, 20
    stb     r0, -0x8000(r6)
    insrwi  r9, r8, 24, 8
    stw     r9, -0x8000(r6)
    lhz     r8, 0xe(r5)
    lhz     r10, 0xc(r5)
    slwi    r8, r8, 12
    insrwi  r8, r10, 12, 20
    stb     r0, -0x8000(r6)
    clrlwi  r9, r8, 8
    insrwi  r9, r7, 8, 0
    stw     r9, -0x8000(r6)
branch_0x80361d94:
    clrlwi  r5, r4, 16
    lwz     r4, R13Off_m0x72f8(r13)
    addi    r0, r5, 0x156
    rlwinm  r5, r0, 0, 22, 20
    clrlslwi  r0, r3, 24, 10
    or      r0, r5, r0
    clrlwi  r5, r0, 8
    li      r0, 0x61
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    oris    r5, r5, 0xe800
    li      r0, 0x0
    stw     r5, -0x8000(r3)
    sth     r0, 0x2(r4)
    blr


.globl GXSetBlendMode
GXSetBlendMode: # 0x80361dd0
    cmpwi   r3, 0x1
    li      r9, 0x1
    beq-    branch_0x80361de8
    cmpwi   r3, 0x3
    beq-    branch_0x80361de8
    li      r9, 0x0
branch_0x80361de8:
    lwz     r8, R13Off_m0x72f8(r13)
    subfic  r0, r3, 0x3
    cntlzw  r7, r0
    addi    r10, r8, 0x1d0
    lwz     r8, 0x1d0(r8)
    subfic  r0, r3, 0x2
    clrrwi  r3, r8, 1
    or      r3, r3, r9
    stw     r3, 0x0(r10)
    cntlzw  r0, r0
    extlwi  r3, r7, 21, 6
    lwz     r9, R13Off_m0x72f8(r13)
    rlwinm  r8, r0, 28, 4, 30
    lwzu    r0, 0x1d0(r9)
    slwi    r7, r6, 12
    slwi    r6, r4, 8
    rlwinm  r0, r0, 0, 21, 19
    or      r0, r0, r3
    stw     r0, 0x0(r9)
    slwi    r4, r5, 5
    li      r3, 0x61
    lwz     r9, R13Off_m0x72f8(r13)
    lis     r5, 0xcc01
    li      r0, 0x0
    addi    r10, r9, 0x1d0
    lwz     r9, 0x1d0(r9)
    rlwinm  r9, r9, 0, 31, 29
    or      r8, r9, r8
    stw     r8, 0x0(r10)
    lwz     r8, R13Off_m0x72f8(r13)
    addi    r9, r8, 0x1d0
    lwz     r8, 0x1d0(r8)
    rlwinm  r8, r8, 0, 20, 15
    or      r7, r8, r7
    stw     r7, 0x0(r9)
    lwz     r7, R13Off_m0x72f8(r13)
    addi    r8, r7, 0x1d0
    lwz     r7, 0x1d0(r7)
    rlwinm  r7, r7, 0, 24, 20
    or      r6, r7, r6
    stw     r6, 0x0(r8)
    lwz     r6, R13Off_m0x72f8(r13)
    addi    r7, r6, 0x1d0
    lwz     r6, 0x1d0(r6)
    rlwinm  r6, r6, 0, 27, 23
    or      r4, r6, r4
    stw     r4, 0x0(r7)
    lwz     r4, R13Off_m0x72f8(r13)
    addi    r6, r4, 0x1d0
    lwz     r4, 0x1d0(r4)
    clrlwi  r4, r4, 8
    oris    r4, r4, 0x4100
    stw     r4, 0x0(r6)
    stb     r3, -0x8000(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, 0x1d0(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetColorUpdate
GXSetColorUpdate: # 0x80361ed4
    lwz     r4, R13Off_m0x72f8(r13)
    clrlslwi  r0, r3, 24, 3
    li      r3, 0x61
    addi    r6, r4, 0x1d0
    lwz     r4, 0x1d0(r4)
    lis     r5, 0xcc01
    rlwinm  r4, r4, 0, 29, 27
    or      r0, r4, r0
    stw     r0, 0x0(r6)
    li      r0, 0x0
    stb     r3, -0x8000(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, 0x1d0(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetAlphaUpdate
GXSetAlphaUpdate: # 0x80361f14
    lwz     r4, R13Off_m0x72f8(r13)
    clrlslwi  r0, r3, 24, 4
    li      r3, 0x61
    addi    r6, r4, 0x1d0
    lwz     r4, 0x1d0(r4)
    lis     r5, 0xcc01
    rlwinm  r4, r4, 0, 28, 26
    or      r0, r4, r0
    stw     r0, 0x0(r6)
    li      r0, 0x0
    stb     r3, -0x8000(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, 0x1d0(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetZMode
GXSetZMode: # 0x80361f54
    lwz     r6, R13Off_m0x72f8(r13)
    clrlwi  r0, r3, 24
    lwz     r3, 0x1d8(r6)
    addi    r7, r6, 0x1d8
    slwi    r6, r4, 1
    clrrwi  r3, r3, 1
    or      r0, r3, r0
    stw     r0, 0x0(r7)
    clrlslwi  r4, r5, 24, 4
    li      r3, 0x61
    lwz     r7, R13Off_m0x72f8(r13)
    lis     r5, 0xcc01
    li      r0, 0x0
    addi    r8, r7, 0x1d8
    lwz     r7, 0x1d8(r7)
    rlwinm  r7, r7, 0, 31, 27
    or      r6, r7, r6
    stw     r6, 0x0(r8)
    lwz     r6, R13Off_m0x72f8(r13)
    addi    r7, r6, 0x1d8
    lwz     r6, 0x1d8(r6)
    rlwinm  r6, r6, 0, 28, 26
    or      r4, r6, r4
    stw     r4, 0x0(r7)
    stb     r3, -0x8000(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, 0x1d8(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetZCompLoc
GXSetZCompLoc: # 0x80361fcc
    lwz     r4, R13Off_m0x72f8(r13)
    clrlslwi  r0, r3, 24, 6
    li      r3, 0x61
    addi    r6, r4, 0x1dc
    lwz     r4, 0x1dc(r4)
    lis     r5, 0xcc01
    rlwinm  r4, r4, 0, 26, 24
    or      r0, r4, r0
    stw     r0, 0x0(r6)
    li      r0, 0x0
    stb     r3, -0x8000(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, 0x1dc(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetPixelFmt
GXSetPixelFmt: # 0x8036200c
    lwz     r7, R13Off_m0x72f8(r13)
    lis     r5, p2f_194@ha
    slwi    r6, r3, 2
    addi    r8, r7, 0x1dc
    addi    r0, r5, p2f_194@l
    lwz     r7, 0x1dc(r7)
    add     r9, r0, r6
    lwz     r5, 0x0(r9)
    clrrwi  r6, r7, 3
    slwi    r0, r4, 3
    or      r4, r6, r5
    stw     r4, 0x0(r8)
    lwz     r4, R13Off_m0x72f8(r13)
    addi    r5, r4, 0x1dc
    lwz     r4, 0x1dc(r4)
    rlwinm  r4, r4, 0, 29, 25
    or      r0, r4, r0
    stw     r0, 0x0(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r5, 0x1dc(r4)
    cmplw   r7, r5
    beq-    branch_0x803620b4
    li      r0, 0x61
    lis     r4, 0xcc01
    stb     r0, -0x8000(r4)
    cmpwi   r3, 0x2
    stw     r5, -0x8000(r4)
    bne-    branch_0x80362084
    li      r0, 0x1
    b       branch_0x80362088

branch_0x80362084:
    li      r0, 0x0
branch_0x80362088:
    lwz     r4, R13Off_m0x72f8(r13)
    clrlslwi  r0, r0, 24, 9
    addi    r5, r4, 0x204
    lwz     r4, 0x204(r4)
    rlwinm  r4, r4, 0, 23, 21
    or      r0, r4, r0
    stw     r0, 0x0(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x4f4(r4)
branch_0x803620b4:
    lwz     r0, 0x0(r9)
    cmplwi  r0, 0x4
    bne-    branch_0x8036210c
    lwz     r4, R13Off_m0x72f8(r13)
    addi    r3, r3, -0x4
    li      r0, 0x61
    addi    r5, r4, 0x1d4
    lwz     r4, 0x1d4(r4)
    rlwinm  r4, r4, 0, 23, 20
    insrwi  r4, r3, 2, 21
    stw     r4, 0x0(r5)
    lis     r4, 0xcc01
    lwz     r3, R13Off_m0x72f8(r13)
    addi    r5, r3, 0x1d4
    lwz     r3, 0x1d4(r3)
    clrlwi  r3, r3, 8
    oris    r3, r3, 0x4200
    stw     r3, 0x0(r5)
    stb     r0, -0x8000(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x1d4(r3)
    stw     r0, -0x8000(r4)
branch_0x8036210c:
    lwz     r3, R13Off_m0x72f8(r13)
    li      r0, 0x0
    sth     r0, 0x2(r3)
    blr


.globl GXSetDither
GXSetDither: # 0x8036211c
    lwz     r4, R13Off_m0x72f8(r13)
    clrlslwi  r0, r3, 24, 2
    li      r3, 0x61
    addi    r6, r4, 0x1d0
    lwz     r4, 0x1d0(r4)
    lis     r5, 0xcc01
    rlwinm  r4, r4, 0, 30, 28
    or      r0, r4, r0
    stw     r0, 0x0(r6)
    li      r0, 0x0
    stb     r3, -0x8000(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, 0x1d0(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetDstAlpha
GXSetDstAlpha: # 0x8036215c
    lwz     r5, R13Off_m0x72f8(r13)
    clrlslwi  r6, r3, 24, 8
    lwzu    r0, 0x1d4(r5)
    li      r3, 0x61
    clrrwi  r0, r0, 8
    insrwi  r0, r4, 8, 24
    stw     r0, 0x0(r5)
    lis     r5, 0xcc01
    li      r0, 0x0
    lwz     r4, R13Off_m0x72f8(r13)
    addi    r7, r4, 0x1d4
    lwz     r4, 0x1d4(r4)
    rlwinm  r4, r4, 0, 24, 22
    or      r4, r4, r6
    stw     r4, 0x0(r7)
    stb     r3, -0x8000(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, 0x1d4(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetFieldMask
GXSetFieldMask: # 0x803621b0
    clrlwi  r0, r4, 24
    lwz     r4, R13Off_m0x72f8(r13)
    rlwinm  r5, r0, 0, 31, 29
    clrlslwi  r0, r3, 24, 1
    or      r0, r5, r0
    clrlwi  r5, r0, 8
    li      r0, 0x61
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    oris    r5, r5, 0x4400
    li      r0, 0x0
    stw     r5, -0x8000(r3)
    sth     r0, 0x2(r4)
    blr


.globl GXSetFieldMode
GXSetFieldMode: # 0x803621e8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 24, 22
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lis     r31, 0xcc01
    stw     r30, 0x18(sp)
    li      r30, 0x61
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r5, R13Off_m0x72f8(r13)
    lwzu    r4, 0x7c(r5)
    rlwinm  r4, r4, 0, 10, 8
    or      r0, r4, r0
    stw     r0, 0x0(r5)
    stb     r30, -0x8000(r31)
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x7c(r3)
    stw     r0, -0x8000(r31)
    bl      __GXFlushTextureState
    clrlwi  r0, r29, 24
    stb     r30, -0x8000(r31)
    oris    r0, r0, 0x6800
    stw     r0, -0x8000(r31)
    bl      __GXFlushTextureState
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

