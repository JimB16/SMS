
.globl GXSetTevIndirect
GXSetTevIndirect: # 0x80360a18
    stwu    sp, -0x28(sp)
    rlwinm  r4, r4, 0, 30, 27
    slwi    r0, r5, 2
    or      r0, r4, r0
    lwz     r11, 0x34(sp)
    rlwinm  r5, r0, 0, 28, 24
    lbz     r12, 0x33(sp)
    slwi    r0, r6, 4
    lwz     r4, -0x72f8(r13)
    or      r0, r5, r0
    rlwinm  r5, r0, 0, 25, 22
    slwi    r0, r11, 7
    or      r0, r5, r0
    rlwinm  r5, r0, 0, 23, 18
    slwi    r0, r7, 9
    or      r0, r5, r0
    rlwinm  r5, r0, 0, 19, 15
    slwi    r0, r8, 13
    or      r0, r5, r0
    addi    r5, r3, 0x10
    rlwinm  r3, r0, 0, 16, 12
    slwi    r0, r9, 16
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 13, 11
    slwi    r0, r12, 19
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 12, 10
    clrlslwi  r0, r10, 24, 20
    or      r6, r3, r0
    li      r0, 0x61
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    slwi    r0, r5, 24
    insrwi  r0, r6, 24, 8
    stw     r0, -0x8000(r3)
    li      r0, 0x0
    sth     r0, 0x2(r4)
    addi    sp, sp, 0x28
    blr


.globl GXSetIndTexMtx
GXSetIndTexMtx: # 0x80360ab4
    cmpwi   r3, 0x8
    stwu    sp, -0x78(sp)
    beq-    branch_0x80360b00
    bge-    branch_0x80360adc
    cmpwi   r3, 0x4
    beq-    branch_0x80360b00
    bge-    branch_0x80360af0
    cmpwi   r3, 0x1
    bge-    branch_0x80360ae8
    b       branch_0x80360b00

branch_0x80360adc:
    cmpwi   r3, 0xc
    bge-    branch_0x80360b00
    b       branch_0x80360af8

branch_0x80360ae8:
    subi    r0, r3, 0x1
    b       branch_0x80360b04

branch_0x80360af0:
    subi    r0, r3, 0x5
    b       branch_0x80360b04

branch_0x80360af8:
    subi    r0, r3, 0x9
    b       branch_0x80360b04

branch_0x80360b00:
    li      r0, 0x0
branch_0x80360b04:
    lfs     f2, 0xba8(rtoc)
    mulli   r3, r0, 0x3
    lfs     f1, 0x0(r4)
    lfs     f0, 0xc(r4)
    fmuls   f1, f2, f1
    addi    r11, r5, 0x11
    fmuls   f0, f2, f0
    addi    r0, r3, 0x6
    extsb   r11, r11
    fctiwz  f1, f1
    li      r10, 0x61
    fctiwz  f0, f0
    lis     r9, 0xcc01
    stb     r10, -0x8000(r9)
    stfd    f1, 0x70(sp)
    slwi    r0, r0, 24
    addi    r6, r3, 0x7
    stfd    f0, 0x68(sp)
    addi    r5, r3, 0x8
    lwz     r8, 0x74(sp)
    lwz     r7, 0x6c(sp)
    lwz     r3, -0x72f8(r13)
    clrlslwi  r7, r7, 21, 11
    insrwi  r7, r8, 11, 21
    rlwinm  r7, r7, 0, 10, 7
    insrwi  r7, r11, 2, 8
    insrwi  r0, r7, 24, 8
    stw     r0, -0x8000(r9)
    li      r0, 0x0
    lfs     f1, 0x4(r4)
    lfs     f0, 0x10(r4)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stb     r10, -0x8000(r9)
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0x60(sp)
    stfd    f0, 0x58(sp)
    lwz     r8, 0x64(sp)
    lwz     r7, 0x5c(sp)
    clrlslwi  r7, r7, 21, 11
    insrwi  r7, r8, 11, 21
    rlwinm  r7, r7, 0, 10, 7
    rlwimi  r7, r11, 20, 8, 9
    clrlwi  r7, r7, 8
    insrwi  r7, r6, 8, 0
    stw     r7, -0x8000(r9)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x14(r4)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stb     r10, -0x8000(r9)
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0x50(sp)
    stfd    f0, 0x48(sp)
    lwz     r6, 0x54(sp)
    lwz     r4, 0x4c(sp)
    clrlslwi  r4, r4, 21, 11
    insrwi  r4, r6, 11, 21
    rlwinm  r4, r4, 0, 10, 7
    rlwimi  r4, r11, 18, 8, 9
    clrlwi  r4, r4, 8
    insrwi  r4, r5, 8, 0
    stw     r4, -0x8000(r9)
    sth     r0, 0x2(r3)
    addi    sp, sp, 0x78
    blr


.globl GXSetIndTexCoordScale
GXSetIndTexCoordScale: # 0x80360c14
    cmpwi   r3, 0x2
    beq-    branch_0x80360d0c
    bge-    branch_0x80360c30
    cmpwi   r3, 0x0
    beq-    branch_0x80360c3c
    bge-    branch_0x80360ca4
    b       branch_0x80360dd8

branch_0x80360c30:
    cmpwi   r3, 0x4
    bge-    branch_0x80360dd8
    b       branch_0x80360d74

branch_0x80360c3c:
    lwz     r6, -0x72f8(r13)
    slwi    r3, r5, 4
    li      r0, 0x61
    addi    r7, r6, 0x128
    lwz     r6, 0x128(r6)
    lis     r5, 0xcc01
    clrrwi  r6, r6, 4
    or      r4, r6, r4
    stw     r4, 0x0(r7)
    lwz     r4, -0x72f8(r13)
    addi    r6, r4, 0x128
    lwz     r4, 0x128(r4)
    rlwinm  r4, r4, 0, 28, 23
    or      r3, r4, r3
    stw     r3, 0x0(r6)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x128
    lwz     r3, 0x128(r3)
    clrlwi  r3, r3, 8
    oris    r3, r3, 0x2500
    stw     r3, 0x0(r4)
    stb     r0, -0x8000(r5)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x128(r3)
    stw     r0, -0x8000(r5)
    b       branch_0x80360dd8

branch_0x80360ca4:
    lwz     r7, -0x72f8(r13)
    slwi    r3, r5, 12
    lwzu    r5, 0x128(r7)
    slwi    r6, r4, 8
    li      r0, 0x61
    rlwinm  r5, r5, 0, 24, 19
    or      r5, r5, r6
    stw     r5, 0x0(r7)
    lis     r4, 0xcc01
    lwz     r5, -0x72f8(r13)
    addi    r6, r5, 0x128
    lwz     r5, 0x128(r5)
    rlwinm  r5, r5, 0, 20, 15
    or      r3, r5, r3
    stw     r3, 0x0(r6)
    lwz     r3, -0x72f8(r13)
    addi    r5, r3, 0x128
    lwz     r3, 0x128(r3)
    clrlwi  r3, r3, 8
    oris    r3, r3, 0x2500
    stw     r3, 0x0(r5)
    stb     r0, -0x8000(r4)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x128(r3)
    stw     r0, -0x8000(r4)
    b       branch_0x80360dd8

branch_0x80360d0c:
    lwz     r6, -0x72f8(r13)
    slwi    r3, r5, 4
    li      r0, 0x61
    addi    r7, r6, 0x12c
    lwz     r6, 0x12c(r6)
    lis     r5, 0xcc01
    clrrwi  r6, r6, 4
    or      r4, r6, r4
    stw     r4, 0x0(r7)
    lwz     r4, -0x72f8(r13)
    addi    r6, r4, 0x12c
    lwz     r4, 0x12c(r4)
    rlwinm  r4, r4, 0, 28, 23
    or      r3, r4, r3
    stw     r3, 0x0(r6)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x12c
    lwz     r3, 0x12c(r3)
    clrlwi  r3, r3, 8
    oris    r3, r3, 0x2600
    stw     r3, 0x0(r4)
    stb     r0, -0x8000(r5)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x12c(r3)
    stw     r0, -0x8000(r5)
    b       branch_0x80360dd8

branch_0x80360d74:
    lwz     r7, -0x72f8(r13)
    slwi    r3, r5, 12
    lwzu    r5, 0x12c(r7)
    slwi    r6, r4, 8
    li      r0, 0x61
    rlwinm  r5, r5, 0, 24, 19
    or      r5, r5, r6
    stw     r5, 0x0(r7)
    lis     r4, 0xcc01
    lwz     r5, -0x72f8(r13)
    addi    r6, r5, 0x12c
    lwz     r5, 0x12c(r5)
    rlwinm  r5, r5, 0, 20, 15
    or      r3, r5, r3
    stw     r3, 0x0(r6)
    lwz     r3, -0x72f8(r13)
    addi    r5, r3, 0x12c
    lwz     r3, 0x12c(r3)
    clrlwi  r3, r3, 8
    oris    r3, r3, 0x2600
    stw     r3, 0x0(r5)
    stb     r0, -0x8000(r4)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x12c(r3)
    stw     r0, -0x8000(r4)
branch_0x80360dd8:
    lwz     r3, -0x72f8(r13)
    li      r0, 0x0
    sth     r0, 0x2(r3)
    blr


.globl GXSetIndTexOrder
GXSetIndTexOrder: # 0x80360de8
    cmpwi   r3, 0x2
    beq-    branch_0x80360e80
    bge-    branch_0x80360e04
    cmpwi   r3, 0x0
    beq-    branch_0x80360e10
    bge-    branch_0x80360e48
    b       branch_0x80360eec

branch_0x80360e04:
    cmpwi   r3, 0x4
    bge-    branch_0x80360eec
    b       branch_0x80360eb8

branch_0x80360e10:
    lwz     r3, -0x72f8(r13)
    slwi    r0, r4, 3
    addi    r4, r3, 0x120
    lwz     r3, 0x120(r3)
    clrrwi  r3, r3, 3
    or      r3, r3, r5
    stw     r3, 0x0(r4)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x120
    lwz     r3, 0x120(r3)
    rlwinm  r3, r3, 0, 29, 25
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    b       branch_0x80360eec

branch_0x80360e48:
    lwz     r6, -0x72f8(r13)
    slwi    r0, r4, 9
    slwi    r3, r5, 6
    lwz     r4, 0x120(r6)
    rlwinm  r4, r4, 0, 26, 22
    or      r3, r4, r3
    stw     r3, 0x120(r6)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x120
    lwz     r3, 0x120(r3)
    rlwinm  r3, r3, 0, 23, 19
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    b       branch_0x80360eec

branch_0x80360e80:
    lwz     r6, -0x72f8(r13)
    slwi    r0, r4, 15
    slwi    r3, r5, 12
    lwz     r4, 0x120(r6)
    rlwinm  r4, r4, 0, 20, 16
    or      r3, r4, r3
    stw     r3, 0x120(r6)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x120
    lwz     r3, 0x120(r3)
    rlwinm  r3, r3, 0, 17, 13
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    b       branch_0x80360eec

branch_0x80360eb8:
    lwz     r6, -0x72f8(r13)
    slwi    r0, r4, 21
    slwi    r3, r5, 18
    lwz     r4, 0x120(r6)
    rlwinm  r4, r4, 0, 14, 10
    or      r3, r4, r3
    stw     r3, 0x120(r6)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x120
    lwz     r3, 0x120(r3)
    rlwinm  r3, r3, 0, 11, 7
    or      r0, r3, r0
    stw     r0, 0x0(r4)
branch_0x80360eec:
    li      r0, 0x61
    lwz     r4, -0x72f8(r13)
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x0
    lwz     r3, 0x120(r4)
    stw     r3, -0x8000(r5)
    lwz     r3, 0x4f4(r4)
    ori     r3, r3, 0x3
    stw     r3, 0x4f4(r4)
    lwz     r3, -0x72f8(r13)
    sth     r0, 0x2(r3)
    blr


.globl GXSetNumIndStages
GXSetNumIndStages: # 0x80360f20
    lwz     r4, -0x72f8(r13)
    clrlslwi  r0, r3, 24, 16
    lwzu    r3, 0x204(r4)
    rlwinm  r3, r3, 0, 16, 12
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x6
    stw     r0, 0x4f4(r3)
    blr


.globl GXSetTevDirect
GXSetTevDirect: # 0x80360f4c
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    li      r5, 0x0
    stwu    sp, -0x18(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r0, 0x8(sp)
    li      r8, 0x0
    li      r9, 0x0
    stw     r0, 0xc(sp)
    li      r10, 0x0
    bl      GXSetTevIndirect
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GXSetTevIndWarp
GXSetTevIndWarp: # 0x80360f94
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r6, 24
    stwu    sp, -0x20(sp)
    beq-    branch_0x80360fb0
    li      r6, 0x6
    b       branch_0x80360fb4

branch_0x80360fb0:
    li      r6, 0x0
branch_0x80360fb4:
    clrlwi. r0, r5, 24
    addi    r8, r6, 0x0
    beq-    branch_0x80360fc8
    li      r6, 0x7
    b       branch_0x80360fcc

branch_0x80360fc8:
    li      r6, 0x0
branch_0x80360fcc:
    li      r0, 0x0
    stw     r0, 0x8(sp)
    addi    r9, r8, 0x0
    li      r5, 0x0
    stw     r0, 0xc(sp)
    li      r10, 0x0
    bl      GXSetTevIndirect
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __GXUpdateBPMask
__GXUpdateBPMask: # 0x80360ff8
    lwz     r3, -0x72f8(r13)
    li      r6, 0x0
    li      r4, 0x0
    lwz     r0, 0x204(r3)
    extrwi  r0, r0, 3, 13
    cmplwi  r0, 0x0
    mtctr   r0
    ble-    branch_0x80361080
branch_0x80361018:
    cmpwi   r4, 0x2
    beq-    branch_0x80361058
    bge-    branch_0x80361034
    cmpwi   r4, 0x0
    beq-    branch_0x80361040
    bge-    branch_0x8036104c
    b       branch_0x8036106c

branch_0x80361034:
    cmpwi   r4, 0x4
    bge-    branch_0x8036106c
    b       branch_0x80361064

branch_0x80361040:
    lwz     r0, 0x120(r3)
    clrlwi  r5, r0, 29
    b       branch_0x8036106c

branch_0x8036104c:
    lwz     r0, 0x120(r3)
    extrwi  r5, r0, 3, 23
    b       branch_0x8036106c

branch_0x80361058:
    lwz     r0, 0x120(r3)
    extrwi  r5, r0, 3, 17
    b       branch_0x8036106c

branch_0x80361064:
    lwz     r0, 0x120(r3)
    extrwi  r5, r0, 3, 11
branch_0x8036106c:
    li      r0, 0x1
    slw     r0, r0, r5
    or      r6, r6, r0
    addi    r4, r4, 0x1
    bdnz+      branch_0x80361018
branch_0x80361080:
    addi    r4, r3, 0x124
    lwz     r3, 0x124(r3)
    clrlwi  r0, r3, 24
    cmplw   r0, r6
    beqlr-    

    clrrwi  r0, r3, 8
    or      r0, r0, r6
    stw     r0, 0x0(r4)
    li      r0, 0x61
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x0
    lwz     r4, -0x72f8(r13)
    lwz     r3, 0x124(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl __GXFlushTextureState
__GXFlushTextureState: # 0x803610c4
    li      r0, 0x61
    lwz     r4, -0x72f8(r13)
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x0
    lwz     r3, 0x124(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr

