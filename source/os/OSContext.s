
.globl __OSLoadFPUContext
__OSLoadFPUContext: # 0x80343cb0
    lhz     r5, 0x1a2(r4)
    clrlwi. r5, r5, 31
    beq-    branch_0x80343dd0
    lfd     f0, 0x190(r4)
    mtfsf   255, f0
    mfspr   r5, 920
    extrwi. r5, r5, 1, 2
    beq-    branch_0x80343d50
    psq_l   f0, 0x1c8(4), 0, 0
    psq_l   f1, 0x1d0(4), 0, 0
    psq_l   f2, 0x1d8(4), 0, 0
    psq_l   f3, 0x1e0(4), 0, 0
    psq_l   f4, 0x1e8(4), 0, 0
    psq_l   f5, 0x1f0(4), 0, 0
    psq_l   f6, 0x1f8(4), 0, 0
    psq_l   f7, 0x200(4), 0, 0
    psq_l   f8, 0x208(4), 0, 0
    psq_l   f9, 0x210(4), 0, 0
    psq_l   f10, 0x218(4), 0, 0
    psq_l   f11, 0x220(4), 0, 0
    psq_l   f12, 0x228(4), 0, 0
    psq_l   f13, 0x230(4), 0, 0
    psq_l   f14, 0x238(4), 0, 0
    psq_l   f15, 0x240(4), 0, 0
    psq_l   f16, 0x248(4), 0, 0
    psq_l   f17, 0x250(4), 0, 0
    psq_l   f18, 0x258(4), 0, 0
    psq_l   f19, 0x260(4), 0, 0
    psq_l   f20, 0x268(4), 0, 0
    psq_l   f21, 0x270(4), 0, 0
    psq_l   f22, 0x278(4), 0, 0
    psq_l   f23, 0x280(4), 0, 0
    psq_l   f24, 0x288(4), 0, 0
    psq_l   f25, 0x290(4), 0, 0
    psq_l   f26, 0x298(4), 0, 0
    psq_l   f27, 0x2a0(4), 0, 0
    psq_l   f28, 0x2a8(4), 0, 0
    psq_l   f29, 0x2b0(4), 0, 0
    psq_l   f30, 0x2b8(4), 0, 0
    psq_l   f31, 0x2c0(4), 0, 0
branch_0x80343d50:
    lfd     f0, 0x90(r4)
    lfd     f1, 0x98(r4)
    lfd     f2, 0xa0(r4)
    lfd     f3, 0xa8(r4)
    lfd     f4, 0xb0(r4)
    lfd     f5, 0xb8(r4)
    lfd     f6, 0xc0(r4)
    lfd     f7, 0xc8(r4)
    lfd     f8, 0xd0(r4)
    lfd     f9, 0xd8(r4)
    lfd     f10, 0xe0(r4)
    lfd     f11, 0xe8(r4)
    lfd     f12, 0xf0(r4)
    lfd     f13, 0xf8(r4)
    lfd     f14, 0x100(r4)
    lfd     f15, 0x108(r4)
    lfd     f16, 0x110(r4)
    lfd     f17, 0x118(r4)
    lfd     f18, 0x120(r4)
    lfd     f19, 0x128(r4)
    lfd     f20, 0x130(r4)
    lfd     f21, 0x138(r4)
    lfd     f22, 0x140(r4)
    lfd     f23, 0x148(r4)
    lfd     f24, 0x150(r4)
    lfd     f25, 0x158(r4)
    lfd     f26, 0x160(r4)
    lfd     f27, 0x168(r4)
    lfd     f28, 0x170(r4)
    lfd     f29, 0x178(r4)
    lfd     f30, 0x180(r4)
    lfd     f31, 0x188(r4)
branch_0x80343dd0:
    blr


.globl __OSSaveFPUContext
__OSSaveFPUContext: # 0x80343dd4
    lhz     r3, 0x1a2(r5)
    ori     r3, r3, 0x1
    sth     r3, 0x1a2(r5)
    stfd    f0, 0x90(r5)
    stfd    f1, 0x98(r5)
    stfd    f2, 0xa0(r5)
    stfd    f3, 0xa8(r5)
    stfd    f4, 0xb0(r5)
    stfd    f5, 0xb8(r5)
    stfd    f6, 0xc0(r5)
    stfd    f7, 0xc8(r5)
    stfd    f8, 0xd0(r5)
    stfd    f9, 0xd8(r5)
    stfd    f10, 0xe0(r5)
    stfd    f11, 0xe8(r5)
    stfd    f12, 0xf0(r5)
    stfd    f13, 0xf8(r5)
    stfd    f14, 0x100(r5)
    stfd    f15, 0x108(r5)
    stfd    f16, 0x110(r5)
    stfd    f17, 0x118(r5)
    stfd    f18, 0x120(r5)
    stfd    f19, 0x128(r5)
    stfd    f20, 0x130(r5)
    stfd    f21, 0x138(r5)
    stfd    f22, 0x140(r5)
    stfd    f23, 0x148(r5)
    stfd    f24, 0x150(r5)
    stfd    f25, 0x158(r5)
    stfd    f26, 0x160(r5)
    stfd    f27, 0x168(r5)
    stfd    f28, 0x170(r5)
    stfd    f29, 0x178(r5)
    stfd    f30, 0x180(r5)
    stfd    f31, 0x188(r5)
    mffs    f0
    stfd    f0, 0x190(r5)
    lfd     f0, 0x90(r5)
    mfspr   r3, 920
    extrwi. r3, r3, 1, 2
    beq-    branch_0x80343ef8
    psq_st  f0, 0x1c8(5), 0, 0
    psq_st  f1, 0x1d0(5), 0, 0
    psq_st  f2, 0x1d8(5), 0, 0
    psq_st  f3, 0x1e0(5), 0, 0
    psq_st  f4, 0x1e8(5), 0, 0
    psq_st  f5, 0x1f0(5), 0, 0
    psq_st  f6, 0x1f8(5), 0, 0
    psq_st  f7, 0x200(5), 0, 0
    psq_st  f8, 0x208(5), 0, 0
    psq_st  f9, 0x210(5), 0, 0
    psq_st  f10, 0x218(5), 0, 0
    psq_st  f11, 0x220(5), 0, 0
    psq_st  f12, 0x228(5), 0, 0
    psq_st  f13, 0x230(5), 0, 0
    psq_st  f14, 0x238(5), 0, 0
    psq_st  f15, 0x240(5), 0, 0
    psq_st  f16, 0x248(5), 0, 0
    psq_st  f17, 0x250(5), 0, 0
    psq_st  f18, 0x258(5), 0, 0
    psq_st  f19, 0x260(5), 0, 0
    psq_st  f20, 0x268(5), 0, 0
    psq_st  f21, 0x270(5), 0, 0
    psq_st  f22, 0x278(5), 0, 0
    psq_st  f23, 0x280(5), 0, 0
    psq_st  f24, 0x288(5), 0, 0
    psq_st  f25, 0x290(5), 0, 0
    psq_st  f26, 0x298(5), 0, 0
    psq_st  f27, 0x2a0(5), 0, 0
    psq_st  f28, 0x2a8(5), 0, 0
    psq_st  f29, 0x2b0(5), 0, 0
    psq_st  f30, 0x2b8(5), 0, 0
    psq_st  f31, 0x2c0(5), 0, 0
branch_0x80343ef8:
    blr


.globl OSSetCurrentContext
OSSetCurrentContext: # 0x80343efc
    lis     r4, 0x8000
    stw     r3, 0xd4(r4)
    clrlwi  r5, r3, 2
    stw     r5, 0xc0(r4)
    lwz     r5, 0xd8(r4)
    cmpw    r5, r3
    bne-    branch_0x80343f34
    lwz     r6, 0x19c(r3)
    ori     r6, r6, 0x2000
    stw     r6, 0x19c(r3)
    mfmsr   r6
    ori     r6, r6, 0x2
    mtmsr   r6
    blr

branch_0x80343f34:
    lwz     r6, 0x19c(r3)
    rlwinm  r6, r6, 0, 19, 17
    stw     r6, 0x19c(r3)
    mfmsr   r6
    rlwinm  r6, r6, 0, 19, 17
    ori     r6, r6, 0x2
    mtmsr   r6
    isync
    blr


.globl OSGetCurrentContext
OSGetCurrentContext: # 0x80343f58
    lis     r3, 0x8000
    lwz     r3, 0xd4(r3)
    blr


.globl OSSaveContext
OSSaveContext: # 0x80343f64
    stmw    r13, 0x34(r3)
    mfspr   r0, 913
    stw     r0, 0x1a8(r3)
    mfspr   r0, 914
    stw     r0, 0x1ac(r3)
    mfspr   r0, 915
    stw     r0, 0x1b0(r3)
    mfspr   r0, 916
    stw     r0, 0x1b4(r3)
    mfspr   r0, 917
    stw     r0, 0x1b8(r3)
    mfspr   r0, 918
    stw     r0, 0x1bc(r3)
    mfspr   r0, 919
    stw     r0, 0x1c0(r3)
    mfcr    r0
    stw     r0, 0x80(r3)
    mflr    r0
    stw     r0, 0x84(r3)
    stw     r0, 0x198(r3)
    mfmsr   r0
    stw     r0, 0x19c(r3)
    mfctr   r0
    stw     r0, 0x88(r3)
    mfxer   r0
    stw     r0, 0x8c(r3)
    stw     sp, 0x4(r3)
    stw     rtoc, 0x8(r3)
    li      r0, 0x1
    stw     r0, 0xc(r3)
    li      r3, 0x0
    blr


.globl OSLoadContext
OSLoadContext: # 0x80343fe4
    lis     r4, 0x8034
    lwz     r6, 0x198(r3)
    addi    r5, r4, 0x58ac
    cmplw   r6, r5
    blt-    branch_0x8034400c
    lis     r4, 0x8034
    addi    r0, r4, 0x58bc
    cmplw   r6, r0
    bgt-    branch_0x8034400c
    stw     r5, 0x198(r3)
branch_0x8034400c:
    lwz     r0, 0x0(r3)
    lwz     sp, 0x4(r3)
    lwz     rtoc, 0x8(r3)
    lhz     r4, 0x1a2(r3)
    rlwinm. r5, r4, 0, 30, 30
    beq-    branch_0x80344034
    rlwinm  r4, r4, 0, 31, 29
    sth     r4, 0x1a2(r3)
    lmw     r5, 0x14(r3)
    b       branch_0x80344038

branch_0x80344034:
    lmw     r13, 0x34(r3)
branch_0x80344038:
    lwz     r4, 0x1a8(r3)
    mtspr   913, r4
    lwz     r4, 0x1ac(r3)
    mtspr   914, r4
    lwz     r4, 0x1b0(r3)
    mtspr   915, r4
    lwz     r4, 0x1b4(r3)
    mtspr   916, r4
    lwz     r4, 0x1b8(r3)
    mtspr   917, r4
    lwz     r4, 0x1bc(r3)
    mtspr   918, r4
    lwz     r4, 0x1c0(r3)
    mtspr   919, r4
    lwz     r4, 0x80(r3)
    mtcrf   255, r4
    lwz     r4, 0x84(r3)
    mtlr    r4
    lwz     r4, 0x88(r3)
    mtctr   r4
    lwz     r4, 0x8c(r3)
    mtxer   r4
    mfmsr   r4
    rlwinm  r4, r4, 0, 17, 15
    rlwinm  r4, r4, 0, 31, 29
    mtmsr   r4
    lwz     r4, 0x198(r3)
    mtspr   26, r4
    lwz     r4, 0x19c(r3)
    mtspr   27, r4
    lwz     r4, 0x10(r3)
    lwz     r3, 0xc(r3)
    rfi


.globl OSGetStackPointer
OSGetStackPointer: # 0x803440bc
    mr      r3, sp
    blr


.globl OSClearContext
OSClearContext: # 0x803440c4
    li      r5, 0x0
    sth     r5, 0x1a0(r3)
    lis     r4, 0x8000
    sth     r5, 0x1a2(r3)
    lwz     r0, 0xd8(r4)
    cmplw   r3, r0
    bne-    branch_0x803440e4
    stw     r5, 0xd8(r4)
branch_0x803440e4:
    blr


.globl OSInitContext
OSInitContext: # 0x803440e8
    stw     r4, 0x198(r3)
    stw     r5, 0x4(r3)
    li      r11, 0x0
    ori     r11, r11, 0x9032
    stw     r11, 0x19c(r3)
    li      r0, 0x0
    stw     r0, 0x80(r3)
    stw     r0, 0x8c(r3)
    stw     rtoc, 0x8(r3)
    stw     r13, 0x34(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    stw     r0, 0x24(r3)
    stw     r0, 0x28(r3)
    stw     r0, 0x2c(r3)
    stw     r0, 0x30(r3)
    stw     r0, 0x38(r3)
    stw     r0, 0x3c(r3)
    stw     r0, 0x40(r3)
    stw     r0, 0x44(r3)
    stw     r0, 0x48(r3)
    stw     r0, 0x4c(r3)
    stw     r0, 0x50(r3)
    stw     r0, 0x54(r3)
    stw     r0, 0x58(r3)
    stw     r0, 0x5c(r3)
    stw     r0, 0x60(r3)
    stw     r0, 0x64(r3)
    stw     r0, 0x68(r3)
    stw     r0, 0x6c(r3)
    stw     r0, 0x70(r3)
    stw     r0, 0x74(r3)
    stw     r0, 0x78(r3)
    stw     r0, 0x7c(r3)
    stw     r0, 0x1a4(r3)
    stw     r0, 0x1a8(r3)
    stw     r0, 0x1ac(r3)
    stw     r0, 0x1b0(r3)
    stw     r0, 0x1b4(r3)
    stw     r0, 0x1b8(r3)
    stw     r0, 0x1bc(r3)
    stw     r0, 0x1c0(r3)
    b       OSClearContext


.globl OSDumpContext
OSDumpContext: # 0x803441a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2f8(sp)
    stmw    r25, 0x2dc(sp)
    mr      r28, r3
    lis     r3, 0x803e
    crxor   6, 6, 6
    addi    r31, r3, 0x7148
    mr      r3, r31
    mr      r4, r28
    bl      OSReport
    li      r25, 0x0
    slwi    r0, r25, 2
    add     r27, r28, r0
    b       branch_0x803441e0

branch_0x803441e0:
    b       branch_0x803441e4

branch_0x803441e4:
    b       branch_0x803441e8

branch_0x803441e8:
    lwz     r8, 0x40(r27)
    mr      r4, r25
    lwz     r5, 0x0(r27)
    addi    r3, r31, 0x44
    crxor   6, 6, 6
    mr      r6, r5
    mr      r9, r8
    addi    r7, r25, 0x10
    bl      OSReport
    addi    r27, r27, 0x4
    addi    r25, r25, 0x1
    cmplwi  r25, 0x10
    blt+    branch_0x803441e8
    lwz     r4, 0x84(r28)
    addi    r3, r31, 0x74
    lwz     r5, 0x80(r28)
    crxor   6, 6, 6
    bl      OSReport
    lwz     r4, 0x198(r28)
    addi    r3, r31, 0xa4
    lwz     r5, 0x19c(r28)
    crxor   6, 6, 6
    bl      OSReport
    addi    r3, r31, 0xd4
    crxor   6, 6, 6
    bl      OSReport
    li      r25, 0x0
    slwi    r0, r25, 2
    add     r27, r28, r0
    b       branch_0x80344260

branch_0x80344260:
    b       branch_0x80344264

branch_0x80344264:
    b       branch_0x80344268

branch_0x80344268:
    lwz     r5, 0x1a4(r27)
    mr      r4, r25
    lwz     r7, 0x1b4(r27)
    addi    r3, r31, 0xe8
    addi    r6, r25, 0x4
    crxor   6, 6, 6
    bl      OSReport
    addi    r27, r27, 0x4
    addi    r25, r25, 0x1
    cmplwi  r25, 0x4
    blt+    branch_0x80344268
    lhz     r0, 0x1a2(r28)
    clrlwi  r0, r0, 31
    cmplwi  r0, 0x0
    beq-    branch_0x803443dc
    bl      OSDisableInterrupts
    lis     r6, 0x8000
    lwz     r0, 0xd4(r6)
    li      r5, 0x0
    addi    r4, sp, 0x10
    sth     r5, 0x1b0(sp)
    mr      r30, r0
    mr      r29, r3
    sth     r5, 0x1b2(sp)
    lwz     r0, 0xd8(r6)
    cmplw   r4, r0
    bne-    branch_0x803442d8
    stw     r5, 0xd8(r6)
branch_0x803442d8:
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    addi    r3, r31, 0x10c
    crxor   6, 6, 6
    bl      OSReport
    li      r25, 0x0
    slwi    r0, r25, 3
    add     r26, r28, r0
    b       branch_0x803442fc

branch_0x803442fc:
    b       branch_0x80344300

branch_0x80344300:
    b       branch_0x80344304

branch_0x80344304:
    lfd     f1, 0x98(r26)
    bl      __cvt_fp2unsigned
    mr      r27, r3
    lfd     f1, 0x90(r26)
    bl      __cvt_fp2unsigned
    mr      r5, r3
    crxor   6, 6, 6
    mr      r4, r25
    mr      r7, r27
    addi    r3, r31, 0x120
    addi    r6, r25, 0x1
    bl      OSReport
    addi    r26, r26, 0x10
    addi    r25, r25, 0x2
    cmplwi  r25, 0x20
    blt+    branch_0x80344304
    addi    r3, r31, 0x13c
    crxor   6, 6, 6
    bl      OSReport
    li      r25, 0x0
    slwi    r0, r25, 3
    add     r26, r28, r0
    b       branch_0x80344360

branch_0x80344360:
    b       branch_0x80344364

branch_0x80344364:
    b       branch_0x80344368

branch_0x80344368:
    lfd     f1, 0x1d0(r26)
    bl      __cvt_fp2unsigned
    mr      r27, r3
    lfd     f1, 0x1c8(r26)
    bl      __cvt_fp2unsigned
    mr      r5, r3
    crxor   6, 6, 6
    mr      r4, r25
    mr      r7, r27
    addi    r3, r31, 0x150
    addi    r6, r25, 0x1
    bl      OSReport
    addi    r26, r26, 0x10
    addi    r25, r25, 0x2
    cmplwi  r25, 0x20
    blt+    branch_0x80344368
    li      r5, 0x0
    sth     r5, 0x1b0(sp)
    lis     r3, 0x8000
    addi    r4, sp, 0x10
    sth     r5, 0x1b2(sp)
    lwz     r0, 0xd8(r3)
    cmplw   r4, r0
    bne-    branch_0x803443cc
    stw     r5, 0xd8(r3)
branch_0x803443cc:
    mr      r3, r30
    bl      OSSetCurrentContext
    mr      r3, r29
    bl      OSRestoreInterrupts
branch_0x803443dc:
    addi    r3, r31, 0x170
    crxor   6, 6, 6
    bl      OSReport
    lwz     r25, 0x4(r28)
    li      r26, 0x0
    b       branch_0x803443f4

branch_0x803443f4:
    b       branch_0x803443f8

branch_0x803443f8:
    b       branch_0x80344418

branch_0x803443fc:
    lwz     r5, 0x0(r25)
    mr      r4, r25
    lwz     r6, 0x4(r25)
    addi    r3, r31, 0x198
    crxor   6, 6, 6
    bl      OSReport
    lwz     r25, 0x0(r25)
branch_0x80344418:
    cmplwi  r25, 0x0
    beq-    branch_0x80344438
    addis   r0, r25, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x80344438
    cmplwi  r26, 0x10
    addi    r26, r26, 0x1
    blt+    branch_0x803443fc
branch_0x80344438:
    lmw     r25, 0x2dc(sp)
    lwz     r0, 0x2fc(sp)
    addi    sp, sp, 0x2f8
    mtlr    r0
    blr


.globl OSSwitchFPUContext
OSSwitchFPUContext: # 0x8034444c
    mfmsr   r5
    ori     r5, r5, 0x2000
    mtmsr   r5
    isync
    lwz     r5, 0x19c(r4)
    ori     r5, r5, 0x2000
    mtspr   27, r5
    lis     r3, 0x8000
    lwz     r5, 0xd8(r3)
    stw     r4, 0xd8(r3)
    cmpw    r5, r4
    beq-    branch_0x8034448c
    cmpwi   r5, 0x0
    beq-    branch_0x80344488
    bl      __OSSaveFPUContext
branch_0x80344488:
    bl      __OSLoadFPUContext
branch_0x8034448c:
    lwz     r3, 0x80(r4)
    mtcrf   255, r3
    lwz     r3, 0x84(r4)
    mtlr    r3
    lwz     r3, 0x198(r4)
    mtspr   26, r3
    lwz     r3, 0x88(r4)
    mtctr   r3
    lwz     r3, 0x8c(r4)
    mtxer   r3
    lhz     r3, 0x1a2(r4)
    rlwinm  r3, r3, 0, 31, 29
    sth     r3, 0x1a2(r4)
    lwz     r5, 0x14(r4)
    lwz     r3, 0xc(r4)
    lwz     r4, 0x10(r4)
    rfi


.globl __OSContextInit
__OSContextInit: # 0x803444d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lis     r3, 0x8034
    addi    r4, r3, 0x444c
    li      r3, 0x7
    bl      __OSSetExceptionHandler
    li      r0, 0x0
    crxor   6, 6, 6
    lis     r4, 0x8000
    lis     r3, 0x803e
    stw     r0, 0xd8(r4)
    addi    r3, r3, 0x72fc
    bl      DBPrintf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl OSFillFPUContext
OSFillFPUContext: # 0x80344518
    mfmsr   r5
    ori     r5, r5, 0x2000
    mtmsr   r5
    isync
    stfd    f0, 0x90(r3)
    stfd    f1, 0x98(r3)
    stfd    f2, 0xa0(r3)
    stfd    f3, 0xa8(r3)
    stfd    f4, 0xb0(r3)
    stfd    f5, 0xb8(r3)
    stfd    f6, 0xc0(r3)
    stfd    f7, 0xc8(r3)
    stfd    f8, 0xd0(r3)
    stfd    f9, 0xd8(r3)
    stfd    f10, 0xe0(r3)
    stfd    f11, 0xe8(r3)
    stfd    f12, 0xf0(r3)
    stfd    f13, 0xf8(r3)
    stfd    f14, 0x100(r3)
    stfd    f15, 0x108(r3)
    stfd    f16, 0x110(r3)
    stfd    f17, 0x118(r3)
    stfd    f18, 0x120(r3)
    stfd    f19, 0x128(r3)
    stfd    f20, 0x130(r3)
    stfd    f21, 0x138(r3)
    stfd    f22, 0x140(r3)
    stfd    f23, 0x148(r3)
    stfd    f24, 0x150(r3)
    stfd    f25, 0x158(r3)
    stfd    f26, 0x160(r3)
    stfd    f27, 0x168(r3)
    stfd    f28, 0x170(r3)
    stfd    f29, 0x178(r3)
    stfd    f30, 0x180(r3)
    stfd    f31, 0x188(r3)
    mffs    f0
    stfd    f0, 0x190(r3)
    lfd     f0, 0x90(r3)
    mfspr   r5, 920
    extrwi. r5, r5, 1, 2
    beq-    branch_0x80344640
    psq_st  f0, 0x1c8(3), 0, 0
    psq_st  f1, 0x1d0(3), 0, 0
    psq_st  f2, 0x1d8(3), 0, 0
    psq_st  f3, 0x1e0(3), 0, 0
    psq_st  f4, 0x1e8(3), 0, 0
    psq_st  f5, 0x1f0(3), 0, 0
    psq_st  f6, 0x1f8(3), 0, 0
    psq_st  f7, 0x200(3), 0, 0
    psq_st  f8, 0x208(3), 0, 0
    psq_st  f9, 0x210(3), 0, 0
    psq_st  f10, 0x218(3), 0, 0
    psq_st  f11, 0x220(3), 0, 0
    psq_st  f12, 0x228(3), 0, 0
    psq_st  f13, 0x230(3), 0, 0
    psq_st  f14, 0x238(3), 0, 0
    psq_st  f15, 0x240(3), 0, 0
    psq_st  f16, 0x248(3), 0, 0
    psq_st  f17, 0x250(3), 0, 0
    psq_st  f18, 0x258(3), 0, 0
    psq_st  f19, 0x260(3), 0, 0
    psq_st  f20, 0x268(3), 0, 0
    psq_st  f21, 0x270(3), 0, 0
    psq_st  f22, 0x278(3), 0, 0
    psq_st  f23, 0x280(3), 0, 0
    psq_st  f24, 0x288(3), 0, 0
    psq_st  f25, 0x290(3), 0, 0
    psq_st  f26, 0x298(3), 0, 0
    psq_st  f27, 0x2a0(3), 0, 0
    psq_st  f28, 0x2a8(3), 0, 0
    psq_st  f29, 0x2b0(3), 0, 0
    psq_st  f30, 0x2b8(3), 0, 0
    psq_st  f31, 0x2c0(3), 0, 0
branch_0x80344640:
    blr

