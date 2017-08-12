
.globl startSoundSetGrp__13MSSetSoundGrpFUlPC3VecUlfUlUlUc
startSoundSetGrp__13MSSetSoundGrpFUlPC3VecUlfUlUlUc: # 0x8001ac64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    fmr     f31, f1
    stmw    r26, 0x28(sp)
    mr      r26, r3
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    addi    r31, r8, 0x0
    addi    r4, r26, 0x0
    lwz     r3, R13Off_m0x7164(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x8001acb0
    li      r3, 0x0
    b       branch_0x8001acec

branch_0x8001acb0:
    mr      r3, r26
    bl      searchGroup__49JALListGrp_13MSSetSoundGrp_Ul_16MSSetSoundMember_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x8001ace8
    fmr     f1, f31
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r6, r28, 0x0
    addi    r7, r29, 0x0
    addi    r8, r30, 0x0
    addi    r9, r31, 0x0
    addi    r10, r3, 0x0
    bl      startSoundSetDyna__29MSSetSoundTL_13MSSetSoundGrp_FUlPC3VecUlfUlUlUcP13MSSetSoundGrp
    b       branch_0x8001acec

branch_0x8001ace8:
    li      r3, 0x0
branch_0x8001acec:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl startSoundSet__10MSSetSoundFUlPC3VecUlfUlUlUc
startSoundSet__10MSSetSoundFUlPC3VecUlfUlUlUc: # 0x8001ad04
    mflr    r0
    lis     r9, smSetSound__10MSSetSound@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    fmr     f31, f1
    stmw    r25, 0x2c(sp)
    addi    r25, r3, 0x0
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    addi    r4, r25, 0x0
    addi    r31, r9, smSetSound__10MSSetSound@l
    lwz     r3, R13Off_m0x7164(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x8001ad58
    li      r3, 0x0
    b       branch_0x8001ae50

branch_0x8001ad58:
    cmpwi   r25, 0x6801
    li      r3, 0x0
    beq-    branch_0x8001ae10
    bge-    branch_0x8001ada0
    cmpwi   r25, 0x3804
    beq-    branch_0x8001ae1c
    bge-    branch_0x8001ad8c
    cmpwi   r25, 0x804
    beq-    branch_0x8001ae00
    blt-    branch_0x8001ae1c
    cmpwi   r25, 0x3803
    bge-    branch_0x8001adf0
    b       branch_0x8001ae1c

branch_0x8001ad8c:
    cmpwi   r25, 0x6800
    bge-    branch_0x8001add8
    cmpwi   r25, 0x3806
    bge-    branch_0x8001ae1c
    b       branch_0x8001adf8

branch_0x8001ada0:
    cmpwi   r25, 0x6809
    beq-    branch_0x8001ade0
    bge-    branch_0x8001adc4
    cmpwi   r25, 0x6807
    beq-    branch_0x8001ade8
    bge-    branch_0x8001ae1c
    cmpwi   r25, 0x6803
    bge-    branch_0x8001ae1c
    b       branch_0x8001ae08

branch_0x8001adc4:
    lis     r4, unk_0000899b@ha
    addi    r0, r4, unk_0000899b@l
    cmpw    r25, r0
    beq-    branch_0x8001ae18
    b       branch_0x8001ae1c

branch_0x8001add8:
    lwz     r3, 0x0(r31)
    b       branch_0x8001ae1c

branch_0x8001ade0:
    lwz     r3, 0x4(r31)
    b       branch_0x8001ae1c

branch_0x8001ade8:
    lwz     r3, 0x8(r31)
    b       branch_0x8001ae1c

branch_0x8001adf0:
    lwz     r3, 0xc(r31)
    b       branch_0x8001ae1c

branch_0x8001adf8:
    lwz     r3, 0x10(r31)
    b       branch_0x8001ae1c

branch_0x8001ae00:
    lwz     r3, 0x14(r31)
    b       branch_0x8001ae1c

branch_0x8001ae08:
    lwz     r3, 0x18(r31)
    b       branch_0x8001ae1c

branch_0x8001ae10:
    lwz     r3, 0x1c(r31)
    b       branch_0x8001ae1c

branch_0x8001ae18:
    lwz     r3, 0x20(r31)
branch_0x8001ae1c:
    cmplwi  r3, 0x0
    beq-    branch_0x8001ae4c
    fmr     f1, f31
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    addi    r7, r28, 0x0
    addi    r8, r29, 0x0
    addi    r9, r30, 0x0
    li      r10, 0x0
    bl      startSoundSetDyna__26MSSetSoundTL_10MSSetSound_FUlPC3VecUlfUlUlUcP13MSSetSoundGrp
    b       branch_0x8001ae50

branch_0x8001ae4c:
    li      r3, 0x0
branch_0x8001ae50:
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl init__10MSSetSoundFv
init__10MSSetSoundFv: # 0x8001ae68
    mflr    r0
    lis     r3, unk_80374430@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r3, unk_80374430@l
    lis     r3, smSetSound__10MSSetSound@ha
    stw     r29, 0x24(sp)
    addi    r31, r3, smSetSound__10MSSetSound@l
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8001af24
    li      r0, 0x1
    stw     r0, 0x8(sp)
    li      r11, 0x0
    addi    r3, r29, 0x0
    stw     r11, 0xc(sp)
    li      r0, 0xaf
    addi    r5, r30, 0x0
    stw     r0, 0x10(sp)
    addi    r6, r3, 0x0
    li      r4, 0x6800
    lfs     f0, -0x7ad8(r2)
    li      r7, 0x2
    li      r8, 0x7
    stfs    f0, 0x14(sp)
    li      r9, 0x6
    li      r10, 0x4
    lfs     f0, -0x7ad4(r2)
    stfs    f0, 0x18(sp)
    stw     r11, 0x1c(sp)
    lfs     f1, -0x7af8(r2)
    lfs     f2, -0x7af4(r2)
    lfs     f3, -0x7af0(r2)
    lfs     f4, -0x7aec(r2)
    lfs     f5, -0x7ae8(r2)
    lfs     f6, -0x7ae4(r2)
    lfs     f7, -0x7ae0(r2)
    lfs     f8, -0x7adc(r2)
    bl      __ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb
    lis     r3, __vvt__10MSSetSound@ha
    addi    r3, r3, __vvt__10MSSetSound@l
    stw     r3, 0x18(r29)
    addi    r0, r3, 0x8
    stw     r0, 0x14(r29)
branch_0x8001af24:
    stw     r29, 0x0(r31)
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8001afbc
    li      r11, 0x1
    stw     r11, 0x8(sp)
    li      r0, 0x16
    addi    r3, r29, 0x0
    stw     r0, 0xc(sp)
    li      r0, 0xfa
    addi    r6, r3, 0x0
    stw     r0, 0x10(sp)
    addi    r5, r30, 0xc
    li      r4, 0x6809
    lfs     f0, -0x7ab0(r2)
    li      r7, 0x2
    li      r8, 0x4
    stfs    f0, 0x14(sp)
    li      r9, 0x7
    li      r10, 0x5
    lfs     f0, -0x7aac(r2)
    stfs    f0, 0x18(sp)
    stw     r11, 0x1c(sp)
    lfs     f1, -0x7ad0(r2)
    lfs     f2, -0x7acc(r2)
    lfs     f3, -0x7ac8(r2)
    lfs     f4, -0x7ac4(r2)
    lfs     f5, -0x7ac0(r2)
    lfs     f6, -0x7abc(r2)
    lfs     f7, -0x7ab8(r2)
    lfs     f8, -0x7ab4(r2)
    bl      __ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb
    lis     r3, __vvt__10MSSetSound@ha
    addi    r3, r3, __vvt__10MSSetSound@l
    stw     r3, 0x18(r29)
    addi    r0, r3, 0x8
    stw     r0, 0x14(r29)
branch_0x8001afbc:
    stw     r29, 0x4(r31)
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8001b050
    li      r0, 0x1
    stw     r0, 0x8(sp)
    li      r0, 0xf
    addi    r3, r29, 0x0
    stw     r0, 0xc(sp)
    li      r4, 0xb4
    li      r0, 0x0
    stw     r4, 0x10(sp)
    mr      r6, r3
    addi    r5, r30, 0x1c
    lfs     f4, -0x7aa0(r2)
    li      r4, 0x6807
    li      r7, 0x2
    stfs    f4, 0x14(sp)
    fmr     f5, f4
    fmr     f8, f4
    li      r8, 0x9
    lfs     f6, -0x7a9c(r2)
    li      r9, 0xf
    stfs    f6, 0x18(sp)
    li      r10, 0x12
    stw     r0, 0x1c(sp)
    lfs     f1, -0x7ad0(r2)
    lfs     f2, -0x7aa8(r2)
    lfs     f3, -0x7aa4(r2)
    lfs     f7, -0x7a98(r2)
    bl      __ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb
    lis     r3, __vvt__10MSSetSound@ha
    addi    r3, r3, __vvt__10MSSetSound@l
    stw     r3, 0x18(r29)
    addi    r0, r3, 0x8
    stw     r0, 0x14(r29)
branch_0x8001b050:
    stw     r29, 0x8(r31)
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8001b0e4
    li      r0, 0x1
    stw     r0, 0x8(sp)
    li      r0, 0xf
    addi    r3, r29, 0x0
    stw     r0, 0xc(sp)
    li      r4, 0xb4
    li      r0, 0x0
    stw     r4, 0x10(sp)
    mr      r6, r3
    li      r4, 0x3803
    lfs     f4, -0x7aa0(r2)
    addi    r5, r2, R2Off_m0x7a94
    li      r7, 0x2
    stfs    f4, 0x14(sp)
    fmr     f5, f4
    fmr     f8, f4
    li      r8, 0x9
    lfs     f6, -0x7a9c(r2)
    li      r9, 0xf
    stfs    f6, 0x18(sp)
    li      r10, 0x12
    stw     r0, 0x1c(sp)
    lfs     f1, -0x7ad0(r2)
    lfs     f2, -0x7aa8(r2)
    lfs     f3, -0x7aa4(r2)
    lfs     f7, -0x7a98(r2)
    bl      __ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb
    lis     r3, __vvt__10MSSetSound@ha
    addi    r3, r3, __vvt__10MSSetSound@l
    stw     r3, 0x18(r29)
    addi    r0, r3, 0x8
    stw     r0, 0x14(r29)
branch_0x8001b0e4:
    stw     r29, 0xc(r31)
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8001b178
    li      r0, 0x1
    stw     r0, 0x8(sp)
    li      r0, 0xf
    addi    r3, r29, 0x0
    stw     r0, 0xc(sp)
    li      r4, 0xb4
    li      r0, 0x0
    stw     r4, 0x10(sp)
    mr      r6, r3
    li      r4, 0x3805
    lfs     f4, -0x7aa0(r2)
    addi    r5, r2, R2Off_m0x7a8c
    li      r7, 0x2
    stfs    f4, 0x14(sp)
    fmr     f5, f4
    fmr     f8, f4
    li      r8, 0x9
    lfs     f6, -0x7a9c(r2)
    li      r9, 0xf
    stfs    f6, 0x18(sp)
    li      r10, 0x12
    stw     r0, 0x1c(sp)
    lfs     f1, -0x7ad0(r2)
    lfs     f2, -0x7aa8(r2)
    lfs     f3, -0x7aa4(r2)
    lfs     f7, -0x7a98(r2)
    bl      __ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb
    lis     r3, __vvt__10MSSetSound@ha
    addi    r3, r3, __vvt__10MSSetSound@l
    stw     r3, 0x18(r29)
    addi    r0, r3, 0x8
    stw     r0, 0x14(r29)
branch_0x8001b178:
    stw     r29, 0x10(r31)
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8001b20c
    li      r0, 0x1
    stw     r0, 0x8(sp)
    li      r0, 0xf
    addi    r3, r29, 0x0
    stw     r0, 0xc(sp)
    li      r4, 0xb4
    li      r0, 0x0
    stw     r4, 0x10(sp)
    mr      r6, r3
    addi    r5, r30, 0x30
    lfs     f4, -0x7aa0(r2)
    li      r4, 0x804
    li      r7, 0x2
    stfs    f4, 0x14(sp)
    fmr     f5, f4
    fmr     f8, f4
    li      r8, 0x4
    lfs     f6, -0x7a9c(r2)
    li      r9, 0x1
    stfs    f6, 0x18(sp)
    li      r10, 0xa
    stw     r0, 0x1c(sp)
    lfs     f1, -0x7a84(r2)
    lfs     f2, -0x7aa8(r2)
    lfs     f3, -0x7aa4(r2)
    lfs     f7, -0x7a98(r2)
    bl      __ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb
    lis     r3, __vvt__10MSSetSound@ha
    addi    r3, r3, __vvt__10MSSetSound@l
    stw     r3, 0x18(r29)
    addi    r0, r3, 0x8
    stw     r0, 0x14(r29)
branch_0x8001b20c:
    stw     r29, 0x14(r31)
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8001b2a4
    li      r11, 0x1
    stw     r11, 0x8(sp)
    li      r0, 0x0
    addi    r3, r29, 0x0
    stw     r0, 0xc(sp)
    li      r0, 0xaf
    addi    r6, r3, 0x0
    stw     r0, 0x10(sp)
    addi    r5, r30, 0x3c
    li      r4, 0x6802
    lfs     f0, -0x7ad8(r2)
    li      r7, 0x2
    li      r8, 0x3
    stfs    f0, 0x14(sp)
    li      r9, 0xa
    li      r10, 0x2
    lfs     f0, -0x7ad4(r2)
    stfs    f0, 0x18(sp)
    stw     r11, 0x1c(sp)
    lfs     f1, -0x7a80(r2)
    lfs     f2, -0x7af4(r2)
    lfs     f3, -0x7af0(r2)
    lfs     f4, -0x7aec(r2)
    lfs     f5, -0x7ae8(r2)
    lfs     f6, -0x7ae4(r2)
    lfs     f7, -0x7ae0(r2)
    lfs     f8, -0x7adc(r2)
    bl      __ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb
    lis     r3, __vvt__10MSSetSound@ha
    addi    r3, r3, __vvt__10MSSetSound@l
    stw     r3, 0x18(r29)
    addi    r0, r3, 0x8
    stw     r0, 0x14(r29)
branch_0x8001b2a4:
    stw     r29, 0x18(r31)
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8001b33c
    li      r0, 0x1
    stw     r0, 0x8(sp)
    li      r11, 0x0
    addi    r3, r29, 0x0
    stw     r11, 0xc(sp)
    li      r0, 0xaf
    addi    r5, r30, 0x0
    stw     r0, 0x10(sp)
    addi    r6, r3, 0x0
    li      r4, 0x6801
    lfs     f0, -0x7ad8(r2)
    li      r7, 0x2
    li      r8, 0x7
    stfs    f0, 0x14(sp)
    li      r9, 0x6
    li      r10, 0x4
    lfs     f0, -0x7ad4(r2)
    stfs    f0, 0x18(sp)
    stw     r11, 0x1c(sp)
    lfs     f1, -0x7af8(r2)
    lfs     f2, -0x7af4(r2)
    lfs     f3, -0x7af0(r2)
    lfs     f4, -0x7aec(r2)
    lfs     f5, -0x7ae8(r2)
    lfs     f6, -0x7ae4(r2)
    lfs     f7, -0x7ae0(r2)
    lfs     f8, -0x7adc(r2)
    bl      __ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb
    lis     r3, __vvt__10MSSetSound@ha
    addi    r3, r3, __vvt__10MSSetSound@l
    stw     r3, 0x18(r29)
    addi    r0, r3, 0x8
    stw     r0, 0x14(r29)
branch_0x8001b33c:
    stw     r29, 0x1c(r31)
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8001b3d8
    li      r0, 0x1
    stw     r0, 0x8(sp)
    li      r11, 0x0
    addi    r3, r29, 0x0
    stw     r11, 0xc(sp)
    li      r0, 0xaf
    lis     r4, unk_0000899b@ha
    stw     r0, 0x10(sp)
    mr      r6, r3
    addi    r4, r4, unk_0000899b@l
    lfs     f0, -0x7ad8(r2)
    addi    r5, r30, 0x4c
    li      r7, 0x3
    stfs    f0, 0x14(sp)
    li      r8, 0x4
    li      r9, 0x3f
    lfs     f0, -0x7ad4(r2)
    li      r10, 0x4
    stfs    f0, 0x18(sp)
    stw     r11, 0x1c(sp)
    lfs     f1, -0x7af8(r2)
    lfs     f2, -0x7af4(r2)
    lfs     f3, -0x7af0(r2)
    lfs     f4, -0x7a7c(r2)
    lfs     f5, -0x7a78(r2)
    lfs     f6, -0x7a74(r2)
    lfs     f7, -0x7ae0(r2)
    lfs     f8, -0x7adc(r2)
    bl      __ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb
    lis     r3, __vvt__10MSSetSound@ha
    addi    r3, r3, __vvt__10MSSetSound@l
    stw     r3, 0x18(r29)
    addi    r0, r3, 0x8
    stw     r0, 0x14(r29)
branch_0x8001b3d8:
    stw     r29, 0x20(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl searchGroup__49JALListGrp_13MSSetSoundGrp_Ul_16MSSetSoundMember_FUl
searchGroup__49JALListGrp_13MSSetSoundGrp_Ul_16MSSetSoundMember_FUl: # 0x8001b3f8
    lwz     r4, R13Off_m0x72ac(r13)
    b       branch_0x8001b444

branch_0x8001b400:
    lwz     r7, 0x0(r4)
    lwz     r5, 0xbc(r7)
    b       branch_0x8001b424

branch_0x8001b40c:
    lwz     r6, 0x0(r5)
    lwz     r0, 0x0(r6)
    cmplw   r3, r0
    bne-    branch_0x8001b420
    b       branch_0x8001b430

branch_0x8001b420:
    lwz     r5, 0xc(r5)
branch_0x8001b424:
    cmplwi  r5, 0x0
    bne+    branch_0x8001b40c
    li      r6, 0x0
branch_0x8001b430:
    cmplwi  r6, 0x0
    beq-    branch_0x8001b440
    mr      r3, r7
    blr

branch_0x8001b440:
    lwz     r4, 0xc(r4)
branch_0x8001b444:
    cmplwi  r4, 0x0
    bne+    branch_0x8001b400
    li      r3, 0x0
    blr


.globl startSoundSetDyna__26MSSetSoundTL_10MSSetSound_FUlPC3VecUlfUlUlUcP13MSSetSoundGrp
startSoundSetDyna__26MSSetSoundTL_10MSSetSound_FUlPC3VecUlfUlUlUcP13MSSetSoundGrp: # 0x8001b454
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stfd    f30, 0x120(sp)
    stfd    f29, 0x118(sp)
    stfd    f28, 0x110(sp)
    stfd    f27, 0x108(sp)
    fmr     f27, f1
    stmw    r23, 0xe4(sp)
    mr      r25, r3
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    addi    r31, r10, 0x0
    lbz     r0, 0xb8(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8001b4ac
    li      r3, 0x1
    b       branch_0x8001bb78

branch_0x8001b4ac:
    addi    r3, r25, 0xac
    addi    r4, r27, 0x0
    bl      getDist__7JALCalcFP3VecP3Vec
    lbz     r0, 0x5a(r25)
    fmr     f31, f1
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r4, 0x5c(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x8001b62c
    fmr     f29, f27
    cmpwi   r26, 0x6809
    addi    r31, r26, 0x0
    beq-    branch_0x8001b4f4
    bge-    branch_0x8001b560
    cmpwi   r26, 0x6800
    beq-    branch_0x8001b550
    b       branch_0x8001b560

branch_0x8001b4f4:
    cmplwi  r4, 0x0
    beq-    branch_0x8001b560
    lwz     r0, 0x3c(r25)
    lis     r3, 0x4330
    lwz     r4, 0x14(r4)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x7a70(r2)
    stw     r4, 0xdc(sp)
    lfd     f1, -0x7a68(r2)
    stw     r0, 0xd4(sp)
    stw     r3, 0xd8(sp)
    stw     r3, 0xd0(sp)
    lfd     f2, 0xd8(sp)
    lfd     f0, 0xd0(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x8001b560
    lfs     f0, 0x40(r25)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8001b560
    li      r31, 0x680a
    b       branch_0x8001b560

branch_0x8001b550:
    lwz     r3, R13Off_m0x7164(r13)
    mr      r4, r27
    bl      getDistFromCamera__6MSoundFP3Vec
    fmr     f29, f1
branch_0x8001b560:
    lbz     r0, 0xb9(r25)
    cmplwi  r0, 0x1
    bne-    branch_0x8001b5a4
    lbz     r0, 0x59(r25)
    lwz     r3, 0x0(r27)
    mulli   r4, r0, 0xc
    lwz     r0, 0x4(r27)
    add     r4, r25, r4
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x8(r27)
    stw     r0, 0x78(r4)
    lbz     r0, 0x59(r25)
    mulli   r3, r0, 0xc
    addi    r0, r3, 0x70
    add     r0, r25, r0
    b       branch_0x8001b5a8

branch_0x8001b5a4:
    li      r0, 0x0
branch_0x8001b5a8:
    cmplwi  r0, 0x0
    bne-    branch_0x8001b5b4
    mr      r0, r27
branch_0x8001b5b4:
    stw     r0, 0x9c(sp)
    addi    r3, r31, 0x0
    addi    r6, r29, 0x0
    stw     r0, 0xa0(sp)
    addi    r7, r30, 0x0
    addi    r5, sp, 0x9c
    stw     r0, 0xa4(sp)
    stw     r28, 0xa8(sp)
    lbz     r0, 0x59(r25)
    slwi    r4, r0, 2
    addi    r4, r4, 0x5c
    add     r4, r25, r4
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    lbz     r0, 0x59(r25)
    fmr     f1, f29
    li      r4, 0x0
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r3, 0x5c(r3)
    li      r5, 0x3
    bl      processModFunc__9JALSystemFP8JAISoundfUlUc
    lwz     r4, 0x0(r27)
    li      r0, 0x1
    lwz     r3, 0x4(r27)
    stw     r4, 0xac(r25)
    stw     r3, 0xb0(r25)
    lwz     r3, 0x8(r27)
    stw     r3, 0xb4(r25)
    stb     r0, 0xb8(r25)
    b       branch_0x8001bb2c

branch_0x8001b62c:
    lbz     r24, 0x1d(r25)
    bl      getRandom_0_1__7JALCalcFv
    lbz     r3, 0x1e(r25)
    lis     r0, 0x4330
    lfd     f2, -0x7a70(r2)
    stw     r3, 0xd4(sp)
    stw     r0, 0xd0(sp)
    lfd     f0, 0xd0(sp)
    fsubs   f0, f0, f2
    fmuls   f1, f0, f1
    bl      __cvt_fp2unsigned
    lbz     r0, 0x5a(r25)
    add     r24, r24, r3
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r3, 0x5c(r3)
    lwz     r23, 0x14(r3)
    cmplw   r23, r24
    bge-    branch_0x8001b680
    li      r0, 0x0
    b       branch_0x8001b700

branch_0x8001b680:
    lbz     r0, 0x24(r25)
    cmplwi  r0, 0x1
    bne-    branch_0x8001b6ac
    lbz     r0, 0x1f(r25)
    cmplw   r23, r0
    bge-    branch_0x8001b6ac
    lfs     f0, 0x20(r25)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8001b6ac
    li      r0, 0x0
    b       branch_0x8001b700

branch_0x8001b6ac:
    cmplwi  r31, 0x0
    beq-    branch_0x8001b6fc
    lwz     r4, 0x8(r3)
    addi    r3, r31, 0xbc
    bl      searchD__31JALListD_16MSSetSoundMember_Ul_FUl
    cmplwi  r3, 0x0
    bne-    branch_0x8001b6d0
    li      r0, 0x0
    b       branch_0x8001b700

branch_0x8001b6d0:
    stw     r23, 0xd4(sp)
    lis     r0, 0x4330
    lfd     f2, -0x7a70(r2)
    stw     r0, 0xd0(sp)
    lfs     f0, 0x18(r3)
    lfd     f1, 0xd0(sp)
    fsubs   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x8001b6fc
    li      r0, 0x0
    b       branch_0x8001b700

branch_0x8001b6fc:
    li      r0, 0x1
branch_0x8001b700:
    clrlwi. r0, r0, 24
    bne-    branch_0x8001b710
    li      r3, 0x1
    b       branch_0x8001bb78

branch_0x8001b710:
    fmr     f29, f27
    cmpwi   r26, 0x6809
    addi    r31, r26, 0x0
    beq-    branch_0x8001b730
    bge-    branch_0x8001b7ac
    cmpwi   r26, 0x6800
    beq-    branch_0x8001b79c
    b       branch_0x8001b7ac

branch_0x8001b730:
    lbz     r0, 0x5a(r25)
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r4, 0x5c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8001b7ac
    lwz     r0, 0x3c(r25)
    lis     r3, 0x4330
    lwz     r4, 0x14(r4)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x7a70(r2)
    stw     r4, 0xd4(sp)
    lfd     f1, -0x7a68(r2)
    stw     r0, 0xdc(sp)
    stw     r3, 0xd0(sp)
    stw     r3, 0xd8(sp)
    lfd     f2, 0xd0(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x8001b7ac
    lfs     f0, 0x40(r25)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8001b7ac
    li      r31, 0x680a
    b       branch_0x8001b7ac

branch_0x8001b79c:
    lwz     r3, R13Off_m0x7164(r13)
    mr      r4, r27
    bl      getDistFromCamera__6MSoundFP3Vec
    fmr     f29, f1
branch_0x8001b7ac:
    lbz     r0, 0xb9(r25)
    cmplwi  r0, 0x1
    bne-    branch_0x8001b7f0
    lbz     r0, 0x59(r25)
    lwz     r3, 0x0(r27)
    mulli   r4, r0, 0xc
    lwz     r0, 0x4(r27)
    add     r4, r25, r4
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x8(r27)
    stw     r0, 0x78(r4)
    lbz     r0, 0x59(r25)
    mulli   r3, r0, 0xc
    addi    r0, r3, 0x70
    add     r0, r25, r0
    b       branch_0x8001b7f4

branch_0x8001b7f0:
    li      r0, 0x0
branch_0x8001b7f4:
    cmplwi  r0, 0x0
    bne-    branch_0x8001b800
    mr      r0, r27
branch_0x8001b800:
    stw     r0, 0x84(sp)
    addi    r3, r31, 0x0
    addi    r6, r29, 0x0
    stw     r0, 0x88(sp)
    addi    r7, r30, 0x0
    addi    r5, sp, 0x84
    stw     r0, 0x8c(sp)
    stw     r28, 0x90(sp)
    lbz     r0, 0x59(r25)
    slwi    r4, r0, 2
    addi    r4, r4, 0x5c
    add     r4, r25, r4
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    lbz     r0, 0x59(r25)
    fmr     f1, f29
    li      r4, 0x0
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r3, 0x5c(r3)
    li      r5, 0x3
    bl      processModFunc__9JALSystemFP8JAISoundfUlUc
    lwz     r4, 0x0(r27)
    li      r0, 0x1
    lwz     r3, 0x4(r27)
    stw     r4, 0xac(r25)
    stw     r3, 0xb0(r25)
    lwz     r3, 0x8(r27)
    stw     r3, 0xb4(r25)
    stb     r0, 0xb8(r25)
    lbz     r0, 0x59(r25)
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r3, 0x5c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8001bb10
    lbz     r0, 0x5a(r25)
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r3, 0x5c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8001bb2c
    lwz     r23, 0x14(r3)
    lis     r26, 0x4330
    lfs     f29, -0x7aa0(r2)
    stw     r23, 0xd4(sp)
    lfd     f2, -0x7a70(r2)
    fmr     f30, f29
    stw     r26, 0xd0(sp)
    lfs     f3, 0x28(r25)
    lfd     f0, 0xd0(sp)
    lfs     f1, 0x2c(r25)
    fsubs   f0, f0, f2
    fcmpo   cr0, f0, f3
    bge-    branch_0x8001b994
    fcmpo   cr0, f31, f1
    bge-    branch_0x8001b994
    lbz     r0, 0x1d(r25)
    li      r3, 0x0
    stw     r23, 0xd4(sp)
    lfs     f4, 0x38(r25)
    stw     r0, 0xdc(sp)
    lfs     f5, -0x7a9c(r2)
    stw     r26, 0xd0(sp)
    stw     r26, 0xd8(sp)
    lfd     f1, 0xd0(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      linearTransform__7JALCalcFfffffb
    lbz     r0, 0x1d(r25)
    li      r3, 0x0
    stw     r23, 0xcc(sp)
    lfd     f2, -0x7a70(r2)
    stw     r0, 0xc4(sp)
    lfs     f3, 0x28(r25)
    stw     r26, 0xc8(sp)
    lfs     f4, 0x30(r25)
    stw     r26, 0xc0(sp)
    lfd     f1, 0xc8(sp)
    lfd     f0, 0xc0(sp)
    fsubs   f1, f1, f2
    lfs     f5, -0x7aa0(r2)
    fsubs   f2, f0, f2
    bl      linearTransform__7JALCalcFfffffb
    lbz     r0, 0x1d(r25)
    fmr     f30, f1
    stw     r23, 0xbc(sp)
    li      r3, 0x0
    lfd     f2, -0x7a70(r2)
    stw     r0, 0xb4(sp)
    lfs     f3, 0x28(r25)
    stw     r26, 0xb8(sp)
    lfs     f4, -0x7aa0(r2)
    stw     r26, 0xb0(sp)
    lfd     f1, 0xb8(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f1, f1, f2
    lfs     f5, 0x34(r25)
    fsubs   f2, f0, f2
    bl      linearTransform__7JALCalcFfffffb
    fmr     f29, f1
branch_0x8001b994:
    lwz     r0, 0x3c(r25)
    lis     r26, 0x4330
    stw     r23, 0xb4(sp)
    xoris   r0, r0, 0x8000
    lfs     f27, -0x7aa0(r2)
    stw     r0, 0xbc(sp)
    lfd     f6, -0x7a70(r2)
    fmr     f28, f27
    stw     r26, 0xb0(sp)
    lfd     f3, -0x7a68(r2)
    stw     r26, 0xb8(sp)
    lfd     f1, 0xb0(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f1, f1, f6
    fsubs   f0, f0, f3
    fcmpo   cr0, f1, f0
    bge-    branch_0x8001bac8
    lfs     f0, 0x40(r25)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8001bac8
    li      r0, 0x1
    stb     r0, 0x58(r25)
    li      r3, 0x0
    lwz     r0, 0x44(r25)
    lwz     r4, 0x54(r25)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x7a9c(r2)
    stw     r4, 0xb4(sp)
    fmr     f4, f2
    lfs     f5, 0x50(r25)
    stw     r0, 0xbc(sp)
    stw     r26, 0xb0(sp)
    stw     r26, 0xb8(sp)
    lfd     f1, 0xb0(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f1, f1, f6
    fsubs   f3, f0, f3
    bl      linearTransform__7JALCalcFfffffb
    lwz     r0, 0x44(r25)
    li      r3, 0x0
    lwz     r4, 0x54(r25)
    xoris   r0, r0, 0x8000
    lfd     f5, -0x7a70(r2)
    stw     r4, 0xc4(sp)
    lfd     f3, -0x7a68(r2)
    stw     r0, 0xcc(sp)
    lfs     f2, -0x7a9c(r2)
    stw     r26, 0xc0(sp)
    lfs     f4, -0x7aa0(r2)
    stw     r26, 0xc8(sp)
    lfd     f1, 0xc0(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f1, f1, f5
    lfs     f5, 0x48(r25)
    fsubs   f3, f0, f3
    bl      linearTransform__7JALCalcFfffffb
    lwz     r0, 0x44(r25)
    fmr     f27, f1
    lwz     r4, 0x54(r25)
    li      r3, 0x0
    xoris   r0, r0, 0x8000
    stw     r4, 0xd4(sp)
    lfd     f4, -0x7a70(r2)
    stw     r0, 0xdc(sp)
    lfd     f3, -0x7a68(r2)
    stw     r26, 0xd0(sp)
    lfs     f2, -0x7a9c(r2)
    stw     r26, 0xd8(sp)
    lfd     f1, 0xd0(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f1, f1, f4
    lfs     f4, -0x7aa0(r2)
    fsubs   f3, f0, f3
    lfs     f5, 0x4c(r25)
    bl      linearTransform__7JALCalcFfffffb
    fmr     f28, f1
    b       branch_0x8001bad4

branch_0x8001bac8:
    li      r0, 0x0
    stb     r0, 0x58(r25)
    stw     r0, 0x54(r25)
branch_0x8001bad4:
    lbz     r0, 0x59(r25)
    fmuls   f1, f30, f27
    li      r4, 0x3
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r24, 0x5c(r3)
    li      r5, 0x0
    addi    r3, r24, 0x0
    bl      setVolume__8JAISoundFfUlUc
    fmuls   f1, f29, f28
    addi    r3, r24, 0x0
    li      r4, 0x3
    li      r5, 0x0
    bl      setPitch__8JAISoundFfUlUc
    b       branch_0x8001bb2c

branch_0x8001bb10:
    beq-    branch_0x8001bb20
    li      r4, 0xd
    li      r5, 0x1
    bl      setPortData__8JAISoundFUcUs
branch_0x8001bb20:
    li      r0, 0x0
    stb     r0, 0x58(r25)
    stw     r0, 0x54(r25)
branch_0x8001bb2c:
    lbz     r3, 0x1c(r25)
    lbz     r4, 0x59(r25)
    addi    r0, r3, -0x1
    cmpw    r4, r0
    bne-    branch_0x8001bb48
    li      r0, 0x0
    b       branch_0x8001bb4c

branch_0x8001bb48:
    addi    r0, r4, 0x1
branch_0x8001bb4c:
    stb     r0, 0x59(r25)
    lbz     r3, 0x1c(r25)
    lbz     r4, 0x5a(r25)
    addi    r0, r3, -0x1
    cmpw    r4, r0
    bne-    branch_0x8001bb6c
    li      r0, 0x0
    b       branch_0x8001bb70

branch_0x8001bb6c:
    addi    r0, r4, 0x1
branch_0x8001bb70:
    stb     r0, 0x5a(r25)
    li      r3, 0x1
branch_0x8001bb78:
    lmw     r23, 0xe4(sp)
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    mtlr    r0
    lfd     f29, 0x118(sp)
    lfd     f28, 0x110(sp)
    lfd     f27, 0x108(sp)
    addi    sp, sp, 0x130
    blr


.globl searchD__31JALListD_16MSSetSoundMember_Ul_FUl
searchD__31JALListD_16MSSetSoundMember_Ul_FUl: # 0x8001bba0
    lwz     r5, 0x0(r3)
    b       branch_0x8001bbbc

branch_0x8001bba8:
    lwz     r3, 0x0(r5)
    lwz     r0, 0x0(r3)
    cmplw   r4, r0
    beqlr-    

    lwz     r5, 0xc(r5)
branch_0x8001bbbc:
    cmplwi  r5, 0x0
    bne+    branch_0x8001bba8
    li      r3, 0x0
    blr


.globl __ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb
__ct__26MSSetSoundTL_10MSSetSound_FUlPCcP10MSSetSoundUcUcUcUcfUcffffflflfffb: # 0x8001bbcc
    mflr    r0
    lis     r11, unk_80374430@h
    stw     r0, 0x4(sp)
    mr      r0, r4
    addi    r4, r5, 0x0
    stwu    sp, -0x128(sp)
    mr      r5, r0
    stfd    f31, 0x120(sp)
    lfs     f31, 0x140(sp)
    stfd    f30, 0x118(sp)
    lfs     f30, 0x13c(sp)
    stfd    f29, 0x110(sp)
    fmr     f29, f8
    stfd    f28, 0x108(sp)
    fmr     f28, f7
    stfd    f27, 0x100(sp)
    fmr     f27, f6
    stfd    f26, 0xf8(sp)
    fmr     f26, f5
    stfd    f25, 0xf0(sp)
    fmr     f25, f4
    stfd    f24, 0xe8(sp)
    fmr     f24, f3
    stfd    f23, 0xe0(sp)
    fmr     f23, f2
    stfd    f22, 0xd8(sp)
    fmr     f22, f1
    stmw    r22, 0xb0(sp)
    mr      r24, r7
    lbz     r28, 0x133(sp)
    mr      r25, r8
    lwz     r29, 0x134(sp)
    lwz     r30, 0x138(sp)
    mr      r26, r9
    lbz     r31, 0x147(sp)
    addi    r27, r10, 0x0
    addi    r22, r11, unk_80374430@l
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__31JALListHioNode_10MSSetSound_Ul_FPCcUlP10MSSetSound
    lwz     r23, 0x8(sp)
    lis     r3, __vvt__30JALListFrameLoop_10MSSetSound_@ha
    addi    r0, r3, __vvt__30JALListFrameLoop_10MSSetSound_@l
    lis     r3, __vvt__26MSSetSoundTL_10MSSetSound_@ha
    stw     r0, 0x14(r23)
    addi    r3, r3, __vvt__26MSSetSoundTL_10MSSetSound_@l
    stw     r3, 0x18(r23)
    addi    r0, r3, 0x8
    addi    r4, r24, 0x0
    stw     r0, 0x14(r23)
    addi    r3, r23, 0x1c
    addi    r5, r22, 0x5c
    bl      __ct__10JADPrm_Uc_FUcPCc
    addi    r4, r25, 0x0
    addi    r3, r23, 0x1d
    addi    r5, r22, 0x6c
    bl      __ct__10JADPrm_Uc_FUcPCc
    addi    r4, r26, 0x0
    addi    r3, r23, 0x1e
    addi    r5, r22, 0x7c
    bl      __ct__10JADPrm_Uc_FUcPCc
    addi    r4, r27, 0x0
    addi    r3, r23, 0x1f
    addi    r5, r22, 0x8c
    bl      __ct__10JADPrm_Uc_FUcPCc
    fmr     f1, f22
    addi    r3, r23, 0x20
    addi    r4, r22, 0x98
    bl      __ct__9JADPrm_f_FfPCc
    addi    r4, r28, 0x0
    addi    r3, r23, 0x24
    addi    r5, r22, 0xa4
    bl      __ct__10JADPrm_Uc_FUcPCc
    fmr     f1, f23
    addi    r3, r23, 0x28
    addi    r4, r22, 0xb4
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f24
    addi    r3, r23, 0x2c
    addi    r4, r22, 0xc4
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f25
    addi    r3, r23, 0x30
    addi    r4, r22, 0xd4
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f26
    addi    r3, r23, 0x34
    addi    r4, r22, 0xec
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f27
    addi    r3, r23, 0x38
    addi    r4, r22, 0x100
    bl      __ct__9JADPrm_f_FfPCc
    addi    r4, r29, 0x0
    addi    r3, r23, 0x3c
    addi    r5, r22, 0x110
    bl      __ct__9JADPrm_l_FlPCc
    fmr     f1, f28
    addi    r3, r23, 0x40
    addi    r4, r22, 0x130
    bl      __ct__9JADPrm_f_FfPCc
    addi    r4, r30, 0x0
    addi    r3, r23, 0x44
    addi    r5, r22, 0x148
    bl      __ct__9JADPrm_l_FlPCc
    fmr     f1, f29
    addi    r3, r23, 0x48
    addi    r4, r22, 0x158
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f30
    addi    r3, r23, 0x4c
    addi    r4, r22, 0x174
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f31
    addi    r3, r23, 0x50
    addi    r4, r22, 0x18c
    bl      __ct__9JADPrm_f_FfPCc
    li      r4, 0x0
    stw     r4, 0x54(r23)
    li      r0, 0x1
    addi    r3, r23, 0x0
    stb     r4, 0x58(r23)
    lfs     f0, -0x7a9c(r2)
    stfs    f0, 0xac(r23)
    stfs    f0, 0xb0(r23)
    stfs    f0, 0xb4(r23)
    stb     r4, 0xb8(r23)
    stb     r31, 0xb9(r23)
    stb     r4, 0x5a(r23)
    stb     r0, 0x59(r23)
    stw     r4, 0x5c(r23)
    stw     r4, 0x60(r23)
    stw     r4, 0x64(r23)
    stw     r4, 0x68(r23)
    stw     r4, 0x6c(r23)
    lwz     r0, 0x12c(sp)
    lfd     f31, 0x120(sp)
    lfd     f30, 0x118(sp)
    lfd     f29, 0x110(sp)
    lfd     f28, 0x108(sp)
    lfd     f27, 0x100(sp)
    lfd     f26, 0xf8(sp)
    lfd     f25, 0xf0(sp)
    lfd     f24, 0xe8(sp)
    lfd     f23, 0xe0(sp)
    lfd     f22, 0xd8(sp)
    lmw     r22, 0xb0(sp)
    addi    sp, sp, 0x128
    mtlr    r0
    blr


.globl startSoundSetDyna__29MSSetSoundTL_13MSSetSoundGrp_FUlPC3VecUlfUlUlUcP13MSSetSoundGrp
startSoundSetDyna__29MSSetSoundTL_13MSSetSoundGrp_FUlPC3VecUlfUlUlUcP13MSSetSoundGrp: # 0x8001be24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stfd    f30, 0x120(sp)
    stfd    f29, 0x118(sp)
    stfd    f28, 0x110(sp)
    stfd    f27, 0x108(sp)
    fmr     f27, f1
    stmw    r23, 0xe4(sp)
    mr      r25, r3
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    addi    r31, r10, 0x0
    lbz     r0, 0xb8(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8001be7c
    li      r3, 0x1
    b       branch_0x8001c548

branch_0x8001be7c:
    addi    r3, r25, 0xac
    addi    r4, r27, 0x0
    bl      getDist__7JALCalcFP3VecP3Vec
    lbz     r0, 0x5a(r25)
    fmr     f31, f1
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r4, 0x5c(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x8001bffc
    fmr     f29, f27
    cmpwi   r26, 0x6809
    addi    r31, r26, 0x0
    beq-    branch_0x8001bec4
    bge-    branch_0x8001bf30
    cmpwi   r26, 0x6800
    beq-    branch_0x8001bf20
    b       branch_0x8001bf30

branch_0x8001bec4:
    cmplwi  r4, 0x0
    beq-    branch_0x8001bf30
    lwz     r0, 0x3c(r25)
    lis     r3, 0x4330
    lwz     r4, 0x14(r4)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x7a70(r2)
    stw     r4, 0xdc(sp)
    lfd     f1, -0x7a68(r2)
    stw     r0, 0xd4(sp)
    stw     r3, 0xd8(sp)
    stw     r3, 0xd0(sp)
    lfd     f2, 0xd8(sp)
    lfd     f0, 0xd0(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x8001bf30
    lfs     f0, 0x40(r25)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8001bf30
    li      r31, 0x680a
    b       branch_0x8001bf30

branch_0x8001bf20:
    lwz     r3, R13Off_m0x7164(r13)
    mr      r4, r27
    bl      getDistFromCamera__6MSoundFP3Vec
    fmr     f29, f1
branch_0x8001bf30:
    lbz     r0, 0xb9(r25)
    cmplwi  r0, 0x1
    bne-    branch_0x8001bf74
    lbz     r0, 0x59(r25)
    lwz     r3, 0x0(r27)
    mulli   r4, r0, 0xc
    lwz     r0, 0x4(r27)
    add     r4, r25, r4
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x8(r27)
    stw     r0, 0x78(r4)
    lbz     r0, 0x59(r25)
    mulli   r3, r0, 0xc
    addi    r0, r3, 0x70
    add     r0, r25, r0
    b       branch_0x8001bf78

branch_0x8001bf74:
    li      r0, 0x0
branch_0x8001bf78:
    cmplwi  r0, 0x0
    bne-    branch_0x8001bf84
    mr      r0, r27
branch_0x8001bf84:
    stw     r0, 0x9c(sp)
    addi    r3, r31, 0x0
    addi    r6, r29, 0x0
    stw     r0, 0xa0(sp)
    addi    r7, r30, 0x0
    addi    r5, sp, 0x9c
    stw     r0, 0xa4(sp)
    stw     r28, 0xa8(sp)
    lbz     r0, 0x59(r25)
    slwi    r4, r0, 2
    addi    r4, r4, 0x5c
    add     r4, r25, r4
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    lbz     r0, 0x59(r25)
    fmr     f1, f29
    li      r4, 0x0
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r3, 0x5c(r3)
    li      r5, 0x3
    bl      processModFunc__9JALSystemFP8JAISoundfUlUc
    lwz     r4, 0x0(r27)
    li      r0, 0x1
    lwz     r3, 0x4(r27)
    stw     r4, 0xac(r25)
    stw     r3, 0xb0(r25)
    lwz     r3, 0x8(r27)
    stw     r3, 0xb4(r25)
    stb     r0, 0xb8(r25)
    b       branch_0x8001c4fc

branch_0x8001bffc:
    lbz     r24, 0x1d(r25)
    bl      getRandom_0_1__7JALCalcFv
    lbz     r3, 0x1e(r25)
    lis     r0, 0x4330
    lfd     f2, -0x7a70(r2)
    stw     r3, 0xd4(sp)
    stw     r0, 0xd0(sp)
    lfd     f0, 0xd0(sp)
    fsubs   f0, f0, f2
    fmuls   f1, f0, f1
    bl      __cvt_fp2unsigned
    lbz     r0, 0x5a(r25)
    add     r24, r24, r3
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r3, 0x5c(r3)
    lwz     r23, 0x14(r3)
    cmplw   r23, r24
    bge-    branch_0x8001c050
    li      r0, 0x0
    b       branch_0x8001c0d0

branch_0x8001c050:
    lbz     r0, 0x24(r25)
    cmplwi  r0, 0x1
    bne-    branch_0x8001c07c
    lbz     r0, 0x1f(r25)
    cmplw   r23, r0
    bge-    branch_0x8001c07c
    lfs     f0, 0x20(r25)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8001c07c
    li      r0, 0x0
    b       branch_0x8001c0d0

branch_0x8001c07c:
    cmplwi  r31, 0x0
    beq-    branch_0x8001c0cc
    lwz     r4, 0x8(r3)
    addi    r3, r31, 0xbc
    bl      searchD__31JALListD_16MSSetSoundMember_Ul_FUl
    cmplwi  r3, 0x0
    bne-    branch_0x8001c0a0
    li      r0, 0x0
    b       branch_0x8001c0d0

branch_0x8001c0a0:
    stw     r23, 0xd4(sp)
    lis     r0, 0x4330
    lfd     f2, -0x7a70(r2)
    stw     r0, 0xd0(sp)
    lfs     f0, 0x18(r3)
    lfd     f1, 0xd0(sp)
    fsubs   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x8001c0cc
    li      r0, 0x0
    b       branch_0x8001c0d0

branch_0x8001c0cc:
    li      r0, 0x1
branch_0x8001c0d0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8001c0e0
    li      r3, 0x1
    b       branch_0x8001c548

branch_0x8001c0e0:
    fmr     f29, f27
    cmpwi   r26, 0x6809
    addi    r31, r26, 0x0
    beq-    branch_0x8001c100
    bge-    branch_0x8001c17c
    cmpwi   r26, 0x6800
    beq-    branch_0x8001c16c
    b       branch_0x8001c17c

branch_0x8001c100:
    lbz     r0, 0x5a(r25)
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r4, 0x5c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8001c17c
    lwz     r0, 0x3c(r25)
    lis     r3, 0x4330
    lwz     r4, 0x14(r4)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x7a70(r2)
    stw     r4, 0xd4(sp)
    lfd     f1, -0x7a68(r2)
    stw     r0, 0xdc(sp)
    stw     r3, 0xd0(sp)
    stw     r3, 0xd8(sp)
    lfd     f2, 0xd0(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x8001c17c
    lfs     f0, 0x40(r25)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8001c17c
    li      r31, 0x680a
    b       branch_0x8001c17c

branch_0x8001c16c:
    lwz     r3, R13Off_m0x7164(r13)
    mr      r4, r27
    bl      getDistFromCamera__6MSoundFP3Vec
    fmr     f29, f1
branch_0x8001c17c:
    lbz     r0, 0xb9(r25)
    cmplwi  r0, 0x1
    bne-    branch_0x8001c1c0
    lbz     r0, 0x59(r25)
    lwz     r3, 0x0(r27)
    mulli   r4, r0, 0xc
    lwz     r0, 0x4(r27)
    add     r4, r25, r4
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x8(r27)
    stw     r0, 0x78(r4)
    lbz     r0, 0x59(r25)
    mulli   r3, r0, 0xc
    addi    r0, r3, 0x70
    add     r0, r25, r0
    b       branch_0x8001c1c4

branch_0x8001c1c0:
    li      r0, 0x0
branch_0x8001c1c4:
    cmplwi  r0, 0x0
    bne-    branch_0x8001c1d0
    mr      r0, r27
branch_0x8001c1d0:
    stw     r0, 0x84(sp)
    addi    r3, r31, 0x0
    addi    r6, r29, 0x0
    stw     r0, 0x88(sp)
    addi    r7, r30, 0x0
    addi    r5, sp, 0x84
    stw     r0, 0x8c(sp)
    stw     r28, 0x90(sp)
    lbz     r0, 0x59(r25)
    slwi    r4, r0, 2
    addi    r4, r4, 0x5c
    add     r4, r25, r4
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    lbz     r0, 0x59(r25)
    fmr     f1, f29
    li      r4, 0x0
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r3, 0x5c(r3)
    li      r5, 0x3
    bl      processModFunc__9JALSystemFP8JAISoundfUlUc
    lwz     r4, 0x0(r27)
    li      r0, 0x1
    lwz     r3, 0x4(r27)
    stw     r4, 0xac(r25)
    stw     r3, 0xb0(r25)
    lwz     r3, 0x8(r27)
    stw     r3, 0xb4(r25)
    stb     r0, 0xb8(r25)
    lbz     r0, 0x59(r25)
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r3, 0x5c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8001c4e0
    lbz     r0, 0x5a(r25)
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r3, 0x5c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8001c4fc
    lwz     r23, 0x14(r3)
    lis     r26, 0x4330
    lfs     f29, -0x7aa0(r2)
    stw     r23, 0xd4(sp)
    lfd     f2, -0x7a70(r2)
    fmr     f30, f29
    stw     r26, 0xd0(sp)
    lfs     f3, 0x28(r25)
    lfd     f0, 0xd0(sp)
    lfs     f1, 0x2c(r25)
    fsubs   f0, f0, f2
    fcmpo   cr0, f0, f3
    bge-    branch_0x8001c364
    fcmpo   cr0, f31, f1
    bge-    branch_0x8001c364
    lbz     r0, 0x1d(r25)
    li      r3, 0x0
    stw     r23, 0xd4(sp)
    lfs     f4, 0x38(r25)
    stw     r0, 0xdc(sp)
    lfs     f5, -0x7a9c(r2)
    stw     r26, 0xd0(sp)
    stw     r26, 0xd8(sp)
    lfd     f1, 0xd0(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      linearTransform__7JALCalcFfffffb
    lbz     r0, 0x1d(r25)
    li      r3, 0x0
    stw     r23, 0xcc(sp)
    lfd     f2, -0x7a70(r2)
    stw     r0, 0xc4(sp)
    lfs     f3, 0x28(r25)
    stw     r26, 0xc8(sp)
    lfs     f4, 0x30(r25)
    stw     r26, 0xc0(sp)
    lfd     f1, 0xc8(sp)
    lfd     f0, 0xc0(sp)
    fsubs   f1, f1, f2
    lfs     f5, -0x7aa0(r2)
    fsubs   f2, f0, f2
    bl      linearTransform__7JALCalcFfffffb
    lbz     r0, 0x1d(r25)
    fmr     f30, f1
    stw     r23, 0xbc(sp)
    li      r3, 0x0
    lfd     f2, -0x7a70(r2)
    stw     r0, 0xb4(sp)
    lfs     f3, 0x28(r25)
    stw     r26, 0xb8(sp)
    lfs     f4, -0x7aa0(r2)
    stw     r26, 0xb0(sp)
    lfd     f1, 0xb8(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f1, f1, f2
    lfs     f5, 0x34(r25)
    fsubs   f2, f0, f2
    bl      linearTransform__7JALCalcFfffffb
    fmr     f29, f1
branch_0x8001c364:
    lwz     r0, 0x3c(r25)
    lis     r26, 0x4330
    stw     r23, 0xb4(sp)
    xoris   r0, r0, 0x8000
    lfs     f27, -0x7aa0(r2)
    stw     r0, 0xbc(sp)
    lfd     f6, -0x7a70(r2)
    fmr     f28, f27
    stw     r26, 0xb0(sp)
    lfd     f3, -0x7a68(r2)
    stw     r26, 0xb8(sp)
    lfd     f1, 0xb0(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f1, f1, f6
    fsubs   f0, f0, f3
    fcmpo   cr0, f1, f0
    bge-    branch_0x8001c498
    lfs     f0, 0x40(r25)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8001c498
    li      r0, 0x1
    stb     r0, 0x58(r25)
    li      r3, 0x0
    lwz     r0, 0x44(r25)
    lwz     r4, 0x54(r25)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x7a9c(r2)
    stw     r4, 0xb4(sp)
    fmr     f4, f2
    lfs     f5, 0x50(r25)
    stw     r0, 0xbc(sp)
    stw     r26, 0xb0(sp)
    stw     r26, 0xb8(sp)
    lfd     f1, 0xb0(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f1, f1, f6
    fsubs   f3, f0, f3
    bl      linearTransform__7JALCalcFfffffb
    lwz     r0, 0x44(r25)
    li      r3, 0x0
    lwz     r4, 0x54(r25)
    xoris   r0, r0, 0x8000
    lfd     f5, -0x7a70(r2)
    stw     r4, 0xc4(sp)
    lfd     f3, -0x7a68(r2)
    stw     r0, 0xcc(sp)
    lfs     f2, -0x7a9c(r2)
    stw     r26, 0xc0(sp)
    lfs     f4, -0x7aa0(r2)
    stw     r26, 0xc8(sp)
    lfd     f1, 0xc0(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f1, f1, f5
    lfs     f5, 0x48(r25)
    fsubs   f3, f0, f3
    bl      linearTransform__7JALCalcFfffffb
    lwz     r0, 0x44(r25)
    fmr     f27, f1
    lwz     r4, 0x54(r25)
    li      r3, 0x0
    xoris   r0, r0, 0x8000
    stw     r4, 0xd4(sp)
    lfd     f4, -0x7a70(r2)
    stw     r0, 0xdc(sp)
    lfd     f3, -0x7a68(r2)
    stw     r26, 0xd0(sp)
    lfs     f2, -0x7a9c(r2)
    stw     r26, 0xd8(sp)
    lfd     f1, 0xd0(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f1, f1, f4
    lfs     f4, -0x7aa0(r2)
    fsubs   f3, f0, f3
    lfs     f5, 0x4c(r25)
    bl      linearTransform__7JALCalcFfffffb
    fmr     f28, f1
    b       branch_0x8001c4a4

branch_0x8001c498:
    li      r0, 0x0
    stb     r0, 0x58(r25)
    stw     r0, 0x54(r25)
branch_0x8001c4a4:
    lbz     r0, 0x59(r25)
    fmuls   f1, f30, f27
    li      r4, 0x3
    slwi    r0, r0, 2
    add     r3, r25, r0
    lwz     r24, 0x5c(r3)
    li      r5, 0x0
    addi    r3, r24, 0x0
    bl      setVolume__8JAISoundFfUlUc
    fmuls   f1, f29, f28
    addi    r3, r24, 0x0
    li      r4, 0x3
    li      r5, 0x0
    bl      setPitch__8JAISoundFfUlUc
    b       branch_0x8001c4fc

branch_0x8001c4e0:
    beq-    branch_0x8001c4f0
    li      r4, 0xd
    li      r5, 0x1
    bl      setPortData__8JAISoundFUcUs
branch_0x8001c4f0:
    li      r0, 0x0
    stb     r0, 0x58(r25)
    stw     r0, 0x54(r25)
branch_0x8001c4fc:
    lbz     r3, 0x1c(r25)
    lbz     r4, 0x59(r25)
    addi    r0, r3, -0x1
    cmpw    r4, r0
    bne-    branch_0x8001c518
    li      r0, 0x0
    b       branch_0x8001c51c

branch_0x8001c518:
    addi    r0, r4, 0x1
branch_0x8001c51c:
    stb     r0, 0x59(r25)
    lbz     r3, 0x1c(r25)
    lbz     r4, 0x5a(r25)
    addi    r0, r3, -0x1
    cmpw    r4, r0
    bne-    branch_0x8001c53c
    li      r0, 0x0
    b       branch_0x8001c540

branch_0x8001c53c:
    addi    r0, r4, 0x1
branch_0x8001c540:
    stb     r0, 0x5a(r25)
    li      r3, 0x1
branch_0x8001c548:
    lmw     r23, 0xe4(sp)
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    mtlr    r0
    lfd     f29, 0x118(sp)
    lfd     f28, 0x110(sp)
    lfd     f27, 0x108(sp)
    addi    sp, sp, 0x130
    blr


.globl frameLoopDyna__30JALListFrameLoop_10MSSetSound_Fv
frameLoopDyna__30JALListFrameLoop_10MSSetSound_Fv: # 0x8001c570
    blr


.globl __ct__31JALListHioNode_10MSSetSound_Ul_FPCcUlP10MSSetSound
__ct__31JALListHioNode_10MSSetSound_Ul_FPCcUlP10MSSetSound: # 0x8001c574
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    addi    r3, r13, R13Off_m0x72a0
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __sinit_MSoundStruct_cpp
__sinit_MSoundStruct_cpp: # 0x8001c5c8
    mflr    r0
    lis     r3, smSetSound__10MSSetSound@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, smSetSound__10MSSetSound@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c610
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8001c610:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c640
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8001c640:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c670
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8001c670:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c6a0
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8001c6a0:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c6d0
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8001c6d0:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c700
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8001c700:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c730
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8001c730:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c760
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8001c760:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c790
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8001c790:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c7c0
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8001c7c0:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c7f0
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8001c7f0:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c820
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8001c820:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c850
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8001c850:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c880
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8001c880:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8001c8b0
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8001c8b0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8001c8c4
unk_8001c8c4: # 0x8001c8c4
    addi    r3, r3, -0x14
    b       frameLoopDyna__26MSSetSoundTL_10MSSetSound_Fv

