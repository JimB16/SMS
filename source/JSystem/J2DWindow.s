
.globl __ct__9J2DWindowFP7J2DPaneP20JSURandomInputStreamb
__ct__9J2DWindowFP7J2DPaneP20JSURandomInputStreamb: # 0x802d0fc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x270(sp)
    stmw    r27, 0x25c(sp)
    addi    r31, r5, 0x0
    addi    r30, r6, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamb
    lwz     r28, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x750
    stw     r0, 0x0(r28)
    addi    r3, r28, 0xec
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    li      r29, 0x0
    stw     r29, 0xfc(r28)
    clrlwi. r0, r30, 24
    li      r3, -0x1
    stw     r29, 0x100(r28)
    li      r0, 0x11
    stw     r29, 0x104(r28)
    stw     r29, 0x108(r28)
    stw     r29, 0x10c(r28)
    stw     r3, 0x118(r28)
    stw     r3, 0x11c(r28)
    stw     r3, 0x120(r28)
    stw     r3, 0x124(r28)
    stw     r3, 0x128(r28)
    stw     r3, 0x12c(r28)
    stb     r29, 0x154(sp)
    sth     r0, 0x4(r28)
    beq-    branch_0x802d1408
    addi    r3, r31, 0x0
    addi    r4, sp, 0x13a
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r30, 0x13a(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x138
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0x138(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x136
    stw     r0, 0xec(r28)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0x136(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x134
    stw     r0, 0xf0(r28)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lwz     r6, 0xec(r28)
    mr      r3, r31
    lhz     r0, 0x134(sp)
    addi    r4, sp, 0x132
    li      r5, 0x2
    add     r0, r6, r0
    stw     r0, 0xf4(r28)
    bl      read__14JSUInputStreamFPvl
    lwz     r6, 0xf0(r28)
    lis     r5, 0x5449
    lhz     r0, 0x132(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    add     r0, r6, r0
    stw     r0, 0xf8(r28)
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r28, r3
    beq-    branch_0x802d1134
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d112c
    stw     r29, 0x28(r27)
    mr      r3, r27
    mr      r4, r28
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lis     r3, 0x803e
    stb     r29, 0x50(r27)
    addi    r0, r3, 0x77c
    stw     r0, 0x54(r27)
branch_0x802d112c:
    lwz     r3, 0x8(sp)
    stw     r27, 0x100(r3)
branch_0x802d1134:
    lis     r5, 0x5449
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r29, r3
    beq-    branch_0x802d1190
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d1188
    li      r28, 0x0
    stw     r28, 0x28(r27)
    addi    r3, r27, 0x0
    mr      r4, r29
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lis     r3, 0x803e
    stb     r28, 0x50(r27)
    addi    r0, r3, 0x77c
    stw     r0, 0x54(r27)
branch_0x802d1188:
    lwz     r3, 0x8(sp)
    stw     r27, 0x104(r3)
branch_0x802d1190:
    lis     r5, 0x5449
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r29, r3
    beq-    branch_0x802d11ec
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d11e4
    li      r28, 0x0
    stw     r28, 0x28(r27)
    addi    r3, r27, 0x0
    mr      r4, r29
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lis     r3, 0x803e
    stb     r28, 0x50(r27)
    addi    r0, r3, 0x77c
    stw     r0, 0x54(r27)
branch_0x802d11e4:
    lwz     r3, 0x8(sp)
    stw     r27, 0x108(r3)
branch_0x802d11ec:
    lis     r5, 0x5449
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r29, r3
    beq-    branch_0x802d1248
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d1240
    li      r28, 0x0
    stw     r28, 0x28(r27)
    addi    r3, r27, 0x0
    mr      r4, r29
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lis     r3, 0x803e
    stb     r28, 0x50(r27)
    addi    r0, r3, 0x77c
    stw     r0, 0x54(r27)
branch_0x802d1240:
    lwz     r3, 0x8(sp)
    stw     r27, 0x10c(r3)
branch_0x802d1248:
    lis     r5, 0x544c
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    addi    r5, r5, 0x5554
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r28, r3
    beq-    branch_0x802d1290
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d1288
    addi    r3, r27, 0x0
    addi    r5, r28, 0x0
    li      r4, 0x0
    bl      storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
branch_0x802d1288:
    lwz     r3, 0x8(sp)
    stw     r27, 0xfc(r3)
branch_0x802d1290:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x130
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x130(sp)
    mr      r3, r31
    lwz     r29, 0x8(sp)
    addi    r4, sp, 0xe0
    li      r5, 0x4
    stw     r0, 0x114(r29)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0xe0(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0xdc
    stw     r0, 0x118(r29)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0xdc(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0xd8
    stw     r0, 0x11c(r29)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0xd8(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0xd4
    stw     r0, 0x120(r29)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0xd4(sp)
    subi    r30, r30, 0xe
    clrlwi. r0, r30, 24
    stw     r3, 0x124(r29)
    li      r28, 0x0
    stw     r28, 0x110(r29)
    beq-    branch_0x802d137c
    lis     r5, 0x5449
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r29, r3
    beq-    branch_0x802d1378
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d1370
    stw     r28, 0x28(r27)
    mr      r3, r27
    mr      r4, r29
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lis     r3, 0x803e
    stb     r28, 0x50(r27)
    addi    r0, r3, 0x77c
    stw     r0, 0x54(r27)
branch_0x802d1370:
    lwz     r3, 0x8(sp)
    stw     r27, 0x110(r3)
branch_0x802d1378:
    subi    r30, r30, 0x1
branch_0x802d137c:
    li      r0, 0x0
    lwz     r28, 0x8(sp)
    stw     r0, 0x150(sp)
    li      r3, -0x1
    clrlwi. r0, r30, 24
    lwz     r4, 0x150(sp)
    stw     r4, 0x12c(r28)
    stw     r3, 0x14c(sp)
    lwz     r0, 0x14c(sp)
    stw     r0, 0x128(r28)
    beq-    branch_0x802d13cc
    addi    r3, r31, 0x0
    addi    r4, sp, 0x11c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x11c(sp)
    subi    r30, r30, 0x1
    stw     r0, 0x148(sp)
    lwz     r0, 0x148(sp)
    stw     r0, 0x12c(r28)
branch_0x802d13cc:
    clrlwi. r0, r30, 24
    beq-    branch_0x802d13f8
    addi    r3, r31, 0x0
    addi    r4, sp, 0x114
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x114(sp)
    lwz     r3, 0x8(sp)
    stw     r0, 0x144(sp)
    lwz     r0, 0x144(sp)
    stw     r0, 0x128(r3)
branch_0x802d13f8:
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      align__20JSURandomInputStreamFl
    b       branch_0x802d16d8

branch_0x802d1408:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10c
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0x10c(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10a
    stw     r0, 0xec(r28)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0x10a(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x108
    stw     r0, 0xf0(r28)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lwz     r6, 0xec(r28)
    mr      r3, r31
    lhz     r0, 0x108(sp)
    addi    r4, sp, 0x106
    li      r5, 0x2
    add     r0, r6, r0
    stw     r0, 0xf4(r28)
    bl      read__14JSUInputStreamFPvl
    lwz     r6, 0xf0(r28)
    lis     r5, 0x5449
    lhz     r0, 0x106(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    add     r0, r6, r0
    stw     r0, 0xf8(r28)
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r28, r3
    beq-    branch_0x802d14d0
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d14c8
    stw     r29, 0x28(r27)
    mr      r3, r27
    mr      r4, r28
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lis     r3, 0x803e
    stb     r29, 0x50(r27)
    addi    r0, r3, 0x77c
    stw     r0, 0x54(r27)
branch_0x802d14c8:
    lwz     r3, 0x8(sp)
    stw     r27, 0x100(r3)
branch_0x802d14d0:
    lis     r5, 0x5449
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r29, r3
    beq-    branch_0x802d152c
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d1524
    li      r28, 0x0
    stw     r28, 0x28(r27)
    addi    r3, r27, 0x0
    mr      r4, r29
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lis     r3, 0x803e
    stb     r28, 0x50(r27)
    addi    r0, r3, 0x77c
    stw     r0, 0x54(r27)
branch_0x802d1524:
    lwz     r3, 0x8(sp)
    stw     r27, 0x104(r3)
branch_0x802d152c:
    lis     r5, 0x5449
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r29, r3
    beq-    branch_0x802d1588
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d1580
    li      r28, 0x0
    stw     r28, 0x28(r27)
    addi    r3, r27, 0x0
    mr      r4, r29
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lis     r3, 0x803e
    stb     r28, 0x50(r27)
    addi    r0, r3, 0x77c
    stw     r0, 0x54(r27)
branch_0x802d1580:
    lwz     r3, 0x8(sp)
    stw     r27, 0x108(r3)
branch_0x802d1588:
    lis     r5, 0x5449
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r29, r3
    beq-    branch_0x802d15e4
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d15dc
    li      r28, 0x0
    stw     r28, 0x28(r27)
    addi    r3, r27, 0x0
    mr      r4, r29
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lis     r3, 0x803e
    stb     r28, 0x50(r27)
    addi    r0, r3, 0x77c
    stw     r0, 0x54(r27)
branch_0x802d15dc:
    lwz     r3, 0x8(sp)
    stw     r27, 0x10c(r3)
branch_0x802d15e4:
    lis     r5, 0x544c
    addi    r4, r31, 0x0
    addi    r3, sp, 0x154
    addi    r5, r5, 0x5554
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    mr.     r28, r3
    beq-    branch_0x802d162c
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802d1624
    addi    r3, r27, 0x0
    addi    r5, r28, 0x0
    li      r4, 0x0
    bl      storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
branch_0x802d1624:
    lwz     r3, 0x8(sp)
    stw     r27, 0xfc(r3)
branch_0x802d162c:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x104
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x104(sp)
    mr      r3, r31
    lwz     r28, 0x8(sp)
    addi    r4, sp, 0xd0
    li      r5, 0x4
    stw     r0, 0x114(r28)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0xd0(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0xcc
    stw     r0, 0x118(r28)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0xcc(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc8
    stw     r0, 0x11c(r28)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0xc8(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc4
    stw     r0, 0x120(r28)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0xc4(sp)
    addi    r3, r31, 0x0
    li      r4, 0x4
    stw     r0, 0x124(r28)
    bl      align__20JSURandomInputStreamFl
    li      r3, 0x0
    stw     r3, 0x110(r28)
    li      r0, -0x1
    stw     r3, 0x140(sp)
    lwz     r3, 0x140(sp)
    stw     r3, 0x12c(r28)
    stw     r0, 0x13c(sp)
    lwz     r0, 0x13c(sp)
    stw     r0, 0x128(r28)
branch_0x802d16d8:
    lwz     r5, 0x8(sp)
    lwz     r3, 0x100(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x802d1738
    lwz     r4, 0x104(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x802d1738
    lwz     r0, 0x108(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x802d1738
    lwz     r0, 0x10c(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x802d1738
    lhz     r3, 0x3c(r3)
    lhz     r0, 0x3c(r4)
    add     r0, r3, r0
    stw     r0, 0x130(r5)
    lwz     r4, 0x108(r5)
    lwz     r3, 0x100(r5)
    lhz     r4, 0x3e(r4)
    lhz     r0, 0x3e(r3)
    add     r0, r0, r4
    stw     r0, 0x134(r5)
    b       branch_0x802d1748

branch_0x802d1738:
    li      r0, 0x1
    stw     r0, 0x130(r5)
    lwz     r3, 0x8(sp)
    stw     r0, 0x134(r3)
branch_0x802d1748:
    lmw     r27, 0x25c(sp)
    lwz     r0, 0x274(sp)
    lwz     r3, 0x8(sp)
    addi    sp, sp, 0x270
    mtlr    r0
    blr


.globl __dt__9J2DWindowFv
__dt__9J2DWindowFv: # 0x802d1760
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802d186c
    lis     r3, 0x803e
    addi    r0, r3, 0x750
    stw     r0, 0x0(r30)
    lwz     r3, 0x100(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d17b0
    beq-    branch_0x802d17b0
    lwz     r12, 0x54(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802d17b0:
    lwz     r3, 0x104(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d17d4
    beq-    branch_0x802d17d4
    lwz     r12, 0x54(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802d17d4:
    lwz     r3, 0x108(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d17f8
    beq-    branch_0x802d17f8
    lwz     r12, 0x54(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802d17f8:
    lwz     r3, 0x10c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d181c
    beq-    branch_0x802d181c
    lwz     r12, 0x54(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802d181c:
    lwz     r3, 0xfc(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d182c
    bl      __dl__FPv
branch_0x802d182c:
    lwz     r3, 0x110(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d1850
    beq-    branch_0x802d1850
    lwz     r12, 0x54(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802d1850:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7J2DPaneFv
    extsh.  r0, r31
    ble-    branch_0x802d186c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802d186c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q29J2DWindow7TextureFv
__dt__Q29J2DWindow7TextureFv: # 0x802d1888
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802d18d0
    lis     r3, 0x803e
    addi    r0, r3, 0x77c
    stw     r0, 0x54(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JUTTextureFv
    extsh.  r0, r31
    ble-    branch_0x802d18d0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802d18d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl draw_private__9J2DWindowFRC7JUTRectRC7JUTRectPA3_A4_f
draw_private__9J2DWindowFRC7JUTRectRC7JUTRectPA3_A4_f: # 0x802d18ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stmw    r25, 0xfc(sp)
    addi    r26, r4, 0x0
    addi    r31, r3, 0x0
    mr      r25, r5
    lwz     r4, 0x0(r4)
    lwz     r3, 0x8(r26)
    lwz     r0, 0x130(r31)
    subf    r3, r4, r3
    cmpw    r3, r0
    blt-    branch_0x802d1d94
    lwz     r4, 0x4(r26)
    lwz     r3, 0xc(r26)
    lwz     r0, 0x134(r31)
    subf    r3, r4, r3
    cmpw    r3, r0
    blt-    branch_0x802d1d94
    addi    r3, r6, 0x0
    addi    r4, r31, 0x84
    addi    r5, sp, 0xc8
    bl      PSMTXConcat
    addi    r3, sp, 0xc8
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, r31, 0x0
    addi    r4, r25, 0x0
    bl      drawContents__9J2DWindowFRC7JUTRect
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumTexGens
    lwz     r7, 0x100(r31)
    cmplwi  r7, 0x0
    beq-    branch_0x802d1d60
    lwz     r0, 0x104(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802d1d60
    lwz     r0, 0x108(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802d1d60
    lwz     r3, 0x10c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802d1d60
    lwz     r5, 0x0(r26)
    addi    r10, sp, 0xc0
    lwz     r0, 0x8(r26)
    addi    r9, sp, 0xc4
    lhz     r6, 0x3c(r3)
    subf    r5, r5, r0
    lhz     r4, 0x3e(r3)
    lwz     r3, 0x4(r26)
    subf    r28, r6, r5
    lwz     r0, 0xc(r26)
    li      r5, 0x0
    lhz     r29, 0x3c(r7)
    subf    r3, r3, r0
    lhz     r27, 0x3e(r7)
    lwz     r0, 0x128(r31)
    subf    r30, r4, r3
    li      r4, 0x0
    stw     r0, 0xc0(sp)
    lwz     r0, 0x12c(r31)
    stw     r0, 0xc4(sp)
    lwz     r11, 0x114(r31)
    lwz     r3, 0x100(r31)
    rlwinm  r0, r11, 0, 24, 24
    lbz     r8, 0xcd(r31)
    neg     r7, r0
    subic   r6, r7, 0x1
    rlwinm  r0, r11, 0, 25, 25
    subfe   r7, r6, r7
    neg     r6, r0
    subic   r0, r6, 0x1
    subfe   r0, r0, r6
    clrlwi  r6, r7, 24
    clrlwi  r7, r0, 24
    bl      draw__Q29J2DWindow7TextureFiibbUcQ28JUtility6TColorQ28JUtility6TColor
    lwz     r0, 0x128(r31)
    addi    r10, sp, 0xb8
    addi    r9, sp, 0xbc
    stw     r0, 0xb8(sp)
    mr      r4, r28
    li      r5, 0x0
    lwz     r0, 0x12c(r31)
    stw     r0, 0xbc(sp)
    lwz     r11, 0x114(r31)
    lwz     r3, 0x104(r31)
    rlwinm  r0, r11, 0, 26, 26
    lbz     r8, 0xcd(r31)
    neg     r7, r0
    subic   r6, r7, 0x1
    rlwinm  r0, r11, 0, 27, 27
    subfe   r7, r6, r7
    neg     r6, r0
    subic   r0, r6, 0x1
    subfe   r0, r0, r6
    clrlwi  r6, r7, 24
    clrlwi  r7, r0, 24
    bl      draw__Q29J2DWindow7TextureFiibbUcQ28JUtility6TColorQ28JUtility6TColor
    lwz     r0, 0x128(r31)
    addi    r10, sp, 0xb0
    addi    r9, sp, 0xb4
    stw     r0, 0xb0(sp)
    mr      r5, r30
    li      r4, 0x0
    lwz     r0, 0x12c(r31)
    stw     r0, 0xb4(sp)
    lwz     r11, 0x114(r31)
    lwz     r3, 0x108(r31)
    rlwinm  r0, r11, 0, 28, 28
    lbz     r8, 0xcd(r31)
    neg     r7, r0
    subic   r6, r7, 0x1
    rlwinm  r0, r11, 0, 29, 29
    subfe   r7, r6, r7
    neg     r6, r0
    subic   r0, r6, 0x1
    subfe   r0, r0, r6
    clrlwi  r6, r7, 24
    clrlwi  r7, r0, 24
    bl      draw__Q29J2DWindow7TextureFiibbUcQ28JUtility6TColorQ28JUtility6TColor
    lwz     r0, 0x128(r31)
    addi    r10, sp, 0xa8
    addi    r9, sp, 0xac
    stw     r0, 0xa8(sp)
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    lwz     r0, 0x12c(r31)
    stw     r0, 0xac(sp)
    lwz     r11, 0x114(r31)
    lwz     r3, 0x10c(r31)
    rlwinm  r0, r11, 0, 30, 30
    lbz     r8, 0xcd(r31)
    neg     r7, r0
    subic   r6, r7, 0x1
    clrlwi  r0, r11, 31
    subfe   r7, r6, r7
    neg     r6, r0
    subic   r0, r6, 0x1
    subfe   r0, r0, r6
    clrlwi  r6, r7, 24
    clrlwi  r7, r0, 24
    bl      draw__Q29J2DWindow7TextureFiibbUcQ28JUtility6TColorQ28JUtility6TColor
    lwz     r4, 0x114(r31)
    rlwinm. r0, r4, 0, 26, 26
    beq-    branch_0x802d1b68
    lis     r3, 0x1
    subi    r3, r3, 0x8000
    b       branch_0x802d1b6c

branch_0x802d1b68:
    li      r3, 0x0
branch_0x802d1b6c:
    rlwinm. r0, r4, 0, 27, 27
    addi    r10, r3, 0x0
    addi    r8, r10, 0x0
    beq-    branch_0x802d1b84
    li      r3, 0x0
    b       branch_0x802d1b8c

branch_0x802d1b84:
    lis     r3, 0x1
    subi    r3, r3, 0x8000
branch_0x802d1b8c:
    lwz     r0, 0x128(r31)
    subf    r26, r29, r28
    addi    r9, r3, 0x0
    stw     r0, 0xa0(sp)
    xori     r25, r3, 0x8000
    addi    r12, sp, 0xa4
    lwz     r0, 0x12c(r31)
    addi    r11, sp, 0xa0
    addi    r4, r29, 0x0
    stw     r0, 0xa4(sp)
    mr      r6, r26
    li      r5, 0x0
    lwz     r3, 0x104(r31)
    lhz     r7, 0x3e(r3)
    stw     r25, 0x8(sp)
    lbz     r0, 0xcd(r31)
    stw     r0, 0xc(sp)
    stw     r12, 0x10(sp)
    stw     r11, 0x14(sp)
    bl      draw__Q29J2DWindow7TextureFiiiiUsUsUsUsUcQ28JUtility6TColorQ28JUtility6TColor
    lwz     r4, 0x114(r31)
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x802d1bf4
    lis     r3, 0x1
    subi    r10, r3, 0x8000
    b       branch_0x802d1bf8

branch_0x802d1bf4:
    li      r10, 0x0
branch_0x802d1bf8:
    clrlwi. r0, r4, 31
    beq-    branch_0x802d1c08
    li      r9, 0x0
    b       branch_0x802d1c10

branch_0x802d1c08:
    lis     r3, 0x1
    subi    r9, r3, 0x8000
branch_0x802d1c10:
    lwz     r0, 0x128(r31)
    xori     r25, r9, 0x8000
    addi    r12, sp, 0x9c
    stw     r0, 0x98(sp)
    addi    r11, sp, 0x98
    addi    r4, r29, 0x0
    lwz     r0, 0x12c(r31)
    addi    r5, r30, 0x0
    addi    r6, r26, 0x0
    stw     r0, 0x9c(sp)
    addi    r8, r10, 0x0
    lwz     r3, 0x10c(r31)
    lhz     r7, 0x3e(r3)
    stw     r25, 0x8(sp)
    lbz     r0, 0xcd(r31)
    stw     r0, 0xc(sp)
    stw     r12, 0x10(sp)
    stw     r11, 0x14(sp)
    bl      draw__Q29J2DWindow7TextureFiiiiUsUsUsUsUcQ28JUtility6TColorQ28JUtility6TColor
    lwz     r4, 0x114(r31)
    rlwinm. r0, r4, 0, 28, 28
    beq-    branch_0x802d1c70
    li      r8, 0x0
    b       branch_0x802d1c78

branch_0x802d1c70:
    lis     r3, 0x1
    subi    r8, r3, 0x8000
branch_0x802d1c78:
    rlwinm. r0, r4, 0, 29, 29
    xori     r10, r8, 0x8000
    beq-    branch_0x802d1c90
    lis     r3, 0x1
    subi    r29, r3, 0x8000
    b       branch_0x802d1c94

branch_0x802d1c90:
    li      r29, 0x0
branch_0x802d1c94:
    lwz     r0, 0x128(r31)
    subf    r26, r27, r30
    addi    r12, sp, 0x94
    stw     r0, 0x90(sp)
    addi    r11, sp, 0x90
    addi    r5, r27, 0x0
    lwz     r0, 0x12c(r31)
    mr      r7, r26
    mr      r9, r29
    stw     r0, 0x94(sp)
    li      r4, 0x0
    lwz     r3, 0x108(r31)
    lhz     r6, 0x3c(r3)
    stw     r29, 0x8(sp)
    lbz     r0, 0xcd(r31)
    stw     r0, 0xc(sp)
    stw     r12, 0x10(sp)
    stw     r11, 0x14(sp)
    bl      draw__Q29J2DWindow7TextureFiiiiUsUsUsUsUcQ28JUtility6TColorQ28JUtility6TColor
    lwz     r4, 0x114(r31)
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x802d1cf4
    li      r8, 0x0
    b       branch_0x802d1cfc

branch_0x802d1cf4:
    lis     r3, 0x1
    subi    r8, r3, 0x8000
branch_0x802d1cfc:
    clrlwi. r0, r4, 31
    xori     r10, r8, 0x8000
    beq-    branch_0x802d1d14
    lis     r3, 0x1
    subi    r29, r3, 0x8000
    b       branch_0x802d1d18

branch_0x802d1d14:
    li      r29, 0x0
branch_0x802d1d18:
    lwz     r0, 0x128(r31)
    addi    r12, sp, 0x8c
    addi    r11, sp, 0x88
    stw     r0, 0x88(sp)
    addi    r4, r28, 0x0
    addi    r5, r27, 0x0
    lwz     r0, 0x12c(r31)
    mr      r7, r26
    mr      r9, r29
    stw     r0, 0x8c(sp)
    lwz     r3, 0x10c(r31)
    lhz     r6, 0x3c(r3)
    stw     r29, 0x8(sp)
    lbz     r0, 0xcd(r31)
    stw     r0, 0xc(sp)
    stw     r12, 0x10(sp)
    stw     r11, 0x14(sp)
    bl      draw__Q29J2DWindow7TextureFiiiiUsUsUsUsUcQ28JUtility6TColorQ28JUtility6TColor
branch_0x802d1d60:
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0xd
    li      r4, 0x0
    bl      GXSetVtxDesc
branch_0x802d1d94:
    lmw     r25, 0xfc(sp)
    lwz     r0, 0x11c(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl resize__9J2DWindowFii
resize__9J2DWindowFii: # 0x802d1da8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stmw    r27, 0xcc(sp)
    mr      r27, r3
    mr      r31, r4
    mr      r28, r5
    lwz     r7, 0x14(r3)
    lwz     r6, 0x1c(r3)
    lwz     r3, 0x18(r3)
    lwz     r0, 0x20(r27)
    subf    r30, r7, r6
    subf    r29, r3, r0
    addi    r3, r27, 0x14
    bl      resize__7JUTRectFii
    lwz     r0, 0xf4(r27)
    subf    r31, r30, r31
    subf    r30, r29, r28
    add     r0, r0, r31
    stw     r0, 0xf4(r27)
    lwz     r0, 0xf8(r27)
    add     r0, r0, r30
    stw     r0, 0xf8(r27)
    lwz     r29, 0xd0(r27)
    cmplwi  r29, 0x0
    beq-    branch_0x802d1e6c
    subi    r29, r29, 0xc
    b       branch_0x802d1e6c

branch_0x802d1e18:
    lwz     r7, 0xc(r29)
    lhz     r0, 0x4(r7)
    cmplwi  r0, 0x13
    bne-    branch_0x802d1e5c
    lbz     r0, 0xcf(r7)
    cmplwi  r0, 0x0
    beq-    branch_0x802d1e5c
    lwz     r6, 0x14(r7)
    addi    r3, r7, 0x14
    lwz     r4, 0x1c(r7)
    lwz     r5, 0x18(r7)
    lwz     r0, 0x20(r7)
    subf    r4, r6, r4
    add     r4, r31, r4
    subf    r0, r5, r0
    add     r5, r30, r0
    bl      resize__7JUTRectFii
branch_0x802d1e5c:
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x802d1e6c
    subi    r29, r29, 0xc
branch_0x802d1e6c:
    cmplwi  r29, 0x0
    bne+    branch_0x802d1e18
    lmw     r27, 0xcc(sp)
    lwz     r0, 0xe4(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl drawSelf__9J2DWindowFii
drawSelf__9J2DWindowFii: # 0x802d1e88
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


.globl drawSelf__9J2DWindowFiiPA3_A4_f
drawSelf__9J2DWindowFiiPA3_A4_f: # 0x802d1ef0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x30(sp)
    mr      r30, r5
    stw     r29, 0x2c(sp)
    mr      r29, r4
    stw     r28, 0x28(sp)
    mr      r28, r3
    lwz     r0, 0x2c(r3)
    lwz     r7, 0x30(r3)
    lwz     r4, 0x24(r3)
    mr      r6, r0
    lwz     r5, 0x28(r3)
    addi    r3, sp, 0x18
    bl      set__7JUTRectFiiii
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r3, sp, 0x18
    bl      add__7JUTRectFii
    addi    r3, r28, 0x0
    addi    r6, r31, 0x0
    addi    r4, sp, 0x18
    addi    r5, r28, 0xec
    bl      draw_private__9J2DWindowFRC7JUTRectRC7JUTRectPA3_A4_f
    addi    r3, r28, 0x0
    addi    r4, r28, 0xec
    bl      clip__7J2DPaneFRC7JUTRect
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl drawContents__9J2DWindowFRC7JUTRect
drawContents__9J2DWindowFRC7JUTRect: # 0x802d1f88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      isEmpty__7JUTRectCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802d2248
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, 0x118(r30)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xff
    bne-    branch_0x802d208c
    lwz     r0, 0x11c(r30)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xff
    bne-    branch_0x802d208c
    lwz     r0, 0x120(r30)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xff
    bne-    branch_0x802d208c
    lwz     r0, 0x124(r30)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xff
    bne-    branch_0x802d208c
    lbz     r0, 0xcd(r30)
    cmplwi  r0, 0xff
    bne-    branch_0x802d208c
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0xf
    bl      GXSetBlendMode
    b       branch_0x802d20a0

branch_0x802d208c:
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0xf
    bl      GXSetBlendMode
branch_0x802d20a0:
    lwz     r0, 0x118(r30)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x120(r30)
    stw     r0, 0x58(sp)
    lwz     r0, 0x11c(r30)
    stw     r0, 0x54(sp)
    lwz     r0, 0x124(r30)
    stw     r0, 0x50(sp)
    lbz     r5, 0xcd(r30)
    cmplwi  r5, 0xff
    beq-    branch_0x802d2160
    lbz     r0, 0x5f(sp)
    lis     r3, 0x8081
    subi    r4, r3, 0x7f7f
    mullw   r0, r0, r5
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x5f(sp)
    lbz     r3, 0x5b(sp)
    lbz     r0, 0xcd(r30)
    mullw   r0, r3, r0
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x5b(sp)
    lbz     r3, 0x57(sp)
    lbz     r0, 0xcd(r30)
    mullw   r0, r3, r0
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x57(sp)
    lbz     r3, 0x53(sp)
    lbz     r0, 0xcd(r30)
    mullw   r0, r3, r0
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x53(sp)
branch_0x802d2160:
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lwz     r0, 0x0(r31)
    lis     r7, 0xcc01
    lwz     r3, 0x4(r31)
    li      r6, 0x0
    extsh   r8, r0
    sth     r8, -0x8000(r7)
    extsh   r9, r3
    lwz     r0, 0x5c(sp)
    sth     r9, -0x8000(r7)
    lwz     r4, 0x54(sp)
    sth     r6, -0x8000(r7)
    lwz     r3, 0x50(sp)
    stw     r0, -0x8000(r7)
    lwz     r0, 0x58(sp)
    lwz     r5, 0x8(r31)
    extsh   r5, r5
    sth     r5, -0x8000(r7)
    sth     r9, -0x8000(r7)
    sth     r6, -0x8000(r7)
    stw     r4, -0x8000(r7)
    lwz     r4, 0xc(r31)
    sth     r5, -0x8000(r7)
    extsh   r4, r4
    sth     r4, -0x8000(r7)
    sth     r6, -0x8000(r7)
    stw     r3, -0x8000(r7)
    sth     r8, -0x8000(r7)
    sth     r4, -0x8000(r7)
    sth     r6, -0x8000(r7)
    stw     r0, -0x8000(r7)
    lwz     r0, 0x110(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802d2248
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumTexGens
    lwz     r5, 0x4(r31)
    lwz     r0, 0xc(r31)
    lwz     r4, 0x0(r31)
    lwz     r6, 0x8(r31)
    subf    r7, r5, r0
    lwz     r3, 0x110(r30)
    lbz     r8, 0xcd(r30)
    subf    r6, r4, r6
    bl      drawContentsTexture__Q29J2DWindow7TextureFiiiiUc
branch_0x802d2248:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl draw__Q29J2DWindow7TextureFiiiiUsUsUsUsUcQ28JUtility6TColorQ28JUtility6TColor
draw__Q29J2DWindow7TextureFiiiiUsUsUsUsUcQ28JUtility6TColorQ28JUtility6TColor: # 0x802d2260
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r20, 0x30(sp)
    mr      r21, r4
    mr      r22, r5
    lhz     r31, 0x6a(sp)
    lbz     r23, 0x6f(sp)
    lwz     r24, 0x70(sp)
    mr      r20, r3
    lwz     r25, 0x74(sp)
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    add     r27, r21, r6
    add     r26, r22, r7
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r0, 0x0(r25)
    addi    r6, sp, 0x24
    addi    r5, sp, 0x28
    stw     r0, 0x24(sp)
    addi    r3, r20, 0x0
    addi    r4, r23, 0x0
    lwz     r0, 0x0(r24)
    stw     r0, 0x28(sp)
    bl      setTevMode__Q29J2DWindow7TextureFUcQ28JUtility6TColorQ28JUtility6TColor
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    extsh   r8, r21
    lis     r7, 0xcc01
    sth     r8, -0x8000(r7)
    extsh   r6, r22
    li      r5, 0x0
    sth     r6, -0x8000(r7)
    li      r4, -0x1
    extsh   r3, r27
    sth     r5, -0x8000(r7)
    extsh   r0, r26
    stw     r4, -0x8000(r7)
    sth     r30, -0x8000(r7)
    sth     r31, -0x8000(r7)
    sth     r3, -0x8000(r7)
    sth     r6, -0x8000(r7)
    sth     r5, -0x8000(r7)
    stw     r4, -0x8000(r7)
    sth     r28, -0x8000(r7)
    sth     r31, -0x8000(r7)
    sth     r3, -0x8000(r7)
    sth     r0, -0x8000(r7)
    sth     r5, -0x8000(r7)
    stw     r4, -0x8000(r7)
    sth     r28, -0x8000(r7)
    sth     r29, -0x8000(r7)
    sth     r8, -0x8000(r7)
    sth     r0, -0x8000(r7)
    sth     r5, -0x8000(r7)
    stw     r4, -0x8000(r7)
    sth     r30, -0x8000(r7)
    sth     r29, -0x8000(r7)
    lwz     r0, 0x64(sp)
    lmw     r20, 0x30(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl draw__Q29J2DWindow7TextureFiibbUcQ28JUtility6TColorQ28JUtility6TColor
draw__Q29J2DWindow7TextureFiibbUcQ28JUtility6TColorQ28JUtility6TColor: # 0x802d236c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r7, 24
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r11, sp, 0x30
    stw     r30, 0x38(sp)
    lwz     r10, 0x0(r10)
    stw     r10, 0x30(sp)
    addi    r10, sp, 0x34
    lwz     r0, 0x0(r9)
    stw     r0, 0x34(sp)
    beq-    branch_0x802d23ac
    lis     r9, 0x1
    subi    r12, r9, 0x8000
    b       branch_0x802d23b0

branch_0x802d23ac:
    li      r12, 0x0
branch_0x802d23b0:
    clrlwi. r0, r6, 24
    beq-    branch_0x802d23c4
    lis     r9, 0x1
    subi    r31, r9, 0x8000
    b       branch_0x802d23c8

branch_0x802d23c4:
    li      r31, 0x0
branch_0x802d23c8:
    clrlwi. r0, r7, 24
    beq-    branch_0x802d23d8
    li      r9, 0x0
    b       branch_0x802d23e0

branch_0x802d23d8:
    lis     r7, 0x1
    subi    r9, r7, 0x8000
branch_0x802d23e0:
    clrlwi. r0, r6, 24
    beq-    branch_0x802d23f0
    li      r30, 0x0
    b       branch_0x802d23f8

branch_0x802d23f0:
    lis     r6, 0x1
    subi    r30, r6, 0x8000
branch_0x802d23f8:
    lhz     r7, 0x3e(r3)
    clrlwi  r0, r12, 16
    lhz     r6, 0x3c(r3)
    clrlwi  r9, r9, 16
    stw     r0, 0x8(sp)
    stw     r8, 0xc(sp)
    clrlwi  r8, r30, 16
    stw     r10, 0x10(sp)
    clrlwi  r10, r31, 16
    stw     r11, 0x14(sp)
    bl      draw__Q29J2DWindow7TextureFiiiiUsUsUsUsUcQ28JUtility6TColorQ28JUtility6TColor
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl drawContentsTexture__Q29J2DWindow7TextureFiiiiUc
drawContentsTexture__Q29J2DWindow7TextureFiiiiUc: # 0x802d243c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stfd    f28, 0x88(sp)
    stmw    r24, 0x68(sp)
    addi    r27, r4, 0x0
    addi    r25, r6, 0x0
    addi    r28, r5, 0x0
    addi    r24, r7, 0x0
    addi    r26, r3, 0x0
    addi    r29, r8, 0x0
    add     r31, r27, r25
    add     r30, r28, r24
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    lhz     r3, 0x3c(r26)
    xoris   r4, r25, 0x8000
    lhz     r0, 0x3e(r26)
    xoris   r5, r24, 0x8000
    xoris   r3, r3, 0x8000
    xoris   r0, r0, 0x8000
    stw     r4, 0x64(sp)
    lis     r6, 0x4330
    lfd     f6, 0x1f0(rtoc)
    stw     r3, 0x5c(sp)
    mr      r3, r26
    lfs     f3, 0x1e8(rtoc)
    li      r4, 0x0
    stw     r5, 0x54(sp)
    lfs     f2, 0x1ec(rtoc)
    stw     r0, 0x4c(sp)
    stw     r6, 0x60(sp)
    stw     r6, 0x58(sp)
    lfd     f1, 0x60(sp)
    stw     r6, 0x50(sp)
    lfd     f0, 0x58(sp)
    fsubs   f5, f1, f6
    stw     r6, 0x48(sp)
    lfd     f1, 0x50(sp)
    fsubs   f4, f0, f6
    lfd     f0, 0x48(sp)
    fsubs   f1, f1, f6
    fsubs   f0, f0, f6
    fdivs   f4, f5, f4
    fdivs   f5, f1, f0
    fsubs   f1, f4, f3
    fsubs   f0, f5, f3
    fneg    f1, f1
    fneg    f0, f0
    fmuls   f31, f1, f2
    fmuls   f30, f0, f2
    fadds   f29, f31, f4
    fadds   f28, f30, f5
    bl      load__10JUTTextureF11_GXTexMapID
    li      r24, -0x1
    li      r25, 0x0
    stw     r24, 0x30(sp)
    addi    r6, sp, 0x34
    stw     r25, 0x38(sp)
    addi    r5, sp, 0x3c
    lwz     r4, 0x30(sp)
    mr      r3, r26
    lwz     r0, 0x38(sp)
    stw     r4, 0x34(sp)
    mr      r4, r29
    stw     r0, 0x3c(sp)
    bl      setTevMode__Q29J2DWindow7TextureFUcQ28JUtility6TColorQ28JUtility6TColor
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    extsh   r11, r27
    lis     r10, 0xcc01
    sth     r11, -0x8000(r10)
    extsh   r9, r28
    extsh   r8, r31
    sth     r9, -0x8000(r10)
    extsh   r0, r30
    li      r3, 0x0
    sth     r25, -0x8000(r10)
    li      r4, 0xd
    li      r5, 0x1
    stw     r24, -0x8000(r10)
    li      r6, 0x2
    li      r7, 0xf
    stfs    f31, -0x8000(r10)
    stfs    f30, -0x8000(r10)
    sth     r8, -0x8000(r10)
    sth     r9, -0x8000(r10)
    sth     r25, -0x8000(r10)
    stw     r24, -0x8000(r10)
    stfs    f29, -0x8000(r10)
    stfs    f30, -0x8000(r10)
    sth     r8, -0x8000(r10)
    sth     r0, -0x8000(r10)
    sth     r25, -0x8000(r10)
    stw     r24, -0x8000(r10)
    stfs    f29, -0x8000(r10)
    stfs    f28, -0x8000(r10)
    sth     r11, -0x8000(r10)
    sth     r0, -0x8000(r10)
    sth     r25, -0x8000(r10)
    stw     r24, -0x8000(r10)
    stfs    f31, -0x8000(r10)
    stfs    f28, -0x8000(r10)
    bl      GXSetVtxAttrFmt
    lmw     r24, 0x68(sp)
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    addi    sp, sp, 0xa8
    blr


.globl setTevMode__Q29J2DWindow7TextureFUcQ28JUtility6TColorQ28JUtility6TColor
setTevMode__Q29J2DWindow7TextureFUcQ28JUtility6TColorQ28JUtility6TColor: # 0x802d2624
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    li      r8, 0x7d
    stwu    sp, -0x80(sp)
    stmw    r27, 0x6c(sp)
    addi    r27, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    addi    r31, r6, 0x0
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    bl      GXSetTexCoordGen2
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, 0x1f8(rtoc)
    addi    r4, sp, 0x64
    li      r3, 0x4
    stw     r0, 0x60(sp)
    stb     r29, 0x63(sp)
    lwz     r0, 0x60(sp)
    stw     r0, 0x64(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    clrlwi  r0, r29, 24
    cmplwi  r0, 0xff
    bne-    branch_0x802d27c0
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802d27c0
    lwz     r3, 0x0(r31)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x802d27c0
    lwz     r29, 0x38(r27)
    li      r3, 0x1
    bl      GXSetNumTevStages
    lwz     r3, 0x2c(r27)
    cmplwi  r3, 0x0
    beq-    branch_0x802d26f8
    lwz     r29, 0x1c(r3)
branch_0x802d26f8:
    cmpwi   r29, 0x0
    bne-    branch_0x802d279c
    li      r0, -0x1
    stw     r0, 0x58(sp)
    addi    r4, sp, 0x5c
    li      r3, 0x3
    lwz     r0, 0x58(sp)
    stw     r0, 0x5c(sp)
    bl      GXSetTevColor
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x3
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0xf
    bl      GXSetBlendMode
    b       branch_0x802d29e0

branch_0x802d279c:
    li      r3, 0x0
    li      r4, 0x3
    bl      GXSetTevOp
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0xf
    bl      GXSetBlendMode
    b       branch_0x802d29e0

branch_0x802d27c0:
    li      r0, -0x1
    stw     r0, 0x50(sp)
    addi    r4, sp, 0x54
    li      r28, 0x1
    lwz     r0, 0x50(sp)
    li      r3, 0x3
    stw     r0, 0x54(sp)
    bl      GXSetTevColor
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    lwz     r0, 0x38(r27)
    cmpwi   r0, 0x0
    beq-    branch_0x802d2820
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    b       branch_0x802d2838

branch_0x802d2820:
    li      r3, 0x0
    li      r4, 0x3
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
branch_0x802d2838:
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802d288c
    lwz     r3, 0x0(r31)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x802d2934
branch_0x802d288c:
    li      r3, 0x1
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    lwz     r0, 0x0(r30)
    addi    r4, sp, 0x4c
    li      r3, 0x1
    stw     r0, 0x4c(sp)
    bl      GXSetTevColor
    lwz     r0, 0x0(r31)
    addi    r4, sp, 0x48
    li      r3, 0x2
    stw     r0, 0x48(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    li      r4, 0x2
    li      r5, 0x4
    li      r6, 0x0
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x2
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r28, 0x2
branch_0x802d2934:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0xff
    beq-    branch_0x802d29c4
    clrlwi  r29, r28, 24
    addi    r3, r29, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    addi    r3, r29, 0x0
    li      r4, 0x7
    li      r5, 0x0
    li      r6, 0x5
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    addi    r28, r28, 0x1
branch_0x802d29c4:
    mr      r3, r28
    bl      GXSetNumTevStages
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0xf
    bl      GXSetBlendMode
branch_0x802d29e0:
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr

