
.globl setFixedStageValue__13TMenuDirectorFv
setFixedStageValue__13TMenuDirectorFv: # 0x802a296c
    stwu    sp, -0x58(sp)
    lis     r4, 0x803a
    addi    r5, r4, 0x3d48
    lwz     r6, 0x40(r3)
    lwz     r0, 0x2c(r6)
    stw     r0, 0x48(r3)
    lwz     r4, 0x44(r3)
    lwz     r0, 0x2c(r4)
    stw     r0, 0x4c(r3)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r4, 0x18(r5)
    lwz     r0, 0x1c(r5)
    stw     r4, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r4, 0x20(r5)
    lwz     r0, 0x24(r5)
    stw     r4, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x28(r5)
    stw     r0, 0x50(sp)
    lwz     r4, 0x48(r3)
    cmplwi  r4, 0x11
    beq-    branch_0x802a29fc
    cmplwi  r4, 0x12
    bne-    branch_0x802a2a2c
branch_0x802a29fc:
    cmplwi  r4, 0x12
    lwz     r5, 0x4c(r3)
    bne-    branch_0x802a2a0c
    addi    r5, r5, 0x14
branch_0x802a2a0c:
    lis     r4, 0x803f
    subi    r4, r4, 0x6900
    stw     r5, 0x18(r4)
    li      r4, 0xf
    li      r0, 0x0
    stw     r4, 0x48(r3)
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2a2c:
    cmplwi  r4, 0x7
    blt-    branch_0x802a2a3c
    addi    r0, r4, 0x1
    stw     r0, 0x48(r3)
branch_0x802a2a3c:
    lwz     r0, 0x48(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x802a2a94
    lwz     r5, 0x4c(r3)
    cmplwi  r5, 0x13
    bne-    branch_0x802a2a68
    li      r0, 0x3b
    stw     r0, 0x48(r3)
    li      r0, 0x0
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2a68:
    cmplwi  r5, 0xa
    blt-    branch_0x802a2d9c
    slwi    r0, r0, 2
    addi    r4, sp, 0x28
    lwzx    r4, r4, r0
    li      r0, 0x0
    add     r4, r5, r4
    subi    r4, r4, 0xa
    stw     r4, 0x48(r3)
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2a94:
    cmplwi  r0, 0x9
    bne-    branch_0x802a2b04
    lwz     r5, 0x4c(r3)
    cmplwi  r5, 0xa
    blt-    branch_0x802a2acc
    slwi    r0, r0, 2
    addi    r4, sp, 0x28
    lwzx    r4, r4, r0
    li      r0, 0x0
    add     r4, r5, r4
    subi    r4, r4, 0xa
    stw     r4, 0x48(r3)
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2acc:
    cmplwi  r5, 0x8
    bne-    branch_0x802a2ae8
    li      r0, 0x10
    stw     r0, 0x48(r3)
    li      r0, 0x0
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2ae8:
    cmplwi  r5, 0x9
    bne-    branch_0x802a2d9c
    li      r0, 0x39
    stw     r0, 0x48(r3)
    li      r0, 0x0
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2b04:
    cmplwi  r0, 0x6
    bne-    branch_0x802a2bd4
    lwz     r5, 0x4c(r3)
    cmplwi  r5, 0x13
    blt-    branch_0x802a2b2c
    li      r0, 0x38
    stw     r0, 0x48(r3)
    li      r0, 0x0
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2b2c:
    cmplwi  r5, 0x11
    blt-    branch_0x802a2b4c
    li      r0, 0xe
    stw     r0, 0x48(r3)
    lwz     r4, 0x4c(r3)
    subi    r0, r4, 0x11
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2b4c:
    cmplwi  r5, 0x10
    blt-    branch_0x802a2b68
    li      r0, 0x7
    stw     r0, 0x48(r3)
    li      r0, 0x4
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2b68:
    cmplwi  r5, 0xe
    blt-    branch_0x802a2b88
    li      r0, 0x6
    stw     r0, 0x48(r3)
    lwz     r4, 0x4c(r3)
    subi    r0, r4, 0x8
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2b88:
    cmplwi  r5, 0xa
    blt-    branch_0x802a2bb4
    slwi    r0, r0, 2
    addi    r4, sp, 0x28
    lwzx    r4, r4, r0
    li      r0, 0x0
    add     r4, r5, r4
    subi    r4, r4, 0xa
    stw     r4, 0x48(r3)
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2bb4:
    cmplwi  r5, 0x6
    blt-    branch_0x802a2d9c
    li      r0, 0x7
    stw     r0, 0x48(r3)
    lwz     r4, 0x4c(r3)
    subi    r0, r4, 0x6
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2bd4:
    cmplwi  r0, 0x5
    bne-    branch_0x802a2cc0
    lwz     r5, 0x4c(r3)
    cmplwi  r5, 0x12
    bne-    branch_0x802a2bfc
    li      r0, 0xd
    stw     r0, 0x48(r3)
    li      r0, 0x9
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2bfc:
    cmplwi  r5, 0x13
    bne-    branch_0x802a2c18
    li      r0, 0xd
    stw     r0, 0x48(r3)
    li      r0, 0xa
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2c18:
    cmplwi  r5, 0x4
    blt-    branch_0x802a2c40
    cmplwi  r5, 0xb
    bgt-    branch_0x802a2c40
    li      r0, 0xd
    stw     r0, 0x48(r3)
    lwz     r4, 0x4c(r3)
    subi    r0, r4, 0x4
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2c40:
    cmplwi  r5, 0xc
    bne-    branch_0x802a2c5c
    li      r0, 0x5
    stw     r0, 0x48(r3)
    li      r0, 0x4
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2c5c:
    cmplwi  r5, 0x11
    bne-    branch_0x802a2c78
    li      r0, 0x3a
    stw     r0, 0x48(r3)
    li      r0, 0x1
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2c78:
    cmplwi  r5, 0x10
    bne-    branch_0x802a2c94
    li      r0, 0x3a
    stw     r0, 0x48(r3)
    li      r0, 0x0
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2c94:
    cmplwi  r5, 0xa
    blt-    branch_0x802a2d9c
    slwi    r0, r0, 2
    addi    r4, sp, 0x28
    lwzx    r4, r4, r0
    li      r0, 0x0
    add     r4, r5, r4
    subi    r4, r4, 0xa
    stw     r4, 0x48(r3)
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2cc0:
    cmplwi  r0, 0xa
    bne-    branch_0x802a2d14
    lwz     r5, 0x4c(r3)
    cmplwi  r5, 0xa
    blt-    branch_0x802a2cf8
    slwi    r0, r0, 2
    addi    r4, sp, 0x28
    lwzx    r4, r4, r0
    li      r0, 0x0
    add     r4, r5, r4
    subi    r4, r4, 0xa
    stw     r4, 0x48(r3)
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2cf8:
    cmplwi  r5, 0x7
    bne-    branch_0x802a2d9c
    li      r0, 0x3c
    stw     r0, 0x48(r3)
    li      r0, 0x0
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2d14:
    cmplwi  r0, 0x2
    bne-    branch_0x802a2d68
    lwz     r5, 0x4c(r3)
    cmplwi  r5, 0xa
    blt-    branch_0x802a2d4c
    slwi    r0, r0, 2
    addi    r4, sp, 0x28
    lwzx    r4, r4, r0
    li      r0, 0x0
    add     r4, r5, r4
    subi    r4, r4, 0xa
    stw     r4, 0x48(r3)
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2d4c:
    cmplwi  r5, 0x8
    bne-    branch_0x802a2d9c
    li      r0, 0x37
    stw     r0, 0x48(r3)
    li      r0, 0x0
    stw     r0, 0x4c(r3)
    b       branch_0x802a2d9c

branch_0x802a2d68:
    cmplwi  r0, 0x0
    beq-    branch_0x802a2d9c
    lwz     r5, 0x4c(r3)
    cmplwi  r5, 0xa
    blt-    branch_0x802a2d9c
    slwi    r0, r0, 2
    addi    r4, sp, 0x28
    lwzx    r4, r4, r0
    li      r0, 0x0
    add     r4, r5, r4
    subi    r4, r4, 0xa
    stw     r4, 0x48(r3)
    stw     r0, 0x4c(r3)
branch_0x802a2d9c:
    addi    sp, sp, 0x58
    blr


.globl direct__13TMenuDirectorFv
direct__13TMenuDirectorFv: # 0x802a2da4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stmw    r25, 0x10c(sp)
    mr      r31, r3
    lbz     r0, 0x50(r3)
    lis     r3, 0x803a
    addi    r30, r3, 0x3d28
    cmplwi  r0, 0x0
    bne-    branch_0x802a2e48
    lis     r3, 0x8040
    subi    r28, r3, 0x3418
    addi    r3, r28, 0x0
    bl      OSIsThreadTerminated
    cmpwi   r3, 0x0
    bne-    branch_0x802a2dec
    li      r3, 0x0
    b       branch_0x802a3688

branch_0x802a2dec:
    addi    r3, r28, 0x0
    addi    r4, sp, 0x104
    bl      OSJoinThread
    lis     r3, 0x803f
    lfs     f1, -0x4d0(rtoc)
    subi    r3, r3, 0x6900
    lwz     r3, 0x34(r3)
    bl      startFadeinT__9TSMSFaderFf
    lis     r28, 0x3
    lwz     r3, -0x6060(r13)
    addi    r4, r28, 0x7
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x802a2e40
    lwz     r3, -0x6060(r13)
    addi    r5, r28, 0x7
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    lwz     r3, gpMSound(r13)
    li      r4, 0x100
    bl      loadWave__6MSoundF13MS_SCENE_WAVE
branch_0x802a2e40:
    li      r0, 0x1
    stb     r0, 0x50(r31)
branch_0x802a2e48:
    li      r29, 0x1
    addi    r3, r31, 0x0
    bl      direct__Q26JDrama9TDirectorFv
    lbz     r0, 0x18(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x802a3614
    bge-    branch_0x802a2e74
    cmpwi   r0, 0x0
    beq-    branch_0x802a2e80
    bge-    branch_0x802a34f8
    b       branch_0x802a3684

branch_0x802a2e74:
    cmpwi   r0, 0x4
    bge-    branch_0x802a3684
    b       branch_0x802a3668

branch_0x802a2e80:
    lwz     r3, 0x40(r31)
    lwz     r0, 0x18(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802a2e98
    li      r0, 0x1
    b       branch_0x802a2e9c

branch_0x802a2e98:
    li      r0, 0x0
branch_0x802a2e9c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802a3684
    lwz     r3, 0x2c(r31)
    lwz     r0, 0x18(r3)
    rlwinm. r0, r0, 0, 21, 21
    bne-    branch_0x802a2f14
    lwz     r3, -0x6060(r13)
    bl      firstStart__12TFlagManagerFv
    li      r28, 0x0
    b       branch_0x802a2ed4

branch_0x802a2ec4:
    lwz     r3, -0x6060(r13)
    mr      r4, r28
    bl      setShineFlag__12TFlagManagerFUc
    addi    r28, r28, 0x1
branch_0x802a2ed4:
    clrlwi  r0, r28, 24
    cmplwi  r0, 0x78
    blt+    branch_0x802a2ec4
    lis     r3, 0x1
    addi    r27, r3, 0x366
    addi    r28, r3, 0x3b4
    b       branch_0x802a2f04

branch_0x802a2ef0:
    lwz     r3, -0x6060(r13)
    addi    r5, r27, 0x0
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    addi    r27, r27, 0x1
branch_0x802a2f04:
    cmplw   r27, r28
    blt+    branch_0x802a2ef0
    lwz     r3, -0x6060(r13)
    bl      saveSuccess__12TFlagManagerFv
branch_0x802a2f14:
    lwz     r4, 0x40(r31)
    li      r0, 0xa0
    lwz     r3, 0x18(r4)
    ori     r3, r3, 0x4
    stw     r3, 0x18(r4)
    lwz     r3, 0x14(r4)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x40(r31)
    lwz     r0, 0x2c(r3)
    lwz     r3, 0x30(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getStringPtr__10J2DTextBoxCFv
    mr      r4, r3
    lwz     r3, 0x38(r31)
    crxor   6, 6, 6
    bl      setString__10J2DTextBoxFPCce
    lwz     r3, 0x40(r31)
    lwz     r0, 0x2c(r3)
    cmpwi   r0, 0x6
    bne-    branch_0x802a30f0
    li      r27, 0x0
    lis     r28, 0x7374
branch_0x802a2f70:
    cmpwi   r27, 0x9
    addis   r4, r27, 0x7374
    addi    r4, r4, 0x5f31
    bne-    branch_0x802a2f84
    addi    r4, r28, 0x5f61
branch_0x802a2f84:
    lwz     r3, 0x3c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    cmpwi   r27, 0x6
    bge-    branch_0x802a2fbc
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r27, 0x0
    addi    r5, r30, 0x4c
    li      r4, 0x16
    bl      snprintf
    b       branch_0x802a2fd4

branch_0x802a2fbc:
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r5, r30, 0x58
    subi    r6, r27, 0x6
    li      r4, 0x16
    bl      snprintf
branch_0x802a2fd4:
    addi    r27, r27, 0x1
    cmpwi   r27, 0xa
    blt+    branch_0x802a2f70
    lwz     r3, 0x3c(r31)
    lis     r28, 0x7374
    addi    r4, r28, 0x5f66
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x4cc
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f67
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x4c4
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f68
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x4bc
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f69
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r5, r30, 0x64
    li      r4, 0x16
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f6a
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r5, r30, 0x70
    li      r4, 0x16
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f6b
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x4b4
    bl      snprintf
    b       branch_0x802a34bc

branch_0x802a30f0:
    cmpwi   r0, 0x5
    bne-    branch_0x802a32ac
    li      r27, 0x0
    lis     r28, 0x7374
branch_0x802a3100:
    cmpwi   r27, 0x9
    addis   r4, r27, 0x7374
    addi    r4, r4, 0x5f31
    bne-    branch_0x802a3114
    addi    r4, r28, 0x5f61
branch_0x802a3114:
    lwz     r3, 0x3c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    cmpwi   r27, 0x4
    bge-    branch_0x802a314c
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r27, 0x0
    addi    r5, r30, 0x4c
    li      r4, 0x16
    bl      snprintf
    b       branch_0x802a3164

branch_0x802a314c:
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    subi    r6, r27, 0x4
    li      r4, 0x16
    subi    r5, rtoc, 0x4ac
    bl      snprintf
branch_0x802a3164:
    addi    r27, r27, 0x1
    cmpwi   r27, 0xa
    blt+    branch_0x802a3100
    lwz     r3, 0x3c(r31)
    lis     r28, 0x7374
    addi    r4, r28, 0x5f62
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x4a4
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f63
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x49c
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f64
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x494
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f68
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x48c
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f69
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x484
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f6a
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x47c
    bl      snprintf
    lwz     r3, 0x3c(r31)
    addi    r4, r28, 0x5f6b
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x474
    bl      snprintf
    b       branch_0x802a34bc

branch_0x802a32ac:
    cmpwi   r0, 0x8
    bne-    branch_0x802a335c
    li      r27, 0x0
    lis     r28, 0x7374
branch_0x802a32bc:
    cmpwi   r27, 0x9
    addis   r4, r27, 0x7374
    addi    r4, r4, 0x5f31
    bne-    branch_0x802a32d0
    addi    r4, r28, 0x5f61
branch_0x802a32d0:
    lwz     r3, 0x3c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    cmpwi   r27, 0x8
    addi    r26, r3, 0x0
    bge-    branch_0x802a330c
    mr      r3, r26
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r27, 0x0
    li      r4, 0x16
    subi    r5, rtoc, 0x46c
    bl      snprintf
branch_0x802a330c:
    cmpwi   r27, 0x8
    bne-    branch_0x802a332c
    mr      r3, r26
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r5, r30, 0x7c
    li      r4, 0x16
    bl      snprintf
branch_0x802a332c:
    cmpwi   r27, 0x9
    bne-    branch_0x802a334c
    mr      r3, r26
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x16
    subi    r5, rtoc, 0x4b4
    bl      snprintf
branch_0x802a334c:
    addi    r27, r27, 0x1
    cmpwi   r27, 0xa
    blt+    branch_0x802a32bc
    b       branch_0x802a34bc

branch_0x802a335c:
    cmpwi   r0, 0x11
    beq-    branch_0x802a336c
    cmpwi   r0, 0x12
    bne-    branch_0x802a3438
branch_0x802a336c:
    li      r26, 0x0
branch_0x802a3370:
    cmpwi   r26, 0x9
    bge-    branch_0x802a3384
    addis   r4, r26, 0x7374
    addi    r4, r4, 0x5f31
    b       branch_0x802a338c

branch_0x802a3384:
    addis   r4, r26, 0x7374
    addi    r4, r4, 0x5f58
branch_0x802a338c:
    lwz     r3, 0x3c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x40(r31)
    mr      r27, r3
    addi    r28, r26, 0x0
    lwz     r0, 0x2c(r4)
    cmpwi   r0, 0x12
    bne-    branch_0x802a33bc
    addi    r28, r28, 0x14
branch_0x802a33bc:
    mr      r3, r28
    bl      getStreamMovieName__14TMovieDirectorFUl
    mr.     r25, r3
    beq-    branch_0x802a340c
    mr      r3, r27
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r25, 0x0
    li      r4, 0x16
    subi    r5, rtoc, 0x464
    bl      snprintf
    mr      r3, r27
    bl      getStringPtr__10J2DTextBoxCFv
    li      r4, 0x2e
    bl      strrchr
    cmplwi  r3, 0x0
    beq-    branch_0x802a3428
    li      r0, 0x0
    stb     r0, 0x0(r3)
    b       branch_0x802a3428

branch_0x802a340c:
    mr      r3, r27
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r28, 0x0
    addi    r5, r30, 0x88
    li      r4, 0x16
    bl      snprintf
branch_0x802a3428:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x14
    blt+    branch_0x802a3370
    b       branch_0x802a34bc

branch_0x802a3438:
    li      r25, 0x0
branch_0x802a343c:
    cmpwi   r25, 0x9
    bge-    branch_0x802a3450
    addis   r4, r25, 0x7374
    addi    r4, r4, 0x5f31
    b       branch_0x802a3458

branch_0x802a3450:
    addis   r4, r25, 0x7374
    addi    r4, r4, 0x5f58
branch_0x802a3458:
    lwz     r3, 0x3c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    cmpwi   r25, 0xa
    bge-    branch_0x802a3494
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r25, 0x0
    addi    r7, r25, 0x0
    addi    r5, r30, 0x98
    li      r4, 0x16
    bl      snprintf
    b       branch_0x802a34b0

branch_0x802a3494:
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r25, 0x0
    addi    r5, r30, 0xa8
    subi    r7, r25, 0xa
    li      r4, 0x16
    bl      snprintf
branch_0x802a34b0:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x14
    blt+    branch_0x802a343c
branch_0x802a34bc:
    lwz     r4, 0x38(r31)
    li      r5, 0x1
    li      r3, 0xa
    stb     r5, 0xc(r4)
    li      r0, 0x0
    lwz     r4, 0x44(r31)
    stb     r3, 0x3c(r4)
    lwz     r3, 0x14(r4)
    stb     r5, 0xc(r3)
    lhz     r3, 0xc(r4)
    clrrwi  r3, r3, 1
    sth     r3, 0xc(r4)
    stw     r0, 0x18(r4)
    stb     r5, 0x18(r31)
    b       branch_0x802a3684

branch_0x802a34f8:
    lwz     r3, 0x44(r31)
    lwz     r3, 0x18(r3)
    clrlwi. r0, r3, 31
    beq-    branch_0x802a3510
    li      r0, 0x1
    b       branch_0x802a3514

branch_0x802a3510:
    li      r0, 0x0
branch_0x802a3514:
    clrlwi. r0, r0, 24
    beq-    branch_0x802a35ac
    mr      r3, r31
    bl      setFixedStageValue__13TMenuDirectorFv
    li      r0, 0x2
    stb     r0, 0x18(r31)
    lis     r3, 0x803f
    subi    r30, r3, 0x6900
    lwz     r3, 0x34(r30)
    lfs     f1, -0x4d0(rtoc)
    bl      startFadeoutT__9TSMSFaderFf
    lwz     r6, 0x4c(r31)
    li      r0, 0x0
    lwz     r5, 0x48(r31)
    addi    r28, sp, 0x102
    addi    r3, sp, 0x7c
    sth     r0, 0x102(sp)
    addi    r4, sp, 0x98
    sth     r0, 0x98(sp)
    stb     r5, 0x100(sp)
    stb     r6, 0x101(sp)
    bl      __ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_
    mr      r3, r28
    lhz     r4, 0x7c(sp)
    bl      set__Q26JDrama10TFlagT_Us_FUs
    lhz     r5, 0x102(sp)
    addi    r3, sp, 0x78
    lbz     r0, 0x100(sp)
    addi    r4, sp, 0x94
    sth     r5, 0x94(sp)
    stb     r0, 0x12(r30)
    lbz     r0, 0x101(sp)
    stb     r0, 0x13(r30)
    bl      __ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_
    addi    r3, r30, 0x14
    lhz     r4, 0x78(sp)
    bl      set__Q26JDrama10TFlagT_Us_FUs
    b       branch_0x802a3684

branch_0x802a35ac:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x802a35bc
    li      r0, 0x1
    b       branch_0x802a35c0

branch_0x802a35bc:
    li      r0, 0x0
branch_0x802a35c0:
    clrlwi. r0, r0, 24
    beq-    branch_0x802a3684
    li      r5, 0x0
    stb     r5, 0x18(r31)
    li      r4, 0xff
    li      r0, 0xa
    lwz     r3, 0x40(r31)
    stw     r5, 0x18(r3)
    lwz     r3, 0x14(r3)
    stb     r4, 0xcc(r3)
    lwz     r3, 0x38(r31)
    stb     r5, 0xc(r3)
    lwz     r4, 0x44(r31)
    stb     r0, 0x3c(r4)
    lwz     r3, 0x14(r4)
    stb     r5, 0xc(r3)
    lhz     r0, 0xc(r4)
    ori     r0, r0, 0x1
    sth     r0, 0xc(r4)
    stw     r5, 0x18(r4)
    b       branch_0x802a3684

branch_0x802a3614:
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lwz     r3, 0x34(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x802a3684
    lwz     r3, gpMSound(r13)
    li      r4, 0x100
    bl      checkWaveOnAram__6MSoundF13MS_SCENE_WAVE
    clrlwi. r0, r3, 24
    beq-    branch_0x802a3684
    lwz     r3, 0x40(r31)
    lwz     r0, 0x2c(r3)
    cmpwi   r0, 0x11
    beq-    branch_0x802a3658
    cmpwi   r0, 0x12
    bne-    branch_0x802a3660
branch_0x802a3658:
    li      r29, 0x6
    b       branch_0x802a3684

branch_0x802a3660:
    li      r29, 0x5
    b       branch_0x802a3684

branch_0x802a3668:
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lwz     r3, 0x34(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x802a3684
    li      r29, 0x7
branch_0x802a3684:
    mr      r3, r29
branch_0x802a3688:
    lmw     r25, 0x10c(sp)
    lwz     r0, 0x12c(sp)
    addi    sp, sp, 0x128
    mtlr    r0
    blr


.globl rsetup__13TMenuDirectorFv
rsetup__13TMenuDirectorFv: # 0x802a369c
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x0
    stwu    sp, -0x2f0(sp)
    stmw    r26, 0x2d8(sp)
    addi    r30, r4, 0x3d28
    addi    r31, r3, 0x0
    addi    r3, r30, 0xb4
    li      r4, 0x0
    bl      SMSLoadArchive__FPCcPvUlP7JKRHeap
    addi    r27, r3, 0x0
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802a36e8
    mr      r3, r28
    bl      __ct__13JKRMemArchiveFv
branch_0x802a36e8:
    addi    r29, r28, 0x0
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802a375c
    lis     r3, 0x803e
    stw     r28, 0x28c(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r28)
    addi    r3, r30, 0xc4
    stw     r3, 0x4(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r28)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r28)
    li      r0, 0x0
    addi    r4, sp, 0x20c
    sth     r0, 0xc(r28)
    lwz     r27, 0x28c(sp)
    addi    r3, r27, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803c
    addi    r0, r3, 0xf5c
    stw     r0, 0x0(r27)
branch_0x802a375c:
    stw     r28, 0x10(r31)
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802a37c0
    lis     r3, 0x803e
    stw     r26, 0x288(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r26)
    addi    r3, r30, 0xd4
    stw     r3, 0x4(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r26)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r26)
    li      r0, 0x0
    addi    r4, sp, 0x204
    sth     r0, 0xc(r26)
    lwz     r27, 0x288(sp)
    addi    r3, r27, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803c
    addi    r0, r3, 0xf5c
    stw     r0, 0x0(r27)
branch_0x802a37c0:
    addi    r27, r28, 0x10
    stw     r26, 0x2cc(sp)
    addi    r3, sp, 0x138
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x138(sp)
    addi    r3, sp, 0x284
    addi    r4, sp, 0x134
    stw     r0, 0x134(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x284(sp)
    addi    r5, sp, 0x200
    addi    r4, r27, 0x0
    stw     r0, 0x280(sp)
    addi    r3, sp, 0x1fc
    addi    r6, sp, 0x2cc
    lwz     r0, 0x280(sp)
    stw     r0, 0x200(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802a382c
    addi    r3, r26, 0x0
    addi    r5, r29, 0x0
    addi    r4, r30, 0xe0
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x802a382c:
    stw     r26, 0x3c(r31)
    lwz     r0, 0x3c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802a3844
    li      r3, 0x1
    b       branch_0x802a3f94

branch_0x802a3844:
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802a3898
    lis     r3, 0x803e
    lwz     r27, 0x3c(r31)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r26)
    addi    r3, r30, 0xec
    stw     r3, 0x4(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r26)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r26)
    li      r0, 0x0
    lis     r3, 0x803c
    sth     r0, 0xc(r26)
    subi    r0, r3, 0x60
    stw     r0, 0x0(r26)
    stw     r27, 0x10(r26)
branch_0x802a3898:
    lwz     r4, 0x2cc(sp)
    addi    r3, sp, 0x130
    stw     r26, 0x2c8(sp)
    addi    r27, r4, 0x10
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x130(sp)
    addi    r3, sp, 0x274
    addi    r4, sp, 0x12c
    stw     r0, 0x12c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x274(sp)
    addi    r5, sp, 0x1ec
    addi    r4, r27, 0x0
    stw     r0, 0x270(sp)
    addi    r3, sp, 0x1e8
    addi    r6, sp, 0x2c8
    lwz     r0, 0x270(sp)
    stw     r0, 0x1ec(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x3c(r31)
    lis     r4, 0x6c69
    addi    r4, r4, 0x7341
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x20(r31)
    lis     r3, 0x7374
    li      r29, 0x0
    lwz     r5, 0x20(r31)
    addi    r4, r3, 0x6174
    stb     r29, 0xc(r5)
    lwz     r3, 0x3c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr.     r28, r3
    bne-    branch_0x802a3940
    li      r3, 0x1
    b       branch_0x802a3f94

branch_0x802a3940:
    lhz     r0, 0x4(r28)
    cmplwi  r0, 0x12
    beq-    branch_0x802a3954
    li      r3, 0x1
    b       branch_0x802a3f94

branch_0x802a3954:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802a39ac
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r26)
    addi    r3, r30, 0xf8
    stw     r3, 0x4(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r26)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r26)
    lis     r3, 0x803c
    subi    r3, r3, 0xa8
    sth     r29, 0xc(r26)
    li      r0, 0x4
    stw     r3, 0x0(r26)
    stw     r28, 0x10(r26)
    stw     r29, 0x14(r26)
    stw     r0, 0x18(r26)
branch_0x802a39ac:
    stw     r26, 0x24(r31)
    addi    r3, sp, 0x128
    lwz     r4, 0x2cc(sp)
    addi    r27, r4, 0x10
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x128(sp)
    addi    r3, sp, 0x260
    addi    r4, sp, 0x124
    stw     r0, 0x124(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x260(sp)
    addi    r5, sp, 0x1d8
    addi    r4, r27, 0x0
    stw     r0, 0x25c(sp)
    addi    r3, sp, 0x1d4
    addi    r6, r31, 0x24
    lwz     r0, 0x25c(sp)
    stw     r0, 0x1d8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r5, 0x24(r31)
    li      r0, 0x0
    li      r3, 0x40
    lwz     r4, 0x10(r5)
    stb     r0, 0xc(r4)
    lhz     r0, 0xc(r5)
    ori     r0, r0, 0x1
    sth     r0, 0xc(r5)
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802a3a5c
    lwz     r3, 0x3c(r31)
    lis     r4, 0x6c69
    addi    r4, r4, 0x7342
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x2c(r31)
    mr      r5, r3
    addi    r3, r26, 0x0
    li      r6, 0x21
    li      r7, 0x40
    bl      __ct__10TMenuPlaneFPC13TMarioGamePadP7J2DPaneUlUl
branch_0x802a3a5c:
    stw     r26, 0x40(r31)
    addi    r3, sp, 0x120
    lwz     r4, 0x2cc(sp)
    addi    r27, r4, 0x10
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x120(sp)
    addi    r3, sp, 0x254
    addi    r4, sp, 0x11c
    stw     r0, 0x11c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x254(sp)
    addi    r5, sp, 0x1b8
    addi    r4, r27, 0x0
    stw     r0, 0x250(sp)
    addi    r3, sp, 0x1b4
    addi    r6, r31, 0x40
    lwz     r0, 0x250(sp)
    stw     r0, 0x1b8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r6, 0x40(r31)
    li      r0, 0xa
    li      r5, 0x0
    stb     r0, 0x3c(r6)
    li      r3, 0x40
    lwz     r4, 0x14(r6)
    stb     r5, 0xc(r4)
    lhz     r0, 0xc(r6)
    ori     r0, r0, 0x1
    sth     r0, 0xc(r6)
    stw     r5, 0x18(r6)
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802a3b18
    lwz     r3, 0x3c(r31)
    lis     r4, 0x6c69
    addi    r4, r4, 0x7343
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x2c(r31)
    mr      r5, r3
    addi    r3, r26, 0x0
    li      r6, 0x21
    li      r7, 0x40
    bl      __ct__10TMenuPlaneFPC13TMarioGamePadP7J2DPaneUlUl
branch_0x802a3b18:
    stw     r26, 0x44(r31)
    addi    r3, sp, 0x118
    lwz     r4, 0x2cc(sp)
    addi    r27, r4, 0x10
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x118(sp)
    addi    r3, sp, 0x248
    addi    r4, sp, 0x114
    stw     r0, 0x114(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x248(sp)
    addi    r5, sp, 0x198
    addi    r4, r27, 0x0
    stw     r0, 0x244(sp)
    addi    r3, sp, 0x194
    addi    r6, r31, 0x44
    lwz     r0, 0x244(sp)
    stw     r0, 0x198(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r5, 0x44(r31)
    li      r0, 0xa
    lis     r3, 0x7374
    stb     r0, 0x3c(r5)
    li      r28, 0x0
    addi    r4, r3, 0x6167
    lwz     r3, 0x14(r5)
    stb     r28, 0xc(r3)
    lhz     r0, 0xc(r5)
    ori     r0, r0, 0x1
    sth     r0, 0xc(r5)
    stw     r28, 0x18(r5)
    lwz     r3, 0x3c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x38(r31)
    lwz     r3, 0x38(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x802a3bc4
    li      r3, 0x1
    b       branch_0x802a3f94

branch_0x802a3bc4:
    stb     r28, 0xc(r3)
    addi    r3, r30, 0x108
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802a3cd4
    li      r27, 0x0
branch_0x802a3be4:
    lwz     r3, 0x1c(r31)
    mr      r4, r27
    bl      SMSGetMessageData__FPvUl
    cmplwi  r3, 0x0
    beq-    branch_0x802a3c18
    addi    r6, r27, 0x0
    crxor   6, 6, 6
    addi    r7, r3, 0x0
    addi    r3, sp, 0x2b0
    li      r4, 0x16
    subi    r5, rtoc, 0x460
    bl      snprintf
    b       branch_0x802a3c6c

branch_0x802a3c18:
    cmpwi   r27, 0x11
    beq-    branch_0x802a3c28
    cmpwi   r27, 0x12
    bne-    branch_0x802a3c54
branch_0x802a3c28:
    cmpwi   r27, 0x11
    bne-    branch_0x802a3c38
    li      r6, 0x1
    b       branch_0x802a3c3c

branch_0x802a3c38:
    li      r6, 0x2
branch_0x802a3c3c:
    crxor   6, 6, 6
    addi    r3, sp, 0x2b0
    addi    r5, r30, 0x124
    li      r4, 0x16
    bl      snprintf
    b       branch_0x802a3c6c

branch_0x802a3c54:
    addi    r6, r27, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x2b0
    addi    r5, r30, 0x134
    li      r4, 0x16
    bl      snprintf
branch_0x802a3c6c:
    cmpwi   r27, 0x9
    bge-    branch_0x802a3ca0
    lwz     r3, 0x3c(r31)
    addis   r4, r27, 0x7478
    addi    r4, r4, 0x3031
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    crxor   6, 6, 6
    addi    r4, sp, 0x2b0
    bl      setString__10J2DTextBoxFPCce
    b       branch_0x802a3cc8

branch_0x802a3ca0:
    lwz     r3, 0x3c(r31)
    addis   r4, r27, 0x7478
    addi    r4, r4, 0x3127
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    crxor   6, 6, 6
    addi    r4, sp, 0x2b0
    bl      setString__10J2DTextBoxFPCce
branch_0x802a3cc8:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x13
    blt+    branch_0x802a3be4
branch_0x802a3cd4:
    li      r27, 0x0
branch_0x802a3cd8:
    cmpwi   r27, 0x9
    bge-    branch_0x802a3cec
    addis   r4, r27, 0x7374
    addi    r4, r4, 0x5f31
    b       branch_0x802a3cf4

branch_0x802a3cec:
    addis   r4, r27, 0x7374
    addi    r4, r4, 0x5f58
branch_0x802a3cf4:
    lwz     r3, 0x3c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r4, 0x16
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    addi    r27, r27, 0x1
    cmpwi   r27, 0x14
    blt+    branch_0x802a3cd8
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802a3d44
    li      r0, 0x0
    sth     r0, 0x290(sp)
    addi    r5, sp, 0x290
    addi    r3, r26, 0x0
    addi    r4, r30, 0x150
    bl      __ct__Q26JDrama11TDStageDispFPCcQ26JDrama10TFlagT_Us_
branch_0x802a3d44:
    stw     r26, 0x2ac(sp)
    addi    r3, sp, 0x110
    lwz     r4, 0x14(r31)
    addi    r27, r4, 0x10
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x110(sp)
    addi    r3, sp, 0x238
    addi    r4, sp, 0x10c
    stw     r0, 0x10c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x238(sp)
    addi    r5, sp, 0x178
    addi    r4, r27, 0x0
    stw     r0, 0x234(sp)
    addi    r3, sp, 0x174
    addi    r6, sp, 0x2ac
    lwz     r0, 0x234(sp)
    stw     r0, 0x178(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    bl      SMSGetTitleRenderHeight__Fv
    clrlwi  r27, r3, 16
    bl      SMSGetTitleRenderWidth__Fv
    clrlwi  r6, r3, 16
    addi    r7, r27, 0x0
    addi    r3, sp, 0x29c
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    lwz     r3, 0x2ac(sp)
    bl      getEfbCtrlDisp__Q26JDrama11TDStageDispFv
    addi    r4, sp, 0x29c
    bl      setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802a3e88
    stw     r28, 0x108(sp)
    addi    r4, r30, 0x160
    lwz     r3, 0x108(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r29, 0x108(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r29)
    addi    r3, r29, 0x10
    lfs     f1, -0x458(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_802a3fa8
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0x1c(r29)
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x20(r28)
    addi    r0, r3, 0x45c8
    lis     r3, 0x803e
    stw     r0, 0x20(r28)
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r28)
    addi    r0, r3, 0x24
    lis     r3, 0x803e
    stw     r0, 0x20(r28)
    addi    r3, r3, 0x19c0
    addi    r0, r3, 0x24
    sth     r4, 0x24(r28)
    lfs     f0, -0x454(rtoc)
    stfs    f0, 0x28(r28)
    lfs     f0, -0x450(rtoc)
    stfs    f0, 0x2c(r28)
    stw     r3, 0x0(r28)
    stw     r0, 0x20(r28)
    lfs     f0, -0x458(rtoc)
    stfs    f0, 0x30(r28)
    lfs     f0, -0x44c(rtoc)
    stfs    f0, 0x34(r28)
    lfs     f0, -0x448(rtoc)
    stfs    f0, 0x38(r28)
    lfs     f0, -0x444(rtoc)
    stfs    f0, 0x3c(r28)
branch_0x802a3e88:
    lwz     r4, 0x2cc(sp)
    addi    r3, sp, 0x104
    stw     r28, 0x298(sp)
    addi    r27, r4, 0x10
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x104(sp)
    addi    r3, sp, 0x228
    addi    r4, sp, 0x100
    stw     r0, 0x100(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x228(sp)
    addi    r5, sp, 0x164
    addi    r4, r27, 0x0
    stw     r0, 0x224(sp)
    addi    r3, sp, 0x160
    addi    r6, sp, 0x298
    lwz     r0, 0x224(sp)
    stw     r0, 0x164(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802a3ef8
    addi    r3, r26, 0x0
    addi    r4, sp, 0x29c
    addi    r5, r30, 0x170
    bl      __ct__Q26JDrama7TScreenFRCQ26JDrama5TRectPCc
branch_0x802a3ef8:
    stw     r26, 0x294(sp)
    addi    r3, sp, 0xf8
    lwz     r4, 0x2ac(sp)
    lwz     r4, 0x14(r4)
    addi    r27, r4, 0x10
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xf8(sp)
    addi    r3, sp, 0x21c
    addi    r4, sp, 0xf4
    stw     r0, 0xf4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x21c(sp)
    addi    r5, sp, 0x154
    addi    r4, r27, 0x0
    stw     r0, 0x218(sp)
    addi    r3, sp, 0x150
    addi    r6, sp, 0x294
    lwz     r0, 0x218(sp)
    stw     r0, 0x154(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x294(sp)
    lwz     r4, 0x298(sp)
    bl      assignCamera__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r3, 0x294(sp)
    lwz     r4, 0x2cc(sp)
    bl      assignViewObj__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r6, 0x40(r31)
    li      r0, 0xa
    li      r5, 0x1
    stb     r0, 0x3c(r6)
    li      r0, 0x0
    li      r3, 0x0
    lwz     r4, 0x14(r6)
    stb     r5, 0xc(r4)
    lhz     r4, 0xc(r6)
    clrrwi  r4, r4, 1
    sth     r4, 0xc(r6)
    stw     r0, 0x18(r6)
branch_0x802a3f94:
    lmw     r26, 0x2d8(sp)
    lwz     r0, 0x2f4(sp)
    addi    sp, sp, 0x2f0
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_802a3fa8
set_f___Q29JGeometry8TVec3_f_Ffff_802a3fa8: # 0x802a3fa8
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl setup__13TMenuDirectorFPQ26JDrama8TDisplayP13TMarioGamePad
setup__13TMenuDirectorFPQ26JDrama8TDisplayP13TMarioGamePad: # 0x802a3fb8
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
    beq-    branch_0x802a4084
    stw     r28, 0x28(sp)
    lis     r3, 0x803a
    addi    r4, r3, 0x3ea4
    stw     r28, 0x38(sp)
    lwz     r3, 0x28(sp)
    stw     r28, 0x30(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x28(sp)
    lis     r4, 0x803b
    subi    r26, r4, 0x497c
    stw     r26, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r27, 0x30(sp)
    addi    r4, sp, 0x24
    addi    r3, r27, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803c
    addi    r0, r3, 0xf5c
    stw     r0, 0x0(r27)
    lis     r4, 0x803e
    addi    r0, r4, 0x1e20
    lwz     r5, 0x38(sp)
    lis     r3, 0x803a
    addi    r4, r3, 0x3eb4
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
    lis     r3, 0x803e
    addi    r0, r3, 0x1ec0
    stw     r0, 0x0(r27)
    stw     r30, 0x10(r27)
branch_0x802a4084:
    stw     r28, 0x14(r29)
    lis     r4, 0x8040
    li      r0, 0x1
    stw     r31, 0x2c(r29)
    lis     r3, 0x802a
    subi    r28, r4, 0x3418
    lwz     r5, 0x2c(r29)
    addi    r4, r3, 0x40e4
    addi    r3, r28, 0x0
    sth     r0, 0xe2(r5)
    mr      r5, r29
    lis     r7, 0x1
    lwz     r6, -0x6040(r13)
    li      r8, 0x11
    li      r9, 0x0
    addis   r6, r6, 0x1
    bl      OSCreateThread
    mr      r3, r28
    bl      OSResumeThread
    lmw     r26, 0x40(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl setupThreadFunc__13TMenuDirectorFPv
setupThreadFunc__13TMenuDirectorFPv: # 0x802a40e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      rsetup__13TMenuDirectorFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__13TMenuDirectorFv
__dt__13TMenuDirectorFv: # 0x802a4104
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr.     r30, r3
    beq-    branch_0x802a41a0
    lis     r3, 0x803e
    subi    r3, r3, 0xda8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x20
    subi    r3, rtoc, 0x440
    stw     r0, 0xc(r30)
    lwz     r4, 0x2c(r30)
    lhz     r0, 0xe2(r4)
    clrrwi  r0, r0, 1
    sth     r0, 0xe2(r4)
    bl      getVolume__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802a415c
    bl      unmountFixed__13JKRMemArchiveFv
branch_0x802a415c:
    cmplwi  r30, 0x0
    beq-    branch_0x802a4190
    lis     r3, 0x803e
    addi    r3, r3, 0x1d50
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x20
    addi    r3, r30, 0xc
    stw     r0, 0xc(r30)
    li      r4, 0x0
    bl      __dt__Q26JStage7TSystemFv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802a4190:
    extsh.  r0, r31
    ble-    branch_0x802a41a0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a41a0:
    lwz     r0, 0x2c(sp)
    mr      r3, r30
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__13TMenuDirectorFv
__ct__13TMenuDirectorFv: # 0x802a41bc
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x20f0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803a
    addi    r3, r3, 0x3ec0
    lwz     r30, 0x8(sp)
    stw     r0, 0x0(r30)
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803e
    sth     r3, 0x8(r30)
    addi    r0, r4, 0x4718
    lis     r3, 0x803e
    stw     r0, 0xc(r30)
    addi    r0, r3, 0x4748
    lis     r3, 0x803e
    stw     r0, 0xc(r30)
    addi    r3, r3, 0x1d50
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x20
    lis     r3, 0x803e
    stw     r0, 0xc(r30)
    li      r31, 0x0
    subi    r3, r3, 0xda8
    stw     r31, 0x10(r30)
    addi    r0, r3, 0x20
    stw     r31, 0x14(r30)
    stw     r3, 0x0(r30)
    stw     r0, 0xc(r30)
    stb     r31, 0x18(r30)
    stw     r31, 0x1c(r30)
    stw     r31, 0x28(r30)
    bl      SMSGetVSyncTimesPerSec__Fv
    stw     r31, 0x30(r30)
    mr      r3, r30
    stfs    f1, 0x34(r30)
    stw     r31, 0x3c(r30)
    stw     r31, 0x40(r30)
    stw     r31, 0x44(r30)
    stw     r31, 0x48(r30)
    stw     r31, 0x4c(r30)
    stb     r31, 0x50(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MenuDir_cpp
__sinit_MenuDir_cpp: # 0x802a4290
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x34d0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802a42d8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x802a42d8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802a4308
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x802a4308:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802a4338
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x802a4338:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802a4368
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x802a4368:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802a4398
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x802a4398:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802a43c8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802a43c8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802a43f8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802a43f8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802a4428
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x802a4428:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802a4458
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802a4458:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802a4488
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x802a4488:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802a44b8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x802a44b8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802a44e8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802a44e8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802a4518
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802a4518:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802a4548
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x802a4548:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802a4578
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x802a4578:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _12___dt__13TMenuDirectorFv
_12___dt__13TMenuDirectorFv: # 0x802a458c
    subi    r3, r3, 0xc
    b       __dt__13TMenuDirectorFv

