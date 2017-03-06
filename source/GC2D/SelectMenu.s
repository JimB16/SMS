
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
    lis     r3, 0x803c
    addi    r0, r3, 0xe58
    stw     r0, 0x0(r30)
    beq-    branch_0x80172964
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
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
    lfs     f1, -0x4830(rtoc)
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
    lfd     f3, -0x4828(rtoc)
    subf    r0, r5, r0
    stw     r3, 0xcc(sp)
    xoris   r0, r0, 0x8000
    lwz     r26, 0x24(r27)
    stw     r3, 0xbc(sp)
    lfs     f4, -0x482c(rtoc)
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
    lfd     f3, -0x4828(rtoc)
    lwz     r5, 0x0(r3)
    lfs     f4, -0x482c(rtoc)
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
    lfs     f1, -0x482c(rtoc)
    subf    r28, r3, r0
    lwz     r26, 0x28(r27)
    xoris   r0, r28, 0x8000
    lfd     f4, -0x4828(rtoc)
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
    lis     r3, 0x8001
    stb     r29, 0x4e(r26)
    addi    r3, r3, 0x24
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
    subi    r4, r4, 0x1
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
    lis     r4, 0x803c
    addi    r31, r3, 0x0
    addi    r18, r5, 0x0
    addi    r30, r4, 0xca0
    beq-    branch_0x801743b8
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x9
    bgt-    branch_0x801743b8
    lis     r3, 0x803c
    addi    r3, r3, 0xe7c
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    li      r20, 0x1
    lwz     r3, 0x24(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    lwz     r3, 0x28(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    clrlwi. r0, r20, 24
    bne-    branch_0x80172d28
    lfs     f1, -0x4820(rtoc)
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
    lfs     f1, -0x482c(rtoc)
    lwz     r4, 0x4(r22)
    addi    r3, r22, 0x14
    lfs     f4, -0x4820(rtoc)
    fmr     f2, f1
    lfs     f0, 0x14c(r31)
    subfic  r21, r4, 0x259
    lfd     f3, -0x4828(rtoc)
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


.incbin "./baserom/code/Text_0x80005600.bin", 0x16d7c8, 0x801743b8 - 0x80172dc8
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
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0x45c(sp)
    addi    r0, r3, 0x1448
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
    lis     r3, 0x8039
    subi    r30, r3, 0x7d18
    stw     r6, 0x130(r31)
    stw     r7, 0x134(r31)
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x47f0(rtoc)
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
    lis     r5, 0x6d73
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, 0x6b31
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80174560:
    stw     r25, 0x24(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80174588
    lis     r5, 0x6d73
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, 0x6b32
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80174588:
    stw     r25, 0x28(r31)
    lis     r3, 0x6d
    addi    r4, r3, 0x6170
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
    lis     r5, 0x73
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, 0x5f30
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801745d0:
    stw     r25, 0x40(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801745f8
    lis     r5, 0x30
    lwz     r4, 0x20(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, 0x5f30
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801745f8:
    stw     r25, 0x68(r31)
    lis     r26, 0x735f
    li      r28, 0x0
    lwz     r3, 0x68(r31)
    addi    r4, r26, 0x3261
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
    lis     r27, 0x305f
    addi    r4, r27, 0x3261
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
    lis     r4, 0x7374
    addi    r4, r4, 0x7478
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x44(r31)
    li      r4, 0x80
    lwz     r3, 0x44(r31)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r3, 0x20(r31)
    lis     r4, 0x3074
    addi    r4, r4, 0x7478
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x6c(r31)
    li      r4, 0x80
    lwz     r3, 0x6c(r31)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r6, 0x40(r31)
    lis     r3, 0x69
    lwz     r5, 0x68(r31)
    addi    r4, r3, 0x5f30
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
    lis     r3, 0x7363
    addi    r4, r3, 0x5f30
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
    lwz     r28, -0x6060(r13)
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
    lis     r28, 0x7363
    addi    r4, r28, 0x5f73
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r29, 0x0
    cmpwi   r27, 0x64
    stb     r29, 0xc(r3)
    bge-    branch_0x80174a50
    xoris   r0, r27, 0x8000
    lfd     f1, -0x4828(rtoc)
    stw     r0, 0x50c(sp)
    lis     r0, 0x4330
    lfs     f2, -0x47ec(rtoc)
    li      r5, 0x0
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
    lis     r4, 0x6666
    lwz     r3, 0x2e4(sp)
    addi    r0, r4, 0x6667
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
    lfd     f1, -0x4828(rtoc)
    stw     r0, 0x504(sp)
    lis     r29, 0x4330
    lfs     f2, -0x47e8(rtoc)
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
    lfd     f1, -0x4828(rtoc)
    lwz     r0, 0x4fc(sp)
    lfs     f2, -0x47ec(rtoc)
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
    lis     r4, 0x6666
    lwz     r3, 0x2e4(sp)
    addi    r0, r4, 0x6667
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
    lwz     r3, -0x6060(r13)
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
    lwz     r3, -0x6060(r13)
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
    lis     r4, 0x7363
    addi    r4, r4, 0x5f30
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
    lis     r4, 0x72
    addi    r4, r4, 0x5f69
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
    lis     r4, 0x725f
    addi    r4, r4, 0x7332
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
    lis     r3, 0x6269
    stb     r6, 0x160(r31)
    li      r27, 0x0
    li      r5, 0x2
    stb     r27, 0x161(r31)
    li      r0, 0x4
    addi    r4, r3, 0x5f30
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
    lwz     r0, -0x6060(r13)
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
    subi    r0, r3, 0x1
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
    subi    r25, r3, 0x1
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
    lfs     f1, -0x47f0(rtoc)
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
    subi    r29, r3, 0x1
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
    lfs     f1, -0x47f0(rtoc)
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
    lis     r27, 0x695f
    addi    r4, r27, 0x6f30
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
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x6c(r31)
    lwz     r4, -0x6038(r13)
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
    lis     r3, 0x803c
    slwi    r4, r0, 2
    addi    r0, r3, 0xcc8
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
    lis     r4, 0x803c
    slwi    r5, r0, 2
    addi    r0, r4, 0xd18
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
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r30, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r30)
    stw     r4, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    li      r31, 0x0
    lis     r3, 0x803c
    sth     r31, 0xc(r30)
    addi    r0, r3, 0xe58
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
    lfs     f0, -0x482c(rtoc)
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
    subi    r0, r5, 0x2
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
    subi    r0, r5, 0x2
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
    lwz     r0, -0x4834(rtoc)
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
    lfs     f4, -0x482c(rtoc)
    lis     r3, 0xcc01
    lfs     f3, -0x47e4(rtoc)
    stfs    f4, -0x8000(r3)
    lfs     f2, -0x47e0(rtoc)
    stfs    f3, -0x8000(r3)
    lfs     f1, -0x47dc(rtoc)
    stfs    f2, -0x8000(r3)
    lfs     f0, -0x47d8(rtoc)
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
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r7, 0x0
    lis     r3, 0x803c
    sth     r7, 0xc(r31)
    addi    r0, r3, 0xec8
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
    lis     r5, 0x803c
    slwi    r3, r3, 2
    addi    r0, r5, 0xcf0
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
    b       branch_0x80175b3c

branch_0x80175b28:
    lis     r5, 0x803c
    slwi    r3, r3, 2
    addi    r0, r5, 0xcc8
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
    lis     r3, 0x803c
    addi    r0, r3, 0xec8
    stw     r0, 0x0(r30)
    beq-    branch_0x80175b9c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
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
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x4188
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80175c10
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80175c10:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80175c40
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80175c40:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80175c70
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80175c70:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80175ca0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80175ca0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80175cd0
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80175cd0:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80175d00
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80175d00:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80175d30
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80175d30:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80175d60
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80175d60:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80175d90
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80175d90:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80175dc0
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80175dc0:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80175df0
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80175df0:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80175e20
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80175e20:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80175e50
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80175e50:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80175e80
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80175e80:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80175eb0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80175eb0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

