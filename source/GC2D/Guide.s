
.globl __dt__6TGuideFv
__dt__6TGuideFv: # 0x8017915c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801791b4
    lis     r3, 0x803c
    addi    r0, r3, 0x1048
    stw     r0, 0x0(r30)
    beq-    branch_0x801791a4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801791a4:
    extsh.  r0, r31
    ble-    branch_0x801791b4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801791b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__6TGuideFUlPQ26JDrama9TGraphics
perform__6TGuideFUlPQ26JDrama9TGraphics: # 0x801791d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2b8(sp)
    stmw    r27, 0x2a4(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    lbz     r6, -0x63a8(r13)
    cmplwi  r6, 0x0
    beq-    branch_0x80179350
    subi    r0, r6, 0x1
    stb     r0, -0x63a8(r13)
    lbz     r0, -0x63a8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x801798dc
    subi    r3, rtoc, 0x46bc
    subi    r4, r13, 0x6010
    bl      SMSSwitch2DArchive__FPCcR10TARAMBlock
    li      r28, 0x0
    stb     r28, 0xc4(r29)
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x7c(r3)
    bl      SMS_getShineStage__FUc
    clrlwi  r27, r3, 24
    sth     r27, 0x42c(r29)
    mr      r3, r29
    bl      resetObjects__6TGuideFv
    extsh   r27, r27
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    bl      changeBotStatus__6TGuideFi
    li      r0, 0x2
    mtctr   r0
    addi    r6, r28, 0x0
    addi    r3, r28, 0x0
    li      r5, 0x1
branch_0x80179260:
    cmpw    r6, r27
    bne-    branch_0x80179278
    addi    r0, r3, 0x3d0
    lwzx    r4, r29, r0
    stb     r5, 0xc(r4)
    b       branch_0x80179284

branch_0x80179278:
    addi    r0, r3, 0x3d0
    lwzx    r4, r29, r0
    stb     r28, 0xc(r4)
branch_0x80179284:
    addi    r6, r6, 0x1
    cmpw    r6, r27
    addi    r3, r3, 0x4
    bne-    branch_0x801792a4
    addi    r0, r3, 0x3d0
    lwzx    r4, r29, r0
    stb     r5, 0xc(r4)
    b       branch_0x801792b0

branch_0x801792a4:
    addi    r0, r3, 0x3d0
    lwzx    r4, r29, r0
    stb     r28, 0xc(r4)
branch_0x801792b0:
    addi    r6, r6, 0x1
    cmpw    r6, r27
    addi    r3, r3, 0x4
    bne-    branch_0x801792d0
    addi    r0, r3, 0x3d0
    lwzx    r4, r29, r0
    stb     r5, 0xc(r4)
    b       branch_0x801792dc

branch_0x801792d0:
    addi    r0, r3, 0x3d0
    lwzx    r4, r29, r0
    stb     r28, 0xc(r4)
branch_0x801792dc:
    addi    r6, r6, 0x1
    cmpw    r6, r27
    addi    r3, r3, 0x4
    bne-    branch_0x801792fc
    addi    r0, r3, 0x3d0
    lwzx    r4, r29, r0
    stb     r5, 0xc(r4)
    b       branch_0x80179308

branch_0x801792fc:
    addi    r0, r3, 0x3d0
    lwzx    r4, r29, r0
    stb     r28, 0xc(r4)
branch_0x80179308:
    addi    r6, r6, 0x1
    cmpw    r6, r27
    addi    r3, r3, 0x4
    bne-    branch_0x80179328
    addi    r0, r3, 0x3d0
    lwzx    r4, r29, r0
    stb     r5, 0xc(r4)
    b       branch_0x80179334

branch_0x80179328:
    addi    r0, r3, 0x3d0
    lwzx    r4, r29, r0
    stb     r28, 0xc(r4)
branch_0x80179334:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x80179260
    li      r0, 0x0
    stb     r0, 0x164(r29)
    b       branch_0x80179350


.incbin "./baserom/code/Text_0x80005600.bin", 0x173d4c, 0x80179350 - 0x8017934c
branch_0x80179350:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x801793ac
    lwz     r0, 0x10(r29)
    cmpwi   r0, 0x9
    beq-    branch_0x801793ac
    cmpwi   r0, 0x8
    beq-    branch_0x801793ac
    addi    r4, r31, 0x54
    addi    r3, sp, 0x15c
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x15c
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0xbc(r29)
    addi    r6, sp, 0x15c
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0x15c(sp)
    addi    r0, r3, 0x1448
    stw     r0, 0x15c(sp)
branch_0x801793ac:
    clrlwi. r0, r30, 31
    beq-    branch_0x801798dc
    lwz     r0, 0x10(r29)
    li      r28, 0x1
    cmplwi  r0, 0xb
    bgt-    branch_0x801798dc
    lis     r3, 0x803c
    addi    r3, r3, 0x106c
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    lbz     r0, 0xc5(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80179418
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lwz     r3, 0x34(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80179418
    lfs     f1, -0x46b4(rtoc)
    li      r4, 0x5
    lfs     f2, -0x46b0(rtoc)
    bl      startWipe__9TSMSFaderFUlff
    li      r0, 0xa
    stw     r0, 0x10(r29)
branch_0x80179418:
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x7c(r3)
    bl      SMS_getShineStage__FUc
    clrlslwi  r0, r3, 24, 2
    add     r3, r29, r0
    lwz     r4, 0x168(r3)
    addi    r3, sp, 0x148
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x128(r29)
    lwz     r4, 0x148(sp)
    lwz     r3, 0x0(r3)
    lwz     r5, 0x14c(sp)
    addi    r4, r4, 0x6
    lwz     r12, 0x0(r3)
    subi    r5, r5, 0x1
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x12c(r29)
    lwz     r4, 0x148(sp)
    lwz     r3, 0x0(r3)
    lwz     r5, 0x14c(sp)
    addi    r4, r4, 0x6
    lwz     r12, 0x0(r3)
    subi    r5, r5, 0x1
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x801798dc


.incbin "./baserom/code/Text_0x80005600.bin", 0x173e90, 0x801798dc - 0x80179490
branch_0x801798dc:
    lmw     r27, 0x2a4(sp)
    lwz     r0, 0x2bc(sp)
    addi    sp, sp, 0x2b8
    mtlr    r0
    blr


.globl setPaneSize__7TExPaneFlllll
setPaneSize__7TExPaneFlllll: # 0x801798f0
    mflr    r0
    xoris   r6, r6, 0x8000
    stw     r0, 0x4(sp)
    xoris   r0, r5, 0x8000
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r8, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r7
    xoris   r5, r30, 0x8000
    stw     r29, 0x44(sp)
    mr      r29, r3
    addi    r3, r29, 0x2c
    stw     r6, 0x34(sp)
    lis     r6, 0x4330
    lfd     f4, -0x46a8(rtoc)
    stw     r0, 0x3c(sp)
    xoris   r0, r31, 0x8000
    stw     r5, 0x2c(sp)
    stw     r0, 0x24(sp)
    stw     r6, 0x30(sp)
    stw     r6, 0x38(sp)
    lfd     f0, 0x30(sp)
    stw     r6, 0x28(sp)
    lfd     f1, 0x38(sp)
    fsubs   f2, f0, f4
    stw     r6, 0x20(sp)
    lfd     f3, 0x28(sp)
    fsubs   f1, f1, f4
    lfd     f0, 0x20(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4f(r29)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl setPaneAlpha__7TExPaneFlss
setPaneAlpha__7TExPaneFlss: # 0x801799b4
    extsh.  r0, r6
    stwu    sp, -0x38(sp)
    bge-    branch_0x801799c8
    li      r9, 0x0
    b       branch_0x801799cc

branch_0x801799c8:
    mr      r9, r6
branch_0x801799cc:
    extsh   r0, r9
    cmpwi   r0, 0xff
    ble-    branch_0x801799dc
    li      r9, 0xff
branch_0x801799dc:
    extsh   r7, r6
    lwz     r8, 0x0(r3)
    extsh   r0, r5
    subf    r0, r7, r0
    stb     r9, 0xcc(r8)
    xoris   r6, r0, 0x8000
    xoris   r0, r4, 0x8000
    stw     r6, 0x2c(sp)
    lis     r4, 0x4330
    lfd     f2, -0x46a8(rtoc)
    stw     r0, 0x24(sp)
    xoris   r6, r7, 0x8000
    li      r0, 0x1
    stw     r4, 0x28(sp)
    stw     r4, 0x20(sp)
    lfd     f1, 0x28(sp)
    lfd     f0, 0x20(sp)
    fsubs   f1, f1, f2
    stw     r6, 0x34(sp)
    fsubs   f0, f0, f2
    stw     r4, 0x30(sp)
    fdivs   f0, f1, f0
    lfd     f1, 0x30(sp)
    addi    sp, sp, 0x38
    fsubs   f1, f1, f2
    stfs    f1, 0x44(r3)
    stfs    f0, 0x48(r3)
    sth     r5, 0x4c(r3)
    stb     r0, 0x50(r3)
    blr


.globl appearGuidePane__6TGuideFi
appearGuidePane__6TGuideFi: # 0x80179a54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stmw    r24, 0x128(sp)
    addi    r26, r3, 0x0
    slwi    r28, r4, 2
    add     r29, r26, r28
    slwi    r3, r4, 4
    addi    r27, r4, 0x0
    addi    r4, r3, 0x218
    addi    r3, sp, 0x98
    add     r4, r26, r4
    lwz     r0, 0x1c0(r29)
    stw     r0, 0x424(r26)
    lwz     r0, 0x378(r29)
    stw     r0, 0x428(r26)
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r4, 0x168(r29)
    addi    r3, sp, 0x88
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x424(r26)
    li      r30, 0x1
    lis     r31, 0x4330
    lwz     r3, 0x0(r3)
    li      r4, 0x14
    stb     r30, 0xc(r3)
    lwz     r6, 0x9c(sp)
    lwz     r0, 0xa4(sp)
    lwz     r5, 0x98(sp)
    lwz     r3, 0xa0(sp)
    subf    r24, r6, r0
    xoris   r0, r24, 0x8000
    lfs     f3, -0x46b0(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0x11c(sp)
    lwz     r29, 0x424(r26)
    fmr     f4, f3
    stw     r3, 0x124(sp)
    lfd     f2, -0x46a8(rtoc)
    addi    r3, r29, 0x2c
    stw     r31, 0x120(sp)
    stw     r31, 0x118(sp)
    lfd     f1, 0x120(sp)
    lfd     f0, 0x118(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r30, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r6, 0x4(r29)
    subf    r7, r5, r0
    lwz     r0, 0xc(r29)
    subf    r5, r24, r7
    lfd     f4, -0x46a8(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x46ac(rtoc)
    subf    r0, r25, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x114(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x104(sp)
    stw     r5, 0xf4(sp)
    stw     r0, 0xe4(sp)
    stw     r31, 0x110(sp)
    stw     r31, 0x100(sp)
    lfd     f1, 0x110(sp)
    stw     r31, 0xf0(sp)
    lfd     f0, 0x100(sp)
    fsubs   f3, f1, f4
    stw     r31, 0xe0(sp)
    lfd     f1, 0xf0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xe0(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
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
    stw     r31, 0xd0(sp)
    stw     r31, 0xc8(sp)
    lfd     f1, 0xd0(sp)
    stw     r31, 0xc0(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f1, f1, f4
    stw     r31, 0xb8(sp)
    lfd     f3, 0xc0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xb8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r30, 0x4e(r29)
    li      r4, 0x14
    lwz     r5, 0x98(sp)
    lwz     r3, 0x8c(sp)
    lwz     r0, 0x88(sp)
    subf    r3, r5, r3
    lfs     f1, -0x46b0(rtoc)
    subi    r29, r3, 0x28
    lwz     r24, 0x424(r26)
    subf    r25, r5, r0
    lfd     f4, -0x46a8(rtoc)
    xoris   r3, r25, 0x8000
    fmr     f2, f1
    xoris   r0, r29, 0x8000
    stw     r3, 0xb4(sp)
    addi    r3, r24, 0x14
    stw     r0, 0xac(sp)
    stw     r31, 0xb0(sp)
    stw     r31, 0xa8(sp)
    lfd     f3, 0xb0(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    lwz     r4, 0x4(r24)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r24)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r29
    mtlr    r12
    blrl
    stb     r30, 0x4e(r24)
    li      r5, 0x0
    li      r4, 0xff
    lwz     r3, 0x428(r26)
    li      r0, 0x50
    cmpwi   r27, 0x1
    lwz     r3, 0x0(r3)
    stb     r5, 0xcc(r3)
    lwz     r3, 0x428(r26)
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r6, 0x428(r26)
    lwz     r3, 0x0(r6)
    stb     r5, 0xcc(r3)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x44(r6)
    lfs     f0, -0x4698(rtoc)
    stfs    f0, 0x48(r6)
    sth     r4, 0x4c(r6)
    stb     r30, 0x50(r6)
    lwz     r6, 0x128(r26)
    lwz     r3, 0x0(r6)
    stb     r4, 0xcc(r3)
    lfs     f0, -0x46a0(rtoc)
    stfs    f0, 0x44(r6)
    lfs     f0, -0x469c(rtoc)
    stfs    f0, 0x48(r6)
    sth     r5, 0x4c(r6)
    stb     r30, 0x50(r6)
    lwz     r4, 0x12c(r26)
    lwz     r3, 0x0(r4)
    stb     r0, 0xcc(r3)
    lfs     f0, -0x4694(rtoc)
    stfs    f0, 0x44(r4)
    lfs     f0, -0x4690(rtoc)
    stfs    f0, 0x48(r4)
    sth     r5, 0x4c(r4)
    stb     r30, 0x50(r4)
    bne-    branch_0x80179d98
    mr      r3, r26
    bl      placeMario__6TGuideFv
branch_0x80179d98:
    lwz     r3, -0x6044(r13)
    li      r4, 0x4804
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80179dc0
    li      r3, 0x4804
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80179dc0:
    extsh   r0, r27
    sth     r0, 0x42c(r26)
    li      r0, 0x1
    cmpwi   r27, -0x1
    stw     r0, 0x10(r26)
    beq-    branch_0x80179df8
    cmpwi   r27, 0xa
    bge-    branch_0x80179df8
    li      r0, 0x0
    stb     r0, 0x164(r26)
    add     r3, r26, r28
    li      r0, 0xff
    lwz     r3, 0x44c(r3)
    stb     r0, 0xcc(r3)
branch_0x80179df8:
    lmw     r24, 0x128(sp)
    lwz     r0, 0x14c(sp)
    addi    sp, sp, 0x148
    mtlr    r0
    blr


.globl placeMario__6TGuideFv
placeMario__6TGuideFv: # 0x80179e0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stw     r31, 0xfc(sp)
    mr      r31, r3
    stw     r30, 0xf8(sp)
    lwz     r4, -0x6048(r13)
    lbz     r3, 0x7c(r4)
    bl      SMS_getShineStage__FUc
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    beq-    branch_0x80179e4c
    lwz     r3, 0x430(r31)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x8017a048

branch_0x80179e4c:
    lwz     r4, -0x60b4(r13)
    lis     r6, 0x4330
    lfd     f6, -0x46a8(rtoc)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f0, -0x4688(rtoc)
    stw     r3, 0xac(sp)
    lfs     f4, -0x468c(rtoc)
    stw     r0, 0xb0(sp)
    lfs     f2, -0x46b0(rtoc)
    lwz     r0, 0x8(r4)
    stw     r0, 0xb4(sp)
    lwz     r3, 0x434(r31)
    lwz     r0, 0x43c(r31)
    lfs     f3, 0xac(sp)
    subf    r7, r3, r0
    lwz     r4, 0x438(r31)
    xoris   r0, r7, 0x8000
    lwz     r3, 0x440(r31)
    stw     r0, 0xec(sp)
    subf    r9, r4, r3
    lfs     f7, 0xb4(sp)
    stw     r6, 0xe8(sp)
    xoris   r3, r9, 0x8000
    lfd     f1, 0xe8(sp)
    stw     r3, 0xf4(sp)
    fsubs   f1, f1, f6
    stw     r6, 0xf0(sp)
    fmuls   f1, f3, f1
    lfd     f5, 0xf0(sp)
    stw     r0, 0xdc(sp)
    fsubs   f5, f5, f6
    fdivs   f3, f1, f0
    stw     r3, 0xc4(sp)
    stw     r6, 0xd8(sp)
    stw     r6, 0xc0(sp)
    lfd     f1, 0xd8(sp)
    stfs    f3, 0xac(sp)
    fmuls   f5, f7, f5
    lfd     f0, 0xc0(sp)
    fsubs   f3, f1, f6
    stfs    f2, 0xb0(sp)
    fsubs   f1, f0, f6
    fdivs   f0, f5, f4
    stfs    f0, 0xb4(sp)
    lwz     r8, 0x430(r31)
    lfs     f4, -0x46ac(rtoc)
    lfs     f0, 0xb4(sp)
    lfs     f2, 0xac(sp)
    lwz     r4, 0x14(r8)
    fmadds  f0, f4, f1, f0
    lwz     r0, 0x1c(r8)
    fmadds  f3, f4, f3, f2
    lwz     r3, 0x18(r8)
    subf    r5, r4, r0
    xoris   r4, r5, 0x8000
    lwz     r0, 0x20(r8)
    stw     r4, 0xe4(sp)
    subf    r7, r5, r7
    subf    r3, r3, r0
    lfs     f2, -0x4684(rtoc)
    stw     r6, 0xe0(sp)
    xoris   r0, r3, 0x8000
    lfd     f1, 0xe0(sp)
    stw     r0, 0xcc(sp)
    fsubs   f1, f1, f6
    stw     r6, 0xc8(sp)
    fnmsubs  f3, f4, f1, f3
    lfd     f1, 0xc8(sp)
    fsubs   f1, f1, f6
    fsubs   f2, f3, f2
    fmadds  f0, f4, f1, f0
    fctiwz  f1, f2
    fctiwz  f0, f0
    stfd    f1, 0xd0(sp)
    lwz     r4, 0xd4(sp)
    stfd    f0, 0xb8(sp)
    cmpw    r4, r7
    lwz     r5, 0xbc(sp)
    ble-    branch_0x80179f90
    mr      r4, r7
branch_0x80179f90:
    cmpwi   r4, 0x0
    bge-    branch_0x80179f9c
    li      r4, 0x0
branch_0x80179f9c:
    subf    r0, r3, r9
    cmpw    r5, r0
    ble-    branch_0x80179fac
    mr      r5, r0
branch_0x80179fac:
    cmpwi   r5, 0x0
    bge-    branch_0x80179fb8
    li      r5, 0x0
branch_0x80179fb8:
    li      r0, 0x1
    stb     r0, 0xc(r8)
    lwz     r3, 0x430(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    li      r30, 0x2
branch_0x80179fd8:
    addis   r4, r30, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x3a5
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8017a018
    lwz     r3, 0xbc(r31)
    addis   r4, r30, 0x3031
    addi    r4, r4, 0x672f
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x8017a03c

branch_0x8017a018:
    lwz     r3, 0xbc(r31)
    addis   r4, r30, 0x3031
    addi    r4, r4, 0x672f
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8017a03c:
    addi    r30, r30, 0x1
    cmpwi   r30, 0xa
    blt+    branch_0x80179fd8
branch_0x8017a048:
    lwz     r0, 0x104(sp)
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    mtlr    r0
    addi    sp, sp, 0x100
    blr


.globl changeBotStatus__6TGuideFi
changeBotStatus__6TGuideFi: # 0x8017a060
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stmw    r27, 0xe4(sp)
    addi    r31, r4, 0x0
    cmpwi   r31, -0x1
    addi    r30, r3, 0x0
    beq-    branch_0x8017a088
    cmpwi   r31, 0xa
    blt-    branch_0x8017a098
branch_0x8017a088:
    lwz     r3, 0x124(r30)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x8017a6a8

branch_0x8017a098:
    slwi    r29, r31, 3
    add     r28, r30, r29
    lbz     r0, 0x14(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x8017a520
    lwz     r3, 0x124(r30)
    li      r0, 0x1
    addi    r4, r31, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0xf4(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x474(r30)
    bl      SMSGetMessageData__FPvUl
    mr      r27, r3
    lwz     r3, 0x124(r30)
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x1a
    bl      strncpy
    lbz     r0, 0x15(r28)
    cmpwi   r0, 0x0
    mr      r28, r0
    bge-    branch_0x8017a0f8
    li      r28, 0x0
branch_0x8017a0f8:
    cmpwi   r28, 0x63
    ble-    branch_0x8017a104
    li      r28, 0x63
branch_0x8017a104:
    cmpwi   r28, 0xa
    bge-    branch_0x8017a138
    lwz     r3, 0xfc(r30)
    li      r4, 0x0
    slwi    r0, r28, 2
    stb     r4, 0xc(r3)
    add     r3, r30, r0
    li      r5, 0x0
    lwz     r4, 0xc8(r3)
    lwz     r3, 0xf8(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8017a1a8

branch_0x8017a138:
    lis     r3, 0x6666
    lwz     r4, 0xfc(r30)
    addi    r0, r3, 0x6667
    mulhw   r27, r0, r28
    srawi   r0, r27, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    li      r3, 0x1
    stb     r3, 0xc(r4)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0xf8(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r27, 2
    lwz     r3, 0xfc(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8017a1a8:
    cmplwi  r31, 0x1
    ble-    branch_0x8017a1c0
    add     r3, r30, r29
    lbz     r0, 0x16(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8017a1e0
branch_0x8017a1c0:
    lwz     r3, 0x100(r30)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0x104(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x108(r30)
    stb     r0, 0xc(r3)
    b       branch_0x8017a228

branch_0x8017a1e0:
    cmplwi  r0, 0x1
    bne-    branch_0x8017a20c
    lwz     r3, 0x100(r30)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x104(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x108(r30)
    stb     r0, 0xc(r3)
    b       branch_0x8017a228

branch_0x8017a20c:
    lwz     r3, 0x100(r30)
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x104(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x108(r30)
    stb     r0, 0xc(r3)
branch_0x8017a228:
    add     r3, r30, r29
    lhz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    mr      r28, r0
    bge-    branch_0x8017a240
    li      r28, 0x0
branch_0x8017a240:
    cmpwi   r28, 0x3e7
    ble-    branch_0x8017a24c
    li      r28, 0x3e7
branch_0x8017a24c:
    cmpwi   r28, 0x64
    bge-    branch_0x8017a2c8
    lis     r3, 0x6666
    lwz     r4, 0x114(r30)
    addi    r0, r3, 0x6667
    mulhw   r27, r0, r28
    srawi   r0, r27, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    li      r3, 0x0
    stb     r3, 0xc(r4)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x10c(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r27, 2
    lwz     r3, 0x110(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8017a374

branch_0x8017a2c8:
    lis     r3, 0x51ec
    lwz     r4, 0x114(r30)
    subi    r0, r3, 0x7ae1
    mulhw   r0, r0, r28
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r27, r0, r3
    li      r0, 0x1
    stb     r0, 0xc(r4)
    slwi    r0, r27, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x10c(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    mulli   r0, r27, 0x64
    lwz     r3, 0x110(r30)
    lis     r4, 0x6666
    subf    r28, r0, r28
    addi    r0, r4, 0x6667
    mulhw   r27, r0, r28
    srawi   r0, r27, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r27, 2
    lwz     r3, 0x114(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8017a374:
    add     r3, r30, r29
    lbz     r0, 0x1a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8017a394
    lwz     r3, 0x118(r30)
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x8017a3a0

branch_0x8017a394:
    lwz     r3, 0x118(r30)
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8017a3a0:
    add     r3, r30, r29
    lbz     r0, 0x1b(r3)
    cmpwi   r0, 0x0
    mr      r28, r0
    bge-    branch_0x8017a3b8
    li      r28, 0x0
branch_0x8017a3b8:
    cmpwi   r28, 0x63
    ble-    branch_0x8017a3c4
    li      r28, 0x63
branch_0x8017a3c4:
    cmpwi   r31, 0x0
    bne-    branch_0x8017a414
    lwz     r3, 0xbc(r30)
    lis     r4, 0x7362
    addi    r4, r4, 0x5f69
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r29, 0x0
    stb     r29, 0xc(r3)
    lis     r3, 0x7363
    addi    r4, r3, 0x5f74
    lwz     r3, 0xbc(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r29, 0xc(r3)
    b       branch_0x8017a458

branch_0x8017a414:
    lwz     r3, 0xbc(r30)
    lis     r4, 0x7362
    addi    r4, r4, 0x5f69
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r29, 0x1
    stb     r29, 0xc(r3)
    lis     r3, 0x7363
    addi    r4, r3, 0x5f74
    lwz     r3, 0xbc(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r29, 0xc(r3)
branch_0x8017a458:
    cmpwi   r28, 0xa
    bge-    branch_0x8017a4ac
    lis     r3, 0x6666
    lwz     r4, 0x120(r30)
    addi    r0, r3, 0x6667
    mulhw   r0, r0, r28
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    li      r3, 0x0
    stb     r3, 0xc(r4)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x11c(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8017a6a8

branch_0x8017a4ac:
    lis     r3, 0x6666
    lwz     r4, 0x120(r30)
    addi    r0, r3, 0x6667
    mulhw   r29, r0, r28
    srawi   r0, r29, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    li      r3, 0x1
    stb     r3, 0xc(r4)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x11c(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r29, 2
    lwz     r3, 0x120(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8017a6a8

branch_0x8017a520:
    lwz     r3, 0x124(r30)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0xf4(r30)
    stb     r0, 0xc(r3)
    lbz     r0, 0x1b(r28)
    cmpwi   r0, 0x0
    mr      r28, r0
    bge-    branch_0x8017a54c
    li      r28, 0x0
branch_0x8017a54c:
    cmpwi   r28, 0x63
    ble-    branch_0x8017a558
    li      r28, 0x63
branch_0x8017a558:
    cmpwi   r28, 0xa
    bge-    branch_0x8017a5ac
    lis     r3, 0x6666
    lwz     r4, 0x120(r30)
    addi    r0, r3, 0x6667
    mulhw   r0, r0, r28
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    li      r3, 0x0
    stb     r3, 0xc(r4)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x11c(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8017a61c

branch_0x8017a5ac:
    lis     r3, 0x6666
    lwz     r4, 0x120(r30)
    addi    r0, r3, 0x6667
    mulhw   r29, r0, r28
    srawi   r0, r29, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    li      r3, 0x1
    stb     r3, 0xc(r4)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x11c(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r29, 2
    lwz     r3, 0x120(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8017a61c:
    lwz     r3, 0xbc(r30)
    lis     r4, 0x7362
    addi    r4, r4, 0x5f69
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lis     r3, 0x7363
    addi    r4, r3, 0x5f74
    lwz     r3, 0xbc(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r28, 0x0
    stb     r28, 0xc(r3)
    lis     r3, 0x7371
    addi    r4, r3, 0x5f69
    lwz     r3, 0xbc(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r28, 0xc(r3)
    mr      r4, r31
    lwz     r3, 0x474(r30)
    bl      SMSGetMessageData__FPvUl
    mr      r28, r3
    lwz     r3, 0x124(r30)
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r28, 0x0
    li      r5, 0x1a
    bl      strncpy
branch_0x8017a6a8:
    lmw     r27, 0xe4(sp)
    lwz     r0, 0xfc(sp)
    addi    sp, sp, 0xf8
    mtlr    r0
    blr


.globl checkPoint__6TGuideFii
checkPoint__6TGuideFii: # 0x8017a6bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    li      r31, -0x1
    li      r26, 0x0
    li      r27, 0x0
branch_0x8017a6e4:
    addi    r0, r27, 0x168
    lwzx    r4, r28, r0
    addi    r3, sp, 0x40
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r0, 0x40(sp)
    cmpw    r29, r0
    ble-    branch_0x8017a730
    lwz     r0, 0x48(sp)
    cmpw    r29, r0
    bge-    branch_0x8017a730
    lwz     r0, 0x44(sp)
    cmpw    r30, r0
    ble-    branch_0x8017a730
    lwz     r0, 0x4c(sp)
    cmpw    r30, r0
    bge-    branch_0x8017a730
    mr      r31, r26
    b       branch_0x8017a740

branch_0x8017a730:
    addi    r26, r26, 0x1
    cmpwi   r26, 0xe
    addi    r27, r27, 0x4
    blt+    branch_0x8017a6e4
branch_0x8017a740:
    cmpwi   r31, -0x1
    bne-    branch_0x8017a7ac
    li      r26, 0x0
    li      r27, 0x0
branch_0x8017a750:
    addi    r0, r27, 0x44c
    lwzx    r4, r28, r0
    addi    r3, sp, 0x30
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r0, 0x30(sp)
    cmpw    r29, r0
    ble-    branch_0x8017a79c
    lwz     r0, 0x38(sp)
    cmpw    r29, r0
    bge-    branch_0x8017a79c
    lwz     r0, 0x34(sp)
    cmpw    r30, r0
    ble-    branch_0x8017a79c
    lwz     r0, 0x3c(sp)
    cmpw    r30, r0
    bge-    branch_0x8017a79c
    mr      r31, r26
    b       branch_0x8017a7ac

branch_0x8017a79c:
    addi    r26, r26, 0x1
    cmpwi   r26, 0xa
    addi    r27, r27, 0x4
    blt+    branch_0x8017a750
branch_0x8017a7ac:
    cmpwi   r31, 0x0
    blt-    branch_0x8017a7d8
    cmpwi   r31, 0xa
    bge-    branch_0x8017a7d8
    slwi    r0, r31, 2
    add     r3, r28, r0
    lwz     r3, 0x44c(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8017a7d8
    li      r31, -0x1
branch_0x8017a7d8:
    mr      r3, r31
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl linkSelect__6TGuideFv
linkSelect__6TGuideFv: # 0x8017a7f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stw     r31, 0x13c(sp)
    stw     r30, 0x138(sp)
    stw     r29, 0x134(sp)
    mr      r29, r3
    lwz     r3, 0xc0(r3)
    lhz     r0, 0xe2(r3)
    ori     r0, r0, 0x80
    sth     r0, 0xe2(r3)
    lwz     r3, 0xc0(r29)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x8017a838
    lwz     r0, 0x1c(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8017a840
branch_0x8017a838:
    li      r0, 0x7
    stw     r0, 0x10(r29)
branch_0x8017a840:
    lwz     r4, 0xc0(r29)
    lwz     r3, 0x128(r29)
    lfs     f1, 0xc8(r4)
    lfs     f0, -0x4680(rtoc)
    lwz     r3, 0x0(r3)
    fmuls   f2, f0, f1
    lfs     f1, -0x467c(rtoc)
    lfs     f0, 0xcc(r4)
    lwz     r30, 0x14(r3)
    fctiwz  f2, f2
    fmuls   f0, f1, f0
    lwz     r31, 0x18(r3)
    stfd    f2, 0x128(sp)
    fctiwz  f0, f0
    lwz     r0, 0x12c(sp)
    stfd    f0, 0x120(sp)
    extsh   r0, r0
    add     r30, r30, r0
    lwz     r0, 0x124(sp)
    cmpwi   r30, 0x238
    extsh   r0, r0
    add     r31, r31, r0
    ble-    branch_0x8017a8a0
    li      r30, 0x238
branch_0x8017a8a0:
    cmpwi   r30, 0x0
    bge-    branch_0x8017a8ac
    li      r30, 0x0
branch_0x8017a8ac:
    cmpwi   r31, 0x168
    ble-    branch_0x8017a8b8
    li      r31, 0x168
branch_0x8017a8b8:
    cmpwi   r31, 0x38
    bge-    branch_0x8017a8c4
    li      r31, 0x38
branch_0x8017a8c4:
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x12c(r29)
    addi    r4, r30, 0x7
    addi    r5, r31, 0x4
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r3, r29, 0x0
    subi    r4, r30, 0x2
    addi    r5, r31, 0xa
    bl      checkPoint__6TGuideFii
    addi    r30, r3, 0x0
    cmpwi   r30, -0x1
    beq-    branch_0x8017a934
    lwz     r3, 0xc0(r29)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x8017a934
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      appearGuidePane__6TGuideFi
branch_0x8017a934:
    cmpwi   r30, -0x1
    beq-    branch_0x8017ab20
    cmpwi   r30, 0xa
    bge-    branch_0x8017ab20
    slwi    r3, r30, 2
    lbz     r0, 0x164(r29)
    add     r4, r29, r3
    lwzu    r3, 0x44c(r4)
    cmplwi  r0, 0x0
    lbz     r3, 0xcc(r3)
    beq-    branch_0x8017a968
    addi    r0, r3, 0x4
    b       branch_0x8017a96c

branch_0x8017a968:
    subi    r0, r3, 0x4
branch_0x8017a96c:
    cmpwi   r0, 0x1e
    bge-    branch_0x8017a984
    li      r0, 0x1
    stb     r0, 0x164(r29)
    li      r0, 0x1e
    b       branch_0x8017a998

branch_0x8017a984:
    cmpwi   r0, 0xff
    ble-    branch_0x8017a998
    li      r0, 0x0
    stb     r0, 0x164(r29)
    li      r0, 0xff
branch_0x8017a998:
    lwz     r4, 0x0(r4)
    lis     r3, 0x6c17
    stb     r0, 0xcc(r4)
    subi    r0, r3, 0x3e93
    lhz     r5, 0xf0(r29)
    lwz     r4, 0x128(r29)
    mulhwu  r3, r0, r5
    lwz     r31, 0x0(r4)
    subf    r0, r3, r5
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 5
    mulli   r3, r0, 0x2d
    subf.   r3, r3, r5
    bne-    branch_0x8017aa60
    clrlwi. r0, r0, 31
    bne-    branch_0x8017aa20
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r31
    stfs    f1, 0x104(r31)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x108(r31)
    stfs    f1, 0x10c(r31)
    stfs    f1, 0x110(r31)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r31
    stfs    f1, 0x114(r31)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x118(r31)
    stfs    f1, 0x11c(r31)
    stfs    f1, 0x120(r31)
    bl      setBlendKonstAlpha__10J2DPictureFv
    b       branch_0x8017aa60

branch_0x8017aa20:
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r31
    stfs    f0, 0x104(r31)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x108(r31)
    stfs    f0, 0x10c(r31)
    stfs    f0, 0x110(r31)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r31
    stfs    f0, 0x114(r31)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x118(r31)
    stfs    f0, 0x11c(r31)
    stfs    f0, 0x120(r31)
    bl      setBlendKonstAlpha__10J2DPictureFv
branch_0x8017aa60:
    lis     r3, 0x6c17
    lhz     r5, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r4, 0x12c(r29)
    mulhwu  r3, r0, r5
    lwz     r31, 0x0(r4)
    subf    r0, r3, r5
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 5
    mulli   r3, r0, 0x2d
    subf.   r3, r3, r5
    bne-    branch_0x8017ab20
    clrlwi. r0, r0, 31
    bne-    branch_0x8017aae0
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r31
    stfs    f1, 0x104(r31)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x108(r31)
    stfs    f1, 0x10c(r31)
    stfs    f1, 0x110(r31)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r31
    stfs    f1, 0x114(r31)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x118(r31)
    stfs    f1, 0x11c(r31)
    stfs    f1, 0x120(r31)
    bl      setBlendKonstAlpha__10J2DPictureFv
    b       branch_0x8017ab20

branch_0x8017aae0:
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r31
    stfs    f0, 0x104(r31)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x108(r31)
    stfs    f0, 0x10c(r31)
    stfs    f0, 0x110(r31)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r31
    stfs    f0, 0x114(r31)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x118(r31)
    stfs    f0, 0x11c(r31)
    stfs    f0, 0x120(r31)
    bl      setBlendKonstAlpha__10J2DPictureFv
branch_0x8017ab20:
    lwz     r0, 0x480(r29)
    cmpw    r0, r30
    beq-    branch_0x8017ac04
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      changeBotStatus__6TGuideFi
    lwz     r0, 0x480(r29)
    cmpwi   r0, -0x1
    beq-    branch_0x8017ab60
    cmpwi   r0, 0xa
    bge-    branch_0x8017ab60
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x44c(r3)
    li      r0, 0xff
    stb     r0, 0xcc(r3)
branch_0x8017ab60:
    cmpwi   r30, -0x1
    bne-    branch_0x8017abf8
    lwz     r3, 0x128(r29)
    lfs     f0, -0x46b4(rtoc)
    lwz     r31, 0x0(r3)
    stfs    f0, 0x104(r31)
    mr      r3, r31
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x108(r31)
    stfs    f0, 0x10c(r31)
    stfs    f0, 0x110(r31)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r31
    stfs    f0, 0x114(r31)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x118(r31)
    stfs    f0, 0x11c(r31)
    stfs    f0, 0x120(r31)
    bl      setBlendKonstAlpha__10J2DPictureFv
    lwz     r3, 0x12c(r29)
    lfs     f0, -0x46b4(rtoc)
    lwz     r31, 0x0(r3)
    stfs    f0, 0x104(r31)
    mr      r3, r31
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x108(r31)
    stfs    f0, 0x10c(r31)
    stfs    f0, 0x110(r31)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r31
    stfs    f0, 0x114(r31)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x118(r31)
    stfs    f0, 0x11c(r31)
    stfs    f0, 0x120(r31)
    bl      setBlendKonstAlpha__10J2DPictureFv
branch_0x8017abf8:
    li      r0, 0x0
    stb     r0, 0x164(r29)
    stw     r30, 0x480(r29)
branch_0x8017ac04:
    lis     r3, 0x6c17
    lhz     r4, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r30, 0x134(r29)
    mulhwu  r3, r0, r4
    subf    r0, r3, r4
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r3, r0, 0x5a
    subf.   r3, r3, r4
    bne-    branch_0x8017acc0
    clrlwi. r0, r0, 31
    bne-    branch_0x8017ac80
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r30
    stfs    f1, 0x104(r30)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x108(r30)
    stfs    f1, 0x10c(r30)
    stfs    f1, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r30
    stfs    f1, 0x114(r30)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x118(r30)
    stfs    f1, 0x11c(r30)
    stfs    f1, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
    b       branch_0x8017acc0

branch_0x8017ac80:
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r30
    stfs    f0, 0x104(r30)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x108(r30)
    stfs    f0, 0x10c(r30)
    stfs    f0, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r30
    stfs    f0, 0x114(r30)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x118(r30)
    stfs    f0, 0x11c(r30)
    stfs    f0, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
branch_0x8017acc0:
    lis     r3, 0x6c17
    lhz     r5, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r4, 0x148(r29)
    mulhwu  r3, r0, r5
    subf    r0, r3, r5
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r3, r0, 0x5a
    subf.   r3, r3, r5
    bne-    branch_0x8017ad0c
    clrlwi. r0, r0, 31
    bne-    branch_0x8017ad04
    li      r0, 0x0
    stw     r0, 0x12c(r4)
    b       branch_0x8017ad0c

branch_0x8017ad04:
    li      r0, 0x2
    stw     r0, 0x12c(r4)
branch_0x8017ad0c:
    lis     r3, 0x6c17
    lhz     r5, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r4, 0x154(r29)
    mulhwu  r3, r0, r5
    subf    r0, r3, r5
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r3, r0, 0x5a
    subf.   r3, r3, r5
    bne-    branch_0x8017ad58
    clrlwi. r0, r0, 31
    bne-    branch_0x8017ad50
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0xc0(r4)
    b       branch_0x8017ad58

branch_0x8017ad50:
    lfs     f0, -0x4678(rtoc)
    stfs    f0, 0xc0(r4)
branch_0x8017ad58:
    lis     r3, 0x6c17
    lhz     r4, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r30, 0x138(r29)
    mulhwu  r3, r0, r4
    subf    r0, r3, r4
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r3, r0, 0x5a
    subf.   r3, r3, r4
    bne-    branch_0x8017ae14
    clrlwi. r0, r0, 31
    bne-    branch_0x8017add4
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r30
    stfs    f1, 0x104(r30)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x108(r30)
    stfs    f1, 0x10c(r30)
    stfs    f1, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r30
    stfs    f1, 0x114(r30)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x118(r30)
    stfs    f1, 0x11c(r30)
    stfs    f1, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
    b       branch_0x8017ae14

branch_0x8017add4:
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r30
    stfs    f0, 0x104(r30)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x108(r30)
    stfs    f0, 0x10c(r30)
    stfs    f0, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r30
    stfs    f0, 0x114(r30)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x118(r30)
    stfs    f0, 0x11c(r30)
    stfs    f0, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
branch_0x8017ae14:
    lis     r3, 0x6c17
    lhz     r5, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r4, 0x14c(r29)
    mulhwu  r3, r0, r5
    subf    r0, r3, r5
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r3, r0, 0x5a
    subf.   r3, r3, r5
    bne-    branch_0x8017ae60
    clrlwi. r0, r0, 31
    bne-    branch_0x8017ae58
    li      r0, 0x0
    stw     r0, 0x12c(r4)
    b       branch_0x8017ae60

branch_0x8017ae58:
    li      r0, 0x2
    stw     r0, 0x12c(r4)
branch_0x8017ae60:
    lis     r3, 0x6c17
    lhz     r5, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r4, 0x150(r29)
    mulhwu  r3, r0, r5
    subf    r0, r3, r5
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r3, r0, 0x5a
    subf.   r3, r3, r5
    bne-    branch_0x8017aeac
    clrlwi. r0, r0, 31
    bne-    branch_0x8017aea4
    li      r0, 0x0
    stw     r0, 0x12c(r4)
    b       branch_0x8017aeac

branch_0x8017aea4:
    li      r0, 0x2
    stw     r0, 0x12c(r4)
branch_0x8017aeac:
    lis     r3, 0x6c17
    lhz     r4, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r30, 0x13c(r29)
    mulhwu  r3, r0, r4
    subf    r0, r3, r4
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r3, r0, 0x5a
    subf.   r3, r3, r4
    bne-    branch_0x8017af68
    clrlwi. r0, r0, 31
    bne-    branch_0x8017af28
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r30
    stfs    f1, 0x104(r30)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x108(r30)
    stfs    f1, 0x10c(r30)
    stfs    f1, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r30
    stfs    f1, 0x114(r30)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x118(r30)
    stfs    f1, 0x11c(r30)
    stfs    f1, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
    b       branch_0x8017af68

branch_0x8017af28:
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r30
    stfs    f0, 0x104(r30)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x108(r30)
    stfs    f0, 0x10c(r30)
    stfs    f0, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r30
    stfs    f0, 0x114(r30)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x118(r30)
    stfs    f0, 0x11c(r30)
    stfs    f0, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
branch_0x8017af68:
    lis     r3, 0x6c17
    lhz     r4, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r30, 0x140(r29)
    mulhwu  r3, r0, r4
    subf    r0, r3, r4
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r3, r0, 0x5a
    subf.   r3, r3, r4
    bne-    branch_0x8017b024
    clrlwi. r0, r0, 31
    bne-    branch_0x8017afe4
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r30
    stfs    f1, 0x104(r30)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x108(r30)
    stfs    f1, 0x10c(r30)
    stfs    f1, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r30
    stfs    f1, 0x114(r30)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x118(r30)
    stfs    f1, 0x11c(r30)
    stfs    f1, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
    b       branch_0x8017b024

branch_0x8017afe4:
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r30
    stfs    f0, 0x104(r30)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x108(r30)
    stfs    f0, 0x10c(r30)
    stfs    f0, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r30
    stfs    f0, 0x114(r30)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x118(r30)
    stfs    f0, 0x11c(r30)
    stfs    f0, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
branch_0x8017b024:
    lis     r3, 0x6c17
    lhz     r4, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r30, 0x144(r29)
    mulhwu  r3, r0, r4
    subf    r0, r3, r4
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r3, r0, 0x5a
    subf.   r3, r3, r4
    bne-    branch_0x8017b0e0
    clrlwi. r0, r0, 31
    bne-    branch_0x8017b0a0
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r30
    stfs    f1, 0x104(r30)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x108(r30)
    stfs    f1, 0x10c(r30)
    stfs    f1, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f1, -0x46b0(rtoc)
    mr      r3, r30
    stfs    f1, 0x114(r30)
    lfs     f0, -0x46b4(rtoc)
    stfs    f0, 0x118(r30)
    stfs    f1, 0x11c(r30)
    stfs    f1, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
    b       branch_0x8017b0e0

branch_0x8017b0a0:
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r30
    stfs    f0, 0x104(r30)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x108(r30)
    stfs    f0, 0x10c(r30)
    stfs    f0, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    lfs     f0, -0x46b4(rtoc)
    mr      r3, r30
    stfs    f0, 0x114(r30)
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0x118(r30)
    stfs    f0, 0x11c(r30)
    stfs    f0, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
branch_0x8017b0e0:
    lis     r3, 0x6c17
    lhz     r5, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r4, 0x158(r29)
    mulhwu  r3, r0, r5
    subf    r0, r3, r5
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r3, r0, 0x5a
    subf.   r3, r3, r5
    bne-    branch_0x8017b12c
    clrlwi. r0, r0, 31
    bne-    branch_0x8017b124
    lfs     f0, -0x46b0(rtoc)
    stfs    f0, 0xc0(r4)
    b       branch_0x8017b12c

branch_0x8017b124:
    lfs     f0, -0x4674(rtoc)
    stfs    f0, 0xc0(r4)
branch_0x8017b12c:
    lis     r3, 0x6c17
    lhz     r30, 0xf0(r29)
    subi    r0, r3, 0x3e93
    lwz     r31, 0x444(r29)
    mulhwu  r3, r0, r30
    subf    r0, r3, r30
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 6
    mulli   r0, r0, 0x5a
    subf.   r0, r0, r30
    bne-    branch_0x8017b198
    li      r8, 0x0
    stw     r8, 0xb4(sp)
    li      r0, -0x5
    addi    r7, sp, 0xb4
    stw     r8, 0xac(sp)
    addi    r6, sp, 0xac
    addi    r5, sp, 0xa4
    stw     r8, 0xa4(sp)
    mr      r3, r31
    li      r4, 0x2d
    stw     r8, 0xb8(sp)
    stw     r0, 0xb0(sp)
    stw     r8, 0xa8(sp)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    b       branch_0x8017b1d8

branch_0x8017b198:
    cmpwi   r0, 0x2d
    bne-    branch_0x8017b1d8
    li      r8, 0x0
    stw     r8, 0xcc(sp)
    li      r0, 0x5
    addi    r7, sp, 0xcc
    stw     r8, 0xc4(sp)
    addi    r6, sp, 0xc4
    addi    r5, sp, 0xbc
    stw     r8, 0xbc(sp)
    mr      r3, r31
    li      r4, 0x2d
    stw     r8, 0xd0(sp)
    stw     r0, 0xc8(sp)
    stw     r8, 0xc0(sp)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x8017b1d8:
    lis     r3, 0x6c17
    subi    r0, r3, 0x3e93
    mulhwu  r3, r0, r30
    subf    r0, r3, r30
    srwi    r0, r0, 1
    add     r0, r0, r3
    srwi    r0, r0, 7
    mulli   r0, r0, 0xb4
    subf    r0, r0, r30
    cmplwi  r0, 0x82
    bge-    branch_0x8017b20c
    li      r0, 0xff
    b       branch_0x8017b210

branch_0x8017b20c:
    li      r0, 0x0
branch_0x8017b210:
    lwz     r4, 0x448(r29)
    mr      r3, r31
    stb     r0, 0xcc(r4)
    bl      update__10TBoundPaneFv
    lis     r3, 0xf2ba
    lhz     r5, 0xf0(r29)
    subi    r4, r3, 0x29b7
    lwz     r3, 0x478(r29)
    mulhwu  r0, r4, r5
    srwi    r0, r0, 8
    mulli   r0, r0, 0x10e
    subf.   r0, r0, r5
    bne-    branch_0x8017b32c
    mulhwu  r0, r4, r5
    extrwi. r0, r0, 1, 23
    bne-    branch_0x8017b2dc
    lbz     r4, 0x47c(r29)
    extsh.  r0, r4
    bge-    branch_0x8017b264
    li      r7, 0x0
    b       branch_0x8017b268

branch_0x8017b264:
    mr      r7, r4
branch_0x8017b268:
    extsh   r0, r7
    cmpwi   r0, 0xff
    ble-    branch_0x8017b278
    li      r7, 0xff
branch_0x8017b278:
    extsh   r4, r4
    lwz     r5, 0x0(r3)
    xoris   r0, r4, 0x8000
    stw     r0, 0x124(sp)
    lis     r6, 0x4330
    neg     r0, r4
    stb     r7, 0xcc(r5)
    xoris   r5, r0, 0x8000
    li      r4, 0x0
    stw     r6, 0x120(sp)
    li      r0, 0x1
    lfd     f2, -0x46a8(rtoc)
    stw     r5, 0x12c(sp)
    lfd     f0, 0x120(sp)
    stw     r6, 0x128(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x128(sp)
    stfs    f1, 0x44(r3)
    fsubs   f1, f0, f2
    lfs     f0, -0x4670(rtoc)
    fdivs   f0, f1, f0
    stfs    f0, 0x48(r3)
    sth     r4, 0x4c(r3)
    stb     r0, 0x50(r3)
    b       branch_0x8017b32c

branch_0x8017b2dc:
    lbz     r7, 0x47c(r29)
    li      r6, 0x0
    lwz     r5, 0x0(r3)
    lis     r4, 0x4330
    extsh   r0, r7
    stb     r6, 0xcc(r5)
    xoris   r5, r0, 0x8000
    li      r0, 0x1
    stw     r5, 0x124(sp)
    lfs     f0, -0x46b0(rtoc)
    stw     r4, 0x120(sp)
    stfs    f0, 0x44(r3)
    lfd     f1, 0x120(sp)
    lfd     f2, -0x46a8(rtoc)
    lfs     f0, -0x4670(rtoc)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x48(r3)
    sth     r7, 0x4c(r3)
    stb     r0, 0x50(r3)
branch_0x8017b32c:
    bl      update__7TExPaneFv
    lbz     r0, 0x15c(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8017b360
    lwz     r3, 0x160(r29)
    addi    r0, r3, 0x3
    stw     r0, 0x160(r29)
    lwz     r0, 0x160(r29)
    cmpwi   r0, 0x12c
    ble-    branch_0x8017b380
    li      r0, 0x0
    stb     r0, 0x15c(r29)
    b       branch_0x8017b380

branch_0x8017b360:
    lwz     r3, 0x160(r29)
    subi    r0, r3, 0x3
    stw     r0, 0x160(r29)
    lwz     r0, 0x160(r29)
    cmpwi   r0, 0x1e
    bge-    branch_0x8017b380
    li      r0, 0x1
    stb     r0, 0x15c(r29)
branch_0x8017b380:
    lwz     r0, 0x160(r29)
    cmpwi   r0, 0x1e
    bge-    branch_0x8017b394
    li      r5, 0x1e
    b       branch_0x8017b3a8

branch_0x8017b394:
    cmpwi   r0, 0xff
    ble-    branch_0x8017b3a4
    li      r5, 0xff
    b       branch_0x8017b3a8

branch_0x8017b3a4:
    clrlwi  r5, r0, 24
branch_0x8017b3a8:
    lwz     r3, 0x168(r29)
    li      r4, 0x8
    subfic  r0, r4, 0xa
    stb     r5, 0xcc(r3)
    cmpwi   r4, 0xa
    mtctr   r0
    slwi    r3, r4, 2
    lwz     r4, 0x16c(r29)
    stb     r5, 0xcc(r4)
    lwz     r4, 0x170(r29)
    stb     r5, 0xcc(r4)
    lwz     r4, 0x174(r29)
    stb     r5, 0xcc(r4)
    lwz     r4, 0x178(r29)
    stb     r5, 0xcc(r4)
    lwz     r4, 0x17c(r29)
    stb     r5, 0xcc(r4)
    lwz     r4, 0x180(r29)
    stb     r5, 0xcc(r4)
    lwz     r4, 0x184(r29)
    stb     r5, 0xcc(r4)
    bge-    branch_0x8017b414
branch_0x8017b400:
    addi    r0, r3, 0x168
    lwzx    r4, r29, r0
    addi    r3, r3, 0x4
    stb     r5, 0xcc(r4)
    bdnz+      branch_0x8017b400
branch_0x8017b414:
    lhz     r3, 0xf0(r29)
    addi    r0, r3, 0x1
    sth     r0, 0xf0(r29)
    lhz     r0, 0xf0(r29)
    cmplwi  r0, 0x21c
    ble-    branch_0x8017b434
    li      r0, 0x0
    sth     r0, 0xf0(r29)
branch_0x8017b434:
    lwz     r0, 0x144(sp)
    lwz     r31, 0x13c(sp)
    lwz     r30, 0x138(sp)
    mtlr    r0
    lwz     r29, 0x134(sp)
    addi    sp, sp, 0x140
    blr


.globl startMoveCursor__6TGuideFv
startMoveCursor__6TGuideFv: # 0x8017b450
    li      r0, 0x9
    stw     r0, 0x10(r3)
    li      r0, 0x0
    stb     r0, 0x164(r3)
    blr


.globl setup__6TGuideFP13JKRMemArchive
setup__6TGuideFP13JKRMemArchive: # 0x8017b464
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8017b494
    addi    r3, r31, 0x0
    subi    r4, r13, 0x6010
    bl      SMSMountAramArchive__FP13JKRMemArchiveR10TARAMBlock
    b       branch_0x8017b49c

branch_0x8017b494:
    li      r0, 0x10
    stb     r0, -0x63a8(r13)
branch_0x8017b49c:
    li      r0, 0x0
    stb     r0, 0xc4(r30)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl resetScore__6TGuideFv
resetScore__6TGuideFv: # 0x8017b4c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r18, 0xa0(sp)
    addi    r31, r3, 0x0
    li      r20, 0x0
    li      r27, 0x0
    li      r21, 0x0
    li      r18, 0x0
branch_0x8017b4e4:
    cmpwi   r21, 0x9
    beq-    branch_0x8017b654
    addis   r4, r21, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x3a5
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8017b530
    lwz     r3, 0xbc(r31)
    slwi    r4, r21, 24
    addis   r4, r4, 0x305f
    lwz     r12, 0x0(r3)
    addi    r4, r4, 0x6d6e
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x8017b558

branch_0x8017b530:
    lwz     r3, 0xbc(r31)
    slwi    r4, r21, 24
    addis   r4, r4, 0x305f
    lwz     r12, 0x0(r3)
    addi    r4, r4, 0x6d6e
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8017b558:
    cmplwi  r21, 0x1
    ble-    branch_0x8017b654
    slwi    r25, r21, 24
    addis   r24, r25, 0x3073
    add     r19, r31, r18
    li      r26, 0x0
    li      r23, 0x1
    li      r22, 0x0
    addi    r24, r24, 0x7331
branch_0x8017b57c:
    lbz     r0, 0x15(r19)
    cmpw    r26, r0
    bge-    branch_0x8017b5a8
    lwz     r3, 0xbc(r31)
    add     r4, r24, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r23, 0xc(r3)
    b       branch_0x8017b5c4

branch_0x8017b5a8:
    lwz     r3, 0xbc(r31)
    add     r4, r24, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r22, 0xc(r3)
branch_0x8017b5c4:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x8
    blt+    branch_0x8017b57c
    lwz     r3, 0xbc(r31)
    addis   r4, r25, 0x3073
    addi    r4, r4, 0x7131
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r22, 0x0
    stb     r22, 0xc(r3)
    addi    r23, r3, 0x0
    addis   r4, r25, 0x3073
    lwz     r3, 0xbc(r31)
    addi    r4, r4, 0x7132
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r22, 0xc(r3)
    addi    r4, r19, 0x16
    lbz     r0, 0x16(r19)
    cmplwi  r0, 0x0
    beq-    branch_0x8017b630
    li      r0, 0x1
    stb     r0, 0xc(r23)
branch_0x8017b630:
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0x1
    ble-    branch_0x8017b644
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8017b644:
    lbz     r3, 0x0(r4)
    lbz     r0, 0x15(r19)
    add     r20, r20, r3
    add     r27, r27, r0
branch_0x8017b654:
    addi    r21, r21, 0x1
    cmpwi   r21, 0xa
    addi    r18, r18, 0x8
    blt+    branch_0x8017b4e4
    clrlwi. r0, r20, 24
    add     r27, r27, r20
    bne-    branch_0x8017b698
    lwz     r3, 0xbc(r31)
    lis     r4, 0x6c71
    addi    r4, r4, 0x7573
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x8017b6bc

branch_0x8017b698:
    lwz     r3, 0xbc(r31)
    lis     r4, 0x6c71
    addi    r4, r4, 0x7573
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8017b6bc:
    lis     r4, 0x51ec
    lis     r3, 0x6666
    subi    r30, r4, 0x7ae1
    addi    r21, r3, 0x6667
    li      r26, 0x1
    li      r23, 0x8
    li      r22, 0x4
branch_0x8017b6d8:
    lwz     r3, 0xbc(r31)
    addis   r4, r26, 0x6d69
    addi    r4, r4, 0x3030
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r0, r22, 0x3d0
    cmpwi   r26, 0x9
    stwx    r3, r31, r0
    beq-    branch_0x8017b8f0
    add     r29, r31, r23
    lhz     r0, 0x18(r29)
    slwi    r28, r26, 24
    addis   r19, r28, 0x3063
    cmplwi  r0, 0x3e7
    mr      r20, r0
    addi    r19, r19, 0x5f31
    ble-    branch_0x8017b728
    li      r20, 0x3e7
branch_0x8017b728:
    lwz     r3, 0xbc(r31)
    mr      r4, r19
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r0, r3
    lwz     r3, 0xbc(r31)
    mr      r18, r0
    lwz     r12, 0x0(r3)
    addi    r4, r19, 0x1
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r0, r3
    lwz     r3, 0xbc(r31)
    mr      r25, r0
    lwz     r12, 0x0(r3)
    addi    r4, r19, 0x2
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    clrlwi  r19, r20, 16
    cmplwi  r19, 0x64
    addi    r24, r3, 0x0
    bge-    branch_0x8017b7f8
    mulhw   r20, r21, r19
    srawi   r0, r20, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    li      r4, 0x0
    slwi    r3, r0, 2
    stb     r4, 0xc(r18)
    addi    r0, r3, 0xc8
    lwzx    r4, r31, r0
    addi    r3, r25, 0x0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r20, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r19
    slwi    r3, r0, 2
    addi    r0, r3, 0xc8
    lwzx    r4, r31, r0
    addi    r3, r24, 0x0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8017b894

branch_0x8017b7f8:
    mulhw   r0, r30, r19
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r19, r0, r3
    li      r0, 0x1
    slwi    r3, r19, 2
    stb     r0, 0xc(r18)
    addi    r0, r3, 0xc8
    lwzx    r4, r31, r0
    addi    r3, r18, 0x0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    mulli   r0, r19, 0x64
    subf    r20, r0, r20
    clrlwi  r19, r20, 16
    mulhw   r20, r21, r19
    srawi   r0, r20, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    slwi    r3, r0, 2
    addi    r0, r3, 0xc8
    lwzx    r4, r31, r0
    addi    r3, r25, 0x0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r20, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r19
    slwi    r3, r0, 2
    addi    r0, r3, 0xc8
    lwzx    r4, r31, r0
    addi    r3, r24, 0x0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8017b894:
    lbz     r0, 0x1a(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8017b8cc
    lwz     r3, 0xbc(r31)
    addis   r4, r28, 0x3063
    addi    r4, r4, 0x5f73
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    addi    r27, r27, 0x1
    b       branch_0x8017b8f0

branch_0x8017b8cc:
    lwz     r3, 0xbc(r31)
    addis   r4, r28, 0x3063
    addi    r4, r4, 0x5f73
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8017b8f0:
    addi    r26, r26, 0x1
    cmpwi   r26, 0xa
    addi    r23, r23, 0x8
    addi    r22, r22, 0x4
    blt+    branch_0x8017b6d8
    lwz     r3, 0xbc(r31)
    lis     r4, 0x6d69
    addi    r4, r4, 0x3030
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x3d0(r31)
    lis     r3, 0x636c
    addi    r4, r3, 0x6963
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x448(r31)
    lis     r3, 0x1
    addi    r4, r3, 0x56
    lwz     r3, -0x6060(r13)
    li      r19, 0x0
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8017b964
    li      r19, 0x1
branch_0x8017b964:
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x58
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8017b980
    addi    r19, r19, 0x1
branch_0x8017b980:
    lwz     r3, 0xbc(r31)
    extsh   r0, r19
    slwi    r0, r0, 2
    lwz     r12, 0x0(r3)
    add     r4, r31, r0
    lwz     r5, 0xc8(r4)
    lis     r4, 0x3073
    lwz     r12, 0x24(r12)
    lwz     r18, 0x20(r5)
    addi    r4, r4, 0x5f31
    mtlr    r12
    blrl
    addi    r4, r18, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, -0x6060(r13)
    add     r27, r27, r19
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    addi    r18, r3, 0x0
    clrlwi  r0, r27, 24
    subf    r5, r0, r18
    clrlwi  r0, r5, 24
    cmplwi  r0, 0x63
    ble-    branch_0x8017b9e8
    li      r5, 0x63
branch_0x8017b9e8:
    lis     r4, 0x6666
    lwz     r3, 0xbc(r31)
    clrlwi  r19, r5, 24
    addi    r0, r4, 0x6667
    lwz     r12, 0x0(r3)
    mulhw   r21, r0, r19
    lwz     r12, 0x24(r12)
    mtlr    r12
    srawi   r0, r21, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r5, 0xc8(r4)
    lis     r20, 0x3173
    addi    r4, r20, 0x5f31
    lwz     r22, 0x20(r5)
    blrl
    addi    r4, r22, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r21, 2
    lwz     r3, 0xbc(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r12, 0x0(r3)
    mulli   r0, r0, 0xa
    lwz     r12, 0x24(r12)
    subf    r0, r0, r19
    mtlr    r12
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r5, 0xc8(r4)
    addi    r4, r20, 0x5f32
    lwz     r19, 0x20(r5)
    blrl
    addi    r4, r19, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    cmpwi   r18, 0x3e7
    ble-    branch_0x8017ba90
    li      r18, 0x3e7
branch_0x8017ba90:
    lwz     r3, 0xbc(r31)
    lis     r21, 0x6c74
    addi    r4, r21, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r0, r3
    lwz     r3, 0xbc(r31)
    mr      r19, r0
    lwz     r12, 0x0(r3)
    addi    r4, r21, 0x5f32
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r0, r3
    lwz     r3, 0xbc(r31)
    mr      r20, r0
    lwz     r12, 0x0(r3)
    addi    r4, r21, 0x5f33
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    cmpwi   r18, 0x64
    addi    r21, r3, 0x0
    bge-    branch_0x8017bb68
    lis     r3, 0x6666
    addi    r0, r3, 0x6667
    mulhw   r22, r0, r18
    srawi   r0, r22, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    li      r3, 0x0
    slwi    r0, r0, 2
    stb     r3, 0xc(r19)
    add     r3, r31, r0
    lwz     r4, 0xc8(r3)
    addi    r3, r20, 0x0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r22, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r18
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r4, 0xc8(r3)
    addi    r3, r21, 0x0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8017bc10

branch_0x8017bb68:
    lis     r3, 0x51ec
    subi    r0, r3, 0x7ae1
    mulhw   r0, r0, r18
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r22, r0, r3
    li      r3, 0x1
    slwi    r0, r22, 2
    stb     r3, 0xc(r19)
    add     r3, r31, r0
    lwz     r4, 0xc8(r3)
    addi    r3, r19, 0x0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    mulli   r0, r22, 0x64
    lis     r3, 0x6666
    subf    r18, r0, r18
    addi    r0, r3, 0x6667
    mulhw   r19, r0, r18
    srawi   r0, r19, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r4, 0xc8(r3)
    addi    r3, r20, 0x0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r19, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r18
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r4, 0xc8(r3)
    addi    r3, r21, 0x0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8017bc10:
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r0, 0x38(r3)
    extsb   r0, r0
    cmpwi   r0, 0x1
    beq-    branch_0x8017bca8
    bge-    branch_0x8017bc38
    cmpwi   r0, 0x0
    bge-    branch_0x8017bc44
    b       branch_0x8017bd6c

branch_0x8017bc38:
    cmpwi   r0, 0x3
    bge-    branch_0x8017bd6c
    b       branch_0x8017bd0c

branch_0x8017bc44:
    lwz     r3, 0xbc(r31)
    lis     r19, 0x6c64
    addi    r4, r19, 0x5f61
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    addi    r4, r19, 0x5f62
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r18, 0x0
    stb     r18, 0xc(r3)
    addi    r4, r19, 0x5f63
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r18, 0xc(r3)
    b       branch_0x8017bd6c

branch_0x8017bca8:
    lwz     r3, 0xbc(r31)
    lis     r19, 0x6c64
    addi    r4, r19, 0x5f61
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r18, 0x0
    stb     r18, 0xc(r3)
    addi    r4, r19, 0x5f62
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    addi    r4, r19, 0x5f63
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r18, 0xc(r3)
    b       branch_0x8017bd6c

branch_0x8017bd0c:
    lwz     r3, 0xbc(r31)
    lis     r19, 0x6c64
    addi    r4, r19, 0x5f61
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r18, 0x0
    stb     r18, 0xc(r3)
    addi    r4, r19, 0x5f62
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r18, 0xc(r3)
    addi    r4, r19, 0x5f63
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8017bd6c:
    lwz     r3, -0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    lis     r4, 0x8889
    lfd     f4, -0x46a8(rtoc)
    subi    r0, r4, 0x7777
    lfs     f2, -0x466c(rtoc)
    mulhw   r0, r0, r3
    lfs     f1, -0x46b4(rtoc)
    lfs     f0, -0x46a0(rtoc)
    add     r0, r0, r3
    srawi   r0, r0, 4
    srwi    r3, r0, 31
    add     r0, r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x9c(sp)
    lis     r0, 0x4330
    stw     r0, 0x98(sp)
    lfd     f3, 0x98(sp)
    fsubs   f3, f3, f4
    fnmsubs  f1, f3, f2, f1
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r0, 0x94(sp)
    stb     r0, 0x47c(r31)
    lwz     r3, 0x478(r31)
    lbz     r0, 0x47c(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r0, 0xdc(sp)
    lmw     r18, 0xa0(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl resetObjects__6TGuideFv
resetObjects__6TGuideFv: # 0x8017bdf8
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r22, 0x38(sp)
    addi    r27, r3, 0x0
    addi    r25, r4, 0x1020
    li      r28, 0x0
    li      r31, 0x0
    li      r29, 0x0
    li      r26, 0x0
branch_0x8017be24:
    cmplwi  r31, 0xa
    bge-    branch_0x8017c07c
    cmplwi  r31, 0x0
    add     r30, r27, r26
    li      r0, 0x0
    stb     r0, 0x14(r30)
    li      r23, 0x0
    beq-    branch_0x8017be9c
    cmplwi  r31, 0x1
    beq-    branch_0x8017be9c
    li      r24, 0x0
branch_0x8017be50:
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    li      r5, 0x0
    bl      SMS_getShineID__FUlUlb_8017cc6c
    extsh   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8017be74
    li      r3, 0x0
    b       branch_0x8017be84

branch_0x8017be74:
    lwz     r0, -0x6060(r13)
    clrlwi  r4, r3, 24
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
branch_0x8017be84:
    clrlwi. r0, r3, 24
    beq-    branch_0x8017be90
    addi    r23, r23, 0x1
branch_0x8017be90:
    addi    r24, r24, 0x1
    cmplwi  r24, 0x8
    blt+    branch_0x8017be50
branch_0x8017be9c:
    cmpwi   r23, 0x64
    bge-    branch_0x8017beac
    mr      r0, r23
    b       branch_0x8017beb0

branch_0x8017beac:
    li      r0, 0x63
branch_0x8017beb0:
    cmplwi  r31, 0x0
    stb     r0, 0x15(r30)
    add     r28, r28, r0
    li      r24, 0x0
    beq-    branch_0x8017bf4c
    cmplwi  r31, 0x1
    beq-    branch_0x8017bf4c
    addi    r3, r31, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      SMS_getShineID__FUlUlb_8017cc6c
    extsh   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8017bef0
    mr      r3, r24
    b       branch_0x8017bf00

branch_0x8017bef0:
    lwz     r0, -0x6060(r13)
    clrlwi  r4, r3, 24
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
branch_0x8017bf00:
    clrlwi. r0, r3, 24
    beq-    branch_0x8017bf0c
    li      r24, 0x1
branch_0x8017bf0c:
    addi    r3, r31, 0x0
    li      r4, 0x2
    li      r5, 0x1
    bl      SMS_getShineID__FUlUlb_8017cc6c
    extsh   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8017bf30
    li      r3, 0x0
    b       branch_0x8017bf40

branch_0x8017bf30:
    lwz     r0, -0x6060(r13)
    clrlwi  r4, r3, 24
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
branch_0x8017bf40:
    clrlwi. r0, r3, 24
    beq-    branch_0x8017bf4c
    addi    r24, r24, 0x1
branch_0x8017bf4c:
    cmpwi   r24, 0xa
    bge-    branch_0x8017bf58
    b       branch_0x8017bf5c

branch_0x8017bf58:
    li      r24, 0x9
branch_0x8017bf5c:
    stb     r24, 0x16(r30)
    addis   r4, r31, 0x2
    add     r28, r28, r24
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x5
    bl      getFlag__12TFlagManagerCFUl
    clrlwi  r0, r3, 16
    cmpwi   r0, 0x3e8
    bge-    branch_0x8017bf84
    b       branch_0x8017bf88

branch_0x8017bf84:
    li      r0, 0x3e7
branch_0x8017bf88:
    sth     r0, 0x18(r30)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      SMS_getShineID__FUlUlb_8017cc6c
    extsh   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8017bfb0
    li      r3, 0x0
    b       branch_0x8017bfc0

branch_0x8017bfb0:
    lwz     r0, -0x6060(r13)
    clrlwi  r4, r3, 24
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
branch_0x8017bfc0:
    stb     r3, 0x1a(r30)
    lbz     r0, 0x1a(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8017bfd4
    addi    r28, r28, 0x1
branch_0x8017bfd4:
    cmplwi  r31, 0x0
    li      r23, 0x0
    beq-    branch_0x8017c01c
    add     r24, r25, r29
    li      r22, 0x0
    b       branch_0x8017c010

branch_0x8017bfec:
    lwz     r0, 0x0(r24)
    mr      r5, r22
    lwz     r3, -0x6060(r13)
    clrlwi  r4, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x8017c00c
    addi    r23, r23, 0x1
branch_0x8017c00c:
    addi    r22, r22, 0x1
branch_0x8017c010:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x32
    blt+    branch_0x8017bfec
branch_0x8017c01c:
    cmpwi   r23, 0x3e8
    bge-    branch_0x8017c028
    b       branch_0x8017c02c

branch_0x8017c028:
    li      r23, 0x3e7
branch_0x8017c02c:
    stb     r23, 0x1b(r30)
    addis   r4, r31, 0x1
    addi    r4, r4, 0x3a5
    lwz     r3, -0x6060(r13)
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8017c064
    add     r4, r27, r29
    lwz     r3, 0x44c(r4)
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x168(r4)
    stb     r0, 0xc(r3)
    b       branch_0x8017c07c

branch_0x8017c064:
    add     r4, r27, r29
    lwz     r3, 0x44c(r4)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0x168(r4)
    stb     r0, 0xc(r3)
branch_0x8017c07c:
    addi    r31, r31, 0x1
    cmplwi  r31, 0xd
    addi    r29, r29, 0x4
    addi    r26, r26, 0x8
    blt+    branch_0x8017be24
    li      r0, 0x1
    lis     r3, 0x803c
    stb     r0, 0x5c(r27)
    addi    r24, r3, 0x1020
    li      r22, 0x0
    li      r23, 0x0
    b       branch_0x8017c0d0

branch_0x8017c0ac:
    lwz     r0, 0x24(r24)
    mr      r5, r23
    lwz     r3, -0x6060(r13)
    clrlwi  r4, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x8017c0cc
    addi    r22, r22, 0x1
branch_0x8017c0cc:
    addi    r23, r23, 0x1
branch_0x8017c0d0:
    clrlwi  r0, r23, 24
    cmplwi  r0, 0x32
    blt+    branch_0x8017c0ac
    stb     r22, 0x63(r27)
    lis     r3, 0x1
    addi    r4, r3, 0x56
    lwz     r3, -0x6060(r13)
    li      r22, 0x0
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8017c100
    li      r22, 0x1
branch_0x8017c100:
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x58
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8017c11c
    addi    r22, r22, 0x1
branch_0x8017c11c:
    stb     r22, 0x15(r27)
    extsh   r0, r22
    add     r28, r28, r0
    lwz     r3, -0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    subf    r0, r28, r3
    stb     r0, 0x1d(r27)
    addi    r3, r27, 0x0
    li      r4, -0x1
    bl      changeBotStatus__6TGuideFi
    mr      r3, r27
    bl      resetScore__6TGuideFv
    lwz     r3, 0x128(r27)
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x12c(r27)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r0, 0x64(sp)
    lmw     r22, 0x38(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl load__6TGuideFR20JSUMemoryInputStream
load__6TGuideFR20JSUMemoryInputStream: # 0x8017c180
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x190(sp)
    stmw    r23, 0x16c(sp)
    addi    r31, r3, 0x0
    subi    r30, r5, 0x7868
    stb     r0, 0xc5(r3)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r3, -0x6048(r13)
    lwz     r24, 0xd8(r3)
    cmplwi  r24, 0x0
    beq-    branch_0x8017c1c8
    addi    r3, r24, 0x0
    subi    r4, r13, 0x6010
    bl      SMSMountAramArchive__FP13JKRMemArchiveR10TARAMBlock
    b       branch_0x8017c1d0

branch_0x8017c1c8:
    li      r0, 0x10
    stb     r0, -0x63a8(r13)
branch_0x8017c1d0:
    li      r0, 0x0
    stb     r0, 0xc4(r31)
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8017c1f8
    addi    r3, r25, 0x0
    addi    r5, r24, 0x0
    addi    r4, r30, 0x20
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x8017c1f8:
    stw     r25, 0xbc(r31)
    lis     r24, 0x615f
    addi    r4, r24, 0x6963
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0xbc(r31)
    addi    r4, r24, 0x7478
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0xbc(r31)
    lis     r24, 0x625f
    addi    r4, r24, 0x6963
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0xbc(r31)
    addi    r4, r24, 0x7478
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r25, 0x0
    stw     r25, 0x124(r31)
    lis     r3, 0x735f
    addi    r4, r3, 0x6d6e
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x124(r31)
    li      r4, 0x1a
    lwz     r3, 0x124(r31)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r3, 0x124(r31)
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r27, 0x0
branch_0x8017c2c8:
    addi    r6, r27, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x68
    addi    r5, r30, 0x2c
    li      r4, 0xff
    bl      snprintf
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8017c310
    addi    r3, sp, 0x68
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r24, 0x0
    stw     r24, 0x28(r26)
    addi    r4, r3, 0x0
    mr      r3, r26
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r26)
branch_0x8017c310:
    addi    r27, r27, 0x1
    addi    r0, r25, 0xc8
    cmpwi   r27, 0xa
    stwx    r26, r31, r0
    addi    r25, r25, 0x4
    blt+    branch_0x8017c2c8
    lwz     r3, 0xbc(r31)
    lis     r4, 0x7373
    addi    r4, r4, 0x5f69
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xf4(r31)
    li      r25, 0x0
    li      r24, 0x0
branch_0x8017c350:
    lwz     r3, 0xbc(r31)
    addis   r4, r25, 0x7373
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    addi    r0, r24, 0xf8
    cmpwi   r25, 0x2
    stwx    r3, r31, r0
    addi    r24, r24, 0x4
    blt+    branch_0x8017c350
    lwz     r3, 0xbc(r31)
    lis     r4, 0x7371
    addi    r4, r4, 0x5f69
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x100(r31)
    li      r25, 0x0
    li      r24, 0x0
branch_0x8017c3ac:
    lwz     r3, 0xbc(r31)
    addis   r4, r25, 0x7371
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    addi    r0, r24, 0x104
    cmpwi   r25, 0x2
    stwx    r3, r31, r0
    addi    r24, r24, 0x4
    blt+    branch_0x8017c3ac
    li      r25, 0x0
    li      r24, 0x0
branch_0x8017c3e8:
    lwz     r3, 0xbc(r31)
    addis   r4, r25, 0x7363
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    addi    r0, r24, 0x10c
    cmpwi   r25, 0x3
    stwx    r3, r31, r0
    addi    r24, r24, 0x4
    blt+    branch_0x8017c3e8
    lwz     r3, 0xbc(r31)
    lis     r4, 0x7363
    addi    r4, r4, 0x5f73
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x118(r31)
    li      r25, 0x0
    li      r24, 0x0
branch_0x8017c444:
    lwz     r3, 0xbc(r31)
    addis   r4, r25, 0x7362
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    addi    r0, r24, 0x11c
    cmpwi   r25, 0x2
    stwx    r3, r31, r0
    addi    r24, r24, 0x4
    blt+    branch_0x8017c444
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8017c4a8
    addi    r3, r30, 0x4c
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r24, 0x0
    stw     r24, 0x28(r25)
    addi    r4, r3, 0x0
    mr      r3, r25
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r25)
branch_0x8017c4a8:
    li      r26, 0x0
    li      r24, 0x0
branch_0x8017c4b0:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8017c4d4
    addis   r5, r26, 0x6375
    lwz     r4, 0xbc(r31)
    addi    r3, r27, 0x0
    addi    r5, r5, 0x5f61
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8017c4d4:
    addi    r3, r24, 0x128
    add     r3, r31, r3
    stw     r27, 0x0(r3)
    mr      r4, r25
    lwz     r3, 0x0(r3)
    lfs     f1, -0x46b0(rtoc)
    lwz     r3, 0x0(r3)
    lbz     r5, 0xfc(r3)
    bl      insert__10J2DPictureFP10JUTTextureUcf
    addi    r26, r26, 0x1
    cmpwi   r26, 0x2
    addi    r24, r24, 0x4
    blt+    branch_0x8017c4b0
    lis     r3, 0x6666
    addi    r29, r3, 0x6667
    li      r27, 0x0
    li      r25, 0x0
    li      r24, 0x0
branch_0x8017c51c:
    mulhw   r0, r29, r27
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    srawi   r5, r0, 2
    srawi   r0, r0, 2
    mtlr    r12
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    srwi    r4, r5, 31
    add     r5, r5, r4
    subf    r4, r0, r27
    slwi    r0, r5, 8
    addi    r26, r4, 0x3030
    add     r26, r0, r26
    addi    r4, r26, 0x0
    blrl
    add     r28, r31, r24
    stw     r3, 0x168(r28)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017c590
    slwi    r5, r26, 16
    lwz     r4, 0xbc(r31)
    addi    r3, r23, 0x0
    addi    r5, r5, 0x5f30
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8017c590:
    stw     r23, 0x1c0(r28)
    addi    r0, r25, 0x218
    add     r5, r31, r0
    lwz     r4, 0x1c0(r28)
    li      r3, 0x54
    lwz     r6, 0x0(r4)
    lwz     r4, 0x14(r6)
    lwz     r0, 0x18(r6)
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x1c(r6)
    lwz     r0, 0x20(r6)
    stw     r4, 0x8(r5)
    stw     r0, 0xc(r5)
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017c5e8
    slwi    r5, r26, 16
    lwz     r4, 0xbc(r31)
    addi    r3, r23, 0x0
    addi    r5, r5, 0x5f31
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8017c5e8:
    stw     r23, 0x378(r28)
    slwi    r26, r26, 16
    addi    r4, r26, 0x5f33
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0xbc(r31)
    addi    r4, r26, 0x5f35
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r27, r27, 0x1
    cmpwi   r27, 0xd
    addi    r25, r25, 0x10
    addi    r24, r24, 0x4
    blt+    branch_0x8017c51c
    lwz     r3, 0xbc(r31)
    li      r4, 0x3230
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x19c(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017c684
    lis     r5, 0x6c77
    lwz     r4, 0xbc(r31)
    addi    r3, r23, 0x0
    addi    r5, r5, 0x696e
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8017c684:
    stw     r23, 0x1f4(r31)
    li      r3, 0x54
    lwz     r4, 0x1f4(r31)
    lwz     r5, 0x0(r4)
    lwz     r4, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r4, 0x2e8(r31)
    stw     r0, 0x2ec(r31)
    lwz     r4, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r4, 0x2f0(r31)
    stw     r0, 0x2f4(r31)
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017c6d4
    lis     r5, 0x6c6c
    lwz     r4, 0xbc(r31)
    addi    r3, r23, 0x0
    addi    r5, r5, 0x696e
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8017c6d4:
    stw     r23, 0x3ac(r31)
    li      r24, 0x0
    li      r26, 0x0
branch_0x8017c6e0:
    lwz     r3, 0xbc(r31)
    addis   r4, r24, 0x706e
    addi    r4, r4, 0x3030
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
    addi    r0, r26, 0x44c
    cmpwi   r24, 0xa
    stwx    r3, r31, r0
    addi    r26, r26, 0x4
    blt+    branch_0x8017c6e0
    lwz     r3, 0xbc(r31)
    lis     r24, 0x3031
    addi    r4, r24, 0x6d69
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x430(r31)
    addi    r4, r24, 0x5f39
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x14(r3)
    lwz     r0, 0x18(r3)
    stw     r4, 0x434(r31)
    stw     r0, 0x438(r31)
    lwz     r4, 0x1c(r3)
    lwz     r0, 0x20(r3)
    addi    r3, r30, 0x6c
    stw     r4, 0x43c(r31)
    stw     r0, 0x440(r31)
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x474(r31)
    li      r4, 0x3130
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x134(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017c7c8
    addi    r25, r23, 0x0
    addi    r3, r30, 0x88
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r24, 0x0
    stw     r24, 0x28(r23)
    addi    r4, r3, 0x0
    mr      r3, r25
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r23)
branch_0x8017c7c8:
    lwz     r3, 0x134(r31)
    mr      r4, r23
    lfs     f1, -0x46b0(rtoc)
    lbz     r5, 0xfc(r3)
    bl      insert__10J2DPictureFP10JUTTextureUcf
    lwz     r3, 0xbc(r31)
    li      r4, 0x3133
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x138(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017c82c
    addi    r25, r23, 0x0
    addi    r3, r30, 0xac
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r24, 0x0
    stw     r24, 0x28(r23)
    addi    r4, r3, 0x0
    mr      r3, r25
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r23)
branch_0x8017c82c:
    lwz     r3, 0x138(r31)
    mr      r4, r23
    lfs     f1, -0x46b0(rtoc)
    lbz     r5, 0xfc(r3)
    bl      insert__10J2DPictureFP10JUTTextureUcf
    lwz     r3, 0xbc(r31)
    li      r4, 0x3136
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x13c(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017c890
    addi    r25, r23, 0x0
    addi    r3, r30, 0xd0
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r24, 0x0
    stw     r24, 0x28(r23)
    addi    r4, r3, 0x0
    mr      r3, r25
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r23)
branch_0x8017c890:
    lwz     r3, 0x13c(r31)
    mr      r4, r23
    lfs     f1, -0x46b0(rtoc)
    lbz     r5, 0xfc(r3)
    bl      insert__10J2DPictureFP10JUTTextureUcf
    lwz     r3, 0xbc(r31)
    li      r4, 0x3137
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x140(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017c8f4
    addi    r25, r23, 0x0
    addi    r3, r30, 0xf8
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r24, 0x0
    stw     r24, 0x28(r23)
    addi    r4, r3, 0x0
    mr      r3, r25
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r23)
branch_0x8017c8f4:
    lwz     r3, 0x140(r31)
    mr      r4, r23
    lfs     f1, -0x46b0(rtoc)
    lbz     r5, 0xfc(r3)
    bl      insert__10J2DPictureFP10JUTTextureUcf
    lwz     r3, 0xbc(r31)
    li      r4, 0x3138
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x144(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017c958
    addi    r25, r23, 0x0
    addi    r3, r30, 0x120
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r24, 0x0
    stw     r24, 0x28(r23)
    addi    r4, r3, 0x0
    mr      r3, r25
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r23)
branch_0x8017c958:
    lwz     r3, 0x144(r31)
    mr      r4, r23
    lfs     f1, -0x46b0(rtoc)
    lbz     r5, 0xfc(r3)
    bl      insert__10J2DPictureFP10JUTTextureUcf
    lwz     r3, 0xbc(r31)
    li      r4, 0x3131
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x148(r31)
    li      r4, 0x3134
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x14c(r31)
    li      r4, 0x3135
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x150(r31)
    li      r4, 0x3132
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x154(r31)
    li      r4, 0x4
    lwz     r3, 0x154(r31)
    bl      setBasePosition__7J2DPaneF15J2DBasePosition
    lwz     r3, 0xbc(r31)
    li      r4, 0x3139
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x158(r31)
    li      r4, 0x4
    lwz     r3, 0x158(r31)
    bl      setBasePosition__7J2DPaneF15J2DBasePosition
    addi    r3, r30, 0x144
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x6666
    addi    r26, r3, 0x0
    addi    r30, r4, 0x6667
    li      r27, 0x0
branch_0x8017ca28:
    mulhw   r0, r30, r27
    lwz     r3, 0xbc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    srawi   r5, r0, 2
    srawi   r0, r0, 2
    mtlr    r12
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    srwi    r4, r5, 31
    add     r4, r5, r4
    slwi    r4, r4, 24
    subf    r0, r0, r27
    addis   r4, r4, 0x3030
    slwi    r0, r0, 16
    add     r25, r4, r0
    addi    r4, r25, 0x5f33
    addi    r25, r25, 0x5f30
    blrl
    addi    r28, r3, 0x0
    li      r4, 0x1e
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r28
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r3, r26, 0x0
    addi    r4, r27, 0xd
    bl      SMSGetMessageData__FPvUl
    addi    r24, r3, 0x0
    addi    r3, r28, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r24, 0x0
    li      r5, 0x1e
    bl      strncpy
    lwz     r3, 0xbc(r31)
    addi    r4, r25, 0x5
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r3, 0x0
    li      r4, 0x200
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r25
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    bl      SMSGetMessageData__FPvUl
    addi    r24, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r24, 0x0
    li      r5, 0x200
    bl      strncpy
    addi    r27, r27, 0x1
    cmpwi   r27, 0xd
    blt+    branch_0x8017ca28
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017cb38
    lis     r5, 0x6d61
    lwz     r4, 0xbc(r31)
    addi    r3, r23, 0x0
    addi    r5, r5, 0x726b
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8017cb38:
    stw     r23, 0x478(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8017cb5c
    lwz     r4, 0xbc(r31)
    addi    r3, r23, 0x0
    li      r5, 0x3230
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8017cb5c:
    stw     r23, 0x444(r31)
    mr      r3, r31
    bl      resetObjects__6TGuideFv
    li      r0, 0x1
    stb     r0, 0xc5(r31)
    lmw     r23, 0x16c(sp)
    lwz     r0, 0x194(sp)
    addi    sp, sp, 0x190
    mtlr    r0
    blr


.globl __ct__6TGuideFPCc
__ct__6TGuideFPCc: # 0x8017cb84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r31, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r9, 0x0
    lis     r3, 0x803c
    sth     r9, 0xc(r31)
    addi    r0, r3, 0x1048
    lis     r3, 0x8015
    stw     r0, 0x0(r31)
    li      r0, 0x8
    addi    r4, r3, 0xe0
    stw     r0, 0x10(r31)
    li      r8, 0xff
    li      r0, 0x1
    stw     r9, 0xbc(r31)
    addi    r3, r31, 0x218
    li      r5, 0x0
    stw     r9, 0xc0(r31)
    li      r6, 0x10
    li      r7, 0x16
    stb     r9, 0xc4(r31)
    stb     r9, 0xc5(r31)
    stw     r8, 0x160(r31)
    stb     r0, 0x164(r31)
    bl      __construct_array
    addi    r3, r31, 0x434
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    li      r0, -0x1
    stw     r0, 0x480(r31)
    addi    r3, r31, 0x48c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SMS_getShineID__FUlUlb_8017cc6c
SMS_getShineID__FUlUlb_8017cc6c: # 0x8017cc6c
    cmplwi  r3, 0x9
    ble-    branch_0x8017cc7c
    li      r3, -0x1
    blr

branch_0x8017cc7c:
    clrlwi. r0, r5, 24
    beq-    branch_0x8017cc9c
    lis     r5, 0x803c
    slwi    r3, r3, 2
    addi    r0, r5, 0xff8
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
    b       branch_0x8017ccb0

branch_0x8017cc9c:
    lis     r5, 0x803c
    slwi    r3, r3, 2
    addi    r0, r5, 0xfd0
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
branch_0x8017ccb0:
    cmplwi  r3, 0x0
    bne-    branch_0x8017ccc0
    li      r3, -0x1
    blr

branch_0x8017ccc0:
    lbzx    r3, r3, r4
    blr


.globl __sinit_Guide_cpp
__sinit_Guide_cpp: # 0x8017ccc8
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x4308
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cd10
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8017cd10:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cd40
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8017cd40:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cd70
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8017cd70:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cda0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8017cda0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cdd0
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8017cdd0:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8017ce00
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8017ce00:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8017ce30
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8017ce30:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8017ce60
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8017ce60:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8017ce90
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8017ce90:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cec0
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8017cec0:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cef0
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8017cef0:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cf20
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8017cf20:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cf50
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8017cf50:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cf80
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8017cf80:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8017cfb0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8017cfb0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

