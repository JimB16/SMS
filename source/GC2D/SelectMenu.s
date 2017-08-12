
.globl __dt__11TSelectMenuFv
__dt__11TSelectMenuFv: # 0x8017291c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80172974
    lis     r3, __vvt__11TSelectMenu@h
    addi    r0, r3, __vvt__11TSelectMenu@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80172964
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80172964:
    extsh.  r0, r31
    ble-    branch_0x80172974
    mr      r3, r30
    bl      __dl__FPv
branch_0x80172974:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl startOpenWindow__11TSelectMenuFv
startOpenWindow__11TSelectMenuFv: # 0x80172990
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stmw    r25, 0xdc(sp)
    mr      r27, r3
    lbz     r0, 0x14a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80172bc8
    li      r29, 0x1
    stw     r29, 0x10(r27)
    li      r30, 0x0
    addi    r3, sp, 0x84
    lwz     r4, 0x2c(r27)
    stb     r30, 0xc(r4)
    lwz     r4, 0x30(r27)
    lwz     r4, 0x0(r4)
    stb     r30, 0xc(r4)
    lwz     r4, 0x40(r27)
    lwz     r4, 0x0(r4)
    stb     r30, 0xc(r4)
    lwz     r4, 0xa0(r27)
    stb     r30, 0xc(r4)
    lwz     r4, 0xa4(r27)
    stb     r30, 0xc(r4)
    lfs     f1, -0x4830(r2)
    lfs     f0, 0x14c(r27)
    lwz     r4, 0x24(r27)
    fmuls   f0, f1, f0
    lwz     r4, 0x0(r4)
    fctiwz  f0, f0
    addi    r4, r4, 0x14
    stfd    f0, 0xd0(sp)
    lwz     r28, 0xd4(sp)
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x84(sp)
    lis     r31, 0x4330
    lwz     r0, 0x8c(sp)
    mr      r4, r28
    lwz     r5, 0x88(sp)
    subf    r25, r3, r0
    lwz     r0, 0x90(sp)
    xoris   r3, r25, 0x8000
    lfd     f3, -0x4828(r2)
    subf    r0, r5, r0
    stw     r3, 0xcc(sp)
    xoris   r0, r0, 0x8000
    lwz     r26, 0x24(r27)
    stw     r3, 0xbc(sp)
    lfs     f4, -0x482c(r2)
    addi    r3, r26, 0x2c
    stw     r0, 0xc4(sp)
    stw     r31, 0xc8(sp)
    stw     r31, 0xc0(sp)
    lfd     f0, 0xc8(sp)
    lfd     f2, 0xc0(sp)
    stw     r31, 0xb8(sp)
    fsubs   f1, f0, f3
    fsubs   f2, f2, f3
    lfd     f0, 0xb8(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    addi    r4, r25, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4f(r26)
    mr      r4, r28
    lwz     r3, 0x28(r27)
    lfd     f3, -0x4828(r2)
    lwz     r5, 0x0(r3)
    lfs     f4, -0x482c(r2)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r5, 0x84(sp)
    lwz     r0, 0x8c(sp)
    lwz     r3, 0x88(sp)
    subf    r25, r5, r0
    lwz     r0, 0x90(sp)
    xoris   r5, r25, 0x8000
    lwz     r26, 0x28(r27)
    subf    r0, r3, r0
    stw     r5, 0xb4(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0xac(sp)
    addi    r3, r26, 0x2c
    stw     r5, 0xa4(sp)
    stw     r31, 0xb0(sp)
    stw     r31, 0xa8(sp)
    lfd     f0, 0xb0(sp)
    lfd     f2, 0xa8(sp)
    stw     r31, 0xa0(sp)
    fsubs   f1, f0, f3
    fsubs   f2, f2, f3
    lfd     f0, 0xa0(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    addi    r4, r25, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4f(r26)
    mr      r4, r28
    lwz     r3, 0x88(sp)
    lwz     r0, 0x90(sp)
    lfs     f1, -0x482c(r2)
    subf    r28, r3, r0
    lwz     r26, 0x28(r27)
    xoris   r0, r28, 0x8000
    lfd     f4, -0x4828(r2)
    stw     r0, 0x9c(sp)
    fmr     f2, f1
    fmr     f3, f1
    addi    r3, r26, 0x14
    stw     r31, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r0, 0x8(r26)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r26)
    add     r5, r0, r28
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lis     r3, unk_80010024@h
    stb     r29, 0x4e(r26)
    addi    r3, r3, unk_80010024@l
    bl      startBGM__5MSBgmFUl
    stb     r30, 0x138(r27)
branch_0x80172bc8:
    lmw     r25, 0xdc(sp)
    lwz     r0, 0xfc(sp)
    addi    sp, sp, 0xf8
    mtlr    r0
    blr


.globl getPrevIndex__11TSelectMenuFv
getPrevIndex__11TSelectMenuFv: # 0x80172bdc
    lbz     r4, 0x13b(r3)
    li      r5, -0x1
    cmplwi  r4, 0x0
    bne-    branch_0x80172bf4
    li      r3, -0x1
    blr

branch_0x80172bf4:
    subic.  r4, r4, 0x1
    addi    r0, r4, 0x1
    mtctr   r0
    blt-    branch_0x80172c2c
branch_0x80172c04:
    addi    r0, r4, 0x150
    lbzx    r0, r3, r0
    cmplwi  r0, 0x2
    beq-    branch_0x80172c1c
    cmplwi  r0, 0x3
    bne-    branch_0x80172c24
branch_0x80172c1c:
    extsb   r5, r4
    b       branch_0x80172c2c

branch_0x80172c24:
    addi    r4, r4, -0x1
    bdnz+      branch_0x80172c04
branch_0x80172c2c:
    mr      r3, r5
    blr


.globl getNextIndex__11TSelectMenuFv
getNextIndex__11TSelectMenuFv: # 0x80172c34
    lbz     r4, 0x13b(r3)
    li      r5, -0x1
    cmplwi  r4, 0x8
    blt-    branch_0x80172c4c
    li      r3, -0x1
    blr

branch_0x80172c4c:
    addi    r4, r4, 0x1
    subfic  r0, r4, 0x8
    cmpwi   r4, 0x8
    mtctr   r0
    bge-    branch_0x80172c88
branch_0x80172c60:
    addi    r0, r4, 0x150
    lbzx    r0, r3, r0
    cmplwi  r0, 0x2
    beq-    branch_0x80172c78
    cmplwi  r0, 0x3
    bne-    branch_0x80172c80
branch_0x80172c78:
    extsb   r5, r4
    b       branch_0x80172c88

branch_0x80172c80:
    addi    r4, r4, 0x1
    bdnz+      branch_0x80172c60
branch_0x80172c88:
    mr      r3, r5
    blr


.globl perform__11TSelectMenuFUlPQ26JDrama9TGraphics
perform__11TSelectMenuFUlPQ26JDrama9TGraphics: # 0x80172c90
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x7b0(sp)
    stmw    r18, 0x778(sp)
    addi    r19, r4, 0x0
    lis     r4, unk_803c0ca0@h
    addi    r31, r3, 0x0
    addi    r18, r5, 0x0
    addi    r30, r4, unk_803c0ca0@l
    beq-    branch_0x801743b8
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x9
    bgt-    branch_0x801743b8
    lis     r3, unk_803c0e7c@h
    addi    r3, r3, unk_803c0e7c@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x80172ce0:
    li      r20, 0x1
    lwz     r3, 0x24(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    lwz     r3, 0x28(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    clrlwi. r0, r20, 24
    bne-    branch_0x80172d28
    lfs     f1, -0x4820(r2)
    lfs     f0, 0x14c(r31)
    lbz     r3, 0x138(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x770(sp)
    lwz     r0, 0x774(sp)
    cmpw    r3, r0
    ble-    branch_0x80172db8
branch_0x80172d28:
    lwz     r3, 0x30(r31)
    li      r20, 0x1
    lis     r0, 0x4330
    lwz     r3, 0x0(r3)
    stb     r20, 0xc(r3)
    lwz     r22, 0x30(r31)
    lfs     f1, -0x482c(r2)
    lwz     r4, 0x4(r22)
    addi    r3, r22, 0x14
    lfs     f4, -0x4820(r2)
    fmr     f2, f1
    lfs     f0, 0x14c(r31)
    subfic  r21, r4, 0x259
    lfd     f3, -0x4828(r2)
    fmuls   f0, f4, f0
    xoris   r4, r21, 0x8000
    fmr     f4, f1
    stw     r4, 0x76c(sp)
    fctiwz  f0, f0
    stw     r0, 0x768(sp)
    stfd    f0, 0x770(sp)
    lfd     f0, 0x768(sp)
    lwz     r4, 0x774(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    lwz     r0, 0x4(r22)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x8(r22)
    add     r4, r0, r21
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r20, 0x4e(r22)
    li      r0, 0x2
    stw     r0, 0x10(r31)
branch_0x80172db8:
    lbz     r3, 0x138(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x138(r31)
    b       branch_0x801743b8

branch_0x80172dc8:
    li      r20, 0x1
    lwz     r3, 0x24(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    lwz     r3, 0x28(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    lwz     r3, 0x30(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    clrlwi. r0, r20, 24
    beq-    branch_0x801743b8
    lwz     r4, 0x34(r31)
    addi    r3, sp, 0x54c
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lfs     f1, -0x481c(r2)
    li      r20, 0x0
    lfs     f0, 0x14c(r31)
    li      r23, -0xa
    li      r22, -0x6
    fmuls   f0, f1, f0
    stw     r20, 0x5c4(sp)
    addi    r7, sp, 0x5d4
    stw     r20, 0x5d4(sp)
    addi    r6, sp, 0x5cc
    fctiwz  f0, f0
    stw     r20, 0x5cc(sp)
    addi    r5, sp, 0x5c4
    stw     r23, 0x5d8(sp)
    stfd    f0, 0x768(sp)
    lwz     r24, 0x76c(sp)
    stw     r22, 0x5d0(sp)
    mr      r4, r24
    stw     r20, 0x5c8(sp)
    lwz     r3, 0x34(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r27, -0xa0
    stw     r20, 0x5dc(sp)
    li      r26, -0x6e
    stw     r27, 0x5ec(sp)
    li      r21, 0x14
    li      r25, 0xc
    stw     r26, 0x5e4(sp)
    addi    r7, sp, 0x5ec
    addi    r6, sp, 0x5e4
    stw     r21, 0x5f0(sp)
    addi    r5, sp, 0x5dc
    mr      r4, r24
    stw     r25, 0x5e8(sp)
    stw     r20, 0x5e0(sp)
    lwz     r3, 0x34(r31)
    bl      setPaneSize__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    stw     r20, 0x604(sp)
    addi    r7, sp, 0x604
    addi    r6, sp, 0x5fc
    stw     r20, 0x5fc(sp)
    addi    r5, sp, 0x5f4
    addi    r4, r24, 0x0
    stw     r20, 0x5f4(sp)
    stw     r23, 0x608(sp)
    stw     r22, 0x600(sp)
    stw     r20, 0x5f8(sp)
    lwz     r3, 0x38(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    stw     r27, 0x61c(sp)
    addi    r7, sp, 0x61c
    addi    r6, sp, 0x614
    stw     r26, 0x614(sp)
    addi    r5, sp, 0x60c
    addi    r4, r24, 0x0
    stw     r20, 0x60c(sp)
    stw     r21, 0x620(sp)
    stw     r25, 0x618(sp)
    stw     r20, 0x610(sp)
    lwz     r3, 0x38(r31)
    bl      setPaneSize__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r0, 0x3
    stw     r0, 0x10(r31)
    b       branch_0x801743b8

branch_0x80172f0c:
    li      r20, 0x1
    lwz     r3, 0x34(r31)
    bl      update__10TBoundPaneFv
    and     r20, r20, r3
    lwz     r3, 0x38(r31)
    bl      update__10TBoundPaneFv
    and     r20, r20, r3
    clrlwi. r0, r20, 24
    beq-    branch_0x801743b8
    lwz     r4, 0x34(r31)
    addi    r3, sp, 0x564
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lfs     f1, -0x4820(r2)
    li      r26, 0x0
    lfs     f0, 0x14c(r31)
    li      r27, 0x4
    li      r28, -0x6
    fmuls   f0, f1, f0
    stw     r26, 0x634(sp)
    li      r29, -0xa
    stw     r26, 0x62c(sp)
    addi    r7, sp, 0x634
    fctiwz  f0, f0
    stw     r26, 0x624(sp)
    addi    r6, sp, 0x62c
    stw     r27, 0x638(sp)
    addi    r5, sp, 0x624
    stfd    f0, 0x768(sp)
    lwz     r25, 0x76c(sp)
    stw     r28, 0x630(sp)
    mr      r4, r25
    stw     r29, 0x628(sp)
    lwz     r3, 0x34(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r21, 0x28
    li      r23, -0x6e
    stw     r21, 0x64c(sp)
    li      r22, -0xa0
    li      r30, -0x8
    stw     r23, 0x644(sp)
    li      r24, 0xc
    stw     r22, 0x63c(sp)
    li      r20, 0x14
    addi    r7, sp, 0x64c
    stw     r30, 0x650(sp)
    addi    r6, sp, 0x644
    addi    r5, sp, 0x63c
    stw     r24, 0x648(sp)
    mr      r4, r25
    stw     r20, 0x640(sp)
    lwz     r3, 0x34(r31)
    bl      setPaneSize__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    stw     r26, 0x664(sp)
    addi    r7, sp, 0x664
    addi    r6, sp, 0x65c
    stw     r26, 0x65c(sp)
    addi    r5, sp, 0x654
    addi    r4, r25, 0x0
    stw     r26, 0x654(sp)
    stw     r27, 0x668(sp)
    stw     r28, 0x660(sp)
    stw     r29, 0x658(sp)
    lwz     r3, 0x38(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    stw     r21, 0x67c(sp)
    addi    r7, sp, 0x67c
    addi    r6, sp, 0x674
    stw     r23, 0x674(sp)
    addi    r5, sp, 0x66c
    addi    r4, r25, 0x0
    stw     r22, 0x66c(sp)
    stw     r30, 0x680(sp)
    stw     r24, 0x678(sp)
    stw     r20, 0x670(sp)
    lwz     r3, 0x38(r31)
    bl      setPaneSize__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    stw     r27, 0x10(r31)
    b       branch_0x801743b8

branch_0x8017304c:
    li      r20, 0x1
    lwz     r3, 0x34(r31)
    bl      update__10TBoundPaneFv
    and     r20, r20, r3
    lwz     r3, 0x38(r31)
    bl      update__10TBoundPaneFv
    and     r20, r20, r3
    clrlwi. r0, r20, 24
    beq-    branch_0x801743b8
    lwz     r4, 0x34(r31)
    addi    r3, sp, 0x57c
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lfs     f1, -0x481c(r2)
    li      r22, 0x0
    lfs     f0, 0x14c(r31)
    li      r21, 0x3
    li      r20, 0x4
    fmuls   f0, f1, f0
    stw     r22, 0x694(sp)
    addi    r7, sp, 0x694
    stw     r22, 0x68c(sp)
    addi    r6, sp, 0x68c
    fctiwz  f0, f0
    stw     r22, 0x684(sp)
    addi    r5, sp, 0x684
    stw     r22, 0x698(sp)
    stfd    f0, 0x768(sp)
    lwz     r23, 0x76c(sp)
    stw     r21, 0x690(sp)
    mr      r4, r23
    stw     r20, 0x688(sp)
    lwz     r3, 0x34(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r27, 0xf
    stw     r22, 0x6ac(sp)
    li      r25, 0x28
    stw     r27, 0x6a4(sp)
    li      r26, -0x6
    li      r24, -0x8
    stw     r25, 0x69c(sp)
    addi    r7, sp, 0x6ac
    addi    r6, sp, 0x6a4
    stw     r22, 0x6b0(sp)
    addi    r5, sp, 0x69c
    mr      r4, r23
    stw     r26, 0x6a8(sp)
    stw     r24, 0x6a0(sp)
    lwz     r3, 0x34(r31)
    bl      setPaneSize__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    stw     r22, 0x6c4(sp)
    addi    r7, sp, 0x6c4
    addi    r6, sp, 0x6bc
    stw     r22, 0x6bc(sp)
    addi    r5, sp, 0x6b4
    addi    r4, r23, 0x0
    stw     r22, 0x6b4(sp)
    stw     r22, 0x6c8(sp)
    stw     r21, 0x6c0(sp)
    stw     r20, 0x6b8(sp)
    lwz     r3, 0x38(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    stw     r22, 0x6dc(sp)
    addi    r7, sp, 0x6dc
    addi    r6, sp, 0x6d4
    stw     r27, 0x6d4(sp)
    addi    r5, sp, 0x6cc
    addi    r4, r23, 0x0
    stw     r25, 0x6cc(sp)
    stw     r22, 0x6e0(sp)
    stw     r26, 0x6d8(sp)
    stw     r24, 0x6d0(sp)
    lwz     r3, 0x38(r31)
    bl      setPaneSize__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x2c(r31)
    li      r4, 0x1
    li      r0, 0x5
    stb     r4, 0xc(r3)
    lwz     r3, 0x2c(r31)
    stb     r22, 0xcc(r3)
    lwz     r3, 0x40(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x40(r31)
    lwz     r3, 0x0(r3)
    stb     r22, 0xcc(r3)
    lwz     r3, 0xa0(r31)
    stb     r4, 0xc(r3)
    lwz     r3, 0xa0(r31)
    stb     r22, 0xcc(r3)
    lwz     r3, 0xa4(r31)
    stb     r4, 0xc(r3)
    lwz     r3, 0xa4(r31)
    stb     r22, 0xcc(r3)
    stw     r0, 0x10(r31)
    b       branch_0x801743b8

branch_0x801731d0:
    li      r20, 0x1
    lwz     r3, 0x34(r31)
    bl      update__10TBoundPaneFv
    and     r20, r20, r3
    lwz     r3, 0x38(r31)
    bl      update__10TBoundPaneFv
    lwz     r4, 0x2c(r31)
    and     r20, r20, r3
    lbz     r21, 0xcc(r4)
    bl      SMSGetAnmFrameRate__Fv
    stw     r21, 0x76c(sp)
    lis     r0, 0x4330
    lfd     f2, -0x47f8(r2)
    stw     r0, 0x768(sp)
    lfs     f3, -0x4818(r2)
    lfd     f0, 0x768(sp)
    fsubs   f0, f0, f2
    fmadds  f0, f3, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x770(sp)
    lwz     r21, 0x774(sp)
    clrlwi  r0, r21, 16
    cmplwi  r0, 0xff
    ble-    branch_0x80173234
    li      r21, 0xff
branch_0x80173234:
    clrlwi  r0, r21, 16
    lwz     r3, 0x2c(r31)
    cmplwi  r0, 0x80
    stb     r21, 0xcc(r3)
    li      r4, 0x0
    ble-    branch_0x801732d8
    lwz     r3, 0x40(r31)
    lwz     r3, 0x0(r3)
    lbz     r21, 0xcc(r3)
    bl      SMSGetAnmFrameRate__Fv
    xoris   r22, r21, 0x8000
    lfd     f2, -0x4828(r2)
    stw     r22, 0x76c(sp)
    lis     r21, 0x4330
    lfs     f3, -0x4818(r2)
    stw     r21, 0x768(sp)
    lfs     f4, -0x4814(r2)
    lfd     f0, 0x768(sp)
    fsubs   f0, f0, f2
    fmadds  f0, f3, f1, f0
    fcmpo   cr0, f0, f4
    ble-    branch_0x80173290
    b       branch_0x801732b0

branch_0x80173290:
    bl      SMSGetAnmFrameRate__Fv
    stw     r22, 0x76c(sp)
    lfd     f2, -0x4828(r2)
    stw     r21, 0x768(sp)
    lfs     f3, -0x4818(r2)
    lfd     f0, 0x768(sp)
    fsubs   f0, f0, f2
    fmadds  f4, f3, f1, f0
branch_0x801732b0:
    fctiwz  f0, f4
    lwz     r3, 0x40(r31)
    lwz     r3, 0x0(r3)
    stfd    f0, 0x768(sp)
    lwz     r4, 0x76c(sp)
    stb     r4, 0xcc(r3)
    lwz     r3, 0xa0(r31)
    stb     r4, 0xcc(r3)
    lwz     r3, 0xa4(r31)
    stb     r4, 0xcc(r3)
branch_0x801732d8:
    clrlwi. r0, r20, 24
    beq-    branch_0x801743b8
    cmpwi   r4, 0xff
    bne-    branch_0x801743b8
    li      r0, 0x6
    stw     r0, 0x10(r31)
    b       branch_0x801743b8

branch_0x801732f4:
    lbz     r3, 0x139(r31)
    lha     r0, 0x16c(r31)
    cmpw    r3, r0
    ble-    branch_0x8017330c
    li      r0, 0x0
    stw     r0, 0x10(r31)
branch_0x8017330c:
    lbz     r3, 0x139(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x139(r31)
    b       branch_0x801743b8

branch_0x8017331c:
    lwz     r3, 0x100(r31)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x8017374c
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4855
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80173354
    li      r3, 0x4855
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80173354:
    lwz     r4, 0x24(r31)
    addi    r3, sp, 0x594
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    li      r0, 0xe0
    lfs     f1, -0x4830(r2)
    lfs     f0, 0x14c(r31)
    xoris   r0, r0, 0x8000
    lwz     r7, 0x598(sp)
    lis     r4, 0x4330
    lwz     r6, 0x5a0(sp)
    fmuls   f0, f1, f0
    stw     r0, 0x764(sp)
    subf    r21, r7, r6
    lwz     r5, 0x594(sp)
    lwz     r3, 0x59c(sp)
    subf    r22, r5, r3
    fctiwz  f5, f0
    xoris   r3, r22, 0x8000
    stw     r4, 0x760(sp)
    xoris   r0, r21, 0x8000
    lfd     f4, -0x4828(r2)
    stw     r3, 0x774(sp)
    lfd     f0, 0x760(sp)
    stw     r3, 0x75c(sp)
    lwz     r20, 0x24(r31)
    fsubs   f2, f0, f4
    stw     r0, 0x754(sp)
    addi    r3, r20, 0x2c
    stw     r4, 0x770(sp)
    stw     r4, 0x758(sp)
    lfd     f1, 0x770(sp)
    stw     r4, 0x750(sp)
    lfd     f3, 0x758(sp)
    fsubs   f1, f1, f4
    stfd    f5, 0x768(sp)
    lfd     f0, 0x750(sp)
    fsubs   f3, f3, f4
    lwz     r24, 0x76c(sp)
    fsubs   f4, f0, f4
    mr      r4, r24
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r20)
    addi    r4, r22, 0x0
    addi    r5, r21, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4f(r20)
    lwz     r7, 0x24(r31)
    lwz     r3, 0x0(r7)
    lbz     r3, 0xcc(r3)
    extsh.  r0, r3
    bge-    branch_0x80173440
    li      r6, 0x0
    b       branch_0x80173444

branch_0x80173440:
    mr      r6, r3
branch_0x80173444:
    extsh   r0, r6
    cmpwi   r0, 0xff
    ble-    branch_0x80173454
    li      r6, 0xff
branch_0x80173454:
    extsh   r4, r3
    lwz     r5, 0x0(r7)
    subfic  r0, r4, 0xff
    xoris   r3, r0, 0x8000
    stb     r6, 0xcc(r5)
    xoris   r0, r24, 0x8000
    stw     r3, 0x75c(sp)
    lis     r21, 0x4330
    xoris   r3, r4, 0x8000
    lfd     f4, -0x4828(r2)
    stw     r0, 0x764(sp)
    li      r0, 0xff
    stw     r21, 0x758(sp)
    li      r20, 0x1
    mr      r4, r24
    stw     r21, 0x760(sp)
    lfd     f1, 0x758(sp)
    lfd     f0, 0x760(sp)
    fsubs   f1, f1, f4
    stw     r3, 0x754(sp)
    fsubs   f0, f0, f4
    stw     r21, 0x750(sp)
    fdivs   f0, f1, f0
    lfd     f1, 0x750(sp)
    fsubs   f1, f1, f4
    stfs    f1, 0x44(r7)
    stfs    f0, 0x48(r7)
    sth     r0, 0x4c(r7)
    stb     r20, 0x50(r7)
    lwz     r3, 0x28(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x594(sp)
    stw     r0, 0x598(sp)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x59c(sp)
    stw     r0, 0x5a0(sp)
    lwz     r5, 0x5a0(sp)
    lwz     r0, 0x598(sp)
    addi    r3, r5, -0xe0
    lwz     r6, 0x594(sp)
    subf    r23, r0, r5
    lwz     r5, 0x59c(sp)
    xoris   r3, r3, 0x8000
    lwz     r22, 0x28(r31)
    stw     r3, 0x774(sp)
    subf    r25, r6, r5
    xoris   r5, r25, 0x8000
    xoris   r0, r23, 0x8000
    stw     r5, 0x76c(sp)
    addi    r3, r22, 0x2c
    stw     r0, 0x744(sp)
    stw     r5, 0x74c(sp)
    stw     r21, 0x770(sp)
    stw     r21, 0x768(sp)
    lfd     f0, 0x770(sp)
    stw     r21, 0x748(sp)
    lfd     f1, 0x768(sp)
    fsubs   f2, f0, f4
    stw     r21, 0x740(sp)
    lfd     f3, 0x748(sp)
    fsubs   f1, f1, f4
    lfd     f0, 0x740(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    addi    r4, r25, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r20, 0x4f(r22)
    mr      r4, r24
    lwz     r0, 0x598(sp)
    lfs     f1, -0x482c(r2)
    subfic  r0, r0, 0xe0
    lwz     r22, 0x28(r31)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x4828(r2)
    stw     r0, 0x73c(sp)
    fmr     f3, f1
    fmr     f4, f1
    addi    r3, r22, 0x14
    stw     r21, 0x738(sp)
    lfd     f0, 0x738(sp)
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    lwz     r4, 0x4(r22)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x8(r22)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r20, 0x4e(r22)
    lwz     r8, 0x28(r31)
    lwz     r3, 0x0(r8)
    lbz     r3, 0xcc(r3)
    extsh.  r0, r3
    bge-    branch_0x801735fc
    li      r7, 0x0
    b       branch_0x80173600

branch_0x801735fc:
    mr      r7, r3
branch_0x80173600:
    extsh   r0, r7
    cmpwi   r0, 0xff
    ble-    branch_0x80173610
    li      r7, 0xff
branch_0x80173610:
    extsh   r5, r3
    lwz     r6, 0x0(r8)
    subfic  r0, r5, 0xff
    xoris   r3, r0, 0x8000
    stb     r7, 0xcc(r6)
    xoris   r0, r24, 0x8000
    stw     r3, 0x744(sp)
    lis     r4, 0x4330
    xoris   r5, r5, 0x8000
    lfd     f2, -0x4828(r2)
    stw     r0, 0x74c(sp)
    li      r3, 0xff
    stw     r4, 0x740(sp)
    li      r0, 0x1
    stw     r4, 0x748(sp)
    lfd     f1, 0x740(sp)
    lfd     f0, 0x748(sp)
    fsubs   f1, f1, f2
    stw     r5, 0x73c(sp)
    fsubs   f0, f0, f2
    stw     r4, 0x738(sp)
    fdivs   f0, f1, f0
    lfd     f1, 0x738(sp)
    fsubs   f1, f1, f2
    stfs    f1, 0x44(r8)
    stfs    f0, 0x48(r8)
    sth     r3, 0x4c(r8)
    stb     r0, 0x50(r8)
    lwz     r3, 0x134(r31)
    bl      changeOrder__10TSelectDirFv
    lwz     r3, 0x130(r31)
    bl      startClose__19TSelectShineManagerFv
    lfs     f0, -0x4810(r2)
    lfs     f1, -0x480c(r2)
    stfs    f0, 0x5a8(sp)
    lfs     f0, -0x482c(r2)
    stfs    f1, 0x5ac(sp)
    stfs    f0, 0x5b0(sp)
    lbz     r0, 0x13b(r31)
    lwz     r4, 0x134(r31)
    add     r3, r31, r0
    lbz     r0, 0x150(r3)
    lwz     r20, 0x34(r4)
    cmplwi  r0, 0x3
    bne-    branch_0x801736e0
    addi    r3, r20, 0x0
    addi    r4, sp, 0x5a8
    li      r5, 0x5
    li      r6, 0x0
    li      r7, 0x0
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    b       branch_0x801736f8

branch_0x801736e0:
    addi    r3, r20, 0x0
    addi    r4, sp, 0x5a8
    li      r5, 0x4
    li      r6, 0x0
    li      r7, 0x0
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x801736f8:
    addi    r3, r20, 0x0
    addi    r4, sp, 0x5a8
    li      r5, 0x6
    li      r6, 0x0
    li      r7, 0x0
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    addi    r3, r20, 0x0
    addi    r4, sp, 0x5a8
    li      r5, 0x7
    li      r6, 0x0
    li      r7, 0x0
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    addi    r3, r20, 0x0
    addi    r4, sp, 0x5a8
    li      r5, 0x8
    li      r6, 0x0
    li      r7, 0x0
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    li      r0, 0x8
    stw     r0, 0x10(r31)
    b       branch_0x801743b8

branch_0x8017374c:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80173aec
    mr      r3, r31
    bl      getPrevIndex__11TSelectMenuFv
    extsb   r0, r3
    cmpwi   r0, -0x1
    beq-    branch_0x801743b8
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4856
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80173790
    li      r3, 0x4856
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80173790:
    mr      r3, r31
    bl      getPrevIndex__11TSelectMenuFv
    mr      r23, r3
    lbz     r0, 0x13b(r31)
    clrlwi  r22, r3, 24
    lwz     r3, 0x130(r31)
    subf    r4, r22, r0
    bl      startDecrease__19TSelectShineManagerFi
    li      r21, 0x0
    stb     r21, 0x54(r31)
    li      r20, 0x1
    li      r25, 0xff
    lwz     r3, 0x68(r31)
    lis     r24, 0x4330
    li      r4, 0xa
    lwz     r3, 0x0(r3)
    stb     r20, 0xc(r3)
    lwz     r5, 0x68(r31)
    lwz     r3, 0x0(r5)
    stb     r21, 0xcc(r3)
    lfs     f2, -0x482c(r2)
    stfs    f2, 0x44(r5)
    fmr     f4, f2
    lfs     f0, -0x4808(r2)
    stfs    f0, 0x48(r5)
    sth     r25, 0x4c(r5)
    stb     r20, 0x50(r5)
    lha     r0, 0x7c(r31)
    lfd     f3, -0x4828(r2)
    neg     r0, r0
    lwz     r26, 0x68(r31)
    slwi    r27, r0, 1
    xoris   r3, r0, 0x8000
    stw     r3, 0x73c(sp)
    xoris   r0, r27, 0x8000
    addi    r3, r26, 0x14
    stw     r0, 0x744(sp)
    stw     r24, 0x738(sp)
    stw     r24, 0x740(sp)
    lfd     f1, 0x738(sp)
    lfd     f0, 0x740(sp)
    fsubs   f1, f1, f3
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r0, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x8(r26)
    add     r4, r0, r27
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r20, 0x4e(r26)
    li      r4, 0xa
    lwz     r3, 0x40(r31)
    lwz     r3, 0x0(r3)
    stb     r20, 0xc(r3)
    lwz     r5, 0x40(r31)
    lwz     r3, 0x0(r5)
    stb     r25, 0xcc(r3)
    lfs     f0, -0x4814(r2)
    stfs    f0, 0x44(r5)
    lfs     f0, -0x4804(r2)
    stfs    f0, 0x48(r5)
    sth     r21, 0x4c(r5)
    stb     r20, 0x50(r5)
    lha     r0, 0x7c(r31)
    lfs     f2, -0x482c(r2)
    xoris   r0, r0, 0x8000
    lwz     r25, 0x40(r31)
    stw     r0, 0x74c(sp)
    fmr     f3, f2
    lfd     f1, -0x4828(r2)
    fmr     f4, f2
    stw     r24, 0x748(sp)
    addi    r3, r25, 0x14
    lfd     f0, 0x748(sp)
    fsubs   f1, f0, f1
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x8(r25)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r20, 0x4e(r25)
    slwi    r0, r22, 2
    add     r22, r31, r0
    lwzu    r4, 0x80(r22)
    li      r5, 0x0
    lwz     r3, 0x70(r31)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r4, 0x0(r22)
    li      r5, 0x0
    lwz     r3, 0x74(r31)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lbz     r0, 0x13b(r31)
    li      r5, 0x0
    lwz     r3, 0x48(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x80(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lbz     r0, 0x13b(r31)
    li      r5, 0x0
    lwz     r3, 0x4c(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x80(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lbz     r3, 0x13a(r31)
    bl      SMS_getShineStage__FUc
    lbz     r4, 0x13b(r31)
    clrlwi  r3, r3, 24
    li      r5, 0x0
    bl      SMS_getShineID__FUlUlb_80175af8
    extsh   r0, r3
    lwz     r3, 0x15c(r31)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r0, 0x78(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    mr      r22, r3
    lwz     r3, 0x44(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x7f
    bl      strncpy
    lbz     r3, 0x13b(r31)
    lwz     r0, 0x144(r31)
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0xdc(r3)
    stw     r0, 0x13c(r3)
    lbz     r0, 0x13b(r31)
    lbz     r4, 0x149(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xdc(r3)
    stb     r4, 0xcc(r3)
    lbz     r0, 0x13b(r31)
    lwz     r3, 0x130(r31)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x10(r3)
    stb     r21, 0x24(r3)
    stb     r23, 0x13b(r31)
    lbz     r3, 0x13a(r31)
    bl      SMS_getShineStage__FUc
    lbz     r4, 0x13b(r31)
    clrlwi  r3, r3, 24
    li      r5, 0x0
    bl      SMS_getShineID__FUlUlb_80175af8
    extsh   r0, r3
    lwz     r3, 0x15c(r31)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r0, 0x78(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    mr      r21, r3
    lwz     r3, 0x6c(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r21, 0x0
    li      r5, 0x7f
    bl      strncpy
    lbz     r3, 0x13b(r31)
    lwz     r0, 0x140(r31)
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0xdc(r3)
    stw     r0, 0x13c(r3)
    lbz     r0, 0x13b(r31)
    lbz     r4, 0x148(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xdc(r3)
    stb     r4, 0xcc(r3)
    lbz     r0, 0x13b(r31)
    lwz     r3, 0x130(r31)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x10(r3)
    stb     r20, 0x24(r3)
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x1
    ble-    branch_0x80173ae0
    lbz     r0, 0x13b(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80173ab4
    lwz     r3, 0x104(r31)
    lbzu    r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80173ab4
    stb     r20, 0x0(r3)
branch_0x80173ab4:
    lbz     r3, 0x13c(r31)
    lbz     r4, 0x13b(r31)
    addi    r0, r3, -0x1
    cmpw    r4, r0
    beq-    branch_0x80173ae0
    lwz     r3, 0x108(r31)
    lbzu    r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80173ae0
    li      r0, 0x1
    stb     r0, 0x0(r3)
branch_0x80173ae0:
    li      r0, 0x7
    stw     r0, 0x10(r31)
    b       branch_0x80173e70

branch_0x80173aec:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x80173e70
    mr      r3, r31
    bl      getNextIndex__11TSelectMenuFv
    extsb   r0, r3
    cmpwi   r0, -0x1
    beq-    branch_0x801743b8
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4856
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80173b30
    li      r3, 0x4856
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80173b30:
    mr      r3, r31
    bl      getNextIndex__11TSelectMenuFv
    mr      r23, r3
    lbz     r0, 0x13b(r31)
    clrlwi  r22, r3, 24
    lwz     r3, 0x130(r31)
    subf    r4, r0, r22
    bl      startIncrease__19TSelectShineManagerFi
    li      r21, 0x1
    stb     r21, 0x54(r31)
    li      r20, 0x0
    li      r25, 0xff
    lwz     r3, 0x68(r31)
    lis     r24, 0x4330
    li      r4, 0xa
    lwz     r3, 0x0(r3)
    stb     r21, 0xc(r3)
    lwz     r5, 0x68(r31)
    lwz     r3, 0x0(r5)
    stb     r20, 0xcc(r3)
    lfs     f2, -0x482c(r2)
    stfs    f2, 0x44(r5)
    fmr     f3, f2
    fmr     f4, f2
    lfs     f0, -0x4808(r2)
    stfs    f0, 0x48(r5)
    sth     r25, 0x4c(r5)
    stb     r21, 0x50(r5)
    lha     r0, 0x7c(r31)
    lwz     r26, 0x68(r31)
    neg     r0, r0
    lfd     f1, -0x4828(r2)
    xoris   r0, r0, 0x8000
    stw     r0, 0x73c(sp)
    addi    r3, r26, 0x14
    stw     r24, 0x738(sp)
    lfd     f0, 0x738(sp)
    fsubs   f1, f0, f1
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r4, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x8(r26)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r21, 0x4e(r26)
    li      r4, 0xa
    lwz     r3, 0x40(r31)
    lwz     r3, 0x0(r3)
    stb     r21, 0xc(r3)
    lwz     r5, 0x40(r31)
    lwz     r3, 0x0(r5)
    stb     r25, 0xcc(r3)
    lfs     f0, -0x4814(r2)
    stfs    f0, 0x44(r5)
    lfs     f0, -0x4804(r2)
    stfs    f0, 0x48(r5)
    sth     r20, 0x4c(r5)
    stb     r21, 0x50(r5)
    lha     r0, 0x7c(r31)
    lfs     f2, -0x482c(r2)
    neg     r0, r0
    lwz     r25, 0x40(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x4828(r2)
    stw     r0, 0x744(sp)
    fmr     f3, f2
    fmr     f4, f2
    addi    r3, r25, 0x14
    stw     r24, 0x740(sp)
    lfd     f0, 0x740(sp)
    fsubs   f1, f0, f1
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x8(r25)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r21, 0x4e(r25)
    slwi    r0, r22, 2
    add     r22, r31, r0
    lwzu    r4, 0x80(r22)
    li      r5, 0x0
    lwz     r3, 0x70(r31)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r4, 0x0(r22)
    li      r5, 0x0
    lwz     r3, 0x74(r31)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lbz     r0, 0x13b(r31)
    li      r5, 0x0
    lwz     r3, 0x48(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x80(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lbz     r0, 0x13b(r31)
    li      r5, 0x0
    lwz     r3, 0x4c(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x80(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lbz     r3, 0x13a(r31)
    bl      SMS_getShineStage__FUc
    lbz     r4, 0x13b(r31)
    clrlwi  r3, r3, 24
    li      r5, 0x0
    bl      SMS_getShineID__FUlUlb_80175af8
    extsh   r0, r3
    lwz     r3, 0x15c(r31)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r0, 0x78(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    mr      r22, r3
    lwz     r3, 0x44(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x7f
    bl      strncpy
    lbz     r0, 0x13b(r31)
    lwz     r3, 0x130(r31)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x10(r3)
    stb     r20, 0x24(r3)
    lbz     r3, 0x13b(r31)
    lwz     r0, 0x144(r31)
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0xdc(r3)
    stw     r0, 0x13c(r3)
    lbz     r0, 0x13b(r31)
    lbz     r4, 0x149(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xdc(r3)
    stb     r4, 0xcc(r3)
    stb     r23, 0x13b(r31)
    lbz     r3, 0x13a(r31)
    bl      SMS_getShineStage__FUc
    lbz     r4, 0x13b(r31)
    clrlwi  r3, r3, 24
    li      r5, 0x0
    bl      SMS_getShineID__FUlUlb_80175af8
    extsh   r0, r3
    lwz     r3, 0x15c(r31)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r0, 0x78(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    mr      r20, r3
    lwz     r3, 0x6c(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r20, 0x0
    li      r5, 0x7f
    bl      strncpy
    lbz     r0, 0x13b(r31)
    lwz     r3, 0x130(r31)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x10(r3)
    stb     r21, 0x24(r3)
    lbz     r3, 0x13b(r31)
    lwz     r0, 0x140(r31)
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0xdc(r3)
    stw     r0, 0x13c(r3)
    lbz     r0, 0x13b(r31)
    lbz     r4, 0x148(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xdc(r3)
    stb     r4, 0xcc(r3)
    lbz     r4, 0x13c(r31)
    cmplwi  r4, 0x1
    ble-    branch_0x80173e68
    lbz     r3, 0x13b(r31)
    addi    r0, r4, -0x1
    cmpw    r3, r0
    beq-    branch_0x80173e44
    lwz     r3, 0x108(r31)
    lbzu    r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80173e44
    stb     r21, 0x0(r3)
branch_0x80173e44:
    lbz     r0, 0x13b(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80173e68
    lwz     r3, 0x104(r31)
    lbzu    r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80173e68
    li      r0, 0x1
    stb     r0, 0x0(r3)
branch_0x80173e68:
    li      r0, 0x7
    stw     r0, 0x10(r31)
branch_0x80173e70:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x1
    ble-    branch_0x80174060
    lwz     r3, 0x104(r31)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80173ee4
    bl      SMSGetAnmFrameRate__Fv
    lbz     r4, 0x10d(r31)
    lis     r0, 0x4330
    lwz     r3, 0x104(r31)
    stw     r4, 0x73c(sp)
    lwz     r12, 0x0(r3)
    stw     r0, 0x738(sp)
    lwz     r12, 0xc(r12)
    lfd     f2, -0x47f8(r2)
    lfd     f0, 0x738(sp)
    mtlr    r12
    lfs     f3, -0x4800(r2)
    fsubs   f0, f0, f2
    lwz     r0, 0x110(r31)
    lwz     r5, 0x114(r31)
    fmuls   f0, f3, f0
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x740(sp)
    lwz     r4, 0x744(sp)
    subf    r4, r4, r0
    blrl
branch_0x80173ee4:
    lwz     r3, 0x108(r31)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80173f4c
    bl      SMSGetAnmFrameRate__Fv
    lbz     r4, 0x10d(r31)
    lis     r0, 0x4330
    lwz     r3, 0x108(r31)
    stw     r4, 0x73c(sp)
    lwz     r12, 0x0(r3)
    stw     r0, 0x738(sp)
    lwz     r12, 0xc(r12)
    lfd     f2, -0x47f8(r2)
    lfd     f0, 0x738(sp)
    mtlr    r12
    lfs     f3, -0x4800(r2)
    fsubs   f0, f0, f2
    lwz     r0, 0x120(r31)
    lwz     r5, 0x124(r31)
    fmuls   f0, f3, f0
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x740(sp)
    lwz     r4, 0x744(sp)
    add     r4, r0, r4
    blrl
branch_0x80173f4c:
    lbz     r0, 0x10c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80173f7c
    lbz     r3, 0x10d(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x10d(r31)
    lbz     r0, 0x10d(r31)
    cmplwi  r0, 0xa
    ble-    branch_0x80173f9c
    li      r0, 0x0
    stb     r0, 0x10c(r31)
    b       branch_0x80173f9c

branch_0x80173f7c:
    lbz     r3, 0x10d(r31)
    addi    r0, r3, -0x1
    stb     r0, 0x10d(r31)
    lbz     r0, 0x10d(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80173f9c
    li      r0, 0x1
    stb     r0, 0x10c(r31)
branch_0x80173f9c:
    lwz     r4, 0x104(r31)
    lbz     r0, 0x13b(r31)
    addi    r5, r4, 0xcc
    cmplwi  r0, 0x0
    lbz     r3, 0xcc(r4)
    bne-    branch_0x80173fd8
    cmpwi   r3, 0x0
    beq-    branch_0x80173ff8
    subic.  r0, r3, 0x4
    bge-    branch_0x80173fcc
    li      r0, 0x0
    stb     r0, 0xc(r4)
branch_0x80173fcc:
    lwz     r3, 0x104(r31)
    stb     r0, 0xcc(r3)
    b       branch_0x80173ff8

branch_0x80173fd8:
    lbz     r4, 0x149(r31)
    cmpw    r3, r4
    bge-    branch_0x80173ff8
    addi    r0, r3, 0x4
    cmpw    r0, r4
    ble-    branch_0x80173ff4
    mr      r0, r4
branch_0x80173ff4:
    stb     r0, 0x0(r5)
branch_0x80173ff8:
    lwz     r4, 0x108(r31)
    mr      r3, r31
    lbz     r20, 0xcc(r4)
    bl      getNextIndex__11TSelectMenuFv
    extsb   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8017403c
    cmpwi   r20, 0x0
    beq-    branch_0x80174060
    subic.  r20, r20, 0x4
    bge-    branch_0x80174030
    lwz     r3, 0x108(r31)
    li      r20, 0x0
    stb     r20, 0xc(r3)
branch_0x80174030:
    lwz     r3, 0x108(r31)
    stb     r20, 0xcc(r3)
    b       branch_0x80174060

branch_0x8017403c:
    lbz     r0, 0x149(r31)
    cmpw    r20, r0
    bge-    branch_0x80174060
    addi    r20, r20, 0x4
    cmpw    r20, r0
    ble-    branch_0x80174058
    mr      r20, r0
branch_0x80174058:
    lwz     r3, 0x108(r31)
    stb     r20, 0xcc(r3)
branch_0x80174060:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x6
    beq-    branch_0x801740a8
    li      r20, 0x1
    lwz     r3, 0x40(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    lwz     r3, 0x68(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    clrlwi. r0, r20, 24
    beq-    branch_0x801740a8
    lwz     r3, 0x40(r31)
    li      r4, 0x0
    li      r0, 0x6
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r31)
branch_0x801740a8:
    lbz     r3, 0x13b(r31)
    lbz     r0, 0xd8(r31)
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0xdc(r3)
    cmplwi  r0, 0x0
    lbz     r4, 0xcc(r3)
    beq-    branch_0x801740e8
    lbz     r3, 0x148(r31)
    addi    r4, r4, 0x6
    cmpw    r4, r3
    ble-    branch_0x80174100
    li      r0, 0x0
    stb     r0, 0xd8(r31)
    mr      r4, r3
    b       branch_0x80174100

branch_0x801740e8:
    addi    r4, r4, -0x6
    cmpwi   r4, 0x40
    bge-    branch_0x80174100
    li      r0, 0x1
    stb     r0, 0xd8(r31)
    li      r4, 0x40
branch_0x80174100:
    lbz     r0, 0x13b(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xdc(r3)
    stb     r4, 0xcc(r3)
    b       branch_0x801743b8

branch_0x80174118:
    lwz     r3, 0x2c(r31)
    li      r20, 0x1
    addi    r4, r3, 0xcc
    lbz     r3, 0xcc(r3)
    addi    r0, r3, -0x10
    extsh   r6, r0
    extsh.  r0, r6
    bgt-    branch_0x80174140
    li      r6, 0x0
    b       branch_0x80174144

branch_0x80174140:
    li      r20, 0x0
branch_0x80174144:
    clrlwi  r5, r6, 24
    stb     r6, 0x0(r4)
    extsh   r3, r6
    lwz     r4, 0x34(r31)
    lwz     r4, 0x0(r4)
    stb     r6, 0xcc(r4)
    lwz     r4, 0x38(r31)
    lwz     r4, 0x0(r4)
    lbz     r0, 0xcc(r4)
    cmpw    r3, r0
    bge-    branch_0x80174174
    stb     r5, 0xcc(r4)
branch_0x80174174:
    lwz     r3, 0x40(r31)
    lwz     r3, 0x0(r3)
    stb     r6, 0xcc(r3)
    lwz     r3, 0x68(r31)
    lwz     r3, 0x0(r3)
    stb     r6, 0xcc(r3)
    lwz     r3, 0xa0(r31)
    stb     r6, 0xcc(r3)
    lwz     r3, 0xa4(r31)
    stb     r6, 0xcc(r3)
    lwz     r3, 0x24(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    lwz     r3, 0x28(r31)
    bl      update__7TExPaneFv
    lwz     r4, 0x24(r31)
    and     r20, r20, r3
    lwz     r3, 0x0(r4)
    lwz     r0, 0x144(r3)
    lwz     r4, 0x14c(r3)
    clrlwi  r3, r0, 24
    addi    r22, r3, 0x10
    cmplwi  r22, 0xff
    ble-    branch_0x801741dc
    li      r22, 0xff
    b       branch_0x801741e0

branch_0x801741dc:
    li      r20, 0x0
branch_0x801741e0:
    clrlwi  r3, r4, 24
    addi    r0, r3, 0x10
    cmplwi  r0, 0xff
    ble-    branch_0x801741f8
    li      r0, 0xff
    b       branch_0x801741fc

branch_0x801741f8:
    li      r20, 0x0
branch_0x801741fc:
    clrlwi  r21, r0, 24
    addi    r7, r21, 0x0
    addi    r3, sp, 0x710
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0x710(sp)
    mr      r7, r21
    addi    r3, sp, 0x708
    stw     r0, 0x70c(sp)
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0x708(sp)
    clrlwi  r21, r22, 24
    addi    r7, r21, 0x0
    stw     r0, 0x704(sp)
    addi    r3, sp, 0x700
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0x700(sp)
    mr      r7, r21
    addi    r3, sp, 0x6f8
    stw     r0, 0x6fc(sp)
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r3, 0x24(r31)
    lwz     r0, 0x6f8(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x144(r3)
    lwz     r0, 0x6fc(sp)
    stw     r0, 0x148(r3)
    lwz     r0, 0x704(sp)
    stw     r0, 0x14c(r3)
    lwz     r0, 0x70c(sp)
    stw     r0, 0x150(r3)
    lwz     r3, 0x28(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x144(r3)
    lwz     r4, 0x14c(r3)
    clrlwi  r3, r0, 24
    addi    r22, r3, 0x10
    cmplwi  r22, 0xff
    ble-    branch_0x801742cc
    li      r22, 0xff
    b       branch_0x801742d0

branch_0x801742cc:
    li      r20, 0x0
branch_0x801742d0:
    clrlwi  r3, r4, 24
    addi    r0, r3, 0x10
    cmplwi  r0, 0xff
    ble-    branch_0x801742e8
    li      r0, 0xff
    b       branch_0x801742ec

branch_0x801742e8:
    li      r20, 0x0
branch_0x801742ec:
    clrlwi  r21, r0, 24
    addi    r7, r21, 0x0
    addi    r3, sp, 0x730
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0x730(sp)
    mr      r7, r21
    addi    r3, sp, 0x728
    stw     r0, 0x72c(sp)
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0x728(sp)
    clrlwi  r21, r22, 24
    addi    r7, r21, 0x0
    stw     r0, 0x724(sp)
    addi    r3, sp, 0x720
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0x720(sp)
    mr      r7, r21
    addi    r3, sp, 0x718
    stw     r0, 0x71c(sp)
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r4, 0x28(r31)
    clrlwi. r0, r20, 24
    lwz     r3, 0x718(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x144(r4)
    lwz     r0, 0x71c(sp)
    stw     r0, 0x148(r4)
    lwz     r0, 0x724(sp)
    stw     r0, 0x14c(r4)
    lwz     r0, 0x72c(sp)
    stw     r0, 0x150(r4)
    beq-    branch_0x801743b8
    li      r0, 0x9
    stw     r0, 0x10(r31)
    li      r0, 0x0
    stb     r0, 0x139(r31)
    b       branch_0x801743b8

branch_0x801743b0:
    li      r0, 0x1
    stb     r0, 0x14a(r31)
branch_0x801743b8:
    rlwinm. r0, r19, 0, 28, 28
    beq-    branch_0x80174428
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0xa
    bge-    branch_0x80174428
    cmpwi   r0, 0x0
    bge-    branch_0x801743d8
    b       branch_0x80174428

branch_0x801743d8:
    bl      ReInitializeGX
    bl      SMS_DrawInit__Fv
    addi    r4, r18, 0x54
    addi    r3, sp, 0x45c
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x45c
    bl      setup2D__14J2DGrafContextFv
    addi    r3, sp, 0x45c
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x20(r31)
    addi    r6, sp, 0x45c
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    lis     r3, __vvt__14J2DGrafContext@h
    stw     r0, 0x45c(sp)
    addi    r0, r3, __vvt__14J2DGrafContext@l
    stw     r0, 0x45c(sp)
branch_0x80174428:
    lmw     r18, 0x778(sp)
    lwz     r0, 0x7b4(sp)
    addi    sp, sp, 0x7b0
    mtlr    r0
    blr


.globl startMove__11TSelectMenuFv
startMove__11TSelectMenuFv: # 0x8017443c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    addi    r4, r31, 0x150
    lwz     r5, 0x134(r3)
    lwz     r3, 0x130(r3)
    lwz     r7, 0x30(r5)
    lbz     r5, 0x13c(r31)
    lbz     r6, 0x13b(r31)
    bl      initData__19TSelectShineManagerFPUcUcUcP17JPAEmitterManager
    lbz     r0, 0x13b(r31)
    li      r4, 0x1
    lwz     r3, 0x130(r31)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x10(r3)
    stb     r4, 0x24(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl initData__11TSelectMenuFUcP10JKRArchiveP19TSelectShineManagerP10TSelectDir
initData__11TSelectMenuFUcP10JKRArchiveP19TSelectShineManagerP10TSelectDir: # 0x8017449c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x538(sp)
    stfd    f31, 0x530(sp)
    stmw    r25, 0x514(sp)
    addi    r29, r4, 0x0
    addi    r31, r3, 0x0
    addi    r25, r5, 0x0
    stb     r29, 0x13a(r3)
    lis     r3, unk_803882e8@ha
    addi    r30, r3, unk_803882e8@l
    stw     r6, 0x130(r31)
    stw     r7, 0x134(r31)
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x47f0(r2)
    fdivs   f0, f0, f1
    stfs    f0, 0x14c(r31)
    lbz     r0, 0x13a(r31)
    cmpwi   r0, 0xa
    beq-    branch_0x80174504
    bge-    branch_0x80174518
    cmpwi   r0, 0x2
    bge-    branch_0x80174518
    cmpwi   r0, 0x0
    bge-    branch_0x80174504
    b       branch_0x80174518

branch_0x80174504:
    li      r0, 0x1
    stb     r0, 0x14a(r31)
    li      r0, 0xff
    stb     r0, 0x13b(r31)
    b       branch_0x801753b8

branch_0x80174518:
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80174538
    addi    r3, r26, 0x0
    addi    r5, r25, 0x0
    addi    r4, r30, 0xa4
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x80174538:
    stw     r26, 0x20(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80174560
    lis     r5, unk_6d736b31@h
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, unk_6d736b31@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80174560:
    stw     r25, 0x24(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80174588
    lis     r5, unk_6d736b32@h
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, unk_6d736b32@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80174588:
    stw     r25, 0x28(r31)
    lis     r3, unk_006d6170@h
    addi    r4, r3, unk_006d6170@l
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x2c(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801745d0
    lis     r5, unk_00735f30@h
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, unk_00735f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801745d0:
    stw     r25, 0x40(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801745f8
    lis     r5, unk_00305f30@h
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, unk_00305f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801745f8:
    stw     r25, 0x68(r31)
    lis     r26, unk_735f3261@h
    li      r28, 0x0
    lwz     r3, 0x68(r31)
    addi    r4, r26, unk_735f3261@l
    lwz     r3, 0x0(r3)
    stb     r28, 0xc(r3)
    lwz     r3, 0x40(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x58(r31)
    stw     r0, 0x5c(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x60(r31)
    stw     r0, 0x64(r31)
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x48(r31)
    addi    r4, r26, 0x3262
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x4c(r31)
    lis     r27, unk_305f3261@h
    addi    r4, r27, unk_305f3261@l
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x70(r31)
    addi    r4, r27, 0x3262
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x74(r31)
    addi    r4, r26, 0x3262
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x50(r31)
    addi    r4, r27, 0x3262
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x78(r31)
    li      r25, 0x0
branch_0x801746e8:
    addi    r3, sp, 0x3e8
    crxor   6, 6, 6
    addi    r5, r30, 0xbc
    addi    r6, r25, 0x1
    li      r4, 0xfe
    bl      snprintf
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80174730
    addi    r3, sp, 0x3e8
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r27, 0x0
    stw     r27, 0x28(r26)
    addi    r4, r3, 0x0
    mr      r3, r26
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r27, 0x50(r26)
branch_0x80174730:
    addi    r25, r25, 0x1
    addi    r0, r28, 0x80
    cmpwi   r25, 0x8
    stwx    r26, r31, r0
    addi    r28, r28, 0x4
    blt+    branch_0x801746e8
    lwz     r3, 0x20(r31)
    lis     r4, unk_73747478@h
    addi    r4, r4, unk_73747478@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x44(r31)
    li      r4, 0x80
    lwz     r3, 0x44(r31)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r3, 0x20(r31)
    lis     r4, unk_30747478@h
    addi    r4, r4, unk_30747478@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x6c(r31)
    li      r4, 0x80
    lwz     r3, 0x6c(r31)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r6, 0x40(r31)
    lis     r3, unk_00695f30@h
    lwz     r5, 0x68(r31)
    addi    r4, r3, unk_00695f30@l
    lwz     r6, 0x0(r6)
    lwz     r3, 0x0(r5)
    lwz     r5, 0x14(r6)
    lwz     r0, 0x14(r3)
    subf    r0, r5, r0
    sth     r0, 0x7c(r31)
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xa0(r31)
    lis     r3, unk_73635f30@h
    addi    r4, r3, unk_73635f30@l
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xa4(r31)
    li      r25, 0x0
    li      r27, 0x0
branch_0x80174808:
    addi    r6, r25, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x2e8
    addi    r5, r30, 0xdc
    li      r4, 0x100
    bl      snprintf
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80174850
    addi    r3, sp, 0x2e8
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r28, 0x0
    stw     r28, 0x28(r26)
    addi    r4, r3, 0x0
    mr      r3, r26
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r28, 0x50(r26)
branch_0x80174850:
    addi    r25, r25, 0x1
    addi    r0, r27, 0xa8
    cmpwi   r25, 0xa
    stwx    r26, r31, r0
    addi    r27, r27, 0x4
    blt+    branch_0x80174808
    addi    r28, sp, 0x2dc
    li      r25, 0x0
    li      r27, 0x0
branch_0x80174874:
    lwz     r3, 0x20(r31)
    addis   r4, r25, 0x7363
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    stwx    r3, r28, r27
    cmpwi   r25, 0x3
    addi    r27, r27, 0x4
    blt+    branch_0x80174874
    lwz     r4, 0x20(r30)
    mr      r3, r29
    lwz     r0, 0x24(r30)
    lwz     r28, R13Off_m0x6060(r13)
    stw     r4, 0x2b0(sp)
    stw     r0, 0x2b4(sp)
    lwz     r4, 0x28(r30)
    lwz     r0, 0x2c(r30)
    stw     r4, 0x2b8(sp)
    stw     r0, 0x2bc(sp)
    lwz     r4, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r4, 0x2c0(sp)
    stw     r0, 0x2c4(sp)
    lwz     r4, 0x38(r30)
    lwz     r0, 0x3c(r30)
    stw     r4, 0x2c8(sp)
    stw     r0, 0x2cc(sp)
    lwz     r4, 0x40(r30)
    lwz     r0, 0x44(r30)
    stw     r4, 0x2d0(sp)
    stw     r0, 0x2d4(sp)
    lwz     r0, 0x48(r30)
    stw     r0, 0x2d8(sp)
    lwz     r4, 0x78(r30)
    lwz     r0, 0x7c(r30)
    stw     r4, 0x258(sp)
    stw     r0, 0x25c(sp)
    lwz     r4, 0x80(r30)
    lwz     r0, 0x84(r30)
    stw     r4, 0x260(sp)
    stw     r0, 0x264(sp)
    lwz     r4, 0x88(r30)
    lwz     r0, 0x8c(r30)
    stw     r4, 0x268(sp)
    stw     r0, 0x26c(sp)
    lwz     r4, 0x90(r30)
    lwz     r0, 0x94(r30)
    stw     r4, 0x270(sp)
    stw     r0, 0x274(sp)
    lwz     r4, 0x98(r30)
    lwz     r0, 0x9c(r30)
    stw     r4, 0x278(sp)
    stw     r0, 0x27c(sp)
    lwz     r0, 0xa0(r30)
    stw     r0, 0x280(sp)
    bl      SMS_getShineStage__FUc
    clrlwi  r3, r3, 24
    addis   r4, r3, 0x2
    addi    r3, r28, 0x0
    addi    r4, r4, 0x5
    bl      getFlag__12TFlagManagerCFUl
    addi    r27, r3, 0x0
    cmpwi   r27, 0x3e7
    ble-    branch_0x80174984
    li      r27, 0x3e7
branch_0x80174984:
    cmpwi   r27, 0x0
    bge-    branch_0x80174990
    li      r27, 0x0
branch_0x80174990:
    lwz     r3, 0x20(r31)
    lis     r28, unk_73635f73@h
    addi    r4, r28, unk_73635f73@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r29, 0x0
    cmpwi   r27, 0x64
    stb     r29, 0xc(r3)
    bge-    branch_0x80174a50
    xoris   r0, r27, 0x8000
    lfd     f1, -0x4828(r2)
    stw     r0, 0x50c(sp)
    lis     r0, unk_43300000@h
    lfs     f2, -0x47ec(r2)
    addi    r5, r0, unk_43300000@l
    stw     r0, 0x508(sp)
    lwz     r3, 0x2e0(sp)
    lfd     f0, 0x508(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x500(sp)
    lwz     r0, 0x504(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xa8(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x2e4(sp)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r27
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xa8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x2dc(sp)
    stb     r29, 0xc(r3)
    b       branch_0x80174b74

branch_0x80174a50:
    xoris   r0, r27, 0x8000
    lfd     f1, -0x4828(r2)
    stw     r0, 0x504(sp)
    lis     r29, 0x4330
    lfs     f2, -0x47e8(r2)
    li      r5, 0x0
    stw     r29, 0x500(sp)
    lwz     r3, 0x2dc(sp)
    lfd     f0, 0x500(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f31, f0
    stfd    f31, 0x508(sp)
    lwz     r0, 0x50c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xa8(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    stfd    f31, 0x4f8(sp)
    li      r5, 0x0
    lfd     f1, -0x4828(r2)
    lwz     r0, 0x4fc(sp)
    lfs     f2, -0x47ec(r2)
    mulli   r0, r0, 0x64
    lwz     r3, 0x2e0(sp)
    subf    r27, r0, r27
    xoris   r0, r27, 0x8000
    stw     r0, 0x4f4(sp)
    stw     r29, 0x4f0(sp)
    lfd     f0, 0x4f0(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x4e8(sp)
    lwz     r0, 0x4ec(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xa8(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x2e4(sp)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r27
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xa8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lbz     r0, 0x13a(r31)
    addi    r4, sp, 0x258
    lwz     r3, R13Off_m0x6060(r13)
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    lbz     r4, 0x0(r4)
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    beq-    branch_0x80174b74
    lwz     r3, 0x20(r31)
    addi    r4, r28, 0x5f73
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x80174b74:
    addi    r27, sp, 0x258
    li      r25, 0x0
    li      r26, 0x1
branch_0x80174b80:
    lbz     r0, 0x13a(r31)
    lwz     r3, R13Off_m0x6060(r13)
    slwi    r0, r0, 2
    lwzx    r4, r27, r0
    lbzx    r4, r4, r26
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    beq-    branch_0x80174ba4
    addi    r25, r25, 0x1
branch_0x80174ba4:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x3
    blt+    branch_0x80174b80
    extsb.  r0, r25
    bne-    branch_0x80174c14
    lwz     r3, 0x20(r31)
    lis     r4, unk_73635f30@h
    addi    r4, r4, unk_73635f30@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x0(r3)
    li      r4, 0x53
    li      r5, 0x0
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x20(r31)
    lis     r4, unk_00725f69@h
    addi    r4, r4, unk_00725f69@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x80174c44

branch_0x80174c14:
    extsb   r0, r25
    cmpwi   r0, 0x1
    bne-    branch_0x80174c44
    lwz     r3, 0x20(r31)
    lis     r4, unk_725f7332@h
    addi    r4, r4, unk_725f7332@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x80174c44:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80174c78
    addi    r26, r25, 0x0
    addi    r3, r30, 0xfc
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r27, 0x0
    stw     r27, 0x28(r25)
    addi    r4, r3, 0x0
    mr      r3, r26
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r27, 0x50(r25)
branch_0x80174c78:
    stw     r25, 0xd0(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80174cb0
    addi    r26, r25, 0x0
    addi    r3, r30, 0x118
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r27, 0x0
    stw     r27, 0x28(r25)
    addi    r4, r3, 0x0
    mr      r3, r26
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r27, 0x50(r25)
branch_0x80174cb0:
    stw     r25, 0xd4(r31)
    li      r6, 0xff
    lis     r3, unk_62695f30@h
    stb     r6, 0x160(r31)
    li      r27, 0x0
    li      r5, 0x2
    stb     r27, 0x161(r31)
    li      r0, 0x4
    addi    r4, r3, unk_62695f30@l
    stb     r27, 0x162(r31)
    stb     r6, 0x163(r31)
    stb     r6, 0x164(r31)
    stb     r6, 0x165(r31)
    stb     r27, 0x166(r31)
    stb     r6, 0x167(r31)
    stw     r5, 0x14(r31)
    stw     r27, 0x18(r31)
    stw     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r27, 0xc(r3)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80174d44
    lbz     r0, 0x13a(r31)
    addi    r5, sp, 0x2b0
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    slwi    r0, r0, 2
    lwzx    r0, r5, r0
    slwi    r5, r0, 8
    addi    r5, r5, 0x30
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80174d44:
    stw     r25, 0x30(r31)
    li      r0, 0x1
    li      r3, 0x68
    lwz     r4, 0x30(r31)
    lwz     r4, 0x0(r4)
    stb     r0, 0xc(r4)
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80174d8c
    lbz     r0, 0x13a(r31)
    addi    r5, sp, 0x2b0
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    slwi    r0, r0, 2
    lwzx    r0, r5, r0
    slwi    r5, r0, 8
    addi    r5, r5, 0x61
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x80174d8c:
    stw     r25, 0x34(r31)
    li      r0, 0x1
    li      r3, 0x68
    lwz     r4, 0x34(r31)
    lwz     r4, 0x0(r4)
    stb     r0, 0xc(r4)
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80174dd4
    lbz     r0, 0x13a(r31)
    addi    r5, sp, 0x2b0
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    slwi    r0, r0, 2
    lwzx    r0, r5, r0
    slwi    r5, r0, 8
    addi    r5, r5, 0x62
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x80174dd4:
    stw     r25, 0x38(r31)
    li      r0, 0x1
    addi    r3, r30, 0x134
    lwz     r4, 0x38(r31)
    lwz     r4, 0x0(r4)
    stb     r0, 0xc(r4)
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x158(r31)
    li      r0, 0x2
    li      r25, 0x0
    stb     r0, 0x150(r31)
    stb     r0, 0x151(r31)
    stb     r0, 0x152(r31)
    stb     r0, 0x153(r31)
    stb     r0, 0x154(r31)
    stb     r0, 0x155(r31)
    stb     r0, 0x156(r31)
    stb     r0, 0x157(r31)
    b       branch_0x80174e80

branch_0x80174e20:
    lbz     r3, 0x13a(r31)
    bl      SMS_getShineStage__FUc
    clrlwi  r3, r3, 24
    extsb   r4, r25
    li      r5, 0x0
    bl      SMS_getShineID__FUlUlb_80175af8
    extsh   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x80174e4c
    li      r3, 0x0
    b       branch_0x80174e5c

branch_0x80174e4c:
    lwz     r0, R13Off_m0x6060(r13)
    clrlwi  r4, r3, 24
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
branch_0x80174e5c:
    clrlwi. r0, r3, 24
    beq-    branch_0x80174e7c
    extsb   r3, r25
    addi    r0, r3, 0x150
    li      r3, 0x3
    stbx    r3, r31, r0
    addi    r0, r25, 0x2
    stb     r0, 0x13c(r31)
branch_0x80174e7c:
    addi    r25, r25, 0x1
branch_0x80174e80:
    extsb   r0, r25
    cmpwi   r0, 0x8
    blt+    branch_0x80174e20
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x8
    ble-    branch_0x80174ea0
    li      r0, 0x8
    stb     r0, 0x13c(r31)
branch_0x80174ea0:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80174eb4
    li      r0, 0x1
    stb     r0, 0x13c(r31)
branch_0x80174eb4:
    lbz     r0, 0x13c(r31)
    subic.  r0, r0, 0x1
    bge-    branch_0x80174ec4
    li      r0, 0x0
branch_0x80174ec4:
    stb     r0, 0x13b(r31)
    li      r4, 0x0
    lbz     r5, 0x13c(r31)
    cmpwi   r5, 0x8
    subfic  r3, r5, 0x8
    bge-    branch_0x80174f4c
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x80174f38
branch_0x80174ee8:
    addi    r0, r5, 0x150
    stbx    r4, r31, r0
    addi    r0, r5, 0x151
    stbx    r4, r31, r0
    addi    r0, r5, 0x152
    stbx    r4, r31, r0
    addi    r0, r5, 0x153
    stbx    r4, r31, r0
    addi    r0, r5, 0x154
    stbx    r4, r31, r0
    addi    r0, r5, 0x155
    stbx    r4, r31, r0
    addi    r0, r5, 0x156
    stbx    r4, r31, r0
    addi    r0, r5, 0x157
    addi    r5, r5, 0x8
    stbx    r4, r31, r0
    bdnz+      branch_0x80174ee8
    andi.   r3, r3, 0x7
    beq-    branch_0x80174f4c
branch_0x80174f38:
    mtctr   r3
branch_0x80174f3c:
    addi    r0, r5, 0x150
    stbx    r4, r31, r0
    addi    r5, r5, 0x1
    bdnz+      branch_0x80174f3c
branch_0x80174f4c:
    lbz     r4, 0x13c(r31)
    cmplwi  r4, 0x1
    ble-    branch_0x8017501c
    lwz     r3, 0x20(r31)
    addis   r4, r4, 0x615f
    addi    r4, r4, 0x6c30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x104(r31)
    lwz     r3, 0x20(r31)
    lbz     r4, 0x13c(r31)
    lwz     r12, 0x0(r3)
    addis   r4, r4, 0x615f
    lwz     r12, 0x24(r12)
    addi    r4, r4, 0x7230
    mtlr    r12
    blrl
    stw     r3, 0x108(r31)
    lwz     r4, 0x104(r31)
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x110(r31)
    stw     r0, 0x114(r31)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0x118(r31)
    stw     r0, 0x11c(r31)
    lwz     r4, 0x108(r31)
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x120(r31)
    stw     r0, 0x124(r31)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0x128(r31)
    stw     r0, 0x12c(r31)
    lbz     r0, 0x13b(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80174ffc
    lwz     r3, 0x104(r31)
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x80174ffc:
    lbz     r3, 0x13c(r31)
    lbz     r4, 0x13b(r31)
    addi    r0, r3, -0x1
    cmpw    r4, r0
    beq-    branch_0x8017501c
    lwz     r3, 0x108(r31)
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8017501c:
    li      r0, 0x0
    stw     r0, 0xdc(r31)
    li      r27, 0x0
    li      r28, 0x0
    stw     r0, 0xe0(r31)
    li      r29, 0x0
    stw     r0, 0xe4(r31)
    stw     r0, 0xe8(r31)
    stw     r0, 0xec(r31)
    stw     r0, 0xf0(r31)
    stw     r0, 0xf4(r31)
    stw     r0, 0xf8(r31)
    lbz     r3, 0x13c(r31)
    clrlwi  r0, r3, 31
    cmpwi   r0, 0x1
    bne-    branch_0x80175114
    subfic  r0, r3, 0x7
    srawi   r0, r0, 1
    addze   r0, r0
    addi    r25, r3, -0x1
    mr      r28, r0
    add     r25, r0, r25
    b       branch_0x80175108

branch_0x80175078:
    lwz     r3, 0x20(r31)
    addis   r4, r28, 0x695f
    addi    r4, r4, 0x6f30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r26, r29, 0xdc
    add     r26, r31, r26
    stw     r3, 0x0(r26)
    li      r4, 0x1
    addi    r0, r27, 0x150
    lwz     r3, 0x0(r26)
    stb     r4, 0xc(r3)
    lbzx    r0, r31, r0
    cmplwi  r0, 0x2
    beq-    branch_0x801750c4
    cmplwi  r0, 0x1
    bne-    branch_0x801750e8
branch_0x801750c4:
    lwz     r4, 0xd4(r31)
    li      r5, 0x0
    lwz     r3, 0x0(r26)
    lfs     f1, -0x47f0(r2)
    bl      insert__10J2DPictureFP10JUTTextureUcf
    lwz     r3, 0x0(r26)
    li      r4, 0x1
    bl      remove__10J2DPictureFUc
    b       branch_0x801750fc

branch_0x801750e8:
    cmplwi  r0, 0x0
    bne-    branch_0x801750fc
    lwz     r3, 0x0(r26)
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x801750fc:
    addi    r27, r27, 0x1
    addi    r29, r29, 0x4
    addi    r28, r28, 0x1
branch_0x80175108:
    cmpw    r28, r25
    ble+    branch_0x80175078
    b       branch_0x801751c8

branch_0x80175114:
    subfic  r0, r3, 0x8
    srawi   r0, r0, 1
    addze   r0, r0
    addi    r29, r3, -0x1
    mr      r25, r0
    add     r29, r0, r29
    b       branch_0x801751c0

branch_0x80175130:
    lwz     r3, 0x20(r31)
    addis   r4, r25, 0x695f
    addi    r4, r4, 0x6530
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r26, r28, 0xdc
    add     r26, r31, r26
    stw     r3, 0x0(r26)
    li      r4, 0x1
    addi    r0, r27, 0x150
    lwz     r3, 0x0(r26)
    stb     r4, 0xc(r3)
    lbzx    r0, r31, r0
    cmplwi  r0, 0x2
    beq-    branch_0x8017517c
    cmplwi  r0, 0x1
    bne-    branch_0x801751a0
branch_0x8017517c:
    lwz     r4, 0xd4(r31)
    li      r5, 0x0
    lwz     r3, 0x0(r26)
    lfs     f1, -0x47f0(r2)
    bl      insert__10J2DPictureFP10JUTTextureUcf
    lwz     r3, 0x0(r26)
    li      r4, 0x1
    bl      remove__10J2DPictureFUc
    b       branch_0x801751b4

branch_0x801751a0:
    cmplwi  r0, 0x0
    bne-    branch_0x801751b4
    lwz     r3, 0x0(r26)
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x801751b4:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x4
    addi    r25, r25, 0x1
branch_0x801751c0:
    cmpw    r25, r29
    ble+    branch_0x80175130
branch_0x801751c8:
    lwz     r3, 0x20(r31)
    lis     r27, unk_695f6f30@h
    addi    r4, r27, unk_695f6f30@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x13c(r3)
    li      r0, 0xff
    addi    r4, r27, 0x6f32
    stw     r3, 0x14c(sp)
    lwz     r3, 0x14c(sp)
    stw     r3, 0x140(r31)
    stb     r0, 0x148(r31)
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x13c(r3)
    addi    r4, r27, 0x6f32
    stw     r0, 0x148(sp)
    lwz     r0, 0x148(sp)
    stw     r0, 0x144(r31)
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lbz     r0, 0xcc(r3)
    addi    r4, r27, 0x6f30
    stb     r0, 0x149(r31)
    lwz     r0, 0x144(r31)
    stw     r0, 0x144(sp)
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x144(sp)
    addi    r4, r27, 0x6f30
    stw     r0, 0x13c(r3)
    lwz     r3, 0x20(r31)
    lbz     r26, 0x149(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r26, 0xcc(r3)
    li      r5, 0x0
    lbz     r3, 0x13b(r31)
    lwz     r0, 0x140(r31)
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0xdc(r3)
    stw     r0, 0x13c(r3)
    lbz     r0, 0x13b(r31)
    lbz     r4, 0x148(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xdc(r3)
    stb     r4, 0xcc(r3)
    lbz     r0, 0x13b(r31)
    lwz     r3, 0x48(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x80(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lbz     r0, 0x13b(r31)
    li      r5, 0x0
    lwz     r3, 0x4c(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x80(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    addi    r3, sp, 0x150
    crxor   6, 6, 6
    addi    r5, r30, 0x150
    li      r4, 0xfe
    bl      snprintf
    addi    r3, sp, 0x150
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x15c(r31)
    lwz     r3, 0x44(r31)
    lwz     r4, R13Off_m0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x6c(r31)
    lwz     r4, R13Off_m0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lbz     r26, 0x13b(r31)
    lbz     r3, 0x13a(r31)
    bl      SMS_getShineStage__FUc
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x9
    ble-    branch_0x80175354
    li      r0, -0x1
    b       branch_0x8017537c

branch_0x80175354:
    lis     r3, scShineConvTable_803c0cc8@h
    slwi    r4, r0, 2
    addi    r0, r3, scShineConvTable_803c0cc8@l
    add     r3, r0, r4
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80175378
    li      r0, -0x1
    b       branch_0x8017537c

branch_0x80175378:
    lbzx    r0, r3, r26
branch_0x8017537c:
    extsh   r0, r0
    lwz     r3, 0x15c(r31)
    lis     r4, scScenarioNameTable_803c0d18@h
    slwi    r5, r0, 2
    addi    r0, r4, scScenarioNameTable_803c0d18@l
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    mr      r27, r3
    lwz     r3, 0x44(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x7f
    bl      strncpy
branch_0x801753b8:
    lmw     r25, 0x514(sp)
    lwz     r0, 0x53c(sp)
    lfd     f31, 0x530(sp)
    addi    sp, sp, 0x538
    mtlr    r0
    blr


.globl __ct__11TSelectMenuFPCc
__ct__11TSelectMenuFPCc: # 0x801753d0
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
    lis     r3, __vvt__11TSelectMenu@h
    sth     r31, 0xc(r30)
    addi    r0, r3, __vvt__11TSelectMenu@l
    addi    r3, r30, 0x58
    stw     r0, 0x0(r30)
    li      r4, 0x0
    li      r5, 0x0
    stw     r31, 0x10(r30)
    li      r6, 0x0
    li      r7, 0x0
    stw     r31, 0x20(r30)
    stw     r31, 0x24(r30)
    stw     r31, 0x28(r30)
    stw     r31, 0x2c(r30)
    stw     r31, 0x30(r30)
    stw     r31, 0x38(r30)
    stw     r31, 0x3c(r30)
    stw     r31, 0x40(r30)
    stw     r31, 0x44(r30)
    stw     r31, 0x48(r30)
    stw     r31, 0x4c(r30)
    stw     r31, 0x50(r30)
    stb     r31, 0x54(r30)
    bl      set__7JUTRectFiiii
    stw     r31, 0x68(r30)
    li      r0, 0x1
    addi    r3, r30, 0x110
    stw     r31, 0x6c(r30)
    li      r4, 0x0
    li      r5, 0x0
    stw     r31, 0x70(r30)
    li      r6, 0x0
    li      r7, 0x0
    stw     r31, 0x74(r30)
    stw     r31, 0x78(r30)
    sth     r31, 0x7c(r30)
    stw     r31, 0xa0(r30)
    stw     r31, 0xa4(r30)
    stw     r31, 0xd0(r30)
    stw     r31, 0xd4(r30)
    stb     r0, 0xd8(r30)
    stw     r31, 0x104(r30)
    stw     r31, 0x108(r30)
    stb     r0, 0x10c(r30)
    stb     r31, 0x10d(r30)
    bl      set__7JUTRectFiiii
    addi    r3, r30, 0x120
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    stb     r31, 0x138(r30)
    li      r5, -0x1
    li      r4, 0xc8
    stb     r31, 0x139(r30)
    li      r0, 0xa
    addi    r3, r30, 0x0
    stb     r31, 0x13a(r30)
    stb     r31, 0x13b(r30)
    stb     r31, 0x13c(r30)
    stw     r5, 0x140(r30)
    stw     r5, 0x144(r30)
    stb     r31, 0x148(r30)
    stb     r31, 0x149(r30)
    stb     r31, 0x14a(r30)
    stb     r31, 0x14b(r30)
    lfs     f0, -0x482c(r2)
    stfs    f0, 0x14c(r30)
    stw     r31, 0x158(r30)
    stw     r31, 0x15c(r30)
    stw     r5, 0x160(r30)
    stw     r5, 0x164(r30)
    sth     r4, 0x168(r30)
    sth     r4, 0x16a(r30)
    sth     r0, 0x16c(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__11TSelectGradFUlPQ26JDrama9TGraphics
perform__11TSelectGradFUlPQ26JDrama9TGraphics: # 0x80175560
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    beq-    branch_0x80175728
    li      r0, 0x3
    li      r8, 0x0
    mtctr   r0
    addi    r7, r8, 0x0
    addi    r3, r8, 0x0
branch_0x8017559c:
    cmpwi   r7, 0x0
    bne-    branch_0x801755ac
    addi    r6, r31, 0x20
    b       branch_0x801755c0

branch_0x801755ac:
    cmpwi   r7, 0x1
    bne-    branch_0x801755bc
    addi    r6, r31, 0x21
    b       branch_0x801755c0

branch_0x801755bc:
    addi    r6, r31, 0x22
branch_0x801755c0:
    addi    r9, r3, 0x10
    add     r9, r31, r9
    lwz     r0, 0x0(r9)
    cmpwi   r0, 0x3
    beq-    branch_0x80175608
    bge-    branch_0x80175628
    cmpwi   r0, 0x0
    beq-    branch_0x801755e4
    b       branch_0x80175628

branch_0x801755e4:
    lbz     r5, 0x0(r6)
    addi    r0, r5, 0x2
    extsh   r0, r0
    cmpwi   r0, 0xff
    ble-    branch_0x80175600
    li      r0, 0xff
    li      r8, 0x1
branch_0x80175600:
    stb     r0, 0x0(r6)
    b       branch_0x80175628

branch_0x80175608:
    lbz     r5, 0x0(r6)
    addi    r0, r5, -0x2
    extsh   r5, r0
    extsh.  r0, r5
    bge-    branch_0x80175624
    li      r5, 0x0
    li      r8, 0x1
branch_0x80175624:
    stb     r5, 0x0(r6)
branch_0x80175628:
    lwz     r5, 0x0(r9)
    subic.  r0, r5, 0x1
    bge-    branch_0x80175638
    li      r0, 0x5
branch_0x80175638:
    cmpwi   r7, 0x0
    bne-    branch_0x80175648
    addi    r6, r31, 0x1c
    b       branch_0x8017565c

branch_0x80175648:
    cmpwi   r7, 0x1
    bne-    branch_0x80175658
    addi    r6, r31, 0x1d
    b       branch_0x8017565c

branch_0x80175658:
    addi    r6, r31, 0x1e
branch_0x8017565c:
    cmpwi   r0, 0x3
    beq-    branch_0x80175694
    bge-    branch_0x801756b0
    cmpwi   r0, 0x0
    beq-    branch_0x80175674
    b       branch_0x801756b0

branch_0x80175674:
    lbz     r5, 0x0(r6)
    addi    r0, r5, 0x2
    extsh   r0, r0
    cmpwi   r0, 0xff
    ble-    branch_0x8017568c
    li      r0, 0xff
branch_0x8017568c:
    stb     r0, 0x0(r6)
    b       branch_0x801756b0

branch_0x80175694:
    lbz     r5, 0x0(r6)
    addi    r0, r5, -0x2
    extsh   r5, r0
    extsh.  r0, r5
    bge-    branch_0x801756ac
    li      r5, 0x0
branch_0x801756ac:
    stb     r5, 0x0(r6)
branch_0x801756b0:
    addi    r7, r7, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x8017559c
    clrlwi. r0, r8, 24
    beq-    branch_0x80175728
    addi    r5, r31, 0x10
    lwz     r3, 0x10(r31)
    li      r0, 0x0
    addi    r3, r3, 0x1
    stw     r3, 0x10(r31)
    lwz     r3, 0x10(r31)
    cmpwi   r3, 0x6
    blt-    branch_0x801756e8
    stw     r0, 0x0(r5)
branch_0x801756e8:
    addi    r5, r31, 0x14
    lwz     r3, 0x14(r31)
    addi    r3, r3, 0x1
    stw     r3, 0x14(r31)
    lwz     r3, 0x14(r31)
    cmpwi   r3, 0x6
    blt-    branch_0x80175708
    stw     r0, 0x0(r5)
branch_0x80175708:
    addi    r5, r31, 0x18
    lwz     r3, 0x18(r31)
    addi    r3, r3, 0x1
    stw     r3, 0x18(r31)
    lwz     r3, 0x18(r31)
    cmpwi   r3, 0x6
    blt-    branch_0x80175728
    stw     r0, 0x0(r5)
branch_0x80175728:
    rlwinm. r0, r4, 0, 28, 28
    beq-    branch_0x801758fc
    li      r3, 0x1
    bl      GXSetDither
    addi    r3, sp, 0x20
    bl      PSMTXIdentity
    addi    r3, sp, 0x20
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, R2Off_m0x4834(r2)
    addi    r4, sp, 0x50
    li      r3, 0x4
    stw     r0, 0x54(sp)
    lwz     r0, 0x54(sp)
    stw     r0, 0x50(sp)
    bl      GXSetChanAmbColor
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    lbz     r5, 0x20(r31)
    li      r3, 0x80
    lbz     r0, 0x1c(r31)
    li      r4, 0x0
    lbz     r7, 0x21(r31)
    lbz     r6, 0x1d(r31)
    add     r0, r5, r0
    srawi   r8, r0, 1
    lbz     r5, 0x22(r31)
    lbz     r0, 0x1e(r31)
    add     r6, r7, r6
    srawi   r6, r6, 1
    add     r0, r5, r0
    srawi   r0, r0, 1
    clrlwi  r28, r8, 24
    clrlwi  r29, r6, 24
    clrlwi  r30, r0, 24
    li      r5, 0x4
    bl      GXBegin
    lfs     f4, -0x482c(r2)
    lis     r3, 0xcc01
    lfs     f3, -0x47e4(r2)
    stfs    f4, -0x8000(r3)
    lfs     f2, -0x47e0(r2)
    stfs    f3, -0x8000(r3)
    lfs     f1, -0x47dc(r2)
    stfs    f2, -0x8000(r3)
    lfs     f0, -0x47d8(r2)
    lbz     r5, 0x1e(r31)
    lbz     r4, 0x1d(r31)
    lbz     r0, 0x1c(r31)
    stb     r0, -0x8000(r3)
    stb     r4, -0x8000(r3)
    stb     r5, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stb     r28, -0x8000(r3)
    stb     r29, -0x8000(r3)
    stb     r30, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lbz     r5, 0x22(r31)
    lbz     r4, 0x21(r31)
    lbz     r0, 0x20(r31)
    stb     r0, -0x8000(r3)
    stb     r4, -0x8000(r3)
    stb     r5, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stb     r28, -0x8000(r3)
    stb     r29, -0x8000(r3)
    stb     r30, -0x8000(r3)
branch_0x801758fc:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl setStageColor__11TSelectGradFUc
setStageColor__11TSelectGradFUc: # 0x8017591c
    clrlwi  r0, r4, 24
    cmpwi   r0, 0x4
    beq-    branch_0x801759cc
    bge-    branch_0x8017593c
    cmpwi   r0, 0x2
    beq-    branch_0x80175948
    bge-    branch_0x8017598c
    blr

branch_0x8017593c:
    cmpwi   r0, 0xd
    beq-    branch_0x80175a0c
    blr

branch_0x80175948:
    li      r0, 0x3
    stw     r0, 0x10(r3)
    li      r0, 0x1
    li      r5, 0x5
    stw     r0, 0x14(r3)
    li      r4, 0xff
    li      r0, 0x0
    stw     r5, 0x18(r3)
    stb     r4, 0x1c(r3)
    stb     r4, 0x1d(r3)
    stb     r0, 0x1e(r3)
    stb     r4, 0x1f(r3)
    stb     r0, 0x20(r3)
    stb     r4, 0x21(r3)
    stb     r0, 0x22(r3)
    stb     r4, 0x23(r3)
    blr

branch_0x8017598c:
    li      r0, 0x4
    stw     r0, 0x10(r3)
    li      r0, 0x2
    li      r4, 0x0
    stw     r0, 0x14(r3)
    li      r0, 0xff
    stw     r4, 0x18(r3)
    stb     r4, 0x1c(r3)
    stb     r0, 0x1d(r3)
    stb     r4, 0x1e(r3)
    stb     r0, 0x1f(r3)
    stb     r4, 0x20(r3)
    stb     r0, 0x21(r3)
    stb     r0, 0x22(r3)
    stb     r0, 0x23(r3)
    blr

branch_0x801759cc:
    li      r0, 0x2
    stw     r0, 0x10(r3)
    li      r5, 0x0
    li      r4, 0x4
    stw     r5, 0x14(r3)
    li      r0, 0xff
    stw     r4, 0x18(r3)
    stb     r0, 0x1c(r3)
    stb     r5, 0x1d(r3)
    stb     r5, 0x1e(r3)
    stb     r0, 0x1f(r3)
    stb     r0, 0x20(r3)
    stb     r0, 0x21(r3)
    stb     r5, 0x22(r3)
    stb     r0, 0x23(r3)
    blr

branch_0x80175a0c:
    li      r5, 0x0
    stw     r5, 0x10(r3)
    li      r0, 0x4
    li      r4, 0x2
    stw     r0, 0x14(r3)
    li      r0, 0xff
    stw     r4, 0x18(r3)
    stb     r5, 0x1c(r3)
    stb     r5, 0x1d(r3)
    stb     r0, 0x1e(r3)
    stb     r0, 0x1f(r3)
    stb     r0, 0x20(r3)
    stb     r5, 0x21(r3)
    stb     r0, 0x22(r3)
    stb     r0, 0x23(r3)
    blr


.globl __ct__11TSelectGradFPCc
__ct__11TSelectGradFPCc: # 0x80175a4c
    mflr    r0
    lis     r5, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r5, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r7, 0x0
    lis     r3, __vvt__11TSelectGrad@h
    sth     r7, 0xc(r31)
    addi    r0, r3, __vvt__11TSelectGrad@l
    li      r6, -0x1
    stw     r0, 0x0(r31)
    li      r5, 0x2
    li      r4, 0x4
    stw     r6, 0x1c(r31)
    li      r0, 0xff
    addi    r3, r31, 0x0
    stw     r6, 0x20(r31)
    stw     r5, 0x10(r31)
    stw     r7, 0x14(r31)
    stw     r4, 0x18(r31)
    stb     r0, 0x1c(r31)
    stb     r7, 0x1d(r31)
    stb     r7, 0x1e(r31)
    stb     r0, 0x1f(r31)
    stb     r0, 0x20(r31)
    stb     r0, 0x21(r31)
    stb     r7, 0x22(r31)
    stb     r0, 0x23(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl SMS_getShineID__FUlUlb_80175af8
SMS_getShineID__FUlUlb_80175af8: # 0x80175af8
    cmplwi  r3, 0x9
    ble-    branch_0x80175b08
    li      r3, -0x1
    blr

branch_0x80175b08:
    clrlwi. r0, r5, 24
    beq-    branch_0x80175b28
    lis     r5, scEtcShineConvTable_803c0cf0@h
    slwi    r3, r3, 2
    addi    r0, r5, scEtcShineConvTable_803c0cf0@l
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
    b       branch_0x80175b3c

branch_0x80175b28:
    lis     r5, scShineConvTable_803c0cc8@h
    slwi    r3, r3, 2
    addi    r0, r5, scShineConvTable_803c0cc8@l
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
branch_0x80175b3c:
    cmplwi  r3, 0x0
    bne-    branch_0x80175b4c
    li      r3, -0x1
    blr

branch_0x80175b4c:
    lbzx    r3, r3, r4
    blr


.globl __dt__11TSelectGradFv
__dt__11TSelectGradFv: # 0x80175b54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80175bac
    lis     r3, __vvt__11TSelectGrad@h
    addi    r0, r3, __vvt__11TSelectGrad@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80175b9c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80175b9c:
    extsh.  r0, r31
    ble-    branch_0x80175bac
    mr      r3, r30
    bl      __dl__FPv
branch_0x80175bac:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_SelectMenu_cpp
__sinit_SelectMenu_cpp: # 0x80175bc8
    mflr    r0
    lis     r3, unk_803f4188@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f4188@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80175c10
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80175c10:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80175c40
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80175c40:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80175c70
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80175c70:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80175ca0
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80175ca0:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80175cd0
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80175cd0:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80175d00
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80175d00:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80175d30
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80175d30:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80175d60
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80175d60:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80175d90
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80175d90:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80175dc0
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80175dc0:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80175df0
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80175df0:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80175e20
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80175e20:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80175e50
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80175e50:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80175e80
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80175e80:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80175eb0
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80175eb0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

