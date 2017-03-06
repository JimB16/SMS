
.globl init__7JAIDataFv
init__7JAIDataFv: # 0x80303220
    li      r0, 0x0
    stw     r0, 0x100(r3)
    stw     r0, 0x84(r3)
    stw     r0, 0x17c(r3)
    stb     r0, 0x1b0(r3)
    stw     r0, 0x1f8(r3)
    stw     r0, 0x1b4(r3)
    stw     r0, 0x1b8(r3)
    blr


.globl initLinkBuffer__7JAIDataFP13JAILinkBufferUl
initLinkBuffer__7JAIDataFP13JAILinkBufferUl: # 0x80303244
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    mr      r29, r4
    addi    r28, r3, 0x0
    addi    r26, r5, 0x0
    lwz     r4, -0x7450(r13)
    lwz     r0, 0x8(r29)
    mulli   r30, r4, 0x1c
    stw     r0, 0x0(r29)
    stw     r6, 0x4(r29)
    mr      r4, r30
    lwz     r3, 0x8(r29)
    stw     r6, 0x2c(r3)
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x44
    stw     r0, 0x30(r3)
    lwz     r0, 0x1f4(r28)
    stw     r0, -0x5cc0(r13)
    lwz     r3, 0x8(r29)
    stb     r6, 0x1(r3)
    lwz     r3, 0x1f4(r28)
    bl      allocHeap__8JAIBasicFUl
    lwz     r4, 0x8(r29)
    subi    r26, r26, 0x1
    li      r31, 0x1
    stw     r3, 0x1c(r4)
    li      r27, 0x44
    b       branch_0x80303328

branch_0x803032c0:
    subi    r0, r31, 0x1
    lwz     r4, 0x8(r29)
    mulli   r0, r0, 0x44
    add     r3, r4, r0
    addi    r0, r27, 0x2c
    stwx    r3, r4, r0
    addi    r0, r31, 0x1
    mulli   r0, r0, 0x44
    lwz     r4, 0x8(r29)
    add     r3, r4, r0
    addi    r0, r27, 0x30
    stwx    r3, r4, r0
    addi    r0, r27, 0x1
    li      r5, 0x0
    lwz     r3, 0x1f4(r28)
    mr      r4, r30
    stw     r3, -0x5cc0(r13)
    lwz     r3, 0x8(r29)
    stbx    r5, r3, r0
    lwz     r3, 0x1f4(r28)
    bl      allocHeap__8JAIBasicFUl
    lwz     r4, 0x8(r29)
    addi    r0, r27, 0x1c
    addi    r27, r27, 0x44
    stwx    r3, r4, r0
    addi    r31, r31, 0x1
branch_0x80303328:
    cmplw   r31, r26
    blt+    branch_0x803032c0
    subi    r0, r31, 0x1
    lwz     r3, 0x8(r29)
    mulli   r0, r0, 0x44
    mulli   r26, r31, 0x44
    add     r0, r3, r0
    add     r3, r3, r26
    stw     r0, 0x2c(r3)
    li      r5, 0x0
    addi    r4, r30, 0x0
    lwz     r0, 0x8(r29)
    add     r3, r0, r26
    stw     r5, 0x30(r3)
    lwz     r0, 0x1f4(r28)
    stw     r0, -0x5cc0(r13)
    lwz     r0, 0x8(r29)
    add     r3, r0, r26
    stb     r5, 0x1(r3)
    lwz     r3, 0x1f4(r28)
    bl      allocHeap__8JAIBasicFUl
    lwz     r0, 0x8(r29)
    add     r4, r0, r26
    stw     r3, 0x1c(r4)
    lwz     r0, 0x34(sp)
    lmw     r26, 0x18(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl initSeqParaLinkBuffer__7JAIDataFv
initSeqParaLinkBuffer__7JAIDataFv: # 0x8030339c
    mflr    r0
    li      r7, 0x1
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    lwz     r3, 0x1c4(r3)
    stw     r3, 0x1bc(r31)
    li      r3, 0x185c
    stw     r0, 0x1c0(r31)
    lwz     r4, 0x1c4(r31)
    stw     r0, 0x1854(r4)
    lwz     r4, 0x1c4(r31)
    addi    r0, r4, 0x185c
    stw     r0, 0x1858(r4)
    b       branch_0x80303420

branch_0x803033e8:
    subi    r0, r7, 0x1
    lwz     r6, 0x1c4(r31)
    mulli   r0, r0, 0x185c
    add     r5, r6, r0
    addi    r0, r7, 0x1
    addi    r4, r3, 0x1854
    stwx    r5, r6, r4
    mulli   r4, r0, 0x185c
    lwz     r5, 0x1c4(r31)
    addi    r0, r3, 0x1858
    add     r4, r5, r4
    stwx    r4, r5, r0
    addi    r7, r7, 0x1
    addi    r3, r3, 0x185c
branch_0x80303420:
    lwz     r4, -0x74b4(r13)
    subi    r0, r4, 0x1
    cmplw   r7, r0
    blt+    branch_0x803033e8
    subi    r0, r7, 0x1
    lwz     r3, 0x1c4(r31)
    mulli   r0, r0, 0x185c
    mulli   r5, r7, 0x185c
    add     r0, r3, r0
    add     r3, r3, r5
    stw     r0, 0x1854(r3)
    li      r4, 0x0
    li      r29, 0x0
    lwz     r0, 0x1c4(r31)
    li      r30, 0x0
    add     r3, r0, r5
    stw     r4, 0x1858(r3)
    b       branch_0x80303480

branch_0x80303468:
    lwz     r0, 0x1c4(r31)
    addi    r3, r31, 0x0
    add     r4, r0, r30
    bl      initSeqParameter__7JAIDataFP15JAISeqParameter
    addi    r29, r29, 0x1
    addi    r30, r30, 0x185c
branch_0x80303480:
    lwz     r0, -0x74b4(r13)
    cmplw   r29, r0
    blt+    branch_0x80303468
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl initSeqParameter__7JAIDataFP15JAISeqParameter
initSeqParameter__7JAIDataFP15JAISeqParameter: # 0x803034a8
    stwu    sp, -0x30(sp)
    li      r0, -0x1
    li      r3, 0x0
    stw     r31, 0x2c(sp)
    li      r31, 0x0
    li      r5, 0x0
    stw     r0, 0x1758(r4)
    li      r0, 0x0
    li      r6, 0x0
    lfs     f2, 0x4d8(rtoc)
    stfs    f2, 0x8(r4)
    stw     r0, 0x10(r4)
    stb     r0, 0x1755(r4)
    sth     r0, 0x1756(r4)
    stw     r0, 0x175c(r4)
    stw     r0, 0x1760(r4)
    stw     r0, 0x1764(r4)
    stw     r0, 0x1768(r4)
    stw     r0, 0x1770(r4)
    stw     r0, 0x176c(r4)
    stw     r0, 0x1774(r4)
    stw     r0, 0x1778(r4)
    stw     r0, 0x177c(r4)
    stw     r0, 0x1780(r4)
    stw     r0, 0x1784(r4)
    stw     r0, 0x1788(r4)
    stw     r0, 0x178c(r4)
    lfs     f1, 0x4dc(rtoc)
    lfs     f0, 0x4e0(rtoc)
    b       branch_0x803035ec

branch_0x80303520:
    add     r7, r4, r6
    stfs    f2, 0x758(r7)
    add     r11, r4, r31
    addi    r0, r5, 0x1790
    stfs    f1, 0x958(r7)
    add     r9, r4, r3
    li      r8, 0x0
    stfs    f2, 0xb58(r7)
    addi    r31, r31, 0x1
    addi    r3, r3, 0x20
    stfs    f0, 0xd58(r7)
    addi    r5, r5, 0x4
    addi    r6, r6, 0x10
    stfs    f0, 0xf58(r7)
    stfs    f0, 0x1158(r7)
    stfs    f2, 0x754(r7)
    stfs    f1, 0x954(r7)
    stfs    f2, 0xb54(r7)
    stfs    f0, 0xd54(r7)
    stfs    f0, 0xf54(r7)
    stfs    f0, 0x1154(r7)
    stw     r8, 0x760(r7)
    stw     r8, 0x960(r7)
    stw     r8, 0xb60(r7)
    stw     r8, 0xd60(r7)
    stw     r8, 0xf60(r7)
    stw     r8, 0x1160(r7)
    lbz     r7, 0x1830(r11)
    insrwi  r7, r8, 1, 24
    stb     r7, 0x1830(r11)
    lbz     r7, 0x1830(r11)
    insrwi  r7, r8, 1, 26
    stb     r7, 0x1830(r11)
    stb     r8, 0x1810(r11)
    stwx    r8, r4, r0
    sth     r8, 0x1354(r9)
    sth     r8, 0x1356(r9)
    sth     r8, 0x1358(r9)
    sth     r8, 0x135a(r9)
    sth     r8, 0x135c(r9)
    sth     r8, 0x135e(r9)
    sth     r8, 0x1360(r9)
    sth     r8, 0x1362(r9)
    sth     r8, 0x1364(r9)
    sth     r8, 0x1366(r9)
    sth     r8, 0x1368(r9)
    sth     r8, 0x136a(r9)
    sth     r8, 0x136c(r9)
    sth     r8, 0x136e(r9)
    sth     r8, 0x1370(r9)
    sth     r8, 0x1372(r9)
branch_0x803035ec:
    lwz     r0, -0x74bc(r13)
    cmplw   r31, r0
    blt+    branch_0x80303520
    lfs     f2, 0x4e0(rtoc)
    li      r6, 0x0
    li      r7, 0x0
    stfs    f2, 0x18(r4)
    li      r3, 0x0
    stw     r6, 0x20(r4)
    stfs    f2, 0x28(r4)
    stw     r6, 0x30(r4)
    stfs    f2, 0x38(r4)
    stw     r6, 0x40(r4)
    stfs    f2, 0x48(r4)
    stw     r6, 0x50(r4)
    stfs    f2, 0x58(r4)
    stw     r6, 0x60(r4)
    stfs    f2, 0x68(r4)
    stw     r6, 0x70(r4)
    stfs    f2, 0x78(r4)
    stw     r6, 0x80(r4)
    stfs    f2, 0x88(r4)
    stw     r6, 0x90(r4)
    stfs    f2, 0x98(r4)
    stw     r6, 0xa0(r4)
    stfs    f2, 0xa8(r4)
    stw     r6, 0xb0(r4)
    stfs    f2, 0xb8(r4)
    stw     r6, 0xc0(r4)
    stfs    f2, 0xc8(r4)
    stw     r6, 0xd0(r4)
    stfs    f2, 0xd8(r4)
    stw     r6, 0xe0(r4)
    stfs    f2, 0xe8(r4)
    stw     r6, 0xf0(r4)
    stfs    f2, 0xf8(r4)
    stw     r6, 0x100(r4)
    stfs    f2, 0x108(r4)
    stw     r6, 0x110(r4)
    lfs     f1, 0x4d8(rtoc)
    lfs     f0, 0x4dc(rtoc)
    b       branch_0x803036dc

branch_0x80303694:
    add     r5, r4, r3
    stfs    f1, 0x118(r5)
    addi    r7, r7, 0x1
    addi    r3, r3, 0x10
    stfs    f0, 0x258(r5)
    stfs    f1, 0x398(r5)
    stfs    f2, 0x4d8(r5)
    stfs    f2, 0x618(r5)
    stfs    f1, 0x114(r5)
    stfs    f0, 0x254(r5)
    stfs    f1, 0x394(r5)
    stfs    f2, 0x4d4(r5)
    stfs    f2, 0x614(r5)
    stw     r6, 0x120(r5)
    stw     r6, 0x260(r5)
    stw     r6, 0x3a0(r5)
    stw     r6, 0x4e0(r5)
    stw     r6, 0x620(r5)
branch_0x803036dc:
    lwz     r5, -0x74b8(r13)
    addi    r0, r5, 0xc
    cmplw   r7, r0
    blt+    branch_0x80303694
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    blr


.globl initSePara__7JAIDataFP14JAISeParameter
initSePara__7JAIDataFP14JAISeParameter: # 0x803036f8
    lfs     f1, -0x7468(r13)
    li      r3, 0x0
    lfs     f0, 0x4e4(rtoc)
    li      r0, 0x2
    mtctr   r0
    fdivs   f3, f1, f0
    lfs     f2, 0x4d8(rtoc)
    lfs     f1, 0x4dc(rtoc)
    mr      r9, r3
    lfs     f0, 0x4e0(rtoc)
    addi    r8, r3, 0x0
    addi    r7, r3, 0x0
    addi    r6, r3, 0x0
    addi    r5, r3, 0x0
    addi    r0, r3, 0x0
branch_0x80303734:
    add     r10, r4, r3
    stfs    f2, 0x128(r10)
    addi    r3, r3, 0x10
    stfs    f1, 0x1a8(r10)
    stfs    f2, 0x228(r10)
    stfs    f0, 0x2a8(r10)
    stfs    f0, 0x328(r10)
    stfs    f3, 0x3a8(r10)
    stw     r9, 0x130(r10)
    stw     r8, 0x1b0(r10)
    stw     r7, 0x230(r10)
    stw     r6, 0x2b0(r10)
    stw     r5, 0x330(r10)
    stw     r0, 0x3b0(r10)
    add     r10, r4, r3
    addi    r3, r3, 0x10
    stfs    f2, 0x128(r10)
    stfs    f1, 0x1a8(r10)
    stfs    f2, 0x228(r10)
    stfs    f0, 0x2a8(r10)
    stfs    f0, 0x328(r10)
    stfs    f3, 0x3a8(r10)
    stw     r9, 0x130(r10)
    stw     r8, 0x1b0(r10)
    stw     r7, 0x230(r10)
    stw     r6, 0x2b0(r10)
    stw     r5, 0x330(r10)
    stw     r0, 0x3b0(r10)
    add     r10, r4, r3
    addi    r3, r3, 0x10
    stfs    f2, 0x128(r10)
    stfs    f1, 0x1a8(r10)
    stfs    f2, 0x228(r10)
    stfs    f0, 0x2a8(r10)
    stfs    f0, 0x328(r10)
    stfs    f3, 0x3a8(r10)
    stw     r9, 0x130(r10)
    stw     r8, 0x1b0(r10)
    stw     r7, 0x230(r10)
    stw     r6, 0x2b0(r10)
    stw     r5, 0x330(r10)
    stw     r0, 0x3b0(r10)
    add     r10, r4, r3
    addi    r3, r3, 0x10
    stfs    f2, 0x128(r10)
    stfs    f1, 0x1a8(r10)
    stfs    f2, 0x228(r10)
    stfs    f0, 0x2a8(r10)
    stfs    f0, 0x328(r10)
    stfs    f3, 0x3a8(r10)
    stw     r9, 0x130(r10)
    stw     r8, 0x1b0(r10)
    stw     r7, 0x230(r10)
    stw     r6, 0x2b0(r10)
    stw     r5, 0x330(r10)
    stw     r0, 0x3b0(r10)
    bdnz+      branch_0x80303734
    lfs     f0, 0x4e8(rtoc)
    li      r0, 0x0
    stfs    f0, 0x198(r4)
    stfs    f0, 0x218(r4)
    stfs    f0, 0x298(r4)
    stfs    f0, 0x318(r4)
    stfs    f0, 0x398(r4)
    stfs    f0, 0x418(r4)
    stw     r0, 0x424(r4)
    stw     r0, 0x428(r4)
    stw     r0, 0x42c(r4)
    stw     r0, 0x430(r4)
    stw     r0, 0x434(r4)
    stw     r0, 0x438(r4)
    sth     r0, 0x20(r4)
    blr


.globl initStreamParaLinkBuffer__7JAIDataFv
initStreamParaLinkBuffer__7JAIDataFv: # 0x80303858
    mflr    r0
    li      r7, 0x1
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    lwz     r3, 0x1dc(r3)
    stw     r3, 0x1d4(r31)
    li      r3, 0x3e0
    stw     r0, 0x1d8(r31)
    lwz     r4, 0x1dc(r31)
    stw     r0, 0x3d8(r4)
    lwz     r4, 0x1dc(r31)
    addi    r0, r4, 0x3e0
    stw     r0, 0x3dc(r4)
    b       branch_0x803038dc

branch_0x803038a4:
    subi    r0, r7, 0x1
    lwz     r6, 0x1dc(r31)
    mulli   r0, r0, 0x3e0
    add     r5, r6, r0
    addi    r0, r7, 0x1
    addi    r4, r3, 0x3d8
    stwx    r5, r6, r4
    mulli   r4, r0, 0x3e0
    lwz     r5, 0x1dc(r31)
    addi    r0, r3, 0x3dc
    add     r4, r5, r4
    stwx    r4, r5, r0
    addi    r7, r7, 0x1
    addi    r3, r3, 0x3e0
branch_0x803038dc:
    lwz     r4, -0x74ac(r13)
    subi    r0, r4, 0x1
    cmplw   r7, r0
    blt+    branch_0x803038a4
    subi    r0, r7, 0x1
    lwz     r3, 0x1dc(r31)
    mulli   r0, r0, 0x3e0
    mulli   r5, r7, 0x3e0
    add     r0, r3, r0
    add     r3, r3, r5
    stw     r0, 0x3d8(r3)
    li      r4, 0x0
    li      r29, 0x0
    lwz     r0, 0x1dc(r31)
    li      r30, 0x0
    add     r3, r0, r5
    stw     r4, 0x3dc(r3)
    b       branch_0x8030393c

branch_0x80303924:
    lwz     r0, 0x1dc(r31)
    addi    r3, r31, 0x0
    add     r4, r0, r30
    bl      initStreamParameter__7JAIDataFP18JAIStreamParameter
    addi    r29, r29, 0x1
    addi    r30, r30, 0x3e0
branch_0x8030393c:
    lwz     r0, -0x74ac(r13)
    cmplw   r29, r0
    blt+    branch_0x80303924
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl initStreamParameter__7JAIDataFP18JAIStreamParameter
initStreamParameter__7JAIDataFP18JAIStreamParameter: # 0x80303964
    li      r5, 0x0
    stb     r5, 0x0(r4)
    li      r0, 0xd
    mtctr   r0
    addi    r3, r5, 0x0
    stw     r5, 0x4(r4)
    stw     r5, 0x8(r4)
    stw     r5, 0xc(r4)
    lfs     f1, 0x4d8(rtoc)
    lfs     f0, 0x4dc(rtoc)
branch_0x8030398c:
    add     r6, r4, r3
    stfs    f1, 0x18(r6)
    addi    r3, r3, 0x10
    stfs    f1, 0x14(r6)
    stw     r5, 0x20(r6)
    stfs    f1, 0x158(r6)
    stfs    f1, 0x154(r6)
    stw     r5, 0x160(r6)
    stfs    f0, 0x298(r6)
    stfs    f0, 0x294(r6)
    stw     r5, 0x2a0(r6)
    bdnz+      branch_0x8030398c
    blr


.globl initSeqTrackInfoParameter__7JAIDataFUl
initSeqTrackInfoParameter__7JAIDataFUl: # 0x803039c0
    mulli   r4, r4, 0x50
    lwz     r0, 0x180(r3)
    lfs     f2, 0x4d8(rtoc)
    add     r5, r0, r4
    stfs    f2, 0xc(r5)
    li      r5, 0x0
    li      r6, 0x0
    lwz     r0, 0x180(r3)
    lfs     f0, 0x4dc(rtoc)
    add     r7, r0, r4
    stfs    f0, 0x18(r7)
    lwz     r0, 0x180(r3)
    add     r7, r0, r4
    stfs    f2, 0x10(r7)
    lwz     r0, 0x180(r3)
    lfs     f1, 0x4e0(rtoc)
    add     r7, r0, r4
    stfs    f1, 0x14(r7)
    lwz     r0, 0x180(r3)
    add     r7, r0, r4
    stfs    f1, 0x1c(r7)
    lwz     r0, 0x180(r3)
    add     r7, r0, r4
    stfs    f2, 0x20(r7)
    lfs     f0, 0x4ec(rtoc)
    b       branch_0x80303a94

branch_0x80303a28:
    lwz     r7, 0x180(r3)
    li      r8, 0x0
    addi    r5, r5, 0x1
    addi    r0, r7, 0x24
    lwzx    r7, r4, r0
    stfsx   f2, r7, r6
    lwz     r7, 0x180(r3)
    addi    r0, r7, 0x30
    lwzx    r7, r4, r0
    stfsx   f0, r7, r6
    lwz     r7, 0x180(r3)
    addi    r0, r7, 0x28
    lwzx    r7, r4, r0
    stfsx   f2, r7, r6
    lwz     r7, 0x180(r3)
    addi    r0, r7, 0x2c
    lwzx    r7, r4, r0
    stfsx   f1, r7, r6
    lwz     r7, 0x180(r3)
    addi    r0, r7, 0x34
    lwzx    r7, r4, r0
    stfsx   f1, r7, r6
    lwz     r7, 0x180(r3)
    addi    r0, r7, 0x44
    lwzx    r7, r4, r0
    stwx    r8, r7, r6
    addi    r6, r6, 0x4
branch_0x80303a94:
    lwz     r0, -0x74bc(r13)
    cmplw   r5, r0
    blt+    branch_0x80303a28
    blr


.globl initStreamUpdateParameter__7JAIDataFv
initStreamUpdateParameter__7JAIDataFv: # 0x80303aa4
    lwz     r4, 0x184(r3)
    li      r0, 0x0
    stb     r0, 0x0(r4)
    lwz     r4, 0x184(r3)
    stb     r0, 0x1(r4)
    lwz     r4, 0x184(r3)
    stb     r0, 0x2(r4)
    lfs     f0, 0x4d8(rtoc)
    lwz     r4, 0x184(r3)
    stfs    f0, 0x4(r4)
    lwz     r4, 0x184(r3)
    stfs    f0, 0x8(r4)
    lfs     f0, 0x4dc(rtoc)
    lwz     r4, 0x184(r3)
    stfs    f0, 0xc(r4)
    lwz     r4, 0x184(r3)
    stw     r0, 0x10(r4)
    lwz     r3, 0x184(r3)
    stw     r0, 0x14(r3)
    blr


.globl setSeMovePara__7JAIDataFP14JAIMoveParaSet
setSeMovePara__7JAIDataFP14JAIMoveParaSet: # 0x80303af4
    li      r7, 0x0
    b       branch_0x80303b48

branch_0x80303afc:
    clrlslwi  r0, r7, 24, 4
    add     r6, r4, r0
    lwz     r3, 0xc(r6)
    addi    r5, r6, 0xc
    cmplwi  r3, 0x0
    beq-    branch_0x80303b44
    subi    r0, r3, 0x1
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x80303b34
    lfs     f0, 0x0(r6)
    stfs    f0, 0x4(r6)
    b       branch_0x80303b44

branch_0x80303b34:
    lfs     f1, 0x4(r6)
    lfs     f0, 0x8(r6)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r6)
branch_0x80303b44:
    addi    r7, r7, 0x1
branch_0x80303b48:
    clrlwi  r0, r7, 24
    cmplwi  r0, 0x8
    blt+    branch_0x80303afc
    blr


.globl moveParameter__7JAIDataFP14JAIMoveParaSet
moveParameter__7JAIDataFP14JAIMoveParaSet: # 0x80303b58
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x80303b6c
    li      r3, 0x0
    blr

branch_0x80303b6c:
    subic.  r0, r3, 0x1
    stw     r0, 0xc(r4)
    beq-    branch_0x80303b90
    lfs     f1, 0x4(r4)
    li      r3, 0x1
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r4)
    blr

branch_0x80303b90:
    lfs     f0, 0x0(r4)
    li      r3, 0x0
    stfs    f0, 0x4(r4)
    blr


.globl checkOnMemory__7JAIDataFUlPUc
checkOnMemory__7JAIDataFUlPUc: # 0x80303ba0
    lwz     r7, -0x74a8(r13)
    li      r9, 0x0
    b       branch_0x80303bfc

branch_0x80303bac:
    clrlwi  r0, r9, 24
    lwz     r6, 0x1ec(r3)
    mulli   r8, r0, 0x14
    add     r6, r6, r8
    lwz     r0, 0x8(r6)
    cmplw   r4, r0
    bne-    branch_0x80303bf8
    lbz     r0, 0x0(r6)
    cmplwi  r0, 0x1
    bne-    branch_0x80303bdc
    li      r3, -0x1
    blr

branch_0x80303bdc:
    cmplwi  r5, 0x0
    beq-    branch_0x80303be8
    stb     r9, 0x0(r5)
branch_0x80303be8:
    lwz     r0, 0x1ec(r3)
    add     r3, r0, r8
    lwz     r3, 0x4(r3)
    blr

branch_0x80303bf8:
    addi    r9, r9, 0x1
branch_0x80303bfc:
    clrlwi  r0, r9, 24
    cmplw   r0, r7
    blt+    branch_0x80303bac
    lwz     r7, 0x1b8(r3)
    li      r9, 0x0
    b       branch_0x80303c54

branch_0x80303c14:
    clrlwi  r0, r9, 24
    lwz     r6, 0x1f0(r3)
    mulli   r8, r0, 0x14
    addi    r0, r8, 0x8
    lwzx    r0, r6, r0
    cmplw   r4, r0
    bne-    branch_0x80303c50
    cmplwi  r5, 0x0
    beq-    branch_0x80303c40
    li      r0, 0xff
    stb     r0, 0x0(r5)
branch_0x80303c40:
    lwz     r0, 0x1f0(r3)
    add     r3, r0, r8
    lwz     r3, 0x4(r3)
    blr

branch_0x80303c50:
    addi    r9, r9, 0x1
branch_0x80303c54:
    clrlwi  r0, r9, 24
    cmplw   r0, r7
    blt+    branch_0x80303c14
    li      r3, 0x0
    blr


.globl checkUsefulAutoHeapPosition__7JAIDataFv
checkUsefulAutoHeapPosition__7JAIDataFv: # 0x80303c68
    lwz     r6, -0x74a8(r13)
    li      r7, 0x0
    li      r4, 0x0
    cmplwi  r6, 0x0
    mtctr   r6
    li      r8, -0x1
    li      r9, 0x0
    ble-    branch_0x80303cac
branch_0x80303c88:
    lwz     r5, 0x1ec(r3)
    addi    r0, r4, 0x8
    lwzx    r5, r5, r0
    addis   r0, r5, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x80303cac
    addi    r7, r7, 0x1
    addi    r4, r4, 0x14
    bdnz+      branch_0x80303c88
branch_0x80303cac:
    cmplw   r7, r6
    bne-    branch_0x80303d10
    cmplwi  r6, 0x0
    mtctr   r6
    li      r7, 0x0
    li      r4, 0x0
    ble-    branch_0x80303d00
branch_0x80303cc8:
    lwz     r0, 0x1ec(r3)
    add     r5, r0, r4
    lwz     r6, 0xc(r5)
    cmplw   r8, r6
    ble-    branch_0x80303cf4
    lwz     r5, 0x10(r5)
    addis   r0, r5, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x80303cf4
    addi    r9, r7, 0x0
    addi    r8, r6, 0x0
branch_0x80303cf4:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x14
    bdnz+      branch_0x80303cc8
branch_0x80303d00:
    addis   r0, r8, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x80303d10
    mr      r7, r9
branch_0x80303d10:
    clrlwi  r3, r7, 24
    blr


.globl getFreeAutoHeapPointer__7JAIDataFUcUl
getFreeAutoHeapPointer__7JAIDataFUcUl: # 0x80303d18
    clrlwi  r0, r4, 24
    lwz     r4, 0x1ec(r3)
    mulli   r6, r0, 0x14
    add     r4, r4, r6
    stw     r5, 0x8(r4)
    lwz     r4, 0x1ec(r3)
    lwz     r0, 0x1b4(r3)
    add     r4, r4, r6
    lwz     r7, 0x4(r4)
    stw     r0, 0x10(r4)
    lwz     r0, 0x1ec(r3)
    lwz     r5, 0x1b4(r3)
    add     r4, r0, r6
    stw     r5, 0xc(r4)
    lwz     r4, 0x1b4(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x1b4(r3)
    mr      r3, r7
    blr


.globl releaseAutoHeapPointer__7JAIDataFUc
releaseAutoHeapPointer__7JAIDataFUc: # 0x80303d64
    clrlwi  r0, r4, 24
    cmplwi  r0, 0xff
    beqlr-    

    mulli   r0, r0, 0x14
    lwz     r3, 0x1ec(r3)
    add     r3, r3, r0
    li      r0, -0x1
    stw     r0, 0x10(r3)
    blr


.globl getFreeStayHeapPointer__7JAIDataFUlUl
getFreeStayHeapPointer__7JAIDataFUlUl: # 0x80303d88
    lwz     r8, 0x1b8(r3)
    lwz     r9, -0x74a4(r13)
    cmplw   r8, r9
    blt-    branch_0x80303da0
    li      r3, 0x0
    blr

branch_0x80303da0:
    lwz     r12, 0x1f0(r3)
    mulli   r11, r8, 0x14
    lwz     r0, -0x749c(r13)
    addi    r6, r12, 0x4
    lwzx    r10, r6, r11
    lwz     r6, 0x0(r6)
    add     r7, r4, r10
    add     r0, r6, r0
    cmplw   r7, r0
    bge-    branch_0x80303e34
    cmplw   r8, r9
    bge-    branch_0x80303e34
    add     r6, r12, r11
    stw     r5, 0x8(r6)
    clrlwi. r0, r4, 27
    clrrwi  r5, r4, 5
    lwz     r0, 0x1b8(r3)
    addi    r6, r10, 0x0
    lwz     r4, 0x1f0(r3)
    mulli   r0, r0, 0x14
    add     r4, r4, r0
    lwz     r0, 0x4(r4)
    add     r5, r5, r0
    beq-    branch_0x80303e04
    addi    r5, r5, 0x20
branch_0x80303e04:
    lwz     r4, 0x1b8(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x1b8(r3)
    lwz     r4, 0x1b8(r3)
    lwz     r0, -0x74a4(r13)
    cmplw   r4, r0
    bge-    branch_0x80303e38
    mulli   r0, r4, 0x14
    lwz     r3, 0x1f0(r3)
    add     r3, r3, r0
    stw     r5, 0x4(r3)
    b       branch_0x80303e38

branch_0x80303e34:
    li      r6, 0x0
branch_0x80303e38:
    mr      r3, r6
    blr


.globl setAutoHeapLoadedFlag__7JAIDataFUcUc
setAutoHeapLoadedFlag__7JAIDataFUcUc: # 0x80303e40
    clrlwi  r0, r4, 24
    lwz     r3, 0x1ec(r3)
    mulli   r0, r0, 0x14
    stbx    r5, r3, r0
    blr


.globl getInfoPointer__7JAIDataFUlPPv
getInfoPointer__7JAIDataFUlPPv: # 0x80303e54
    mflr    r0
    lis     r6, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x252c
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    mr      r28, r4
    stw     r0, 0x0(r5)
    lbz     r0, 0x1b0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80303ee8
    clrrwi  r4, r28, 30
    lis     r0, 0xc000
    cmpw    r4, r0
    addi    r30, r3, 0x88
    beq-    branch_0x80303ee0
    bge-    branch_0x80303ebc
    lis     r3, 0x8000
    addi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x80303f44
    b       branch_0x80303ed8

branch_0x80303ebc:
    cmpwi   r4, 0x0
    beq-    branch_0x80303ec8
    b       branch_0x80303f44

branch_0x80303ec8:
    extrwi  r0, r28, 8, 12
    mr      r29, r0
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    b       branch_0x80303f44

branch_0x80303ed8:
    li      r29, 0x10
    b       branch_0x80303f44

branch_0x80303ee0:
    li      r29, 0x11
    b       branch_0x80303f44

branch_0x80303ee8:
    clrrwi  r5, r28, 30
    lis     r0, 0xc000
    cmpw    r5, r0
    beq-    branch_0x80303f3c
    bge-    branch_0x80303f10
    lis     r4, 0x8000
    addi    r0, r4, 0x1
    cmpw    r5, r0
    bge-    branch_0x80303f44
    b       branch_0x80303f30

branch_0x80303f10:
    cmpwi   r5, 0x0
    beq-    branch_0x80303f1c
    b       branch_0x80303f44

branch_0x80303f1c:
    extrwi  r0, r28, 8, 12
    mr      r29, r0
    addi    r30, r3, 0x88
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    b       branch_0x80303f44

branch_0x80303f30:
    addi    r30, r3, 0xc
    li      r29, 0x10
    b       branch_0x80303f44

branch_0x80303f3c:
    addi    r30, r3, 0x104
    li      r29, 0x11
branch_0x80303f44:
    lwz     r0, 0x78(r30)
    clrlwi  r4, r28, 22
    cmplwi  r0, 0x0
    beq-    branch_0x80303f84
    slwi    r0, r29, 1
    add     r3, r30, r0
    lhz     r0, 0x2(r3)
    cmplw   r4, r0
    bge-    branch_0x80303f84
    slwi    r0, r29, 2
    add     r3, r30, r0
    lwz     r3, 0x30(r3)
    slwi    r0, r4, 4
    add     r0, r3, r0
    stw     r0, 0x0(r31)
    b       branch_0x80303f8c

branch_0x80303f84:
    li      r0, 0x0
    stw     r0, 0x0(r31)
branch_0x80303f8c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl initData__7JAIDataFv
initData__7JAIDataFv: # 0x80303fac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    mr      r30, r3
    addi    r4, r30, 0x88
    lwz     r5, -0x7498(r13)
    bl      initInfoDataWork__7JAIDataFP13JAISoundTablePc
    lbz     r0, 0x1b0(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x80303ff8
    lwz     r5, -0x7494(r13)
    addi    r3, r30, 0x0
    addi    r4, r30, 0xc
    bl      initInfoDataWork__7JAIDataFP13JAISoundTablePc
    lwz     r5, -0x7490(r13)
    addi    r3, r30, 0x0
    addi    r4, r30, 0x104
    bl      initInfoDataWork__7JAIDataFP13JAISoundTablePc
branch_0x80303ff8:
    lwz     r3, 0x1f4(r30)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80304078
    li      r0, 0x0
    stw     r0, -0x74c0(r13)
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x8030406c

branch_0x8030401c:
    li      r27, 0x0
    li      r26, 0x0
    li      r29, 0x0
    b       branch_0x80304048

branch_0x8030402c:
    lwz     r3, 0x1f4(r30)
    addi    r26, r26, 0x1
    lwz     r0, 0x68(r3)
    lwzx    r3, r28, r0
    lbzx    r0, r3, r29
    addi    r29, r29, 0x2
    add     r27, r27, r0
branch_0x80304048:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    cmplw   r26, r3
    blt+    branch_0x8030402c
    lwz     r0, -0x74c0(r13)
    cmplw   r0, r27
    bge-    branch_0x80304064
    stw     r27, -0x74c0(r13)
branch_0x80304064:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x4
branch_0x8030406c:
    lwz     r0, -0x74c8(r13)
    cmplw   r31, r0
    blt+    branch_0x8030401c
branch_0x80304078:
    lwz     r0, -0x7458(r13)
    lwz     r3, 0x1f4(r30)
    mulli   r4, r0, 0x1c
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x230(r30)
    li      r0, 0x0
    li      r5, 0x1
    lwz     r4, 0x230(r30)
    li      r3, 0x1c
    stw     r4, 0x228(r30)
    stw     r0, 0x22c(r30)
    lwz     r4, 0x230(r30)
    stw     r0, 0x0(r4)
    lwz     r4, 0x230(r30)
    addi    r0, r4, 0x1c
    stw     r0, 0x4(r4)
    b       branch_0x803040f0

branch_0x803040bc:
    subi    r0, r5, 0x1
    lwz     r6, 0x230(r30)
    mulli   r0, r0, 0x1c
    add     r4, r6, r0
    addi    r0, r5, 0x1
    stwx    r4, r6, r3
    mulli   r4, r0, 0x1c
    lwz     r6, 0x230(r30)
    addi    r0, r3, 0x4
    add     r4, r6, r4
    stwx    r4, r6, r0
    addi    r5, r5, 0x1
    addi    r3, r3, 0x1c
branch_0x803040f0:
    lwz     r4, -0x7458(r13)
    subi    r0, r4, 0x1
    cmplw   r5, r0
    blt+    branch_0x803040bc
    subi    r0, r5, 0x1
    lwz     r3, 0x230(r30)
    mulli   r0, r0, 0x1c
    mulli   r5, r5, 0x1c
    add     r0, r3, r0
    stwx    r0, r3, r5
    li      r4, 0x0
    lwz     r0, 0x230(r30)
    add     r3, r0, r5
    stw     r4, 0x4(r3)
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    mulli   r4, r3, 0xc
    lwz     r3, 0x1f4(r30)
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x1e8(r30)
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    slwi    r4, r3, 2
    lwz     r3, 0x1f4(r30)
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x8(r30)
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    slwi    r4, r3, 2
    lwz     r3, 0x1f4(r30)
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x1e4(r30)
    li      r26, 0x0
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x80304214

branch_0x80304174:
    lwz     r3, 0x1f4(r30)
    lwz     r4, -0x74c4(r13)
    lwz     r12, 0x4(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x1e4(r30)
    addi    r0, r28, 0x8
    stwx    r3, r4, r29
    mr      r3, r30
    lwz     r5, 0x1e4(r30)
    lwz     r4, 0x1e8(r30)
    lwzx    r5, r5, r29
    stwx    r5, r4, r0
    lwz     r0, 0x1e8(r30)
    lwz     r5, -0x74c4(r13)
    add     r4, r0, r28
    bl      initLinkBuffer__7JAIDataFP13JAILinkBufferUl
    lwz     r0, -0x74c4(r13)
    lwz     r3, 0x1f4(r30)
    mulli   r4, r0, 0xc
    bl      allocHeap__8JAIBasicFUl
    lwz     r5, 0x8(r30)
    li      r6, 0x0
    li      r4, 0x0
    stwx    r3, r5, r29
    li      r5, 0x0
    b       branch_0x803041fc

branch_0x803041e4:
    lwz     r3, 0x8(r30)
    addi    r0, r4, 0x8
    addi    r6, r6, 0x1
    lwzx    r3, r29, r3
    addi    r4, r4, 0xc
    stwx    r5, r3, r0
branch_0x803041fc:
    lwz     r0, -0x74c4(r13)
    cmplw   r6, r0
    blt+    branch_0x803041e4
    addi    r26, r26, 0x1
    addi    r28, r28, 0xc
    addi    r29, r29, 0x4
branch_0x80304214:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    cmplw   r26, r3
    blt+    branch_0x80304174
    lwz     r0, -0x74c0(r13)
    lwz     r3, 0x1f4(r30)
    mulli   r4, r0, 0x18
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x0(r30)
    li      r5, 0x0
    li      r3, 0x0
    lfs     f2, 0x4d8(rtoc)
    li      r4, 0xff
    lfs     f1, 0x4e0(rtoc)
    lfs     f0, 0x4dc(rtoc)
    b       branch_0x80304278

branch_0x80304250:
    lwz     r0, 0x0(r30)
    addi    r5, r5, 0x1
    add     r6, r0, r3
    stfs    f2, 0x4(r6)
    addi    r3, r3, 0x18
    stfs    f2, 0x8(r6)
    stfs    f1, 0xc(r6)
    stfs    f0, 0x10(r6)
    stb     r4, 0x0(r6)
    stfs    f1, 0x14(r6)
branch_0x80304278:
    lwz     r0, -0x74c0(r13)
    cmplw   r5, r0
    blt+    branch_0x80304250
    lwz     r3, 0x1f4(r30)
    lwz     r4, -0x74b4(r13)
    lwz     r12, 0x4(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r3, 0x208(r30)
    lwz     r3, 0x1f4(r30)
    lwz     r4, -0x74b0(r13)
    lwz     r12, 0x4(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r3, 0x20c(r30)
    addi    r3, r30, 0x0
    addi    r4, r30, 0x210
    lwz     r0, 0x208(r30)
    stw     r0, 0x218(r30)
    lwz     r5, -0x74b4(r13)
    bl      initLinkBuffer__7JAIDataFP13JAILinkBufferUl
    lwz     r0, 0x20c(r30)
    addi    r3, r30, 0x0
    addi    r4, r30, 0x21c
    stw     r0, 0x224(r30)
    lwz     r5, -0x74b0(r13)
    bl      initLinkBuffer__7JAIDataFP13JAILinkBufferUl
    lwz     r0, -0x74b4(r13)
    lwz     r3, 0x1f4(r30)
    mulli   r4, r0, 0x185c
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x1c4(r30)
    mr      r3, r30
    bl      initSeqParaLinkBuffer__7JAIDataFv
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    lwz     r0, -0x74c4(r13)
    mullw   r0, r0, r3
    lwz     r3, 0x1f4(r30)
    mulli   r4, r0, 0x444
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x1d0(r30)
    li      r0, 0x0
    li      r31, 0x1
    lwz     r3, 0x1d0(r30)
    li      r28, 0x444
    stw     r3, 0x1c8(r30)
    stw     r0, 0x1cc(r30)
    lwz     r3, 0x1d0(r30)
    stw     r0, 0x43c(r3)
    lwz     r3, 0x1d0(r30)
    addi    r0, r3, 0x444
    stw     r0, 0x440(r3)
    b       branch_0x8030438c

branch_0x80304354:
    subi    r0, r31, 0x1
    lwz     r5, 0x1d0(r30)
    mulli   r0, r0, 0x444
    add     r4, r5, r0
    addi    r0, r31, 0x1
    addi    r3, r28, 0x43c
    stwx    r4, r5, r3
    mulli   r3, r0, 0x444
    lwz     r4, 0x1d0(r30)
    addi    r0, r28, 0x440
    add     r3, r4, r3
    stwx    r3, r4, r0
    addi    r31, r31, 0x1
    addi    r28, r28, 0x444
branch_0x8030438c:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    lwz     r0, -0x74c4(r13)
    mullw   r3, r0, r3
    subi    r0, r3, 0x1
    cmplw   r31, r0
    blt+    branch_0x80304354
    subi    r0, r31, 0x1
    lwz     r3, 0x1d0(r30)
    mulli   r0, r0, 0x444
    mulli   r5, r31, 0x444
    add     r0, r3, r0
    add     r3, r3, r5
    stw     r0, 0x43c(r3)
    li      r4, 0x0
    lwz     r0, 0x1d0(r30)
    add     r3, r0, r5
    stw     r4, 0x440(r3)
    lwz     r0, -0x74ac(r13)
    lwz     r3, 0x1f4(r30)
    mulli   r4, r0, 0x3e0
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x1dc(r30)
    mr      r3, r30
    bl      initStreamParaLinkBuffer__7JAIDataFv
    li      r26, 0x0
    li      r28, 0x0
    b       branch_0x80304410

branch_0x803043f8:
    lwz     r0, 0x1d0(r30)
    addi    r3, r30, 0x0
    add     r4, r0, r28
    bl      initSePara__7JAIDataFP14JAISeParameter
    addi    r26, r26, 0x1
    addi    r28, r28, 0x444
branch_0x80304410:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    lwz     r0, -0x74c4(r13)
    mullw   r0, r0, r3
    cmplw   r26, r0
    blt+    branch_0x803043f8
    lwz     r0, -0x74a8(r13)
    lwz     r3, 0x1f4(r30)
    mulli   r4, r0, 0x14
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x1ec(r30)
    li      r9, 0x0
    li      r3, 0x0
    li      r8, 0x0
    li      r6, -0x1
    b       branch_0x80304480

branch_0x8030444c:
    lwz     r7, 0x1ec(r30)
    addi    r5, r3, 0xc
    addi    r4, r3, 0x8
    stbx    r8, r7, r3
    addi    r0, r3, 0x10
    addi    r9, r9, 0x1
    lwz     r7, 0x1ec(r30)
    addi    r3, r3, 0x14
    stwx    r8, r7, r5
    lwz     r5, 0x1ec(r30)
    stwx    r6, r5, r4
    lwz     r4, 0x1ec(r30)
    stwx    r6, r4, r0
branch_0x80304480:
    lwz     r0, -0x74a8(r13)
    cmplw   r9, r0
    blt+    branch_0x8030444c
    lwz     r0, -0x74a4(r13)
    lwz     r3, 0x1f4(r30)
    mulli   r4, r0, 0x14
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x1f0(r30)
    li      r9, 0x0
    li      r3, 0x0
    li      r8, 0x0
    li      r6, -0x1
    b       branch_0x803044e8

branch_0x803044b4:
    lwz     r7, 0x1f0(r30)
    addi    r5, r3, 0xc
    addi    r4, r3, 0x8
    stbx    r8, r7, r3
    addi    r0, r3, 0x10
    addi    r9, r9, 0x1
    lwz     r7, 0x1f0(r30)
    addi    r3, r3, 0x14
    stwx    r8, r7, r5
    lwz     r5, 0x1f0(r30)
    stwx    r6, r5, r4
    lwz     r4, 0x1f0(r30)
    stwx    r6, r4, r0
branch_0x803044e8:
    lwz     r0, -0x74a4(r13)
    cmplw   r9, r0
    blt+    branch_0x803044b4
    lwz     r0, -0x74b8(r13)
    lwz     r3, 0x1f4(r30)
    slwi    r4, r0, 2
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x1e0(r30)
    lwz     r0, -0x74b8(r13)
    lwz     r3, 0x1f4(r30)
    mulli   r4, r0, 0x50
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x180(r30)
    li      r31, 0x0
    li      r29, 0x0
    li      r28, 0x0
    b       branch_0x80304658

branch_0x8030452c:
    lwz     r3, 0x1f4(r30)
    li      r4, 0x7bc
    bl      allocHeap__8JAIBasicFUl
    lwz     r4, 0x180(r30)
    addi    r0, r28, 0x4c
    li      r8, 0x0
    stwx    r3, r4, r0
    addi    r6, r28, 0x1
    addi    r5, r28, 0x2
    lwz     r7, 0x1e0(r30)
    addi    r4, r28, 0x3
    addi    r3, r28, 0x8
    stwx    r8, r7, r29
    addi    r0, r28, 0x48
    lwz     r7, 0x180(r30)
    stbx    r8, r7, r28
    lwz     r7, 0x180(r30)
    stbx    r8, r7, r6
    lwz     r6, 0x180(r30)
    stbx    r8, r6, r5
    lwz     r5, 0x180(r30)
    stbx    r8, r5, r4
    lwz     r4, 0x180(r30)
    stwx    r8, r4, r3
    lwz     r3, 0x180(r30)
    stwx    r8, r3, r0
    lwz     r0, -0x74bc(r13)
    lwz     r3, 0x1f4(r30)
    slwi    r4, r0, 2
    bl      allocHeap__8JAIBasicFUl
    lwz     r4, 0x180(r30)
    addi    r0, r28, 0x24
    stwx    r3, r4, r0
    lwz     r0, -0x74bc(r13)
    lwz     r3, 0x1f4(r30)
    slwi    r4, r0, 2
    bl      allocHeap__8JAIBasicFUl
    lwz     r4, 0x180(r30)
    addi    r0, r28, 0x30
    stwx    r3, r4, r0
    lwz     r0, -0x74bc(r13)
    lwz     r3, 0x1f4(r30)
    slwi    r4, r0, 2
    bl      allocHeap__8JAIBasicFUl
    lwz     r4, 0x180(r30)
    addi    r0, r28, 0x28
    stwx    r3, r4, r0
    lwz     r0, -0x74bc(r13)
    lwz     r3, 0x1f4(r30)
    slwi    r4, r0, 2
    bl      allocHeap__8JAIBasicFUl
    lwz     r4, 0x180(r30)
    addi    r0, r28, 0x2c
    stwx    r3, r4, r0
    lwz     r0, -0x74bc(r13)
    lwz     r3, 0x1f4(r30)
    slwi    r4, r0, 2
    bl      allocHeap__8JAIBasicFUl
    lwz     r4, 0x180(r30)
    addi    r0, r28, 0x34
    stwx    r3, r4, r0
    lwz     r4, -0x74bc(r13)
    lwz     r3, 0x1f4(r30)
    addi    r0, r4, 0x1
    slwi    r4, r0, 2
    bl      allocHeap__8JAIBasicFUl
    lwz     r5, 0x180(r30)
    addi    r0, r28, 0x44
    addi    r4, r31, 0x0
    stwx    r3, r5, r0
    mr      r3, r30
    bl      initSeqTrackInfoParameter__7JAIDataFUl
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
    addi    r28, r28, 0x50
branch_0x80304658:
    lwz     r0, -0x74b8(r13)
    cmplw   r31, r0
    blt+    branch_0x8030452c
    lwz     r3, 0x1f4(r30)
    li      r4, 0x18
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x184(r30)
    li      r0, 0x0
    lwz     r3, 0x184(r30)
    stb     r0, 0x0(r3)
    lwz     r3, 0x184(r30)
    stb     r0, 0x1(r3)
    lwz     r3, 0x184(r30)
    stb     r0, 0x2(r3)
    lfs     f0, 0x4d8(rtoc)
    lwz     r3, 0x184(r30)
    stfs    f0, 0x4(r3)
    lwz     r3, 0x184(r30)
    stfs    f0, 0x8(r3)
    lfs     f0, 0x4dc(rtoc)
    lwz     r3, 0x184(r30)
    stfs    f0, 0xc(r3)
    lwz     r3, 0x184(r30)
    stw     r0, 0x10(r3)
    lwz     r3, 0x184(r30)
    stw     r0, 0x14(r3)
    lwz     r3, 0x1f4(r30)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803046d8
    stw     r0, 0x4(r30)
    b       branch_0x80304718

branch_0x803046d8:
    lwz     r0, -0x74c8(r13)
    slwi    r4, r0, 2
    bl      allocHeap__8JAIBasicFUl
    lis     r4, 0x803e
    stw     r3, 0x4(r30)
    addi    r5, r4, 0x254c
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x8030470c

branch_0x803046fc:
    lwz     r4, 0x4(r30)
    addi    r6, r6, 0x1
    stwx    r5, r4, r3
    addi    r3, r3, 0x4
branch_0x8030470c:
    lwz     r0, -0x74c8(r13)
    cmplw   r6, r0
    blt+    branch_0x803046fc
branch_0x80304718:
    lwz     r3, 0x1f4(r30)
    lwz     r28, 0x6c(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80304808
    lwz     r0, 0x0(r28)
    stb     r0, 0x188(r30)
    lwz     r5, 0x10(r28)
    lwz     r4, 0xc(r28)
    lwz     r3, 0x8(r28)
    lwz     r0, 0x4(r28)
    stw     r0, 0x18c(r30)
    stw     r3, 0x190(r30)
    stw     r4, 0x194(r30)
    stw     r5, 0x198(r30)
    lbz     r0, 0x188(r30)
    lwz     r3, 0x1f4(r30)
    slwi    r4, r0, 2
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x1ac(r30)
    li      r6, 0x0
    b       branch_0x80304790

branch_0x8030476c:
    clrlslwi  r4, r6, 24, 2
    lwz     r5, 0x1f4(r30)
    addi    r0, r4, 0x14
    lwz     r3, 0x1ac(r30)
    lwz     r5, 0x6c(r5)
    addi    r6, r6, 0x1
    lwzx    r0, r28, r0
    add     r0, r5, r0
    stwx    r0, r3, r4
branch_0x80304790:
    lbz     r0, 0x188(r30)
    clrlwi  r3, r6, 24
    cmplw   r3, r0
    blt+    branch_0x8030476c
    li      r26, 0x0
    b       branch_0x803047fc

branch_0x803047a8:
    clrlwi  r29, r26, 24
    clrlslwi  r0, r26, 24, 2
    add     r28, r30, r0
    lwz     r0, 0x18c(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x803047f8
    lwz     r3, 0x1f4(r30)
    mulli   r4, r0, 0xa0
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x19c(r28)
    slwi    r0, r29, 5
    addi    r3, r26, 0x0
    lwz     r4, 0x1ac(r30)
    lwz     r28, 0x19c(r28)
    lwz     r4, 0x0(r4)
    add     r29, r4, r0
    bl      getFXHandle__Q28JASystem12DSPInterfaceFUc
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      setFXLine__Q38JASystem12DSPInterface8FXBufferFPsPQ38JASystem12DSPInterface13FxlineConfig_
branch_0x803047f8:
    addi    r26, r26, 0x1
branch_0x803047fc:
    clrlwi  r0, r26, 24
    cmplwi  r0, 0x4
    blt+    branch_0x803047a8
branch_0x80304808:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl initInfoDataWork__7JAIDataFP13JAISoundTablePc
initInfoDataWork__7JAIDataFP13JAISoundTablePc: # 0x8030481c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    stw     r5, 0x10(sp)
    lwz     r0, 0x78(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8030485c
    lwz     r3, 0x10(sp)
    bl      checkFile__Q28JASystem3DvdFPc
    mr      r30, r3
    b       branch_0x80304860

branch_0x8030485c:
    lwz     r30, 0x28(r31)
branch_0x80304860:
    cmplwi  r30, 0x0
    beq-    branch_0x80304920
    lwz     r0, 0x78(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80304894
    lwz     r3, 0x1f4(r29)
    mr      r4, r30
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x78(r31)
    lwz     r4, 0x78(r31)
    lwz     r3, 0x10(sp)
    bl      loadFile__Q28JASystem3DvdFPcPv
    stw     r30, 0x28(r31)
branch_0x80304894:
    lwz     r3, 0x78(r31)
    addi    r0, sp, 0x10
    li      r8, 0x0
    lbz     r3, 0x3(r3)
    stb     r3, 0x0(r31)
    stw     r0, 0x2c(r31)
    b       branch_0x80304914

branch_0x803048b0:
    clrlwi  r7, r8, 24
    lwz     r0, 0x78(r31)
    clrlslwi  r5, r8, 24, 2
    add     r4, r5, r0
    clrlslwi  r3, r8, 24, 1
    lhz     r0, 0x6(r4)
    addi    r6, r3, 0x2
    add     r6, r31, r6
    sth     r0, 0x0(r6)
    cmplwi  r7, 0x10
    addi    r0, r5, 0x30
    lwz     r4, 0x78(r31)
    add     r3, r5, r4
    lhz     r3, 0x8(r3)
    slwi    r3, r3, 4
    add     r3, r4, r3
    addi    r3, r3, 0x50
    stwx    r3, r31, r0
    bge-    branch_0x80304910
    lhz     r0, 0x0(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80304910
    addi    r0, r7, 0x1
    stb     r0, 0x1(r31)
branch_0x80304910:
    addi    r8, r8, 0x1
branch_0x80304914:
    clrlwi  r0, r8, 24
    cmplwi  r0, 0x12
    blt+    branch_0x803048b0
branch_0x80304920:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr

