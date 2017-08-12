
.globl __dt__11TPauseMenu2Fv
__dt__11TPauseMenu2Fv: # 0x80155204
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8015525c
    lis     r3, __vvt__11TPauseMenu2@h
    addi    r0, r3, __vvt__11TPauseMenu2@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8015524c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8015524c:
    extsh.  r0, r31
    ble-    branch_0x8015525c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8015525c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl drawAppearPane__11TPauseMenu2FP10J2DPicturefR7JUTRectf
drawAppearPane__11TPauseMenu2FP10J2DPicturefR7JUTRectf: # 0x80155278
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    fmr     f31, f2
    stfd    f30, 0x98(sp)
    fmr     f30, f1
    stw     r31, 0x94(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x90(sp)
    addi    r30, r4, 0x0
    lfs     f0, -0x4af4(r2)
    fcmpo   cr0, f30, f0
    bge-    branch_0x801552c8
    lbz     r0, 0xc(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80155480
    li      r0, 0x0
    stb     r0, 0xc(r30)
    b       branch_0x80155480

branch_0x801552c8:
    lfs     f0, -0x4af0(r2)
    fcmpo   cr0, f30, f0
    cror    2, 1, 2
    beq-    branch_0x80155480
    lbz     r0, 0xc(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x801552f4
    li      r0, 0x1
    stb     r0, 0xc(r30)
    li      r0, 0x0
    stb     r0, 0xcc(r30)
branch_0x801552f4:
    lfs     f0, -0x4aec(r2)
    fcmpu   cr0, f0, f30
    bne-    branch_0x801553b0
    addi    r4, r30, 0x24
    addi    r3, sp, 0x5c
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r5, 0x5c(sp)
    lis     r8, 0x4330
    lwz     r0, 0x64(sp)
    addi    r4, sp, 0x50
    lwz     r7, 0x60(sp)
    subf    r3, r5, r0
    lwz     r0, 0x68(sp)
    xoris   r6, r3, 0x8000
    lfd     f4, -0x4ac8(r2)
    xoris   r5, r5, 0x8000
    stw     r6, 0x8c(sp)
    subf    r0, r7, r0
    lfs     f5, -0x4ae8(r2)
    stw     r5, 0x84(sp)
    xoris   r6, r0, 0x8000
    xoris   r0, r7, 0x8000
    lfs     f0, -0x4af4(r2)
    stw     r6, 0x7c(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    li      r5, 0x1f9
    stw     r8, 0x88(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r8, 0x80(sp)
    lfd     f2, 0x88(sp)
    lfd     f1, 0x80(sp)
    stw     r0, 0x74(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r8, 0x78(sp)
    fmadds  f3, f5, f2, f1
    stw     r8, 0x70(sp)
    lfd     f2, 0x78(sp)
    lfd     f1, 0x70(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x50(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x54(sp)
    stfs    f0, 0x58(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x801553b0:
    lfs     f1, -0x4ae4(r2)
    addi    r3, sp, 0x38
    lfs     f0, -0x4ad4(r2)
    fmuls   f5, f1, f30
    lfs     f3, -0x4aec(r2)
    lfs     f2, -0x4adc(r2)
    fsubs   f0, f0, f30
    lfs     f1, -0x4ad8(r2)
    fmuls   f3, f3, f5
    lfs     f4, -0x4ae0(r2)
    fsubs   f2, f2, f5
    fmuls   f0, f1, f0
    stfs    f31, 0xc0(r30)
    fmuls   f1, f3, f2
    lwz     r4, 0x8(r31)
    fctiwz  f0, f0
    lwz     r0, 0x0(r31)
    fmuls   f1, f4, f1
    stfd    f0, 0x78(sp)
    lwz     r7, 0xc(r31)
    fctiwz  f0, f1
    lwz     r8, 0x7c(sp)
    lwz     r5, 0x4(r31)
    subf    r6, r8, r4
    stfd    f0, 0x70(sp)
    add     r4, r0, r8
    lwz     r0, 0x74(sp)
    subf    r7, r0, r7
    subf    r0, r0, r5
    subf    r7, r8, r7
    add     r5, r8, r0
    bl      set__7JUTRectFiiii
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0x14(r30)
    stw     r0, 0x18(r30)
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x1c(r30)
    stw     r0, 0x20(r30)
    lfs     f0, -0x4ad0(r2)
    fmuls   f0, f0, f30
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stfd    f0, 0x80(sp)
    clrlwi  r0, r0, 16
    cmplwi  r0, 0xff
    lwz     r0, 0x84(sp)
    ble-    branch_0x8015547c
    li      r0, 0xff
branch_0x8015547c:
    stb     r0, 0xcc(r30)
branch_0x80155480:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    addi    sp, sp, 0xa8
    blr


.globl setDrawEnd__11TPauseMenu2Fv
setDrawEnd__11TPauseMenu2Fv: # 0x801554a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, R13Off_m0x60f0(r13)
    bl      finishPause__9RumbleMgrFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    bl      pauseOff__6MSoundFUc
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      pauseOut__11TGCConsole2Fv
    lfs     f0, -0x4af4(r2)
    li      r0, 0x4
    stfs    f0, 0xec(r31)
    stw     r0, 0x10(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setDrawStart__11TPauseMenu2Fv
setDrawStart__11TPauseMenu2Fv: # 0x801554f8
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    li      r9, 0x1
    li      r4, 0x4
    stwu    sp, -0xb8(sp)
    li      r6, -0x1
    stb     r7, 0x108(r3)
    stb     r7, 0x109(r3)
    stb     r7, 0xe0(r3)
    lfs     f0, -0x4af4(r2)
    stfs    f0, 0xec(r3)
    stw     r7, 0x10(r3)
    stfs    f0, 0xe8(r3)
    lwz     r0, 0xe4(r3)
    stw     r0, 0x58(sp)
    lwz     r5, 0x98(r3)
    lwz     r0, 0x58(sp)
    stw     r0, 0x13c(r5)
    lwz     r5, 0x98(r3)
    stb     r7, 0xc(r5)
    b       branch_0x80155578

branch_0x80155550:
    addi    r8, r4, 0x98
    stw     r6, 0x50(sp)
    add     r8, r3, r8
    lwz     r5, 0x0(r8)
    addi    r9, r9, 0x1
    lwz     r0, 0x50(sp)
    addi    r4, r4, 0x4
    stw     r0, 0x13c(r5)
    lwz     r5, 0x0(r8)
    stb     r7, 0xc(r5)
branch_0x80155578:
    lwz     r0, 0x104(r3)
    cmpw    r9, r0
    blt+    branch_0x80155550
    lfs     f2, -0x4ac0(r2)
    lis     r6, 0x4330
    lfs     f0, 0x84(r3)
    li      r0, 0xff
    lfd     f1, -0x4ab8(r2)
    fadds   f0, f2, f0
    lwz     r4, 0x20(r3)
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r5, 0xb4(sp)
    clrlwi  r5, r5, 16
    stw     r5, 0xac(sp)
    stw     r6, 0xa8(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc0(r4)
    lfs     f0, 0x88(r3)
    lwz     r4, 0x24(r3)
    fadds   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r5, 0xa4(sp)
    clrlwi  r5, r5, 16
    stw     r5, 0x9c(sp)
    stw     r6, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc0(r4)
    lfs     f0, 0x8c(r3)
    lwz     r4, 0x28(r3)
    fadds   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r5, 0x94(sp)
    clrlwi  r5, r5, 16
    stw     r5, 0x8c(sp)
    stw     r6, 0x88(sp)
    lfd     f0, 0x88(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc0(r4)
    lfs     f0, 0x90(r3)
    lwz     r4, 0x2c(r3)
    fadds   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r5, 0x84(sp)
    clrlwi  r5, r5, 16
    stw     r5, 0x7c(sp)
    stw     r6, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc0(r4)
    lfs     f0, 0x94(r3)
    lwz     r4, 0x30(r3)
    fadds   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r5, 0x74(sp)
    clrlwi  r5, r5, 16
    stw     r5, 0x6c(sp)
    stw     r6, 0x68(sp)
    lfd     f0, 0x68(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc0(r4)
    lwz     r4, 0x1c(r3)
    stb     r0, 0xcc(r4)
    lfs     f0, -0x4af4(r2)
    lwz     r3, 0x1c(r3)
    stfs    f0, 0xc0(r3)
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      pauseIn__11TGCConsole2Fv
    lwz     r3, R13Off_m0x60f0(r13)
    bl      startPause__9RumbleMgrFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x1
    bl      pauseOn__6MSoundFb
    lwz     r0, 0xbc(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl getNextState__11TPauseMenu2Fv
getNextState__11TPauseMenu2Fv: # 0x801556c8
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x109(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80155758
    lbz     r0, 0xe0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80155720
    bge-    branch_0x80155700
    cmpwi   r0, 0x0
    bge-    branch_0x8015570c
    b       branch_0x80155750

branch_0x80155700:
    cmpwi   r0, 0x3
    bge-    branch_0x80155750
    b       branch_0x8015573c

branch_0x8015570c:
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x5
    bne-    branch_0x80155774
    li      r4, 0x0
    b       branch_0x80155774

branch_0x80155720:
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x5
    bne-    branch_0x80155774
    lwz     r3, 0x118(r3)
    bl      getNextState__9TCardSaveFv
    mr      r4, r3
    b       branch_0x80155774

branch_0x8015573c:
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x5
    bne-    branch_0x80155774
    li      r4, 0x5
    b       branch_0x80155774

branch_0x80155750:
    li      r4, 0x0
    b       branch_0x80155774

branch_0x80155758:
    lbz     r0, 0x108(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80155774
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x5
    bne-    branch_0x80155774
    li      r4, 0x0
branch_0x80155774:
    lwz     r0, 0xc(sp)
    mr      r3, r4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__11TPauseMenu2FUlPQ26JDrama9TGraphics
perform__11TPauseMenu2FUlPQ26JDrama9TGraphics: # 0x80155788
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x5f8(sp)
    stfd    f31, 0x5f0(sp)
    stw     r31, 0x5ec(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x5e8(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x5e4(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x5e0(sp)
    lwz     r6, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r6)
    cmplwi  r0, 0x5
    bne-    branch_0x801560a4
    lwz     r3, 0x10(r31)
    cmpwi   r3, 0x3
    bne-    branch_0x801558fc
    clrlwi. r0, r29, 31
    beq-    branch_0x80155818
    lwz     r3, 0x118(r31)
    lbz     r0, 0x2df(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801557f8
    li      r0, 0x0
    stb     r0, 0x109(r31)
    li      r0, 0x1
    stw     r0, 0x10(r31)
branch_0x801557f8:
    lwz     r3, 0x1c(r31)
    addi    r4, r3, 0xcc
    lbz     r3, 0xcc(r3)
    addi    r3, r3, -0x10
    extsh.  r0, r3
    bge-    branch_0x80155814
    li      r3, 0x0
branch_0x80155814:
    stb     r3, 0x0(r4)
branch_0x80155818:
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x801560a4
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8015583c
    blt-    branch_0x801560a4
    cmpwi   r0, 0x5
    bge-    branch_0x801560a4
    b       branch_0x8015589c

branch_0x8015583c:
    addi    r4, r30, 0x54
    addi    r3, sp, 0x3b8
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x3b8
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x14(r31)
    addi    r6, sp, 0x3b8
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lwz     r4, 0x68(r30)
    lwz     r5, 0x70(r30)
    lwz     r3, 0x64(r30)
    lwz     r0, 0x6c(r30)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    lis     r3, __vvt__14J2DGrafContext@h
    stw     r0, 0x3b8(sp)
    addi    r0, r3, __vvt__14J2DGrafContext@l
    stw     r0, 0x3b8(sp)
    b       branch_0x801560a4

branch_0x8015589c:
    addi    r4, r30, 0x54
    addi    r3, sp, 0x4ac
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x4ac
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x14(r31)
    addi    r6, sp, 0x4ac
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lwz     r4, 0x68(r30)
    lwz     r5, 0x70(r30)
    lwz     r3, 0x64(r30)
    lwz     r0, 0x6c(r30)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    lis     r3, __vvt__14J2DGrafContext@h
    stw     r0, 0x4ac(sp)
    addi    r0, r3, __vvt__14J2DGrafContext@l
    stw     r0, 0x4ac(sp)
    b       branch_0x801560a4

branch_0x801558fc:
    clrlwi. r0, r29, 31
    beq-    branch_0x80155fc4
    cmpwi   r3, 0x1
    beq-    branch_0x80155934
    bge-    branch_0x8015591c
    cmpwi   r3, 0x0
    bge-    branch_0x80155928
    b       branch_0x80155fc4

branch_0x8015591c:
    cmpwi   r3, 0x4
    beq-    branch_0x80155fbc
    b       branch_0x80155fc4

branch_0x80155928:
    mr      r3, r31
    bl      appearWindow__11TPauseMenu2Fv
    b       branch_0x80155fc4

branch_0x80155934:
    lwz     r3, 0x10c(r31)
    lbz     r28, 0xe0(r31)
    lwz     r3, 0xd4(r3)
    andi.   r0, r3, 0x21
    beq-    branch_0x80155a6c
    cmpwi   r28, 0x2
    beq-    branch_0x801559ac
    bge-    branch_0x80155964
    cmpwi   r28, 0x0
    beq-    branch_0x80155970
    bge-    branch_0x80155a24
    b       branch_0x80155ca8

branch_0x80155964:
    cmpwi   r28, 0x4
    bge-    branch_0x80155ca8
    b       branch_0x801559e8

branch_0x80155970:
    li      r0, 0x1
    stb     r0, 0x109(r31)
    lwz     r3, R13Off_m0x60f0(r13)
    bl      finishPause__9RumbleMgrFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    bl      pauseOff__6MSoundFUc
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      pauseOut__11TGCConsole2Fv
    lfs     f0, -0x4af4(r2)
    li      r0, 0x4
    stfs    f0, 0xec(r31)
    stw     r0, 0x10(r31)
    b       branch_0x80155ca8

branch_0x801559ac:
    li      r0, 0x1
    stb     r0, 0x109(r31)
    lwz     r3, R13Off_m0x60f0(r13)
    bl      finishPause__9RumbleMgrFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    bl      pauseOff__6MSoundFUc
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      pauseOut__11TGCConsole2Fv
    lfs     f0, -0x4af4(r2)
    li      r0, 0x4
    stfs    f0, 0xec(r31)
    stw     r0, 0x10(r31)
    b       branch_0x80155ca8

branch_0x801559e8:
    li      r0, 0x1
    stb     r0, 0x109(r31)
    lwz     r3, R13Off_m0x60f0(r13)
    bl      finishPause__9RumbleMgrFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    bl      pauseOff__6MSoundFUc
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      pauseOut__11TGCConsole2Fv
    lfs     f0, -0x4af4(r2)
    li      r0, 0x4
    stfs    f0, 0xec(r31)
    stw     r0, 0x10(r31)
    b       branch_0x80155ca8

branch_0x80155a24:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4802
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80155a4c
    li      r3, 0x4802
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80155a4c:
    li      r0, 0x1
    stb     r0, 0x109(r31)
    li      r4, 0x0
    lwz     r3, 0x118(r31)
    bl      init__9TCardSaveFi
    li      r0, 0x3
    stw     r0, 0x10(r31)
    b       branch_0x80155ca8

branch_0x80155a6c:
    rlwinm. r0, r3, 0, 25, 25
    beq-    branch_0x80155ab8
    li      r0, 0x1
    stb     r0, 0x108(r31)
    lfs     f0, -0x4af4(r2)
    stfs    f0, 0xec(r31)
    lwz     r3, R13Off_m0x60f0(r13)
    bl      finishPause__9RumbleMgrFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    bl      pauseOff__6MSoundFUc
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      pauseOut__11TGCConsole2Fv
    lfs     f0, -0x4af4(r2)
    li      r0, 0x4
    stfs    f0, 0xec(r31)
    stw     r0, 0x10(r31)
    b       branch_0x80155ca8

branch_0x80155ab8:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x80155bb4
    lwz     r3, 0x104(r31)
    cmpwi   r3, 0x2
    ble-    branch_0x80155aec
    addi    r0, r3, -0x1
    cmpw    r28, r0
    bge-    branch_0x80155ae0
    addi    r0, r28, 0x1
    b       branch_0x80155ae4

branch_0x80155ae0:
    li      r0, 0x0
branch_0x80155ae4:
    stb     r0, 0xe0(r31)
    b       branch_0x80155af4

branch_0x80155aec:
    addi    r0, r3, -0x1
    stb     r0, 0xe0(r31)
branch_0x80155af4:
    lbz     r0, 0xe0(r31)
    cmpw    r0, r28
    beq-    branch_0x80155ca8
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x480f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80155b28
    li      r3, 0x480f
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80155b28:
    lwz     r3, 0xe4(r31)
    slwi    r0, r28, 2
    add     r7, r31, r0
    stw     r3, 0x37c(sp)
    slwi    r3, r28, 4
    addi    r0, r3, 0xa4
    lbz     r4, 0xe0(r31)
    li      r3, -0x1
    lwz     r5, 0x37c(sp)
    slwi    r4, r4, 2
    add     r4, r31, r4
    lwz     r6, 0x98(r4)
    add     r4, r31, r0
    stw     r5, 0x13c(r6)
    stw     r3, 0x384(sp)
    lwz     r3, 0x98(r7)
    lwz     r0, 0x384(sp)
    stw     r0, 0x13c(r3)
    lwz     r5, 0x98(r7)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x1c(r5)
    stw     r0, 0x20(r5)
    lfs     f0, -0x4af4(r2)
    stfs    f0, 0xe8(r31)
    lwz     r4, 0x110(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x80155ca8
    lwz     r3, R13Off_m0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
    b       branch_0x80155ca8

branch_0x80155bb4:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80155ca8
    lwz     r3, 0x104(r31)
    cmpwi   r3, 0x2
    ble-    branch_0x80155be4
    cmplwi  r28, 0x0
    bne-    branch_0x80155bd8
    addi    r0, r3, -0x1
    b       branch_0x80155bdc

branch_0x80155bd8:
    addi    r0, r28, -0x1
branch_0x80155bdc:
    stb     r0, 0xe0(r31)
    b       branch_0x80155bec

branch_0x80155be4:
    li      r0, 0x0
    stb     r0, 0xe0(r31)
branch_0x80155bec:
    lbz     r0, 0xe0(r31)
    cmpw    r0, r28
    beq-    branch_0x80155ca8
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x480f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80155c20
    li      r3, 0x480f
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80155c20:
    lwz     r3, 0xe4(r31)
    slwi    r0, r28, 2
    add     r7, r31, r0
    stw     r3, 0x38c(sp)
    slwi    r3, r28, 4
    addi    r0, r3, 0xa4
    lbz     r4, 0xe0(r31)
    li      r3, -0x1
    lwz     r5, 0x38c(sp)
    slwi    r4, r4, 2
    add     r4, r31, r4
    lwz     r6, 0x98(r4)
    add     r4, r31, r0
    stw     r5, 0x13c(r6)
    stw     r3, 0x394(sp)
    lwz     r3, 0x98(r7)
    lwz     r0, 0x394(sp)
    stw     r0, 0x13c(r3)
    lwz     r5, 0x98(r7)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x1c(r5)
    stw     r0, 0x20(r5)
    lfs     f0, -0x4af4(r2)
    stfs    f0, 0xe8(r31)
    lwz     r4, 0x110(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x80155ca8
    lwz     r3, R13Off_m0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
branch_0x80155ca8:
    lbz     r0, 0xe0(r31)
    addi    r3, sp, 0x340
    slwi    r4, r0, 4
    addi    r4, r4, 0xa4
    add     r4, r31, r4
    bl      copy__7JUTRectFRC7JUTRect
    lha     r0, 0x100(r31)
    lis     r28, 0x4330
    lfd     f2, -0x4ac8(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, 0xe8(r31)
    stw     r0, 0x5dc(sp)
    stw     r28, 0x5d8(sp)
    lfd     f0, 0x5d8(sp)
    fsubs   f0, f0, f2
    fcmpu   cr0, f1, f0
    bne-    branch_0x80155e24
    lbz     r4, 0xe0(r31)
    addi    r3, sp, 0x350
    lhz     r0, 0x102(r31)
    slwi    r4, r4, 2
    lfd     f1, -0x4ab8(r2)
    add     r4, r31, r4
    stw     r0, 0x5d4(sp)
    lwz     r6, 0x98(r4)
    stw     r28, 0x5d0(sp)
    lwz     r5, 0x14(r6)
    addi    r4, r6, 0x24
    lwz     r0, 0x1c(r6)
    lfd     f0, 0x5d0(sp)
    subf    r0, r5, r0
    xoris   r0, r0, 0x8000
    fsubs   f0, f0, f1
    stw     r0, 0x5dc(sp)
    stw     r28, 0x5d8(sp)
    lfd     f1, 0x5d8(sp)
    fsubs   f1, f1, f2
    fdivs   f31, f1, f0
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x350(sp)
    addi    r4, sp, 0x360
    lwz     r0, 0x358(sp)
    li      r5, 0x1fa
    lwz     r8, 0x354(sp)
    subf    r3, r6, r0
    lwz     r0, 0x35c(sp)
    xoris   r7, r3, 0x8000
    lfd     f4, -0x4ac8(r2)
    xoris   r6, r6, 0x8000
    stw     r7, 0x5cc(sp)
    subf    r0, r8, r0
    lfs     f5, -0x4ae8(r2)
    stw     r6, 0x5c4(sp)
    xoris   r7, r0, 0x8000
    xoris   r0, r8, 0x8000
    lfs     f0, -0x4af4(r2)
    stw     r7, 0x5bc(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    li      r6, 0x0
    stw     r28, 0x5c8(sp)
    li      r7, 0x0
    stw     r28, 0x5c0(sp)
    lfd     f2, 0x5c8(sp)
    lfd     f1, 0x5c0(sp)
    stw     r0, 0x5b4(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r28, 0x5b8(sp)
    fmadds  f3, f5, f2, f1
    stw     r28, 0x5b0(sp)
    lfd     f2, 0x5b8(sp)
    lfd     f1, 0x5b0(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x360(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x364(sp)
    stfs    f0, 0x368(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r4, R13Off_m0x5fdc(r13)
    addi    r3, sp, 0x398
    lwz     r0, 0xc8(r4)
    stw     r0, 0x110(r31)
    lfs     f0, -0x4ab0(r2)
    lfs     f2, -0x4adc(r2)
    fmuls   f1, f0, f31
    fmr     f3, f2
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801564f4
    lwz     r3, 0x110(r31)
    lfs     f0, 0x398(sp)
    stfs    f0, 0x190(r3)
    lfs     f0, 0x39c(sp)
    stfs    f0, 0x194(r3)
    lfs     f0, 0x3a0(sp)
    stfs    f0, 0x198(r3)
branch_0x80155e24:
    lfs     f2, 0xe8(r31)
    lfs     f0, -0x4aac(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80155ed8
    lfs     f0, -0x4ae8(r2)
    fctiwz  f1, f2
    addi    r3, sp, 0x340
    fmuls   f0, f0, f2
    stfd    f1, 0x5b0(sp)
    fctiwz  f0, f0
    lwz     r6, 0x5b4(sp)
    neg     r4, r6
    stfd    f0, 0x5b8(sp)
    lwz     r7, 0x5bc(sp)
    neg     r5, r7
    bl      reform__7JUTRectFiiii
    lbz     r0, 0xe0(r31)
    lwz     r3, 0x340(sp)
    slwi    r4, r0, 2
    lwz     r0, 0x344(sp)
    add     r4, r31, r4
    lwz     r4, 0x98(r4)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0x348(sp)
    lwz     r0, 0x34c(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
    lfs     f1, -0x4aa8(r2)
    lfs     f0, 0xe8(r31)
    lwz     r3, 0xe4(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x5c0(sp)
    lwz     r0, 0x5c4(sp)
    slwi    r0, r0, 24
    add     r0, r3, r0
    stw     r0, 0x3a8(sp)
    lbz     r3, 0xe0(r31)
    lwz     r0, 0x3a8(sp)
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0x98(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x80155fa8

branch_0x80155ed8:
    lfs     f0, -0x4aa4(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80155f94
    fsubs   f1, f2, f0
    lfs     f0, -0x4ae8(r2)
    addi    r3, sp, 0x340
    fmuls   f0, f0, f1
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0x5b0(sp)
    stfd    f0, 0x5b8(sp)
    lwz     r4, 0x5b4(sp)
    lwz     r5, 0x5bc(sp)
    neg     r6, r4
    neg     r7, r5
    bl      reform__7JUTRectFiiii
    lbz     r0, 0xe0(r31)
    lwz     r3, 0x340(sp)
    slwi    r4, r0, 2
    lwz     r0, 0x344(sp)
    add     r4, r31, r4
    lwz     r4, 0x98(r4)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0x348(sp)
    lwz     r0, 0x34c(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
    lfs     f1, -0x4aa4(r2)
    lfs     f0, 0xe8(r31)
    lfs     f2, -0x4aa8(r2)
    fsubs   f0, f1, f0
    lwz     r3, 0xe4(r31)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x5c0(sp)
    lwz     r0, 0x5c4(sp)
    slwi    r0, r0, 24
    add     r0, r3, r0
    stw     r0, 0x3b0(sp)
    lbz     r3, 0xe0(r31)
    lwz     r0, 0x3b0(sp)
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0x98(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x80155fa8

branch_0x80155f94:
    lfs     f0, -0x4aa0(r2)
    stfs    f0, 0xe8(r31)
    lwz     r0, 0xfc(r31)
    mulli   r0, r0, -0x1
    stw     r0, 0xfc(r31)
branch_0x80155fa8:
    lfs     f1, 0xe8(r31)
    lfs     f0, -0x4ae8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xe8(r31)
    b       branch_0x80155fc4

branch_0x80155fbc:
    mr      r3, r31
    bl      disappearWindow__11TPauseMenu2Fv
branch_0x80155fc4:
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x801560a4
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80155fe8
    blt-    branch_0x801560a4
    cmpwi   r0, 0x5
    bge-    branch_0x801560a4
    b       branch_0x80156048

branch_0x80155fe8:
    addi    r4, r30, 0x54
    addi    r3, sp, 0x15c
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x15c
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x14(r31)
    addi    r6, sp, 0x15c
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lwz     r4, 0x68(r30)
    lwz     r5, 0x70(r30)
    lwz     r3, 0x64(r30)
    lwz     r0, 0x6c(r30)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    lis     r3, __vvt__14J2DGrafContext@h
    stw     r0, 0x15c(sp)
    addi    r0, r3, __vvt__14J2DGrafContext@l
    stw     r0, 0x15c(sp)
    b       branch_0x801560a4

branch_0x80156048:
    addi    r4, r30, 0x54
    addi    r3, sp, 0x250
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x250
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x14(r31)
    addi    r6, sp, 0x250
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lwz     r4, 0x68(r30)
    lwz     r5, 0x70(r30)
    lwz     r3, 0x64(r30)
    lwz     r0, 0x6c(r30)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    lis     r3, __vvt__14J2DGrafContext@h
    stw     r0, 0x250(sp)
    addi    r0, r3, __vvt__14J2DGrafContext@l
    stw     r0, 0x250(sp)
branch_0x801560a4:
    lwz     r0, 0x5fc(sp)
    lfd     f31, 0x5f0(sp)
    lwz     r31, 0x5ec(sp)
    mtlr    r0
    lwz     r30, 0x5e8(sp)
    lwz     r29, 0x5e4(sp)
    lwz     r28, 0x5e0(sp)
    addi    sp, sp, 0x5f8
    blr


.globl disappearWindow__11TPauseMenu2Fv
disappearWindow__11TPauseMenu2Fv: # 0x801560c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stfd    f31, 0xf8(sp)
    stfd    f30, 0xf0(sp)
    stfd    f29, 0xe8(sp)
    stfd    f28, 0xe0(sp)
    stmw    r27, 0xcc(sp)
    mr      r28, r3
    lfs     f1, -0x4af4(r2)
    lfs     f0, 0xec(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8015614c
    lwz     r4, 0x110(r28)
    cmplwi  r4, 0x0
    beq-    branch_0x8015614c
    lwz     r3, R13Off_m0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
    lbz     r5, 0xe0(r28)
    slwi    r3, r5, 4
    addi    r0, r3, 0xa4
    add     r4, r28, r0
    slwi    r0, r5, 2
    lwz     r3, 0x0(r4)
    add     r5, r28, r0
    lwz     r0, 0x4(r4)
    lwz     r5, 0x98(r5)
    stw     r3, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x1c(r5)
    stw     r0, 0x20(r5)
branch_0x8015614c:
    lfs     f1, 0xec(r28)
    lfs     f0, -0x4aa8(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801564b8
    lwz     r3, 0x1c(r28)
    addi    r5, r3, 0xcc
    lbz     r3, 0xcc(r3)
    subic.  r0, r3, 0xc
    bge-    branch_0x8015617c
    li      r4, 0x0
    b       branch_0x80156180

branch_0x8015617c:
    addi    r4, r3, -0xc
branch_0x80156180:
    clrlwi  r0, r4, 24
    stb     r4, 0x0(r5)
    lwz     r3, 0x18(r28)
    addi    r5, r3, 0xcc
    lbz     r3, 0xcc(r3)
    cmpw    r4, r3
    bge-    branch_0x801561a0
    stb     r0, 0x0(r5)
branch_0x801561a0:
    lwz     r3, 0xd8(r28)
    lbzu    r0, 0xcc(r3)
    cmpw    r4, r0
    bge-    branch_0x801561b4
    stb     r4, 0x0(r3)
branch_0x801561b4:
    lfs     f31, -0x4a9c(r2)
    li      r29, 0x0
    lfd     f30, -0x4ac8(r2)
    li      r27, 0x0
    lfs     f29, -0x4a98(r2)
    lfs     f28, -0x4a94(r2)
    lis     r31, 0x4330
branch_0x801561d0:
    addi    r30, r27, 0x20
    add     r30, r28, r30
    lwz     r4, 0x0(r30)
    addi    r3, sp, 0x64
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x68(sp)
    addi    r3, sp, 0x64
    lwz     r0, 0x70(sp)
    lwz     r7, 0x64(sp)
    neg     r4, r6
    lwz     r5, 0x6c(sp)
    subf    r0, r6, r0
    xoris   r0, r0, 0x8000
    subf    r5, r7, r5
    stw     r0, 0xa4(sp)
    xoris   r0, r5, 0x8000
    stw     r0, 0xbc(sp)
    neg     r0, r7
    xoris   r5, r0, 0x8000
    stw     r31, 0xb8(sp)
    xoris   r0, r4, 0x8000
    stw     r31, 0xa0(sp)
    lfd     f1, 0xb8(sp)
    stw     r5, 0xc4(sp)
    lfd     f0, 0xa0(sp)
    fsubs   f1, f1, f30
    stw     r0, 0xac(sp)
    fsubs   f0, f0, f30
    stw     r31, 0xc0(sp)
    fmuls   f2, f29, f1
    stw     r31, 0xa8(sp)
    fmuls   f0, f29, f0
    lfd     f3, 0xc0(sp)
    lfd     f1, 0xa8(sp)
    fsubs   f3, f3, f30
    fsubs   f1, f1, f30
    fmadds  f2, f31, f3, f2
    fmadds  f0, f31, f1, f0
    fctiwz  f1, f2
    fctiwz  f0, f0
    stfd    f1, 0xb0(sp)
    stfd    f0, 0x98(sp)
    lwz     r4, 0xb4(sp)
    lwz     r5, 0x9c(sp)
    bl      add__7JUTRectFii
    lwz     r6, 0x68(sp)
    addi    r3, sp, 0x64
    lwz     r0, 0x70(sp)
    lwz     r5, 0x64(sp)
    lwz     r4, 0x6c(sp)
    subf    r0, r6, r0
    xoris   r0, r0, 0x8000
    subf    r4, r5, r4
    stw     r0, 0x84(sp)
    xoris   r0, r4, 0x8000
    stw     r0, 0x94(sp)
    stw     r31, 0x90(sp)
    stw     r31, 0x80(sp)
    lfd     f1, 0x90(sp)
    lfd     f0, 0x80(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fmuls   f1, f28, f1
    fmuls   f0, f28, f0
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0x88(sp)
    stfd    f0, 0x78(sp)
    lwz     r4, 0x8c(sp)
    lwz     r5, 0x7c(sp)
    bl      resize__7JUTRectFii
    lwz     r4, 0x0(r30)
    addi    r29, r29, 0x1
    lwz     r3, 0x64(sp)
    cmpwi   r29, 0x5
    lwz     r0, 0x68(sp)
    addi    r27, r27, 0x4
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0x6c(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
    blt+    branch_0x801561d0
    lfs     f29, -0x4a9c(r2)
    li      r29, 0x0
    lfd     f30, -0x4ac8(r2)
    li      r27, 0x0
    lfs     f31, -0x4a98(r2)
    lfs     f28, -0x4a94(r2)
    lis     r31, 0x4330
    b       branch_0x80156490

branch_0x80156344:
    addi    r30, r27, 0x98
    add     r30, r28, r30
    lwz     r4, 0x0(r30)
    addi    r3, sp, 0x54
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x58(sp)
    addi    r3, sp, 0x54
    lwz     r0, 0x60(sp)
    lwz     r7, 0x54(sp)
    neg     r4, r6
    lwz     r5, 0x5c(sp)
    subf    r0, r6, r0
    xoris   r0, r0, 0x8000
    subf    r5, r7, r5
    stw     r0, 0x9c(sp)
    xoris   r0, r5, 0x8000
    stw     r0, 0x84(sp)
    neg     r0, r7
    xoris   r5, r0, 0x8000
    stw     r31, 0x80(sp)
    xoris   r0, r4, 0x8000
    stw     r31, 0x98(sp)
    lfd     f1, 0x80(sp)
    stw     r5, 0x7c(sp)
    lfd     f0, 0x98(sp)
    fsubs   f1, f1, f30
    stw     r0, 0x94(sp)
    fsubs   f0, f0, f30
    stw     r31, 0x78(sp)
    fmuls   f2, f31, f1
    stw     r31, 0x90(sp)
    fmuls   f0, f31, f0
    lfd     f3, 0x78(sp)
    lfd     f1, 0x90(sp)
    fsubs   f3, f3, f30
    fsubs   f1, f1, f30
    fmadds  f2, f29, f3, f2
    fmadds  f0, f29, f1, f0
    fctiwz  f1, f2
    fctiwz  f0, f0
    stfd    f1, 0x88(sp)
    stfd    f0, 0xa0(sp)
    lwz     r4, 0x8c(sp)
    lwz     r5, 0xa4(sp)
    bl      add__7JUTRectFii
    lwz     r6, 0x58(sp)
    addi    r3, sp, 0x54
    lwz     r0, 0x60(sp)
    lwz     r5, 0x54(sp)
    lwz     r4, 0x5c(sp)
    subf    r0, r6, r0
    xoris   r0, r0, 0x8000
    subf    r4, r5, r4
    stw     r0, 0xbc(sp)
    xoris   r0, r4, 0x8000
    stw     r0, 0xac(sp)
    stw     r31, 0xa8(sp)
    stw     r31, 0xb8(sp)
    lfd     f1, 0xa8(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fmuls   f1, f28, f1
    fmuls   f0, f28, f0
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0xb0(sp)
    stfd    f0, 0xc0(sp)
    lwz     r4, 0xb4(sp)
    lwz     r5, 0xc4(sp)
    bl      resize__7JUTRectFii
    lwz     r4, 0x0(r30)
    addi    r29, r29, 0x1
    lwz     r3, 0x54(sp)
    addi    r27, r27, 0x4
    lwz     r0, 0x58(sp)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x60(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
branch_0x80156490:
    lwz     r0, 0x104(r28)
    cmpw    r29, r0
    blt+    branch_0x80156344
    lfs     f0, 0xec(r28)
    lfs     f1, -0x4aec(r2)
    fneg    f0, f0
    lwz     r3, 0x1c(r28)
    fmuls   f0, f1, f0
    stfs    f0, 0xc0(r3)
    b       branch_0x801564c0

branch_0x801564b8:
    li      r0, 0x5
    stw     r0, 0x10(r28)
branch_0x801564c0:
    lfs     f1, 0xec(r28)
    lfs     f0, -0x4ae8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xec(r28)
    lwz     r0, 0x104(sp)
    lfd     f31, 0xf8(sp)
    lfd     f30, 0xf0(sp)
    lfd     f29, 0xe8(sp)
    lfd     f28, 0xe0(sp)
    lmw     r27, 0xcc(sp)
    addi    sp, sp, 0x100
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_801564f4
set_f___Q29JGeometry8TVec3_f_Ffff_801564f4: # 0x801564f4
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl appearWindow__11TPauseMenu2Fv
appearWindow__11TPauseMenu2Fv: # 0x80156504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stfd    f29, 0xb8(sp)
    stfd    f28, 0xb0(sp)
    stfd    f27, 0xa8(sp)
    stfd    f26, 0xa0(sp)
    stfd    f25, 0x98(sp)
    stfd    f24, 0x90(sp)
    stfd    f23, 0x88(sp)
    stfd    f22, 0x80(sp)
    stmw    r26, 0x68(sp)
    mr      r28, r3
    lfs     f0, -0x4a90(r2)
    lfs     f1, 0xec(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8015660c
    lfs     f25, -0x4a8c(r2)
    li      r30, 0x0
    lfd     f24, -0x4ac8(r2)
    li      r26, 0x0
    lfs     f23, -0x4a88(r2)
    lfs     f22, -0x4ac0(r2)
    li      r27, 0x0
    lis     r29, 0x4330
branch_0x80156574:
    xoris   r0, r30, 0x8000
    lfs     f1, 0xec(r28)
    stw     r0, 0x64(sp)
    add     r3, r28, r27
    lfs     f0, 0x84(r3)
    addi    r5, r26, 0x34
    stw     r29, 0x60(sp)
    lwz     r4, 0x20(r3)
    fadds   f0, f22, f0
    lfd     f2, 0x60(sp)
    addi    r3, r28, 0x0
    add     r5, r28, r5
    fsubs   f2, f2, f24
    fnmsubs  f1, f25, f2, f1
    fnmsubs  f2, f23, f1, f0
    bl      drawAppearPane__11TPauseMenu2FP10J2DPicturefR7JUTRectf
    addi    r30, r30, 0x1
    cmpwi   r30, 0x5
    addi    r26, r26, 0x10
    addi    r27, r27, 0x4
    blt+    branch_0x80156574
    lfs     f1, 0xf4(r28)
    lfs     f0, 0xec(r28)
    lfs     f2, -0x4a84(r2)
    fmuls   f0, f1, f0
    lbz     r4, 0xf0(r28)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r0, 0x5c(sp)
    stfd    f0, 0x60(sp)
    cmpw    r0, r4
    lwz     r0, 0x64(sp)
    ble-    branch_0x80156600
    b       branch_0x80156604

branch_0x80156600:
    mr      r4, r0
branch_0x80156604:
    lwz     r3, 0x18(r28)
    stb     r4, 0xcc(r3)
branch_0x8015660c:
    lfs     f1, 0xec(r28)
    lfs     f0, 0xf4(r28)
    lfs     f2, -0x4a84(r2)
    fmuls   f0, f1, f0
    lbz     r0, 0xf0(r28)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r3, 0x64(sp)
    stfd    f0, 0x58(sp)
    cmpw    r3, r0
    lwz     r0, 0x5c(sp)
    ble-    branch_0x80156644
    li      r0, 0xff
branch_0x80156644:
    lwz     r3, 0xd8(r28)
    stb     r0, 0xcc(r3)
    lfs     f0, 0xec(r28)
    lfs     f26, -0x4a80(r2)
    fcmpo   cr0, f0, f26
    cror    2, 1, 2
    bne-    branch_0x80156870
    lfs     f22, -0x4a90(r2)
    li      r29, 0x0
    lfs     f23, -0x4a78(r2)
    li      r27, 0x0
    lfs     f24, -0x4a84(r2)
    lfs     f27, -0x4a7c(r2)
    li      r26, 0x0
    lfs     f28, -0x4aa4(r2)
    lis     r31, 0x4330
    lfs     f29, -0x4a74(r2)
    lfs     f30, -0x4a70(r2)
    lfd     f31, -0x4ac8(r2)
    lfs     f25, -0x4a6c(r2)
    b       branch_0x80156864

branch_0x80156698:
    addi    r30, r26, 0x98
    add     r30, r28, r30
    lwz     r3, 0x0(r30)
    lbzu    r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801566c4
    li      r0, 0x1
    stb     r0, 0x0(r3)
    li      r0, 0x0
    lwz     r3, 0x0(r30)
    stb     r0, 0xcc(r3)
branch_0x801566c4:
    addi    r4, r27, 0xa4
    addi    r3, sp, 0x34
    add     r4, r28, r4
    bl      copy__7JUTRectFRC7JUTRect
    lfs     f0, 0xec(r28)
    fcmpo   cr0, f0, f27
    cror    2, 0, 2
    bne-    branch_0x801567d0
    fsubs   f0, f0, f28
    addi    r3, sp, 0x34
    fmuls   f1, f23, f0
    fmuls   f0, f24, f0
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0x58(sp)
    stfd    f0, 0x60(sp)
    lwz     r6, 0x5c(sp)
    lwz     r7, 0x64(sp)
    neg     r4, r6
    neg     r5, r7
    bl      reform__7JUTRectFiiii
    lwz     r4, 0x0(r30)
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
    lfs     f0, 0xec(r28)
    fsubs   f0, f0, f26
    fmuls   f0, f29, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stfd    f0, 0x50(sp)
    cmpwi   r0, 0xff
    lwz     r0, 0x54(sp)
    ble-    branch_0x80156768
    li      r0, 0xff
branch_0x80156768:
    lwz     r3, 0x0(r30)
    cmpwi   r29, 0x0
    stb     r0, 0xcc(r3)
    bne-    branch_0x80156858
    lha     r0, 0xf8(r28)
    lfs     f0, 0xec(r28)
    xoris   r0, r0, 0x8000
    lwz     r3, 0x0(r30)
    stw     r0, 0x4c(sp)
    fsubs   f0, f0, f26
    stw     r31, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f31
    fmuls   f1, f30, f1
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r0, 0x54(sp)
    extsh   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    stw     r31, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0xc0(r3)
    b       branch_0x80156858

branch_0x801567d0:
    fcmpo   cr0, f0, f22
    cror    2, 0, 2
    bne-    branch_0x80156838
    fsubs   f0, f0, f22
    addi    r3, sp, 0x34
    fmuls   f1, f23, f0
    fmuls   f0, f24, f0
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0x48(sp)
    stfd    f0, 0x50(sp)
    lwz     r4, 0x4c(sp)
    lwz     r5, 0x54(sp)
    neg     r6, r4
    neg     r7, r5
    bl      reform__7JUTRectFiiii
    lwz     r4, 0x0(r30)
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
    b       branch_0x80156858

branch_0x80156838:
    fcmpo   cr0, f0, f25
    cror    2, 1, 2
    bne-    branch_0x80156858
    lwz     r0, 0x10(r28)
    cmpwi   r0, 0x1
    beq-    branch_0x80156858
    li      r0, 0x1
    stw     r0, 0x10(r28)
branch_0x80156858:
    addi    r29, r29, 0x1
    addi    r27, r27, 0x10
    addi    r26, r26, 0x4
branch_0x80156864:
    lwz     r0, 0x104(r28)
    cmpw    r29, r0
    blt+    branch_0x80156698
branch_0x80156870:
    lfs     f1, 0xec(r28)
    lfs     f0, -0x4ae8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xec(r28)
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    lfd     f29, 0xb8(sp)
    lfd     f28, 0xb0(sp)
    lfd     f27, 0xa8(sp)
    lfd     f26, 0xa0(sp)
    lfd     f25, 0x98(sp)
    lfd     f24, 0x90(sp)
    lfd     f23, 0x88(sp)
    lfd     f22, 0x80(sp)
    lmw     r26, 0x68(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl loadAfter__11TPauseMenu2Fv
loadAfter__11TPauseMenu2Fv: # 0x801568bc
    mflr    r0
    lis     r4, unk_80387f20@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xa8(sp)
    addi    r30, r4, unk_80387f20@l
    addi    r3, r30, 0x0
    stw     r29, 0xa4(sp)
    lwz     r5, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r5)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x118(r31)
    li      r8, 0x0
    li      r3, 0x0
    lwz     r5, 0x98(r31)
    li      r4, 0x0
    lwz     r0, 0x13c(r5)
    stw     r0, 0x88(sp)
    lwz     r0, 0x88(sp)
    stw     r0, 0xe4(r31)
    b       branch_0x80156970

branch_0x80156934:
    addi    r0, r4, 0x98
    lwzx    r7, r31, r0
    addi    r0, r3, 0xa4
    add     r6, r31, r0
    lwz     r5, 0x14(r7)
    addi    r8, r8, 0x1
    lwz     r0, 0x18(r7)
    addi    r3, r3, 0x10
    addi    r4, r4, 0x4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r5, 0x1c(r7)
    lwz     r0, 0x20(r7)
    stw     r5, 0x8(r6)
    stw     r0, 0xc(r6)
branch_0x80156970:
    lwz     r0, 0x104(r31)
    cmpw    r8, r0
    blt+    branch_0x80156934
    lwz     r3, 0x20(r31)
    addi    r5, r3, 0x14
    lwz     r3, 0x14(r3)
    lwz     r0, 0x4(r5)
    stw     r3, 0x34(r31)
    stw     r0, 0x38(r31)
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r3, 0x3c(r31)
    stw     r0, 0x40(r31)
    lwz     r3, 0x20(r31)
    lfs     f0, 0xc0(r3)
    stfs    f0, 0x84(r31)
    lwz     r3, 0x24(r31)
    addi    r5, r3, 0x14
    lwz     r3, 0x14(r3)
    lwz     r0, 0x4(r5)
    stw     r3, 0x44(r31)
    stw     r0, 0x48(r31)
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r3, 0x4c(r31)
    stw     r0, 0x50(r31)
    lwz     r3, 0x24(r31)
    lfs     f0, 0xc0(r3)
    stfs    f0, 0x88(r31)
    lwz     r3, 0x28(r31)
    addi    r5, r3, 0x14
    lwz     r3, 0x14(r3)
    lwz     r0, 0x4(r5)
    stw     r3, 0x54(r31)
    stw     r0, 0x58(r31)
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r3, 0x5c(r31)
    stw     r0, 0x60(r31)
    lwz     r3, 0x28(r31)
    lfs     f0, 0xc0(r3)
    stfs    f0, 0x8c(r31)
    lwz     r3, 0x2c(r31)
    addi    r5, r3, 0x14
    lwz     r3, 0x14(r3)
    lwz     r0, 0x4(r5)
    stw     r3, 0x64(r31)
    stw     r0, 0x68(r31)
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r3, 0x6c(r31)
    stw     r0, 0x70(r31)
    lwz     r3, 0x2c(r31)
    lfs     f0, 0xc0(r3)
    stfs    f0, 0x90(r31)
    lwz     r3, 0x30(r31)
    addi    r5, r3, 0x14
    lwz     r3, 0x14(r3)
    lwz     r0, 0x4(r5)
    stw     r3, 0x74(r31)
    stw     r0, 0x78(r31)
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r3, 0x7c(r31)
    stw     r0, 0x80(r31)
    lwz     r3, 0x30(r31)
    lfs     f0, 0xc0(r3)
    stfs    f0, 0x94(r31)
    lwz     r3, 0x18(r31)
    lis     r0, 0x4330
    lbz     r3, 0xcc(r3)
    stb     r3, 0xf0(r31)
    lbz     r3, 0xf0(r31)
    lfd     f2, -0x4ab8(r2)
    stw     r3, 0x9c(sp)
    lfs     f0, -0x4a90(r2)
    stw     r0, 0x98(sp)
    lfd     f1, 0x98(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0xf4(r31)
    lwz     r3, 0x98(r31)
    lfs     f0, 0xc0(r3)
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r0, 0x94(sp)
    sth     r0, 0xf8(r31)
    lha     r3, 0xf8(r31)
    cmpwi   r3, 0xb4
    ble-    branch_0x80156ae0
    addi    r0, r3, -0x168
    sth     r0, 0xf8(r31)
branch_0x80156ae0:
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x18(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x10c(r31)
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl load__11TPauseMenu2FR20JSUMemoryInputStream
load__11TPauseMenu2FR20JSUMemoryInputStream: # 0x80156b0c
    mflr    r0
    lis     r5, unk_80387f00@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r29, r3, 0x0
    addi    r31, r5, unk_80387f00@l
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r2, R2Off_m0x4a68
    bl      getVolume__13JKRFileLoaderFPCc
    addi    r28, r3, 0x0
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80156b58
    addi    r3, r27, 0x0
    addi    r5, r28, 0x0
    addi    r4, r31, 0x30
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x80156b58:
    stw     r27, 0x14(r29)
    li      r4, 0x2
    lwz     r3, 0x14(r29)
    bl      setCullBack__7J2DPaneF11_GXCullMode
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lbz     r0, 0xe(r3)
    cmplwi  r0, 0x1
    bgt-    branch_0x80156b84
    li      r0, 0x2
    stw     r0, 0x104(r29)
branch_0x80156b84:
    lwz     r3, 0x14(r29)
    lis     r4, unk_6d61736b@h
    addi    r4, r4, unk_6d61736b@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x18(r29)
    lis     r3, unk_00745f30@h
    addi    r4, r3, unk_00745f30@l
    lwz     r3, 0x14(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1c(r29)
    li      r28, 0x0
    li      r30, 0x0
branch_0x80156bcc:
    lwz     r3, 0x14(r29)
    addis   r4, r28, 0x7061
    addi    r4, r4, 0x3030
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    addi    r0, r30, 0x20
    cmpwi   r28, 0x5
    stwx    r3, r29, r0
    addi    r30, r30, 0x4
    blt+    branch_0x80156bcc
    li      r27, 0x0
    li      r30, 0x0
branch_0x80156c08:
    lwz     r3, 0x14(r29)
    addis   r4, r27, 0x7478
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r28, r30, 0x98
    add     r28, r29, r28
    stw     r3, 0x0(r28)
    lwz     r0, 0x104(r29)
    cmpwi   r0, 0x2
    bne-    branch_0x80156c58
    lwz     r3, 0x0(r28)
    li      r4, 0x0
    li      r5, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80156c58:
    addi    r27, r27, 0x1
    lwz     r3, 0x0(r28)
    li      r0, 0x0
    cmpwi   r27, 0x3
    stb     r0, 0xc(r3)
    addi    r30, r30, 0x4
    blt+    branch_0x80156c08
    lwz     r3, 0x14(r29)
    lis     r4, unk_006d6170@h
    addi    r4, r4, unk_006d6170@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xd4(r29)
    lwz     r3, 0xd4(r29)
    lwz     r4, R13Off_m0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x14(r29)
    lis     r4, unk_7461736b@h
    addi    r4, r4, unk_7461736b@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xdc(r29)
    li      r4, 0x80
    lwz     r3, 0xdc(r29)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r3, 0xdc(r29)
    lwz     r4, R13Off_m0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x14(r29)
    lis     r4, unk_6272656b@h
    addi    r4, r4, unk_6272656b@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xd8(r29)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x7c(r3)
    bl      SMS_getShineStage__FUc
    lwz     r0, R13Off_m0x6060(r13)
    lis     r4, unk_00040003@h
    clrlwi  r30, r3, 24
    mr      r3, r0
    addi    r4, r4, unk_00040003@l
    bl      getFlag__12TFlagManagerCFUl
    addi    r28, r3, 0x0
    addi    r3, r31, 0x3c
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r30
    bl      SMSGetMessageData__FPvUl
    mr      r4, r3
    lwz     r3, 0xd4(r29)
    crxor   6, 6, 6
    bl      setString__10J2DTextBoxFPCce
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xf
    beq-    branch_0x80156e28
    addi    r3, r31, 0x58
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r30, 0x9
    ble-    branch_0x80156d68
    li      r0, -0x1
    b       branch_0x80156d90

branch_0x80156d68:
    lis     r4, scShineConvTable@h
    slwi    r5, r30, 2
    addi    r0, r4, scShineConvTable@l
    add     r4, r0, r5
    lwz     r4, 0x0(r4)
    cmplwi  r4, 0x0
    bne-    branch_0x80156d8c
    li      r0, -0x1
    b       branch_0x80156d90

branch_0x80156d8c:
    lbzx    r0, r4, r28
branch_0x80156d90:
    cmplwi  r3, 0x0
    beq-    branch_0x80156dac
    extsh   r0, r0
    cmpwi   r0, -0x1
    beq-    branch_0x80156dac
    cmplwi  r30, 0x0
    bne-    branch_0x80156dec
branch_0x80156dac:
    lwz     r3, 0xd4(r29)
    addi    r27, r2, R2Off_m0x4a60
    li      r4, 0x0
    lwz     r12, 0x0(r3)
    li      r5, 0xf
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1c(r29)
    li      r4, 0x0
    li      r5, 0x1e
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x80156e0c

branch_0x80156dec:
    lis     r4, scScenarioNameTable@h
    slwi    r5, r0, 2
    addi    r0, r4, scScenarioNameTable@l
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    mr      r27, r3
branch_0x80156e0c:
    lwz     r3, 0xdc(r29)
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r27, 0x0
    li      r4, 0x80
    addi    r5, r2, R2Off_m0x4a5c
    bl      snprintf
branch_0x80156e28:
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __ct__11TPauseMenu2FPCc
__ct__11TPauseMenu2FPCc: # 0x80156e3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r29, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r29)
    stw     r4, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r29)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r29)
    li      r30, 0x0
    lis     r3, __vvt__11TPauseMenu2@h
    sth     r30, 0xc(r29)
    addi    r0, r3, __vvt__11TPauseMenu2@l
    lis     r3, __ct__7JUTRectFv@h
    stw     r0, 0x0(r29)
    li      r0, 0x5
    addi    r31, r3, __ct__7JUTRectFv@l
    stw     r0, 0x10(r29)
    addi    r4, r31, 0x0
    addi    r3, r29, 0x34
    stw     r30, 0x14(r29)
    li      r5, 0x0
    li      r6, 0x10
    stw     r30, 0x18(r29)
    li      r7, 0x5
    stw     r30, 0x1c(r29)
    bl      __construct_array
    addi    r4, r31, 0x0
    addi    r3, r29, 0xa4
    li      r5, 0x0
    li      r6, 0x10
    li      r7, 0x3
    bl      __construct_array
    stw     r30, 0xd4(r29)
    li      r5, 0x6
    li      r4, 0x3
    stw     r30, 0xd8(r29)
    li      r0, 0x81
    addi    r3, r29, 0x0
    stw     r30, 0xdc(r29)
    stb     r30, 0xe0(r29)
    lfs     f0, -0x4af4(r2)
    stfs    f0, 0xe8(r29)
    stfs    f0, 0xec(r29)
    sth     r30, 0xf8(r29)
    stw     r5, 0xfc(r29)
    sth     r4, 0x100(r29)
    sth     r0, 0x102(r29)
    stw     r4, 0x104(r29)
    stb     r30, 0x108(r29)
    stb     r30, 0x109(r29)
    stw     r30, 0x110(r29)
    stw     r30, 0x114(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __sinit_PauseMenu2_cpp
__sinit_PauseMenu2_cpp: # 0x80156f50
    mflr    r0
    lis     r3, unk_803f3f60@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f3f60@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80156f98
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80156f98:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80156fc8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80156fc8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80156ff8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80156ff8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80157028
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80157028:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80157058
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80157058:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80157088
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80157088:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801570b8
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801570b8:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801570e8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801570e8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80157118
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80157118:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80157148
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80157148:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80157178
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80157178:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801571a8
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801571a8:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801571d8
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801571d8:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80157208
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80157208:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80157238
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80157238:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

