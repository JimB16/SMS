
.globl GXSetTevOp
GXSetTevOp: # 0x803610e8
    mflr    r0
    li      r6, 0xa
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x5
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80361114
    li      r6, 0x0
    li      r31, 0x0
branch_0x80361114:
    cmpwi   r4, 0x2
    beq-    branch_0x803611a4
    bge-    branch_0x80361130
    cmpwi   r4, 0x0
    beq-    branch_0x80361140
    bge-    branch_0x80361170
    b       branch_0x8036123c

branch_0x80361130:
    cmpwi   r4, 0x4
    beq-    branch_0x8036120c
    bge-    branch_0x8036123c
    b       branch_0x803611d8

branch_0x80361140:
    addi    r3, r30, 0x0
    li      r4, 0xf
    li      r5, 0x8
    li      r7, 0xf
    bl      GXSetTevColorIn
    addi    r3, r30, 0x0
    addi    r6, r31, 0x0
    li      r4, 0x7
    li      r5, 0x4
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    b       branch_0x8036123c

branch_0x80361170:
    addi    r3, r30, 0x0
    addi    r4, r6, 0x0
    li      r5, 0x8
    li      r6, 0x9
    li      r7, 0xf
    bl      GXSetTevColorIn
    addi    r3, r30, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    bl      GXSetTevAlphaIn
    b       branch_0x8036123c

branch_0x803611a4:
    addi    r3, r30, 0x0
    addi    r4, r6, 0x0
    li      r5, 0xc
    li      r6, 0x8
    li      r7, 0xf
    bl      GXSetTevColorIn
    addi    r3, r30, 0x0
    addi    r6, r31, 0x0
    li      r4, 0x7
    li      r5, 0x4
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    b       branch_0x8036123c

branch_0x803611d8:
    addi    r3, r30, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0x8
    bl      GXSetTevColorIn
    addi    r3, r30, 0x0
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x4
    bl      GXSetTevAlphaIn
    b       branch_0x8036123c

branch_0x8036120c:
    addi    r3, r30, 0x0
    addi    r7, r6, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    bl      GXSetTevColorIn
    addi    r3, r30, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    bl      GXSetTevAlphaIn
branch_0x8036123c:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GXSetTevColorIn
GXSetTevColorIn: # 0x8036128c
    slwi    r3, r3, 2
    lwz     r0, -0x72f8(r13)
    addi    r9, r3, 0x130
    add     r9, r0, r9
    lwz     r3, 0x0(r9)
    slwi    r0, r4, 12
    slwi    r8, r5, 8
    rlwinm  r3, r3, 0, 20, 15
    or      r0, r3, r0
    stw     r0, 0x0(r9)
    slwi    r4, r6, 4
    li      r3, 0x61
    lwz     r6, 0x0(r9)
    lis     r5, 0xcc01
    li      r0, 0x0
    rlwinm  r6, r6, 0, 24, 19
    or      r6, r6, r8
    stw     r6, 0x0(r9)
    lwz     r6, 0x0(r9)
    rlwinm  r6, r6, 0, 28, 23
    or      r4, r6, r4
    stw     r4, 0x0(r9)
    lwz     r4, 0x0(r9)
    clrrwi  r4, r4, 4
    or      r4, r4, r7
    stw     r4, 0x0(r9)
    stb     r3, -0x8000(r5)
    lwz     r3, -0x72f8(r13)
    lwz     r4, 0x0(r9)
    stw     r4, -0x8000(r5)
    sth     r0, 0x2(r3)
    blr


.globl GXSetTevAlphaIn
GXSetTevAlphaIn: # 0x8036130c
    slwi    r3, r3, 2
    lwz     r0, -0x72f8(r13)
    addi    r9, r3, 0x170
    add     r9, r0, r9
    lwz     r8, 0x0(r9)
    slwi    r3, r4, 13
    slwi    r0, r5, 10
    rlwinm  r4, r8, 0, 19, 15
    or      r3, r4, r3
    stw     r3, 0x0(r9)
    slwi    r6, r6, 7
    slwi    r4, r7, 4
    lwz     r7, 0x0(r9)
    li      r3, 0x61
    lis     r5, 0xcc01
    rlwinm  r7, r7, 0, 22, 18
    or      r0, r7, r0
    stw     r0, 0x0(r9)
    li      r0, 0x0
    lwz     r7, 0x0(r9)
    rlwinm  r7, r7, 0, 25, 21
    or      r6, r7, r6
    stw     r6, 0x0(r9)
    lwz     r6, 0x0(r9)
    rlwinm  r6, r6, 0, 28, 24
    or      r4, r6, r4
    stw     r4, 0x0(r9)
    stb     r3, -0x8000(r5)
    lwz     r3, -0x72f8(r13)
    lwz     r4, 0x0(r9)
    stw     r4, -0x8000(r5)
    sth     r0, 0x2(r3)
    blr


.globl GXSetTevColorOp
GXSetTevColorOp: # 0x80361390
    slwi    r3, r3, 2
    lwz     r0, -0x72f8(r13)
    addi    r3, r3, 0x130
    add     r3, r0, r3
    lwz     r0, 0x0(r3)
    cmpwi   r4, 0x1
    rlwinm  r0, r0, 0, 14, 12
    insrwi  r0, r4, 1, 13
    stw     r0, 0x0(r3)
    bgt-    branch_0x803613e4
    lwz     r9, 0x0(r3)
    slwi    r4, r6, 20
    slwi    r0, r5, 16
    rlwinm  r5, r9, 0, 12, 9
    or      r4, r5, r4
    stw     r4, 0x0(r3)
    lwz     r4, 0x0(r3)
    rlwinm  r4, r4, 0, 16, 13
    or      r0, r4, r0
    stw     r0, 0x0(r3)
    b       branch_0x80361404

branch_0x803613e4:
    lwz     r0, 0x0(r3)
    rlwinm  r0, r0, 0, 12, 9
    rlwimi  r0, r4, 19, 10, 11
    stw     r0, 0x0(r3)
    lwz     r0, 0x0(r3)
    rlwinm  r0, r0, 0, 16, 13
    oris    r0, r0, 0x3
    stw     r0, 0x0(r3)
branch_0x80361404:
    lwz     r4, 0x0(r3)
    clrlslwi  r0, r7, 24, 19
    slwi    r6, r8, 22
    rlwinm  r4, r4, 0, 13, 11
    or      r0, r4, r0
    stw     r0, 0x0(r3)
    li      r4, 0x61
    lis     r5, 0xcc01
    lwz     r7, 0x0(r3)
    li      r0, 0x0
    rlwinm  r7, r7, 0, 10, 7
    or      r6, r7, r6
    stw     r6, 0x0(r3)
    stb     r4, -0x8000(r5)
    lwz     r4, -0x72f8(r13)
    lwz     r3, 0x0(r3)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetTevAlphaOp
GXSetTevAlphaOp: # 0x80361450
    slwi    r3, r3, 2
    lwz     r0, -0x72f8(r13)
    addi    r3, r3, 0x170
    add     r3, r0, r3
    lwz     r0, 0x0(r3)
    cmpwi   r4, 0x1
    rlwinm  r0, r0, 0, 14, 12
    insrwi  r0, r4, 1, 13
    stw     r0, 0x0(r3)
    bgt-    branch_0x803614a4
    lwz     r9, 0x0(r3)
    slwi    r4, r6, 20
    slwi    r0, r5, 16
    rlwinm  r5, r9, 0, 12, 9
    or      r4, r5, r4
    stw     r4, 0x0(r3)
    lwz     r4, 0x0(r3)
    rlwinm  r4, r4, 0, 16, 13
    or      r0, r4, r0
    stw     r0, 0x0(r3)
    b       branch_0x803614c4

branch_0x803614a4:
    lwz     r0, 0x0(r3)
    rlwinm  r0, r0, 0, 12, 9
    rlwimi  r0, r4, 19, 10, 11
    stw     r0, 0x0(r3)
    lwz     r0, 0x0(r3)
    rlwinm  r0, r0, 0, 16, 13
    oris    r0, r0, 0x3
    stw     r0, 0x0(r3)
branch_0x803614c4:
    lwz     r4, 0x0(r3)
    clrlslwi  r0, r7, 24, 19
    slwi    r6, r8, 22
    rlwinm  r4, r4, 0, 13, 11
    or      r0, r4, r0
    stw     r0, 0x0(r3)
    li      r4, 0x61
    lis     r5, 0xcc01
    lwz     r7, 0x0(r3)
    li      r0, 0x0
    rlwinm  r7, r7, 0, 10, 7
    or      r6, r7, r6
    stw     r6, 0x0(r3)
    stb     r4, -0x8000(r5)
    lwz     r4, -0x72f8(r13)
    lwz     r3, 0x0(r3)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetTevColor
GXSetTevColor: # 0x80361510
    lbz     r0, 0x3(r4)
    slwi    r8, r3, 1
    lbz     r5, 0x0(r4)
    addi    r7, r8, 0xe0
    slwi    r9, r0, 12
    insrwi  r9, r5, 8, 24
    lbz     r10, 0x2(r4)
    lbz     r6, 0x1(r4)
    slwi    r7, r7, 24
    li      r5, 0x61
    lwz     r3, -0x72f8(r13)
    lis     r4, 0xcc01
    stb     r5, -0x8000(r4)
    insrwi  r7, r9, 20, 12
    addi    r0, r8, 0xe1
    stw     r7, -0x8000(r4)
    slwi    r7, r6, 12
    slwi    r6, r0, 24
    insrwi  r7, r10, 8, 24
    stb     r5, -0x8000(r4)
    insrwi  r6, r7, 20, 12
    stw     r6, -0x8000(r4)
    li      r0, 0x0
    stb     r5, -0x8000(r4)
    stw     r6, -0x8000(r4)
    stb     r5, -0x8000(r4)
    stw     r6, -0x8000(r4)
    sth     r0, 0x2(r3)
    blr


.globl GXSetTevColorS10
GXSetTevColorS10: # 0x80361584
    lha     r0, 0x6(r4)
    slwi    r9, r3, 1
    lha     r5, 0x0(r4)
    addi    r8, r9, 0xe0
    clrlslwi  r10, r0, 21, 12
    insrwi  r10, r5, 11, 21
    lha     r7, 0x4(r4)
    lha     r6, 0x2(r4)
    slwi    r8, r8, 24
    li      r5, 0x61
    lwz     r3, -0x72f8(r13)
    lis     r4, 0xcc01
    stb     r5, -0x8000(r4)
    insrwi  r8, r10, 23, 9
    addi    r0, r9, 0xe1
    stw     r8, -0x8000(r4)
    clrlslwi  r8, r6, 21, 12
    slwi    r6, r0, 24
    insrwi  r8, r7, 11, 21
    stb     r5, -0x8000(r4)
    insrwi  r6, r8, 23, 9
    stw     r6, -0x8000(r4)
    li      r0, 0x0
    stb     r5, -0x8000(r4)
    stw     r6, -0x8000(r4)
    stb     r5, -0x8000(r4)
    stw     r6, -0x8000(r4)
    sth     r0, 0x2(r3)
    blr


.globl GXSetTevKColor
GXSetTevKColor: # 0x803615f8
    lbz     r0, 0x3(r4)
    slwi    r5, r3, 1
    lbz     r6, 0x0(r4)
    addi    r7, r5, 0xe0
    slwi    r0, r0, 12
    insrwi  r0, r6, 8, 24
    lbz     r6, 0x1(r4)
    lbz     r9, 0x2(r4)
    rlwinm  r0, r0, 0, 12, 7
    oris    r8, r0, 0x80
    lwz     r3, -0x72f8(r13)
    slwi    r7, r7, 24
    li      r0, 0x61
    lis     r4, 0xcc01
    slwi    r6, r6, 12
    stb     r0, -0x8000(r4)
    insrwi  r7, r8, 24, 8
    stw     r7, -0x8000(r4)
    insrwi  r6, r9, 8, 24
    addi    r5, r5, 0xe1
    stb     r0, -0x8000(r4)
    rlwinm  r0, r6, 0, 12, 7
    oris    r6, r0, 0x80
    slwi    r0, r5, 24
    insrwi  r0, r6, 24, 8
    stw     r0, -0x8000(r4)
    li      r0, 0x0
    sth     r0, 0x2(r3)
    blr


.globl GXSetTevKColorSel
GXSetTevKColorSel: # 0x8036166c
    srawi   r5, r3, 1
    lwz     r6, -0x72f8(r13)
    clrlwi. r0, r3, 31
    slwi    r3, r5, 2
    addi    r7, r3, 0x1b0
    add     r7, r6, r7
    beq-    branch_0x803616a0
    lwz     r3, 0x0(r7)
    slwi    r0, r4, 14
    rlwinm  r3, r3, 0, 18, 12
    or      r0, r3, r0
    stw     r0, 0x0(r7)
    b       branch_0x803616b4

branch_0x803616a0:
    lwz     r3, 0x0(r7)
    slwi    r0, r4, 4
    rlwinm  r3, r3, 0, 28, 22
    or      r0, r3, r0
    stw     r0, 0x0(r7)
branch_0x803616b4:
    li      r0, 0x61
    lwz     r3, -0x72f8(r13)
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x0
    lwz     r4, 0x0(r7)
    stw     r4, -0x8000(r5)
    sth     r0, 0x2(r3)
    blr


.globl GXSetTevKAlphaSel
GXSetTevKAlphaSel: # 0x803616d8
    srawi   r5, r3, 1
    lwz     r6, -0x72f8(r13)
    clrlwi. r0, r3, 31
    slwi    r3, r5, 2
    addi    r7, r3, 0x1b0
    add     r7, r6, r7
    beq-    branch_0x8036170c
    lwz     r3, 0x0(r7)
    slwi    r0, r4, 19
    rlwinm  r3, r3, 0, 13, 7
    or      r0, r3, r0
    stw     r0, 0x0(r7)
    b       branch_0x80361720

branch_0x8036170c:
    lwz     r3, 0x0(r7)
    slwi    r0, r4, 9
    rlwinm  r3, r3, 0, 23, 17
    or      r0, r3, r0
    stw     r0, 0x0(r7)
branch_0x80361720:
    li      r0, 0x61
    lwz     r3, -0x72f8(r13)
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x0
    lwz     r4, 0x0(r7)
    stw     r4, -0x8000(r5)
    sth     r0, 0x2(r3)
    blr


.globl GXSetTevSwapMode
GXSetTevSwapMode: # 0x80361744
    slwi    r3, r3, 2
    lwz     r0, -0x72f8(r13)
    addi    r7, r3, 0x170
    add     r7, r0, r7
    lwz     r0, 0x0(r7)
    slwi    r6, r5, 2
    li      r3, 0x61
    clrrwi  r0, r0, 2
    or      r0, r0, r4
    stw     r0, 0x0(r7)
    lis     r5, 0xcc01
    li      r0, 0x0
    lwz     r4, 0x0(r7)
    rlwinm  r4, r4, 0, 30, 27
    or      r4, r4, r6
    stw     r4, 0x0(r7)
    stb     r3, -0x8000(r5)
    lwz     r3, -0x72f8(r13)
    lwz     r4, 0x0(r7)
    stw     r4, -0x8000(r5)
    sth     r0, 0x2(r3)
    blr


.globl GXSetTevSwapModeTable
GXSetTevSwapModeTable: # 0x8036179c
    slwi    r9, r3, 1
    lwz     r0, -0x72f8(r13)
    slwi    r3, r3, 3
    addi    r11, r3, 0x1b0
    add     r11, r0, r11
    lwz     r8, 0x0(r11)
    addi    r0, r9, 0x1
    slwi    r3, r0, 2
    clrrwi  r0, r8, 2
    or      r0, r0, r4
    stw     r0, 0x0(r11)
    slwi    r0, r5, 2
    li      r9, 0x61
    lwz     r4, 0x0(r11)
    lis     r8, 0xcc01
    addi    r10, r3, 0x1b0
    rlwinm  r3, r4, 0, 30, 27
    or      r0, r3, r0
    stw     r0, 0x0(r11)
    slwi    r3, r7, 2
    li      r0, 0x0
    stb     r9, -0x8000(r8)
    lwz     r4, -0x72f8(r13)
    lwz     r5, 0x0(r11)
    add     r10, r4, r10
    stw     r5, -0x8000(r8)
    lwz     r4, 0x0(r10)
    clrrwi  r4, r4, 2
    or      r4, r4, r6
    stw     r4, 0x0(r10)
    lwz     r4, 0x0(r10)
    rlwinm  r4, r4, 0, 30, 27
    or      r3, r4, r3
    stw     r3, 0x0(r10)
    stb     r9, -0x8000(r8)
    lwz     r3, -0x72f8(r13)
    lwz     r4, 0x0(r10)
    stw     r4, -0x8000(r8)
    sth     r0, 0x2(r3)
    blr


.globl GXSetAlphaCompare
GXSetAlphaCompare: # 0x8036183c
    clrlslwi  r7, r7, 24, 8
    lwz     r8, -0x72f8(r13)
    insrwi  r7, r4, 8, 24
    slwi    r0, r3, 16
    insrwi  r0, r7, 16, 16
    rlwinm  r3, r0, 0, 13, 9
    slwi    r0, r6, 19
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 10, 7
    slwi    r0, r5, 22
    or      r0, r3, r0
    clrlwi  r4, r0, 8
    li      r0, 0x61
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    oris    r4, r4, 0xf300
    li      r0, 0x0
    stw     r4, -0x8000(r3)
    sth     r0, 0x2(r8)
    blr


.globl GXSetZTexture
GXSetZTexture: # 0x8036188c
    cmpwi   r4, 0x13
    clrlwi  r0, r5, 8
    oris    r7, r0, 0xf400
    beq-    branch_0x803618c0
    bge-    branch_0x803618ac
    cmpwi   r4, 0x11
    beq-    branch_0x803618b8
    b       branch_0x803618d0

branch_0x803618ac:
    cmpwi   r4, 0x16
    beq-    branch_0x803618c8
    b       branch_0x803618d0

branch_0x803618b8:
    li      r6, 0x0
    b       branch_0x803618d4

branch_0x803618c0:
    li      r6, 0x1
    b       branch_0x803618d4

branch_0x803618c8:
    li      r6, 0x2
    b       branch_0x803618d4

branch_0x803618d0:
    li      r6, 0x2
branch_0x803618d4:
    li      r0, 0x61
    lwz     r4, -0x72f8(r13)
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    rlwinm  r6, r6, 0, 30, 27
    slwi    r3, r3, 2
    stw     r7, -0x8000(r5)
    or      r3, r6, r3
    clrlwi  r3, r3, 8
    stb     r0, -0x8000(r5)
    oris    r3, r3, 0xf500
    li      r0, 0x0
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetTevOrder
GXSetTevOrder: # 0x80361910
    srawi   r7, r3, 1
    lwz     r9, -0x72f8(r13)
    rlwinm  r10, r5, 0, 24, 22
    addze   r7, r7
    slwi    r0, r3, 2
    add     r8, r9, r0
    slwi    r7, r7, 2
    stw     r5, 0x49c(r8)
    addi    r7, r7, 0x100
    cmplwi  r10, 0x8
    addi    r0, r10, 0x0
    add     r7, r9, r7
    blt-    branch_0x8036194c
    li      r9, 0x0
    b       branch_0x80361950

branch_0x8036194c:
    mr      r9, r0
branch_0x80361950:
    cmpwi   r4, 0x8
    blt-    branch_0x8036197c
    lwz     r4, -0x72f8(r13)
    li      r0, 0x1
    slw     r0, r0, r3
    lwz     r8, 0x4e0(r4)
    addi    r10, r4, 0x4e0
    li      r4, 0x0
    andc    r0, r8, r0
    stw     r0, 0x0(r10)
    b       branch_0x80361998

branch_0x8036197c:
    lwz     r8, -0x72f8(r13)
    li      r0, 0x1
    slw     r0, r0, r3
    addi    r10, r8, 0x4e0
    lwz     r8, 0x4e0(r8)
    or      r0, r8, r0
    stw     r0, 0x0(r10)
branch_0x80361998:
    clrlwi. r0, r3, 31
    beq-    branch_0x80361a30
    lwz     r8, 0x0(r7)
    slwi    r3, r9, 12
    slwi    r0, r4, 15
    rlwinm  r4, r8, 0, 20, 16
    or      r3, r4, r3
    stw     r3, 0x0(r7)
    cmpwi   r6, 0xff
    lwz     r3, 0x0(r7)
    rlwinm  r3, r3, 0, 17, 13
    or      r0, r3, r0
    stw     r0, 0x0(r7)
    bne-    branch_0x803619d8
    li      r0, 0x7
    b       branch_0x803619ec

branch_0x803619d8:
    lis     r3, 0x803f
    slwi    r4, r6, 2
    subi    r0, r3, 0x6c70
    add     r3, r0, r4
    lwz     r0, 0x0(r3)
branch_0x803619ec:
    lwz     r3, 0x0(r7)
    slwi    r0, r0, 19
    cmpwi   r5, 0xff
    rlwinm  r3, r3, 0, 13, 9
    or      r0, r3, r0
    stw     r0, 0x0(r7)
    li      r4, 0x0
    beq-    branch_0x80361a18
    rlwinm. r0, r5, 0, 23, 23
    bne-    branch_0x80361a18
    li      r4, 0x1
branch_0x80361a18:
    lwz     r3, 0x0(r7)
    slwi    r0, r4, 18
    rlwinm  r3, r3, 0, 14, 12
    or      r0, r3, r0
    stw     r0, 0x0(r7)
    b       branch_0x80361ab8

branch_0x80361a30:
    lwz     r3, 0x0(r7)
    slwi    r0, r4, 3
    cmpwi   r6, 0xff
    clrrwi  r3, r3, 3
    or      r3, r3, r9
    stw     r3, 0x0(r7)
    lwz     r3, 0x0(r7)
    rlwinm  r3, r3, 0, 29, 25
    or      r0, r3, r0
    stw     r0, 0x0(r7)
    bne-    branch_0x80361a64
    li      r0, 0x7
    b       branch_0x80361a78

branch_0x80361a64:
    lis     r3, 0x803f
    slwi    r4, r6, 2
    subi    r0, r3, 0x6c70
    add     r3, r0, r4
    lwz     r0, 0x0(r3)
branch_0x80361a78:
    lwz     r3, 0x0(r7)
    slwi    r0, r0, 7
    cmpwi   r5, 0xff
    rlwinm  r3, r3, 0, 25, 21
    or      r0, r3, r0
    stw     r0, 0x0(r7)
    li      r4, 0x0
    beq-    branch_0x80361aa4
    rlwinm. r0, r5, 0, 23, 23
    bne-    branch_0x80361aa4
    li      r4, 0x1
branch_0x80361aa4:
    lwz     r3, 0x0(r7)
    slwi    r0, r4, 6
    rlwinm  r3, r3, 0, 26, 24
    or      r0, r3, r0
    stw     r0, 0x0(r7)
branch_0x80361ab8:
    li      r0, 0x61
    lwz     r3, -0x72f8(r13)
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x0
    lwz     r4, 0x0(r7)
    stw     r4, -0x8000(r5)
    sth     r0, 0x2(r3)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x4f4(r3)
    blr


.globl GXSetNumTevStages
GXSetNumTevStages: # 0x80361aec
    clrlwi  r3, r3, 24
    lwz     r4, -0x72f8(r13)
    subi    r0, r3, 0x1
    lwzu    r3, 0x204(r4)
    slwi    r0, r0, 10
    rlwinm  r3, r3, 0, 22, 17
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x4
    stw     r0, 0x4f4(r3)
    blr

