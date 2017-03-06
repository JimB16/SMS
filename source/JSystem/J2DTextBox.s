
.globl __ct__10J2DTextBoxFPC7ResFONTPCc
__ct__10J2DTextBoxFPC7ResFONTPCc: # 0x802d02f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__7J2DPaneFv
    lis     r3, 0x803e
    lwz     r31, 0x8(sp)
    addi    r0, r3, 0x720
    stw     r0, 0x0(r31)
    li      r8, 0x0
    li      r0, -0x1
    stw     r8, 0xec(r31)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    stw     r0, 0xf0(r31)
    addi    r5, r30, 0x0
    li      r6, 0x2
    stw     r0, 0xf4(r31)
    li      r7, 0x2
    stw     r8, 0x100(r31)
    stw     r0, 0x11c(r31)
    stw     r0, 0x120(r31)
    bl      initiate__10J2DTextBoxFPC7ResFONTPCc18J2DTextBoxHBinding18J2DTextBoxVBinding
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__10J2DTextBoxFP7J2DPaneP20JSURandomInputStreamb
__ct__10J2DTextBoxFP7J2DPaneP20JSURandomInputStreamb: # 0x802d0388
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x208(sp)
    stw     r31, 0x204(sp)
    stw     r30, 0x200(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1fc(sp)
    stw     r28, 0x1f8(sp)
    addi    r28, r6, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamb
    lis     r3, 0x803e
    lwz     r5, 0x8(sp)
    addi    r0, r3, 0x720
    stw     r0, 0x0(r5)
    li      r4, 0x0
    clrlwi. r0, r28, 24
    stw     r4, 0xec(r5)
    li      r3, -0x1
    li      r0, 0x13
    stw     r3, 0xf0(r5)
    stw     r3, 0xf4(r5)
    stw     r4, 0x100(r5)
    stw     r3, 0x11c(r5)
    stw     r3, 0x120(r5)
    stb     r4, 0xf0(sp)
    sth     r0, 0x4(r5)
    beq-    branch_0x802d061c
    addi    r3, r30, 0x0
    addi    r4, sp, 0xd8
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lis     r5, 0x464f
    lbz     r31, 0xd8(sp)
    addi    r4, r30, 0x0
    addi    r3, sp, 0xf0
    addi    r5, r5, 0x4e54
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r28, r3
    beq-    branch_0x802d0458
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802d0450
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      __ct__10JUTResFontFPC7ResFONTP10JKRArchive
branch_0x802d0450:
    lwz     r3, 0x8(sp)
    stw     r29, 0xec(r3)
branch_0x802d0458:
    addi    r3, r30, 0x0
    addi    r4, sp, 0xa0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0xa0(sp)
    mr      r3, r30
    lwz     r29, 0x8(sp)
    addi    r4, sp, 0x9c
    li      r5, 0x4
    stw     r0, 0xf0(r29)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x9c(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xcc
    stw     r0, 0xf4(r29)
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r5, 0xcc(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xca
    extrwi  r0, r5, 2, 28
    stw     r0, 0xf8(r29)
    clrlwi  r0, r5, 30
    li      r5, 0x2
    stw     r0, 0xfc(r29)
    bl      read__14JSUInputStreamFPvl
    lha     r0, 0xca(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xc8
    stw     r0, 0x10c(r29)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r0, 0xc8(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xc6
    stw     r0, 0x110(r29)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0xc6(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xc4
    stw     r0, 0x114(r29)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0xc4(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xc2
    stw     r0, 0x118(r29)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r28, 0xc2(sp)
    addi    r3, r28, 0x1
    bl      __nwa__FUl
    stw     r3, 0x100(r29)
    mr      r3, r30
    mr      r5, r28
    lwz     r4, 0x100(r29)
    bl      read__14JSUInputStreamFPvl
    subi    r31, r31, 0xa
    lwz     r3, 0x100(r29)
    li      r4, 0x0
    clrlwi. r0, r31, 24
    stbx    r4, r3, r28
    beq-    branch_0x802d0590
    addi    r3, r30, 0x0
    addi    r4, sp, 0xc0
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0xc0(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802d058c
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x1
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x802d058c:
    subi    r31, r31, 0x1
branch_0x802d0590:
    li      r0, 0x0
    lwz     r29, 0x8(sp)
    stw     r0, 0xe8(sp)
    li      r3, -0x1
    clrlwi. r0, r31, 24
    lwz     r4, 0xe8(sp)
    stw     r4, 0x120(r29)
    stw     r3, 0xe4(sp)
    lwz     r0, 0xe4(sp)
    stw     r0, 0x11c(r29)
    beq-    branch_0x802d05d8
    addi    r3, r30, 0x0
    addi    r4, sp, 0x98
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x98(sp)
    subi    r31, r31, 0x1
    stw     r0, 0x120(r29)
branch_0x802d05d8:
    clrlwi. r0, r31, 24
    beq-    branch_0x802d05fc
    addi    r3, r30, 0x0
    addi    r4, sp, 0x94
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x94(sp)
    lwz     r3, 0x8(sp)
    stw     r0, 0x11c(r3)
branch_0x802d05fc:
    lwz     r5, 0x8(sp)
    li      r0, 0x0
    addi    r3, r30, 0x0
    stw     r0, 0x104(r5)
    li      r4, 0x4
    stw     r0, 0x108(r5)
    bl      align__20JSURandomInputStreamFl
    b       branch_0x802d081c

branch_0x802d061c:
    lis     r5, 0x464f
    addi    r4, r30, 0x0
    addi    r3, sp, 0xf0
    addi    r5, r5, 0x4e54
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r28, r3
    beq-    branch_0x802d0664
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802d065c
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      __ct__10JUTResFontFPC7ResFONTP10JKRArchive
branch_0x802d065c:
    lwz     r3, 0x8(sp)
    stw     r29, 0xec(r3)
branch_0x802d0664:
    addi    r3, r30, 0x0
    addi    r4, sp, 0x90
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x90(sp)
    mr      r3, r30
    lwz     r31, 0x8(sp)
    addi    r4, sp, 0x8c
    li      r5, 0x4
    stw     r0, 0xf0(r31)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x8c(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xaf
    stw     r0, 0xf4(r31)
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r28, 0xaf(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xae
    clrlwi  r0, r28, 25
    stw     r0, 0xf8(r31)
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0xae(sp)
    stw     r0, 0xfc(r31)
    lwz     r0, 0xec(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802d06f0
    li      r0, 0x0
    stw     r0, 0x10c(r31)
    stw     r0, 0x110(r31)
    stw     r0, 0x114(r31)
    stw     r0, 0x118(r31)
    b       branch_0x802d07ac

branch_0x802d06f0:
    rlwinm. r0, r28, 0, 24, 24
    beq-    branch_0x802d075c
    addi    r3, r30, 0x0
    addi    r4, sp, 0xac
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r0, 0xac(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xaa
    stw     r0, 0x10c(r31)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r0, 0xaa(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xa8
    stw     r0, 0x110(r31)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0xa8(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xa6
    stw     r0, 0x114(r31)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0xa6(sp)
    stw     r0, 0x118(r31)
    b       branch_0x802d07ac

branch_0x802d075c:
    li      r0, 0x0
    stw     r0, 0x10c(r31)
    lwz     r3, 0xec(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    stw     r3, 0x110(r31)
    lwz     r3, 0xec(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    stw     r3, 0x114(r31)
    lwz     r3, 0xec(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x118(r31)
branch_0x802d07ac:
    addi    r3, r30, 0x0
    addi    r4, sp, 0xa4
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r28, 0xa4(sp)
    addi    r3, r28, 0x1
    bl      __nwa__FUl
    lwz     r31, 0x8(sp)
    mr      r5, r28
    stw     r3, 0x100(r31)
    mr      r3, r30
    lwz     r4, 0x100(r31)
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x100(r31)
    li      r6, 0x0
    li      r0, -0x1
    stbx    r6, r3, r28
    addi    r3, r30, 0x0
    li      r4, 0x4
    stw     r6, 0xe0(sp)
    lwz     r5, 0xe0(sp)
    stw     r5, 0x120(r31)
    stw     r0, 0xdc(sp)
    lwz     r0, 0xdc(sp)
    stw     r0, 0x11c(r31)
    stw     r6, 0x104(r31)
    stw     r6, 0x108(r31)
    bl      align__20JSURandomInputStreamFl
branch_0x802d081c:
    lwz     r3, 0x8(sp)
    li      r0, 0x1
    stb     r0, 0x124(r3)
    lwz     r0, 0x20c(sp)
    lwz     r31, 0x204(sp)
    lwz     r30, 0x200(sp)
    mtlr    r0
    lwz     r29, 0x1fc(sp)
    lwz     r28, 0x1f8(sp)
    addi    sp, sp, 0x208
    blr


.globl __ct__10J2DTextBoxFUlRC7JUTRectPC7ResFONTPCc18J2DTextBoxHBinding18J2DTextBoxVBinding
__ct__10J2DTextBoxFUlRC7JUTRectPC7ResFONTPCc18J2DTextBoxHBinding18J2DTextBoxVBinding: # 0x802d0848
    mflr    r0
    stw     r0, 0x4(sp)
    mr      r0, r5
    addi    r5, r4, 0x0
    stwu    sp, -0x40(sp)
    li      r4, 0x13
    stmw    r27, 0x2c(sp)
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    mr      r6, r0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__7J2DPaneFUsUlRC7JUTRect
    lis     r3, 0x803e
    lwz     r31, 0x8(sp)
    addi    r0, r3, 0x720
    stw     r0, 0x0(r31)
    li      r8, 0x0
    li      r0, -0x1
    stw     r8, 0xec(r31)
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    stw     r0, 0xf0(r31)
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    stw     r0, 0xf4(r31)
    addi    r7, r30, 0x0
    stw     r8, 0x100(r31)
    stw     r0, 0x11c(r31)
    stw     r0, 0x120(r31)
    bl      initiate__10J2DTextBoxFPC7ResFONTPCc18J2DTextBoxHBinding18J2DTextBoxVBinding
    mr      r3, r31
    lmw     r27, 0x2c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl initiate__10J2DTextBoxFPC7ResFONTPCc18J2DTextBoxHBinding18J2DTextBoxVBinding
initiate__10J2DTextBoxFPC7ResFONTPCc18J2DTextBoxHBinding18J2DTextBoxVBinding: # 0x802d08e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r26, 0x30(sp)
    mr.     r31, r4
    addi    r27, r3, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    beq-    branch_0x802d0930
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802d092c
    addi    r3, r26, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      __ct__10JUTResFontFPC7ResFONTP10JKRArchive
branch_0x802d092c:
    stw     r26, 0xec(r27)
branch_0x802d0930:
    li      r4, -0x1
    stw     r4, 0xf0(r27)
    li      r31, 0x0
    addi    r3, r28, 0x0
    stw     r4, 0xf4(r27)
    stw     r31, 0x28(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x120(r27)
    stw     r4, 0x24(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0x11c(r27)
    stw     r29, 0xf8(r27)
    stw     r30, 0xfc(r27)
    bl      strlen
    addi    r3, r3, 0x1
    bl      __nwa__FUl
    stw     r3, 0x100(r27)
    mr      r4, r28
    lwz     r3, 0x100(r27)
    bl      strcpy
    stw     r31, 0x104(r27)
    stw     r31, 0x108(r27)
    stw     r31, 0x10c(r27)
    lwz     r3, 0xec(r27)
    cmplwi  r3, 0x0
    bne-    branch_0x802d09a8
    stw     r31, 0x110(r27)
    stw     r31, 0x114(r27)
    stw     r31, 0x118(r27)
    b       branch_0x802d09ec

branch_0x802d09a8:
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    stw     r3, 0x110(r27)
    lwz     r3, 0xec(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    stw     r3, 0x114(r27)
    lwz     r3, 0xec(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x118(r27)
branch_0x802d09ec:
    lis     r3, 0x5442
    addi    r0, r3, 0x5831
    stw     r0, 0x8(r27)
    li      r0, 0x1
    stb     r0, 0x124(r27)
    lwz     r0, 0x4c(sp)
    lmw     r26, 0x30(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __dt__10J2DTextBoxFv
__dt__10J2DTextBoxFv: # 0x802d0a14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802d0a9c
    lis     r3, 0x803e
    addi    r0, r3, 0x720
    stw     r0, 0x0(r30)
    lbz     r0, 0x124(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802d0a70
    lwz     r3, 0xec(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d0a70
    beq-    branch_0x802d0a70
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802d0a70:
    lwz     r3, 0x100(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d0a80
    bl      __dla__FPv
branch_0x802d0a80:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7J2DPaneFv
    extsh.  r0, r31
    ble-    branch_0x802d0a9c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802d0a9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setFont__10J2DTextBoxFP7JUTFont
setFont__10J2DTextBoxFP7JUTFont: # 0x802d0ab8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x802d0b10
    lbz     r0, 0x124(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802d0b04
    lwz     r3, 0xec(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d0b04
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802d0b04:
    stw     r31, 0xec(r30)
    li      r0, 0x0
    stb     r0, 0x124(r30)
branch_0x802d0b10:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl draw__10J2DTextBoxFii
draw__10J2DTextBoxFii: # 0x802d0b28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    addi    r31, r5, 0x0
    stw     r30, 0xc0(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xbc(sp)
    mr      r29, r3
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802d0c44
    lwz     r0, 0xf4(r29)
    addi    r8, sp, 0x1c
    addi    r7, sp, 0x20
    stw     r0, 0x1c(sp)
    addi    r3, sp, 0x54
    lwz     r0, 0xf0(r29)
    stw     r0, 0x20(sp)
    lwz     r4, 0xec(r29)
    lwz     r5, 0x10c(r29)
    lwz     r6, 0x110(r29)
    bl      __ct__8J2DPrintFP7JUTFontiiQ28JUtility6TColorQ28JUtility6TColor
    lwz     r3, 0x114(r29)
    lwz     r0, 0x118(r29)
    cmpwi   r3, 0x0
    ble-    branch_0x802d0b98
    b       branch_0x802d0b9c

branch_0x802d0b98:
    li      r3, 0x0
branch_0x802d0b9c:
    cmpwi   r0, 0x0
    stw     r3, 0xac(sp)
    ble-    branch_0x802d0bac
    b       branch_0x802d0bb0

branch_0x802d0bac:
    li      r0, 0x0
branch_0x802d0bb0:
    stw     r0, 0xb0(sp)
    addi    r3, sp, 0x54
    lwz     r0, 0x11c(r29)
    stw     r0, 0x14(sp)
    lwz     r4, 0x120(r29)
    lwz     r0, 0x14(sp)
    stw     r4, 0x90(sp)
    stw     r0, 0x94(sp)
    bl      initiate__8J2DPrintFv
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    addi    r3, r29, 0x54
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    lbz     r6, 0xcd(r29)
    addi    r3, sp, 0x54
    lwz     r8, 0x100(r29)
    crxor   6, 6, 6
    li      r4, 0x0
    li      r5, 0x0
    addi    r7, rtoc, 0x1e0
    bl      print__8J2DPrintFiiUcPCce
    addi    r3, sp, 0x24
    bl      PSMTXIdentity
    addi    r3, sp, 0x24
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, sp, 0x54
    li      r4, -0x1
    bl      __dt__8J2DPrintFv
branch_0x802d0c44:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    mtlr    r0
    lwz     r29, 0xbc(sp)
    addi    sp, sp, 0xc8
    blr


.globl getStringPtr__10J2DTextBoxCFv
getStringPtr__10J2DTextBoxCFv: # 0x802d0c60
    lwz     r3, 0x100(r3)
    blr


.globl setString__10J2DTextBoxFPCce
setString__10J2DTextBoxFPCce: # 0x802d0c68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    stw     r29, 0x84(sp)
    bne-    cr1, branch_0x802d0ca4
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x802d0ca4:
    stw     r3, 0x8(sp)
    lis     r0, 0x200
    addi    r29, r3, 0x0
    stw     r4, 0xc(sp)
    addi    r30, r4, 0x0
    stw     r5, 0x10(sp)
    addi    r5, sp, 0x98
    stw     r6, 0x14(sp)
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    stw     r0, 0x70(sp)
    addi    r0, sp, 0x8
    stw     r5, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r3, 0x100(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802d0cf4
    bl      __dla__FPv
branch_0x802d0cf4:
    mr      r3, r30
    bl      strlen
    addi    r31, r3, 0x0
    addi    r3, r31, 0x1
    bl      __nwa__FUl
    stw     r3, 0x100(r29)
    mr      r4, r30
    lwz     r3, 0x100(r29)
    bl      strcpy
    lwz     r0, 0x94(sp)
    mr      r3, r31
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl setConnectParent__10J2DTextBoxFb
setConnectParent__10J2DTextBoxFb: # 0x802d0d38
    lwz     r5, 0xe0(r3)
    cmplwi  r5, 0x0
    bne-    branch_0x802d0d4c
    li      r3, 0x0
    blr

branch_0x802d0d4c:
    lwz     r5, 0xc(r5)
    lhz     r0, 0x4(r5)
    cmplwi  r0, 0x11
    beq-    branch_0x802d0d64
    li      r3, 0x0
    blr

branch_0x802d0d64:
    stb     r4, 0xcf(r3)
    mr      r3, r4
    blr


.globl drawSelf__10J2DTextBoxFii
drawSelf__10J2DTextBoxFii: # 0x802d0d70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    addi    r3, sp, 0x14
    bl      PSMTXIdentity
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x20(r12)
    addi    r6, sp, 0x14
    mtlr    r12
    blrl
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl drawSelf__10J2DTextBoxFiiPA3_A4_f
drawSelf__10J2DTextBoxFiiPA3_A4_f: # 0x802d0dd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    mr      r31, r3
    addi    r8, sp, 0x28
    stw     r30, 0xd0(sp)
    mr      r30, r6
    addi    r7, sp, 0x2c
    stw     r29, 0xcc(sp)
    addi    r29, r5, 0x0
    stw     r28, 0xc8(sp)
    addi    r28, r4, 0x0
    lwz     r0, 0xf4(r3)
    stw     r0, 0x28(sp)
    lwz     r0, 0xf0(r3)
    addi    r3, sp, 0x60
    stw     r0, 0x2c(sp)
    lwz     r4, 0xec(r31)
    lwz     r5, 0x10c(r31)
    lwz     r6, 0x110(r31)
    bl      __ct__8J2DPrintFP7JUTFontiiQ28JUtility6TColorQ28JUtility6TColor
    lwz     r3, 0x114(r31)
    lwz     r0, 0x118(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x802d0e44
    b       branch_0x802d0e48

branch_0x802d0e44:
    li      r3, 0x0
branch_0x802d0e48:
    cmpwi   r0, 0x0
    stw     r3, 0xb8(sp)
    ble-    branch_0x802d0e58
    b       branch_0x802d0e5c

branch_0x802d0e58:
    li      r0, 0x0
branch_0x802d0e5c:
    stw     r0, 0xbc(sp)
    addi    r3, sp, 0x60
    lwz     r0, 0x11c(r31)
    stw     r0, 0x20(sp)
    lwz     r4, 0x120(r31)
    lwz     r0, 0x20(sp)
    stw     r4, 0x9c(sp)
    stw     r0, 0xa0(sp)
    bl      initiate__8J2DPrintFv
    addi    r3, r30, 0x0
    addi    r4, r31, 0x84
    addi    r5, sp, 0x30
    bl      PSMTXConcat
    addi    r3, sp, 0x30
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x60
    bl      locate__8J2DPrintFii
    lwz     r6, 0x18(r31)
    addi    r3, sp, 0x60
    lwz     r0, 0x20(r31)
    lwz     r5, 0x14(r31)
    lwz     r4, 0x1c(r31)
    subf    r6, r6, r0
    lbz     r0, 0xcd(r31)
    subf    r5, r5, r4
    stw     r0, 0x8(sp)
    lwz     r4, 0x100(r31)
    lwz     r7, 0xf8(r31)
    lwz     r8, 0xfc(r31)
    lwz     r9, 0x104(r31)
    lwz     r10, 0x108(r31)
    bl      printReturn__8J2DPrintFPCcii18J2DTextBoxHBinding18J2DTextBoxVBindingiiUc
    addi    r3, sp, 0x60
    li      r4, -0x1
    bl      __dt__8J2DPrintFv
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    mtlr    r0
    lwz     r29, 0xcc(sp)
    lwz     r28, 0xc8(sp)
    addi    sp, sp, 0xd8
    blr


.globl resize__10J2DTextBoxFii
resize__10J2DTextBoxFii: # 0x802d0f14
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0xcf(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802d0fac
    addic.  r0, r8, 0xd0
    beq-    branch_0x802d0fac
    lwz     r3, 0xe0(r8)
    cmplwi  r3, 0x0
    beq-    branch_0x802d0fac
    lwz     r9, 0xc(r3)
    lhz     r0, 0x4(r9)
    addi    r3, r9, 0x0
    cmplwi  r0, 0x11
    bne-    branch_0x802d0fac
    lwz     r6, 0x14(r8)
    lwz     r0, 0x1c(r8)
    lwz     r12, 0x0(r3)
    subf    r7, r6, r0
    lwz     r6, 0x18(r8)
    lwz     r0, 0x20(r8)
    subf    r7, r7, r4
    lwz     r12, 0x14(r12)
    subf    r0, r6, r0
    lwz     r8, 0x14(r9)
    lwz     r6, 0x1c(r9)
    subf    r0, r0, r5
    lwz     r5, 0x18(r9)
    mtlr    r12
    lwz     r4, 0x20(r9)
    subf    r6, r8, r6
    subf    r5, r5, r4
    add     r4, r6, r7
    add     r5, r5, r0
    blrl
    b       branch_0x802d0fb4

branch_0x802d0fac:
    addi    r3, r8, 0x14
    bl      resize__7JUTRectFii
branch_0x802d0fb4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

