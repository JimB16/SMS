
.globl __dt__11TConsoleStrFv
__dt__11TConsoleStrFv: # 0x8016fe18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8016fe70
    lis     r3, __vvt__11TConsoleStr@h
    addi    r0, r3, __vvt__11TConsoleStr@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8016fe60
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8016fe60:
    extsh.  r0, r31
    ble-    branch_0x8016fe70
    mr      r3, r30
    bl      __dl__FPv
branch_0x8016fe70:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl startOpenWipe__11TConsoleStrFv
startOpenWipe__11TConsoleStrFv: # 0x8016fe8c
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x5
    stwu    sp, -0xc0(sp)
    stmw    r26, 0xa8(sp)
    addi    r30, r3, 0x0
    li      r31, 0x1
    stb     r5, 0x2a4(r3)
    stw     r0, 0x2b8(r3)
    addi    r3, sp, 0x84
    lwz     r4, 0x28c(r30)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x294(r30)
    lwz     r4, 0x0(r4)
    stb     r31, 0xc(r4)
    lwz     r4, 0x290(r30)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x298(r30)
    lwz     r4, 0x0(r4)
    stb     r31, 0xc(r4)
    lwz     r4, 0x294(r30)
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x84(sp)
    lis     r27, 0x4330
    lwz     r0, 0x8c(sp)
    li      r4, 0x1e
    lfs     f2, -0x48ec(r2)
    subf    r0, r3, r0
    lwz     r28, 0x294(r30)
    neg     r0, r0
    lfd     f1, -0x48e0(r2)
    xoris   r0, r0, 0x8000
    fmr     f3, f2
    stw     r0, 0xa4(sp)
    fmr     f4, f2
    addi    r3, r28, 0x14
    stw     r27, 0xa0(sp)
    lfd     f0, 0xa0(sp)
    fsubs   f1, f0, f1
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x8(r28)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4e(r28)
    li      r28, 0xff
    li      r29, 0x64
    lwz     r5, 0x294(r30)
    li      r4, 0x1e
    lwz     r3, 0x0(r5)
    stb     r28, 0xcc(r3)
    lfs     f0, -0x48e8(r2)
    stfs    f0, 0x44(r5)
    lfs     f0, -0x48e4(r2)
    stfs    f0, 0x48(r5)
    sth     r29, 0x4c(r5)
    stb     r31, 0x50(r5)
    lwz     r3, 0x298(r30)
    lfs     f2, -0x48ec(r2)
    lwz     r5, 0x0(r3)
    lfd     f1, -0x48e0(r2)
    fmr     f3, f2
    lwz     r3, 0x14(r5)
    fmr     f4, f2
    lwz     r0, 0x18(r5)
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r3, 0x84(sp)
    lwz     r0, 0x8c(sp)
    lwz     r26, 0x298(r30)
    subf    r0, r3, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x9c(sp)
    addi    r3, r26, 0x14
    stw     r27, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f1, f0, f1
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r4, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x8(r26)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4e(r26)
    lwz     r4, 0x298(r30)
    lwz     r3, 0x0(r4)
    stb     r28, 0xcc(r3)
    lfs     f0, -0x48e8(r2)
    stfs    f0, 0x44(r4)
    lfs     f0, -0x48e4(r2)
    stfs    f0, 0x48(r4)
    sth     r29, 0x4c(r4)
    stb     r31, 0x50(r4)
    lwz     r0, 0xc4(sp)
    lmw     r26, 0xa8(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl startCloseWipe__11TConsoleStrFb
startCloseWipe__11TConsoleStrFb: # 0x8017004c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0x1e0(sp)
    stmw    r25, 0x1c4(sp)
    addi    r27, r3, 0x0
    beq-    branch_0x801702b8
    lwz     r3, 0x28c(r27)
    li      r28, 0x1
    li      r29, 0x0
    lwz     r4, 0x0(r3)
    addi    r3, sp, 0x16c
    stb     r28, 0xc(r4)
    lwz     r4, 0x290(r27)
    lwz     r4, 0x0(r4)
    stb     r28, 0xc(r4)
    lwz     r4, 0x29c(r27)
    stb     r29, 0xc(r4)
    lwz     r4, 0x2a0(r27)
    stb     r29, 0xc(r4)
    lwz     r4, 0x28c(r27)
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r4, 0x16c(sp)
    li      r0, 0xe0
    lwz     r3, 0x174(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1b4(sp)
    subf    r26, r4, r3
    lwz     r30, 0x28c(r27)
    xoris   r0, r26, 0x8000
    lfd     f3, -0x48e0(r2)
    lis     r31, 0x4330
    stw     r0, 0x1bc(sp)
    lfs     f4, -0x48ec(r2)
    addi    r3, r30, 0x2c
    stw     r0, 0x1ac(sp)
    li      r4, 0x2d
    stw     r31, 0x1b8(sp)
    stw     r31, 0x1b0(sp)
    lfd     f0, 0x1b8(sp)
    lfd     f2, 0x1b0(sp)
    stw     r31, 0x1a8(sp)
    fsubs   f1, f0, f3
    fsubs   f2, f2, f3
    lfd     f0, 0x1a8(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r30)
    addi    r4, r26, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r28, 0x4f(r30)
    li      r30, 0xff
    li      r4, 0x2d
    lwz     r5, 0x28c(r27)
    lwz     r3, 0x0(r5)
    stb     r29, 0xcc(r3)
    lfs     f1, -0x48ec(r2)
    stfs    f1, 0x44(r5)
    fmr     f3, f1
    lfs     f0, -0x48d8(r2)
    stfs    f0, 0x48(r5)
    sth     r30, 0x4c(r5)
    stb     r28, 0x50(r5)
    lwz     r3, 0x290(r27)
    lfd     f4, -0x48e0(r2)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x16c(sp)
    stw     r0, 0x170(sp)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x174(sp)
    stw     r0, 0x178(sp)
    lwz     r25, 0x290(r27)
    lwz     r0, 0x170(sp)
    lwz     r5, 0x8(r25)
    addi    r3, r25, 0x14
    subfic  r26, r5, 0x1d1
    subfic  r0, r0, 0xe0
    xoris   r5, r0, 0x8000
    xoris   r0, r26, 0x8000
    stw     r5, 0x1a4(sp)
    stw     r0, 0x19c(sp)
    stw     r31, 0x1a0(sp)
    stw     r31, 0x198(sp)
    lfd     f2, 0x1a0(sp)
    lfd     f0, 0x198(sp)
    fsubs   f2, f2, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    lwz     r0, 0x8(r25)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r25)
    add     r5, r0, r26
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r28, 0x4e(r25)
    li      r4, 0x2d
    lwz     r26, 0x290(r27)
    lwz     r6, 0x16c(sp)
    lwz     r5, 0x174(sp)
    addi    r3, r26, 0x2c
    lwz     r0, 0x8(r26)
    subf    r25, r6, r5
    lfd     f3, -0x48e0(r2)
    xoris   r5, r25, 0x8000
    lfs     f4, -0x48ec(r2)
    subfic  r7, r0, 0x1d1
    stw     r5, 0x194(sp)
    addi    r0, r7, 0xe0
    xoris   r0, r0, 0x8000
    stw     r5, 0x184(sp)
    stw     r0, 0x18c(sp)
    stw     r31, 0x190(sp)
    stw     r31, 0x188(sp)
    lfd     f0, 0x190(sp)
    lfd     f2, 0x188(sp)
    stw     r31, 0x180(sp)
    fsubs   f1, f0, f3
    fsubs   f2, f2, f3
    lfd     f0, 0x180(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    addi    r4, r25, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r28, 0x4f(r26)
    li      r3, 0x8
    li      r0, 0x4
    lwz     r5, 0x290(r27)
    lwz     r4, 0x0(r5)
    stb     r29, 0xcc(r4)
    lfs     f0, -0x48ec(r2)
    stfs    f0, 0x44(r5)
    lfs     f0, -0x48d8(r2)
    stfs    f0, 0x48(r5)
    sth     r30, 0x4c(r5)
    stb     r28, 0x50(r5)
    stw     r3, 0x2b8(r27)
    stw     r0, 0x2b4(r27)
    stb     r28, 0x2a4(r27)
    b       branch_0x801705cc

branch_0x801702b8:
    lwz     r0, 0x2b8(r27)
    cmpwi   r0, 0x1
    beq-    branch_0x801702d0
    li      r0, 0x1
    stb     r0, 0x2a4(r27)
    b       branch_0x801705cc

branch_0x801702d0:
    li      r0, 0x2
    stw     r0, 0x2b8(r27)
    addi    r3, sp, 0x158
    lwz     r4, 0x28c(r27)
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x15c(sp)
    li      r28, 0xe0
    lwz     r0, 0x164(sp)
    xoris   r3, r28, 0x8000
    lwz     r5, 0x158(sp)
    lwz     r4, 0x160(sp)
    subf    r30, r6, r0
    xoris   r0, r30, 0x8000
    stw     r3, 0x18c(sp)
    subf    r25, r5, r4
    xoris   r3, r25, 0x8000
    stw     r0, 0x19c(sp)
    lis     r0, unk_4330002d@h
    lfd     f4, -0x48e0(r2)
    stw     r3, 0x184(sp)
    addi    r4, r0, unk_4330002d@l
    lwz     r29, 0x28c(r27)
    stw     r3, 0x194(sp)
    addi    r3, r29, 0x2c
    stw     r0, 0x188(sp)
    stw     r0, 0x180(sp)
    lfd     f0, 0x188(sp)
    stw     r0, 0x190(sp)
    lfd     f1, 0x180(sp)
    fsubs   f2, f0, f4
    stw     r0, 0x198(sp)
    lfd     f3, 0x190(sp)
    fsubs   f1, f1, f4
    lfd     f0, 0x198(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    addi    r4, r25, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4f(r29)
    lwz     r6, 0x28c(r27)
    lwz     r3, 0x0(r6)
    lbz     r3, 0xcc(r3)
    extsh.  r0, r3
    bge-    branch_0x801703ac
    li      r5, 0x0
    b       branch_0x801703b0

branch_0x801703ac:
    mr      r5, r3
branch_0x801703b0:
    extsh   r0, r5
    cmpwi   r0, 0xff
    ble-    branch_0x801703c0
    li      r5, 0xff
branch_0x801703c0:
    extsh   r3, r3
    lwz     r4, 0x0(r6)
    xoris   r0, r3, 0x8000
    stw     r0, 0x184(sp)
    lis     r30, 0x4330
    subfic  r0, r3, 0xff
    stb     r5, 0xcc(r4)
    xoris   r3, r0, 0x8000
    li      r0, 0xff
    stw     r30, 0x180(sp)
    li      r31, 0x1
    lfd     f2, -0x48e0(r2)
    li      r4, 0x2d
    stw     r3, 0x18c(sp)
    lfd     f0, 0x180(sp)
    stw     r30, 0x188(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x188(sp)
    stfs    f1, 0x44(r6)
    fsubs   f1, f0, f2
    lfs     f0, -0x48d4(r2)
    fdivs   f0, f1, f0
    stfs    f0, 0x48(r6)
    sth     r0, 0x4c(r6)
    stb     r31, 0x50(r6)
    lwz     r3, 0x290(r27)
    lfs     f1, -0x48ec(r2)
    lwz     r5, 0x0(r3)
    fmr     f3, f1
    lwz     r3, 0x14(r5)
    fmr     f4, f1
    lwz     r0, 0x18(r5)
    stw     r3, 0x158(sp)
    stw     r0, 0x15c(sp)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x160(sp)
    stw     r0, 0x164(sp)
    lwz     r0, 0x15c(sp)
    lwz     r29, 0x290(r27)
    subfic  r0, r0, 0xe0
    xoris   r0, r0, 0x8000
    stw     r0, 0x194(sp)
    addi    r3, r29, 0x14
    stw     r30, 0x190(sp)
    lfd     f0, 0x190(sp)
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x8(r29)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
    subfic  r0, r28, 0x1d0
    xoris   r3, r0, 0x8000
    lwz     r7, 0x15c(sp)
    li      r4, 0x2d
    lwz     r0, 0x164(sp)
    stw     r3, 0x1a4(sp)
    subf    r29, r7, r0
    lwz     r6, 0x158(sp)
    lwz     r5, 0x160(sp)
    xoris   r0, r29, 0x8000
    stw     r0, 0x1b4(sp)
    subf    r25, r6, r5
    lfd     f4, -0x48e0(r2)
    xoris   r5, r25, 0x8000
    stw     r30, 0x1a0(sp)
    lwz     r28, 0x290(r27)
    stw     r5, 0x19c(sp)
    lfd     f0, 0x1a0(sp)
    addi    r3, r28, 0x2c
    stw     r5, 0x1ac(sp)
    fsubs   f2, f0, f4
    stw     r30, 0x198(sp)
    stw     r30, 0x1a8(sp)
    lfd     f1, 0x198(sp)
    stw     r30, 0x1b0(sp)
    lfd     f3, 0x1a8(sp)
    fsubs   f1, f1, f4
    lfd     f0, 0x1b0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r25, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4f(r28)
    lwz     r7, 0x290(r27)
    lwz     r3, 0x0(r7)
    lbz     r3, 0xcc(r3)
    extsh.  r0, r3
    bge-    branch_0x80170558
    li      r6, 0x0
    b       branch_0x8017055c

branch_0x80170558:
    mr      r6, r3
branch_0x8017055c:
    extsh   r0, r6
    cmpwi   r0, 0xff
    ble-    branch_0x8017056c
    li      r6, 0xff
branch_0x8017056c:
    extsh   r3, r3
    lwz     r4, 0x0(r7)
    xoris   r0, r3, 0x8000
    stw     r0, 0x184(sp)
    lis     r5, 0x4330
    subfic  r0, r3, 0xff
    stb     r6, 0xcc(r4)
    xoris   r4, r0, 0x8000
    li      r3, 0xff
    stw     r5, 0x180(sp)
    li      r0, 0x1
    lfd     f2, -0x48e0(r2)
    stw     r4, 0x18c(sp)
    lfd     f0, 0x180(sp)
    stw     r5, 0x188(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x188(sp)
    stfs    f1, 0x44(r7)
    fsubs   f1, f0, f2
    lfs     f0, -0x48d4(r2)
    fdivs   f0, f1, f0
    stfs    f0, 0x48(r7)
    sth     r3, 0x4c(r7)
    stb     r0, 0x50(r7)
branch_0x801705cc:
    lmw     r25, 0x1c4(sp)
    lwz     r0, 0x1e4(sp)
    addi    sp, sp, 0x1e0
    mtlr    r0
    blr


.globl processScenario__11TConsoleStrFi
processScenario__11TConsoleStrFi: # 0x801705e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r0, 0x2b8(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80170614
    cmpwi   r0, 0x7
    beq-    branch_0x80170614
    li      r3, 0x0
    b       branch_0x80170698

branch_0x80170614:
    li      r31, 0x1
    lwz     r3, 0x28c(r30)
    bl      update__7TExPaneFv
    and     r31, r31, r3
    lwz     r3, 0x290(r30)
    bl      update__7TExPaneFv
    lwz     r4, 0x1c(r30)
    and     r31, r31, r3
    addi    r0, r4, 0x2
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    cmpwi   r0, 0x163
    ble-    branch_0x80170658
    li      r0, 0x163
    stw     r0, 0x1c(r30)
    clrlwi  r31, r31, 31
    b       branch_0x8017065c

branch_0x80170658:
    li      r31, 0x0
branch_0x8017065c:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x64
    ble-    branch_0x80170670
    addi    r4, r3, -0x64
    b       branch_0x80170674

branch_0x80170670:
    li      r4, 0x0
branch_0x80170674:
    lwz     r3, 0x29c(r30)
    clrlwi. r0, r31, 24
    stb     r4, 0xcc(r3)
    lwz     r3, 0x2a0(r30)
    stb     r4, 0xcc(r3)
    beq-    branch_0x80170694
    li      r0, 0x1
    stw     r0, 0x2b8(r30)
branch_0x80170694:
    li      r3, 0x0
branch_0x80170698:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl processMiss__11TConsoleStrFi
processMiss__11TConsoleStrFi: # 0x801706b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a0(sp)
    stfd    f31, 0x198(sp)
    addi    r0, sp, 0xdc
    stfd    f30, 0x190(sp)
    stfd    f29, 0x188(sp)
    stmw    r14, 0x140(sp)
    mr      r28, r3
    mr      r31, r4
    stw     r0, 0x11c(sp)
    addi    r0, sp, 0xe4
    addi    r20, sp, 0x94
    stw     r0, 0x118(sp)
    addi    r0, sp, 0xec
    addi    r21, sp, 0x9c
    stw     r0, 0x114(sp)
    addi    r22, sp, 0xa4
    addi    r17, sp, 0xac
    addi    r18, sp, 0xb4
    addi    r19, sp, 0xbc
    addi    r14, sp, 0xc4
    addi    r15, sp, 0xcc
    addi    r16, sp, 0xd4
    li      r24, 0x1
    li      r23, 0x0
    li      r29, 0x0
    li      r30, 0x0
    lis     r26, 0x4330
    lfd     f31, -0x48e0(r2)
    lfs     f30, -0x48ec(r2)
    lfs     f29, -0x48d0(r2)
branch_0x80170730:
    cmpw    r31, r30
    bne-    branch_0x8017078c
    addi    r3, r29, 0x25c
    lwz     r6, 0x118(sp)
    add     r3, r28, r3
    lwz     r7, 0x11c(sp)
    lwz     r4, 0x0(r3)
    li      r5, 0x1
    li      r0, 0x0
    lwz     r4, 0x0(r4)
    li      r9, 0x1e
    li      r8, -0x10e
    stb     r5, 0xc(r4)
    li      r4, 0x3c
    lwz     r5, 0x114(sp)
    stw     r0, 0xdc(sp)
    stw     r0, 0xe4(sp)
    stw     r0, 0xec(sp)
    stw     r9, 0xe0(sp)
    stw     r8, 0xe8(sp)
    stw     r8, 0xf0(sp)
    lwz     r3, 0x0(r3)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x8017078c:
    addi    r0, r30, 0x1
    cmpw    r31, r0
    bne-    branch_0x80170844
    addi    r0, r29, 0x25c
    lwzx    r4, r28, r0
    addi    r3, sp, 0x104
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r0, 0x104(sp)
    addi    r4, sp, 0xf8
    lwz     r3, 0x10c(sp)
    li      r5, 0x1f9
    xoris   r8, r0, 0x8000
    subf    r3, r0, r3
    stw     r8, 0x134(sp)
    xoris   r7, r3, 0x8000
    lwz     r6, 0x108(sp)
    stw     r7, 0x13c(sp)
    li      r7, 0x0
    lwz     r9, 0x110(sp)
    stw     r26, 0x138(sp)
    subf    r0, r6, r9
    lwz     r3, R13Off_m0x5fdc(r13)
    xoris   r8, r0, 0x8000
    stw     r26, 0x130(sp)
    xoris   r0, r6, 0x8000
    lfd     f1, 0x138(sp)
    lfd     f0, 0x130(sp)
    li      r6, 0x0
    stw     r8, 0x12c(sp)
    fsubs   f1, f1, f31
    fsubs   f0, f0, f31
    stw     r0, 0x124(sp)
    fmadds  f2, f29, f1, f0
    stw     r26, 0x128(sp)
    stw     r26, 0x120(sp)
    lfd     f1, 0x128(sp)
    lfd     f0, 0x120(sp)
    fsubs   f1, f1, f31
    stfs    f2, 0xf8(sp)
    fsubs   f0, f0, f31
    fmadds  f0, f29, f1, f0
    stfs    f0, 0xfc(sp)
    stfs    f30, 0x100(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x80170844:
    addi    r25, r30, 0x3c
    cmpw    r31, r25
    bne-    branch_0x801708a0
    addi    r3, r29, 0x25c
    add     r3, r28, r3
    lwz     r4, 0x0(r3)
    li      r0, 0x0
    li      r8, -0x50
    lwz     r4, 0x0(r4)
    li      r9, 0x1e
    addi    r5, r16, 0x0
    stfs    f30, 0xc0(r4)
    addi    r6, r15, 0x0
    addi    r7, r14, 0x0
    stw     r0, 0xc4(sp)
    li      r4, 0x28
    stw     r0, 0xcc(sp)
    stw     r0, 0xd4(sp)
    stw     r8, 0xc8(sp)
    stw     r8, 0xd0(sp)
    stw     r9, 0xd8(sp)
    lwz     r3, 0x0(r3)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801708a0:
    addi    r0, r30, 0x64
    cmpw    r31, r0
    bne-    branch_0x801708e8
    li      r3, 0x0
    stw     r3, 0xac(sp)
    li      r0, -0x50
    addi    r8, r29, 0x25c
    stw     r3, 0xb4(sp)
    addi    r5, r19, 0x0
    addi    r6, r18, 0x0
    stw     r3, 0xbc(sp)
    addi    r7, r17, 0x0
    li      r4, 0x28
    stw     r3, 0xb0(sp)
    stw     r0, 0xb8(sp)
    stw     r0, 0xc0(sp)
    lwzx    r3, r28, r8
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801708e8:
    addi    r0, r30, 0x12c
    cmpw    r31, r0
    bne-    branch_0x80170930
    li      r0, 0x0
    stw     r0, 0x9c(sp)
    li      r3, 0x96
    addi    r8, r29, 0x25c
    stw     r0, 0x94(sp)
    addi    r5, r22, 0x0
    addi    r6, r21, 0x0
    stw     r0, 0xa4(sp)
    addi    r7, r20, 0x0
    li      r4, 0x1e
    stw     r3, 0x98(sp)
    stw     r0, 0xa0(sp)
    stw     r0, 0xa8(sp)
    lwzx    r3, r28, r8
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80170930:
    cmpw    r31, r25
    bge-    branch_0x80170960
    addi    r0, r29, 0x25c
    lwzx    r3, r28, r0
    lwz     r3, 0x0(r3)
    lbz     r4, 0xcc(r3)
    addi    r4, r4, 0xc
    clrlwi  r0, r4, 16
    cmplwi  r0, 0xff
    ble-    branch_0x8017095c
    li      r4, 0xff
branch_0x8017095c:
    stb     r4, 0xcc(r3)
branch_0x80170960:
    addi    r27, r29, 0x25c
    add     r27, r28, r27
    lwz     r3, 0x0(r27)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801709a4
    addi    r0, r30, 0x168
    cmpw    r31, r0
    ble-    branch_0x8017099c
    lwz     r3, 0x0(r27)
    li      r0, 0x0
    clrlwi  r24, r24, 31
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    b       branch_0x801709d8

branch_0x8017099c:
    li      r24, 0x0
    b       branch_0x801709d8

branch_0x801709a4:
    cmpw    r31, r25
    bge-    branch_0x801709d4
    subf    r0, r31, r30
    lwz     r3, 0x0(r27)
    mulli   r0, r0, 0x6
    lwz     r3, 0x0(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x124(sp)
    stw     r26, 0x120(sp)
    lfd     f0, 0x120(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0xc0(r3)
branch_0x801709d4:
    li      r24, 0x0
branch_0x801709d8:
    addi    r23, r23, 0x1
    cmpwi   r23, 0x7
    addi    r29, r29, 0x4
    addi    r30, r30, 0xa
    blt+    branch_0x80170730
    mr      r3, r24
    lmw     r14, 0x140(sp)
    lwz     r0, 0x1a4(sp)
    lfd     f31, 0x198(sp)
    lfd     f30, 0x190(sp)
    mtlr    r0
    lfd     f29, 0x188(sp)
    addi    sp, sp, 0x1a0
    blr


.globl processShineGet__11TConsoleStrFi
processShineGet__11TConsoleStrFi: # 0x80170a10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stfd    f31, 0x160(sp)
    stfd    f30, 0x158(sp)
    stfd    f29, 0x150(sp)
    stmw    r23, 0x12c(sp)
    mr      r26, r3
    mr      r27, r4
    li      r29, 0x1
    li      r28, 0x0
    li      r25, 0x0
    li      r24, 0x0
    lis     r31, 0x4330
    lfs     f29, -0x48d0(r2)
    lfd     f30, -0x48e0(r2)
    lfs     f31, -0x48ec(r2)
branch_0x80170a54:
    cmpw    r27, r24
    bne-    branch_0x80170b34
    addi    r30, r25, 0x244
    add     r30, r26, r30
    lwz     r3, 0x0(r30)
    li      r0, 0x1
    li      r4, 0x28
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x63d8
    addi    r6, r13, R13Off_m0x63d0
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x63d0
    lwz     r3, 0x0(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r4, 0x0(r30)
    addi    r3, sp, 0xf4
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0xf4(sp)
    addi    r4, sp, 0xe8
    lwz     r0, 0xfc(sp)
    li      r5, 0x1fe
    lwz     r9, 0xf8(sp)
    subf    r3, r6, r0
    lwz     r0, 0x100(sp)
    xoris   r7, r3, 0x8000
    lwz     r3, R13Off_m0x5fdc(r13)
    stw     r7, 0x124(sp)
    xoris   r6, r6, 0x8000
    subf    r0, r9, r0
    stw     r6, 0x11c(sp)
    xoris   r8, r0, 0x8000
    xoris   r0, r9, 0x8000
    stw     r31, 0x120(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r31, 0x118(sp)
    lfd     f1, 0x120(sp)
    lfd     f0, 0x118(sp)
    stw     r8, 0x114(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    stw     r0, 0x10c(sp)
    fmadds  f2, f29, f1, f0
    stw     r31, 0x110(sp)
    stw     r31, 0x108(sp)
    lfd     f1, 0x110(sp)
    lfd     f0, 0x108(sp)
    fsubs   f1, f1, f30
    stfs    f2, 0xe8(sp)
    fsubs   f0, f0, f30
    fmadds  f0, f29, f1, f0
    stfs    f0, 0xec(sp)
    stfs    f31, 0xf0(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x80170b34:
    addi    r30, r24, 0x28
    cmpw    r27, r30
    bne-    branch_0x80170b5c
    addi    r0, r25, 0x244
    lwzx    r3, r26, r0
    li      r4, 0x14
    addi    r5, r13, R13Off_m0x63c0
    addi    r6, r13, R13Off_m0x63c0
    addi    r7, r13, R13Off_m0x63c8
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80170b5c:
    addi    r0, r24, 0x3c
    cmpw    r27, r0
    bne-    branch_0x80170c14
    addi    r0, r25, 0x244
    lwzx    r4, r26, r0
    addi    r3, sp, 0xd4
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0xd4(sp)
    addi    r4, sp, 0xc8
    lwz     r0, 0xdc(sp)
    li      r5, 0x1ff
    lwz     r9, 0xd8(sp)
    subf    r3, r6, r0
    lwz     r0, 0xe0(sp)
    xoris   r7, r3, 0x8000
    lwz     r3, R13Off_m0x5fdc(r13)
    stw     r7, 0x10c(sp)
    xoris   r6, r6, 0x8000
    subf    r0, r9, r0
    stw     r6, 0x114(sp)
    xoris   r8, r0, 0x8000
    xoris   r0, r9, 0x8000
    stw     r31, 0x108(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r31, 0x110(sp)
    lfd     f1, 0x108(sp)
    lfd     f0, 0x110(sp)
    stw     r8, 0x11c(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    stw     r0, 0x124(sp)
    fmadds  f2, f29, f1, f0
    stw     r31, 0x118(sp)
    stw     r31, 0x120(sp)
    lfd     f1, 0x118(sp)
    lfd     f0, 0x120(sp)
    fsubs   f1, f1, f30
    stfs    f2, 0xc8(sp)
    fsubs   f0, f0, f30
    fmadds  f0, f29, f1, f0
    stfs    f0, 0xcc(sp)
    stfs    f31, 0xd0(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x80170c14:
    addi    r23, r24, 0xc8
    cmpw    r27, r23
    bne-    branch_0x80170c3c
    addi    r0, r25, 0x244
    lwzx    r3, r26, r0
    li      r4, 0x28
    addi    r5, r13, R13Off_m0x63b8
    addi    r6, r13, R13Off_m0x63b8
    addi    r7, r13, R13Off_m0x63b0
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80170c3c:
    cmpw    r27, r30
    bge-    branch_0x80170c6c
    addi    r0, r25, 0x244
    lwzx    r3, r26, r0
    lwz     r3, 0x0(r3)
    lbz     r4, 0xcc(r3)
    addi    r4, r4, 0x7
    clrlwi  r0, r4, 16
    cmplwi  r0, 0xff
    ble-    branch_0x80170c68
    li      r4, 0xff
branch_0x80170c68:
    stb     r4, 0xcc(r3)
branch_0x80170c6c:
    cmpw    r27, r23
    ble-    branch_0x80170c98
    addi    r0, r25, 0x244
    lwzx    r3, r26, r0
    lwz     r3, 0x0(r3)
    lbz     r4, 0xcc(r3)
    addi    r4, r4, -0x7
    extsh.  r0, r4
    bge-    branch_0x80170c94
    li      r4, 0x0
branch_0x80170c94:
    stb     r4, 0xcc(r3)
branch_0x80170c98:
    addi    r23, r25, 0x244
    add     r23, r26, r23
    lwz     r3, 0x0(r23)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80170cdc
    addi    r0, r24, 0x118
    cmpw    r27, r0
    ble-    branch_0x80170cd4
    lwz     r3, 0x0(r23)
    li      r0, 0x0
    clrlwi  r29, r29, 31
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    b       branch_0x80170ce0

branch_0x80170cd4:
    li      r29, 0x0
    b       branch_0x80170ce0

branch_0x80170cdc:
    li      r29, 0x0
branch_0x80170ce0:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x6
    addi    r25, r25, 0x4
    addi    r24, r24, 0x6
    blt+    branch_0x80170a54
    mr      r3, r29
    lmw     r23, 0x12c(sp)
    lwz     r0, 0x16c(sp)
    lfd     f31, 0x160(sp)
    lfd     f30, 0x158(sp)
    mtlr    r0
    lfd     f29, 0x150(sp)
    addi    sp, sp, 0x168
    blr


.globl processGo__11TConsoleStrFf
processGo__11TConsoleStrFf: # 0x80170d18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x278(sp)
    stfd    f31, 0x270(sp)
    stfd    f30, 0x268(sp)
    fmr     f30, f1
    stfd    f29, 0x260(sp)
    stmw    r22, 0x238(sp)
    addi    r31, r3, 0x0
    li      r30, 0x0
    lfs     f0, -0x48cc(r2)
    fcmpo   cr0, f30, f0
    bge-    branch_0x80170ea8
    lfd     f29, -0x48e0(r2)
    addi    r26, sp, 0x18c
    addi    r27, sp, 0x194
    addi    r28, sp, 0x19c
    li      r22, 0x0
    li      r23, 0x0
    li      r24, 0x0
    lis     r25, 0x4330
branch_0x80170d6c:
    xoris   r0, r24, 0x8000
    stw     r0, 0x234(sp)
    stw     r25, 0x230(sp)
    lfd     f0, 0x230(sp)
    fsubs   f0, f0, f29
    fcmpu   cr0, f30, f0
    bne-    branch_0x80170ddc
    li      r4, 0x0
    stw     r4, 0x18c(sp)
    li      r3, -0x28
    li      r0, 0x3c
    stw     r4, 0x194(sp)
    addi    r29, r23, 0x28
    add     r29, r31, r29
    stw     r4, 0x19c(sp)
    addi    r5, r28, 0x0
    addi    r6, r27, 0x0
    stw     r3, 0x190(sp)
    addi    r7, r26, 0x0
    li      r4, 0x28
    stw     r3, 0x198(sp)
    stw     r0, 0x1a0(sp)
    lwz     r3, 0x0(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x0(r29)
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
branch_0x80170ddc:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x3
    addi    r23, r23, 0x4
    addi    r24, r24, 0xa
    blt+    branch_0x80170d6c
    addi    r27, sp, 0x174
    addi    r28, sp, 0x17c
    addi    r29, sp, 0x184
    li      r25, 0x0
    li      r23, 0x0
branch_0x80170e04:
    addi    r26, r23, 0x28
    add     r26, r31, r26
    lwz     r4, 0x0(r26)
    addi    r3, sp, 0x204
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x0(r26)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80170e94
    lwz     r4, 0x0(r26)
    li      r3, 0x0
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80170e54
    lwz     r0, 0x18(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80170e54
    li      r3, 0x1
branch_0x80170e54:
    clrlwi. r0, r3, 24
    bne-    branch_0x80170e94
    li      r3, 0x0
    stw     r3, 0x174(sp)
    li      r0, -0x28
    addi    r5, r29, 0x0
    stw     r3, 0x17c(sp)
    addi    r6, r28, 0x0
    addi    r7, r27, 0x0
    stw     r3, 0x184(sp)
    li      r4, 0x1e
    stw     r3, 0x178(sp)
    stw     r0, 0x180(sp)
    stw     r0, 0x188(sp)
    lwz     r3, 0x0(r26)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80170e94:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r23, r23, 0x4
    blt+    branch_0x80170e04
    b       branch_0x80171388

branch_0x80170ea8:
    lfs     f0, -0x48c8(r2)
    fcmpo   cr0, f30, f0
    blt-    branch_0x80171388
    fcmpu   cr0, f0, f30
    bne-    branch_0x801710a0
    li      r3, -0x154
    li      r0, -0xaa
    stw     r3, 0x15c(sp)
    li      r29, 0x0
    stw     r29, 0x16c(sp)
    li      r27, -0x168
    li      r28, -0xb4
    stw     r0, 0x164(sp)
    addi    r7, sp, 0x15c
    addi    r6, sp, 0x164
    stw     r27, 0x160(sp)
    addi    r5, sp, 0x16c
    li      r4, 0x50
    stw     r28, 0x168(sp)
    stw     r29, 0x170(sp)
    lwz     r3, 0x28(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    stw     r29, 0x154(sp)
    li      r3, -0x1b8
    li      r0, -0xdc
    stw     r29, 0x144(sp)
    addi    r7, sp, 0x144
    addi    r6, sp, 0x14c
    stw     r29, 0x14c(sp)
    addi    r5, sp, 0x154
    li      r4, 0x50
    stw     r3, 0x148(sp)
    stw     r0, 0x150(sp)
    stw     r29, 0x158(sp)
    lwz     r3, 0x2c(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r3, 0x140
    stw     r29, 0x13c(sp)
    li      r0, 0xa0
    stw     r3, 0x12c(sp)
    addi    r7, sp, 0x12c
    addi    r6, sp, 0x134
    stw     r0, 0x134(sp)
    addi    r5, sp, 0x13c
    li      r4, 0x50
    stw     r27, 0x130(sp)
    stw     r28, 0x138(sp)
    stw     r29, 0x140(sp)
    lwz     r3, 0x30(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lfs     f31, -0x48d0(r2)
    li      r25, 0x0
    lfd     f30, -0x48e0(r2)
    li      r23, 0x0
    lfs     f29, -0x48ec(r2)
    li      r24, 0x0
    lis     r29, 0x4330
branch_0x80170f8c:
    add     r26, r31, r24
    add     r28, r31, r23
    li      r22, 0x0
    li      r27, 0x0
branch_0x80170f9c:
    lwz     r4, 0x28(r26)
    addi    r3, sp, 0x1f0
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x1f4(sp)
    add     r4, r28, r27
    lwz     r0, 0x1f0(sp)
    addi    r22, r22, 0x1
    cmpwi   r22, 0x10
    stw     r0, 0x34(r4)
    addi    r27, r27, 0x8
    stw     r3, 0x38(r4)
    blt+    branch_0x80170f9c
    lwz     r4, 0x28(r26)
    addi    r3, sp, 0x1e0
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x1e0(sp)
    addi    r4, sp, 0x1d4
    lwz     r0, 0x1e8(sp)
    li      r5, 0x1fd
    lwz     r9, 0x1e4(sp)
    subf    r3, r6, r0
    lwz     r0, 0x1ec(sp)
    xoris   r7, r3, 0x8000
    lwz     r3, R13Off_m0x5fdc(r13)
    stw     r7, 0x234(sp)
    xoris   r6, r6, 0x8000
    subf    r0, r9, r0
    stw     r6, 0x22c(sp)
    xoris   r8, r0, 0x8000
    xoris   r0, r9, 0x8000
    stw     r29, 0x230(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r29, 0x228(sp)
    lfd     f1, 0x230(sp)
    lfd     f0, 0x228(sp)
    stw     r8, 0x224(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    stw     r0, 0x21c(sp)
    fmadds  f2, f31, f1, f0
    stw     r29, 0x220(sp)
    stw     r29, 0x218(sp)
    lfd     f1, 0x220(sp)
    lfd     f0, 0x218(sp)
    fsubs   f1, f1, f30
    stfs    f2, 0x1d4(sp)
    fsubs   f0, f0, f30
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x1d8(sp)
    stfs    f29, 0x1dc(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r3, R13Off_m0x5fdc(r13)
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    lwz     r0, 0xc8(r3)
    addi    r23, r23, 0xb0
    addi    r24, r24, 0x4
    stw     r0, 0x2a8(r26)
    blt+    branch_0x80170f8c
    b       branch_0x80171388

branch_0x801710a0:
    lfs     f0, -0x48c4(r2)
    fcmpo   cr0, f30, f0
    bge-    branch_0x8017129c
    fctiwz  f0, f30
    lfs     f29, -0x48d0(r2)
    lfd     f30, -0x48e0(r2)
    li      r25, 0x0
    lfs     f31, -0x48ec(r2)
    stfd    f0, 0x218(sp)
    li      r24, 0x0
    li      r23, 0x0
    lwz     r0, 0x21c(sp)
    lis     r29, 0x4330
    srawi   r27, r0, 1
    addze   r27, r27
    slwi    r27, r27, 1
    subfc   r27, r27, r0
branch_0x801710e4:
    add     r28, r31, r23
    lwz     r3, 0x28(r28)
    addi    r26, r28, 0x28
    lwz     r4, 0x0(r3)
    lbz     r3, 0xcc(r4)
    subic.  r0, r3, 0x4
    mr      r22, r0
    bge-    branch_0x80171108
    li      r22, 0x0
branch_0x80171108:
    addi    r4, r4, 0x24
    addi    r3, sp, 0x1c0
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x0(r26)
    lwz     r3, 0x0(r3)
    stb     r22, 0xcc(r3)
    lwz     r3, 0x0(r26)
    lwz     r5, 0x1c4(sp)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x1cc(sp)
    lwz     r12, 0x0(r3)
    subf    r5, r5, r0
    lwz     r4, 0x1c0(sp)
    lwz     r0, 0x1c8(sp)
    addi    r5, r5, 0x2
    lwz     r12, 0x14(r12)
    subf    r4, r4, r0
    mtlr    r12
    addi    r4, r4, 0x2
    blrl
    lwz     r4, 0x1c0(sp)
    lwz     r3, 0x1c8(sp)
    lwz     r5, 0x1c4(sp)
    xoris   r0, r4, 0x8000
    subf    r3, r4, r3
    lwz     r4, 0x1cc(sp)
    xoris   r3, r3, 0x8000
    stw     r3, 0x22c(sp)
    subf    r3, r5, r4
    xoris   r3, r3, 0x8000
    lwz     r4, 0x2a8(r28)
    stw     r0, 0x234(sp)
    xoris   r0, r5, 0x8000
    stw     r3, 0x21c(sp)
    stw     r0, 0x224(sp)
    stw     r29, 0x228(sp)
    stw     r29, 0x230(sp)
    lfd     f1, 0x228(sp)
    stw     r29, 0x218(sp)
    lfd     f0, 0x230(sp)
    fsubs   f1, f1, f30
    stw     r29, 0x220(sp)
    fsubs   f0, f0, f30
    lfd     f3, 0x218(sp)
    lfd     f2, 0x220(sp)
    fsubs   f3, f3, f30
    fsubs   f2, f2, f30
    fmadds  f0, f29, f1, f0
    fmadds  f1, f29, f3, f2
    stfs    f0, 0x160(r4)
    stfs    f1, 0x164(r4)
    stfs    f31, 0x168(r4)
    lwz     r3, 0x0(r26)
    bl      update__10TBoundPaneFv
    cmpwi   r27, 0x0
    bne-    branch_0x80171284
    li      r0, 0x3
    mtctr   r0
    add     r6, r31, r24
    li      r3, 0x70
branch_0x801711f8:
    add     r5, r6, r3
    lwz     r4, 0x34(r5)
    addi    r3, r3, -0x8
    lwz     r0, 0x38(r5)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    add     r5, r6, r3
    addi    r3, r3, -0x8
    lwz     r4, 0x34(r5)
    lwz     r0, 0x38(r5)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    add     r5, r6, r3
    addi    r3, r3, -0x8
    lwz     r4, 0x34(r5)
    lwz     r0, 0x38(r5)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    add     r5, r6, r3
    addi    r3, r3, -0x8
    lwz     r4, 0x34(r5)
    lwz     r0, 0x38(r5)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    add     r5, r6, r3
    addi    r3, r3, -0x8
    lwz     r4, 0x34(r5)
    lwz     r0, 0x38(r5)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    bdnz+      branch_0x801711f8
    lwz     r3, 0x1c4(sp)
    lwz     r0, 0x1c0(sp)
    stw     r0, 0x34(r6)
    stw     r3, 0x38(r6)
branch_0x80171284:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r24, r24, 0xb0
    addi    r23, r23, 0x4
    blt+    branch_0x801710e4
    b       branch_0x80171388

branch_0x8017129c:
    fcmpu   cr0, f0, f30
    bne-    branch_0x80171314
    li      r22, 0x0
    li      r25, 0x0
branch_0x801712ac:
    addi    r23, r25, 0x28
    add     r23, r31, r23
    lwz     r4, 0x0(r23)
    addi    r3, sp, 0x1a4
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x0(r23)
    lwz     r5, 0x1a8(sp)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x1b0(sp)
    lwz     r12, 0x0(r3)
    subf    r5, r5, r0
    lwz     r4, 0x1a4(sp)
    lwz     r0, 0x1ac(sp)
    addi    r5, r5, -0x50
    lwz     r12, 0x14(r12)
    subf    r4, r4, r0
    mtlr    r12
    addi    r4, r4, -0x50
    blrl
    addi    r22, r22, 0x1
    cmpwi   r22, 0x3
    addi    r25, r25, 0x4
    blt+    branch_0x801712ac
    b       branch_0x80171388

branch_0x80171314:
    lwz     r4, 0x28(r31)
    li      r3, 0x0
    lwz     r4, 0x0(r4)
    stb     r3, 0xc(r4)
    lwz     r4, 0x2a8(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8017133c
    lwz     r0, 0x11c(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r4)
branch_0x8017133c:
    lwz     r4, 0x2c(r31)
    lwz     r4, 0x0(r4)
    stb     r3, 0xc(r4)
    lwz     r4, 0x2ac(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x80171360
    lwz     r0, 0x11c(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r4)
branch_0x80171360:
    lwz     r4, 0x30(r31)
    lwz     r4, 0x0(r4)
    stb     r3, 0xc(r4)
    lwz     r4, 0x2b0(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x80171384
    lwz     r0, 0x11c(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r4)
branch_0x80171384:
    li      r30, 0x1
branch_0x80171388:
    mr      r3, r30
    lmw     r22, 0x238(sp)
    lwz     r0, 0x27c(sp)
    lfd     f31, 0x270(sp)
    lfd     f30, 0x268(sp)
    mtlr    r0
    lfd     f29, 0x260(sp)
    addi    sp, sp, 0x278
    blr


.globl processReady__11TConsoleStrFi
processReady__11TConsoleStrFi: # 0x801713ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x180(sp)
    stfd    f31, 0x178(sp)
    stfd    f30, 0x170(sp)
    stmw    r18, 0x138(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    li      r31, 0x0
    li      r30, 0x0
    li      r27, 0x0
    li      r26, 0x0
    lis     r23, 0x4330
    lfd     f30, -0x48e0(r2)
    lfs     f31, -0x48d0(r2)
branch_0x801713e8:
    cmpw    r29, r26
    bne-    branch_0x8017160c
    addi    r18, r27, 0x278
    add     r18, r28, r18
    lwz     r4, 0x0(r18)
    addi    r3, sp, 0xa8
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r5, 0xa8(sp)
    li      r4, 0x1e
    lwz     r0, 0xb0(sp)
    lwz     r3, 0xac(sp)
    subf    r20, r5, r0
    lwz     r0, 0xb4(sp)
    addi    r25, r20, 0x50
    lwz     r21, 0x0(r18)
    subf    r19, r3, r0
    addi    r24, r19, 0x50
    xoris   r0, r20, 0x8000
    xoris   r3, r19, 0x8000
    stw     r0, 0x134(sp)
    xoris   r5, r25, 0x8000
    xoris   r0, r24, 0x8000
    stw     r3, 0x12c(sp)
    addi    r3, r21, 0x2c
    stw     r5, 0x124(sp)
    stw     r0, 0x11c(sp)
    stw     r23, 0x130(sp)
    stw     r23, 0x128(sp)
    lfd     f1, 0x130(sp)
    stw     r23, 0x120(sp)
    lfd     f0, 0x128(sp)
    fsubs   f1, f1, f30
    stw     r23, 0x118(sp)
    lfd     f3, 0x120(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0x118(sp)
    fsubs   f3, f3, f30
    fsubs   f4, f0, f30
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r21)
    addi    r4, r25, 0x0
    addi    r5, r24, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r22, 0x1
    stb     r22, 0x4f(r21)
    addi    r3, r21, 0x14
    li      r4, 0x1e
    lwz     r6, 0x8(r21)
    lwz     r0, 0x10(r21)
    lwz     r5, 0x4(r21)
    subf    r8, r6, r0
    lwz     r0, 0xc(r21)
    subf    r7, r24, r8
    subf    r0, r5, r0
    subf    r6, r25, r0
    subf    r5, r19, r8
    subf    r0, r20, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x114(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x104(sp)
    stw     r5, 0xf4(sp)
    stw     r0, 0xe4(sp)
    stw     r23, 0x110(sp)
    stw     r23, 0x100(sp)
    lfd     f1, 0x110(sp)
    stw     r23, 0xf0(sp)
    lfd     f0, 0x100(sp)
    fsubs   f3, f1, f30
    stw     r23, 0xe0(sp)
    lfd     f1, 0xf0(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0xe0(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fmuls   f3, f31, f3
    fmuls   f2, f31, f2
    fmuls   f1, f31, f1
    fmuls   f0, f31, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x108(sp)
    stfd    f2, 0xf8(sp)
    lwz     r25, 0x10c(sp)
    stfd    f1, 0xe8(sp)
    lwz     r24, 0xfc(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0xd8(sp)
    lwz     r6, 0xec(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0xdc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0xc4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0xd4(sp)
    stw     r6, 0xcc(sp)
    stw     r0, 0xbc(sp)
    stw     r23, 0xd0(sp)
    stw     r23, 0xc8(sp)
    lfd     f1, 0xd0(sp)
    stw     r23, 0xc0(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f1, f1, f30
    stw     r23, 0xb8(sp)
    lfd     f3, 0xc0(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0xb8(sp)
    fsubs   f3, f3, f30
    fsubs   f4, f0, f30
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r21)
    lwz     r4, 0x4(r21)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r21)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r22, 0x4e(r21)
    li      r0, 0x0
    lwz     r3, 0x0(r18)
    lwz     r3, 0x0(r3)
    stb     r22, 0xc(r3)
    lwz     r3, 0x0(r18)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    b       branch_0x801718b0

branch_0x8017160c:
    addi    r0, r26, 0x1e
    cmpw    r29, r0
    bge-    branch_0x80171650
    addi    r18, r27, 0x278
    add     r18, r28, r18
    lwz     r3, 0x0(r18)
    bl      update__7TExPaneFv
    lwz     r3, 0x0(r18)
    lwz     r3, 0x0(r3)
    lbz     r4, 0xcc(r3)
    addi    r4, r4, 0x9
    clrlwi  r0, r4, 16
    cmplwi  r0, 0xff
    ble-    branch_0x80171648
    li      r4, 0xff
branch_0x80171648:
    stb     r4, 0xcc(r3)
    b       branch_0x801718b0

branch_0x80171650:
    addi    r0, r26, 0x82
    cmpw    r29, r0
    blt-    branch_0x801718b0
    bne-    branch_0x80171864
    addi    r20, r27, 0x278
    add     r20, r28, r20
    lwz     r4, 0x0(r20)
    addi    r3, sp, 0x98
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x98(sp)
    li      r4, 0x1e
    lwz     r5, 0xa0(sp)
    lwz     r3, 0x9c(sp)
    subf    r19, r6, r5
    lwz     r0, 0xa4(sp)
    addi    r18, r19, 0x0
    lwz     r21, 0x0(r20)
    subf    r20, r3, r0
    addi    r24, r20, -0x14
    addi    r22, r18, -0x14
    xoris   r3, r24, 0x8000
    stw     r3, 0xc4(sp)
    xoris   r0, r22, 0x8000
    xoris   r5, r18, 0x8000
    stw     r0, 0xbc(sp)
    xoris   r0, r20, 0x8000
    addi    r3, r21, 0x2c
    stw     r5, 0xcc(sp)
    stw     r0, 0xd4(sp)
    stw     r23, 0xc0(sp)
    stw     r23, 0xb8(sp)
    lfd     f0, 0xc0(sp)
    stw     r23, 0xc8(sp)
    lfd     f1, 0xb8(sp)
    fsubs   f2, f0, f30
    stw     r23, 0xd0(sp)
    lfd     f3, 0xc8(sp)
    fsubs   f1, f1, f30
    lfd     f0, 0xd0(sp)
    fsubs   f3, f3, f30
    fsubs   f4, f0, f30
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r21)
    addi    r4, r18, 0x0
    addi    r5, r20, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r25, 0x1
    stb     r25, 0x4f(r21)
    addi    r3, r21, 0x14
    li      r4, 0x1e
    lwz     r6, 0x8(r21)
    lwz     r0, 0x10(r21)
    lwz     r5, 0x4(r21)
    subf    r8, r6, r0
    lwz     r0, 0xc(r21)
    subf    r7, r20, r8
    subf    r0, r5, r0
    subf    r6, r19, r0
    subf    r5, r24, r8
    subf    r0, r22, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0xdc(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0xec(sp)
    stw     r5, 0xfc(sp)
    stw     r0, 0x10c(sp)
    stw     r23, 0xd8(sp)
    stw     r23, 0xe8(sp)
    lfd     f1, 0xd8(sp)
    stw     r23, 0xf8(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f3, f1, f30
    stw     r23, 0x108(sp)
    lfd     f1, 0xf8(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0x108(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fmuls   f3, f31, f3
    fmuls   f2, f31, f2
    fmuls   f1, f31, f1
    fmuls   f0, f31, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0xe0(sp)
    stfd    f2, 0xf0(sp)
    lwz     r24, 0xe4(sp)
    stfd    f1, 0x100(sp)
    lwz     r22, 0xf4(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x110(sp)
    lwz     r6, 0x104(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x114(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x12c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x11c(sp)
    stw     r6, 0x124(sp)
    stw     r0, 0x134(sp)
    stw     r23, 0x118(sp)
    stw     r23, 0x120(sp)
    lfd     f1, 0x118(sp)
    stw     r23, 0x128(sp)
    lfd     f0, 0x120(sp)
    fsubs   f1, f1, f30
    stw     r23, 0x130(sp)
    lfd     f3, 0x128(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0x130(sp)
    fsubs   f3, f3, f30
    fsubs   f4, f0, f30
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r21)
    lwz     r4, 0x4(r21)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r21)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r25, 0x4e(r21)
    b       branch_0x801718b0

branch_0x80171864:
    addi    r0, r26, 0xa0
    cmpw    r29, r0
    bge-    branch_0x801718a4
    addi    r18, r27, 0x278
    add     r18, r28, r18
    lwz     r3, 0x0(r18)
    bl      update__7TExPaneFv
    lwz     r3, 0x0(r18)
    lwz     r3, 0x0(r3)
    lbz     r4, 0xcc(r3)
    addi    r4, r4, -0x9
    extsh.  r0, r4
    bge-    branch_0x8017189c
    li      r4, 0x0
branch_0x8017189c:
    stb     r4, 0xcc(r3)
    b       branch_0x801718b0

branch_0x801718a4:
    cmpwi   r30, 0x4
    bne-    branch_0x801718b0
    li      r31, 0x1
branch_0x801718b0:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x5
    addi    r27, r27, 0x4
    addi    r26, r26, 0xa
    blt+    branch_0x801713e8
    mr      r3, r31
    lmw     r18, 0x138(sp)
    lwz     r0, 0x184(sp)
    lfd     f31, 0x178(sp)
    lfd     f30, 0x170(sp)
    mtlr    r0
    addi    sp, sp, 0x180
    blr


.globl startAppearScenario__11TConsoleStrFv
startAppearScenario__11TConsoleStrFv: # 0x801718e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r27, 0x4c(sp)
    mr      r31, r3
    lwz     r0, 0x2b4(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80171a14
    li      r0, 0x4
    stw     r0, 0x2b4(r31)
    li      r5, 0x0
    li      r0, -0xc8
    stw     r5, 0x2b8(r31)
    li      r29, 0x1
    lis     r30, 0x4330
    lfs     f1, -0x48ec(r2)
    li      r4, 0x1e
    stfs    f1, 0x18(r31)
    fmr     f2, f1
    fmr     f3, f1
    stw     r0, 0x1c(r31)
    lwz     r3, 0x29c(r31)
    stb     r5, 0xcc(r3)
    lwz     r3, 0x28c(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r3, 0x2a0(r31)
    stb     r5, 0xcc(r3)
    lwz     r3, 0x290(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r27, 0x28c(r31)
    lfd     f4, -0x48e0(r2)
    lwz     r5, 0x10(r27)
    addi    r3, r27, 0x14
    addi    r0, r5, 0x1
    neg     r28, r0
    xoris   r0, r28, 0x8000
    stw     r0, 0x44(sp)
    stw     r30, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r0, 0x8(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r27)
    add     r5, r0, r28
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    li      r4, 0x1e
    lwz     r27, 0x290(r31)
    lfs     f1, -0x48ec(r2)
    lwz     r0, 0x8(r27)
    addi    r3, r27, 0x14
    lfd     f4, -0x48e0(r2)
    fmr     f2, f1
    subfic  r28, r0, 0x1d1
    xoris   r0, r28, 0x8000
    fmr     f3, f1
    stw     r0, 0x3c(sp)
    stw     r30, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r0, 0x8(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r27)
    add     r5, r0, r28
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
branch_0x80171a14:
    lmw     r27, 0x4c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl startAppearMiss__11TConsoleStrFv
startAppearMiss__11TConsoleStrFv: # 0x80171a28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    lwz     r0, 0x2b4(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x80171b7c
    cmpwi   r0, 0x1
    bne-    branch_0x80171a78
    lwz     r3, 0x28(r31)
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x2c(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x30(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
branch_0x80171a78:
    li      r0, 0x3
    stw     r0, 0x2b4(r31)
    li      r9, 0x0
    li      r3, 0x1e
    lfs     f0, -0x48ec(r2)
    li      r0, -0x10e
    addi    r7, sp, 0x68
    stfs    f0, 0x18(r31)
    addi    r6, sp, 0x70
    addi    r5, sp, 0x78
    lwz     r8, 0x25c(r31)
    li      r4, 0x28
    lwz     r8, 0x0(r8)
    stb     r9, 0xc(r8)
    lwz     r8, 0x25c(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xcc(r8)
    lwz     r8, 0x260(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xc(r8)
    lwz     r8, 0x260(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xcc(r8)
    lwz     r8, 0x264(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xc(r8)
    lwz     r8, 0x264(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xcc(r8)
    lwz     r8, 0x268(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xc(r8)
    lwz     r8, 0x268(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xcc(r8)
    lwz     r8, 0x26c(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xc(r8)
    lwz     r8, 0x26c(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xcc(r8)
    lwz     r8, 0x270(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xc(r8)
    lwz     r8, 0x270(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xcc(r8)
    lwz     r8, 0x274(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xc(r8)
    lwz     r8, 0x274(r31)
    lwz     r8, 0x0(r8)
    stb     r9, 0xcc(r8)
    stw     r9, 0x68(sp)
    stw     r9, 0x70(sp)
    stw     r9, 0x78(sp)
    stw     r3, 0x6c(sp)
    stw     r0, 0x74(sp)
    stw     r0, 0x7c(sp)
    lwz     r3, 0x25c(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x25c(r31)
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
branch_0x80171b7c:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl startAppearShineGet__11TConsoleStrFv
startAppearShineGet__11TConsoleStrFv: # 0x80171b90
    lwz     r0, 0x2b4(r3)
    cmpwi   r0, 0x0
    bnelr-    

    li      r0, 0x2
    stw     r0, 0x2b4(r3)
    li      r0, 0x0
    lfs     f0, -0x48ec(r2)
    stfs    f0, 0x18(r3)
    stw     r0, 0x24(r3)
    blr


.globl startAppearGo__11TConsoleStrFv
startAppearGo__11TConsoleStrFv: # 0x80171bb8
    lwz     r0, 0x2b4(r3)
    cmpwi   r0, 0x1
    beqlr-    

    li      r0, 0x1
    stw     r0, 0x2b4(r3)
    li      r5, 0x0
    li      r0, 0xff
    lfs     f0, -0x48ec(r2)
    stfs    f0, 0x18(r3)
    stb     r5, 0x2a5(r3)
    lwz     r4, 0x28(r3)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x2c(r3)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x30(r3)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x28(r3)
    lwz     r4, 0x0(r4)
    stb     r0, 0xcc(r4)
    lwz     r4, 0x2c(r3)
    lwz     r4, 0x0(r4)
    stb     r0, 0xcc(r4)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    blr


.globl startAppearReady__11TConsoleStrFv
startAppearReady__11TConsoleStrFv: # 0x80171c2c
    lwz     r0, 0x2b4(r3)
    cmpwi   r0, 0x1
    beqlr-    

    li      r0, 0x1
    stw     r0, 0x2b4(r3)
    li      r5, 0x0
    li      r0, 0xff
    lfs     f0, -0x48ec(r2)
    stfs    f0, 0x18(r3)
    stb     r5, 0x2a5(r3)
    lwz     r4, 0x28(r3)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x2c(r3)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x30(r3)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x28(r3)
    lwz     r4, 0x0(r4)
    stb     r0, 0xcc(r4)
    lwz     r4, 0x2c(r3)
    lwz     r4, 0x0(r4)
    stb     r0, 0xcc(r4)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    blr


.globl perform__11TConsoleStrFUlPQ26JDrama9TGraphics
perform__11TConsoleStrFUlPQ26JDrama9TGraphics: # 0x80171ca0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x300(sp)
    stfd    f31, 0x2f8(sp)
    stfd    f30, 0x2f0(sp)
    stmw    r14, 0x2a8(sp)
    addi    r16, r4, 0x0
    addi    r31, r3, 0x0
    addi    r15, r5, 0x0
    beq-    branch_0x80172138
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x80172060
    lwz     r0, 0x2b4(r31)
    li      r14, 0x0
    cmpwi   r0, 0x3
    beq-    branch_0x80171dcc
    bge-    branch_0x80171d00
    cmpwi   r0, 0x1
    beq-    branch_0x80171d10
    bge-    branch_0x80171d24
    b       branch_0x80171ebc

branch_0x80171d00:
    cmpwi   r0, 0x5
    beq-    branch_0x80171e14
    bge-    branch_0x80171ebc
    b       branch_0x80171df4

branch_0x80171d10:
    mr      r3, r31
    lfs     f1, 0x18(r31)
    bl      processGo__11TConsoleStrFf
    mr      r14, r3
    b       branch_0x80171ebc

branch_0x80171d24:
    lwz     r3, 0x20(r31)
    lis     r0, 0x4330
    lfd     f2, -0x48e0(r2)
    xoris   r3, r3, 0x8000
    lfs     f3, 0x18(r31)
    stw     r3, 0x2a4(sp)
    stw     r0, 0x2a0(sp)
    lfd     f0, 0x2a0(sp)
    fsubs   f0, f0, f2
    fcmpu   cr0, f3, f0
    bne-    branch_0x80171d7c
    lwz     r3, 0x244(r31)
    li      r4, 0x28
    addi    r5, r13, R13Off_m0x63d8
    addi    r6, r13, R13Off_m0x63d0
    addi    r7, r13, R13Off_m0x63d0
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x244(r31)
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    b       branch_0x80171ebc

branch_0x80171d7c:
    stw     r3, 0x2a4(sp)
    stw     r0, 0x2a0(sp)
    lfd     f0, 0x2a0(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f3, f0
    ble-    branch_0x80171ebc
    stw     r3, 0x2a4(sp)
    mr      r3, r31
    lfs     f1, -0x48c0(r2)
    stw     r0, 0x2a0(sp)
    lfd     f0, 0x2a0(sp)
    fsubs   f0, f0, f2
    fsubs   f0, f3, f0
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x298(sp)
    lwz     r4, 0x29c(sp)
    bl      processShineGet__11TConsoleStrFi
    mr      r14, r3
    b       branch_0x80171ebc

branch_0x80171dcc:
    lfs     f1, -0x48c0(r2)
    mr      r3, r31
    lfs     f0, 0x18(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x298(sp)
    lwz     r4, 0x29c(sp)
    bl      processMiss__11TConsoleStrFi
    mr      r14, r3
    b       branch_0x80171ebc

branch_0x80171df4:
    lfs     f0, 0x18(r31)
    mr      r3, r31
    fctiwz  f0, f0
    stfd    f0, 0x298(sp)
    lwz     r4, 0x29c(sp)
    bl      processScenario__11TConsoleStrFi
    mr      r14, r3
    b       branch_0x80171ebc

branch_0x80171e14:
    lfs     f1, -0x48c0(r2)
    mr      r3, r31
    lfs     f0, 0x18(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x298(sp)
    lwz     r4, 0x29c(sp)
    bl      processReady__11TConsoleStrFi
    lfs     f1, 0x18(r31)
    mr      r14, r3
    lfs     f0, -0x48bc(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80171ebc
    fcmpu   cr0, f0, f1
    bne-    branch_0x80171ea4
    lwz     r3, 0x28(r31)
    li      r4, 0x0
    li      r0, 0xff
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x2c(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x30(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x28(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x2c(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x30(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
branch_0x80171ea4:
    lfs     f1, 0x18(r31)
    mr      r3, r31
    lfs     f0, -0x48bc(r2)
    fsubs   f1, f1, f0
    bl      processGo__11TConsoleStrFf
    and     r14, r14, r3
branch_0x80171ebc:
    lwz     r0, 0x2b8(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x80171f2c
    li      r18, 0x0
    addi    r17, r18, 0x0
    li      r19, 0x1
branch_0x80171ed4:
    add     r21, r31, r17
    addi    r20, r21, 0x28c
    lwz     r3, 0x28c(r21)
    bl      update__7TExPaneFv
    lwz     r5, 0x0(r20)
    addi    r18, r18, 0x1
    lwz     r4, 0x29c(r21)
    cmpwi   r18, 0x2
    lwz     r5, 0x0(r5)
    and     r19, r19, r3
    lbz     r0, 0xcc(r5)
    addi    r17, r17, 0x4
    subfic  r0, r0, 0xff
    stb     r0, 0xcc(r4)
    blt+    branch_0x80171ed4
    clrlwi. r0, r19, 24
    beq-    branch_0x80172040
    li      r0, 0x3
    stw     r0, 0x2b8(r31)
    lfs     f0, -0x48ec(r2)
    stfs    f0, 0x18(r31)
    b       branch_0x80172040

branch_0x80171f2c:
    cmpwi   r0, 0x8
    bne-    branch_0x80171f7c
    li      r19, 0x1
    li      r18, 0x0
    li      r17, 0x0
branch_0x80171f40:
    addi    r0, r17, 0x28c
    lwzx    r3, r31, r0
    bl      update__7TExPaneFv
    addi    r18, r18, 0x1
    cmpwi   r18, 0x2
    and     r19, r19, r3
    addi    r17, r17, 0x4
    blt+    branch_0x80171f40
    clrlwi. r0, r19, 24
    beq-    branch_0x80172040
    li      r0, 0x3
    stw     r0, 0x2b8(r31)
    lfs     f0, -0x48ec(r2)
    stfs    f0, 0x18(r31)
    b       branch_0x80172040

branch_0x80171f7c:
    cmpwi   r0, 0x5
    bne-    branch_0x80171fe4
    li      r19, 0x1
    li      r18, 0x0
    li      r17, 0x0
branch_0x80171f90:
    addi    r0, r17, 0x294
    lwzx    r3, r31, r0
    bl      update__7TExPaneFv
    addi    r18, r18, 0x1
    cmpwi   r18, 0x2
    and     r19, r19, r3
    addi    r17, r17, 0x4
    blt+    branch_0x80171f90
    clrlwi. r0, r19, 24
    beq-    branch_0x80172040
    li      r0, 0x6
    stw     r0, 0x2b8(r31)
    li      r0, 0x0
    li      r14, 0x1
    lwz     r3, 0x294(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x298(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    b       branch_0x80172040

branch_0x80171fe4:
    cmpwi   r0, 0x3
    bne-    branch_0x80172020
    lfs     f1, 0x18(r31)
    lfs     f0, -0x48b8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, -0x48bc(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80172040
    lfs     f0, -0x48ec(r2)
    li      r0, 0x4
    stfs    f0, 0x18(r31)
    stw     r0, 0x2b8(r31)
    b       branch_0x80172040

branch_0x80172020:
    cmpwi   r0, 0x1
    bne-    branch_0x80172040
    lbz     r0, 0x2a4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80172040
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startCloseWipe__11TConsoleStrFb
branch_0x80172040:
    clrlwi. r0, r14, 24
    beq-    branch_0x80172050
    li      r0, 0x0
    stw     r0, 0x2b4(r31)
branch_0x80172050:
    lfs     f1, 0x18(r31)
    lfs     f0, -0x48d0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
branch_0x80172060:
    lbz     r0, 0x2a5(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801720cc
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x801720cc
    lwz     r3, 0x2a8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80172094
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
branch_0x80172094:
    lwz     r3, 0x2ac(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801720ac
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
branch_0x801720ac:
    lwz     r3, 0x2b0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801720c4
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
branch_0x801720c4:
    li      r0, 0x1
    stb     r0, 0x2a5(r31)
branch_0x801720cc:
    lbz     r0, 0x2a5(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80172138
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80172138
    lwz     r3, 0x2a8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80172100
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
branch_0x80172100:
    lwz     r3, 0x2ac(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80172118
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
branch_0x80172118:
    lwz     r3, 0x2b0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80172130
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
branch_0x80172130:
    li      r0, 0x0
    stb     r0, 0x2a5(r31)
branch_0x80172138:
    rlwinm. r0, r16, 0, 28, 28
    beq-    branch_0x801723c0
    lwz     r0, 0x2b4(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x801723c0
    addi    r4, r15, 0x54
    addi    r14, r15, 0x64
    addi    r3, sp, 0x160
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x160
    bl      setup2D__14J2DGrafContextFv
    lwz     r0, 0x2b4(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x80172324
    lfs     f1, 0x18(r31)
    lfs     f0, -0x48bc(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80172324
    lis     r3, unk_80388280@ha
    lfs     f30, -0x48b4(r2)
    lfd     f31, -0x48b0(r2)
    addi    r26, sp, 0x250
    addi    r25, r3, unk_80388280@l
    li      r18, 0x0
    li      r16, 0x0
    li      r17, 0x0
    lis     r27, 0x4330
branch_0x801721a4:
    lwz     r4, 0x0(r25)
    add     r21, r31, r17
    lwz     r0, 0x4(r25)
    addi    r30, r21, 0x28
    addi    r3, sp, 0x260
    stw     r4, 0x250(sp)
    stw     r0, 0x254(sp)
    lwz     r0, 0x8(r25)
    stw     r0, 0x258(sp)
    lwz     r4, 0x28(r21)
    lwz     r4, 0x0(r4)
    lbz     r29, 0xcc(r4)
    addi    r4, r4, 0x14
    addi    r23, r29, 0x0
    bl      copy__7JUTRectFRC7JUTRect
    add     r22, r31, r16
    li      r24, 0x0
    li      r28, 0x0
branch_0x801721ec:
    lwzx    r4, r26, r28
    slwi    r0, r4, 3
    add     r20, r22, r0
    addi    r19, r20, 0x34
    lwz     r0, 0x34(r20)
    cmpwi   r0, 0x0
    bne-    branch_0x8017220c
    beq-    branch_0x801722c4
branch_0x8017220c:
    clrlwi  r0, r23, 24
    lwz     r3, 0x28(r21)
    stw     r0, 0x29c(sp)
    mulli   r0, r4, 0x3
    lwz     r3, 0x0(r3)
    stw     r27, 0x298(sp)
    lfd     f0, 0x298(sp)
    fsubs   f0, f0, f31
    fmuls   f0, f30, f0
    fctiwz  f0, f0
    stfd    f0, 0x2a0(sp)
    lwz     r23, 0x2a4(sp)
    stb     r23, 0xcc(r3)
    lwz     r3, 0x28(r21)
    lwz     r5, 0x264(sp)
    lwz     r3, 0x0(r3)
    lwz     r4, 0x26c(sp)
    lwz     r12, 0x0(r3)
    subf    r5, r5, r4
    lwz     r6, 0x260(sp)
    lwz     r4, 0x268(sp)
    subf    r5, r0, r5
    lwz     r12, 0x14(r12)
    subf    r4, r6, r4
    mtlr    r12
    subf    r4, r0, r4
    blrl
    lwz     r4, 0x28(r21)
    addi    r3, sp, 0x270
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r4, 0x274(sp)
    li      r8, 0x0
    lwz     r0, 0x27c(sp)
    li      r9, 0x0
    lwz     r3, 0x28(r21)
    subf    r7, r4, r0
    lwz     r5, 0x270(sp)
    lwz     r0, 0x278(sp)
    li      r10, 0x0
    lwz     r3, 0x0(r3)
    subf    r6, r5, r0
    lwz     r4, 0x0(r19)
    lwz     r5, 0x38(r20)
    bl      draw__10J2DPictureFiiiibbb
branch_0x801722c4:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x3
    addi    r28, r28, 0x4
    blt+    branch_0x801721ec
    lwz     r3, 0x0(r30)
    lwz     r3, 0x0(r3)
    stb     r29, 0xcc(r3)
    lwz     r3, 0x0(r30)
    lwz     r5, 0x264(sp)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x26c(sp)
    lwz     r12, 0x0(r3)
    subf    r5, r5, r0
    lwz     r4, 0x260(sp)
    lwz     r12, 0x14(r12)
    lwz     r0, 0x268(sp)
    mtlr    r12
    subf    r4, r4, r0
    blrl
    addi    r18, r18, 0x1
    cmpwi   r18, 0x3
    addi    r16, r16, 0xb0
    addi    r17, r17, 0x4
    blt+    branch_0x801721a4
branch_0x80172324:
    addi    r3, sp, 0x160
    bl      setup2D__14J2DGrafContextFv
    lwz     r0, 0x2b4(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x80172350
    lwz     r3, 0x14(r31)
    addi    r6, sp, 0x160
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    b       branch_0x80172364

branch_0x80172350:
    lwz     r3, 0x10(r31)
    addi    r6, sp, 0x160
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
branch_0x80172364:
    addi    r3, sp, 0x160
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x0(r14)
    lwz     r0, 0x4(r14)
    stw     r3, 0x64(r15)
    stw     r0, 0x68(r15)
    lwz     r3, 0x8(r14)
    lwz     r0, 0xc(r14)
    stw     r3, 0x6c(r15)
    stw     r0, 0x70(r15)
    lwz     r4, 0x68(r15)
    lwz     r5, 0x70(r15)
    lwz     r3, 0x64(r15)
    lwz     r0, 0x6c(r15)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    lis     r3, __vvt__14J2DGrafContext@h
    stw     r0, 0x160(sp)
    addi    r0, r3, __vvt__14J2DGrafContext@l
    stw     r0, 0x160(sp)
branch_0x801723c0:
    lmw     r14, 0x2a8(sp)
    lwz     r0, 0x304(sp)
    lfd     f31, 0x2f8(sp)
    lfd     f30, 0x2f0(sp)
    mtlr    r0
    addi    sp, sp, 0x300
    blr


.globl loadAfter__11TConsoleStrFv
loadAfter__11TConsoleStrFv: # 0x801723dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r0, 0x0
    stw     r0, 0x2a8(r31)
    stw     r0, 0x2ac(r31)
    stw     r0, 0x2b0(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__11TConsoleStrFR20JSUMemoryInputStream
load__11TConsoleStrFR20JSUMemoryInputStream: # 0x80172418
    mflr    r0
    lis     r5, unk_80388260@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r26, 0x40(sp)
    addi    r31, r3, 0x0
    addi    r27, r4, 0x0
    addi    r30, r5, unk_80388260@l
    addi    r3, r2, R2Off_m0x48a8
    addi    r4, r13, R13Off_m0x6018
    bl      SMSSwitch2DArchive__FPCcR10TARAMBlock
    addi    r28, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80172474
    addi    r3, r27, 0x0
    addi    r5, r28, 0x0
    addi    r4, r30, 0x2c
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x80172474:
    stw     r27, 0x10(r31)
    li      r4, 0x2
    lwz     r3, 0x10(r31)
    bl      setCullBack__7J2DPaneF11_GXCullMode
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801724a4
    addi    r3, r27, 0x0
    addi    r5, r28, 0x0
    addi    r4, r30, 0x3c
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x801724a4:
    stw     r27, 0x14(r31)
    li      r4, 0x2
    lwz     r3, 0x14(r31)
    bl      setCullBack__7J2DPaneF11_GXCullMode
    li      r29, 0x0
    addi    r28, r29, 0x0
    li      r27, 0x0
branch_0x801724c0:
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801724e4
    addis   r5, r27, 0x676f
    lwz     r4, 0x10(r31)
    addi    r3, r26, 0x0
    addi    r5, r5, 0x3030
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x801724e4:
    addi    r3, r29, 0x28
    add     r3, r31, r3
    stw     r26, 0x0(r3)
    addi    r27, r27, 0x1
    cmpwi   r27, 0x3
    lwz     r3, 0x0(r3)
    addi    r29, r29, 0x4
    lwz     r3, 0x0(r3)
    stb     r28, 0xc(r3)
    blt+    branch_0x801724c0
    li      r27, 0x0
    li      r29, 0x0
branch_0x80172514:
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80172538
    addis   r5, r27, 0x7367
    lwz     r4, 0x10(r31)
    addi    r3, r26, 0x0
    addi    r5, r5, 0x3030
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x80172538:
    addi    r27, r27, 0x1
    addi    r0, r29, 0x244
    cmpwi   r27, 0x6
    stwx    r26, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x80172514
    li      r27, 0x0
    li      r29, 0x0
branch_0x80172558:
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8017257c
    addis   r5, r27, 0x6d73
    lwz     r4, 0x10(r31)
    addi    r3, r26, 0x0
    addi    r5, r5, 0x3030
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8017257c:
    addi    r27, r27, 0x1
    addi    r0, r29, 0x25c
    cmpwi   r27, 0x7
    stwx    r26, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x80172558
    li      r27, 0x0
    li      r29, 0x0
branch_0x8017259c:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801725c0
    addis   r5, r27, 0x7265
    lwz     r4, 0x10(r31)
    addi    r3, r26, 0x0
    addi    r5, r5, 0x3030
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801725c0:
    addi    r27, r27, 0x1
    addi    r0, r29, 0x278
    cmpwi   r27, 0x5
    stwx    r26, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x8017259c
    lwz     r3, 0x14(r31)
    lis     r4, unk_006d6170@h
    addi    r4, r4, unk_006d6170@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x29c(r31)
    li      r4, 0x80
    lwz     r3, 0x29c(r31)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r3, 0x14(r31)
    lis     r4, unk_73747279@h
    addi    r4, r4, unk_73747279@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x2a0(r31)
    li      r4, 0x80
    lwz     r3, 0x2a0(r31)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    li      r27, 0x0
    li      r29, 0x0
branch_0x80172638:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8017265c
    addis   r5, r27, 0x6d73
    lwz     r4, 0x14(r31)
    addi    r3, r26, 0x0
    addi    r5, r5, 0x6b31
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8017265c:
    add     r3, r31, r29
    stw     r26, 0x28c(r3)
    lwz     r3, 0x29c(r3)
    lwz     r4, R13Off_m0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x80172638
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801726a4
    lis     r5, unk_77705f6c@h
    lwz     r4, 0x14(r31)
    addi    r3, r26, 0x0
    addi    r5, r5, unk_77705f6c@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801726a4:
    stw     r26, 0x294(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801726cc
    lis     r5, unk_77705f72@h
    lwz     r4, 0x14(r31)
    addi    r3, r26, 0x0
    addi    r5, r5, unk_77705f72@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801726cc:
    stw     r26, 0x298(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x7c(r3)
    bl      SMS_getShineStage__FUc
    lwz     r0, R13Off_m0x6060(r13)
    lis     r4, unk_00040003@h
    clrlwi  r27, r3, 24
    mr      r3, r0
    addi    r4, r4, unk_00040003@l
    bl      getFlag__12TFlagManagerCFUl
    addi    r29, r3, 0x0
    addi    r3, r30, 0x50
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r27
    bl      SMSGetMessageData__FPvUl
    mr      r4, r3
    lwz     r3, 0x29c(r31)
    crxor   6, 6, 6
    bl      setString__10J2DTextBoxFPCce
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xf
    beq-    branch_0x801727c4
    addi    r3, r30, 0x6c
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r27, 0x9
    ble-    branch_0x80172740
    li      r0, -0x1
    b       branch_0x8017276c

branch_0x80172740:
    lis     r4, scShineConvTable_803c0b38@h
    slwi    r5, r27, 2
    addi    r0, r4, scShineConvTable_803c0b38@l
    add     r4, r0, r5
    lwz     r4, 0x0(r4)
    cmplwi  r4, 0x0
    bne-    branch_0x80172764
    li      r0, -0x1
    b       branch_0x8017276c

branch_0x80172764:
    clrlwi  r0, r29, 24
    lbzx    r0, r4, r0
branch_0x8017276c:
    cmplwi  r3, 0x0
    beq-    branch_0x80172780
    extsh   r0, r0
    cmpwi   r0, -0x1
    bne-    branch_0x80172788
branch_0x80172780:
    addi    r27, r2, R2Off_m0x48a0
    b       branch_0x801727a8

branch_0x80172788:
    lis     r4, scScenarioNameTable_803c0b60@h
    slwi    r5, r0, 2
    addi    r0, r4, scScenarioNameTable_803c0b60@l
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    mr      r27, r3
branch_0x801727a8:
    lwz     r3, 0x2a0(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r27, 0x0
    li      r4, 0x80
    addi    r5, r2, R2Off_m0x489c
    bl      snprintf
branch_0x801727c4:
    lmw     r26, 0x40(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl getWipeCloseTime__11TConsoleStrFv
getWipeCloseTime__11TConsoleStrFv: # 0x801727d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      SMSGetVSyncTimesPerSec__Fv
    lfs     f0, -0x4898(r2)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    fdivs   f1, f0, f1
    mtlr    r0
    blr


.globl __ct__11TConsoleStrFPCc
__ct__11TConsoleStrFPCc: # 0x80172800
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r30, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r30)
    stw     r4, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    li      r31, 0x0
    lis     r3, __vvt__11TConsoleStr@h
    sth     r31, 0xc(r30)
    addi    r0, r3, __vvt__11TConsoleStr@l
    lis     r3, __ct__8JUTPointFv@h
    stw     r0, 0x0(r30)
    addi    r4, r3, __ct__8JUTPointFv@l
    li      r0, 0xb4
    stw     r31, 0x10(r30)
    addi    r3, r30, 0x34
    li      r5, 0x0
    stw     r31, 0x14(r30)
    li      r6, 0x8
    li      r7, 0x42
    stw     r0, 0x20(r30)
    stw     r31, 0x24(r30)
    bl      __construct_array
    stb     r31, 0x2a4(r30)
    li      r0, 0x7
    addi    r3, r30, 0x0
    stw     r31, 0x2b4(r30)
    stw     r0, 0x2b8(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_ConsoleStr_cpp
__sinit_ConsoleStr_cpp: # 0x801728b4
    li      r0, 0x96
    stw     r0, R13Off_m0x63d8(r13)
    li      r0, -0x32
    addi    r3, r13, R13Off_m0x63d8
    stw     r0, 0x4(r3)
    li      r9, -0x15
    li      r8, 0x7
    stw     r9, R13Off_m0x63d0(r13)
    addi    r3, r13, R13Off_m0x63d0
    li      r7, 0x0
    stw     r8, 0x4(r3)
    addi    r3, r13, R13Off_m0x63c8
    addi    r6, r13, R13Off_m0x63c0
    stw     r7, R13Off_m0x63c8(r13)
    addi    r5, r13, R13Off_m0x63b8
    li      r4, -0xc8
    stw     r7, 0x4(r3)
    li      r0, 0x41
    addi    r3, r13, R13Off_m0x63b0
    stw     r9, R13Off_m0x63c0(r13)
    stw     r8, 0x4(r6)
    stw     r7, R13Off_m0x63b8(r13)
    stw     r7, 0x4(r5)
    stw     r4, R13Off_m0x63b0(r13)
    stw     r0, 0x4(r3)
    blr

