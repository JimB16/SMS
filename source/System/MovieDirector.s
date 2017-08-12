
.globl direct__14TMovieDirectorFv
direct__14TMovieDirectorFv: # 0x802b5b30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x270(sp)
    stmw    r27, 0x25c(sp)
    mr      r31, r3
    lhz     r0, 0x30(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x802b5ce4
    lis     r3, gSetupThread@ha
    addi    r28, r3, gSetupThread@l
    addi    r3, r28, 0x0
    bl      OSIsThreadTerminated
    cmpwi   r3, 0x0
    bne-    branch_0x802b5b70
    li      r3, 0x0
    b       branch_0x802b63b4

branch_0x802b5b70:
    addi    r3, r28, 0x0
    addi    r4, sp, 0x250
    bl      OSJoinThread
    lwz     r0, 0x250(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802b5b90
    li      r3, 0x5
    b       branch_0x802b63b4

branch_0x802b5b90:
    lhz     r0, 0x30(r31)
    ori     r0, r0, 0x1
    sth     r0, 0x30(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      initSound__6MSoundFv
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    addi    r27, r3, 0x18
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x10
    bne-    branch_0x802b5c60
    lwz     r29, 0x34(r31)
    bne-    branch_0x802b5c0c
    lwz     r3, 0x18(r29)
    lis     r28, unk_74785f31@h
    addi    r4, r28, unk_74785f31@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    addi    r4, r28, 0x5f32
    lwz     r3, 0x18(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x802b5c58

branch_0x802b5c0c:
    cmplwi  r0, 0x11
    bne-    branch_0x802b5c58
    lwz     r3, 0x18(r29)
    lis     r28, unk_74785f31@h
    addi    r4, r28, unk_74785f31@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    addi    r4, r28, 0x5f32
    lwz     r3, 0x18(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x802b5c58:
    li      r0, 0x1
    stb     r0, 0x10(r29)
branch_0x802b5c60:
    lwz     r0, 0x0(r27)
    cmplwi  r0, 0x9
    bne-    branch_0x802b5c94
    lfs     f1, -0x68(r2)
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    fmr     f2, f1
    lwz     r3, 0x34(r3)
    li      r4, 0xc
    bl      startWipe__9TSMSFaderFUlff
    li      r0, 0x0
    stb     r0, 0x18(r31)
    b       branch_0x802b5ce4

branch_0x802b5c94:
    lis     r3, gpApplication@ha
    lfs     f1, -0x64(r2)
    addi    r3, r3, gpApplication@l
    lfs     f2, -0x68(r2)
    addi    r27, r3, 0x34
    lwz     r3, 0x34(r3)
    li      r4, 0xe
    bl      startWipe__9TSMSFaderFUlff
    li      r3, 0x0
    stb     r3, 0x144(sp)
    li      r0, 0xff
    addi    r4, sp, 0x148
    stb     r3, 0x145(sp)
    stb     r3, 0x146(sp)
    stb     r0, 0x147(sp)
    lwz     r0, 0x144(sp)
    stw     r0, 0x148(sp)
    lwz     r3, 0x0(r27)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    bl      THPPlayerPlay
branch_0x802b5ce4:
    lbz     r0, 0x18(r31)
    li      r30, 0x1
    cmplwi  r0, 0x0
    bne-    branch_0x802b5d48
    bl      Hx_MovieStartSyncEx
    cmpwi   r3, 0x2
    beq-    branch_0x802b5d3c
    bge-    branch_0x802b5d48
    cmpwi   r3, 0x1
    bge-    branch_0x802b5d10
    b       branch_0x802b5d48

branch_0x802b5d10:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2972
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802b5d48
    li      r3, 0x2972
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x802b5d48

branch_0x802b5d3c:
    li      r0, 0x1
    stb     r0, 0x18(r31)
    bl      THPPlayerPlay
branch_0x802b5d48:
    lwz     r3, R13Off_m0x60f0(r13)
    bl      update__9RumbleMgrFv
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x802b5d64
    cmpwi   r0, 0x4
    bne-    branch_0x802b5e34
branch_0x802b5d64:
    addi    r3, sp, 0x194
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x1a4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x1b4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x1c4
    bl      __ct__Q29JGeometry38TMatrix44_Q29JGeometry13SMatrix44C_f__Fv
    addi    r3, sp, 0x204
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    li      r0, -0x1
    stw     r0, 0x244(sp)
    li      r28, 0x0
    li      r0, 0x1
    sth     r28, 0x24c(sp)
    addi    r5, sp, 0x150
    li      r4, 0x1
    sth     r0, 0x150(sp)
    lwz     r3, 0x10(r31)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    sth     r28, 0x150(sp)
    addi    r5, sp, 0x150
    li      r4, 0x1
    lwz     r3, 0x10(r31)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    sth     r28, 0x150(sp)
    addi    r5, sp, 0x150
    li      r4, 0x1
    lwz     r3, 0x10(r31)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    sth     r28, 0x150(sp)
    addi    r5, sp, 0x150
    li      r4, 0x3
    lwz     r3, 0x10(r31)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0x14(r31)
    addi    r5, sp, 0x150
    li      r4, 0x8
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    b       branch_0x802b5e3c

branch_0x802b5e34:
    mr      r3, r31
    bl      direct__Q26JDrama9TDirectorFv
branch_0x802b5e3c:
    lwz     r0, 0x1c(r31)
    stw     r0, 0x14c(sp)
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x802b604c
    bge-    branch_0x802b5e64
    cmpwi   r0, 0x0
    beq-    branch_0x802b5e74
    bge-    branch_0x802b5ed8
    b       branch_0x802b612c

branch_0x802b5e64:
    cmpwi   r0, 0x4
    beq-    branch_0x802b60b4
    bge-    branch_0x802b612c
    b       branch_0x802b6078

branch_0x802b5e74:
    lis     r4, gpApplication@ha
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, gpApplication@l
    lwz     r4, 0x18(r4)
    addis   r4, r4, 0x1
    addi    r4, r4, 0x391
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802b5eb4
    lwz     r3, 0x20(r31)
    lwz     r0, 0xd4(r3)
    andi.   r0, r0, 0x61
    beq-    branch_0x802b5eb4
    li      r0, 0x2
    stw     r0, 0x14c(sp)
    b       branch_0x802b612c

branch_0x802b5eb4:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lwz     r3, 0x34(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x802b612c
    li      r0, 0x1
    stw     r0, 0x14c(sp)
    b       branch_0x802b612c

branch_0x802b5ed8:
    lis     r4, gpApplication@ha
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, gpApplication@l
    addi    r29, r4, 0x18
    lwz     r4, 0x18(r4)
    addis   r4, r4, 0x1
    addi    r4, r4, 0x391
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802b5f1c
    lwz     r3, 0x20(r31)
    lwz     r0, 0xd4(r3)
    andi.   r0, r0, 0x61
    beq-    branch_0x802b5f1c
    li      r0, 0x2
    stw     r0, 0x14c(sp)
    b       branch_0x802b5f50

branch_0x802b5f1c:
    bl      THPPlayerGetState
    cmpwi   r3, 0x5
    bne-    branch_0x802b5f34
    li      r0, 0x2
    stw     r0, 0x14c(sp)
    b       branch_0x802b5f50

branch_0x802b5f34:
    bl      THPPlayerGetState
    cmpwi   r3, 0x3
    bne-    branch_0x802b5f50
    addi    r3, r31, 0x0
    addi    r4, sp, 0x14c
    bl      decideNextMode__14TMovieDirectorFPl
    mr      r30, r3
branch_0x802b5f50:
    lwz     r3, 0x38(r31)
    cmplwi  r3, 0x12c
    bge-    branch_0x802b5f64
    addi    r0, r3, 0x1
    stw     r0, 0x38(r31)
branch_0x802b5f64:
    lwz     r3, 0x0(r29)
    cmplwi  r3, 0x11
    bne-    branch_0x802b6024
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x1e
    bne-    branch_0x802b6024
    cmplwi  r3, 0x10
    lwz     r27, 0x34(r31)
    bne-    branch_0x802b5fd0
    lwz     r3, 0x18(r27)
    lis     r28, unk_74785f31@h
    addi    r4, r28, unk_74785f31@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    addi    r4, r28, 0x5f32
    lwz     r3, 0x18(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x802b601c

branch_0x802b5fd0:
    cmplwi  r3, 0x11
    bne-    branch_0x802b601c
    lwz     r3, 0x18(r27)
    lis     r28, unk_74785f31@h
    addi    r4, r28, unk_74785f31@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    addi    r4, r28, 0x5f32
    lwz     r3, 0x18(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x802b601c:
    li      r0, 0x1
    stb     r0, 0x10(r27)
branch_0x802b6024:
    lwz     r0, 0x0(r29)
    cmplwi  r0, 0x11
    bne-    branch_0x802b612c
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0xdc
    bne-    branch_0x802b612c
    lwz     r3, 0x34(r31)
    li      r0, 0x3
    stb     r0, 0x10(r3)
    b       branch_0x802b612c

branch_0x802b604c:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lwz     r3, 0x34(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x802b612c
    addi    r3, r31, 0x0
    addi    r4, sp, 0x14c
    bl      decideNextMode__14TMovieDirectorFPl
    mr      r30, r3
    b       branch_0x802b612c

branch_0x802b6078:
    lwz     r3, 0x24(r31)
    bl      getNextState__9TCardSaveFv
    clrlwi  r0, r3, 24
    cmpwi   r0, 0x2
    bge-    branch_0x802b612c
    cmpwi   r0, 0x0
    bge-    branch_0x802b6098
    b       branch_0x802b612c

branch_0x802b6098:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lwz     r3, 0x34(r3)
    li      r4, 0x0
    bl      setFadeStatus__9TSMSFaderFQ29TSMSFader11EFadeStatus
    li      r30, 0x4
    b       branch_0x802b612c

branch_0x802b60b4:
    lwz     r3, 0x24(r31)
    bl      getNextState__9TCardSaveFv
    clrlwi  r0, r3, 24
    cmpwi   r0, 0x1
    beq-    branch_0x802b60d8
    bge-    branch_0x802b612c
    cmpwi   r0, 0x0
    bge-    branch_0x802b60f4
    b       branch_0x802b612c

branch_0x802b60d8:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lwz     r3, 0x34(r3)
    li      r4, 0x0
    bl      setFadeStatus__9TSMSFaderFQ29TSMSFader11EFadeStatus
    li      r30, 0x6
    b       branch_0x802b612c

branch_0x802b60f4:
    lis     r3, gpApplication@ha
    addi    r29, r3, gpApplication@l
    lwz     r3, 0x34(r29)
    li      r4, 0x0
    bl      setFadeStatus__9TSMSFaderFQ29TSMSFader11EFadeStatus
    addi    r3, r29, 0x18
    lwz     r0, 0x18(r29)
    cmplwi  r0, 0x13
    bne-    branch_0x802b6128
    li      r0, 0xd
    stw     r0, 0x0(r3)
    li      r30, 0x6
    b       branch_0x802b612c

branch_0x802b6128:
    li      r30, 0x5
branch_0x802b612c:
    lwz     r3, 0x20(r31)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    beq-    branch_0x802b61a0
    lwz     r3, R13Off_m0x603c(r13)
    bl      getLastStatus__12TCardManagerFv
    cmpwi   r3, -0x1
    beq-    branch_0x802b61a0
    lhz     r0, 0x30(r31)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x802b61a0
    lhz     r3, 0x30(r31)
    li      r0, 0x2
    ori     r3, r3, 0x2
    sth     r3, 0x30(r31)
    stw     r0, 0x14c(sp)
    lwz     r3, 0x28(r31)
    lhz     r0, 0xc(r3)
    ori     r0, r0, 0x9
    sth     r0, 0xc(r3)
    lwz     r3, 0x2c(r31)
    lhz     r0, 0xc(r3)
    ori     r0, r0, 0x9
    sth     r0, 0xc(r3)
    bl      THPPlayerPause
branch_0x802b61a0:
    lwz     r3, 0x14c(sp)
    lwz     r0, 0x1c(r31)
    cmpw    r3, r0
    beq-    branch_0x802b63b0
    cmpwi   r3, 0x3
    beq-    branch_0x802b61d4
    bge-    branch_0x802b61c8
    cmpwi   r3, 0x2
    bge-    branch_0x802b62e4
    b       branch_0x802b63a8

branch_0x802b61c8:
    cmpwi   r3, 0x5
    bge-    branch_0x802b63a8
    b       branch_0x802b6264

branch_0x802b61d4:
    bl      THPPlayerStop
    lwz     r5, 0x28(r31)
    lis     r3, gpApplication@ha
    addi    r29, r3, gpApplication@l
    lhz     r0, 0xc(r5)
    addi    r28, r29, 0x34
    li      r4, 0xe
    ori     r0, r0, 0x9
    sth     r0, 0xc(r5)
    lwz     r3, 0x2c(r31)
    lhz     r0, 0xc(r3)
    ori     r0, r0, 0x9
    sth     r0, 0xc(r3)
    lwz     r3, 0x34(r29)
    lfs     f1, -0x60(r2)
    lfs     f2, -0x68(r2)
    bl      startWipe__9TSMSFaderFUlff
    li      r27, 0x0
    stb     r27, 0x13c(sp)
    li      r0, 0xff
    addi    r4, sp, 0x140
    stb     r27, 0x13d(sp)
    stb     r27, 0x13e(sp)
    stb     r0, 0x13f(sp)
    lwz     r0, 0x13c(sp)
    stw     r0, 0x140(sp)
    lwz     r3, 0x0(r28)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    lwz     r0, 0x18(r29)
    cmplwi  r0, 0x11
    bne-    branch_0x802b6254
    li      r27, 0x8
branch_0x802b6254:
    lwz     r3, 0x24(r31)
    mr      r4, r27
    bl      init__9TCardSaveFi
    b       branch_0x802b63a8

branch_0x802b6264:
    bl      THPPlayerStop
    lwz     r5, 0x28(r31)
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lhz     r0, 0xc(r5)
    addi    r27, r3, 0x34
    li      r4, 0xe
    ori     r0, r0, 0x9
    sth     r0, 0xc(r5)
    lwz     r3, 0x2c(r31)
    lhz     r0, 0xc(r3)
    ori     r0, r0, 0x9
    sth     r0, 0xc(r3)
    lwz     r3, 0x0(r27)
    lfs     f1, -0x60(r2)
    lfs     f2, -0x68(r2)
    bl      startWipe__9TSMSFaderFUlff
    li      r3, 0x0
    stb     r3, 0x134(sp)
    li      r0, 0xff
    addi    r4, sp, 0x138
    stb     r3, 0x135(sp)
    stb     r3, 0x136(sp)
    stb     r0, 0x137(sp)
    lwz     r0, 0x134(sp)
    stw     r0, 0x138(sp)
    lwz     r3, 0x0(r27)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    lwz     r3, 0x24(r31)
    li      r4, 0x9
    bl      init__9TCardSaveFi
    b       branch_0x802b63a8

branch_0x802b62e4:
    lwz     r3, 0x20(r31)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    beq-    branch_0x802b6324
    lis     r3, gpApplication@ha
    lfs     f1, -0x64(r2)
    addi    r3, r3, gpApplication@l
    lfs     f2, -0x68(r2)
    lwz     r3, 0x34(r3)
    li      r4, 0x4
    bl      startWipe__9TSMSFaderFUlff
    b       branch_0x802b6370

branch_0x802b6324:
    lis     r3, gpApplication@ha
    lfs     f1, -0x64(r2)
    addi    r3, r3, gpApplication@l
    lfs     f2, -0x68(r2)
    addi    r27, r3, 0x34
    lwz     r3, 0x34(r3)
    li      r4, 0xf
    bl      startWipe__9TSMSFaderFUlff
    li      r3, 0x0
    stb     r3, 0x12c(sp)
    li      r0, 0xff
    addi    r4, sp, 0x130
    stb     r3, 0x12d(sp)
    stb     r3, 0x12e(sp)
    stb     r0, 0x12f(sp)
    lwz     r0, 0x12c(sp)
    stw     r0, 0x130(sp)
    lwz     r3, 0x0(r27)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
branch_0x802b6370:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x9
    bne-    branch_0x802b639c
    lwz     r27, R13Off_m0x6044(r13)
    bl      SMSGetVSyncTimesPerSec__Fv
    bl      __cvt_fp2unsigned
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    bl      fadeOutAllSound__6MSoundFUl
branch_0x802b639c:
    li      r3, 0x0
    li      r4, 0x3e8
    bl      THPPlayerSetVolume
branch_0x802b63a8:
    lwz     r0, 0x14c(sp)
    stw     r0, 0x1c(r31)
branch_0x802b63b0:
    mr      r3, r30
branch_0x802b63b4:
    lmw     r27, 0x25c(sp)
    lwz     r0, 0x274(sp)
    addi    sp, sp, 0x270
    mtlr    r0
    blr


.globl decideNextMode__14TMovieDirectorFPl
decideNextMode__14TMovieDirectorFPl: # 0x802b63c8
    mflr    r0
    lis     r5, gpApplication@ha
    stw     r0, 0x4(sp)
    addi    r5, r5, gpApplication@l
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r5, 0x18
    stw     r30, 0x90(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x8c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x18(r5)
    cmplwi  r5, 0xe
    beq-    branch_0x802b6420
    addi    r0, r5, -0xf
    cmplwi  r0, 0x2
    ble-    branch_0x802b6420
    addis   r5, r5, 0x1
    lwz     r3, R13Off_m0x6060(r13)
    addi    r5, r5, 0x391
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
branch_0x802b6420:
    lwz     r4, 0x20(r29)
    li      r5, 0x1
    lhz     r6, -0x6008(r13)
    li      r3, 0x1
    lha     r0, 0x78(r4)
    slw     r0, r5, r0
    clrlwi  r0, r0, 16
    and.    r0, r6, r0
    beq-    branch_0x802b644c
    li      r3, 0x4
    b       branch_0x802b6564

branch_0x802b644c:
    lwz     r4, 0x0(r31)
    cmplwi  r4, 0x2
    bne-    branch_0x802b6468
    li      r0, 0x12
    stw     r0, 0x0(r31)
    li      r3, 0x6
    b       branch_0x802b6564

branch_0x802b6468:
    cmplwi  r4, 0x12
    bne-    branch_0x802b647c
    li      r0, 0x4
    stw     r0, 0x0(r30)
    b       branch_0x802b6564

branch_0x802b647c:
    cmplwi  r4, 0x3
    bne-    branch_0x802b6494
    li      r0, 0x13
    stw     r0, 0x0(r31)
    li      r3, 0x6
    b       branch_0x802b6564

branch_0x802b6494:
    cmplwi  r4, 0x13
    bne-    branch_0x802b64a8
    li      r0, 0x4
    stw     r0, 0x0(r30)
    b       branch_0x802b6564

branch_0x802b64a8:
    cmplwi  r4, 0xc
    bne-    branch_0x802b64d8
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    addi    r4, r3, 0x12
    li      r0, 0xf
    stb     r0, 0x12(r3)
    li      r0, 0x0
    li      r3, 0x5
    stb     r0, 0x1(r4)
    sth     r0, 0x2(r4)
    b       branch_0x802b6564

branch_0x802b64d8:
    cmplwi  r4, 0xe
    bne-    branch_0x802b6510
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x77
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    bne-    branch_0x802b6500
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x77
    bl      setShineFlag__12TFlagManagerFUc
branch_0x802b6500:
    li      r0, 0xf
    stw     r0, 0x0(r31)
    li      r3, 0x6
    b       branch_0x802b6564

branch_0x802b6510:
    cmplwi  r4, 0xf
    bne-    branch_0x802b6548
    lwz     r3, R13Off_m0x6060(r13)
    lis     r4, unk_0003fff0@ha
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x78
    bge-    branch_0x802b6534
    li      r0, 0x10
    b       branch_0x802b6538

branch_0x802b6534:
    li      r0, 0x11
branch_0x802b6538:
    clrlwi  r0, r0, 24
    stw     r0, 0x0(r31)
    li      r3, 0x6
    b       branch_0x802b6564

branch_0x802b6548:
    addi    r0, r4, unk_0003fff0@l
    cmplwi  r0, 0x1
    bgt-    branch_0x802b6560
    li      r0, 0x3
    stw     r0, 0x0(r30)
    b       branch_0x802b6564

branch_0x802b6560:
    li      r3, 0x5
branch_0x802b6564:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0x98
    blr


.globl __dt__14TMovieDirectorFv
__dt__14TMovieDirectorFv: # 0x802b6580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr.     r31, r3
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    beq-    branch_0x802b6650
    lis     r3, __vvt__14TMovieDirector@ha
    addi    r3, r3, __vvt__14TMovieDirector@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x20
    addi    r3, r2, R2Off_m0x5c
    stw     r0, 0xc(r31)
    bl      getVolume__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802b65c8
    bl      unmountFixed__13JKRMemArchiveFv
branch_0x802b65c8:
    lis     r3, unk_803a8cd0@ha
    addi    r3, r3, unk_803a8cd0@l
    bl      getVolume__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802b65e0
    bl      unmountFixed__13JKRMemArchiveFv
branch_0x802b65e0:
    lwz     r3, R13Off_m0x6044(r13)
    bl      stopAllSound__6MSoundFv
    bl      THPPlayerStop
    bl      THPPlayerClose
    bl      THPPlayerQuit
    lwz     r3, R13Off_m0x60f0(r13)
    bl      reset__9RumbleMgrFv
    lwz     r3, 0x20(r31)
    cmplwi  r31, 0x0
    lhz     r0, 0xe2(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0xe2(r3)
    beq-    branch_0x802b6640
    lis     r3, __vvt__Q26JDrama9TDirector@h
    addi    r3, r3, __vvt__Q26JDrama9TDirector@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x20
    addi    r3, r31, 0xc
    stw     r0, 0xc(r31)
    li      r4, 0x0
    bl      __dt__Q26JStage7TSystemFv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802b6640:
    extsh.  r0, r30
    ble-    branch_0x802b6650
    mr      r3, r31
    bl      __dl__FPv
branch_0x802b6650:
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl rsetup__14TMovieDirectorFv
rsetup__14TMovieDirectorFv: # 0x802b666c
    mflr    r0
    lis     r4, unk_803a8b88@ha
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x0
    stwu    sp, -0x318(sp)
    stfd    f31, 0x310(sp)
    stfd    f30, 0x308(sp)
    stmw    r25, 0x2ec(sp)
    addi    r30, r4, unk_803a8b88@l
    addi    r31, r3, 0x0
    addi    r3, r30, 0x154
    li      r4, 0x0
    bl      SMSLoadArchive__FPCcPvUlP7JKRHeap
    addi    r26, r3, 0x0
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802b66c0
    mr      r3, r27
    bl      __ct__13JKRMemArchiveFv
branch_0x802b66c0:
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    addi    r28, r3, 0x18
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x14
    bge-    branch_0x802b6734
    cmpwi   r0, 0x10
    bge-    branch_0x802b66f4
    b       branch_0x802b6734

branch_0x802b66f4:
    addi    r3, r30, 0x168
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      SMSLoadArchive__FPCcPvUlP7JKRHeap
    addi    r26, r3, 0x0
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802b6724
    mr      r3, r29
    bl      __ct__13JKRMemArchiveFv
branch_0x802b6724:
    addi    r3, r29, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
branch_0x802b6734:
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802b6794
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    stw     r29, 0x268(sp)
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    stw     r0, 0x0(r29)
    addi    r3, r30, 0x17c
    stw     r3, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r29)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r29)
    li      r0, 0x0
    addi    r4, sp, 0x1e0
    sth     r0, 0xc(r29)
    lwz     r26, 0x268(sp)
    addi    r3, r26, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r26)
branch_0x802b6794:
    stw     r29, 0x10(r31)
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802b67f8
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    stw     r25, 0x264(sp)
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    stw     r0, 0x0(r25)
    addi    r3, r30, 0x18c
    stw     r3, 0x4(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r25)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r25)
    li      r0, 0x0
    addi    r4, sp, 0x1d8
    sth     r0, 0xc(r25)
    lwz     r26, 0x264(sp)
    addi    r3, r26, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r26)
branch_0x802b67f8:
    addi    r26, r29, 0x10
    stw     r25, 0x2c8(sp)
    addi    r3, sp, 0x13c
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x13c(sp)
    addi    r3, sp, 0x260
    addi    r4, sp, 0x138
    stw     r0, 0x138(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x260(sp)
    addi    r5, sp, 0x1d4
    addi    r4, r26, 0x0
    stw     r0, 0x25c(sp)
    addi    r3, sp, 0x1d0
    addi    r6, sp, 0x2c8
    lwz     r0, 0x25c(sp)
    stw     r0, 0x1d4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, r2, R2Off_m0x54
    bl      DVDChangeDir
    lwz     r0, 0x0(r28)
    addi    r29, r30, 0x198
    cmplwi  r0, 0x14
    blt-    branch_0x802b6864
    li      r26, 0x0
    b       branch_0x802b6878

branch_0x802b6864:
    lis     r3, movies_2059@ha
    slwi    r4, r0, 2
    addi    r0, r3, movies_2059@l
    add     r3, r0, r4
    lwz     r26, 0x0(r3)
branch_0x802b6878:
    cmplwi  r26, 0x0
    addi    r3, r26, 0x0
    beq-    branch_0x802b6894
    bl      DVDConvertPathToEntrynum
    cmpwi   r3, -0x1
    beq-    branch_0x802b6894
    mr      r29, r26
branch_0x802b6894:
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802b68b0
    addi    r3, r25, 0x0
    addi    r4, r30, 0x1ac
    bl      __ct__10TTHPRenderFPCc
branch_0x802b68b0:
    lwz     r4, 0x2c8(sp)
    addi    r3, sp, 0x134
    stw     r25, 0x2c0(sp)
    addi    r26, r4, 0x10
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x134(sp)
    addi    r3, sp, 0x254
    addi    r4, sp, 0x130
    stw     r0, 0x130(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x254(sp)
    addi    r5, sp, 0x1c4
    addi    r4, r26, 0x0
    stw     r0, 0x250(sp)
    addi    r3, sp, 0x1c0
    addi    r6, sp, 0x2c0
    lwz     r0, 0x250(sp)
    stw     r0, 0x1c4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802b691c
    mr      r3, r25
    lwz     r4, 0x2c0(sp)
    bl      __ct__14TMovieSubTitleFPC10TTHPRender
branch_0x802b691c:
    stw     r25, 0x28(r31)
    addi    r4, r29, 0x0
    addi    r5, r27, 0x0
    lwz     r3, 0x28(r31)
    bl      setupResource__14TMovieSubTitleFPCcP10JKRArchive
    lwz     r4, 0x2c8(sp)
    addi    r3, sp, 0x12c
    addi    r26, r4, 0x10
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x12c(sp)
    addi    r3, sp, 0x248
    addi    r4, sp, 0x128
    stw     r0, 0x128(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x248(sp)
    addi    r5, sp, 0x1b4
    addi    r4, r26, 0x0
    stw     r0, 0x244(sp)
    addi    r3, sp, 0x1b0
    addi    r6, r31, 0x28
    lwz     r0, 0x244(sp)
    stw     r0, 0x1b4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802b6998
    mr      r3, r25
    lwz     r4, 0x2c0(sp)
    bl      __ct__12TMovieRumbleFPC10TTHPRender
branch_0x802b6998:
    stw     r25, 0x2c(r31)
    mr      r4, r29
    lwz     r3, 0x2c(r31)
    bl      init__12TMovieRumbleFPCc
    lwz     r4, 0x2c8(sp)
    addi    r3, sp, 0x124
    addi    r26, r4, 0x10
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x124(sp)
    addi    r3, sp, 0x23c
    addi    r4, sp, 0x120
    stw     r0, 0x120(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x23c(sp)
    addi    r5, sp, 0x1a4
    addi    r4, r26, 0x0
    stw     r0, 0x238(sp)
    addi    r3, sp, 0x1a0
    addi    r6, r31, 0x2c
    lwz     r0, 0x238(sp)
    stw     r0, 0x1a4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x0(r28)
    cmpwi   r0, 0x12
    bge-    branch_0x802b6a0c
    cmpwi   r0, 0x10
    bge-    branch_0x802b6a18
    b       branch_0x802b6b00

branch_0x802b6a0c:
    cmpwi   r0, 0x14
    bge-    branch_0x802b6b00
    b       branch_0x802b6a84

branch_0x802b6a18:
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802b6a34
    addi    r3, r25, 0x0
    addi    r4, r30, 0x1b8
    bl      __ct__13TEndingStringFPCc
branch_0x802b6a34:
    stw     r25, 0x34(r31)
    addi    r3, sp, 0x11c
    lwz     r4, 0x2c8(sp)
    addi    r26, r4, 0x10
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x11c(sp)
    addi    r3, sp, 0x22c
    addi    r4, sp, 0x118
    stw     r0, 0x118(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x22c(sp)
    addi    r5, sp, 0x194
    addi    r4, r26, 0x0
    stw     r0, 0x228(sp)
    addi    r3, sp, 0x190
    addi    r6, r31, 0x34
    lwz     r0, 0x228(sp)
    stw     r0, 0x194(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
branch_0x802b6a84:
    li      r3, 0x320
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802b6aa4
    addi    r3, r25, 0x0
    addi    r4, r30, 0x1c8
    li      r5, 0x1
    bl      __ct__9TCardSaveFPCcb
branch_0x802b6aa4:
    stw     r25, 0x24(r31)
    lwz     r3, 0x24(r31)
    lwz     r4, 0x20(r31)
    bl      initData__9TCardSaveFP13TMarioGamePad
    lwz     r4, 0x2c8(sp)
    addi    r3, sp, 0x114
    addi    r26, r4, 0x10
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x114(sp)
    addi    r3, sp, 0x220
    addi    r4, sp, 0x110
    stw     r0, 0x110(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x220(sp)
    addi    r5, sp, 0x184
    addi    r4, r26, 0x0
    stw     r0, 0x21c(sp)
    addi    r3, sp, 0x180
    addi    r6, r31, 0x24
    lwz     r0, 0x21c(sp)
    stw     r0, 0x184(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
branch_0x802b6b00:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802b6b28
    li      r0, 0x0
    sth     r0, 0x280(sp)
    addi    r5, sp, 0x280
    addi    r3, r25, 0x0
    addi    r4, r30, 0x1d4
    bl      __ct__Q26JDrama11TDStageDispFPCcQ26JDrama10TFlagT_Us_
branch_0x802b6b28:
    stw     r25, 0x2bc(sp)
    addi    r3, sp, 0x10c
    lwz     r4, 0x14(r31)
    addi    r26, r4, 0x10
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x10c(sp)
    addi    r3, sp, 0x214
    addi    r4, sp, 0x108
    stw     r0, 0x108(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x214(sp)
    addi    r5, sp, 0x174
    addi    r4, r26, 0x0
    stw     r0, 0x210(sp)
    addi    r3, sp, 0x170
    addi    r6, sp, 0x2bc
    lwz     r0, 0x210(sp)
    stw     r0, 0x174(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    bl      SMSGetTitleRenderHeight__Fv
    clrlwi  r26, r3, 16
    bl      SMSGetTitleRenderWidth__Fv
    clrlwi  r6, r3, 16
    addi    r7, r26, 0x0
    addi    r3, sp, 0x2ac
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    lwz     r3, 0x2bc(sp)
    bl      getEfbCtrlDisp__Q26JDrama11TDStageDispFv
    addi    r4, sp, 0x2ac
    bl      setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802b6ca8
    lwz     r7, 0x2ac(sp)
    lis     r5, 0x4330
    lwz     r6, 0x2b4(sp)
    addi    r4, r30, 0x1e4
    lwz     r3, 0x2b0(sp)
    lwz     r0, 0x2b8(sp)
    subf    r6, r7, r6
    xoris   r6, r6, 0x8000
    lfd     f2, -0x40(r2)
    subf    r0, r3, r0
    xoris   r0, r0, 0x8000
    stw     r6, 0x2e4(sp)
    stw     r0, 0x2dc(sp)
    stw     r5, 0x2e0(sp)
    stw     r5, 0x2d8(sp)
    lfd     f1, 0x2e0(sp)
    lfd     f0, 0x2d8(sp)
    stw     r27, 0x104(sp)
    fsubs   f30, f1, f2
    fsubs   f31, f0, f2
    lwz     r3, 0x104(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r28, 0x104(sp)
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r28)
    addi    r3, r28, 0x10
    lfs     f1, -0x68(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_802b6e98
    li      r4, 0x0
    lis     r3, __vvt__Q26JStage7TObject@h
    sth     r4, 0x1c(r28)
    addi    r0, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TCamera@h
    stw     r0, 0x20(r27)
    addi    r0, r3, __vvt__Q26JStage7TCamera@l
    lis     r3, __vvt__Q26JDrama7TCamera@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama7TCamera@l
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    lis     r3, __vvt__Q26JDrama10TOrthoProj@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama10TOrthoProj@l
    addi    r0, r3, 0x24
    sth     r4, 0x24(r27)
    lfs     f0, -0x4c(r2)
    stfs    f0, 0x28(r27)
    lfs     f0, -0x64(r2)
    stfs    f0, 0x2c(r27)
    stw     r3, 0x0(r27)
    stw     r0, 0x20(r27)
    lfs     f0, -0x68(r2)
    stfs    f0, 0x30(r27)
    stfs    f0, 0x34(r27)
    stfs    f30, 0x38(r27)
    stfs    f31, 0x3c(r27)
branch_0x802b6ca8:
    lwz     r4, 0x2c8(sp)
    addi    r3, sp, 0x100
    stw     r27, 0x2a8(sp)
    addi    r26, r4, 0x10
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x100(sp)
    addi    r3, sp, 0x204
    addi    r4, sp, 0xfc
    stw     r0, 0xfc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x204(sp)
    addi    r5, sp, 0x160
    addi    r4, r26, 0x0
    stw     r0, 0x200(sp)
    addi    r3, sp, 0x15c
    addi    r6, sp, 0x2a8
    lwz     r0, 0x200(sp)
    stw     r0, 0x160(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802b6d18
    addi    r3, r25, 0x0
    addi    r4, sp, 0x2ac
    addi    r5, r30, 0x1f4
    bl      __ct__Q26JDrama7TScreenFRCQ26JDrama5TRectPCc
branch_0x802b6d18:
    stw     r25, 0x2a4(sp)
    addi    r3, sp, 0xf4
    lwz     r4, 0x2bc(sp)
    lwz     r4, 0x14(r4)
    addi    r26, r4, 0x10
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xf4(sp)
    addi    r3, sp, 0x1f8
    addi    r4, sp, 0xf0
    stw     r0, 0xf0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1f8(sp)
    addi    r5, sp, 0x150
    addi    r4, r26, 0x0
    stw     r0, 0x1f4(sp)
    addi    r3, sp, 0x14c
    addi    r6, sp, 0x2a4
    lwz     r0, 0x1f4(sp)
    stw     r0, 0x150(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x2a4(sp)
    lwz     r4, 0x2a8(sp)
    bl      assignCamera__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r3, 0x2a4(sp)
    lwz     r4, 0x2c8(sp)
    bl      assignViewObj__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    li      r3, 0x0
    bl      THPPlayerInit
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      THPPlayerOpen
    bl      THPPlayerCalcNeedMemory
    li      r4, 0x20
    bl      __nwa__FUli
    bl      THPPlayerSetBuffer
    li      r26, 0x0
    addi    r3, sp, 0x290
    bl      THPPlayerGetAudioInfo
    cmpwi   r3, 0x0
    beq-    branch_0x802b6de0
    lwz     r0, 0x29c(sp)
    cmplwi  r0, 0x2
    blt-    branch_0x802b6de0
    lwz     r3, R13Off_m0x6060(r13)
    lis     r4, 0xa
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x2
    bne-    branch_0x802b6de0
    li      r26, 0x1
branch_0x802b6de0:
    addi    r5, r26, 0x0
    li      r3, 0x0
    li      r4, 0x0
    bl      THPPlayerPrepare
    cmpwi   r3, 0x0
    bne-    branch_0x802b6e00
    li      r3, 0x1
    b       branch_0x802b6e7c

branch_0x802b6e00:
    addi    r3, sp, 0x284
    bl      THPPlayerGetVideoInfo
    bl      SMSGetGameRenderHeight__Fv
    lwz     r0, 0x288(sp)
    clrlwi  r3, r3, 16
    subf    r0, r0, r3
    srwi    r26, r0, 1
    bl      SMSGetGameRenderWidth__Fv
    lwz     r0, 0x284(sp)
    clrlwi  r4, r3, 16
    lwz     r5, 0x2c0(sp)
    addi    r3, r2, R2Off_m0x48
    subf    r0, r0, r4
    srwi    r0, r0, 1
    stw     r0, 0x278(sp)
    stw     r26, 0x27c(sp)
    lwz     r4, 0x278(sp)
    lwz     r0, 0x27c(sp)
    stw     r4, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r0, 0x284(sp)
    lwz     r5, 0x2c0(sp)
    stw     r0, 0x270(sp)
    lwz     r0, 0x288(sp)
    stw     r0, 0x274(sp)
    lwz     r4, 0x270(sp)
    lwz     r0, 0x274(sp)
    stw     r4, 0x18(r5)
    stw     r0, 0x1c(r5)
    bl      DVDChangeDir
    li      r3, 0x0
branch_0x802b6e7c:
    lmw     r25, 0x2ec(sp)
    lwz     r0, 0x31c(sp)
    lfd     f31, 0x310(sp)
    lfd     f30, 0x308(sp)
    mtlr    r0
    addi    sp, sp, 0x318
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_802b6e98
set_f___Q29JGeometry8TVec3_f_Ffff_802b6e98: # 0x802b6e98
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl setup__14TMovieDirectorFPQ26JDrama8TDisplayP13TMarioGamePad
setup__14TMovieDirectorFPQ26JDrama8TDisplayP13TMarioGamePad: # 0x802b6ea8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r26, 0x40(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    li      r3, 0x34
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802b6f74
    stw     r28, 0x28(sp)
    lis     r3, unk_803a8d88@ha
    addi    r4, r3, unk_803a8d88@l
    stw     r28, 0x38(sp)
    lwz     r3, 0x28(sp)
    stw     r28, 0x30(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x28(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r26, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r26, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r27, 0x30(sp)
    addi    r4, sp, 0x24
    addi    r3, r27, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r27)
    lis     r4, __vvt__Q26JDrama12TDStageGroup@h
    addi    r0, r4, __vvt__Q26JDrama12TDStageGroup@l
    lwz     r5, 0x38(sp)
    lis     r3, unk_803a8d98@ha
    addi    r4, r3, unk_803a8d98@l
    stw     r0, 0x0(r5)
    addi    r27, r5, 0x20
    stw     r27, 0x20(sp)
    lwz     r3, 0x20(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x20(sp)
    li      r4, 0x0
    stw     r26, 0x0(r3)
    addi    r3, r3, 0xc
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__Q26JDrama9TFrmGXSet@h
    addi    r0, r3, __vvt__Q26JDrama9TFrmGXSet@l
    stw     r0, 0x0(r27)
    stw     r30, 0x10(r27)
branch_0x802b6f74:
    stw     r28, 0x14(r29)
    li      r0, 0x1
    stw     r31, 0x20(r29)
    lwz     r3, 0x20(r29)
    sth     r0, 0xe2(r3)
    lwz     r3, R13Off_m0x60f0(r13)
    bl      reset__9RumbleMgrFv
    lwz     r6, R13Off_m0x6040(r13)
    lis     r4, gSetupThread@ha
    lis     r3, setupThreadFunc__14TMovieDirectorFPv@h
    addi    r28, r4, gSetupThread@l
    addi    r4, r3, setupThreadFunc__14TMovieDirectorFPv@l
    addi    r3, r28, 0x0
    addi    r5, r29, 0x0
    addis   r6, r6, 0x1
    lis     r7, 0x1
    li      r8, 0x11
    li      r9, 0x0
    bl      OSCreateThread
    mr      r3, r28
    bl      OSResumeThread
    lmw     r26, 0x40(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl setupThreadFunc__14TMovieDirectorFPv
setupThreadFunc__14TMovieDirectorFPv: # 0x802b6fdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      rsetup__14TMovieDirectorFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__14TMovieDirectorFv
__ct__14TMovieDirectorFv: # 0x802b6ffc
    mflr    r0
    lis     r4, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r4, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lis     r3, unk_803a8da4@ha
    stw     r0, 0x0(r31)
    addi    r3, r3, unk_803a8da4@l
    stw     r3, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JStage7TObject@h
    addi    r0, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TSystem@h
    stw     r0, 0xc(r31)
    addi    r0, r3, __vvt__Q26JStage7TSystem@l
    lis     r3, __vvt__Q26JDrama9TDirector@h
    stw     r0, 0xc(r31)
    addi    r3, r3, __vvt__Q26JDrama9TDirector@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x20
    lis     r3, __vvt__14TMovieDirector@ha
    stw     r0, 0xc(r31)
    addi    r5, r3, __vvt__14TMovieDirector@l
    li      r6, 0x0
    stw     r6, 0x10(r31)
    addi    r4, r5, 0x20
    li      r0, 0x1
    stw     r6, 0x14(r31)
    mr      r3, r31
    stw     r5, 0x0(r31)
    stw     r4, 0xc(r31)
    stb     r0, 0x18(r31)
    stw     r6, 0x1c(r31)
    stw     r6, 0x20(r31)
    stw     r6, 0x24(r31)
    sth     r6, 0x30(r31)
    stw     r6, 0x34(r31)
    stw     r6, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getStreamMovieName__14TMovieDirectorFUl
getStreamMovieName__14TMovieDirectorFUl: # 0x802b70b4
    cmplwi  r3, 0x14
    blt-    branch_0x802b70c4
    li      r3, 0x0
    blr

branch_0x802b70c4:
    lis     r4, movies_2059@ha
    slwi    r3, r3, 2
    addi    r0, r4, movies_2059@l
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
    blr


.globl perform__13TEndingStringFUlPQ26JDrama9TGraphics
perform__13TEndingStringFUlPQ26JDrama9TGraphics: # 0x802b70dc
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x128(sp)
    stw     r31, 0x124(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x802b71a8
    lbz     r0, 0x10(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x802b715c
    bge-    branch_0x802b7118
    cmpwi   r0, 0x0
    beq-    branch_0x802b71a8
    bge-    branch_0x802b7124
    b       branch_0x802b71a8

branch_0x802b7118:
    cmpwi   r0, 0x4
    bge-    branch_0x802b71a8
    b       branch_0x802b7180

branch_0x802b7124:
    lwz     r3, 0x1c(r31)
    lbz     r6, 0xcc(r3)
    addi    r6, r6, 0x8
    clrlwi  r0, r6, 16
    cmplwi  r0, 0xff
    ble-    branch_0x802b7150
    li      r0, 0x2
    stb     r0, 0x10(r31)
    li      r0, 0x0
    li      r6, 0xff
    stw     r0, 0x14(r31)
branch_0x802b7150:
    lwz     r3, 0x1c(r31)
    stb     r6, 0xcc(r3)
    b       branch_0x802b71a8

branch_0x802b715c:
    lwz     r3, 0x14(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x14(r31)
    lwz     r0, 0x14(r31)
    cmpwi   r0, 0xe1
    ble-    branch_0x802b71a8
    li      r0, 0x3
    stb     r0, 0x10(r31)
    b       branch_0x802b71a8

branch_0x802b7180:
    lwz     r3, 0x1c(r31)
    lbz     r6, 0xcc(r3)
    addi    r6, r6, -0x8
    extsh.  r0, r6
    bge-    branch_0x802b71a0
    li      r0, 0x0
    stb     r0, 0x10(r31)
    li      r6, 0x0
branch_0x802b71a0:
    lwz     r3, 0x1c(r31)
    stb     r6, 0xcc(r3)
branch_0x802b71a8:
    rlwinm. r0, r4, 0, 28, 28
    beq-    branch_0x802b7208
    lbz     r0, 0x10(r31)
    cmpwi   r0, 0x4
    bge-    branch_0x802b7208
    cmpwi   r0, 0x1
    bge-    branch_0x802b71c8
    b       branch_0x802b7208

branch_0x802b71c8:
    addi    r4, r5, 0x54
    addi    r3, sp, 0x2c
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x2c
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x18(r31)
    addi    r6, sp, 0x2c
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    lis     r3, __vvt__14J2DGrafContext@h
    stw     r0, 0x2c(sp)
    addi    r0, r3, __vvt__14J2DGrafContext@l
    stw     r0, 0x2c(sp)
branch_0x802b7208:
    lwz     r0, 0x12c(sp)
    lwz     r31, 0x124(sp)
    addi    sp, sp, 0x128
    mtlr    r0
    blr


.globl __ct__13TEndingStringFPCc
__ct__13TEndingStringFPCc: # 0x802b721c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r31, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__13TEndingString@ha
    sth     r4, 0xc(r31)
    addi    r0, r3, __vvt__13TEndingString@l
    addi    r3, r2, R2Off_m0x5c
    stw     r0, 0x0(r31)
    stb     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r4, 0x18(r31)
    stw     r4, 0x1c(r31)
    bl      getVolume__13JKRFileLoaderFPCc
    addi    r31, r3, 0x0
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b72b4
    lis     r3, unk_803a8db0@ha
    addi    r4, r3, unk_803a8db0@l
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x802b72b4:
    lwz     r31, 0x8(sp)
    lis     r3, unk_524f4f54@h
    addi    r4, r3, unk_524f4f54@l
    stw     r30, 0x18(r31)
    lwz     r3, 0x18(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1c(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    lwz     r4, 0x1c(r31)
    stb     r0, 0xcc(r4)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__13TEndingStringFv
__dt__13TEndingStringFv: # 0x802b7304
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802b735c
    lis     r3, __vvt__13TEndingString@ha
    addi    r0, r3, __vvt__13TEndingString@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802b734c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802b734c:
    extsh.  r0, r31
    ble-    branch_0x802b735c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802b735c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MovieDirector_cpp
__sinit_MovieDirector_cpp: # 0x802b7378
    mflr    r0
    lis     r3, unk_803fd320@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fd320@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802b73c0
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x802b73c0:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802b73f0
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x802b73f0:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802b7420
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x802b7420:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802b7450
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x802b7450:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802b7480
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x802b7480:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802b74b0
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x802b74b0:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802b74e0
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x802b74e0:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802b7510
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x802b7510:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802b7540
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x802b7540:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802b7570
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x802b7570:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802b75a0
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x802b75a0:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802b75d0
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x802b75d0:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802b7600
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x802b7600:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802b7630
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x802b7630:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802b7660
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x802b7660:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_802b7674
unk_802b7674: # 0x802b7674
    addi    r3, r3, -0xc
    b       __dt__14TMovieDirectorFv

