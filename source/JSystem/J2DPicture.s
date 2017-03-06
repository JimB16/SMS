
.globl __ct__10J2DPictureFP7J2DPaneP20JSURandomInputStreamb
__ct__10J2DPictureFP7J2DPaneP20JSURandomInputStreamb: # 0x802cbf30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x210(sp)
    stmw    r26, 0x1f8(sp)
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamb
    lis     r3, 0x803e
    lwz     r29, 0x8(sp)
    addi    r0, r3, 0x5c8
    stw     r0, 0x0(r29)
    li      r30, 0x0
    lis     r3, 0x8015
    stw     r30, 0x124(r29)
    li      r31, -0x1
    addi    r4, r3, 0xd4
    stw     r31, 0x13c(r29)
    addi    r3, r29, 0x144
    li      r5, 0x0
    stw     r31, 0x140(r29)
    li      r6, 0x4
    li      r7, 0x4
    bl      __construct_array
    stw     r31, 0x154(r29)
    clrlwi. r0, r27, 24
    li      r0, 0x12
    stw     r31, 0x158(r29)
    stb     r30, 0xf4(sp)
    sth     r0, 0x4(r29)
    beq-    branch_0x802cc1d8
    addi    r3, r26, 0x0
    addi    r4, sp, 0x93
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lis     r5, 0x5449
    lbz     r31, 0x93(sp)
    addi    r4, r26, 0x0
    addi    r3, sp, 0xf4
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    lis     r5, 0x544c
    addi    r28, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, sp, 0xf4
    addi    r5, r5, 0x5554
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    addi    r27, r3, 0x0
    addi    r3, r26, 0x0
    addi    r4, sp, 0x92
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r3, 0x92(sp)
    subi    r31, r31, 0x3
    clrlwi. r0, r31, 24
    stw     r3, 0x128(r29)
    beq-    branch_0x802cc058
    addi    r3, r26, 0x0
    addi    r4, sp, 0x91
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r4, 0x91(sp)
    subi    r31, r31, 0x1
    rlwinm  r0, r4, 0, 29, 29
    neg     r3, r0
    clrlwi  r4, r4, 30
    subic   r0, r3, 0x1
    stw     r4, 0x12c(r29)
    subfe   r0, r0, r3
    stb     r0, 0x130(r29)
    b       branch_0x802cc060

branch_0x802cc058:
    stw     r30, 0x12c(r29)
    stb     r30, 0x130(r29)
branch_0x802cc060:
    clrlwi. r0, r31, 24
    beq-    branch_0x802cc098
    addi    r3, r26, 0x0
    addi    r4, sp, 0x90
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r4, 0x90(sp)
    subi    r31, r31, 0x1
    lwz     r3, 0x8(sp)
    extrwi  r0, r4, 2, 28
    stw     r0, 0x134(r3)
    clrlwi  r0, r4, 30
    stw     r0, 0x138(r3)
    b       branch_0x802cc0a8

branch_0x802cc098:
    lwz     r3, 0x8(sp)
    li      r0, 0x0
    stw     r0, 0x134(r3)
    stw     r0, 0x138(r3)
branch_0x802cc0a8:
    li      r0, 0x0
    lwz     r29, 0x8(sp)
    stw     r0, 0xec(sp)
    li      r3, -0x1
    clrlwi. r0, r31, 24
    lwz     r4, 0xec(sp)
    stw     r4, 0x140(r29)
    stw     r3, 0xe8(sp)
    lwz     r0, 0xe8(sp)
    stw     r0, 0x13c(r29)
    beq-    branch_0x802cc0f8
    addi    r3, r26, 0x0
    addi    r4, sp, 0x8c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x8c(sp)
    subi    r31, r31, 0x1
    stw     r0, 0xe4(sp)
    lwz     r0, 0xe4(sp)
    stw     r0, 0x140(r29)
branch_0x802cc0f8:
    clrlwi. r0, r31, 24
    beq-    branch_0x802cc128
    addi    r3, r26, 0x0
    addi    r4, sp, 0x84
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x84(sp)
    subi    r31, r31, 0x1
    lwz     r3, 0x8(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0xe0(sp)
    stw     r0, 0x13c(r3)
branch_0x802cc128:
    li      r4, -0x1
    lwz     r3, 0x8(sp)
    stw     r4, 0xc0(sp)
    li      r29, 0x0
    li      r30, 0x0
    stw     r4, 0xc8(sp)
    lwz     r0, 0xc0(sp)
    stw     r4, 0xd0(sp)
    lwz     r5, 0xc8(sp)
    stw     r4, 0xd8(sp)
    lwz     r4, 0xd0(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0xd8(sp)
    stw     r5, 0xcc(sp)
    stw     r4, 0xd4(sp)
    stw     r0, 0x144(r3)
    lwz     r0, 0xd4(sp)
    stw     r0, 0x148(r3)
    lwz     r0, 0xcc(sp)
    stw     r0, 0x14c(r3)
    lwz     r0, 0xc4(sp)
    stw     r0, 0x150(r3)
    b       branch_0x802cc1b8

branch_0x802cc184:
    addi    r3, r26, 0x0
    addi    r4, sp, 0x7c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x7c(sp)
    addi    r3, r30, 0x144
    lwz     r4, 0x8(sp)
    subi    r31, r31, 0x1
    stw     r0, 0xbc(sp)
    addi    r29, r29, 0x1
    lwz     r0, 0xbc(sp)
    addi    r30, r30, 0x4
    stwx    r0, r4, r3
branch_0x802cc1b8:
    clrlwi. r0, r31, 24
    beq-    branch_0x802cc1c8
    cmpwi   r29, 0x4
    blt+    branch_0x802cc184
branch_0x802cc1c8:
    addi    r3, r26, 0x0
    li      r4, 0x4
    bl      align__20JSURandomInputStreamFl
    b       branch_0x802cc2d4

branch_0x802cc1d8:
    lis     r5, 0x5449
    addi    r4, r26, 0x0
    addi    r3, sp, 0xf4
    addi    r5, r5, 0x4d47
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    lis     r5, 0x544c
    addi    r28, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, sp, 0xf4
    addi    r5, r5, 0x5554
    li      r6, 0x0
    bl      getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
    addi    r27, r3, 0x0
    addi    r3, r26, 0x0
    addi    r4, sp, 0x77
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x77(sp)
    addi    r3, r26, 0x0
    addi    r4, sp, 0x76
    stw     r0, 0x128(r29)
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r7, 0x76(sp)
    addi    r3, r26, 0x0
    li      r4, 0x4
    rlwinm  r0, r7, 0, 29, 29
    neg     r5, r0
    clrlwi  r6, r7, 30
    subic   r0, r5, 0x1
    stw     r6, 0x12c(r29)
    subfe   r0, r0, r5
    stb     r0, 0x130(r29)
    extrwi  r0, r7, 2, 27
    stw     r0, 0x134(r29)
    lwz     r0, 0x134(r29)
    stw     r0, 0x138(r29)
    bl      align__20JSURandomInputStreamFl
    stw     r30, 0xb8(sp)
    lwz     r0, 0xb8(sp)
    stw     r0, 0x140(r29)
    stw     r31, 0xb4(sp)
    lwz     r0, 0xb4(sp)
    stw     r0, 0x13c(r29)
    stw     r31, 0x94(sp)
    stw     r31, 0x9c(sp)
    lwz     r0, 0x94(sp)
    stw     r31, 0xa4(sp)
    lwz     r4, 0x9c(sp)
    stw     r31, 0xac(sp)
    lwz     r3, 0xa4(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0xac(sp)
    stw     r4, 0xa0(sp)
    stw     r3, 0xa8(sp)
    stw     r0, 0x144(r29)
    lwz     r0, 0xa8(sp)
    stw     r0, 0x148(r29)
    lwz     r0, 0xa0(sp)
    stw     r0, 0x14c(r29)
    lwz     r0, 0x98(sp)
    stw     r0, 0x150(r29)
branch_0x802cc2d4:
    lwz     r3, 0x8(sp)
    li      r26, 0x0
    cmplwi  r28, 0x0
    stw     r26, 0xec(r3)
    li      r0, 0x1
    stb     r26, 0xfc(r3)
    stb     r0, 0xfd(r3)
    beq-    branch_0x802cc32c
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802cc318
    stw     r26, 0x28(r29)
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r26, 0x50(r29)
branch_0x802cc318:
    lwz     r4, 0x8(sp)
    stw     r29, 0xec(r4)
    lbz     r3, 0xfc(r4)
    addi    r0, r3, 0x1
    stb     r0, 0xfc(r4)
branch_0x802cc32c:
    cmplwi  r27, 0x0
    beq-    branch_0x802cc368
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802cc354
    addi    r3, r26, 0x0
    addi    r5, r27, 0x0
    li      r4, 0x0
    bl      storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
branch_0x802cc354:
    lwz     r4, 0x8(sp)
    stw     r26, 0x124(r4)
    lwz     r3, 0xec(r4)
    lwz     r4, 0x124(r4)
    bl      attachPalette__10JUTTextureFP10JUTPalette
branch_0x802cc368:
    lwz     r26, 0x8(sp)
    lfs     f0, 0x198(rtoc)
    mr      r3, r26
    stfs    f0, 0x104(r26)
    stfs    f0, 0x108(r26)
    stfs    f0, 0x10c(r26)
    stfs    f0, 0x110(r26)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f0, 0x198(rtoc)
    mr      r3, r26
    stfs    f0, 0x114(r26)
    stfs    f0, 0x118(r26)
    stfs    f0, 0x11c(r26)
    stfs    f0, 0x120(r26)
    bl      setBlendKonstAlpha__10J2DPictureFv
    mr      r3, r26
    lmw     r26, 0x1f8(sp)
    lwz     r0, 0x214(sp)
    addi    sp, sp, 0x210
    mtlr    r0
    blr


.globl __dt__10J2DPictureFv
__dt__10J2DPictureFv: # 0x802cc3bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    mr.     r28, r3
    beq-    branch_0x802cc464
    lis     r3, 0x803e
    addi    r0, r3, 0x5c8
    stw     r0, 0x0(r28)
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x802cc42c

branch_0x802cc3fc:
    addi    r0, r31, 0xec
    lwzx    r3, r28, r0
    cmplwi  r3, 0x0
    beq-    branch_0x802cc424
    addi    r0, r30, 0xfd
    lbzx    r0, r28, r0
    cmplwi  r0, 0x0
    beq-    branch_0x802cc424
    li      r4, 0x1
    bl      __dt__10JUTTextureFv
branch_0x802cc424:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x802cc42c:
    lbz     r0, 0xfc(r28)
    cmpw    r30, r0
    blt+    branch_0x802cc3fc
    lwz     r3, 0x124(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x802cc448
    bl      __dl__FPv
branch_0x802cc448:
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      __dt__7J2DPaneFv
    extsh.  r0, r29
    ble-    branch_0x802cc464
    mr      r3, r28
    bl      __dl__FPv
branch_0x802cc464:
    lwz     r0, 0x24(sp)
    mr      r3, r28
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl insert__10J2DPictureFP10JUTTextureUcf
insert__10J2DPictureFP10JUTTextureUcf: # 0x802cc488
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x802cc4c4
    lbz     r0, 0xfc(r31)
    cmplwi  r0, 0x4
    bge-    branch_0x802cc4c4
    clrlwi  r6, r5, 24
    cmplwi  r6, 0x4
    bge-    branch_0x802cc4c4
    cmplw   r6, r0
    ble-    branch_0x802cc4cc
branch_0x802cc4c4:
    li      r3, 0x0
    b       branch_0x802cc5a0

branch_0x802cc4cc:
    li      r9, 0x3
    b       branch_0x802cc50c

branch_0x802cc4d4:
    clrlslwi  r0, r9, 24, 2
    add     r7, r31, r0
    lwz     r5, 0xe8(r7)
    clrlwi  r8, r9, 24
    addi    r3, r8, 0xfc
    stw     r5, 0xec(r7)
    addi    r0, r8, 0xfd
    subi    r9, r9, 0x1
    lfs     f0, 0x100(r7)
    stfs    f0, 0x104(r7)
    lfs     f0, 0x110(r7)
    stfs    f0, 0x114(r7)
    lbzx    r3, r31, r3
    stbx    r3, r31, r0
branch_0x802cc50c:
    clrlwi  r0, r9, 24
    cmplw   r0, r6
    bgt+    branch_0x802cc4d4
    slwi    r0, r6, 2
    add     r5, r31, r0
    stw     r4, 0xec(r5)
    add     r3, r31, r6
    li      r0, 0x0
    stb     r0, 0xfd(r3)
    stfs    f1, 0x104(r5)
    stfs    f1, 0x114(r5)
    lbz     r0, 0xfc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802cc580
    lwz     r6, 0xec(r31)
    addi    r3, sp, 0x2c
    li      r4, 0x0
    lhz     r7, 0x3e(r6)
    li      r5, 0x0
    lhz     r6, 0x3c(r6)
    bl      set__7JUTRectFiiii
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0x1c(r31)
    stw     r0, 0x20(r31)
branch_0x802cc580:
    lbz     r4, 0xfc(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    stb     r0, 0xfc(r31)
    bl      setBlendKonstColor__10J2DPictureFv
    mr      r3, r31
    bl      setBlendKonstAlpha__10J2DPictureFv
    li      r3, 0x1
branch_0x802cc5a0:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl remove__10J2DPictureFUc
remove__10J2DPictureFUc: # 0x802cc5b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    clrlwi  r4, r4, 24
    lbz     r0, 0xfc(r3)
    cmplw   r0, r4
    ble-    branch_0x802cc5e8
    cmplwi  r0, 0x1
    bne-    branch_0x802cc5f0
branch_0x802cc5e8:
    li      r3, 0x0
    b       branch_0x802cc688

branch_0x802cc5f0:
    add     r3, r31, r4
    lbz     r0, 0xfd(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802cc614
    slwi    r0, r4, 2
    add     r3, r31, r0
    lwz     r3, 0xec(r3)
    li      r4, 0x1
    bl      __dt__10JUTTextureFv
branch_0x802cc614:
    mr      r8, r30
    b       branch_0x802cc65c

branch_0x802cc61c:
    slwi    r0, r4, 2
    add     r5, r31, r0
    clrlslwi  r0, r8, 24, 2
    lwz     r3, 0xf0(r5)
    add     r6, r31, r0
    stw     r3, 0xec(r6)
    clrlwi  r7, r8, 24
    addi    r3, r4, 0xfe
    lfs     f0, 0x108(r5)
    addi    r0, r7, 0xfd
    addi    r8, r8, 0x1
    stfs    f0, 0x104(r6)
    lfs     f0, 0x118(r5)
    stfs    f0, 0x114(r6)
    lbzx    r3, r31, r3
    stbx    r3, r31, r0
branch_0x802cc65c:
    lbz     r3, 0xfc(r31)
    clrlwi  r4, r8, 24
    subi    r0, r3, 0x1
    cmpw    r4, r0
    blt+    branch_0x802cc61c
    stb     r0, 0xfc(r31)
    mr      r3, r31
    bl      setBlendKonstColor__10J2DPictureFv
    mr      r3, r31
    bl      setBlendKonstAlpha__10J2DPictureFv
    li      r3, 0x1
branch_0x802cc688:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl changeTexture__10J2DPictureFPC7ResTIMGUc
changeTexture__10J2DPictureFPC7ResTIMGUc: # 0x802cc6a0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r5, 24
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    lbz     r7, 0xfc(r3)
    cmplw   r0, r7
    blt-    branch_0x802cc6c8
    li      r3, 0x0
    b       branch_0x802cc744

branch_0x802cc6c8:
    bge-    branch_0x802cc6dc
    slwi    r0, r0, 2
    add     r6, r3, r0
    lwz     r0, 0xec(r6)
    b       branch_0x802cc6e0

branch_0x802cc6dc:
    li      r0, 0x0
branch_0x802cc6e0:
    cmplwi  r0, 0x0
    beq-    branch_0x802cc6f0
    cmplwi  r4, 0x0
    bne-    branch_0x802cc6f8
branch_0x802cc6f0:
    li      r3, 0x0
    b       branch_0x802cc744

branch_0x802cc6f8:
    clrlwi  r0, r5, 24
    cmplw   r0, r7
    bge-    branch_0x802cc714
    slwi    r0, r0, 2
    add     r6, r3, r0
    lwz     r6, 0xec(r6)
    b       branch_0x802cc718

branch_0x802cc714:
    li      r6, 0x0
branch_0x802cc718:
    clrlwi  r0, r5, 24
    lwz     r31, 0x20(r6)
    cmplw   r0, r7
    bge-    branch_0x802cc738
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0xec(r3)
    b       branch_0x802cc73c

branch_0x802cc738:
    li      r3, 0x0
branch_0x802cc73c:
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    mr      r3, r31
branch_0x802cc744:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl drawSelf__10J2DPictureFii
drawSelf__10J2DPictureFii: # 0x802cc758
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


.globl drawSelf__10J2DPictureFiiPA3_A4_f
drawSelf__10J2DPictureFiiPA3_A4_f: # 0x802cc7c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    lwz     r0, 0xec(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802cc828
    lwz     r7, 0x18(r3)
    lwz     r0, 0x20(r3)
    lwz     r9, 0x14(r3)
    lwz     r8, 0x1c(r3)
    subf    r7, r7, r0
    lwz     r0, 0x134(r3)
    subf    r8, r9, r8
    stw     r0, 0x8(sp)
    lwz     r0, 0x138(r3)
    stw     r0, 0xc(sp)
    stw     r6, 0x10(sp)
    mr      r6, r8
    lwz     r9, 0x24(r3)
    lwz     r0, 0x28(r3)
    add     r4, r9, r4
    lwz     r8, 0x128(r3)
    lwz     r9, 0x12c(r3)
    add     r5, r0, r5
    lbz     r10, 0x130(r3)
    bl      drawFullSet__10J2DPictureFiiii10J2DBinding9J2DMirrorb11J2DWrapmode11J2DWrapmodePA3_A4_f
branch_0x802cc828:
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl drawFullSet__10J2DPictureFiiii10J2DBinding9J2DMirrorb11J2DWrapmode11J2DWrapmodePA3_A4_f
drawFullSet__10J2DPictureFiiii10J2DBinding9J2DMirrorb11J2DWrapmode11J2DWrapmodePA3_A4_f: # 0x802cc838
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r22, 0x98(sp)
    addi    r27, r4, 0x0
    lwz     r11, 0xc8(sp)
    addi    r26, r5, 0x0
    lwz     r0, 0xcc(sp)
    cmpwi   r11, 0x0
    lwz     r22, 0xd0(sp)
    addi    r31, r3, 0x0
    addi    r30, r6, 0x0
    addi    r29, r7, 0x0
    addi    r28, r9, 0x0
    addi    r25, r10, 0x0
    addi    r23, r27, 0x0
    addi    r24, r26, 0x0
    bne-    branch_0x802cc988
    clrlwi. r3, r25, 24
    bne-    branch_0x802cc8b0
    lwz     r4, 0xec(r31)
    lis     r3, 0x4330
    lfd     f1, 0x1a8(rtoc)
    lhz     r4, 0x3c(r4)
    xoris   r4, r4, 0x8000
    stw     r4, 0x94(sp)
    stw     r3, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f2, f0, f1
    b       branch_0x802cc8d4

branch_0x802cc8b0:
    lwz     r4, 0xec(r31)
    lis     r3, 0x4330
    lfd     f1, 0x1a8(rtoc)
    lhz     r4, 0x3e(r4)
    xoris   r4, r4, 0x8000
    stw     r4, 0x94(sp)
    stw     r3, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f2, f0, f1
branch_0x802cc8d4:
    rlwinm. r3, r8, 0, 28, 28
    beq-    branch_0x802cc918
    rlwinm. r3, r8, 0, 29, 29
    bne-    branch_0x802cc988
    xoris   r3, r30, 0x8000
    lfd     f1, 0x1a8(rtoc)
    stw     r3, 0x94(sp)
    lis     r3, 0x4330
    stw     r3, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802cc988
    fctiwz  f0, f2
    stfd    f0, 0x90(sp)
    lwz     r30, 0x94(sp)
    b       branch_0x802cc988

branch_0x802cc918:
    xoris   r3, r30, 0x8000
    lfd     f1, 0x1a8(rtoc)
    stw     r3, 0x94(sp)
    lis     r3, 0x4330
    stw     r3, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802cc988
    rlwinm. r3, r8, 0, 29, 29
    beq-    branch_0x802cc95c
    fctiwz  f0, f2
    add     r3, r27, r30
    stfd    f0, 0x90(sp)
    lwz     r4, 0x94(sp)
    subf    r3, r4, r3
    b       branch_0x802cc978

branch_0x802cc95c:
    fctiwz  f0, f2
    stfd    f0, 0x90(sp)
    lwz     r3, 0x94(sp)
    subf    r3, r3, r30
    srawi   r3, r3, 1
    addze   r3, r3
    add     r3, r27, r3
branch_0x802cc978:
    fctiwz  f0, f2
    mr      r23, r3
    stfd    f0, 0x90(sp)
    lwz     r30, 0x94(sp)
branch_0x802cc988:
    cmpwi   r0, 0x0
    bne-    branch_0x802cca98
    clrlwi. r0, r25, 24
    bne-    branch_0x802cc9c0
    lwz     r3, 0xec(r31)
    lis     r0, 0x4330
    lfd     f1, 0x1a8(rtoc)
    lhz     r3, 0x3e(r3)
    xoris   r3, r3, 0x8000
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f2, f0, f1
    b       branch_0x802cc9e4

branch_0x802cc9c0:
    lwz     r3, 0xec(r31)
    lis     r0, 0x4330
    lfd     f1, 0x1a8(rtoc)
    lhz     r3, 0x3c(r3)
    xoris   r3, r3, 0x8000
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f2, f0, f1
branch_0x802cc9e4:
    rlwinm. r0, r8, 0, 30, 30
    beq-    branch_0x802cca28
    clrlwi. r0, r8, 31
    bne-    branch_0x802cca98
    xoris   r0, r29, 0x8000
    lfd     f1, 0x1a8(rtoc)
    stw     r0, 0x94(sp)
    lis     r0, 0x4330
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802cca98
    fctiwz  f0, f2
    stfd    f0, 0x90(sp)
    lwz     r29, 0x94(sp)
    b       branch_0x802cca98

branch_0x802cca28:
    xoris   r0, r29, 0x8000
    lfd     f1, 0x1a8(rtoc)
    stw     r0, 0x94(sp)
    lis     r0, 0x4330
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802cca98
    clrlwi. r0, r8, 31
    beq-    branch_0x802cca6c
    fctiwz  f0, f2
    add     r0, r26, r29
    stfd    f0, 0x90(sp)
    lwz     r3, 0x94(sp)
    subf    r0, r3, r0
    b       branch_0x802cca88

branch_0x802cca6c:
    fctiwz  f0, f2
    stfd    f0, 0x90(sp)
    lwz     r0, 0x94(sp)
    subf    r0, r0, r29
    srawi   r0, r0, 1
    addze   r0, r0
    add     r0, r26, r0
branch_0x802cca88:
    fctiwz  f0, f2
    mr      r24, r0
    stfd    f0, 0x90(sp)
    lwz     r29, 0x94(sp)
branch_0x802cca98:
    clrlwi. r0, r25, 24
    bne-    branch_0x802ccb74
    rlwinm. r4, r28, 0, 30, 30
    beq-    branch_0x802ccac0
    rlwinm  r0, r8, 0, 29, 29
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    b       branch_0x802ccad4

branch_0x802ccac0:
    rlwinm  r0, r8, 0, 28, 28
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
branch_0x802ccad4:
    cmpwi   r4, 0x0
    beq-    branch_0x802ccaf4
    rlwinm  r3, r8, 0, 28, 28
    neg     r4, r3
    subic   r3, r4, 0x1
    subfe   r3, r3, r4
    clrlwi  r3, r3, 24
    b       branch_0x802ccb08

branch_0x802ccaf4:
    rlwinm  r3, r8, 0, 29, 29
    neg     r4, r3
    subic   r3, r4, 0x1
    subfe   r3, r3, r4
    clrlwi  r3, r3, 24
branch_0x802ccb08:
    clrlwi. r6, r28, 31
    beq-    branch_0x802ccb28
    clrlwi  r4, r8, 31
    neg     r5, r4
    subic   r4, r5, 0x1
    subfe   r4, r4, r5
    clrlwi  r4, r4, 24
    b       branch_0x802ccb3c

branch_0x802ccb28:
    rlwinm  r4, r8, 0, 30, 30
    neg     r5, r4
    subic   r4, r5, 0x1
    subfe   r4, r4, r5
    clrlwi  r4, r4, 24
branch_0x802ccb3c:
    cmpwi   r6, 0x0
    beq-    branch_0x802ccb5c
    rlwinm  r5, r8, 0, 30, 30
    neg     r6, r5
    subic   r5, r6, 0x1
    subfe   r5, r5, r6
    clrlwi  r5, r5, 24
    b       branch_0x802ccc44

branch_0x802ccb5c:
    clrlwi  r5, r8, 31
    neg     r6, r5
    subic   r5, r6, 0x1
    subfe   r5, r5, r6
    clrlwi  r5, r5, 24
    b       branch_0x802ccc44

branch_0x802ccb74:
    rlwinm. r4, r28, 0, 30, 30
    beq-    branch_0x802ccb94
    clrlwi  r0, r8, 31
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    b       branch_0x802ccba8

branch_0x802ccb94:
    rlwinm  r0, r8, 0, 30, 30
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
branch_0x802ccba8:
    cmpwi   r4, 0x0
    beq-    branch_0x802ccbc8
    rlwinm  r3, r8, 0, 30, 30
    neg     r4, r3
    subic   r3, r4, 0x1
    subfe   r3, r3, r4
    clrlwi  r3, r3, 24
    b       branch_0x802ccbdc

branch_0x802ccbc8:
    clrlwi  r3, r8, 31
    neg     r4, r3
    subic   r3, r4, 0x1
    subfe   r3, r3, r4
    clrlwi  r3, r3, 24
branch_0x802ccbdc:
    clrlwi. r6, r28, 31
    beq-    branch_0x802ccbfc
    rlwinm  r4, r8, 0, 28, 28
    neg     r5, r4
    subic   r4, r5, 0x1
    subfe   r4, r4, r5
    clrlwi  r4, r4, 24
    b       branch_0x802ccc10

branch_0x802ccbfc:
    rlwinm  r4, r8, 0, 29, 29
    neg     r5, r4
    subic   r4, r5, 0x1
    subfe   r4, r4, r5
    clrlwi  r4, r4, 24
branch_0x802ccc10:
    cmpwi   r6, 0x0
    beq-    branch_0x802ccc30
    rlwinm  r5, r8, 0, 29, 29
    neg     r6, r5
    subic   r5, r6, 0x1
    subfe   r5, r5, r6
    clrlwi  r5, r5, 24
    b       branch_0x802ccc44

branch_0x802ccc30:
    rlwinm  r5, r8, 0, 28, 28
    neg     r6, r5
    subic   r5, r6, 0x1
    subfe   r5, r5, r6
    clrlwi  r5, r5, 24
branch_0x802ccc44:
    lwz     r7, 0xec(r31)
    clrlwi  r6, r25, 24
    lfd     f2, 0x1a8(rtoc)
    cntlzw  r6, r6
    lhz     r9, 0x3c(r7)
    lhz     r8, 0x3e(r7)
    srwi    r7, r6, 5
    xoris   r9, r9, 0x8000
    xoris   r8, r8, 0x8000
    stw     r9, 0x94(sp)
    lis     r9, 0x4330
    stw     r8, 0x8c(sp)
    extrwi. r6, r6, 8, 19
    stw     r9, 0x90(sp)
    stw     r9, 0x88(sp)
    lfd     f1, 0x90(sp)
    lfd     f0, 0x88(sp)
    fsubs   f4, f1, f2
    fsubs   f0, f0, f2
    beq-    branch_0x802ccc9c
    mr      r8, r30
    b       branch_0x802ccca0

branch_0x802ccc9c:
    mr      r8, r29
branch_0x802ccca0:
    clrlwi. r6, r7, 24
    beq-    branch_0x802cccb0
    mr      r6, r29
    b       branch_0x802cccb4

branch_0x802cccb0:
    mr      r6, r30
branch_0x802cccb4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802cccfc
    lfs     f1, 0x19c(rtoc)
    clrlwi. r0, r3, 24
    stfs    f1, 0x78(sp)
    beq-    branch_0x802cccd4
    lfs     f1, 0x198(rtoc)
    b       branch_0x802cccf4

branch_0x802cccd4:
    xoris   r0, r8, 0x8000
    lfd     f2, 0x1a8(rtoc)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f4
branch_0x802cccf4:
    stfs    f1, 0x70(sp)
    b       branch_0x802ccd70

branch_0x802cccfc:
    clrlwi. r0, r3, 24
    beq-    branch_0x802ccd38
    xoris   r0, r8, 0x8000
    lfs     f3, 0x198(rtoc)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfd     f2, 0x1a8(rtoc)
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    stfs    f3, 0x70(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f4
    fsubs   f1, f3, f1
    stfs    f1, 0x78(sp)
    b       branch_0x802ccd70

branch_0x802ccd38:
    xoris   r0, r8, 0x8000
    lfd     f2, 0x1a8(rtoc)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfs     f3, 0x1a0(rtoc)
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f4
    fmuls   f1, f1, f3
    fsubs   f2, f3, f1
    fadds   f1, f3, f1
    stfs    f2, 0x78(sp)
    stfs    f1, 0x70(sp)
branch_0x802ccd70:
    clrlwi. r0, r4, 24
    beq-    branch_0x802ccdb8
    lfs     f1, 0x19c(rtoc)
    clrlwi. r0, r5, 24
    stfs    f1, 0x74(sp)
    beq-    branch_0x802ccd90
    lfs     f0, 0x198(rtoc)
    b       branch_0x802ccdb0

branch_0x802ccd90:
    xoris   r0, r6, 0x8000
    lfd     f2, 0x1a8(rtoc)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
branch_0x802ccdb0:
    stfs    f0, 0x6c(sp)
    b       branch_0x802cce2c

branch_0x802ccdb8:
    clrlwi. r0, r5, 24
    beq-    branch_0x802ccdf4
    xoris   r0, r6, 0x8000
    lfs     f3, 0x198(rtoc)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfd     f2, 0x1a8(rtoc)
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    stfs    f3, 0x6c(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    fsubs   f0, f3, f0
    stfs    f0, 0x74(sp)
    b       branch_0x802cce2c

branch_0x802ccdf4:
    xoris   r0, r6, 0x8000
    lfd     f2, 0x1a8(rtoc)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfs     f3, 0x1a0(rtoc)
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    fmuls   f0, f0, f3
    fsubs   f1, f3, f0
    fadds   f0, f3, f0
    stfs    f1, 0x74(sp)
    stfs    f0, 0x6c(sp)
branch_0x802cce2c:
    rlwinm. r0, r28, 0, 30, 30
    beq-    branch_0x802cce44
    addi    r3, r31, 0x0
    addi    r4, sp, 0x78
    addi    r5, sp, 0x70
    bl      swap__10J2DPictureFRfRf
branch_0x802cce44:
    clrlwi. r0, r28, 31
    beq-    branch_0x802cce5c
    addi    r3, r31, 0x0
    addi    r4, sp, 0x74
    addi    r5, sp, 0x6c
    bl      swap__10J2DPictureFRfRf
branch_0x802cce5c:
    clrlwi. r0, r25, 24
    bne-    branch_0x802ccea4
    lfs     f6, 0x6c(sp)
    mr      r3, r31
    lfs     f3, 0x70(sp)
    mr      r6, r30
    lfs     f2, 0x74(sp)
    lfs     f1, 0x78(sp)
    fmr     f7, f3
    fmr     f4, f2
    mr      r7, r29
    fmr     f5, f1
    fmr     f8, f6
    mr      r8, r22
    subf    r4, r27, r23
    subf    r5, r26, r24
    bl      drawTexCoord__10J2DPictureFiiiiffffffffPA3_A4_f
    b       branch_0x802ccee0

branch_0x802ccea4:
    lfs     f5, 0x70(sp)
    mr      r3, r31
    lfs     f4, 0x74(sp)
    mr      r6, r30
    lfs     f2, 0x6c(sp)
    lfs     f1, 0x78(sp)
    fmr     f7, f5
    fmr     f6, f2
    mr      r7, r29
    fmr     f3, f1
    fmr     f8, f4
    mr      r8, r22
    subf    r4, r27, r23
    subf    r5, r26, r24
    bl      drawTexCoord__10J2DPictureFiiiiffffffffPA3_A4_f
branch_0x802ccee0:
    lmw     r22, 0x98(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl draw__10J2DPictureFiiiibbb
draw__10J2DPictureFiiiibbb: # 0x802ccef4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r23, 0x7c(sp)
    mr      r26, r3
    addi    r23, r4, 0x0
    addi    r24, r5, 0x0
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    addi    r31, r10, 0x0
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802cd2d8
    li      r25, 0x0
    b       branch_0x802ccf58

branch_0x802ccf38:
    clrlwi  r4, r25, 24
    cmplw   r4, r3
    bge-    branch_0x802ccf54
    slwi    r3, r4, 2
    addi    r0, r3, 0xec
    lwzx    r3, r26, r0
    bl      load__10JUTTextureF11_GXTexMapID
branch_0x802ccf54:
    addi    r25, r25, 0x1
branch_0x802ccf58:
    lbz     r3, 0xfc(r26)
    clrlwi  r0, r25, 24
    cmplw   r0, r3
    blt+    branch_0x802ccf38
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
    lbz     r3, 0xfc(r26)
    bl      GXSetNumTexGens
    mr      r3, r26
    lwz     r12, 0x0(r26)
    addi    r4, r23, 0x0
    addi    r5, r24, 0x0
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    addi    r3, r26, 0x54
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    lbz     r0, 0xcc(r26)
    mr      r3, r26
    stb     r0, 0xcd(r26)
    bl      setTevMode__10J2DPictureFv
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    li      r4, 0x0
    lis     r3, 0xcc01
    sth     r4, -0x8000(r3)
    clrlwi. r0, r31, 24
    sth     r4, -0x8000(r3)
    sth     r4, -0x8000(r3)
    lwz     r0, 0x144(r26)
    stw     r0, -0x8000(r3)
    bne-    branch_0x802cd048
    clrlwi. r0, r29, 24
    beq-    branch_0x802cd01c
    lis     r3, 0x1
    subi    r4, r3, 0x8000
branch_0x802cd01c:
    lis     r3, 0xcc01
    clrlwi. r0, r30, 24
    sth     r4, -0x8000(r3)
    beq-    branch_0x802cd038
    lis     r3, 0x1
    subi    r0, r3, 0x8000
    b       branch_0x802cd03c

branch_0x802cd038:
    li      r0, 0x0
branch_0x802cd03c:
    lis     r3, 0xcc01
    sth     r0, -0x8000(r3)
    b       branch_0x802cd080

branch_0x802cd048:
    clrlwi. r0, r29, 24
    beq-    branch_0x802cd058
    lis     r3, 0x1
    subi    r4, r3, 0x8000
branch_0x802cd058:
    lis     r3, 0xcc01
    clrlwi. r0, r30, 24
    sth     r4, -0x8000(r3)
    beq-    branch_0x802cd070
    li      r0, 0x0
    b       branch_0x802cd078

branch_0x802cd070:
    lis     r3, 0x1
    subi    r0, r3, 0x8000
branch_0x802cd078:
    lis     r3, 0xcc01
    sth     r0, -0x8000(r3)
branch_0x802cd080:
    extsh   r0, r27
    lis     r3, 0xcc01
    sth     r0, -0x8000(r3)
    li      r4, 0x0
    clrlwi. r0, r31, 24
    sth     r4, -0x8000(r3)
    sth     r4, -0x8000(r3)
    lwz     r0, 0x148(r26)
    stw     r0, -0x8000(r3)
    bne-    branch_0x802cd0e8
    clrlwi. r0, r29, 24
    beq-    branch_0x802cd0b4
    b       branch_0x802cd0bc

branch_0x802cd0b4:
    lis     r3, 0x1
    subi    r4, r3, 0x8000
branch_0x802cd0bc:
    lis     r3, 0xcc01
    clrlwi. r0, r30, 24
    sth     r4, -0x8000(r3)
    beq-    branch_0x802cd0d8
    lis     r3, 0x1
    subi    r0, r3, 0x8000
    b       branch_0x802cd0dc

branch_0x802cd0d8:
    li      r0, 0x0
branch_0x802cd0dc:
    lis     r3, 0xcc01
    sth     r0, -0x8000(r3)
    b       branch_0x802cd120

branch_0x802cd0e8:
    clrlwi. r0, r29, 24
    beq-    branch_0x802cd0f8
    lis     r3, 0x1
    subi    r4, r3, 0x8000
branch_0x802cd0f8:
    lis     r3, 0xcc01
    clrlwi. r0, r30, 24
    sth     r4, -0x8000(r3)
    beq-    branch_0x802cd114
    lis     r3, 0x1
    subi    r0, r3, 0x8000
    b       branch_0x802cd118

branch_0x802cd114:
    li      r0, 0x0
branch_0x802cd118:
    lis     r3, 0xcc01
    sth     r0, -0x8000(r3)
branch_0x802cd120:
    extsh   r0, r27
    lis     r4, 0xcc01
    sth     r0, -0x8000(r4)
    extsh   r3, r28
    li      r5, 0x0
    sth     r3, -0x8000(r4)
    clrlwi. r0, r31, 24
    sth     r5, -0x8000(r4)
    lwz     r0, 0x150(r26)
    stw     r0, -0x8000(r4)
    bne-    branch_0x802cd18c
    clrlwi. r0, r29, 24
    beq-    branch_0x802cd158
    b       branch_0x802cd160

branch_0x802cd158:
    lis     r3, 0x1
    subi    r5, r3, 0x8000
branch_0x802cd160:
    lis     r3, 0xcc01
    clrlwi. r0, r30, 24
    sth     r5, -0x8000(r3)
    beq-    branch_0x802cd178
    li      r0, 0x0
    b       branch_0x802cd180

branch_0x802cd178:
    lis     r3, 0x1
    subi    r0, r3, 0x8000
branch_0x802cd180:
    lis     r3, 0xcc01
    sth     r0, -0x8000(r3)
    b       branch_0x802cd1c8

branch_0x802cd18c:
    clrlwi. r0, r29, 24
    beq-    branch_0x802cd198
    b       branch_0x802cd1a0

branch_0x802cd198:
    lis     r3, 0x1
    subi    r5, r3, 0x8000
branch_0x802cd1a0:
    lis     r3, 0xcc01
    clrlwi. r0, r30, 24
    sth     r5, -0x8000(r3)
    beq-    branch_0x802cd1bc
    lis     r3, 0x1
    subi    r0, r3, 0x8000
    b       branch_0x802cd1c0

branch_0x802cd1bc:
    li      r0, 0x0
branch_0x802cd1c0:
    lis     r3, 0xcc01
    sth     r0, -0x8000(r3)
branch_0x802cd1c8:
    li      r5, 0x0
    lis     r4, 0xcc01
    sth     r5, -0x8000(r4)
    extsh   r3, r28
    clrlwi. r0, r31, 24
    sth     r3, -0x8000(r4)
    sth     r5, -0x8000(r4)
    lwz     r0, 0x14c(r26)
    stw     r0, -0x8000(r4)
    bne-    branch_0x802cd22c
    clrlwi. r0, r29, 24
    beq-    branch_0x802cd200
    lis     r3, 0x1
    subi    r5, r3, 0x8000
branch_0x802cd200:
    lis     r3, 0xcc01
    clrlwi. r0, r30, 24
    sth     r5, -0x8000(r3)
    beq-    branch_0x802cd218
    li      r0, 0x0
    b       branch_0x802cd220

branch_0x802cd218:
    lis     r3, 0x1
    subi    r0, r3, 0x8000
branch_0x802cd220:
    lis     r3, 0xcc01
    sth     r0, -0x8000(r3)
    b       branch_0x802cd268

branch_0x802cd22c:
    clrlwi. r0, r29, 24
    beq-    branch_0x802cd238
    b       branch_0x802cd240

branch_0x802cd238:
    lis     r3, 0x1
    subi    r5, r3, 0x8000
branch_0x802cd240:
    lis     r3, 0xcc01
    clrlwi. r0, r30, 24
    sth     r5, -0x8000(r3)
    beq-    branch_0x802cd258
    li      r0, 0x0
    b       branch_0x802cd260

branch_0x802cd258:
    lis     r3, 0x1
    subi    r0, r3, 0x8000
branch_0x802cd260:
    lis     r3, 0xcc01
    sth     r0, -0x8000(r3)
branch_0x802cd268:
    addi    r3, sp, 0x40
    bl      PSMTXIdentity
    addi    r3, sp, 0x40
    li      r4, 0x0
    bl      GXLoadPosMtxImm
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
    li      r3, 0xd
    li      r4, 0x0
    bl      GXSetVtxDesc
branch_0x802cd2d8:
    lmw     r23, 0x7c(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl drawTexCoord__10J2DPictureFiiiiffffffffPA3_A4_f
drawTexCoord__10J2DPictureFiiiiffffffffPA3_A4_f: # 0x802cd2ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    fmr     f31, f8
    stfd    f30, 0xe0(sp)
    fmr     f30, f7
    stfd    f29, 0xd8(sp)
    fmr     f29, f6
    stfd    f28, 0xd0(sp)
    fmr     f28, f5
    stfd    f27, 0xc8(sp)
    fmr     f27, f4
    stfd    f26, 0xc0(sp)
    fmr     f26, f3
    stfd    f25, 0xb8(sp)
    fmr     f25, f2
    stfd    f24, 0xb0(sp)
    fmr     f24, f1
    stmw    r25, 0x94(sp)
    mr      r31, r3
    mr      r25, r4
    mr      r26, r5
    mr      r29, r6
    mr      r28, r7
    addi    r27, r8, 0x0
    li      r30, 0x0
    b       branch_0x802cd37c

branch_0x802cd35c:
    clrlwi  r4, r30, 24
    cmplw   r4, r3
    bge-    branch_0x802cd378
    slwi    r3, r4, 2
    addi    r0, r3, 0xec
    lwzx    r3, r31, r0
    bl      load__10JUTTextureF11_GXTexMapID
branch_0x802cd378:
    addi    r30, r30, 0x1
branch_0x802cd37c:
    lbz     r3, 0xfc(r31)
    clrlwi  r0, r30, 24
    cmplw   r0, r3
    blt+    branch_0x802cd35c
    add     r29, r25, r29
    add     r28, r26, r28
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
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    lbz     r3, 0xfc(r31)
    bl      GXSetNumTexGens
    addi    r3, r27, 0x0
    addi    r4, r31, 0x84
    addi    r5, sp, 0x60
    bl      PSMTXConcat
    addi    r3, sp, 0x60
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    mr      r3, r31
    bl      setTevMode__10J2DPictureFv
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    extsh   r30, r25
    lis     r12, 0xcc01
    sth     r30, -0x8000(r12)
    extsh   r11, r26
    li      r10, 0x0
    sth     r11, -0x8000(r12)
    extsh   r9, r29
    extsh   r8, r28
    sth     r10, -0x8000(r12)
    li      r3, 0x0
    li      r4, 0xd
    lwz     r0, 0x144(r31)
    li      r5, 0x1
    li      r6, 0x2
    stw     r0, -0x8000(r12)
    li      r7, 0xf
    stfs    f24, -0x8000(r12)
    stfs    f25, -0x8000(r12)
    sth     r9, -0x8000(r12)
    sth     r11, -0x8000(r12)
    sth     r10, -0x8000(r12)
    lwz     r0, 0x148(r31)
    stw     r0, -0x8000(r12)
    stfs    f26, -0x8000(r12)
    stfs    f27, -0x8000(r12)
    sth     r9, -0x8000(r12)
    sth     r8, -0x8000(r12)
    sth     r10, -0x8000(r12)
    lwz     r0, 0x150(r31)
    stw     r0, -0x8000(r12)
    stfs    f30, -0x8000(r12)
    stfs    f31, -0x8000(r12)
    sth     r30, -0x8000(r12)
    sth     r8, -0x8000(r12)
    sth     r10, -0x8000(r12)
    lwz     r0, 0x14c(r31)
    stw     r0, -0x8000(r12)
    stfs    f28, -0x8000(r12)
    stfs    f29, -0x8000(r12)
    bl      GXSetVtxAttrFmt
    lmw     r25, 0x94(sp)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    lfd     f26, 0xc0(sp)
    lfd     f25, 0xb8(sp)
    lfd     f24, 0xb0(sp)
    addi    sp, sp, 0xf0
    blr


.globl setTevMode__10J2DPictureFv
setTevMode__10J2DPictureFv: # 0x802cd4e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    li      r28, 0x0
    b       branch_0x802cd52c

branch_0x802cd50c:
    clrlwi  r3, r28, 24
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    addi    r28, r28, 0x1
branch_0x802cd52c:
    lbz     r0, 0xfc(r30)
    clrlwi  r3, r28, 24
    cmplw   r3, r0
    blt+    branch_0x802cd50c
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, 0x1b0(rtoc)
    addi    r4, sp, 0x58
    li      r3, 0x4
    stw     r0, 0x54(sp)
    lbz     r0, 0xcd(r30)
    stb     r0, 0x57(sp)
    lwz     r0, 0x54(sp)
    stw     r0, 0x58(sp)
    bl      GXSetChanAmbColor
    li      r28, 0x0
    b       branch_0x802cd5a8

branch_0x802cd590:
    clrlwi  r3, r28, 24
    addi    r4, r3, 0x0
    addi    r5, r3, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    addi    r28, r28, 0x1
branch_0x802cd5a8:
    lbz     r0, 0xfc(r30)
    clrlwi  r3, r28, 24
    cmplw   r3, r0
    blt+    branch_0x802cd590
    li      r0, -0x1
    stw     r0, 0x4c(sp)
    addi    r4, sp, 0x50
    li      r3, 0x3
    lwz     r0, 0x4c(sp)
    stw     r0, 0x50(sp)
    bl      GXSetTevColor
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    lwz     r3, 0xec(r30)
    lwz     r0, 0x38(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x802cd618
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    b       branch_0x802cd630

branch_0x802cd618:
    li      r3, 0x0
    li      r4, 0x3
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
branch_0x802cd630:
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
    lwz     r0, 0x154(r30)
    addi    r4, sp, 0x48
    li      r3, 0x0
    stw     r0, 0x48(sp)
    bl      GXSetTevKColor
    lwz     r0, 0x158(r30)
    addi    r4, sp, 0x44
    li      r3, 0x2
    stw     r0, 0x44(sp)
    bl      GXSetTevKColor
    li      r31, 0x1
    b       branch_0x802cd754

branch_0x802cd698:
    clrlwi  r29, r31, 24
    clrlslwi  r28, r31, 24, 2
    addi    r3, r29, 0x0
    subfic  r4, r28, 0x20
    bl      GXSetTevKColorSel
    addi    r3, r29, 0x0
    subfic  r4, r28, 0x22
    bl      GXSetTevKAlphaSel
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x8
    li      r6, 0xe
    li      r7, 0xf
    bl      GXSetTevColorIn
    addi    r0, r28, 0xec
    lwzx    r3, r30, r0
    lwz     r0, 0x38(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x802cd700
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x4
    li      r6, 0x6
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    b       branch_0x802cd718

branch_0x802cd700:
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x3
    li      r6, 0x6
    li      r7, 0x7
    bl      GXSetTevAlphaIn
branch_0x802cd718:
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
    addi    r31, r31, 0x1
branch_0x802cd754:
    lbz     r0, 0xfc(r30)
    clrlwi  r3, r31, 24
    cmplw   r3, r0
    blt+    branch_0x802cd698
    lwz     r0, 0x140(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802cd780
    lwz     r3, 0x13c(r30)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x802cd82c
branch_0x802cd780:
    clrlwi  r28, r31, 24
    addi    r3, r28, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    lwz     r0, 0x140(r30)
    addi    r4, sp, 0x40
    li      r3, 0x1
    stw     r0, 0x40(sp)
    bl      GXSetTevColor
    lwz     r0, 0x13c(r30)
    addi    r4, sp, 0x3c
    li      r3, 0x2
    stw     r0, 0x3c(sp)
    bl      GXSetTevColor
    addi    r3, r28, 0x0
    li      r4, 0x2
    li      r5, 0x4
    li      r6, 0x0
    li      r7, 0xf
    bl      GXSetTevColorIn
    addi    r3, r28, 0x0
    li      r4, 0x1
    li      r5, 0x2
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    addi    r31, r31, 0x1
branch_0x802cd82c:
    lbz     r0, 0xcd(r30)
    cmplwi  r0, 0xff
    bne-    branch_0x802cd878
    lwz     r3, 0x144(r30)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x802cd878
    lwz     r3, 0x148(r30)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x802cd878
    lwz     r3, 0x14c(r30)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x802cd878
    lwz     r3, 0x150(r30)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x802cd8fc
branch_0x802cd878:
    clrlwi  r28, r31, 24
    addi    r3, r28, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    addi    r3, r28, 0x0
    li      r4, 0xf
    li      r5, 0x0
    li      r6, 0xa
    li      r7, 0xf
    bl      GXSetTevColorIn
    addi    r3, r28, 0x0
    li      r4, 0x7
    li      r5, 0x0
    li      r6, 0x5
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    addi    r31, r31, 0x1
branch_0x802cd8fc:
    mr      r3, r31
    bl      GXSetNumTevStages
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0xf
    bl      GXSetBlendMode
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl swap__10J2DPictureFRfRf
swap__10J2DPictureFRfRf: # 0x802cd938
    lfs     f1, 0x0(r4)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x0(r4)
    stfs    f1, 0x0(r5)
    blr


.globl setBlendKonstColor__10J2DPictureFv
setBlendKonstColor__10J2DPictureFv: # 0x802cd94c
    stwu    sp, -0x28(sp)
    li      r7, 0x0
    li      r8, 0x1
    lbz     r6, 0xfc(r3)
    lfs     f3, 0x19c(rtoc)
    lfs     f2, 0x1b4(rtoc)
    lfs     f1, 0x198(rtoc)
    b       branch_0x802cda64

branch_0x802cd96c:
    clrlwi  r0, r8, 24
    lfs     f8, 0x19c(rtoc)
    cmplwi  r0, 0x0
    li      r5, 0x0
    ble-    branch_0x802cda18
    cmplwi  r0, 0x8
    subi    r0, r8, 0x8
    ble-    branch_0x802cd9f0
    clrlwi  r0, r0, 24
    b       branch_0x802cd9e4

branch_0x802cd994:
    clrlslwi  r4, r5, 24, 2
    addi    r4, r4, 0x104
    add     r4, r3, r4
    lfs     f0, 0x0(r4)
    addi    r5, r5, 0x8
    lfs     f4, 0x4(r4)
    fadds   f8, f8, f0
    lfs     f0, 0x8(r4)
    lfs     f7, 0xc(r4)
    lfs     f6, 0x10(r4)
    fadds   f8, f8, f4
    lfs     f5, 0x14(r4)
    lfs     f4, 0x18(r4)
    fadds   f8, f8, f0
    lfs     f0, 0x1c(r4)
    fadds   f8, f8, f7
    fadds   f8, f8, f6
    fadds   f8, f8, f5
    fadds   f8, f8, f4
    fadds   f8, f8, f0
branch_0x802cd9e4:
    clrlwi  r4, r5, 24
    cmplw   r4, r0
    blt+    branch_0x802cd994
branch_0x802cd9f0:
    clrlwi  r0, r8, 24
    b       branch_0x802cda0c

branch_0x802cd9f8:
    clrlslwi  r4, r5, 24, 2
    addi    r4, r4, 0x104
    lfsx    f0, r3, r4
    addi    r5, r5, 0x1
    fadds   f8, f8, f0
branch_0x802cda0c:
    clrlwi  r4, r5, 24
    cmplw   r4, r0
    blt+    branch_0x802cd9f8
branch_0x802cda18:
    clrlwi  r5, r8, 24
    clrlslwi  r4, r8, 24, 2
    addi    r0, r4, 0x104
    lfsx    f0, r3, r0
    fadds   f0, f8, f0
    fcmpu   cr0, f3, f0
    beq-    branch_0x802cda60
    fdivs   f0, f8, f0
    subi    r0, r5, 0x1
    slwi    r0, r0, 3
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r4, 0x24(sp)
    clrlwi  r4, r4, 24
    slw     r0, r4, r0
    or      r7, r7, r0
branch_0x802cda60:
    addi    r8, r8, 0x1
branch_0x802cda64:
    clrlwi  r0, r8, 24
    cmplw   r0, r6
    blt+    branch_0x802cd96c
    stw     r7, 0x14(sp)
    lwz     r0, 0x14(sp)
    stw     r0, 0x154(r3)
    addi    sp, sp, 0x28
    blr


.globl setBlendKonstAlpha__10J2DPictureFv
setBlendKonstAlpha__10J2DPictureFv: # 0x802cda84
    stwu    sp, -0x28(sp)
    li      r7, 0x0
    li      r8, 0x1
    lbz     r6, 0xfc(r3)
    lfs     f3, 0x19c(rtoc)
    lfs     f2, 0x1b4(rtoc)
    lfs     f1, 0x198(rtoc)
    b       branch_0x802cdb9c

branch_0x802cdaa4:
    clrlwi  r0, r8, 24
    lfs     f8, 0x19c(rtoc)
    cmplwi  r0, 0x0
    li      r5, 0x0
    ble-    branch_0x802cdb50
    cmplwi  r0, 0x8
    subi    r0, r8, 0x8
    ble-    branch_0x802cdb28
    clrlwi  r0, r0, 24
    b       branch_0x802cdb1c

branch_0x802cdacc:
    clrlslwi  r4, r5, 24, 2
    addi    r4, r4, 0x114
    add     r4, r3, r4
    lfs     f0, 0x0(r4)
    addi    r5, r5, 0x8
    lfs     f4, 0x4(r4)
    fadds   f8, f8, f0
    lfs     f0, 0x8(r4)
    lfs     f7, 0xc(r4)
    lfs     f6, 0x10(r4)
    fadds   f8, f8, f4
    lfs     f5, 0x14(r4)
    lfs     f4, 0x18(r4)
    fadds   f8, f8, f0
    lfs     f0, 0x1c(r4)
    fadds   f8, f8, f7
    fadds   f8, f8, f6
    fadds   f8, f8, f5
    fadds   f8, f8, f4
    fadds   f8, f8, f0
branch_0x802cdb1c:
    clrlwi  r4, r5, 24
    cmplw   r4, r0
    blt+    branch_0x802cdacc
branch_0x802cdb28:
    clrlwi  r0, r8, 24
    b       branch_0x802cdb44

branch_0x802cdb30:
    clrlslwi  r4, r5, 24, 2
    addi    r4, r4, 0x114
    lfsx    f0, r3, r4
    addi    r5, r5, 0x1
    fadds   f8, f8, f0
branch_0x802cdb44:
    clrlwi  r4, r5, 24
    cmplw   r4, r0
    blt+    branch_0x802cdb30
branch_0x802cdb50:
    clrlwi  r5, r8, 24
    clrlslwi  r4, r8, 24, 2
    addi    r0, r4, 0x114
    lfsx    f0, r3, r0
    fadds   f0, f8, f0
    fcmpu   cr0, f3, f0
    beq-    branch_0x802cdb98
    fdivs   f0, f8, f0
    subi    r0, r5, 0x1
    slwi    r0, r0, 3
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r4, 0x24(sp)
    clrlwi  r4, r4, 24
    slw     r0, r4, r0
    or      r7, r7, r0
branch_0x802cdb98:
    addi    r8, r8, 0x1
branch_0x802cdb9c:
    clrlwi  r0, r8, 24
    cmplw   r0, r6
    blt+    branch_0x802cdaa4
    stw     r7, 0x14(sp)
    lwz     r0, 0x14(sp)
    stw     r0, 0x158(r3)
    addi    sp, sp, 0x28
    blr

