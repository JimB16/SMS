
.globl __dt__9TCardSaveFv
__dt__9TCardSaveFv: # 0x80157e7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80157ed4
    lis     r3, 0x803c
    addi    r0, r3, 0x7a0
    stw     r0, 0x0(r30)
    beq-    branch_0x80157ec4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80157ec4:
    extsh.  r0, r31
    ble-    branch_0x80157ed4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80157ed4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getNextState__9TCardSaveFv
getNextState__9TCardSaveFv: # 0x80157ef0
    lbz     r0, 0x2df(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80157f28
    lwz     r0, 0x310(r3)
    cmpwi   r0, 0x19
    bne-    branch_0x80157f10
    li      r3, 0x1
    blr

branch_0x80157f10:
    cmpwi   r0, 0x1
    bne-    branch_0x80157f20
    li      r3, 0x0
    blr

branch_0x80157f20:
    li      r3, 0x3
    blr

branch_0x80157f28:
    li      r3, 0x3
    blr


.globl execMovement___9TCardSaveFv
execMovement___9TCardSaveFv: # 0x80157f30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x5e8(sp)
    stmw    r23, 0x5c4(sp)
    mr      r31, r3
    lwz     r3, 0x270(r3)
    lwz     r29, 0x310(r31)
    lhz     r0, 0xe2(r3)
    lwz     r30, 0x10(r31)
    ori     r0, r0, 0x1
    sth     r0, 0xe2(r3)
    lwz     r0, 0x310(r31)
    cmplwi  r0, 0x35
    bgt-    branch_0x8015b178
    lis     r3, 0x803c
    addi    r3, r3, 0x7c4
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r0, 0x38(r3)
    stb     r0, 0x2ea(r31)
    lwz     r0, 0x308(r31)
    cmpwi   r0, 0x7
    bne-    branch_0x80157fa8
    li      r0, 0x2e
    stw     r0, 0x310(r31)
    b       branch_0x8015b178

branch_0x80157fa8:
    cmpwi   r0, 0x9
    bne-    branch_0x80157fbc
    li      r0, 0x34
    stw     r0, 0x310(r31)
    b       branch_0x8015b178

branch_0x80157fbc:
    li      r0, 0x2
    stw     r0, 0x310(r31)
    addi    r4, r31, 0x278
    lwz     r3, -0x603c(r13)
    bl      getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo
    b       branch_0x8015b178


.incbin "./baserom/code/Text_0x80005600.bin", 0x1529d4, 0x8015b178 - 0x80157fd4
branch_0x8015b178:
    lwz     r0, 0x310(r31)
    cmpw    r29, r0
    beq-    branch_0x8015b1b4
    stw     r0, 0x314(r31)
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, 0x318(r31)
    stw     r3, 0x2e0(r31)
    stb     r3, 0x2f8(r31)
    stb     r0, 0x2f9(r31)
    stb     r0, 0x2dc(r31)
    stb     r3, 0x30c(r31)
    stb     r3, 0x2dd(r31)
    stw     r3, 0x10(r31)
    stw     r3, 0x44(r31)
branch_0x8015b1b4:
    lwz     r0, 0x10(r31)
    cmpw    r30, r0
    beq-    branch_0x8015b224
    cmpwi   r30, 0x1
    bne-    branch_0x8015b1f0
    lwz     r3, -0x6044(r13)
    li      r4, 0x4819
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015b1f0
    li      r3, 0x4819
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015b1f0:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x8015b224
    lwz     r3, -0x6044(r13)
    li      r4, 0x481a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015b224
    li      r3, 0x481a
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015b224:
    lmw     r23, 0x5c4(sp)
    lwz     r0, 0x5ec(sp)
    addi    sp, sp, 0x5e8
    mtlr    r0
    blr


.globl waitForAnyKeyBM__9TCardSaveF10TEProgress
waitForAnyKeyBM__9TCardSaveF10TEProgress: # 0x8015b238
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c8(sp)
    stmw    r25, 0x1ac(sp)
    mr      r30, r3
    li      r31, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x8015ba20
    bge-    branch_0x8015b278
    cmpwi   r0, 0x1
    beq-    branch_0x8015b53c
    bge-    branch_0x8015b7e0
    cmpwi   r0, 0x0
    bge-    branch_0x8015b284
    b       branch_0x8015ba54

branch_0x8015b278:
    cmpwi   r0, 0x5
    beq-    branch_0x8015ba4c
    b       branch_0x8015ba54

branch_0x8015b284:
    lwz     r0, 0x310(r30)
    lis     r3, 0x803c
    addi    r27, r3, 0x6c8
    lwz     r28, 0x12c(r30)
    slwi    r0, r0, 2
    add     r4, r27, r0
    lwz     r3, 0x2e4(r30)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r0, 0x310(r30)
    lwz     r28, 0x130(r30)
    slwi    r0, r0, 2
    lwz     r3, 0x2e4(r30)
    add     r4, r27, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r3, 0xf8(r30)
    li      r0, 0x0
    li      r29, 0x1
    stb     r0, 0xc(r3)
    lis     r28, 0x4330
    li      r4, 0x14
    lwz     r3, 0x128(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x134(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x128(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x134(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x128(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x134(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0xfc(r30)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x100(r30)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0xe0(r30)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r6, 0xe8(r30)
    lwz     r0, 0xf0(r30)
    lwz     r5, 0xe4(r30)
    lwz     r3, 0xec(r30)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0x19c(sp)
    lwz     r27, 0xe0(r30)
    fmr     f4, f3
    stw     r3, 0x1a4(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r27, 0x2c
    stw     r28, 0x1a0(sp)
    stw     r28, 0x198(sp)
    lfd     f1, 0x1a0(sp)
    lfd     f0, 0x198(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4f(r27)
    addi    r3, r27, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r27)
    lwz     r0, 0x10(r27)
    lwz     r6, 0x4(r27)
    subf    r7, r5, r0
    lwz     r0, 0xc(r27)
    subf    r5, r25, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r26, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x194(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x184(sp)
    stw     r5, 0x174(sp)
    stw     r0, 0x164(sp)
    stw     r28, 0x190(sp)
    stw     r28, 0x180(sp)
    lfd     f1, 0x190(sp)
    stw     r28, 0x170(sp)
    lfd     f0, 0x180(sp)
    fsubs   f3, f1, f4
    stw     r28, 0x160(sp)
    lfd     f1, 0x170(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x160(sp)
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
    stfd    f3, 0x188(sp)
    stfd    f2, 0x178(sp)
    lwz     r26, 0x18c(sp)
    stfd    f1, 0x168(sp)
    lwz     r25, 0x17c(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x158(sp)
    lwz     r6, 0x16c(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x15c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x144(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x154(sp)
    stw     r6, 0x14c(sp)
    stw     r0, 0x13c(sp)
    stw     r28, 0x150(sp)
    stw     r28, 0x148(sp)
    lfd     f1, 0x150(sp)
    stw     r28, 0x140(sp)
    lfd     f0, 0x148(sp)
    fsubs   f1, f1, f4
    stw     r28, 0x138(sp)
    lfd     f3, 0x140(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x138(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r4, 0x4(r27)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r27)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    stw     r29, 0x10(r30)
    b       branch_0x8015ba54

branch_0x8015b53c:
    lwz     r3, 0xe0(r30)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015ba54
    lbz     r0, 0x2ea(r30)
    li      r29, 0x1
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x154(r3)
    stb     r29, 0xc(r3)
    lwz     r3, 0x150(r30)
    stb     r29, 0xc(r3)
    lwz     r3, 0x130(r30)
    stb     r29, 0xc(r3)
    lbz     r0, 0x2ea(r30)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r3, r3, 0x278
    add     r3, r30, r3
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8015b608
    lwz     r25, 0x124(r30)
    li      r4, 0x0
    lwz     r3, 0x2e4(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r25, 0x128(r30)
    li      r4, 0x0
    lwz     r3, 0x2e4(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x128(r30)
    li      r0, 0x0
    stb     r29, 0xc(r3)
    lwz     r3, 0x134(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r30)
    stb     r0, 0xc(r3)
    b       branch_0x8015b7d4

branch_0x8015b608:
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8015b684
    lwz     r25, 0x124(r30)
    li      r4, 0x19
    lwz     r3, 0x2e4(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r25, 0x128(r30)
    li      r4, 0x19
    lwz     r3, 0x2e4(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x128(r30)
    li      r0, 0x0
    stb     r29, 0xc(r3)
    lwz     r3, 0x134(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r30)
    stb     r0, 0xc(r3)
    b       branch_0x8015b7d4

branch_0x8015b684:
    lwz     r3, 0x128(r30)
    li      r28, 0x0
    stb     r28, 0xc(r3)
    lbz     r0, 0x2ea(r30)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r0, r3, 0x294
    lhzx    r27, r30, r0
    cmplwi  r27, 0x64
    bge-    branch_0x8015b724
    lis     r4, 0x6666
    lwz     r3, 0x148(r30)
    addi    r0, r4, 0x6667
    mulhw   r26, r0, r27
    srawi   r0, r26, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r26, 2
    lwz     r3, 0x14c(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x134(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x138(r30)
    stb     r29, 0xc(r3)
    b       branch_0x8015b7d4

branch_0x8015b724:
    lis     r4, 0x51ec
    lwz     r3, 0x13c(r30)
    subi    r0, r4, 0x7ae1
    mulhw   r0, r0, r27
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    subi    r27, r27, 0x64
    lwz     r3, 0x140(r30)
    lis     r4, 0x6666
    clrlwi  r27, r27, 16
    addi    r0, r4, 0x6667
    mulhw   r26, r0, r27
    srawi   r0, r26, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r26, 2
    lwz     r3, 0x144(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x134(r30)
    stb     r29, 0xc(r3)
    lwz     r3, 0x138(r30)
    stb     r28, 0xc(r3)
branch_0x8015b7d4:
    li      r0, 0x2
    stw     r0, 0x10(r30)
    b       branch_0x8015ba54

branch_0x8015b7e0:
    lwz     r3, 0x2e0(r30)
    cmpwi   r3, 0x12c
    ble-    branch_0x8015ba14
    cmpwi   r0, 0x2
    bne-    branch_0x8015ba08
    lwz     r3, 0x134(r30)
    li      r5, 0x0
    li      r0, 0x3
    stb     r5, 0xc(r3)
    lis     r28, 0x4330
    li      r4, 0x14
    lwz     r3, 0x138(r30)
    stb     r5, 0xc(r3)
    lwz     r3, 0x128(r30)
    stb     r5, 0xc(r3)
    lwz     r3, 0xf8(r30)
    stb     r5, 0xc(r3)
    lwz     r3, 0x130(r30)
    stb     r5, 0xc(r3)
    lwz     r3, 0x150(r30)
    stb     r5, 0xc(r3)
    lwz     r3, 0xfc(r30)
    lwz     r3, 0x0(r3)
    stb     r5, 0xc(r3)
    lwz     r3, 0x100(r30)
    lwz     r3, 0x0(r3)
    stb     r5, 0xc(r3)
    stw     r0, 0x10(r30)
    lwz     r6, 0xe8(r30)
    lwz     r0, 0xf0(r30)
    lwz     r5, 0xe4(r30)
    lwz     r3, 0xec(r30)
    subf    r26, r6, r0
    xoris   r0, r26, 0x8000
    lfs     f1, -0x4a4c(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0x144(sp)
    lwz     r27, 0xe0(r30)
    fmr     f2, f1
    stw     r3, 0x13c(sp)
    lfd     f4, -0x4a38(rtoc)
    addi    r3, r27, 0x2c
    stw     r28, 0x138(sp)
    stw     r28, 0x140(sp)
    lfd     f3, 0x138(sp)
    lfd     f0, 0x140(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r29, 0x1
    stb     r29, 0x4f(r27)
    addi    r3, r27, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r27)
    lwz     r0, 0x10(r27)
    lwz     r5, 0x4(r27)
    subf    r7, r6, r0
    lwz     r0, 0xc(r27)
    subf    r6, r26, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r25, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x14c(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x15c(sp)
    stw     r5, 0x16c(sp)
    stw     r0, 0x17c(sp)
    stw     r28, 0x148(sp)
    stw     r28, 0x158(sp)
    lfd     f1, 0x148(sp)
    stw     r28, 0x168(sp)
    lfd     f0, 0x158(sp)
    fsubs   f3, f1, f4
    stw     r28, 0x178(sp)
    lfd     f1, 0x168(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x178(sp)
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
    stfd    f3, 0x150(sp)
    stfd    f2, 0x160(sp)
    lwz     r26, 0x154(sp)
    stfd    f1, 0x170(sp)
    lwz     r25, 0x164(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x180(sp)
    lwz     r6, 0x174(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x184(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x19c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x18c(sp)
    stw     r6, 0x194(sp)
    stw     r0, 0x1a4(sp)
    stw     r28, 0x188(sp)
    stw     r28, 0x190(sp)
    lfd     f1, 0x188(sp)
    stw     r28, 0x198(sp)
    lfd     f0, 0x190(sp)
    fsubs   f1, f1, f4
    stw     r28, 0x1a0(sp)
    lfd     f3, 0x198(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x1a0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r4, 0x4(r27)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r27)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
branch_0x8015ba08:
    li      r0, 0x3
    stw     r0, 0x10(r30)
    b       branch_0x8015ba54

branch_0x8015ba14:
    addi    r0, r3, 0x1
    stw     r0, 0x2e0(r30)
    b       branch_0x8015ba54

branch_0x8015ba20:
    lwz     r3, 0xe0(r30)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015ba54
    lwz     r3, 0xe0(r30)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r30)
    b       branch_0x8015ba54

branch_0x8015ba4c:
    stw     r4, 0x310(r30)
    li      r31, 0x0
branch_0x8015ba54:
    mr      r3, r31
    lmw     r25, 0x1ac(sp)
    lwz     r0, 0x1cc(sp)
    addi    sp, sp, 0x1c8
    mtlr    r0
    blr


.globl waitForSelect3__9TCardSaveF10TEProgress10TEProgress10TEProgress
waitForSelect3__9TCardSaveF10TEProgress10TEProgress10TEProgress: # 0x8015ba6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x200(sp)
    stmw    r25, 0x1e4(sp)
    mr      r30, r3
    li      r31, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x8015c3a0
    bge-    branch_0x8015baac
    cmpwi   r0, 0x1
    beq-    branch_0x8015bd6c
    bge-    branch_0x8015c034
    cmpwi   r0, 0x0
    bge-    branch_0x8015babc
    b       branch_0x8015c3fc

branch_0x8015baac:
    cmpwi   r0, 0x5
    beq-    branch_0x8015c3cc
    bge-    branch_0x8015c3fc
    b       branch_0x8015c148

branch_0x8015babc:
    lwz     r3, 0x1bc(r30)
    li      r29, 0x1
    lis     r28, 0x4330
    lwz     r3, 0x0(r3)
    li      r4, 0x14
    stb     r29, 0xc(r3)
    lwz     r6, 0x1c4(r30)
    lwz     r0, 0x1cc(r30)
    lwz     r5, 0x1c0(r30)
    lwz     r3, 0x1c8(r30)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0x1d4(sp)
    lwz     r27, 0x1bc(r30)
    fmr     f4, f3
    stw     r3, 0x1dc(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r27, 0x2c
    stw     r28, 0x1d8(sp)
    stw     r28, 0x1d0(sp)
    lfd     f1, 0x1d8(sp)
    lfd     f0, 0x1d0(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4f(r27)
    addi    r3, r27, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r27)
    lwz     r0, 0x10(r27)
    lwz     r6, 0x4(r27)
    subf    r7, r5, r0
    lwz     r0, 0xc(r27)
    subf    r5, r25, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r26, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x1cc(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x1bc(sp)
    stw     r5, 0x1ac(sp)
    stw     r0, 0x19c(sp)
    stw     r28, 0x1c8(sp)
    stw     r28, 0x1b8(sp)
    lfd     f1, 0x1c8(sp)
    stw     r28, 0x1a8(sp)
    lfd     f0, 0x1b8(sp)
    fsubs   f3, f1, f4
    stw     r28, 0x198(sp)
    lfd     f1, 0x1a8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x198(sp)
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
    stfd    f3, 0x1c0(sp)
    stfd    f2, 0x1b0(sp)
    lwz     r26, 0x1c4(sp)
    stfd    f1, 0x1a0(sp)
    lwz     r25, 0x1b4(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x190(sp)
    lwz     r6, 0x1a4(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x194(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x17c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x18c(sp)
    stw     r6, 0x184(sp)
    stw     r0, 0x174(sp)
    stw     r28, 0x188(sp)
    stw     r28, 0x180(sp)
    lfd     f1, 0x188(sp)
    stw     r28, 0x178(sp)
    lfd     f0, 0x180(sp)
    fsubs   f1, f1, f4
    stw     r28, 0x170(sp)
    lfd     f3, 0x178(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x170(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r4, 0x4(r27)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r27)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    li      r28, 0x0
    li      r4, 0x29
    lwz     r3, 0x204(r30)
    stb     r28, 0xc(r3)
    lwz     r25, 0x200(r30)
    lwz     r3, 0x2e4(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r25, 0x204(r30)
    li      r4, 0x29
    lwz     r3, 0x2e4(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r3, 0x1ec(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1d0(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1d4(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1f4(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1d8(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1dc(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1fc(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1e0(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1e4(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x230(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x234(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x238(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x20c(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x210(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x214(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x22c(r30)
    stb     r28, 0xc(r3)
    stw     r29, 0x10(r30)
    b       branch_0x8015c3fc

branch_0x8015bd6c:
    lwz     r3, 0x1bc(r30)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015c3fc
    li      r0, 0x2
    stw     r0, 0x10(r30)
    li      r29, 0x0
    li      r28, 0x1
    stb     r29, 0x2e9(r30)
    lwz     r3, 0x1ec(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1f4(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1fc(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1d0(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x1d4(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x204(r30)
    stb     r28, 0xc(r3)
    lbz     r0, 0x2ea(r30)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x230(r3)
    stb     r28, 0xc(r3)
    lwz     r3, 0x22c(r30)
    stb     r28, 0xc(r3)
    lbz     r0, 0x2ea(r30)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r3, r3, 0x278
    add     r3, r30, r3
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8015be6c
    lwz     r25, 0x208(r30)
    li      r4, 0x0
    lwz     r3, 0x2e4(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r25, 0x20c(r30)
    li      r4, 0x0
    lwz     r3, 0x2e4(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x20c(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x210(r30)
    stb     r29, 0xc(r3)
    lwz     r3, 0x214(r30)
    stb     r29, 0xc(r3)
    b       branch_0x8015c3fc

branch_0x8015be6c:
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8015bee4
    lwz     r25, 0x208(r30)
    li      r4, 0x19
    lwz     r3, 0x2e4(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r25, 0x20c(r30)
    li      r4, 0x19
    lwz     r3, 0x2e4(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x20c(r30)
    stb     r28, 0xc(r3)
    lwz     r3, 0x210(r30)
    stb     r29, 0xc(r3)
    lwz     r3, 0x214(r30)
    stb     r29, 0xc(r3)
    b       branch_0x8015c3fc

branch_0x8015bee4:
    lhz     r3, 0x1c(r3)
    extsh.  r0, r3
    addi    r25, r3, 0x0
    bge-    branch_0x8015bef8
    li      r25, 0x0
branch_0x8015bef8:
    extsh   r28, r25
    cmpwi   r28, 0x64
    bge-    branch_0x8015bf78
    lis     r4, 0x6666
    lwz     r3, 0x224(r30)
    addi    r0, r4, 0x6667
    mulhw   r27, r0, r28
    srawi   r0, r27, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r27, 2
    lwz     r3, 0x228(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x214(r30)
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x8015c024

branch_0x8015bf78:
    lis     r4, 0x51ec
    lwz     r3, 0x218(r30)
    subi    r0, r4, 0x7ae1
    mulhw   r0, r0, r28
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    subi    r25, r25, 0x64
    lwz     r3, 0x21c(r30)
    lis     r4, 0x6666
    extsh   r25, r25
    addi    r0, r4, 0x6667
    mulhw   r27, r0, r25
    srawi   r0, r27, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r27, 2
    lwz     r3, 0x220(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r25
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x210(r30)
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8015c024:
    lwz     r3, 0x20c(r30)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x8015c3fc

branch_0x8015c034:
    lwz     r3, 0x270(r30)
    lbz     r27, 0x2e9(r30)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x8015c07c
    lwz     r3, -0x6044(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015c070
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015c070:
    li      r0, 0x4
    stw     r0, 0x10(r30)
    b       branch_0x8015c0b4

branch_0x8015c07c:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8015c098
    extsb.  r0, r27
    ble-    branch_0x8015c0b4
    subi    r0, r27, 0x1
    stb     r0, 0x2e9(r30)
    b       branch_0x8015c0b4

branch_0x8015c098:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x8015c0b4
    extsb   r0, r27
    cmpwi   r0, 0x2
    bge-    branch_0x8015c0b4
    addi    r0, r27, 0x1
    stb     r0, 0x2e9(r30)
branch_0x8015c0b4:
    lbz     r0, 0x2e9(r30)
    extsb   r3, r27
    extsb   r0, r0
    cmpw    r3, r0
    beq-    branch_0x8015c3fc
    lwz     r3, -0x6044(r13)
    li      r4, 0x481e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015c0f0
    li      r3, 0x481e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015c0f0:
    extsb   r0, r27
    slwi    r0, r0, 3
    add     r5, r30, r0
    lwz     r3, 0x1d0(r5)
    li      r0, 0x0
    li      r4, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x1d4(r5)
    stb     r0, 0xc(r3)
    lbz     r0, 0x2e9(r30)
    extsb   r0, r0
    slwi    r0, r0, 3
    add     r3, r30, r0
    lwz     r3, 0x1d0(r3)
    stb     r4, 0xc(r3)
    lbz     r0, 0x2e9(r30)
    extsb   r0, r0
    slwi    r0, r0, 3
    add     r3, r30, r0
    lwz     r3, 0x1d4(r3)
    stb     r4, 0xc(r3)
    b       branch_0x8015c3fc

branch_0x8015c148:
    lwz     r6, 0x1c4(r30)
    lis     r28, 0x4330
    lwz     r0, 0x1cc(r30)
    li      r4, 0x14
    lwz     r5, 0x1c0(r30)
    lwz     r3, 0x1c8(r30)
    subf    r26, r6, r0
    xoris   r0, r26, 0x8000
    lfs     f1, -0x4a4c(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0x17c(sp)
    lwz     r27, 0x1bc(r30)
    fmr     f2, f1
    stw     r3, 0x174(sp)
    lfd     f4, -0x4a38(rtoc)
    addi    r3, r27, 0x2c
    stw     r28, 0x170(sp)
    stw     r28, 0x178(sp)
    lfd     f3, 0x170(sp)
    lfd     f0, 0x178(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r29, 0x1
    stb     r29, 0x4f(r27)
    addi    r3, r27, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r27)
    lwz     r0, 0x10(r27)
    lwz     r5, 0x4(r27)
    subf    r7, r6, r0
    lwz     r0, 0xc(r27)
    subf    r6, r26, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r25, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x184(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x194(sp)
    stw     r5, 0x1a4(sp)
    stw     r0, 0x1b4(sp)
    stw     r28, 0x180(sp)
    stw     r28, 0x190(sp)
    lfd     f1, 0x180(sp)
    stw     r28, 0x1a0(sp)
    lfd     f0, 0x190(sp)
    fsubs   f3, f1, f4
    stw     r28, 0x1b0(sp)
    lfd     f1, 0x1a0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x1b0(sp)
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
    stfd    f3, 0x188(sp)
    stfd    f2, 0x198(sp)
    lwz     r26, 0x18c(sp)
    stfd    f1, 0x1a8(sp)
    lwz     r25, 0x19c(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x1b8(sp)
    lwz     r6, 0x1ac(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x1bc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x1d4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x1c4(sp)
    stw     r6, 0x1cc(sp)
    stw     r0, 0x1dc(sp)
    stw     r28, 0x1c0(sp)
    stw     r28, 0x1c8(sp)
    lfd     f1, 0x1c0(sp)
    stw     r28, 0x1d0(sp)
    lfd     f0, 0x1c8(sp)
    fsubs   f1, f1, f4
    stw     r28, 0x1d8(sp)
    lfd     f3, 0x1d0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x1d8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r4, 0x4(r27)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r27)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    li      r4, 0x0
    li      r0, 0x3
    lwz     r3, 0x1ec(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x1f4(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x1fc(r30)
    stb     r4, 0xc(r3)
    lbz     r3, 0x2e9(r30)
    extsb   r3, r3
    slwi    r3, r3, 3
    add     r3, r30, r3
    lwz     r3, 0x1d0(r3)
    stb     r4, 0xc(r3)
    lbz     r3, 0x2e9(r30)
    extsb   r3, r3
    slwi    r3, r3, 3
    add     r3, r30, r3
    lwz     r3, 0x1d4(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x230(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x234(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x238(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x204(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x20c(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x210(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x214(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x22c(r30)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r30)
    b       branch_0x8015c3fc

branch_0x8015c3a0:
    lwz     r3, 0x1bc(r30)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015c3fc
    lwz     r3, 0x1bc(r30)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r30)
    b       branch_0x8015c3fc

branch_0x8015c3cc:
    lbz     r3, 0x2e9(r30)
    extsb.  r0, r3
    bne-    branch_0x8015c3e0
    stw     r4, 0x310(r30)
    b       branch_0x8015c3f8

branch_0x8015c3e0:
    extsb   r0, r3
    cmpwi   r0, 0x1
    bne-    branch_0x8015c3f4
    stw     r5, 0x310(r30)
    b       branch_0x8015c3f8

branch_0x8015c3f4:
    stw     r6, 0x310(r30)
branch_0x8015c3f8:
    lbz     r31, 0x2e9(r30)
branch_0x8015c3fc:
    mr      r3, r31
    lmw     r25, 0x1e4(sp)
    lwz     r0, 0x204(sp)
    addi    sp, sp, 0x200
    mtlr    r0
    blr


.globl waitForSelect2__9TCardSaveF10TEProgress10TEProgress
waitForSelect2__9TCardSaveF10TEProgress10TEProgress: # 0x8015c414
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stmw    r24, 0x128(sp)
    mr      r26, r3
    li      r27, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x8015ca94
    bge-    branch_0x8015c454
    cmpwi   r0, 0x1
    beq-    branch_0x8015c71c
    bge-    branch_0x8015c774
    cmpwi   r0, 0x0
    bge-    branch_0x8015c464
    b       branch_0x8015cadc

branch_0x8015c454:
    cmpwi   r0, 0x5
    beq-    branch_0x8015cac0
    bge-    branch_0x8015cadc
    b       branch_0x8015c87c

branch_0x8015c464:
    lwz     r4, 0x310(r26)
    lis     r3, 0x803c
    lwz     r0, 0x308(r26)
    addi    r3, r3, 0x6c8
    slwi    r4, r4, 2
    add     r3, r3, r4
    cmpwi   r0, 0x3
    lwz     r24, 0x0(r3)
    beq-    branch_0x8015c4bc
    bge-    branch_0x8015c49c
    cmpwi   r0, 0x1
    beq-    branch_0x8015c4ac
    bge-    branch_0x8015c4b4
    b       branch_0x8015c4d0

branch_0x8015c49c:
    cmpwi   r0, 0x5
    beq-    branch_0x8015c4cc
    bge-    branch_0x8015c4d0
    b       branch_0x8015c4c4

branch_0x8015c4ac:
    li      r24, 0x24
    b       branch_0x8015c4d0

branch_0x8015c4b4:
    li      r24, 0x25
    b       branch_0x8015c4d0

branch_0x8015c4bc:
    li      r24, 0x26
    b       branch_0x8015c4d0

branch_0x8015c4c4:
    li      r24, 0x27
    b       branch_0x8015c4d0

branch_0x8015c4cc:
    li      r24, 0x28
branch_0x8015c4d0:
    lwz     r4, 0x190(r26)
    addi    r3, r26, 0x0
    addi    r5, r24, 0x0
    li      r6, 0x200
    bl      setMessageC__9TCardSaveFP10J2DTextBoxlUl
    lwz     r29, 0x194(r26)
    clrlwi  r4, r24, 16
    lwz     r3, 0x2e4(r26)
    bl      SMSGetMessageData__FPvUl
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r28, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r3, 0x194(r26)
    li      r31, 0x0
    li      r30, 0x1
    stb     r31, 0xc(r3)
    lis     r29, 0x4330
    li      r4, 0x14
    lwz     r3, 0x17c(r26)
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r6, 0x184(r26)
    lwz     r0, 0x18c(r26)
    lwz     r5, 0x180(r26)
    lwz     r3, 0x188(r26)
    subf    r24, r6, r0
    xoris   r0, r24, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0x11c(sp)
    lwz     r28, 0x17c(r26)
    fmr     f4, f3
    stw     r3, 0x124(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r28, 0x2c
    stw     r29, 0x120(sp)
    stw     r29, 0x118(sp)
    lfd     f1, 0x120(sp)
    lfd     f0, 0x118(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r30, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r6, 0x4(r28)
    subf    r7, r5, r0
    lwz     r0, 0xc(r28)
    subf    r5, r24, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r25, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x114(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x104(sp)
    stw     r5, 0xf4(sp)
    stw     r0, 0xe4(sp)
    stw     r29, 0x110(sp)
    stw     r29, 0x100(sp)
    lfd     f1, 0x110(sp)
    stw     r29, 0xf0(sp)
    lfd     f0, 0x100(sp)
    fsubs   f3, f1, f4
    stw     r29, 0xe0(sp)
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
    stw     r29, 0xd0(sp)
    stw     r29, 0xc8(sp)
    lfd     f1, 0xd0(sp)
    stw     r29, 0xc0(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f1, f1, f4
    stw     r29, 0xb8(sp)
    lfd     f3, 0xc0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xb8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r30, 0x4e(r28)
    lwz     r3, 0x19c(r26)
    stb     r31, 0xc(r3)
    lwz     r3, 0x1a8(r26)
    stb     r31, 0xc(r3)
    lwz     r3, 0x1ac(r26)
    stb     r31, 0xc(r3)
    lwz     r3, 0x1a4(r26)
    stb     r31, 0xc(r3)
    lwz     r3, 0x1b0(r26)
    stb     r31, 0xc(r3)
    lwz     r3, 0x1b4(r26)
    stb     r31, 0xc(r3)
    stw     r30, 0x10(r26)
    b       branch_0x8015cadc

branch_0x8015c71c:
    lwz     r3, 0x17c(r26)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015cadc
    lwz     r4, 0x194(r26)
    li      r5, 0x1
    li      r3, 0x2
    stb     r5, 0xc(r4)
    li      r0, 0x0
    stw     r3, 0x10(r26)
    stb     r0, 0x2e9(r26)
    lwz     r3, 0x19c(r26)
    stb     r5, 0xc(r3)
    lwz     r3, 0x1a4(r26)
    stb     r5, 0xc(r3)
    lwz     r3, 0x1a8(r26)
    stb     r5, 0xc(r3)
    lwz     r3, 0x1ac(r26)
    stb     r5, 0xc(r3)
    stb     r0, 0x2f8(r26)
    stb     r5, 0x2f9(r26)
    b       branch_0x8015cadc

branch_0x8015c774:
    lwz     r3, 0x270(r26)
    lbz     r24, 0x2e9(r26)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x8015c7bc
    lwz     r3, -0x6044(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015c7b0
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015c7b0:
    li      r0, 0x4
    stw     r0, 0x10(r26)
    b       branch_0x8015c7e0

branch_0x8015c7bc:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8015c7d0
    li      r0, 0x0
    stb     r0, 0x2e9(r26)
    b       branch_0x8015c7e0

branch_0x8015c7d0:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x8015c7e0
    li      r0, 0x1
    stb     r0, 0x2e9(r26)
branch_0x8015c7e0:
    lbz     r0, 0x2e9(r26)
    extsb   r3, r24
    extsb   r0, r0
    cmpw    r3, r0
    beq-    branch_0x8015cadc
    lwz     r3, -0x6044(r13)
    li      r4, 0x481e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015c81c
    li      r3, 0x481e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015c81c:
    extsb   r0, r24
    slwi    r0, r0, 3
    add     r5, r26, r0
    lwz     r3, 0x1a8(r5)
    li      r6, 0x0
    li      r4, 0x1
    stb     r6, 0xc(r3)
    lwz     r3, 0x1ac(r5)
    stb     r6, 0xc(r3)
    lbz     r0, 0x2e9(r26)
    extsb   r0, r0
    slwi    r0, r0, 3
    add     r3, r26, r0
    lwz     r3, 0x1a8(r3)
    stb     r4, 0xc(r3)
    lbz     r0, 0x2e9(r26)
    extsb   r0, r0
    slwi    r0, r0, 3
    add     r3, r26, r0
    lwz     r3, 0x1ac(r3)
    stb     r4, 0xc(r3)
    stb     r6, 0x2f8(r26)
    stb     r4, 0x2f9(r26)
    b       branch_0x8015cadc

branch_0x8015c87c:
    lwz     r3, 0x194(r26)
    li      r29, 0x0
    lis     r30, 0x4330
    stb     r29, 0xc(r3)
    li      r4, 0x14
    lwz     r6, 0x184(r26)
    lwz     r0, 0x18c(r26)
    lwz     r5, 0x180(r26)
    lwz     r3, 0x188(r26)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4a4c(rtoc)
    subf    r24, r5, r3
    xoris   r3, r24, 0x8000
    stw     r0, 0xc4(sp)
    lwz     r28, 0x17c(r26)
    fmr     f2, f1
    stw     r3, 0xbc(sp)
    lfd     f4, -0x4a38(rtoc)
    addi    r3, r28, 0x2c
    stw     r30, 0xb8(sp)
    stw     r30, 0xc0(sp)
    lfd     f3, 0xb8(sp)
    lfd     f0, 0xc0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r7, r6, r0
    lwz     r0, 0xc(r28)
    subf    r6, r25, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r24, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0xcc(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0xdc(sp)
    stw     r5, 0xec(sp)
    stw     r0, 0xfc(sp)
    stw     r30, 0xc8(sp)
    stw     r30, 0xd8(sp)
    lfd     f1, 0xc8(sp)
    stw     r30, 0xe8(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f3, f1, f4
    stw     r30, 0xf8(sp)
    lfd     f1, 0xe8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xf8(sp)
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
    stfd    f3, 0xd0(sp)
    stfd    f2, 0xe0(sp)
    lwz     r25, 0xd4(sp)
    stfd    f1, 0xf0(sp)
    lwz     r24, 0xe4(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0x100(sp)
    lwz     r6, 0xf4(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0x104(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x11c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x10c(sp)
    stw     r6, 0x114(sp)
    stw     r0, 0x124(sp)
    stw     r30, 0x108(sp)
    stw     r30, 0x110(sp)
    lfd     f1, 0x108(sp)
    stw     r30, 0x118(sp)
    lfd     f0, 0x110(sp)
    fsubs   f1, f1, f4
    stw     r30, 0x120(sp)
    lfd     f3, 0x118(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x120(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r31, 0x4e(r28)
    li      r0, 0x3
    lwz     r3, 0x19c(r26)
    stb     r29, 0xc(r3)
    lwz     r3, 0x1a4(r26)
    stb     r29, 0xc(r3)
    lbz     r3, 0x2e9(r26)
    extsb   r3, r3
    slwi    r3, r3, 3
    add     r3, r26, r3
    lwz     r3, 0x1a8(r3)
    stb     r29, 0xc(r3)
    lbz     r3, 0x2e9(r26)
    extsb   r3, r3
    slwi    r3, r3, 3
    add     r3, r26, r3
    lwz     r3, 0x1ac(r3)
    stb     r29, 0xc(r3)
    stw     r0, 0x10(r26)
    b       branch_0x8015cadc

branch_0x8015ca94:
    lwz     r3, 0x17c(r26)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015cadc
    lwz     r3, 0x17c(r26)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r26)
    b       branch_0x8015cadc

branch_0x8015cac0:
    lbz     r0, 0x2e9(r26)
    extsb.  r0, r0
    bne-    branch_0x8015cad4
    stw     r4, 0x310(r26)
    b       branch_0x8015cad8

branch_0x8015cad4:
    stw     r5, 0x310(r26)
branch_0x8015cad8:
    lbz     r27, 0x2e9(r26)
branch_0x8015cadc:
    mr      r3, r27
    lmw     r24, 0x128(sp)
    lwz     r0, 0x14c(sp)
    addi    sp, sp, 0x148
    mtlr    r0
    blr


.globl waitForSelectOver__9TCardSaveFv
waitForSelectOver__9TCardSaveFv: # 0x8015caf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stmw    r25, 0x11c(sp)
    mr      r27, r3
    li      r28, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x8015d0a4
    bge-    branch_0x8015cb34
    cmpwi   r0, 0x1
    beq-    branch_0x8015cd4c
    bge-    branch_0x8015cd94
    cmpwi   r0, 0x0
    bge-    branch_0x8015cb44
    b       branch_0x8015d0f4

branch_0x8015cb34:
    cmpwi   r0, 0x5
    beq-    branch_0x8015d0d0
    bge-    branch_0x8015d0f4
    b       branch_0x8015ce94

branch_0x8015cb44:
    lwz     r3, 0x240(r27)
    li      r31, 0x1
    lis     r30, 0x4330
    lwz     r3, 0x0(r3)
    li      r4, 0x14
    stb     r31, 0xc(r3)
    lwz     r6, 0x248(r27)
    lwz     r0, 0x250(r27)
    lwz     r5, 0x244(r27)
    lwz     r3, 0x24c(r27)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0x10c(sp)
    lwz     r29, 0x240(r27)
    fmr     f4, f3
    stw     r3, 0x114(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r29, 0x2c
    stw     r30, 0x110(sp)
    stw     r30, 0x108(sp)
    lfd     f1, 0x110(sp)
    lfd     f0, 0x108(sp)
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
    stb     r31, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r6, 0x4(r29)
    subf    r7, r5, r0
    lwz     r0, 0xc(r29)
    subf    r5, r25, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r26, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x104(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0xf4(sp)
    stw     r5, 0xe4(sp)
    stw     r0, 0xd4(sp)
    stw     r30, 0x100(sp)
    stw     r30, 0xf0(sp)
    lfd     f1, 0x100(sp)
    stw     r30, 0xe0(sp)
    lfd     f0, 0xf0(sp)
    fsubs   f3, f1, f4
    stw     r30, 0xd0(sp)
    lfd     f1, 0xe0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xd0(sp)
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
    stfd    f3, 0xf8(sp)
    stfd    f2, 0xe8(sp)
    lwz     r26, 0xfc(sp)
    stfd    f1, 0xd8(sp)
    lwz     r25, 0xec(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0xc8(sp)
    lwz     r6, 0xdc(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0xcc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0xb4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0xc4(sp)
    stw     r6, 0xbc(sp)
    stw     r0, 0xac(sp)
    stw     r30, 0xc0(sp)
    stw     r30, 0xb8(sp)
    lfd     f1, 0xc0(sp)
    stw     r30, 0xb0(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f1, f1, f4
    stw     r30, 0xa8(sp)
    lfd     f3, 0xb0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xa8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
    li      r0, 0x0
    lwz     r3, 0x264(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x254(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x258(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x268(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x25c(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x260(r27)
    stb     r0, 0xc(r3)
    stw     r31, 0x10(r27)
    b       branch_0x8015d0f4

branch_0x8015cd4c:
    lwz     r3, 0x240(r27)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015d0f4
    li      r0, 0x2
    stw     r0, 0x10(r27)
    li      r3, 0x0
    li      r0, 0x1
    stb     r3, 0x2e9(r27)
    lwz     r3, 0x264(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x268(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x254(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x258(r27)
    stb     r0, 0xc(r3)
    b       branch_0x8015d0f4

branch_0x8015cd94:
    lwz     r3, 0x270(r27)
    lbz     r25, 0x2e9(r27)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x8015cddc
    lwz     r3, -0x6044(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015cdd0
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015cdd0:
    li      r0, 0x4
    stw     r0, 0x10(r27)
    b       branch_0x8015ce00

branch_0x8015cddc:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8015cdf0
    li      r0, 0x0
    stb     r0, 0x2e9(r27)
    b       branch_0x8015ce00

branch_0x8015cdf0:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x8015ce00
    li      r0, 0x1
    stb     r0, 0x2e9(r27)
branch_0x8015ce00:
    lbz     r0, 0x2e9(r27)
    extsb   r3, r25
    extsb   r0, r0
    cmpw    r3, r0
    beq-    branch_0x8015d0f4
    lwz     r3, -0x6044(r13)
    li      r4, 0x481e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015ce3c
    li      r3, 0x481e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015ce3c:
    extsb   r0, r25
    slwi    r0, r0, 3
    add     r5, r27, r0
    lwz     r3, 0x254(r5)
    li      r0, 0x0
    li      r4, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x258(r5)
    stb     r0, 0xc(r3)
    lbz     r0, 0x2e9(r27)
    extsb   r0, r0
    slwi    r0, r0, 3
    add     r3, r27, r0
    lwz     r3, 0x254(r3)
    stb     r4, 0xc(r3)
    lbz     r0, 0x2e9(r27)
    extsb   r0, r0
    slwi    r0, r0, 3
    add     r3, r27, r0
    lwz     r3, 0x258(r3)
    stb     r4, 0xc(r3)
    b       branch_0x8015d0f4

branch_0x8015ce94:
    lwz     r6, 0x248(r27)
    lis     r30, 0x4330
    lwz     r0, 0x250(r27)
    li      r4, 0x14
    lwz     r5, 0x244(r27)
    lwz     r3, 0x24c(r27)
    subf    r26, r6, r0
    xoris   r0, r26, 0x8000
    lfs     f1, -0x4a4c(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0xb4(sp)
    lwz     r29, 0x240(r27)
    fmr     f2, f1
    stw     r3, 0xac(sp)
    lfd     f4, -0x4a38(rtoc)
    addi    r3, r29, 0x2c
    stw     r30, 0xa8(sp)
    stw     r30, 0xb0(sp)
    lfd     f3, 0xa8(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r5, 0x4(r29)
    subf    r7, r6, r0
    lwz     r0, 0xc(r29)
    subf    r6, r26, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r25, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0xbc(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0xcc(sp)
    stw     r5, 0xdc(sp)
    stw     r0, 0xec(sp)
    stw     r30, 0xb8(sp)
    stw     r30, 0xc8(sp)
    lfd     f1, 0xb8(sp)
    stw     r30, 0xd8(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f3, f1, f4
    stw     r30, 0xe8(sp)
    lfd     f1, 0xd8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xe8(sp)
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
    stfd    f3, 0xc0(sp)
    stfd    f2, 0xd0(sp)
    lwz     r26, 0xc4(sp)
    stfd    f1, 0xe0(sp)
    lwz     r25, 0xd4(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0xf0(sp)
    lwz     r6, 0xe4(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0xf4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x10c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0xfc(sp)
    stw     r6, 0x104(sp)
    stw     r0, 0x114(sp)
    stw     r30, 0xf8(sp)
    stw     r30, 0x100(sp)
    lfd     f1, 0xf8(sp)
    stw     r30, 0x108(sp)
    lfd     f0, 0x100(sp)
    fsubs   f1, f1, f4
    stw     r30, 0x110(sp)
    lfd     f3, 0x108(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x110(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
    li      r4, 0x0
    li      r0, 0x3
    lwz     r3, 0x264(r27)
    stb     r4, 0xc(r3)
    lwz     r3, 0x268(r27)
    stb     r4, 0xc(r3)
    lbz     r3, 0x2e9(r27)
    extsb   r3, r3
    slwi    r3, r3, 3
    add     r3, r27, r3
    lwz     r3, 0x254(r3)
    stb     r4, 0xc(r3)
    lbz     r3, 0x2e9(r27)
    extsb   r3, r3
    slwi    r3, r3, 3
    add     r3, r27, r3
    lwz     r3, 0x258(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r27)
    b       branch_0x8015d0f4

branch_0x8015d0a4:
    lwz     r3, 0x240(r27)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015d0f4
    lwz     r3, 0x240(r27)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r27)
    b       branch_0x8015d0f4

branch_0x8015d0d0:
    lbz     r0, 0x2e9(r27)
    extsb.  r0, r0
    bne-    branch_0x8015d0e8
    li      r0, 0x1
    stw     r0, 0x310(r27)
    b       branch_0x8015d0f0

branch_0x8015d0e8:
    li      r0, 0x19
    stw     r0, 0x310(r27)
branch_0x8015d0f0:
    lbz     r28, 0x2e9(r27)
branch_0x8015d0f4:
    mr      r3, r28
    lmw     r25, 0x11c(sp)
    lwz     r0, 0x13c(sp)
    addi    sp, sp, 0x138
    mtlr    r0
    blr


.globl waitForAnyKey__9TCardSaveF10TEProgress
waitForAnyKey__9TCardSaveF10TEProgress: # 0x8015d10c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stmw    r25, 0xc4(sp)
    mr      r27, r3
    li      r28, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x8015d5c8
    bge-    branch_0x8015d14c
    cmpwi   r0, 0x1
    beq-    branch_0x8015d3b0
    bge-    branch_0x8015d3d8
    cmpwi   r0, 0x0
    bge-    branch_0x8015d158
    b       branch_0x8015d5fc

branch_0x8015d14c:
    cmpwi   r0, 0x5
    beq-    branch_0x8015d5f4
    b       branch_0x8015d5fc

branch_0x8015d158:
    lwz     r0, 0x310(r27)
    lis     r3, 0x803c
    addi    r30, r3, 0x6c8
    lwz     r31, 0x174(r27)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r3, 0x2e4(r27)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r0, 0x310(r27)
    lwz     r31, 0x178(r27)
    slwi    r0, r0, 2
    lwz     r3, 0x2e4(r27)
    add     r4, r30, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r3, 0x178(r27)
    li      r0, 0x0
    li      r31, 0x1
    stb     r0, 0xc(r3)
    lis     r30, 0x4330
    li      r4, 0x14
    lwz     r3, 0x160(r27)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r6, 0x168(r27)
    lwz     r0, 0x170(r27)
    lwz     r5, 0x164(r27)
    lwz     r3, 0x16c(r27)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0xb4(sp)
    lwz     r29, 0x160(r27)
    fmr     f4, f3
    stw     r3, 0xbc(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r29, 0x2c
    stw     r30, 0xb8(sp)
    stw     r30, 0xb0(sp)
    lfd     f1, 0xb8(sp)
    lfd     f0, 0xb0(sp)
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
    stb     r31, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r6, 0x4(r29)
    subf    r7, r5, r0
    lwz     r0, 0xc(r29)
    subf    r5, r25, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r26, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0xac(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x9c(sp)
    stw     r5, 0x8c(sp)
    stw     r0, 0x7c(sp)
    stw     r30, 0xa8(sp)
    stw     r30, 0x98(sp)
    lfd     f1, 0xa8(sp)
    stw     r30, 0x88(sp)
    lfd     f0, 0x98(sp)
    fsubs   f3, f1, f4
    stw     r30, 0x78(sp)
    lfd     f1, 0x88(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x78(sp)
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
    stfd    f3, 0xa0(sp)
    stfd    f2, 0x90(sp)
    lwz     r26, 0xa4(sp)
    stfd    f1, 0x80(sp)
    lwz     r25, 0x94(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x70(sp)
    lwz     r6, 0x84(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x74(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x5c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x6c(sp)
    stw     r6, 0x64(sp)
    stw     r0, 0x54(sp)
    stw     r30, 0x68(sp)
    stw     r30, 0x60(sp)
    lfd     f1, 0x68(sp)
    stw     r30, 0x58(sp)
    lfd     f0, 0x60(sp)
    fsubs   f1, f1, f4
    stw     r30, 0x50(sp)
    lfd     f3, 0x58(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x50(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
    stw     r31, 0x10(r27)
    b       branch_0x8015d5fc

branch_0x8015d3b0:
    lwz     r3, 0x160(r27)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015d5fc
    lwz     r3, 0x178(r27)
    li      r4, 0x1
    li      r0, 0x2
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r27)
    b       branch_0x8015d5fc

branch_0x8015d3d8:
    lwz     r3, 0x2e0(r27)
    cmpwi   r3, 0x12c
    ble-    branch_0x8015d5bc
    lwz     r3, 0x178(r27)
    li      r0, 0x0
    lis     r30, 0x4330
    stb     r0, 0xc(r3)
    li      r4, 0x14
    lwz     r6, 0x168(r27)
    lwz     r0, 0x170(r27)
    lwz     r5, 0x164(r27)
    lwz     r3, 0x16c(r27)
    subf    r26, r6, r0
    xoris   r0, r26, 0x8000
    lfs     f1, -0x4a4c(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0x5c(sp)
    lwz     r29, 0x160(r27)
    fmr     f2, f1
    stw     r3, 0x54(sp)
    lfd     f4, -0x4a38(rtoc)
    addi    r3, r29, 0x2c
    stw     r30, 0x50(sp)
    stw     r30, 0x58(sp)
    lfd     f3, 0x50(sp)
    lfd     f0, 0x58(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r5, 0x4(r29)
    subf    r7, r6, r0
    lwz     r0, 0xc(r29)
    subf    r6, r26, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r25, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x64(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x74(sp)
    stw     r5, 0x84(sp)
    stw     r0, 0x94(sp)
    stw     r30, 0x60(sp)
    stw     r30, 0x70(sp)
    lfd     f1, 0x60(sp)
    stw     r30, 0x80(sp)
    lfd     f0, 0x70(sp)
    fsubs   f3, f1, f4
    stw     r30, 0x90(sp)
    lfd     f1, 0x80(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x90(sp)
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
    stfd    f3, 0x68(sp)
    stfd    f2, 0x78(sp)
    lwz     r26, 0x6c(sp)
    stfd    f1, 0x88(sp)
    lwz     r25, 0x7c(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x98(sp)
    lwz     r6, 0x8c(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x9c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0xb4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0xa4(sp)
    stw     r6, 0xac(sp)
    stw     r0, 0xbc(sp)
    stw     r30, 0xa0(sp)
    stw     r30, 0xa8(sp)
    lfd     f1, 0xa0(sp)
    stw     r30, 0xb0(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f1, f1, f4
    stw     r30, 0xb8(sp)
    lfd     f3, 0xb0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xb8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
    li      r0, 0x3
    stw     r0, 0x10(r27)
    b       branch_0x8015d5fc

branch_0x8015d5bc:
    addi    r0, r3, 0x1
    stw     r0, 0x2e0(r27)
    b       branch_0x8015d5fc

branch_0x8015d5c8:
    lwz     r3, 0x160(r27)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015d5fc
    lwz     r3, 0x160(r27)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r27)
    b       branch_0x8015d5fc

branch_0x8015d5f4:
    stw     r4, 0x310(r27)
    li      r28, 0x0
branch_0x8015d5fc:
    mr      r3, r28
    lmw     r25, 0xc4(sp)
    lwz     r0, 0xe4(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl drawMessageBM__9TCardSaveF10TEProgress
drawMessageBM__9TCardSaveF10TEProgress: # 0x8015d614
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stmw    r25, 0x14c(sp)
    mr      r27, r3
    li      r28, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x8015daf4
    bge-    branch_0x8015d654
    cmpwi   r0, 0x1
    beq-    branch_0x8015d928
    bge-    branch_0x8015db28
    cmpwi   r0, 0x0
    bge-    branch_0x8015d660
    b       branch_0x8015db28

branch_0x8015d654:
    cmpwi   r0, 0x5
    beq-    branch_0x8015db20
    b       branch_0x8015db28

branch_0x8015d660:
    lbz     r0, 0x2ea(r27)
    extsb   r0, r0
    cmpwi   r0, -0x1
    bne-    branch_0x8015d678
    li      r0, 0x5
    stw     r0, 0x10(r27)
branch_0x8015d678:
    lwz     r0, 0x310(r27)
    lis     r3, 0x803c
    addi    r30, r3, 0x6c8
    lwz     r31, 0x12c(r27)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r3, 0x2e4(r27)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r0, 0x310(r27)
    lwz     r31, 0x130(r27)
    slwi    r0, r0, 2
    lwz     r3, 0x2e4(r27)
    add     r4, r30, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r3, 0x134(r27)
    li      r0, 0x0
    li      r30, 0x1
    stb     r0, 0xc(r3)
    lis     r31, 0x4330
    li      r4, 0x14
    lwz     r3, 0x138(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x128(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0xf8(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x130(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x150(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0xfc(r27)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x100(r27)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x154(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x158(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x15c(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0xe0(r27)
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r6, 0xe8(r27)
    lwz     r0, 0xf0(r27)
    lwz     r5, 0xe4(r27)
    lwz     r3, 0xec(r27)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0x13c(sp)
    lwz     r29, 0xe0(r27)
    fmr     f4, f3
    stw     r3, 0x144(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r29, 0x2c
    stw     r31, 0x140(sp)
    stw     r31, 0x138(sp)
    lfd     f1, 0x140(sp)
    lfd     f0, 0x138(sp)
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
    subf    r5, r25, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r26, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x134(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x124(sp)
    stw     r5, 0x114(sp)
    stw     r0, 0x104(sp)
    stw     r31, 0x130(sp)
    stw     r31, 0x120(sp)
    lfd     f1, 0x130(sp)
    stw     r31, 0x110(sp)
    lfd     f0, 0x120(sp)
    fsubs   f3, f1, f4
    stw     r31, 0x100(sp)
    lfd     f1, 0x110(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x100(sp)
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
    stfd    f3, 0x128(sp)
    stfd    f2, 0x118(sp)
    lwz     r26, 0x12c(sp)
    stfd    f1, 0x108(sp)
    lwz     r25, 0x11c(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0xf8(sp)
    lwz     r6, 0x10c(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0xfc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0xe4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0xf4(sp)
    stw     r6, 0xec(sp)
    stw     r0, 0xdc(sp)
    stw     r31, 0xf0(sp)
    stw     r31, 0xe8(sp)
    lfd     f1, 0xf0(sp)
    stw     r31, 0xe0(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f1, f1, f4
    stw     r31, 0xd8(sp)
    lfd     f3, 0xe0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xd8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r30, 0x4e(r29)
    stw     r30, 0x10(r27)
    b       branch_0x8015db28

branch_0x8015d928:
    lwz     r3, 0xe0(r27)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015db28
    lwz     r3, 0x130(r27)
    li      r4, 0x1
    stb     r4, 0xc(r3)
    lbz     r0, 0x2ea(r27)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r27, r0
    lwz     r3, 0x154(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x150(r27)
    stb     r4, 0xc(r3)
    lwz     r0, 0x308(r27)
    cmpwi   r0, 0x0
    beq-    branch_0x8015d980
    cmpwi   r0, 0x6
    beq-    branch_0x8015d980
    cmpwi   r0, 0x8
    bne-    branch_0x8015dae8
branch_0x8015d980:
    lbz     r0, 0x2ea(r27)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r3, r3, 0x278
    add     r3, r27, r3
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8015da14
    lwz     r25, 0x124(r27)
    li      r4, 0x0
    lwz     r3, 0x2e4(r27)
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r25, 0x128(r27)
    li      r4, 0x0
    lwz     r3, 0x2e4(r27)
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x128(r27)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x134(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r27)
    stb     r0, 0xc(r3)
    b       branch_0x8015dae8

branch_0x8015da14:
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8015da94
    lwz     r25, 0x124(r27)
    li      r4, 0x19
    lwz     r3, 0x2e4(r27)
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r25, 0x128(r27)
    li      r4, 0x19
    lwz     r3, 0x2e4(r27)
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x128(r27)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x134(r27)
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r27)
    stb     r0, 0xc(r3)
    b       branch_0x8015dae8

branch_0x8015da94:
    lwz     r3, 0x128(r27)
    li      r4, 0x0
    stb     r4, 0xc(r3)
    lbz     r0, 0x2ea(r27)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r0, r3, 0x294
    lhzx    r0, r27, r0
    cmplwi  r0, 0x64
    blt-    branch_0x8015dad4
    lwz     r3, 0x134(r27)
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r27)
    stb     r4, 0xc(r3)
    b       branch_0x8015dae8

branch_0x8015dad4:
    lwz     r3, 0x134(r27)
    li      r0, 0x1
    stb     r4, 0xc(r3)
    lwz     r3, 0x138(r27)
    stb     r0, 0xc(r3)
branch_0x8015dae8:
    li      r0, 0x2
    stw     r0, 0x10(r27)
    b       branch_0x8015db28

branch_0x8015daf4:
    lwz     r3, 0xe0(r27)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015db28
    lwz     r3, 0xe0(r27)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r27)
    b       branch_0x8015db28

branch_0x8015db20:
    stw     r4, 0x310(r27)
    li      r28, 0x0
branch_0x8015db28:
    mr      r3, r28
    lmw     r25, 0x14c(sp)
    lwz     r0, 0x16c(sp)
    addi    sp, sp, 0x168
    mtlr    r0
    blr


.globl drawMessage__9TCardSaveF10TEProgress
drawMessage__9TCardSaveF10TEProgress: # 0x8015db40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stmw    r25, 0xb4(sp)
    mr      r27, r3
    li      r28, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x8015de0c
    bge-    branch_0x8015db80
    cmpwi   r0, 0x1
    beq-    branch_0x8015dde4
    bge-    branch_0x8015de40
    cmpwi   r0, 0x0
    bge-    branch_0x8015db8c
    b       branch_0x8015de40

branch_0x8015db80:
    cmpwi   r0, 0x5
    beq-    branch_0x8015de38
    b       branch_0x8015de40

branch_0x8015db8c:
    lwz     r0, 0x310(r27)
    lis     r3, 0x803c
    addi    r30, r3, 0x6c8
    lwz     r31, 0x174(r27)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r3, 0x2e4(r27)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r0, 0x310(r27)
    lwz     r31, 0x178(r27)
    slwi    r0, r0, 2
    lwz     r3, 0x2e4(r27)
    add     r4, r30, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r3, 0x178(r27)
    li      r0, 0x0
    li      r30, 0x1
    stb     r0, 0xc(r3)
    lis     r31, 0x4330
    li      r4, 0x14
    lwz     r3, 0x160(r27)
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r6, 0x168(r27)
    lwz     r0, 0x170(r27)
    lwz     r5, 0x164(r27)
    lwz     r3, 0x16c(r27)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0xa4(sp)
    lwz     r29, 0x160(r27)
    fmr     f4, f3
    stw     r3, 0xac(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r29, 0x2c
    stw     r31, 0xa8(sp)
    stw     r31, 0xa0(sp)
    lfd     f1, 0xa8(sp)
    lfd     f0, 0xa0(sp)
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
    subf    r5, r25, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r26, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x9c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x8c(sp)
    stw     r5, 0x7c(sp)
    stw     r0, 0x6c(sp)
    stw     r31, 0x98(sp)
    stw     r31, 0x88(sp)
    lfd     f1, 0x98(sp)
    stw     r31, 0x78(sp)
    lfd     f0, 0x88(sp)
    fsubs   f3, f1, f4
    stw     r31, 0x68(sp)
    lfd     f1, 0x78(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x68(sp)
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
    stfd    f3, 0x90(sp)
    stfd    f2, 0x80(sp)
    lwz     r26, 0x94(sp)
    stfd    f1, 0x70(sp)
    lwz     r25, 0x84(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x60(sp)
    lwz     r6, 0x74(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x64(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x4c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x5c(sp)
    stw     r6, 0x54(sp)
    stw     r0, 0x44(sp)
    stw     r31, 0x58(sp)
    stw     r31, 0x50(sp)
    lfd     f1, 0x58(sp)
    stw     r31, 0x48(sp)
    lfd     f0, 0x50(sp)
    fsubs   f1, f1, f4
    stw     r31, 0x40(sp)
    lfd     f3, 0x48(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x40(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r30, 0x4e(r29)
    stw     r30, 0x10(r27)
    b       branch_0x8015de40

branch_0x8015dde4:
    lwz     r3, 0x160(r27)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015de40
    lwz     r3, 0x178(r27)
    li      r4, 0x1
    li      r0, 0x2
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r27)
    b       branch_0x8015de40

branch_0x8015de0c:
    lwz     r3, 0x160(r27)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015de40
    lwz     r3, 0x160(r27)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r27)
    b       branch_0x8015de40

branch_0x8015de38:
    stw     r4, 0x310(r27)
    li      r28, 0x0
branch_0x8015de40:
    mr      r3, r28
    lmw     r25, 0xb4(sp)
    lwz     r0, 0xd4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl waitForChoiceBM__9TCardSaveF10TEProgress10TEProgressSc
waitForChoiceBM__9TCardSaveF10TEProgress10TEProgressSc: # 0x8015de58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x498(sp)
    stmw    r22, 0x470(sp)
    mr      r31, r3
    addi    r28, r6, 0x0
    li      r30, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x8015f884
    bge-    branch_0x8015de9c
    cmpwi   r0, 0x1
    beq-    branch_0x8015e170
    bge-    branch_0x8015e9b0
    cmpwi   r0, 0x0
    bge-    branch_0x8015dea8
    b       branch_0x8015f8cc

branch_0x8015de9c:
    cmpwi   r0, 0x5
    beq-    branch_0x8015f8b0
    b       branch_0x8015f8cc

branch_0x8015dea8:
    lbz     r0, 0x2ea(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    bne-    branch_0x8015dec0
    li      r0, 0x5
    stw     r0, 0x10(r31)
branch_0x8015dec0:
    lwz     r0, 0x310(r31)
    lis     r3, 0x803c
    addi    r23, r3, 0x6c8
    lwz     r24, 0x12c(r31)
    slwi    r0, r0, 2
    add     r4, r23, r0
    lwz     r3, 0x2e4(r31)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r24, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r0, 0x310(r31)
    lwz     r24, 0x130(r31)
    slwi    r0, r0, 2
    lwz     r3, 0x2e4(r31)
    add     r4, r23, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r24, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r3, 0x134(r31)
    li      r0, 0x0
    li      r27, 0x1
    stb     r0, 0xc(r3)
    lis     r26, 0x4330
    li      r4, 0x14
    lwz     r3, 0x138(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x128(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0xf8(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x130(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x150(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0xfc(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x100(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x154(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x158(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x15c(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0xe0(r31)
    lwz     r3, 0x0(r3)
    stb     r27, 0xc(r3)
    lwz     r6, 0xe8(r31)
    lwz     r0, 0xf0(r31)
    lwz     r5, 0xe4(r31)
    lwz     r3, 0xec(r31)
    subf    r23, r6, r0
    xoris   r0, r23, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r22, r5, r3
    xoris   r3, r22, 0x8000
    stw     r0, 0x464(sp)
    lwz     r28, 0xe0(r31)
    fmr     f4, f3
    stw     r3, 0x46c(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r28, 0x2c
    stw     r26, 0x468(sp)
    stw     r26, 0x460(sp)
    lfd     f1, 0x468(sp)
    lfd     f0, 0x460(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r27, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r6, 0x4(r28)
    subf    r7, r5, r0
    lwz     r0, 0xc(r28)
    subf    r5, r23, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r22, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x45c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x44c(sp)
    stw     r5, 0x43c(sp)
    stw     r0, 0x42c(sp)
    stw     r26, 0x458(sp)
    stw     r26, 0x448(sp)
    lfd     f1, 0x458(sp)
    stw     r26, 0x438(sp)
    lfd     f0, 0x448(sp)
    fsubs   f3, f1, f4
    stw     r26, 0x428(sp)
    lfd     f1, 0x438(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x428(sp)
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
    stfd    f3, 0x450(sp)
    stfd    f2, 0x440(sp)
    lwz     r23, 0x454(sp)
    stfd    f1, 0x430(sp)
    lwz     r22, 0x444(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x420(sp)
    lwz     r6, 0x434(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x424(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x40c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x41c(sp)
    stw     r6, 0x414(sp)
    stw     r0, 0x404(sp)
    stw     r26, 0x418(sp)
    stw     r26, 0x410(sp)
    lfd     f1, 0x418(sp)
    stw     r26, 0x408(sp)
    lfd     f0, 0x410(sp)
    fsubs   f1, f1, f4
    stw     r26, 0x400(sp)
    lfd     f3, 0x408(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x400(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r27, 0x4e(r28)
    stw     r27, 0x10(r31)
    b       branch_0x8015f8cc

branch_0x8015e170:
    lwz     r3, 0xe0(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015f8cc
    lbz     r0, 0x2ea(r31)
    li      r27, 0x1
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x154(r3)
    stb     r27, 0xc(r3)
    lwz     r3, 0x150(r31)
    stb     r27, 0xc(r3)
    lwz     r3, 0x130(r31)
    stb     r27, 0xc(r3)
    lwz     r0, 0x310(r31)
    cmpwi   r0, 0x17
    bne-    branch_0x8015e308
    lwz     r3, 0x128(r31)
    li      r26, 0x0
    lis     r4, 0x4
    stb     r26, 0xc(r3)
    lwz     r3, -0x6060(r13)
    bl      getFlag__12TFlagManagerCFUl
    clrlwi  r22, r3, 16
    cmplwi  r22, 0x64
    bge-    branch_0x8015e254
    lis     r4, 0x6666
    lwz     r3, 0x148(r31)
    addi    r0, r4, 0x6667
    mulhw   r23, r0, r22
    srawi   r0, r23, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r23, 2
    lwz     r3, 0x14c(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r22
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x134(r31)
    stb     r26, 0xc(r3)
    lwz     r3, 0x138(r31)
    stb     r27, 0xc(r3)
    b       branch_0x8015e458

branch_0x8015e254:
    lis     r4, 0x51ec
    lwz     r3, 0x13c(r31)
    subi    r0, r4, 0x7ae1
    mulhw   r0, r0, r22
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    subi    r24, r22, 0x64
    lwz     r3, 0x140(r31)
    lis     r4, 0x6666
    clrlwi  r24, r24, 16
    addi    r0, r4, 0x6667
    mulhw   r22, r0, r24
    srawi   r0, r22, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r22, 2
    lwz     r3, 0x144(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r24
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x1c(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x138(r31)
    stb     r26, 0xc(r3)
    lwz     r3, 0x134(r31)
    stb     r27, 0xc(r3)
    b       branch_0x8015e458

branch_0x8015e308:
    lbz     r0, 0x2ea(r31)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r3, r3, 0x278
    add     r3, r31, r3
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8015e398
    lwz     r23, 0x124(r31)
    li      r4, 0x0
    lwz     r3, 0x2e4(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r23, 0x128(r31)
    li      r4, 0x0
    lwz     r3, 0x2e4(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x128(r31)
    li      r0, 0x0
    stb     r27, 0xc(r3)
    lwz     r3, 0x134(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r31)
    stb     r0, 0xc(r3)
    b       branch_0x8015e458

branch_0x8015e398:
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8015e414
    lwz     r23, 0x124(r31)
    li      r4, 0x19
    lwz     r3, 0x2e4(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r23, 0x128(r31)
    li      r4, 0x19
    lwz     r3, 0x2e4(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x128(r31)
    li      r0, 0x0
    stb     r27, 0xc(r3)
    lwz     r3, 0x134(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r31)
    stb     r0, 0xc(r3)
    b       branch_0x8015e458

branch_0x8015e414:
    lhz     r0, 0x1c(r3)
    cmplwi  r0, 0x64
    blt-    branch_0x8015e438
    lwz     r3, 0x134(r31)
    li      r0, 0x0
    stb     r27, 0xc(r3)
    lwz     r3, 0x138(r31)
    stb     r0, 0xc(r3)
    b       branch_0x8015e44c

branch_0x8015e438:
    lwz     r3, 0x134(r31)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0x138(r31)
    stb     r27, 0xc(r3)
branch_0x8015e44c:
    lwz     r3, 0x128(r31)
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8015e458:
    lwz     r3, 0xfc(r31)
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x100(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r23, 0xfc(r31)
    lfs     f0, -0x4a4c(rtoc)
    lfs     f1, 0x18(r23)
    lwz     r5, 0x108(r31)
    fcmpo   cr0, f1, f0
    lwz     r4, 0x110(r31)
    lwz     r3, 0x104(r31)
    lwz     r0, 0x10c(r31)
    subf    r25, r5, r4
    subf    r29, r3, r0
    ble-    branch_0x8015e4a8
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015e4ac

branch_0x8015e4a8:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015e4ac:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r23)
    lfs     f0, -0x4a4c(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x400(sp)
    lwz     r24, 0x404(sp)
    ble-    branch_0x8015e4d4
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015e4d8

branch_0x8015e4d4:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015e4d8:
    fadds   f0, f2, f0
    xoris   r0, r29, 0x8000
    xoris   r3, r25, 0x8000
    stw     r0, 0x40c(sp)
    xoris   r0, r24, 0x8000
    fctiwz  f0, f0
    lis     r27, 0x4330
    stw     r3, 0x414(sp)
    addi    r3, r23, 0x2c
    lfd     f4, -0x4a38(rtoc)
    stfd    f0, 0x400(sp)
    li      r4, 0x1
    lwz     r22, 0x404(sp)
    stw     r0, 0x424(sp)
    xoris   r0, r22, 0x8000
    stw     r0, 0x41c(sp)
    stw     r27, 0x408(sp)
    stw     r27, 0x410(sp)
    lfd     f1, 0x408(sp)
    stw     r27, 0x418(sp)
    lfd     f0, 0x410(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x420(sp)
    lfd     f3, 0x418(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x420(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    addi    r4, r22, 0x0
    addi    r5, r24, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r23)
    addi    r3, r23, 0x14
    li      r4, 0x1
    lwz     r6, 0x8(r23)
    lwz     r0, 0x10(r23)
    lwz     r5, 0x4(r23)
    subf    r8, r6, r0
    lwz     r0, 0xc(r23)
    subf    r7, r24, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r22, r0
    subf    r5, r25, r8
    subf    r0, r29, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x42c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x43c(sp)
    stw     r5, 0x44c(sp)
    stw     r0, 0x45c(sp)
    stw     r27, 0x428(sp)
    stw     r27, 0x438(sp)
    lfd     f1, 0x428(sp)
    stw     r27, 0x448(sp)
    lfd     f0, 0x438(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x458(sp)
    lfd     f1, 0x448(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x458(sp)
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
    stfd    f3, 0x430(sp)
    stfd    f2, 0x440(sp)
    lwz     r24, 0x434(sp)
    stfd    f1, 0x450(sp)
    lwz     r22, 0x444(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x460(sp)
    lwz     r6, 0x454(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x464(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3f4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x46c(sp)
    stw     r6, 0x3fc(sp)
    stw     r0, 0x3ec(sp)
    stw     r27, 0x468(sp)
    stw     r27, 0x3f8(sp)
    lfd     f1, 0x468(sp)
    stw     r27, 0x3f0(sp)
    lfd     f0, 0x3f8(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x3e8(sp)
    lfd     f3, 0x3f0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3e8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    lwz     r4, 0x4(r23)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r23)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r26, 0x4e(r23)
    lwz     r23, 0x100(r31)
    lfs     f0, -0x4a4c(rtoc)
    lfs     f1, 0x18(r23)
    lwz     r5, 0x118(r31)
    fcmpo   cr0, f1, f0
    lwz     r4, 0x120(r31)
    lwz     r3, 0x114(r31)
    lwz     r0, 0x11c(r31)
    subf    r29, r5, r4
    subf    r25, r3, r0
    ble-    branch_0x8015e6e8
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015e6ec

branch_0x8015e6e8:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015e6ec:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r23)
    lfs     f0, -0x4a4c(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x3e8(sp)
    lwz     r24, 0x3ec(sp)
    ble-    branch_0x8015e714
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015e718

branch_0x8015e714:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015e718:
    fadds   f0, f2, f0
    xoris   r0, r25, 0x8000
    xoris   r3, r29, 0x8000
    stw     r0, 0x3f4(sp)
    xoris   r0, r24, 0x8000
    fctiwz  f0, f0
    lis     r27, 0x4330
    stw     r3, 0x3fc(sp)
    addi    r3, r23, 0x2c
    lfd     f4, -0x4a38(rtoc)
    stfd    f0, 0x3e8(sp)
    li      r4, 0x1
    lwz     r22, 0x3ec(sp)
    stw     r0, 0x40c(sp)
    xoris   r0, r22, 0x8000
    stw     r0, 0x404(sp)
    stw     r27, 0x3f0(sp)
    stw     r27, 0x3f8(sp)
    lfd     f1, 0x3f0(sp)
    stw     r27, 0x400(sp)
    lfd     f0, 0x3f8(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x408(sp)
    lfd     f3, 0x400(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x408(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    addi    r4, r22, 0x0
    addi    r5, r24, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r23)
    addi    r3, r23, 0x14
    li      r4, 0x1
    lwz     r6, 0x8(r23)
    lwz     r0, 0x10(r23)
    lwz     r5, 0x4(r23)
    subf    r8, r6, r0
    lwz     r0, 0xc(r23)
    subf    r7, r24, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r22, r0
    subf    r5, r29, r8
    subf    r0, r25, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x414(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x424(sp)
    stw     r5, 0x434(sp)
    stw     r0, 0x444(sp)
    stw     r27, 0x410(sp)
    stw     r27, 0x420(sp)
    lfd     f1, 0x410(sp)
    stw     r27, 0x430(sp)
    lfd     f0, 0x420(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x440(sp)
    lfd     f1, 0x430(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x440(sp)
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
    stfd    f3, 0x418(sp)
    stfd    f2, 0x428(sp)
    lwz     r24, 0x41c(sp)
    stfd    f1, 0x438(sp)
    lwz     r22, 0x42c(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x448(sp)
    lwz     r6, 0x43c(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x44c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x464(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x454(sp)
    stw     r6, 0x45c(sp)
    stw     r0, 0x46c(sp)
    stw     r27, 0x450(sp)
    stw     r27, 0x458(sp)
    lfd     f1, 0x450(sp)
    stw     r27, 0x460(sp)
    lfd     f0, 0x458(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x468(sp)
    lfd     f3, 0x460(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x468(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    lwz     r4, 0x4(r23)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r23)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r26, 0x4e(r23)
    lwz     r3, 0xfc(r31)
    bl      update__7TExPaneFv
    lwz     r3, 0x100(r31)
    bl      update__7TExPaneFv
    extsb.  r0, r28
    stb     r28, 0x2e9(r31)
    bne-    branch_0x8015e95c
    li      r0, 0x0
    stb     r0, 0x38c(sp)
    li      r4, 0xff
    stb     r4, 0x38d(sp)
    stb     r0, 0x38e(sp)
    stb     r4, 0x38f(sp)
    lwz     r3, 0xfc(r31)
    lwz     r0, 0x38c(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    stb     r4, 0x384(sp)
    stb     r4, 0x385(sp)
    stb     r4, 0x386(sp)
    stb     r4, 0x387(sp)
    lwz     r3, 0x100(r31)
    lwz     r0, 0x384(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x8015e9a4

branch_0x8015e95c:
    li      r5, 0xff
    stb     r5, 0x37c(sp)
    li      r0, 0x0
    stb     r5, 0x37d(sp)
    stb     r5, 0x37e(sp)
    stb     r5, 0x37f(sp)
    lwz     r4, 0xfc(r31)
    lwz     r3, 0x37c(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stb     r0, 0x374(sp)
    stb     r5, 0x375(sp)
    stb     r0, 0x376(sp)
    stb     r5, 0x377(sp)
    lwz     r3, 0x100(r31)
    lwz     r0, 0x374(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
branch_0x8015e9a4:
    li      r0, 0x2
    stw     r0, 0x10(r31)
    b       branch_0x8015f8cc

branch_0x8015e9b0:
    lwz     r3, 0x270(r31)
    lbz     r29, 0x2e9(r31)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x8015ec50
    lwz     r4, 0x44(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8015e9d8
    lwz     r3, -0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
branch_0x8015e9d8:
    lbz     r0, 0x2e9(r31)
    extsb.  r0, r0
    bne-    branch_0x8015ea10
    lwz     r3, -0x6044(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015ea38
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x8015ea38

branch_0x8015ea10:
    lwz     r3, -0x6044(r13)
    li      r4, 0x481d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015ea38
    li      r3, 0x481d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015ea38:
    lwz     r3, 0x134(r31)
    li      r5, 0x0
    li      r0, 0x3
    stb     r5, 0xc(r3)
    lis     r27, 0x4330
    li      r4, 0x14
    lwz     r3, 0x138(r31)
    stb     r5, 0xc(r3)
    lwz     r3, 0x128(r31)
    stb     r5, 0xc(r3)
    lwz     r3, 0xf8(r31)
    stb     r5, 0xc(r3)
    lwz     r3, 0x130(r31)
    stb     r5, 0xc(r3)
    lwz     r3, 0x150(r31)
    stb     r5, 0xc(r3)
    lwz     r3, 0xfc(r31)
    lwz     r3, 0x0(r3)
    stb     r5, 0xc(r3)
    lwz     r3, 0x100(r31)
    lwz     r3, 0x0(r3)
    stb     r5, 0xc(r3)
    stw     r0, 0x10(r31)
    lwz     r6, 0xe8(r31)
    lwz     r0, 0xf0(r31)
    lwz     r5, 0xe4(r31)
    lwz     r3, 0xec(r31)
    subf    r23, r6, r0
    xoris   r0, r23, 0x8000
    lfs     f1, -0x4a4c(rtoc)
    subf    r22, r5, r3
    xoris   r3, r22, 0x8000
    stw     r0, 0x3f4(sp)
    lwz     r25, 0xe0(r31)
    fmr     f2, f1
    stw     r3, 0x3ec(sp)
    lfd     f4, -0x4a38(rtoc)
    addi    r3, r25, 0x2c
    stw     r27, 0x3e8(sp)
    stw     r27, 0x3f0(sp)
    lfd     f3, 0x3e8(sp)
    lfd     f0, 0x3f0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r25)
    addi    r3, r25, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r25)
    lwz     r0, 0x10(r25)
    lwz     r5, 0x4(r25)
    subf    r7, r6, r0
    lwz     r0, 0xc(r25)
    subf    r6, r23, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r22, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x3fc(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x40c(sp)
    stw     r5, 0x41c(sp)
    stw     r0, 0x42c(sp)
    stw     r27, 0x3f8(sp)
    stw     r27, 0x408(sp)
    lfd     f1, 0x3f8(sp)
    stw     r27, 0x418(sp)
    lfd     f0, 0x408(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x428(sp)
    lfd     f1, 0x418(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x428(sp)
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
    stfd    f3, 0x400(sp)
    stfd    f2, 0x410(sp)
    lwz     r23, 0x404(sp)
    stfd    f1, 0x420(sp)
    lwz     r22, 0x414(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x430(sp)
    lwz     r6, 0x424(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x434(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x44c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x43c(sp)
    stw     r6, 0x444(sp)
    stw     r0, 0x454(sp)
    stw     r27, 0x438(sp)
    stw     r27, 0x440(sp)
    lfd     f1, 0x438(sp)
    stw     r27, 0x448(sp)
    lfd     f0, 0x440(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x450(sp)
    lfd     f3, 0x448(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x450(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r25)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r26, 0x4e(r25)
    b       branch_0x8015ec74

branch_0x8015ec50:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8015ec64
    li      r0, 0x0
    stb     r0, 0x2e9(r31)
    b       branch_0x8015ec74

branch_0x8015ec64:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x8015ec74
    li      r0, 0x1
    stb     r0, 0x2e9(r31)
branch_0x8015ec74:
    addi    r3, sp, 0x3b8
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lbz     r0, 0x2e9(r31)
    extsb.  r0, r0
    bne-    branch_0x8015ecc0
    lwz     r28, 0xfc(r31)
    lwz     r3, 0x104(r31)
    lwz     r0, 0x108(r31)
    stw     r3, 0x3b8(sp)
    stw     r0, 0x3bc(sp)
    lwz     r3, 0x10c(r31)
    lwz     r0, 0x110(r31)
    stw     r3, 0x3c0(sp)
    stw     r0, 0x3c4(sp)
    b       branch_0x8015ece4

branch_0x8015ecc0:
    lwz     r28, 0x100(r31)
    lwz     r3, 0x114(r31)
    lwz     r0, 0x118(r31)
    stw     r3, 0x3b8(sp)
    stw     r0, 0x3bc(sp)
    lwz     r3, 0x11c(r31)
    lwz     r0, 0x120(r31)
    stw     r3, 0x3c0(sp)
    stw     r0, 0x3c4(sp)
branch_0x8015ece4:
    lwz     r0, 0x2fc(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x8015f02c
    lwz     r5, 0x3bc(sp)
    lis     r27, 0x4330
    lwz     r0, 0x3c4(sp)
    addi    r3, r28, 0x2c
    lwz     r4, 0x3b8(sp)
    subf    r23, r5, r0
    lwz     r0, 0x3c0(sp)
    xoris   r5, r23, 0x8000
    lfd     f5, -0x4a38(rtoc)
    subf    r22, r4, r0
    stw     r5, 0x3ec(sp)
    xoris   r0, r22, 0x8000
    lfs     f2, -0x4a28(rtoc)
    stw     r0, 0x3fc(sp)
    li      r4, 0x28
    stw     r27, 0x3e8(sp)
    stw     r27, 0x3f8(sp)
    lfd     f1, 0x3e8(sp)
    lfd     f0, 0x3f8(sp)
    fsubs   f1, f1, f5
    stw     r0, 0x41c(sp)
    fsubs   f0, f0, f5
    stw     r5, 0x424(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stw     r27, 0x418(sp)
    fctiwz  f3, f1
    stw     r27, 0x420(sp)
    fctiwz  f2, f0
    lfd     f0, 0x420(sp)
    stfd    f3, 0x3f0(sp)
    lfd     f1, 0x418(sp)
    fsubs   f4, f0, f5
    stfd    f2, 0x400(sp)
    lwz     r24, 0x3f4(sp)
    fsubs   f3, f1, f5
    lwz     r25, 0x404(sp)
    xoris   r0, r24, 0x8000
    xoris   r5, r25, 0x8000
    stw     r0, 0x414(sp)
    stw     r5, 0x40c(sp)
    stw     r27, 0x408(sp)
    stw     r27, 0x410(sp)
    lfd     f1, 0x408(sp)
    lfd     f0, 0x410(sp)
    fsubs   f1, f1, f5
    fsubs   f2, f0, f5
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x28
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r8, r6, r0
    lwz     r0, 0xc(r28)
    subf    r7, r23, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r22, r0
    subf    r5, r24, r8
    subf    r0, r25, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x42c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x43c(sp)
    stw     r5, 0x44c(sp)
    stw     r0, 0x45c(sp)
    stw     r27, 0x428(sp)
    stw     r27, 0x438(sp)
    lfd     f1, 0x428(sp)
    stw     r27, 0x448(sp)
    lfd     f0, 0x438(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x458(sp)
    lfd     f1, 0x448(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x458(sp)
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
    stfd    f3, 0x430(sp)
    stfd    f2, 0x440(sp)
    lwz     r23, 0x434(sp)
    stfd    f1, 0x450(sp)
    lwz     r22, 0x444(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x460(sp)
    lwz     r6, 0x454(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x464(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3dc(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x46c(sp)
    stw     r6, 0x3e4(sp)
    stw     r0, 0x3d4(sp)
    stw     r27, 0x468(sp)
    stw     r27, 0x3e0(sp)
    lfd     f1, 0x468(sp)
    stw     r27, 0x3d8(sp)
    lfd     f0, 0x3e0(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x3d0(sp)
    lfd     f3, 0x3d8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3d0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r26, 0x4e(r28)
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8015f25c
    lwz     r4, 0x0(r28)
    addi    r3, sp, 0x3a8
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x3a8(sp)
    addi    r4, sp, 0x39c
    lwz     r0, 0x3b0(sp)
    li      r5, 0x1fa
    lwz     r8, 0x3ac(sp)
    subf    r3, r6, r0
    lwz     r0, 0x3b4(sp)
    xoris   r7, r3, 0x8000
    lfd     f4, -0x4a38(rtoc)
    xoris   r6, r6, 0x8000
    stw     r7, 0x3d4(sp)
    subf    r0, r8, r0
    lfs     f5, -0x4a48(rtoc)
    stw     r6, 0x3dc(sp)
    xoris   r7, r0, 0x8000
    xoris   r0, r8, 0x8000
    lfs     f0, -0x4a4c(rtoc)
    stw     r7, 0x3e4(sp)
    lwz     r3, -0x5fdc(r13)
    li      r6, 0x0
    stw     r27, 0x3d0(sp)
    li      r7, 0x0
    stw     r27, 0x3d8(sp)
    lfd     f2, 0x3d0(sp)
    lfd     f1, 0x3d8(sp)
    stw     r0, 0x3ec(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r27, 0x3e0(sp)
    fmadds  f3, f5, f2, f1
    stw     r27, 0x3e8(sp)
    lfd     f2, 0x3e0(sp)
    lfd     f1, 0x3e8(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x39c(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x3a0(sp)
    stfs    f0, 0x3a4(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r4, -0x5fdc(r13)
    li      r3, 0x0
    li      r0, 0x888
    lwz     r4, 0xc8(r4)
    stw     r4, 0x44(r31)
    lwz     r5, 0x44(r31)
    sth     r3, 0x16c(r5)
    addi    r6, r5, 0x124
    sth     r3, 0x16e(r5)
    sth     r0, 0x170(r5)
    lha     r3, 0x16c(r5)
    lha     r4, 0x16e(r5)
    lha     r5, 0x170(r5)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lwz     r3, 0x44(r31)
    lfs     f0, -0x4a24(rtoc)
    stfs    f0, 0x190(r3)
    lfs     f0, -0x4a30(rtoc)
    stfs    f0, 0x194(r3)
    lfs     f0, -0x4a20(rtoc)
    stfs    f0, 0x198(r3)
    b       branch_0x8015f25c

branch_0x8015f02c:
    cmpwi   r0, 0x2c
    bne-    branch_0x8015f25c
    lwz     r6, 0x3bc(sp)
    lis     r26, 0x4330
    lwz     r5, 0x3c4(sp)
    addi    r3, r28, 0x2c
    lwz     r4, 0x3b8(sp)
    lwz     r0, 0x3c0(sp)
    subf    r22, r6, r5
    xoris   r5, r22, 0x8000
    lfd     f4, -0x4a38(rtoc)
    subf    r23, r4, r0
    xoris   r0, r23, 0x8000
    stw     r5, 0x3d4(sp)
    lfs     f2, -0x4a28(rtoc)
    li      r4, 0x28
    stw     r0, 0x3e4(sp)
    stw     r26, 0x3d0(sp)
    stw     r26, 0x3e0(sp)
    lfd     f1, 0x3d0(sp)
    lfd     f0, 0x3e0(sp)
    fsubs   f1, f1, f4
    stw     r0, 0x3f4(sp)
    fsubs   f0, f0, f4
    stw     r5, 0x3fc(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stw     r26, 0x3f0(sp)
    fctiwz  f3, f1
    stw     r26, 0x3f8(sp)
    fctiwz  f2, f0
    lfd     f1, 0x3f0(sp)
    stfd    f3, 0x3d8(sp)
    lfd     f0, 0x3f8(sp)
    fsubs   f1, f1, f4
    stfd    f2, 0x3e8(sp)
    lwz     r25, 0x3dc(sp)
    fsubs   f2, f0, f4
    lwz     r24, 0x3ec(sp)
    xoris   r0, r25, 0x8000
    xoris   r5, r24, 0x8000
    stw     r0, 0x40c(sp)
    stw     r5, 0x404(sp)
    stw     r26, 0x400(sp)
    stw     r26, 0x408(sp)
    lfd     f3, 0x400(sp)
    lfd     f0, 0x408(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r27, 0x1
    stb     r27, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x28
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r8, r6, r0
    lwz     r0, 0xc(r28)
    subf    r7, r25, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r24, r0
    subf    r5, r22, r8
    subf    r0, r23, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x414(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x424(sp)
    stw     r5, 0x434(sp)
    stw     r0, 0x444(sp)
    stw     r26, 0x410(sp)
    stw     r26, 0x420(sp)
    lfd     f1, 0x410(sp)
    stw     r26, 0x430(sp)
    lfd     f0, 0x420(sp)
    fsubs   f3, f1, f4
    stw     r26, 0x440(sp)
    lfd     f1, 0x430(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x440(sp)
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
    stfd    f3, 0x418(sp)
    stfd    f2, 0x428(sp)
    lwz     r23, 0x41c(sp)
    stfd    f1, 0x438(sp)
    lwz     r22, 0x42c(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x448(sp)
    lwz     r6, 0x43c(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x44c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x464(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x454(sp)
    stw     r6, 0x45c(sp)
    stw     r0, 0x46c(sp)
    stw     r26, 0x450(sp)
    stw     r26, 0x458(sp)
    lfd     f1, 0x450(sp)
    stw     r26, 0x460(sp)
    lfd     f0, 0x458(sp)
    fsubs   f1, f1, f4
    stw     r26, 0x468(sp)
    lfd     f3, 0x460(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x468(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r27, 0x4e(r28)
branch_0x8015f25c:
    lwz     r0, 0x2fc(r31)
    cmpwi   r0, 0x28
    bge-    branch_0x8015f26c
    b       branch_0x8015f270

branch_0x8015f26c:
    subfic  r0, r0, 0x50
branch_0x8015f270:
    xoris   r0, r0, 0x8000
    lfd     f2, -0x4a38(rtoc)
    stw     r0, 0x3d4(sp)
    lis     r0, 0x4330
    lfs     f3, -0x4a1c(rtoc)
    mr      r3, r28
    stw     r0, 0x3d0(sp)
    lfs     f0, -0x4a18(rtoc)
    lfd     f1, 0x3d0(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x3d8(sp)
    lwz     r0, 0x3dc(sp)
    slwi    r4, r0, 24
    addis   r4, r4, 0xff
    addi    r0, r4, 0xff
    stw     r0, 0x358(sp)
    lwz     r4, 0x0(r28)
    lwz     r0, 0x358(sp)
    stw     r0, 0x13c(r4)
    bl      update__7TExPaneFv
    lwz     r3, 0x2fc(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x2fc(r31)
    lwz     r0, 0x2fc(r31)
    cmpwi   r0, 0x50
    ble-    branch_0x8015f2ec
    li      r0, 0x0
    stw     r0, 0x2fc(r31)
branch_0x8015f2ec:
    lbz     r0, 0x2e9(r31)
    extsb   r3, r29
    extsb   r0, r0
    cmpw    r3, r0
    beq-    branch_0x8015f8cc
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8015f320
    lwz     r4, 0x44(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8015f320
    lwz     r3, -0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
branch_0x8015f320:
    li      r0, 0x0
    stw     r0, 0x2fc(r31)
    li      r4, 0x481e
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015f350
    li      r3, 0x481e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015f350:
    lwz     r22, 0xfc(r31)
    lfs     f0, -0x4a4c(rtoc)
    lfs     f1, 0x18(r22)
    lwz     r5, 0x108(r31)
    fcmpo   cr0, f1, f0
    lwz     r4, 0x110(r31)
    lwz     r3, 0x104(r31)
    lwz     r0, 0x10c(r31)
    subf    r25, r5, r4
    subf    r24, r3, r0
    ble-    branch_0x8015f384
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015f388

branch_0x8015f384:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015f388:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r22)
    lfs     f0, -0x4a4c(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x3d0(sp)
    lwz     r26, 0x3d4(sp)
    ble-    branch_0x8015f3b0
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015f3b4

branch_0x8015f3b0:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015f3b4:
    fadds   f0, f2, f0
    xoris   r0, r24, 0x8000
    xoris   r3, r25, 0x8000
    stw     r0, 0x3dc(sp)
    xoris   r0, r26, 0x8000
    fctiwz  f0, f0
    lis     r29, 0x4330
    stw     r3, 0x3e4(sp)
    addi    r3, r22, 0x2c
    lfd     f4, -0x4a38(rtoc)
    stfd    f0, 0x3d0(sp)
    li      r4, 0x1
    lwz     r23, 0x3d4(sp)
    stw     r0, 0x3f4(sp)
    xoris   r0, r23, 0x8000
    stw     r0, 0x3ec(sp)
    stw     r29, 0x3d8(sp)
    stw     r29, 0x3e0(sp)
    lfd     f1, 0x3d8(sp)
    stw     r29, 0x3e8(sp)
    lfd     f0, 0x3e0(sp)
    fsubs   f1, f1, f4
    stw     r29, 0x3f0(sp)
    lfd     f3, 0x3e8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3f0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    addi    r4, r23, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r28, 0x1
    stb     r28, 0x4f(r22)
    addi    r3, r22, 0x14
    li      r4, 0x1
    lwz     r6, 0x8(r22)
    lwz     r0, 0x10(r22)
    lwz     r5, 0x4(r22)
    subf    r8, r6, r0
    lwz     r0, 0xc(r22)
    subf    r7, r26, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r23, r0
    subf    r5, r25, r8
    subf    r0, r24, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x3fc(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x40c(sp)
    stw     r5, 0x41c(sp)
    stw     r0, 0x42c(sp)
    stw     r29, 0x3f8(sp)
    stw     r29, 0x408(sp)
    lfd     f1, 0x3f8(sp)
    stw     r29, 0x418(sp)
    lfd     f0, 0x408(sp)
    fsubs   f3, f1, f4
    stw     r29, 0x428(sp)
    lfd     f1, 0x418(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x428(sp)
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
    stfd    f3, 0x400(sp)
    stfd    f2, 0x410(sp)
    lwz     r24, 0x404(sp)
    stfd    f1, 0x420(sp)
    lwz     r23, 0x414(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x430(sp)
    lwz     r6, 0x424(sp)
    xoris   r5, r23, 0x8000
    lwz     r7, 0x434(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x44c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x43c(sp)
    stw     r6, 0x444(sp)
    stw     r0, 0x454(sp)
    stw     r29, 0x438(sp)
    stw     r29, 0x440(sp)
    lfd     f1, 0x438(sp)
    stw     r29, 0x448(sp)
    lfd     f0, 0x440(sp)
    fsubs   f1, f1, f4
    stw     r29, 0x450(sp)
    lfd     f3, 0x448(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x450(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    lwz     r4, 0x4(r22)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r22)
    add     r4, r4, r23
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r28, 0x4e(r22)
    lwz     r22, 0x100(r31)
    lfs     f0, -0x4a4c(rtoc)
    lfs     f1, 0x18(r22)
    lwz     r5, 0x118(r31)
    fcmpo   cr0, f1, f0
    lwz     r4, 0x120(r31)
    lwz     r3, 0x114(r31)
    lwz     r0, 0x11c(r31)
    subf    r25, r5, r4
    subf    r24, r3, r0
    ble-    branch_0x8015f5c4
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015f5c8

branch_0x8015f5c4:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015f5c8:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r22)
    lfs     f0, -0x4a4c(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x3d0(sp)
    lwz     r26, 0x3d4(sp)
    ble-    branch_0x8015f5f0
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015f5f4

branch_0x8015f5f0:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015f5f4:
    fadds   f0, f2, f0
    xoris   r0, r24, 0x8000
    xoris   r3, r25, 0x8000
    stw     r0, 0x3dc(sp)
    xoris   r0, r26, 0x8000
    fctiwz  f0, f0
    lis     r29, 0x4330
    stw     r3, 0x3e4(sp)
    addi    r3, r22, 0x2c
    lfd     f4, -0x4a38(rtoc)
    stfd    f0, 0x3d0(sp)
    li      r4, 0x1
    lwz     r23, 0x3d4(sp)
    stw     r0, 0x3f4(sp)
    xoris   r0, r23, 0x8000
    stw     r0, 0x3ec(sp)
    stw     r29, 0x3d8(sp)
    stw     r29, 0x3e0(sp)
    lfd     f1, 0x3d8(sp)
    stw     r29, 0x3e8(sp)
    lfd     f0, 0x3e0(sp)
    fsubs   f1, f1, f4
    stw     r29, 0x3f0(sp)
    lfd     f3, 0x3e8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3f0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    addi    r4, r23, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r28, 0x1
    stb     r28, 0x4f(r22)
    addi    r3, r22, 0x14
    li      r4, 0x1
    lwz     r6, 0x8(r22)
    lwz     r0, 0x10(r22)
    lwz     r5, 0x4(r22)
    subf    r8, r6, r0
    lwz     r0, 0xc(r22)
    subf    r7, r26, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r23, r0
    subf    r5, r25, r8
    subf    r0, r24, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x3fc(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x40c(sp)
    stw     r5, 0x41c(sp)
    stw     r0, 0x42c(sp)
    stw     r29, 0x3f8(sp)
    stw     r29, 0x408(sp)
    lfd     f1, 0x3f8(sp)
    stw     r29, 0x418(sp)
    lfd     f0, 0x408(sp)
    fsubs   f3, f1, f4
    stw     r29, 0x428(sp)
    lfd     f1, 0x418(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x428(sp)
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
    stfd    f3, 0x400(sp)
    stfd    f2, 0x410(sp)
    lwz     r24, 0x404(sp)
    stfd    f1, 0x420(sp)
    lwz     r23, 0x414(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x430(sp)
    lwz     r6, 0x424(sp)
    xoris   r5, r23, 0x8000
    lwz     r7, 0x434(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x44c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x43c(sp)
    stw     r6, 0x444(sp)
    stw     r0, 0x454(sp)
    stw     r29, 0x438(sp)
    stw     r29, 0x440(sp)
    lfd     f1, 0x438(sp)
    stw     r29, 0x448(sp)
    lfd     f0, 0x440(sp)
    fsubs   f1, f1, f4
    stw     r29, 0x450(sp)
    lfd     f3, 0x448(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x450(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    lwz     r4, 0x4(r22)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r22)
    add     r4, r4, r23
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r28, 0x4e(r22)
    lwz     r3, 0xfc(r31)
    bl      update__7TExPaneFv
    lwz     r3, 0x100(r31)
    bl      update__7TExPaneFv
    lbz     r0, 0x2e9(r31)
    extsb.  r0, r0
    bne-    branch_0x8015f838
    li      r0, 0x0
    stb     r0, 0x350(sp)
    li      r4, 0xff
    stb     r4, 0x351(sp)
    stb     r0, 0x352(sp)
    stb     r4, 0x353(sp)
    lwz     r3, 0xfc(r31)
    lwz     r0, 0x350(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    stb     r4, 0x348(sp)
    stb     r4, 0x349(sp)
    stb     r4, 0x34a(sp)
    stb     r4, 0x34b(sp)
    lwz     r3, 0x100(r31)
    lwz     r0, 0x348(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x8015f8cc

branch_0x8015f838:
    li      r5, 0xff
    stb     r5, 0x340(sp)
    li      r0, 0x0
    stb     r5, 0x341(sp)
    stb     r5, 0x342(sp)
    stb     r5, 0x343(sp)
    lwz     r4, 0xfc(r31)
    lwz     r3, 0x340(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stb     r0, 0x338(sp)
    stb     r5, 0x339(sp)
    stb     r0, 0x33a(sp)
    stb     r5, 0x33b(sp)
    lwz     r3, 0x100(r31)
    lwz     r0, 0x338(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x8015f8cc

branch_0x8015f884:
    lwz     r3, 0xe0(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8015f8cc
    lwz     r3, 0xe0(r31)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r31)
    b       branch_0x8015f8cc

branch_0x8015f8b0:
    lbz     r0, 0x2e9(r31)
    extsb.  r0, r0
    bne-    branch_0x8015f8c0
    b       branch_0x8015f8c4

branch_0x8015f8c0:
    mr      r4, r5
branch_0x8015f8c4:
    stw     r4, 0x310(r31)
    lbz     r30, 0x2e9(r31)
branch_0x8015f8cc:
    mr      r3, r30
    lmw     r22, 0x470(sp)
    lwz     r0, 0x49c(sp)
    addi    sp, sp, 0x498
    mtlr    r0
    blr


.globl waitForChoice__9TCardSaveF10TEProgress10TEProgressSc
waitForChoice__9TCardSaveF10TEProgress10TEProgressSc: # 0x8015f8e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x428(sp)
    stmw    r22, 0x400(sp)
    mr      r31, r3
    addi    r22, r6, 0x0
    li      r30, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x80161238
    bge-    branch_0x8015f928
    cmpwi   r0, 0x1
    beq-    branch_0x8015fbcc
    bge-    branch_0x80160144
    cmpwi   r0, 0x0
    bge-    branch_0x8015f934
    b       branch_0x80161280

branch_0x8015f928:
    cmpwi   r0, 0x5
    beq-    branch_0x80161264
    b       branch_0x80161280

branch_0x8015f934:
    lwz     r0, 0x310(r31)
    lis     r3, 0x803c
    addi    r23, r3, 0x6c8
    lwz     r24, 0xf4(r31)
    slwi    r0, r0, 2
    add     r4, r23, r0
    lwz     r3, 0x2e4(r31)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r24, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r0, 0x310(r31)
    lwz     r24, 0xf8(r31)
    slwi    r0, r0, 2
    lwz     r3, 0x2e4(r31)
    add     r4, r23, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r24, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r3, 0x134(r31)
    li      r0, 0x0
    li      r27, 0x1
    stb     r0, 0xc(r3)
    lis     r26, 0x4330
    li      r4, 0x14
    lwz     r3, 0x138(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x128(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0xf8(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x130(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x150(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0xfc(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x100(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0xe0(r31)
    lwz     r3, 0x0(r3)
    stb     r27, 0xc(r3)
    lwz     r6, 0xe8(r31)
    lwz     r0, 0xf0(r31)
    lwz     r5, 0xe4(r31)
    lwz     r3, 0xec(r31)
    subf    r23, r6, r0
    xoris   r0, r23, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r22, r5, r3
    xoris   r3, r22, 0x8000
    stw     r0, 0x3f4(sp)
    lwz     r28, 0xe0(r31)
    fmr     f4, f3
    stw     r3, 0x3fc(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r28, 0x2c
    stw     r26, 0x3f8(sp)
    stw     r26, 0x3f0(sp)
    lfd     f1, 0x3f8(sp)
    lfd     f0, 0x3f0(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r27, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r6, 0x4(r28)
    subf    r7, r5, r0
    lwz     r0, 0xc(r28)
    subf    r5, r23, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r22, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x3ec(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x3dc(sp)
    stw     r5, 0x3cc(sp)
    stw     r0, 0x3bc(sp)
    stw     r26, 0x3e8(sp)
    stw     r26, 0x3d8(sp)
    lfd     f1, 0x3e8(sp)
    stw     r26, 0x3c8(sp)
    lfd     f0, 0x3d8(sp)
    fsubs   f3, f1, f4
    stw     r26, 0x3b8(sp)
    lfd     f1, 0x3c8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3b8(sp)
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
    stfd    f3, 0x3e0(sp)
    stfd    f2, 0x3d0(sp)
    lwz     r23, 0x3e4(sp)
    stfd    f1, 0x3c0(sp)
    lwz     r22, 0x3d4(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x3b0(sp)
    lwz     r6, 0x3c4(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x3b4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x39c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3ac(sp)
    stw     r6, 0x3a4(sp)
    stw     r0, 0x394(sp)
    stw     r26, 0x3a8(sp)
    stw     r26, 0x3a0(sp)
    lfd     f1, 0x3a8(sp)
    stw     r26, 0x398(sp)
    lfd     f0, 0x3a0(sp)
    fsubs   f1, f1, f4
    stw     r26, 0x390(sp)
    lfd     f3, 0x398(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x390(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r27, 0x4e(r28)
    stw     r27, 0x10(r31)
    b       branch_0x80161280

branch_0x8015fbcc:
    lwz     r3, 0xe0(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80161280
    lwz     r3, 0xf8(r31)
    li      r4, 0x1
    extsb.  r0, r22
    stb     r4, 0xc(r3)
    lwz     r3, 0xfc(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x100(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stb     r22, 0x2e9(r31)
    bne-    branch_0x8015fc58
    li      r0, 0x0
    stb     r0, 0x324(sp)
    li      r4, 0xff
    stb     r4, 0x325(sp)
    stb     r0, 0x326(sp)
    stb     r4, 0x327(sp)
    lwz     r3, 0xfc(r31)
    lwz     r0, 0x324(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    stb     r4, 0x31c(sp)
    stb     r4, 0x31d(sp)
    stb     r4, 0x31e(sp)
    stb     r4, 0x31f(sp)
    lwz     r3, 0x100(r31)
    lwz     r0, 0x31c(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x8015fca0

branch_0x8015fc58:
    li      r5, 0xff
    stb     r5, 0x314(sp)
    li      r0, 0x0
    stb     r5, 0x315(sp)
    stb     r5, 0x316(sp)
    stb     r5, 0x317(sp)
    lwz     r4, 0xfc(r31)
    lwz     r3, 0x314(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stb     r0, 0x30c(sp)
    stb     r5, 0x30d(sp)
    stb     r0, 0x30e(sp)
    stb     r5, 0x30f(sp)
    lwz     r3, 0x100(r31)
    lwz     r0, 0x30c(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
branch_0x8015fca0:
    lwz     r24, 0xfc(r31)
    lfs     f0, -0x4a4c(rtoc)
    lfs     f1, 0x18(r24)
    lwz     r5, 0x108(r31)
    fcmpo   cr0, f1, f0
    lwz     r4, 0x110(r31)
    lwz     r3, 0x104(r31)
    lwz     r0, 0x10c(r31)
    subf    r29, r5, r4
    subf    r28, r3, r0
    ble-    branch_0x8015fcd4
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015fcd8

branch_0x8015fcd4:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015fcd8:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r24)
    lfs     f0, -0x4a4c(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x390(sp)
    lwz     r23, 0x394(sp)
    ble-    branch_0x8015fd00
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015fd04

branch_0x8015fd00:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015fd04:
    fadds   f0, f2, f0
    xoris   r0, r28, 0x8000
    xoris   r3, r29, 0x8000
    stw     r0, 0x39c(sp)
    xoris   r0, r23, 0x8000
    fctiwz  f0, f0
    lis     r27, 0x4330
    stw     r3, 0x3a4(sp)
    addi    r3, r24, 0x2c
    lfd     f4, -0x4a38(rtoc)
    stfd    f0, 0x390(sp)
    li      r4, 0x1
    lwz     r22, 0x394(sp)
    stw     r0, 0x3b4(sp)
    xoris   r0, r22, 0x8000
    stw     r0, 0x3ac(sp)
    stw     r27, 0x398(sp)
    stw     r27, 0x3a0(sp)
    lfd     f1, 0x398(sp)
    stw     r27, 0x3a8(sp)
    lfd     f0, 0x3a0(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x3b0(sp)
    lfd     f3, 0x3a8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3b0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r24)
    addi    r3, r24, 0x14
    li      r4, 0x1
    lwz     r6, 0x8(r24)
    lwz     r0, 0x10(r24)
    lwz     r5, 0x4(r24)
    subf    r8, r6, r0
    lwz     r0, 0xc(r24)
    subf    r7, r23, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r22, r0
    subf    r5, r29, r8
    subf    r0, r28, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x3bc(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x3cc(sp)
    stw     r5, 0x3dc(sp)
    stw     r0, 0x3ec(sp)
    stw     r27, 0x3b8(sp)
    stw     r27, 0x3c8(sp)
    lfd     f1, 0x3b8(sp)
    stw     r27, 0x3d8(sp)
    lfd     f0, 0x3c8(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x3e8(sp)
    lfd     f1, 0x3d8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3e8(sp)
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
    stfd    f3, 0x3c0(sp)
    stfd    f2, 0x3d0(sp)
    lwz     r23, 0x3c4(sp)
    stfd    f1, 0x3e0(sp)
    lwz     r22, 0x3d4(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x3f0(sp)
    lwz     r6, 0x3e4(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x3f4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x384(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3fc(sp)
    stw     r6, 0x38c(sp)
    stw     r0, 0x37c(sp)
    stw     r27, 0x3f8(sp)
    stw     r27, 0x388(sp)
    lfd     f1, 0x3f8(sp)
    stw     r27, 0x380(sp)
    lfd     f0, 0x388(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x378(sp)
    lfd     f3, 0x380(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x378(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    lwz     r4, 0x4(r24)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r24)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r26, 0x4e(r24)
    lwz     r24, 0x100(r31)
    lfs     f0, -0x4a4c(rtoc)
    lfs     f1, 0x18(r24)
    lwz     r5, 0x118(r31)
    fcmpo   cr0, f1, f0
    lwz     r4, 0x120(r31)
    lwz     r3, 0x114(r31)
    lwz     r0, 0x11c(r31)
    subf    r29, r5, r4
    subf    r28, r3, r0
    ble-    branch_0x8015ff14
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015ff18

branch_0x8015ff14:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015ff18:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r24)
    lfs     f0, -0x4a4c(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x378(sp)
    lwz     r23, 0x37c(sp)
    ble-    branch_0x8015ff40
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x8015ff44

branch_0x8015ff40:
    lfs     f0, -0x4a2c(rtoc)
branch_0x8015ff44:
    fadds   f0, f2, f0
    xoris   r0, r28, 0x8000
    xoris   r3, r29, 0x8000
    stw     r0, 0x384(sp)
    xoris   r0, r23, 0x8000
    fctiwz  f0, f0
    lis     r27, 0x4330
    stw     r3, 0x38c(sp)
    addi    r3, r24, 0x2c
    lfd     f4, -0x4a38(rtoc)
    stfd    f0, 0x378(sp)
    li      r4, 0x1
    lwz     r22, 0x37c(sp)
    stw     r0, 0x39c(sp)
    xoris   r0, r22, 0x8000
    stw     r0, 0x394(sp)
    stw     r27, 0x380(sp)
    stw     r27, 0x388(sp)
    lfd     f1, 0x380(sp)
    stw     r27, 0x390(sp)
    lfd     f0, 0x388(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x398(sp)
    lfd     f3, 0x390(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x398(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r24)
    addi    r3, r24, 0x14
    li      r4, 0x1
    lwz     r6, 0x8(r24)
    lwz     r0, 0x10(r24)
    lwz     r5, 0x4(r24)
    subf    r8, r6, r0
    lwz     r0, 0xc(r24)
    subf    r7, r23, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r22, r0
    subf    r5, r29, r8
    subf    r0, r28, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x3a4(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x3b4(sp)
    stw     r5, 0x3c4(sp)
    stw     r0, 0x3d4(sp)
    stw     r27, 0x3a0(sp)
    stw     r27, 0x3b0(sp)
    lfd     f1, 0x3a0(sp)
    stw     r27, 0x3c0(sp)
    lfd     f0, 0x3b0(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x3d0(sp)
    lfd     f1, 0x3c0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3d0(sp)
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
    stfd    f3, 0x3a8(sp)
    stfd    f2, 0x3b8(sp)
    lwz     r23, 0x3ac(sp)
    stfd    f1, 0x3c8(sp)
    lwz     r22, 0x3bc(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x3d8(sp)
    lwz     r6, 0x3cc(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x3dc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3f4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3e4(sp)
    stw     r6, 0x3ec(sp)
    stw     r0, 0x3fc(sp)
    stw     r27, 0x3e0(sp)
    stw     r27, 0x3e8(sp)
    lfd     f1, 0x3e0(sp)
    stw     r27, 0x3f0(sp)
    lfd     f0, 0x3e8(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x3f8(sp)
    lfd     f3, 0x3f0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3f8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    lwz     r4, 0x4(r24)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r24)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r26, 0x4e(r24)
    lwz     r3, 0xfc(r31)
    bl      update__7TExPaneFv
    lwz     r3, 0x100(r31)
    bl      update__7TExPaneFv
    li      r0, 0x0
    stw     r0, 0x2fc(r31)
    li      r0, 0x2
    stw     r0, 0x10(r31)
    b       branch_0x80161280

branch_0x80160144:
    lwz     r3, 0x270(r31)
    lbz     r29, 0x2e9(r31)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x801603c4
    lwz     r4, 0x44(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8016016c
    lwz     r3, -0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
branch_0x8016016c:
    lbz     r0, 0x2e9(r31)
    extsb.  r0, r0
    bne-    branch_0x801601a4
    lwz     r3, -0x6044(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801601cc
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x801601cc

branch_0x801601a4:
    lwz     r3, -0x6044(r13)
    li      r4, 0x481d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801601cc
    li      r3, 0x481d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801601cc:
    lwz     r3, 0xf8(r31)
    li      r5, 0x0
    li      r0, 0x3
    stb     r5, 0xc(r3)
    lis     r27, 0x4330
    li      r4, 0x14
    lwz     r3, 0x150(r31)
    stb     r5, 0xc(r3)
    lwz     r3, 0xfc(r31)
    lwz     r3, 0x0(r3)
    stb     r5, 0xc(r3)
    lwz     r3, 0x100(r31)
    lwz     r3, 0x0(r3)
    stb     r5, 0xc(r3)
    stw     r0, 0x10(r31)
    lwz     r6, 0xe8(r31)
    lwz     r0, 0xf0(r31)
    lwz     r5, 0xe4(r31)
    lwz     r3, 0xec(r31)
    subf    r23, r6, r0
    xoris   r0, r23, 0x8000
    lfs     f1, -0x4a4c(rtoc)
    subf    r22, r5, r3
    xoris   r3, r22, 0x8000
    stw     r0, 0x384(sp)
    lwz     r28, 0xe0(r31)
    fmr     f2, f1
    stw     r3, 0x37c(sp)
    lfd     f4, -0x4a38(rtoc)
    addi    r3, r28, 0x2c
    stw     r27, 0x378(sp)
    stw     r27, 0x380(sp)
    lfd     f3, 0x378(sp)
    lfd     f0, 0x380(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r7, r6, r0
    lwz     r0, 0xc(r28)
    subf    r6, r23, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r22, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x38c(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x39c(sp)
    stw     r5, 0x3ac(sp)
    stw     r0, 0x3bc(sp)
    stw     r27, 0x388(sp)
    stw     r27, 0x398(sp)
    lfd     f1, 0x388(sp)
    stw     r27, 0x3a8(sp)
    lfd     f0, 0x398(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x3b8(sp)
    lfd     f1, 0x3a8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3b8(sp)
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
    stfd    f3, 0x390(sp)
    stfd    f2, 0x3a0(sp)
    lwz     r23, 0x394(sp)
    stfd    f1, 0x3b0(sp)
    lwz     r22, 0x3a4(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x3c0(sp)
    lwz     r6, 0x3b4(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x3c4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3dc(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3cc(sp)
    stw     r6, 0x3d4(sp)
    stw     r0, 0x3e4(sp)
    stw     r27, 0x3c8(sp)
    stw     r27, 0x3d0(sp)
    lfd     f1, 0x3c8(sp)
    stw     r27, 0x3d8(sp)
    lfd     f0, 0x3d0(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x3e0(sp)
    lfd     f3, 0x3d8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3e0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r26, 0x4e(r28)
    b       branch_0x80160628

branch_0x801603c4:
    rlwinm. r0, r3, 0, 25, 25
    beq-    branch_0x80160604
    lwz     r4, 0x44(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801603e0
    lwz     r3, -0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
branch_0x801603e0:
    lwz     r3, -0x6044(r13)
    li      r4, 0x481d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80160408
    li      r3, 0x481d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80160408:
    lwz     r3, 0xf8(r31)
    li      r5, 0x0
    li      r0, 0x3
    stb     r5, 0xc(r3)
    lis     r27, 0x4330
    li      r4, 0x14
    lwz     r3, 0x150(r31)
    stb     r5, 0xc(r3)
    lwz     r3, 0xfc(r31)
    lwz     r3, 0x0(r3)
    stb     r5, 0xc(r3)
    lwz     r3, 0x100(r31)
    lwz     r3, 0x0(r3)
    stb     r5, 0xc(r3)
    stw     r0, 0x10(r31)
    lwz     r6, 0xe8(r31)
    lwz     r0, 0xf0(r31)
    lwz     r5, 0xe4(r31)
    lwz     r3, 0xec(r31)
    subf    r23, r6, r0
    xoris   r0, r23, 0x8000
    lfs     f1, -0x4a4c(rtoc)
    subf    r22, r5, r3
    xoris   r3, r22, 0x8000
    stw     r0, 0x384(sp)
    lwz     r28, 0xe0(r31)
    fmr     f2, f1
    stw     r3, 0x37c(sp)
    lfd     f4, -0x4a38(rtoc)
    addi    r3, r28, 0x2c
    stw     r27, 0x378(sp)
    stw     r27, 0x380(sp)
    lfd     f3, 0x378(sp)
    lfd     f0, 0x380(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r7, r6, r0
    lwz     r0, 0xc(r28)
    subf    r6, r23, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r22, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x38c(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x39c(sp)
    stw     r5, 0x3ac(sp)
    stw     r0, 0x3bc(sp)
    stw     r27, 0x388(sp)
    stw     r27, 0x398(sp)
    lfd     f1, 0x388(sp)
    stw     r27, 0x3a8(sp)
    lfd     f0, 0x398(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x3b8(sp)
    lfd     f1, 0x3a8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3b8(sp)
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
    stfd    f3, 0x390(sp)
    stfd    f2, 0x3a0(sp)
    lwz     r23, 0x394(sp)
    stfd    f1, 0x3b0(sp)
    lwz     r22, 0x3a4(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x3c0(sp)
    lwz     r6, 0x3b4(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x3c4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3dc(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3cc(sp)
    stw     r6, 0x3d4(sp)
    stw     r0, 0x3e4(sp)
    stw     r27, 0x3c8(sp)
    stw     r27, 0x3d0(sp)
    lfd     f1, 0x3c8(sp)
    stw     r27, 0x3d8(sp)
    lfd     f0, 0x3d0(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x3e0(sp)
    lfd     f3, 0x3d8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3e0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r26, 0x4e(r28)
    stb     r26, 0x2e9(r31)
    b       branch_0x80160628

branch_0x80160604:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80160618
    li      r0, 0x0
    stb     r0, 0x2e9(r31)
    b       branch_0x80160628

branch_0x80160618:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x80160628
    li      r0, 0x1
    stb     r0, 0x2e9(r31)
branch_0x80160628:
    addi    r3, sp, 0x350
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lbz     r0, 0x2e9(r31)
    extsb.  r0, r0
    bne-    branch_0x80160674
    lwz     r28, 0xfc(r31)
    lwz     r3, 0x104(r31)
    lwz     r0, 0x108(r31)
    stw     r3, 0x350(sp)
    stw     r0, 0x354(sp)
    lwz     r3, 0x10c(r31)
    lwz     r0, 0x110(r31)
    stw     r3, 0x358(sp)
    stw     r0, 0x35c(sp)
    b       branch_0x80160698

branch_0x80160674:
    lwz     r28, 0x100(r31)
    lwz     r3, 0x114(r31)
    lwz     r0, 0x118(r31)
    stw     r3, 0x350(sp)
    stw     r0, 0x354(sp)
    lwz     r3, 0x11c(r31)
    lwz     r0, 0x120(r31)
    stw     r3, 0x358(sp)
    stw     r0, 0x35c(sp)
branch_0x80160698:
    lwz     r0, 0x2fc(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x801609e0
    lwz     r5, 0x354(sp)
    lis     r27, 0x4330
    lwz     r0, 0x35c(sp)
    addi    r3, r28, 0x2c
    lwz     r4, 0x350(sp)
    subf    r23, r5, r0
    lwz     r0, 0x358(sp)
    xoris   r5, r23, 0x8000
    lfd     f5, -0x4a38(rtoc)
    subf    r22, r4, r0
    stw     r5, 0x37c(sp)
    xoris   r0, r22, 0x8000
    lfs     f2, -0x4a28(rtoc)
    stw     r0, 0x38c(sp)
    li      r4, 0x28
    stw     r27, 0x378(sp)
    stw     r27, 0x388(sp)
    lfd     f1, 0x378(sp)
    lfd     f0, 0x388(sp)
    fsubs   f1, f1, f5
    stw     r0, 0x3ac(sp)
    fsubs   f0, f0, f5
    stw     r5, 0x3b4(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stw     r27, 0x3a8(sp)
    fctiwz  f3, f1
    stw     r27, 0x3b0(sp)
    fctiwz  f2, f0
    lfd     f0, 0x3b0(sp)
    stfd    f3, 0x380(sp)
    lfd     f1, 0x3a8(sp)
    fsubs   f4, f0, f5
    stfd    f2, 0x390(sp)
    lwz     r24, 0x384(sp)
    fsubs   f3, f1, f5
    lwz     r25, 0x394(sp)
    xoris   r0, r24, 0x8000
    xoris   r5, r25, 0x8000
    stw     r0, 0x3a4(sp)
    stw     r5, 0x39c(sp)
    stw     r27, 0x398(sp)
    stw     r27, 0x3a0(sp)
    lfd     f1, 0x398(sp)
    lfd     f0, 0x3a0(sp)
    fsubs   f1, f1, f5
    fsubs   f2, f0, f5
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x28
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r8, r6, r0
    lwz     r0, 0xc(r28)
    subf    r7, r23, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r22, r0
    subf    r5, r24, r8
    subf    r0, r25, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x3bc(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x3cc(sp)
    stw     r5, 0x3dc(sp)
    stw     r0, 0x3ec(sp)
    stw     r27, 0x3b8(sp)
    stw     r27, 0x3c8(sp)
    lfd     f1, 0x3b8(sp)
    stw     r27, 0x3d8(sp)
    lfd     f0, 0x3c8(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x3e8(sp)
    lfd     f1, 0x3d8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3e8(sp)
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
    stfd    f3, 0x3c0(sp)
    stfd    f2, 0x3d0(sp)
    lwz     r23, 0x3c4(sp)
    stfd    f1, 0x3e0(sp)
    lwz     r22, 0x3d4(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x3f0(sp)
    lwz     r6, 0x3e4(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x3f4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x36c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3fc(sp)
    stw     r6, 0x374(sp)
    stw     r0, 0x364(sp)
    stw     r27, 0x3f8(sp)
    stw     r27, 0x370(sp)
    lfd     f1, 0x3f8(sp)
    stw     r27, 0x368(sp)
    lfd     f0, 0x370(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x360(sp)
    lfd     f3, 0x368(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x360(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r26, 0x4e(r28)
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80160c10
    lwz     r4, 0x0(r28)
    addi    r3, sp, 0x340
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x340(sp)
    addi    r4, sp, 0x334
    lwz     r0, 0x348(sp)
    li      r5, 0x1fa
    lwz     r8, 0x344(sp)
    subf    r3, r6, r0
    lwz     r0, 0x34c(sp)
    xoris   r7, r3, 0x8000
    lfd     f4, -0x4a38(rtoc)
    xoris   r6, r6, 0x8000
    stw     r7, 0x364(sp)
    subf    r0, r8, r0
    lfs     f5, -0x4a48(rtoc)
    stw     r6, 0x36c(sp)
    xoris   r7, r0, 0x8000
    xoris   r0, r8, 0x8000
    lfs     f0, -0x4a4c(rtoc)
    stw     r7, 0x374(sp)
    lwz     r3, -0x5fdc(r13)
    li      r6, 0x0
    stw     r27, 0x360(sp)
    li      r7, 0x0
    stw     r27, 0x368(sp)
    lfd     f2, 0x360(sp)
    lfd     f1, 0x368(sp)
    stw     r0, 0x37c(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r27, 0x370(sp)
    fmadds  f3, f5, f2, f1
    stw     r27, 0x378(sp)
    lfd     f2, 0x370(sp)
    lfd     f1, 0x378(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x334(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x338(sp)
    stfs    f0, 0x33c(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r4, -0x5fdc(r13)
    li      r3, 0x0
    li      r0, 0x888
    lwz     r4, 0xc8(r4)
    stw     r4, 0x44(r31)
    lwz     r5, 0x44(r31)
    sth     r3, 0x16c(r5)
    addi    r6, r5, 0x124
    sth     r3, 0x16e(r5)
    sth     r0, 0x170(r5)
    lha     r3, 0x16c(r5)
    lha     r4, 0x16e(r5)
    lha     r5, 0x170(r5)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lwz     r3, 0x44(r31)
    lfs     f0, -0x4a24(rtoc)
    stfs    f0, 0x190(r3)
    lfs     f0, -0x4a30(rtoc)
    stfs    f0, 0x194(r3)
    lfs     f0, -0x4a20(rtoc)
    stfs    f0, 0x198(r3)
    b       branch_0x80160c10

branch_0x801609e0:
    cmpwi   r0, 0x2c
    bne-    branch_0x80160c10
    lwz     r6, 0x354(sp)
    lis     r26, 0x4330
    lwz     r5, 0x35c(sp)
    addi    r3, r28, 0x2c
    lwz     r4, 0x350(sp)
    lwz     r0, 0x358(sp)
    subf    r22, r6, r5
    xoris   r5, r22, 0x8000
    lfd     f4, -0x4a38(rtoc)
    subf    r23, r4, r0
    xoris   r0, r23, 0x8000
    stw     r5, 0x364(sp)
    lfs     f2, -0x4a28(rtoc)
    li      r4, 0x28
    stw     r0, 0x374(sp)
    stw     r26, 0x360(sp)
    stw     r26, 0x370(sp)
    lfd     f1, 0x360(sp)
    lfd     f0, 0x370(sp)
    fsubs   f1, f1, f4
    stw     r0, 0x384(sp)
    fsubs   f0, f0, f4
    stw     r5, 0x38c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stw     r26, 0x380(sp)
    fctiwz  f3, f1
    stw     r26, 0x388(sp)
    fctiwz  f2, f0
    lfd     f1, 0x380(sp)
    stfd    f3, 0x368(sp)
    lfd     f0, 0x388(sp)
    fsubs   f1, f1, f4
    stfd    f2, 0x378(sp)
    lwz     r25, 0x36c(sp)
    fsubs   f2, f0, f4
    lwz     r24, 0x37c(sp)
    xoris   r0, r25, 0x8000
    xoris   r5, r24, 0x8000
    stw     r0, 0x39c(sp)
    stw     r5, 0x394(sp)
    stw     r26, 0x390(sp)
    stw     r26, 0x398(sp)
    lfd     f3, 0x390(sp)
    lfd     f0, 0x398(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r27, 0x1
    stb     r27, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x28
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r8, r6, r0
    lwz     r0, 0xc(r28)
    subf    r7, r25, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r24, r0
    subf    r5, r22, r8
    subf    r0, r23, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x3a4(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x3b4(sp)
    stw     r5, 0x3c4(sp)
    stw     r0, 0x3d4(sp)
    stw     r26, 0x3a0(sp)
    stw     r26, 0x3b0(sp)
    lfd     f1, 0x3a0(sp)
    stw     r26, 0x3c0(sp)
    lfd     f0, 0x3b0(sp)
    fsubs   f3, f1, f4
    stw     r26, 0x3d0(sp)
    lfd     f1, 0x3c0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3d0(sp)
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
    stfd    f3, 0x3a8(sp)
    stfd    f2, 0x3b8(sp)
    lwz     r23, 0x3ac(sp)
    stfd    f1, 0x3c8(sp)
    lwz     r22, 0x3bc(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x3d8(sp)
    lwz     r6, 0x3cc(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x3dc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3f4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3e4(sp)
    stw     r6, 0x3ec(sp)
    stw     r0, 0x3fc(sp)
    stw     r26, 0x3e0(sp)
    stw     r26, 0x3e8(sp)
    lfd     f1, 0x3e0(sp)
    stw     r26, 0x3f0(sp)
    lfd     f0, 0x3e8(sp)
    fsubs   f1, f1, f4
    stw     r26, 0x3f8(sp)
    lfd     f3, 0x3f0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3f8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r27, 0x4e(r28)
branch_0x80160c10:
    lwz     r0, 0x2fc(r31)
    cmpwi   r0, 0x28
    bge-    branch_0x80160c20
    b       branch_0x80160c24

branch_0x80160c20:
    subfic  r0, r0, 0x50
branch_0x80160c24:
    xoris   r0, r0, 0x8000
    lfd     f2, -0x4a38(rtoc)
    stw     r0, 0x364(sp)
    lis     r0, 0x4330
    lfs     f3, -0x4a1c(rtoc)
    mr      r3, r28
    stw     r0, 0x360(sp)
    lfs     f0, -0x4a18(rtoc)
    lfd     f1, 0x360(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x368(sp)
    lwz     r0, 0x36c(sp)
    slwi    r4, r0, 24
    addis   r4, r4, 0xff
    addi    r0, r4, 0xff
    stw     r0, 0x2f0(sp)
    lwz     r4, 0x0(r28)
    lwz     r0, 0x2f0(sp)
    stw     r0, 0x13c(r4)
    bl      update__7TExPaneFv
    lwz     r3, 0x2fc(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x2fc(r31)
    lwz     r0, 0x2fc(r31)
    cmpwi   r0, 0x50
    ble-    branch_0x80160ca0
    li      r0, 0x0
    stw     r0, 0x2fc(r31)
branch_0x80160ca0:
    lbz     r0, 0x2e9(r31)
    extsb   r3, r29
    extsb   r0, r0
    cmpw    r3, r0
    beq-    branch_0x80161280
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80160cd4
    lwz     r4, 0x44(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x80160cd4
    lwz     r3, -0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
branch_0x80160cd4:
    li      r0, 0x0
    stw     r0, 0x2fc(r31)
    li      r4, 0x481e
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80160d04
    li      r3, 0x481e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80160d04:
    lwz     r22, 0xfc(r31)
    lfs     f0, -0x4a4c(rtoc)
    lfs     f1, 0x18(r22)
    lwz     r5, 0x108(r31)
    fcmpo   cr0, f1, f0
    lwz     r4, 0x110(r31)
    lwz     r3, 0x104(r31)
    lwz     r0, 0x10c(r31)
    subf    r25, r5, r4
    subf    r24, r3, r0
    ble-    branch_0x80160d38
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x80160d3c

branch_0x80160d38:
    lfs     f0, -0x4a2c(rtoc)
branch_0x80160d3c:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r22)
    lfs     f0, -0x4a4c(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x360(sp)
    lwz     r26, 0x364(sp)
    ble-    branch_0x80160d64
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x80160d68

branch_0x80160d64:
    lfs     f0, -0x4a2c(rtoc)
branch_0x80160d68:
    fadds   f0, f2, f0
    xoris   r0, r24, 0x8000
    xoris   r3, r25, 0x8000
    stw     r0, 0x36c(sp)
    xoris   r0, r26, 0x8000
    fctiwz  f0, f0
    lis     r29, 0x4330
    stw     r3, 0x374(sp)
    addi    r3, r22, 0x2c
    lfd     f4, -0x4a38(rtoc)
    stfd    f0, 0x360(sp)
    li      r4, 0x1
    lwz     r23, 0x364(sp)
    stw     r0, 0x384(sp)
    xoris   r0, r23, 0x8000
    stw     r0, 0x37c(sp)
    stw     r29, 0x368(sp)
    stw     r29, 0x370(sp)
    lfd     f1, 0x368(sp)
    stw     r29, 0x378(sp)
    lfd     f0, 0x370(sp)
    fsubs   f1, f1, f4
    stw     r29, 0x380(sp)
    lfd     f3, 0x378(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x380(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    addi    r4, r23, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r28, 0x1
    stb     r28, 0x4f(r22)
    addi    r3, r22, 0x14
    li      r4, 0x1
    lwz     r6, 0x8(r22)
    lwz     r0, 0x10(r22)
    lwz     r5, 0x4(r22)
    subf    r8, r6, r0
    lwz     r0, 0xc(r22)
    subf    r7, r26, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r23, r0
    subf    r5, r25, r8
    subf    r0, r24, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x38c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x39c(sp)
    stw     r5, 0x3ac(sp)
    stw     r0, 0x3bc(sp)
    stw     r29, 0x388(sp)
    stw     r29, 0x398(sp)
    lfd     f1, 0x388(sp)
    stw     r29, 0x3a8(sp)
    lfd     f0, 0x398(sp)
    fsubs   f3, f1, f4
    stw     r29, 0x3b8(sp)
    lfd     f1, 0x3a8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3b8(sp)
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
    stfd    f3, 0x390(sp)
    stfd    f2, 0x3a0(sp)
    lwz     r24, 0x394(sp)
    stfd    f1, 0x3b0(sp)
    lwz     r23, 0x3a4(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x3c0(sp)
    lwz     r6, 0x3b4(sp)
    xoris   r5, r23, 0x8000
    lwz     r7, 0x3c4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3dc(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3cc(sp)
    stw     r6, 0x3d4(sp)
    stw     r0, 0x3e4(sp)
    stw     r29, 0x3c8(sp)
    stw     r29, 0x3d0(sp)
    lfd     f1, 0x3c8(sp)
    stw     r29, 0x3d8(sp)
    lfd     f0, 0x3d0(sp)
    fsubs   f1, f1, f4
    stw     r29, 0x3e0(sp)
    lfd     f3, 0x3d8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3e0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    lwz     r4, 0x4(r22)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r22)
    add     r4, r4, r23
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r28, 0x4e(r22)
    lwz     r22, 0x100(r31)
    lfs     f0, -0x4a4c(rtoc)
    lfs     f1, 0x18(r22)
    lwz     r5, 0x118(r31)
    fcmpo   cr0, f1, f0
    lwz     r4, 0x120(r31)
    lwz     r3, 0x114(r31)
    lwz     r0, 0x11c(r31)
    subf    r25, r5, r4
    subf    r24, r3, r0
    ble-    branch_0x80160f78
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x80160f7c

branch_0x80160f78:
    lfs     f0, -0x4a2c(rtoc)
branch_0x80160f7c:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r22)
    lfs     f0, -0x4a4c(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x360(sp)
    lwz     r26, 0x364(sp)
    ble-    branch_0x80160fa4
    lfs     f0, -0x4a48(rtoc)
    b       branch_0x80160fa8

branch_0x80160fa4:
    lfs     f0, -0x4a2c(rtoc)
branch_0x80160fa8:
    fadds   f0, f2, f0
    xoris   r0, r24, 0x8000
    xoris   r3, r25, 0x8000
    stw     r0, 0x36c(sp)
    xoris   r0, r26, 0x8000
    fctiwz  f0, f0
    lis     r29, 0x4330
    stw     r3, 0x374(sp)
    addi    r3, r22, 0x2c
    lfd     f4, -0x4a38(rtoc)
    stfd    f0, 0x360(sp)
    li      r4, 0x1
    lwz     r23, 0x364(sp)
    stw     r0, 0x384(sp)
    xoris   r0, r23, 0x8000
    stw     r0, 0x37c(sp)
    stw     r29, 0x368(sp)
    stw     r29, 0x370(sp)
    lfd     f1, 0x368(sp)
    stw     r29, 0x378(sp)
    lfd     f0, 0x370(sp)
    fsubs   f1, f1, f4
    stw     r29, 0x380(sp)
    lfd     f3, 0x378(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x380(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    addi    r4, r23, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r28, 0x1
    stb     r28, 0x4f(r22)
    addi    r3, r22, 0x14
    li      r4, 0x1
    lwz     r6, 0x8(r22)
    lwz     r0, 0x10(r22)
    lwz     r5, 0x4(r22)
    subf    r8, r6, r0
    lwz     r0, 0xc(r22)
    subf    r7, r26, r8
    lfd     f4, -0x4a38(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r6, r23, r0
    subf    r5, r25, r8
    subf    r0, r24, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x38c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x39c(sp)
    stw     r5, 0x3ac(sp)
    stw     r0, 0x3bc(sp)
    stw     r29, 0x388(sp)
    stw     r29, 0x398(sp)
    lfd     f1, 0x388(sp)
    stw     r29, 0x3a8(sp)
    lfd     f0, 0x398(sp)
    fsubs   f3, f1, f4
    stw     r29, 0x3b8(sp)
    lfd     f1, 0x3a8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3b8(sp)
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
    stfd    f3, 0x390(sp)
    stfd    f2, 0x3a0(sp)
    lwz     r24, 0x394(sp)
    stfd    f1, 0x3b0(sp)
    lwz     r23, 0x3a4(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x3c0(sp)
    lwz     r6, 0x3b4(sp)
    xoris   r5, r23, 0x8000
    lwz     r7, 0x3c4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3dc(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3cc(sp)
    stw     r6, 0x3d4(sp)
    stw     r0, 0x3e4(sp)
    stw     r29, 0x3c8(sp)
    stw     r29, 0x3d0(sp)
    lfd     f1, 0x3c8(sp)
    stw     r29, 0x3d8(sp)
    lfd     f0, 0x3d0(sp)
    fsubs   f1, f1, f4
    stw     r29, 0x3e0(sp)
    lfd     f3, 0x3d8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3e0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    lwz     r4, 0x4(r22)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r22)
    add     r4, r4, r23
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r28, 0x4e(r22)
    lwz     r3, 0xfc(r31)
    bl      update__7TExPaneFv
    lwz     r3, 0x100(r31)
    bl      update__7TExPaneFv
    lbz     r0, 0x2e9(r31)
    extsb.  r0, r0
    bne-    branch_0x801611ec
    li      r0, 0x0
    stb     r0, 0x2e8(sp)
    li      r4, 0xff
    stb     r4, 0x2e9(sp)
    stb     r0, 0x2ea(sp)
    stb     r4, 0x2eb(sp)
    lwz     r3, 0xfc(r31)
    lwz     r0, 0x2e8(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    stb     r4, 0x2e0(sp)
    stb     r4, 0x2e1(sp)
    stb     r4, 0x2e2(sp)
    stb     r4, 0x2e3(sp)
    lwz     r3, 0x100(r31)
    lwz     r0, 0x2e0(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x80161280

branch_0x801611ec:
    li      r5, 0xff
    stb     r5, 0x2d8(sp)
    li      r0, 0x0
    stb     r5, 0x2d9(sp)
    stb     r5, 0x2da(sp)
    stb     r5, 0x2db(sp)
    lwz     r4, 0xfc(r31)
    lwz     r3, 0x2d8(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stb     r0, 0x2d0(sp)
    stb     r5, 0x2d1(sp)
    stb     r0, 0x2d2(sp)
    stb     r5, 0x2d3(sp)
    lwz     r3, 0x100(r31)
    lwz     r0, 0x2d0(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x80161280

branch_0x80161238:
    lwz     r3, 0xe0(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80161280
    lwz     r3, 0xe0(r31)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r31)
    b       branch_0x80161280

branch_0x80161264:
    lbz     r0, 0x2e9(r31)
    extsb.  r0, r0
    bne-    branch_0x80161274
    b       branch_0x80161278

branch_0x80161274:
    mr      r4, r5
branch_0x80161278:
    stw     r4, 0x310(r31)
    lbz     r30, 0x2e9(r31)
branch_0x80161280:
    mr      r3, r30
    lmw     r22, 0x400(sp)
    lwz     r0, 0x42c(sp)
    addi    sp, sp, 0x428
    mtlr    r0
    blr


.globl waitForStop__9TCardSaveF10TEProgress
waitForStop__9TCardSaveF10TEProgress: # 0x80161298
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a8(sp)
    stmw    r24, 0x188(sp)
    mr      r26, r3
    li      r27, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x80161bbc
    bge-    branch_0x801612d8
    cmpwi   r0, 0x1
    beq-    branch_0x801617a8
    bge-    branch_0x801617ec
    cmpwi   r0, 0x0
    bge-    branch_0x801612e4
    b       branch_0x80161c10

branch_0x801612d8:
    cmpwi   r0, 0x5
    beq-    branch_0x80161c08
    b       branch_0x80161c10

branch_0x801612e4:
    lwz     r0, 0x310(r26)
    lis     r3, 0x803c
    addi    r29, r3, 0x6c8
    lwz     r30, 0xa0(r26)
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r3, 0x2e4(r26)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r28, r3, 0x0
    addi    r3, r30, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r28, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r0, 0x310(r26)
    lwz     r30, 0xa4(r26)
    slwi    r0, r0, 2
    lwz     r3, 0x2e4(r26)
    add     r4, r29, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r28, r3, 0x0
    addi    r3, r30, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r28, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r29, 0xd8(r26)
    li      r4, 0x1
    lwz     r3, 0x2e4(r26)
    bl      SMSGetMessageData__FPvUl
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r28, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r29, 0xdc(r26)
    li      r4, 0x1
    lwz     r3, 0x2e4(r26)
    bl      SMSGetMessageData__FPvUl
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r28, 0x0
    li      r5, 0x200
    bl      strncpy
    lwz     r3, 0xa4(r26)
    li      r29, 0x0
    li      r31, 0x1
    stb     r29, 0xc(r3)
    lis     r30, 0x4330
    li      r4, 0x14
    lwz     r3, 0x48(r26)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r6, 0x50(r26)
    lwz     r0, 0x58(r26)
    lwz     r5, 0x4c(r26)
    lwz     r3, 0x54(r26)
    subf    r24, r6, r0
    xoris   r0, r24, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0x17c(sp)
    lwz     r28, 0x48(r26)
    fmr     f4, f3
    stw     r3, 0x184(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r28, 0x2c
    stw     r30, 0x180(sp)
    stw     r30, 0x178(sp)
    lfd     f1, 0x180(sp)
    lfd     f0, 0x178(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r6, 0x4(r28)
    subf    r7, r5, r0
    lwz     r0, 0xc(r28)
    subf    r5, r24, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r25, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x174(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x164(sp)
    stw     r5, 0x154(sp)
    stw     r0, 0x144(sp)
    stw     r30, 0x170(sp)
    stw     r30, 0x160(sp)
    lfd     f1, 0x170(sp)
    stw     r30, 0x150(sp)
    lfd     f0, 0x160(sp)
    fsubs   f3, f1, f4
    stw     r30, 0x140(sp)
    lfd     f1, 0x150(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x140(sp)
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
    stfd    f3, 0x168(sp)
    stfd    f2, 0x158(sp)
    lwz     r25, 0x16c(sp)
    stfd    f1, 0x148(sp)
    lwz     r24, 0x15c(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0x138(sp)
    lwz     r6, 0x14c(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0x13c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x124(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x134(sp)
    stw     r6, 0x12c(sp)
    stw     r0, 0x11c(sp)
    stw     r30, 0x130(sp)
    stw     r30, 0x128(sp)
    lfd     f1, 0x130(sp)
    stw     r30, 0x120(sp)
    lfd     f0, 0x128(sp)
    fsubs   f1, f1, f4
    stw     r30, 0x118(sp)
    lfd     f3, 0x120(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x118(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r31, 0x4e(r28)
    li      r4, 0x14
    lwz     r3, 0xdc(r26)
    stb     r29, 0xc(r3)
    lwz     r6, 0xcc(r26)
    lwz     r0, 0xd4(r26)
    lwz     r5, 0xc8(r26)
    lwz     r3, 0xd0(r26)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x4a4c(rtoc)
    subf    r24, r5, r3
    xoris   r3, r24, 0x8000
    stw     r0, 0x10c(sp)
    lwz     r28, 0xc4(r26)
    fmr     f4, f3
    stw     r3, 0x114(sp)
    lfd     f2, -0x4a38(rtoc)
    addi    r3, r28, 0x2c
    stw     r30, 0x110(sp)
    stw     r30, 0x108(sp)
    lfd     f1, 0x110(sp)
    lfd     f0, 0x108(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r6, 0x4(r28)
    subf    r7, r5, r0
    lwz     r0, 0xc(r28)
    subf    r5, r25, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r24, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x104(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0xf4(sp)
    stw     r5, 0xe4(sp)
    stw     r0, 0xd4(sp)
    stw     r30, 0x100(sp)
    stw     r30, 0xf0(sp)
    lfd     f1, 0x100(sp)
    stw     r30, 0xe0(sp)
    lfd     f0, 0xf0(sp)
    fsubs   f3, f1, f4
    stw     r30, 0xd0(sp)
    lfd     f1, 0xe0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xd0(sp)
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
    stfd    f3, 0xf8(sp)
    stfd    f2, 0xe8(sp)
    lwz     r25, 0xfc(sp)
    stfd    f1, 0xd8(sp)
    lwz     r24, 0xec(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0xc8(sp)
    lwz     r6, 0xdc(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0xcc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0xb4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0xc4(sp)
    stw     r6, 0xbc(sp)
    stw     r0, 0xac(sp)
    stw     r30, 0xc0(sp)
    stw     r30, 0xb8(sp)
    lfd     f1, 0xc0(sp)
    stw     r30, 0xb0(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f1, f1, f4
    stw     r30, 0xa8(sp)
    lfd     f3, 0xb0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xa8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r31, 0x4e(r28)
    lwz     r3, 0x310(r26)
    cmpwi   r3, 0x4
    beq-    branch_0x8016177c
    cmpwi   r3, 0x3
    beq-    branch_0x8016177c
    cmpwi   r3, 0x5
    beq-    branch_0x8016177c
    subi    r0, r3, 0xc
    cmplwi  r0, 0x1
    ble-    branch_0x8016177c
    cmpwi   r3, 0x2d
    beq-    branch_0x8016177c
    cmpwi   r3, 0x35
    bne-    branch_0x80161790
branch_0x8016177c:
    lwz     r3, 0xc4(r26)
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    b       branch_0x8016179c

branch_0x80161790:
    lwz     r3, 0xc4(r26)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
branch_0x8016179c:
    li      r0, 0x1
    stw     r0, 0x10(r26)
    b       branch_0x80161c10

branch_0x801617a8:
    li      r24, 0x1
    lwz     r3, 0x48(r26)
    bl      update__7TExPaneFv
    and     r24, r24, r3
    lwz     r3, 0xc4(r26)
    bl      update__7TExPaneFv
    and     r24, r24, r3
    clrlwi. r0, r24, 24
    beq-    branch_0x80161c10
    li      r0, 0x2
    stw     r0, 0x10(r26)
    li      r0, 0x1
    lwz     r3, 0xa4(r26)
    stb     r0, 0xc(r3)
    lwz     r3, 0xdc(r26)
    stb     r0, 0xc(r3)
    b       branch_0x80161c10

branch_0x801617ec:
    lwz     r3, 0x270(r26)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80161c10
    lwz     r3, -0x6044(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80161824
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80161824:
    lwz     r6, 0x50(r26)
    lis     r30, 0x4330
    lwz     r0, 0x58(r26)
    li      r4, 0x14
    lwz     r5, 0x4c(r26)
    lwz     r3, 0x54(r26)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4a4c(rtoc)
    subf    r24, r5, r3
    xoris   r3, r24, 0x8000
    stw     r0, 0xb4(sp)
    lwz     r28, 0x48(r26)
    fmr     f2, f1
    stw     r3, 0xac(sp)
    lfd     f4, -0x4a38(rtoc)
    addi    r3, r28, 0x2c
    stw     r30, 0xa8(sp)
    stw     r30, 0xb0(sp)
    lfd     f3, 0xa8(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r7, r6, r0
    lwz     r0, 0xc(r28)
    subf    r6, r25, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r24, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0xbc(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0xcc(sp)
    stw     r5, 0xdc(sp)
    stw     r0, 0xec(sp)
    stw     r30, 0xb8(sp)
    stw     r30, 0xc8(sp)
    lfd     f1, 0xb8(sp)
    stw     r30, 0xd8(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f3, f1, f4
    stw     r30, 0xe8(sp)
    lfd     f1, 0xd8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xe8(sp)
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
    stfd    f3, 0xc0(sp)
    stfd    f2, 0xd0(sp)
    lwz     r25, 0xc4(sp)
    stfd    f1, 0xe0(sp)
    lwz     r24, 0xd4(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0xf0(sp)
    lwz     r6, 0xe4(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0xf4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x10c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0xfc(sp)
    stw     r6, 0x104(sp)
    stw     r0, 0x114(sp)
    stw     r30, 0xf8(sp)
    stw     r30, 0x100(sp)
    lfd     f1, 0xf8(sp)
    stw     r30, 0x108(sp)
    lfd     f0, 0x100(sp)
    fsubs   f1, f1, f4
    stw     r30, 0x110(sp)
    lfd     f3, 0x108(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x110(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r31, 0x4e(r28)
    li      r4, 0x14
    lwz     r6, 0xcc(r26)
    lwz     r0, 0xd4(r26)
    lwz     r5, 0xc8(r26)
    lwz     r3, 0xd0(r26)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4a4c(rtoc)
    subf    r24, r5, r3
    xoris   r3, r24, 0x8000
    stw     r0, 0x124(sp)
    lwz     r28, 0xc4(r26)
    fmr     f2, f1
    stw     r3, 0x11c(sp)
    lfd     f4, -0x4a38(rtoc)
    addi    r3, r28, 0x2c
    stw     r30, 0x118(sp)
    stw     r30, 0x120(sp)
    lfd     f3, 0x118(sp)
    lfd     f0, 0x120(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r7, r6, r0
    lwz     r0, 0xc(r28)
    subf    r6, r25, r7
    lfd     f4, -0x4a38(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x4a48(rtoc)
    subf    r0, r24, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x12c(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x13c(sp)
    stw     r5, 0x14c(sp)
    stw     r0, 0x15c(sp)
    stw     r30, 0x128(sp)
    stw     r30, 0x138(sp)
    lfd     f1, 0x128(sp)
    stw     r30, 0x148(sp)
    lfd     f0, 0x138(sp)
    fsubs   f3, f1, f4
    stw     r30, 0x158(sp)
    lfd     f1, 0x148(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x158(sp)
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
    stfd    f3, 0x130(sp)
    stfd    f2, 0x140(sp)
    lwz     r25, 0x134(sp)
    stfd    f1, 0x150(sp)
    lwz     r24, 0x144(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0x160(sp)
    lwz     r6, 0x154(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0x164(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x17c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x16c(sp)
    stw     r6, 0x174(sp)
    stw     r0, 0x184(sp)
    stw     r30, 0x168(sp)
    stw     r30, 0x170(sp)
    lfd     f1, 0x168(sp)
    stw     r30, 0x178(sp)
    lfd     f0, 0x170(sp)
    fsubs   f1, f1, f4
    stw     r30, 0x180(sp)
    lfd     f3, 0x178(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x180(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r31, 0x4e(r28)
    li      r4, 0x0
    li      r0, 0x3
    lwz     r3, 0xa4(r26)
    stb     r4, 0xc(r3)
    lwz     r3, 0xdc(r26)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r26)
    b       branch_0x80161c10

branch_0x80161bbc:
    li      r24, 0x1
    lwz     r3, 0x48(r26)
    bl      update__7TExPaneFv
    and     r24, r24, r3
    lwz     r3, 0xc4(r26)
    bl      update__7TExPaneFv
    and     r24, r24, r3
    clrlwi. r0, r24, 24
    beq-    branch_0x80161c10
    lwz     r3, 0x48(r26)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0xc4(r26)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r26)
    b       branch_0x80161c10

branch_0x80161c08:
    stw     r4, 0x310(r26)
    li      r27, 0x0
branch_0x80161c10:
    mr      r3, r27
    lmw     r24, 0x188(sp)
    lwz     r0, 0x1ac(sp)
    addi    sp, sp, 0x1a8
    mtlr    r0
    blr


.globl setMessageC__9TCardSaveFP10J2DTextBoxlUl
setMessageC__9TCardSaveFP10J2DTextBoxlUl: # 0x80161c28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stw     r31, 0x174(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x170(sp)
    stw     r29, 0x16c(sp)
    stw     r28, 0x168(sp)
    addi    r28, r4, 0x0
    clrlwi  r4, r5, 16
    lwz     r3, 0x2e4(r3)
    bl      SMSGetMessageData__FPvUl
    addi    r0, sp, 0x150
    stw     r0, 0x30(sp)
    lis     r4, 0x803b
    subi    r30, r4, 0xf0c
    lwz     r6, 0x30(sp)
    lis     r5, 0x803e
    addi    r0, r5, 0x184
    stw     r30, 0x0(r6)
    li      r29, 0x0
    lis     r4, 0x803e
    stb     r29, 0x4(r6)
    lis     r5, 0x803e
    stw     r0, 0x0(r6)
    addi    r0, r4, 0x160
    addi    r4, r3, 0x0
    stw     r0, 0x0(r6)
    addi    r0, r5, 0x1c8
    addi    r3, r6, 0x0
    stw     r0, 0x0(r6)
    mr      r5, r31
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    mr      r3, r28
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r0, sp, 0x13c
    stw     r0, 0x2c(sp)
    lis     r7, 0x803e
    lis     r6, 0x803e
    lwz     r8, 0x2c(sp)
    mr      r4, r3
    addi    r0, r7, 0x148
    stw     r30, 0x0(r8)
    addi    r6, r6, 0x120
    lis     r5, 0x803e
    stb     r29, 0x4(r8)
    addi    r3, r8, 0x0
    stw     r0, 0x0(r8)
    addi    r0, r5, 0x1a0
    mr      r5, r31
    stw     r6, 0x0(r8)
    stw     r0, 0x0(r8)
    bl      setBuffer__21JSUMemoryOutputStreamFPvl
    lis     r3, 0x8038
    lis     r4, 0x8038
    addi    r30, r3, 0x7fcc
    addi    r29, r4, 0x7fa8
    b       branch_0x80161f58

branch_0x80161d10:
    addi    r3, sp, 0x150
    addi    r4, sp, 0x28
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r31, 0x28(sp)
    li      r0, -0x1
    stw     r0, 0x34(sp)
    cmpwi   r31, 0xa
    beq-    branch_0x80161dd4
    bge-    branch_0x80161d44
    cmpwi   r31, 0x0
    beq-    branch_0x80161d74
    b       branch_0x80161dec

branch_0x80161d44:
    cmpwi   r31, 0x1a
    beq-    branch_0x80161d50
    b       branch_0x80161dec

branch_0x80161d50:
    addi    r3, sp, 0x150
    addi    r4, sp, 0x27
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r4, 0x27(sp)
    addi    r3, sp, 0x150
    subi    r4, r4, 0x2
    bl      skip__20JSURandomInputStreamFl
    b       branch_0x80161f58

branch_0x80161d74:
    stb     r31, 0x26(sp)
    addi    r3, sp, 0x13c
    addi    r4, sp, 0x26
    li      r5, 0x1
    bl      write__15JSUOutputStreamFPCvl
    lis     r3, 0x803e
    addi    r0, r3, 0x1a0
    lis     r3, 0x803e
    stw     r0, 0x13c(sp)
    addi    r0, r3, 0x120
    stw     r0, 0x13c(sp)
    addi    r3, sp, 0x13c
    li      r4, 0x0
    bl      __dt__15JSUOutputStreamFv
    lis     r3, 0x803e
    addi    r0, r3, 0x1c8
    lis     r3, 0x803e
    stw     r0, 0x150(sp)
    addi    r0, r3, 0x160
    stw     r0, 0x150(sp)
    addi    r3, sp, 0x150
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    b       branch_0x80162008

branch_0x80161dd4:
    stb     r31, 0x25(sp)
    addi    r3, sp, 0x13c
    addi    r4, sp, 0x25
    li      r5, 0x1
    bl      write__15JSUOutputStreamFPCvl
    b       branch_0x80161f58

branch_0x80161dec:
    cmpwi   r31, 0x3c
    li      r28, 0x1
    beq-    branch_0x80161ea0
    bge-    branch_0x80161e24
    cmpwi   r31, 0x25
    beq-    branch_0x80161e84
    bge-    branch_0x80161e18
    cmpwi   r31, 0x23
    beq-    branch_0x80161e64
    bge-    branch_0x80161ebc
    b       branch_0x80161edc

branch_0x80161e18:
    cmpwi   r31, 0x2b
    beq-    branch_0x80161ea0
    b       branch_0x80161edc

branch_0x80161e24:
    cmpwi   r31, 0x40
    beq-    branch_0x80161e48
    bge-    branch_0x80161e3c
    cmpwi   r31, 0x3e
    beq-    branch_0x80161ea0
    b       branch_0x80161edc

branch_0x80161e3c:
    cmpwi   r31, 0xa5
    beq-    branch_0x80161ea0
    b       branch_0x80161edc

branch_0x80161e48:
    li      r3, 0x64
    stb     r3, 0x34(sp)
    li      r0, 0xff
    stb     r0, 0x35(sp)
    stb     r3, 0x36(sp)
    stb     r0, 0x37(sp)
    b       branch_0x80161ee0

branch_0x80161e64:
    li      r4, 0xff
    stb     r4, 0x34(sp)
    li      r3, 0xa0
    li      r0, 0x64
    stb     r3, 0x35(sp)
    stb     r0, 0x36(sp)
    stb     r4, 0x37(sp)
    b       branch_0x80161ee0

branch_0x80161e84:
    li      r3, 0xff
    stb     r3, 0x34(sp)
    li      r0, 0x0
    stb     r3, 0x35(sp)
    stb     r0, 0x36(sp)
    stb     r3, 0x37(sp)
    b       branch_0x80161ee0

branch_0x80161ea0:
    li      r3, 0xdc
    stb     r3, 0x34(sp)
    li      r0, 0xff
    stb     r3, 0x35(sp)
    stb     r3, 0x36(sp)
    stb     r0, 0x37(sp)
    b       branch_0x80161ee0

branch_0x80161ebc:
    li      r0, 0x6e
    stb     r0, 0x34(sp)
    li      r3, 0xe6
    li      r0, 0xff
    stb     r3, 0x35(sp)
    stb     r0, 0x36(sp)
    stb     r0, 0x37(sp)
    b       branch_0x80161ee0

branch_0x80161edc:
    li      r28, 0x0
branch_0x80161ee0:
    clrlwi. r0, r28, 24
    beq-    branch_0x80161f18
    lbz     r6, 0x34(sp)
    mr      r5, r29
    lbz     r7, 0x35(sp)
    addi    r3, sp, 0x38
    lbz     r8, 0x36(sp)
    crxor   6, 6, 6
    li      r4, 0xff
    bl      snprintf
    addi    r3, sp, 0x13c
    addi    r4, sp, 0x38
    li      r5, 0x1d
    bl      write__15JSUOutputStreamFPCvl
branch_0x80161f18:
    stb     r31, 0x24(sp)
    addi    r3, sp, 0x13c
    addi    r4, sp, 0x24
    li      r5, 0x1
    bl      write__15JSUOutputStreamFPCvl
    clrlwi. r0, r28, 24
    beq-    branch_0x80161f58
    addi    r5, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x38
    li      r4, 0xff
    bl      snprintf
    addi    r3, sp, 0x13c
    addi    r4, sp, 0x38
    li      r5, 0x18
    bl      write__15JSUOutputStreamFPCvl
branch_0x80161f58:
    lwz     r12, 0x150(sp)
    addi    r3, sp, 0x150
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x150(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x150
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    subf.   r0, r3, r31
    beq-    branch_0x80161fc0
    lwz     r12, 0x13c(sp)
    addi    r3, sp, 0x13c
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x13c(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x13c
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    subf.   r0, r3, r31
    bne+    branch_0x80161d10
branch_0x80161fc0:
    lis     r3, 0x803e
    addi    r0, r3, 0x1a0
    lis     r3, 0x803e
    stw     r0, 0x13c(sp)
    addi    r0, r3, 0x120
    stw     r0, 0x13c(sp)
    addi    r3, sp, 0x13c
    li      r4, 0x0
    bl      __dt__15JSUOutputStreamFv
    lis     r3, 0x803e
    addi    r0, r3, 0x1c8
    lis     r3, 0x803e
    stw     r0, 0x150(sp)
    addi    r0, r3, 0x160
    stw     r0, 0x150(sp)
    addi    r3, sp, 0x150
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
branch_0x80162008:
    lwz     r0, 0x17c(sp)
    lwz     r31, 0x174(sp)
    lwz     r30, 0x170(sp)
    mtlr    r0
    lwz     r29, 0x16c(sp)
    lwz     r28, 0x168(sp)
    addi    sp, sp, 0x178
    blr


.globl perform__9TCardSaveFUlPQ26JDrama9TGraphics
perform__9TCardSaveFUlPQ26JDrama9TGraphics: # 0x80162028
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stw     r31, 0x11c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x118(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x114(sp)
    mr      r29, r3
    lbz     r0, 0x2df(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801620f0
    clrlwi. r0, r30, 31
    beq-    branch_0x80162068
    mr      r3, r29
    bl      execMovement___9TCardSaveFv
branch_0x80162068:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x801620f0
    addi    r4, r31, 0x54
    addi    r30, r31, 0x64
    addi    r3, sp, 0x1c
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x1c
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x14(r29)
    addi    r6, sp, 0x1c
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0x1c(sp)
    addi    r0, r3, 0x1448
    stw     r0, 0x1c(sp)
    lwz     r3, 0x0(r30)
    lwz     r0, 0x4(r30)
    stw     r3, 0x64(r31)
    stw     r0, 0x68(r31)
    lwz     r3, 0x8(r30)
    lwz     r0, 0xc(r30)
    stw     r3, 0x6c(r31)
    stw     r0, 0x70(r31)
    lwz     r4, 0x68(r31)
    lwz     r5, 0x70(r31)
    lwz     r3, 0x64(r31)
    lwz     r0, 0x6c(r31)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
branch_0x801620f0:
    lwz     r0, 0x124(sp)
    lwz     r31, 0x11c(sp)
    lwz     r30, 0x118(sp)
    mtlr    r0
    lwz     r29, 0x114(sp)
    addi    sp, sp, 0x120
    blr


.globl init__9TCardSaveFi
init__9TCardSaveFi: # 0x8016210c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    stw     r31, 0x310(r3)
    stb     r31, 0x2df(r3)
    stw     r4, 0x308(r3)
    stb     r31, 0x2f8(r3)
    stb     r0, 0x2f9(r3)
    lwz     r3, 0x308(r3)
    cmpwi   r3, 0x7
    beq-    branch_0x80162158
    subi    r0, r3, 0x8
    cmplwi  r0, 0x1
    bgt-    branch_0x801621a0
branch_0x80162158:
    lwz     r3, 0x14(r30)
    lis     r31, 0x6d61
    addi    r4, r31, 0x736b
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    addi    r4, r31, 0x736b
    lwz     r3, 0x14(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0xff
    stb     r0, 0xcc(r3)
    b       branch_0x801621c0

branch_0x801621a0:
    lwz     r3, 0x14(r30)
    lis     r4, 0x6d61
    addi    r4, r4, 0x736b
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r31, 0xc(r3)
branch_0x801621c0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initData__9TCardSaveFP13TMarioGamePad
initData__9TCardSaveFP13TMarioGamePad: # 0x801621d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x188(sp)
    stmw    r24, 0x168(sp)
    mr      r31, r3
    addi    r29, r4, 0x0
    lbz     r0, 0x18(r3)
    lis     r3, 0x8038
    addi    r30, r3, 0x7f88
    cmplwi  r0, 0x0
    beq-    branch_0x80162238
    subi    r3, rtoc, 0x4a14
    bl      getVolume__13JKRFileLoaderFPCc
    addi    r25, r3, 0x0
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80162230
    addi    r3, r24, 0x0
    addi    r5, r25, 0x0
    addi    r4, r30, 0x60
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x80162230:
    stw     r24, 0x14(r31)
    b       branch_0x80162268

branch_0x80162238:
    subi    r3, rtoc, 0x4a0c
    bl      getVolume__13JKRFileLoaderFPCc
    addi    r25, r3, 0x0
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80162264
    addi    r3, r24, 0x0
    addi    r5, r25, 0x0
    addi    r4, r30, 0x70
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x80162264:
    stw     r24, 0x14(r31)
branch_0x80162268:
    lwz     r3, 0x14(r31)
    li      r4, 0x2
    bl      setCullBack__7J2DPaneF11_GXCullMode
    li      r25, 0x0
    li      r26, 0x0
branch_0x8016227c:
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801622a4
    addi    r6, r25, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x140
    addi    r5, r30, 0x7c
    li      r4, 0x28
    bl      snprintf
    b       branch_0x801622bc

branch_0x801622a4:
    addi    r6, r25, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x140
    addi    r5, r30, 0xa0
    li      r4, 0x28
    bl      snprintf
branch_0x801622bc:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x801622f0
    addi    r28, r24, 0x0
    addi    r3, sp, 0x140
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r27, 0x0
    stw     r27, 0x28(r24)
    addi    r4, r3, 0x0
    mr      r3, r28
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r27, 0x50(r24)
branch_0x801622f0:
    addi    r25, r25, 0x1
    addi    r0, r26, 0x1c
    cmpwi   r25, 0xa
    stwx    r24, r31, r0
    addi    r26, r26, 0x4
    blt+    branch_0x8016227c
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8016232c
    lis     r5, 0x77
    lwz     r4, 0x14(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x5f30
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016232c:
    stw     r24, 0x48(r31)
    lis     r26, 0x6d5f
    addi    r4, r26, 0x3561
    lwz     r3, 0x48(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x4c(r31)
    stw     r0, 0x50(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x54(r31)
    stw     r0, 0x58(r31)
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xa0(r31)
    addi    r4, r26, 0x3562
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xa4(r31)
    li      r4, 0x200
    lwz     r26, 0xa0(r31)
    mr      r3, r26
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r26, 0xa4(r31)
    li      r4, 0x200
    addi    r3, r26, 0x0
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x801623f0
    lis     r5, 0x77
    lwz     r4, 0x14(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x5f33
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801623f0:
    stw     r24, 0xa8(r31)
    li      r3, 0x54
    lwz     r4, 0xa8(r31)
    lwz     r5, 0x0(r4)
    lwz     r4, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r4, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r4, 0xb4(r31)
    stw     r0, 0xb8(r31)
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80162440
    lis     r5, 0x77
    lwz     r4, 0x14(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x5f33
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80162440:
    stw     r24, 0xc4(r31)
    lis     r26, 0x6d5f
    addi    r4, r26, 0x3761
    lwz     r3, 0xc4(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0xc8(r31)
    stw     r0, 0xcc(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0xd0(r31)
    stw     r0, 0xd4(r31)
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xd8(r31)
    addi    r4, r26, 0x3762
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xdc(r31)
    li      r4, 0x200
    lwz     r26, 0xd8(r31)
    mr      r3, r26
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r26, 0xdc(r31)
    li      r4, 0x200
    addi    r3, r26, 0x0
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80162504
    lis     r5, 0x77
    lwz     r4, 0x14(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x5f31
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80162504:
    stw     r24, 0xe0(r31)
    lis     r26, 0x6d5f
    addi    r4, r26, 0x3261
    lwz     r3, 0xe0(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0xe4(r31)
    stw     r0, 0xe8(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0xec(r31)
    stw     r0, 0xf0(r31)
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xf4(r31)
    addi    r4, r26, 0x3262
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0xf8(r31)
    li      r4, 0x200
    lwz     r26, 0xf4(r31)
    mr      r3, r26
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r26, 0xf8(r31)
    li      r4, 0x200
    addi    r3, r26, 0x0
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x801625c8
    lis     r5, 0x73
    lwz     r4, 0x14(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x5f36
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801625c8:
    stw     r24, 0xfc(r31)
    li      r3, 0x54
    lwz     r4, 0xfc(r31)
    lwz     r5, 0x0(r4)
    lwz     r4, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r4, 0x104(r31)
    stw     r0, 0x108(r31)
    lwz     r4, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r4, 0x10c(r31)
    stw     r0, 0x110(r31)
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80162618
    lis     r5, 0x73
    lwz     r4, 0x14(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x5f37
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80162618:
    stw     r24, 0x100(r31)
    lis     r26, 0x6d5f
    addi    r4, r26, 0x3361
    lwz     r3, 0x100(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x114(r31)
    stw     r0, 0x118(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x11c(r31)
    stw     r0, 0x120(r31)
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x124(r31)
    addi    r4, r26, 0x3362
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x128(r31)
    li      r4, 0x20
    lwz     r27, 0x124(r31)
    mr      r3, r27
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r27
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r27, 0x128(r31)
    li      r4, 0x20
    addi    r3, r27, 0x0
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r27
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x14(r31)
    addi    r4, r26, 0x3461
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x12c(r31)
    addi    r4, r26, 0x3462
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x130(r31)
    li      r4, 0x200
    lwz     r26, 0x12c(r31)
    mr      r3, r26
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r26, 0x130(r31)
    li      r4, 0x200
    addi    r3, r26, 0x0
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x14(r31)
    lis     r26, 0x665f
    addi    r4, r26, 0x7369
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x134(r31)
    addi    r4, r26, 0x7368
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x138(r31)
    lis     r26, 0x6e5f
    addi    r4, r26, 0x3461
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x13c(r31)
    addi    r4, r26, 0x3462
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x140(r31)
    addi    r4, r26, 0x3463
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x144(r31)
    addi    r4, r26, 0x3361
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x148(r31)
    addi    r4, r26, 0x3362
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x14c(r31)
    lis     r3, 0x74
    addi    r4, r3, 0x5f30
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x150(r31)
    li      r25, 0x0
    li      r26, 0x0
branch_0x8016281c:
    lwz     r3, 0x14(r31)
    addis   r4, r25, 0x74
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    addi    r0, r26, 0x154
    cmpwi   r25, 0x3
    stwx    r3, r31, r0
    addi    r26, r26, 0x4
    blt+    branch_0x8016281c
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80162874
    lis     r5, 0x77
    lwz     r4, 0x14(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x5f32
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80162874:
    stw     r24, 0x160(r31)
    lis     r26, 0x6d5f
    addi    r4, r26, 0x3661
    lwz     r3, 0x160(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x164(r31)
    stw     r0, 0x168(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x16c(r31)
    stw     r0, 0x170(r31)
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x174(r31)
    addi    r4, r26, 0x3662
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x178(r31)
    li      r4, 0x200
    lwz     r26, 0x174(r31)
    mr      r3, r26
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r26, 0x178(r31)
    li      r4, 0x200
    addi    r3, r26, 0x0
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80162938
    lis     r5, 0x77
    lwz     r4, 0x14(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x5f34
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80162938:
    stw     r24, 0x17c(r31)
    lis     r26, 0x736d
    addi    r4, r26, 0x3061
    lwz     r3, 0x17c(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x180(r31)
    stw     r0, 0x184(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x188(r31)
    stw     r0, 0x18c(r31)
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x190(r31)
    addi    r4, r26, 0x3062
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x194(r31)
    li      r4, 0x200
    lwz     r26, 0x190(r31)
    mr      r3, r26
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r26, 0x194(r31)
    li      r4, 0x200
    addi    r3, r26, 0x0
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r25, 0x0
    li      r26, 0x0
    li      r27, 0x0
branch_0x801629e4:
    lwz     r3, 0x14(r31)
    addis   r4, r27, 0x736d
    addi    r4, r4, 0x3161
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    add     r28, r31, r26
    stw     r3, 0x198(r28)
    lwz     r3, 0x198(r28)
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x14(r31)
    addis   r4, r27, 0x736d
    addi    r4, r4, 0x3162
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x19c(r28)
    lwz     r3, 0x19c(r28)
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x14(r31)
    addis   r4, r27, 0x7363
    addi    r4, r4, 0x3161
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1a8(r28)
    addis   r4, r27, 0x7363
    addi    r4, r4, 0x3162
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    stw     r3, 0x1ac(r28)
    cmpwi   r25, 0x2
    addi    r26, r26, 0x8
    addi    r27, r27, 0x100
    blt+    branch_0x801629e4
    lwz     r4, 0x1a8(r31)
    li      r3, 0x54
    lwz     r0, 0x14(r4)
    sth     r0, 0x1b8(r31)
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80162ac4
    lis     r5, 0x77
    lwz     r4, 0x14(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x5f35
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80162ac4:
    stw     r24, 0x1bc(r31)
    lis     r26, 0x736d
    addi    r4, r26, 0x3661
    lwz     r3, 0x1bc(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x1c0(r31)
    stw     r0, 0x1c4(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x1c8(r31)
    stw     r0, 0x1cc(r31)
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x200(r31)
    addi    r4, r26, 0x3662
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x204(r31)
    li      r4, 0x200
    lwz     r26, 0x200(r31)
    mr      r3, r26
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r26, 0x204(r31)
    li      r4, 0x200
    addi    r3, r26, 0x0
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x14(r31)
    lis     r26, 0x6d5f
    addi    r4, r26, 0x3861
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x208(r31)
    addi    r4, r26, 0x3862
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x20c(r31)
    li      r4, 0x20
    lwz     r26, 0x208(r31)
    mr      r3, r26
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r26, 0x20c(r31)
    li      r4, 0x20
    addi    r3, r26, 0x0
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r26
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x14(r31)
    lis     r26, 0x665f
    addi    r4, r26, 0x736b
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x210(r31)
    addi    r4, r26, 0x736a
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x214(r31)
    lis     r26, 0x6e5f
    addi    r4, r26, 0x3661
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x218(r31)
    addi    r4, r26, 0x3662
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x21c(r31)
    addi    r4, r26, 0x3663
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x220(r31)
    addi    r4, r26, 0x3561
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x224(r31)
    addi    r4, r26, 0x3562
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x228(r31)
    lis     r3, 0x74
    addi    r4, r3, 0x5f34
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x22c(r31)
    li      r25, 0x0
    li      r26, 0x0
branch_0x80162ccc:
    lwz     r3, 0x14(r31)
    addis   r4, r25, 0x74
    addi    r4, r4, 0x5f35
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    addi    r0, r26, 0x230
    cmpwi   r25, 0x3
    stwx    r3, r31, r0
    addi    r26, r26, 0x4
    blt+    branch_0x80162ccc
    li      r25, 0x0
    li      r26, 0x0
    li      r27, 0x0
branch_0x80162d0c:
    lwz     r3, 0x14(r31)
    addis   r4, r27, 0x736d
    addi    r4, r4, 0x3361
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    add     r28, r31, r26
    stw     r3, 0x1e8(r28)
    lwz     r3, 0x1e8(r28)
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x14(r31)
    addis   r4, r27, 0x736d
    addi    r4, r4, 0x3362
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1ec(r28)
    lwz     r3, 0x1ec(r28)
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x14(r31)
    addis   r4, r27, 0x7363
    addi    r4, r4, 0x3361
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1d0(r28)
    addis   r4, r27, 0x7363
    addi    r4, r4, 0x3362
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    stw     r3, 0x1d4(r28)
    cmpwi   r25, 0x3
    addi    r26, r26, 0x8
    addi    r27, r27, 0x100
    blt+    branch_0x80162d0c
    lwz     r4, 0x1d0(r31)
    li      r3, 0x54
    lwz     r0, 0x14(r4)
    sth     r0, 0x23c(r31)
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80162dec
    lis     r5, 0x77
    lwz     r4, 0x14(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x5f36
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80162dec:
    stw     r24, 0x240(r31)
    li      r24, 0x0
    li      r28, 0x0
    lwz     r3, 0x240(r31)
    li      r27, 0x0
    li      r26, 0x0
    lwz     r4, 0x0(r3)
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x244(r31)
    stw     r0, 0x248(r31)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0x24c(r31)
    stw     r0, 0x250(r31)
branch_0x80162e28:
    lwz     r3, 0x14(r31)
    addis   r4, r26, 0x7363
    addi    r4, r4, 0x3661
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    add     r25, r31, r27
    stw     r3, 0x254(r25)
    addis   r4, r26, 0x7363
    addi    r4, r4, 0x3662
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x258(r25)
    addis   r4, r26, 0x736d
    addi    r4, r4, 0x3762
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r28, 0x264
    add     r25, r31, r25
    stw     r3, 0x0(r25)
    addis   r4, r26, 0x736d
    addi    r4, r4, 0x3761
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x0(r25)
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r24, r24, 0x1
    cmpwi   r24, 0x2
    addi    r28, r28, 0x4
    addi    r27, r27, 0x8
    addi    r26, r26, 0x100
    blt+    branch_0x80162e28
    lwz     r5, 0x254(r31)
    lis     r3, 0x6d61
    addi    r4, r3, 0x736b
    lwz     r0, 0x14(r5)
    sth     r0, 0x26c(r31)
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    addi    r3, r30, 0xc0
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x2e4(r31)
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80162f54
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0xdc
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0xdc
    mtlr    r12
    blrl
    stw     r3, 0x2d8(r31)
branch_0x80162f54:
    lwz     r3, 0x14(r31)
    lis     r30, 0x736d
    addi    r4, r30, 0x3161
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r27, r3
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3162
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r28, r3, 0x0
    addi    r3, r27, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r27
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r3, r28, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r28
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1c
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r27, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1c
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3261
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r27, r3
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3262
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r28, r3, 0x0
    addi    r3, r27, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r27
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r3, r28, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r28
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1d
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r27, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1d
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3361
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r27, r3
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3362
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r28, r3, 0x0
    addi    r3, r27, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r27
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r3, r28, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r28
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1c
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r27, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1c
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3461
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r27, r3
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3462
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r28, r3, 0x0
    addi    r3, r27, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r27
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r3, r28, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r28
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1e
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r27, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1e
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3561
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r27, r3
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3562
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r28, r3, 0x0
    addi    r3, r27, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r27
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r3, r28, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r28
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1d
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r27, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1d
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3761
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r27, r3
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3762
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r28, r3, 0x0
    addi    r3, r27, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r27
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r3, r28, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r28
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1f
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r27, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x2e4(r31)
    li      r4, 0x1f
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3861
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r27, r3
    lwz     r3, 0x14(r31)
    addi    r4, r30, 0x3862
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r28, r3, 0x0
    addi    r3, r27, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r27
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    addi    r3, r28, 0x0
    li      r4, 0x80
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r28
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x2e4(r31)
    li      r4, 0x20
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r27, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    lwz     r3, 0x2e4(r31)
    li      r4, 0x20
    bl      SMSGetMessageData__FPvUl
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r26, 0x0
    li      r5, 0x80
    bl      strncpy
    stw     r29, 0x270(r31)
    lmw     r24, 0x168(sp)
    lwz     r0, 0x18c(sp)
    addi    sp, sp, 0x188
    mtlr    r0
    blr


.globl load__9TCardSaveFR20JSUMemoryInputStream
load__9TCardSaveFR20JSUMemoryInputStream: # 0x80163440
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r4, -0x6048(r13)
    mr      r3, r31
    lwz     r4, 0x18(r4)
    lwz     r4, 0x0(r4)
    bl      initData__9TCardSaveFP13TMarioGamePad
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__9TCardSaveFPCcb
__ct__9TCardSaveFPCcb: # 0x80163480
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r30, 0x8(sp)
    mr      r3, r4
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
    addi    r0, r3, 0x7a0
    addi    r3, r30, 0x4c
    stw     r0, 0x0(r30)
    li      r4, 0x0
    li      r5, 0x0
    stb     r29, 0x18(r30)
    li      r6, 0x0
    li      r7, 0x0
    stw     r31, 0x48(r30)
    bl      set__7JUTRectFiiii
    stw     r31, 0x5c(r30)
    addi    r3, r30, 0xac
    li      r4, 0x0
    stw     r31, 0x60(r30)
    li      r5, 0x0
    li      r6, 0x0
    stw     r31, 0xa0(r30)
    li      r7, 0x0
    stw     r31, 0xa4(r30)
    stw     r31, 0xa8(r30)
    bl      set__7JUTRectFiiii
    stw     r31, 0xbc(r30)
    addi    r3, r30, 0xc8
    li      r4, 0x0
    stw     r31, 0xc0(r30)
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    stw     r31, 0xe0(r30)
    addi    r3, r30, 0xe4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    stw     r31, 0xf4(r30)
    addi    r3, r30, 0x104
    li      r4, 0x0
    stw     r31, 0xf8(r30)
    li      r5, 0x0
    li      r6, 0x0
    stw     r31, 0xfc(r30)
    li      r7, 0x0
    stw     r31, 0x100(r30)
    bl      set__7JUTRectFiiii
    addi    r3, r30, 0x114
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    stw     r31, 0x124(r30)
    addi    r3, r30, 0x164
    li      r4, 0x0
    stw     r31, 0x128(r30)
    li      r5, 0x0
    li      r6, 0x0
    stw     r31, 0x12c(r30)
    li      r7, 0x0
    stw     r31, 0x130(r30)
    stw     r31, 0x134(r30)
    stw     r31, 0x160(r30)
    bl      set__7JUTRectFiiii
    stw     r31, 0x174(r30)
    addi    r3, r30, 0x180
    li      r4, 0x0
    stw     r31, 0x178(r30)
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r30, 0x1c0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r30, 0x244
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    li      r4, 0x1
    stb     r4, 0x2dc(r30)
    li      r0, 0xc8
    addi    r3, r30, 0x0
    stb     r31, 0x2de(r30)
    stb     r4, 0x2df(r30)
    stw     r31, 0x2e0(r30)
    stb     r31, 0x2e8(r30)
    stb     r31, 0x2e9(r30)
    stw     r31, 0x2fc(r30)
    sth     r0, 0x300(r30)
    sth     r0, 0x302(r30)
    sth     r4, 0x304(r30)
    stw     r4, 0x310(r30)
    stw     r4, 0x314(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl changeMode__9TCardSaveFl
changeMode__9TCardSaveFl: # 0x80163680
    cmpwi   r4, -0x8
    li      r3, 0x4
    beq-    branch_0x80163720
    bge-    branch_0x801636c0
    cmpwi   r4, -0x80
    beq-    branch_0x801636f0
    bge-    branch_0x801636a8
    cmpwi   r4, -0x100
    beq-    branch_0x80163700
    blr

branch_0x801636a8:
    cmpwi   r4, -0xd
    beq-    branch_0x80163710
    bltlr-    

    cmpwi   r4, -0x9
    bge-    branch_0x80163718
    blr

branch_0x801636c0:
    cmpwi   r4, -0x4
    beq-    branch_0x80163728
    bge-    branch_0x801636dc
    cmpwi   r4, -0x6
    beq-    branch_0x80163708
    bge-    branch_0x801636f8
    blr

branch_0x801636dc:
    cmpwi   r4, -0x2
    beq-    branch_0x801636f0
    bgelr-    

    li      r3, 0x3
    blr

branch_0x801636f0:
    li      r3, 0x4
    blr

branch_0x801636f8:
    li      r3, 0x2d
    blr

branch_0x80163700:
    li      r3, 0x5
    blr

branch_0x80163708:
    li      r3, 0x6
    blr

branch_0x80163710:
    li      r3, 0x7
    blr

branch_0x80163718:
    li      r3, 0xc
    blr

branch_0x80163720:
    li      r3, 0xd
    blr

branch_0x80163728:
    li      r3, 0xe
    blr


.globl __sinit_CardSave_cpp
__sinit_CardSave_cpp: # 0x80163730
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x4018
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80163778
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80163778:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801637a8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801637a8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801637d8
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801637d8:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80163808
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80163808:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80163838
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80163838:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80163868
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80163868:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80163898
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80163898:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801638c8
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801638c8:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801638f8
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801638f8:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80163928
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80163928:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80163958
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80163958:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80163988
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80163988:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801639b8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801639b8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801639e8
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801639e8:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80163a18
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80163a18:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

