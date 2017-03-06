
.globl SMS_InitChangeNpcColor__FPC6MActorPC16TColorChangeInfosPC8_GXColor
SMS_InitChangeNpcColor__FPC6MActorPC16TColorChangeInfosPC8_GXColor: # 0x80212988
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    mr      r28, r4
    mr      r27, r5
    mr      r29, r6
    lwz     r7, 0x4(r3)
    lwz     r4, 0x4(r4)
    lwz     r3, 0x4(r7)
    mr      r30, r7
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r0, 0x0(r28)
    addi    r31, r3, 0x0
    cmpwi   r0, 0x1
    beq-    branch_0x80212a50
    bge-    branch_0x802129dc
    cmpwi   r0, 0x0
    bge-    branch_0x802129e8
    b       branch_0x80212ba4

branch_0x802129dc:
    cmpwi   r0, 0x3
    bge-    branch_0x80212ba4
    b       branch_0x80212a9c

branch_0x802129e8:
    lwz     r0, 0x8(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80212ba4
    li      r3, 0x4
    bl      __nw__FUl
    extsh   r0, r27
    lwz     r4, 0x8(r28)
    slwi    r8, r0, 3
    lhax    r0, r4, r8
    mr      r6, r3
    clrlwi  r4, r31, 16
    stb     r0, 0x0(r3)
    li      r0, 0xff
    addi    r3, r30, 0x0
    lwz     r5, 0x8(r28)
    add     r5, r5, r8
    lha     r7, 0x2(r5)
    li      r5, 0x0
    stb     r7, 0x1(r6)
    lwz     r7, 0x8(r28)
    add     r7, r7, r8
    lha     r7, 0x4(r7)
    stb     r7, 0x2(r6)
    stb     r0, 0x3(r6)
    bl      SMS_InitPacket_MatColor__FP8J3DModelUs12_GXChannelIDPC8_GXColor
    b       branch_0x80212ba4

branch_0x80212a50:
    lwz     r3, 0x8(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x80212ba4
    extsh   r0, r27
    slwi    r0, r0, 3
    cmplwi  r29, 0x0
    add     r6, r3, r0
    beq-    branch_0x80212a88
    addi    r3, r30, 0x0
    addi    r7, r29, 0x0
    clrlwi  r4, r31, 16
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10PC8_GXColor
    b       branch_0x80212ba4

branch_0x80212a88:
    addi    r3, r30, 0x0
    clrlwi  r4, r31, 16
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    b       branch_0x80212ba4

branch_0x80212a9c:
    lwz     r4, 0x8(r28)
    cmplwi  r4, 0x0
    beq-    branch_0x80212b00
    lwz     r3, 0xc(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x80212b00
    extsh   r0, r27
    slwi    r0, r0, 3
    cmplwi  r29, 0x0
    add     r8, r3, r0
    add     r6, r4, r0
    beq-    branch_0x80212ae8
    addi    r3, r30, 0x0
    addi    r9, r29, 0x0
    clrlwi  r4, r31, 16
    li      r5, 0x2
    li      r7, 0x3
    bl      SMS_InitPacket_TwoTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10PC8_GXColor
    b       branch_0x80212ba4

branch_0x80212ae8:
    addi    r3, r30, 0x0
    clrlwi  r4, r31, 16
    li      r5, 0x2
    li      r7, 0x3
    bl      SMS_InitPacket_TwoTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10
    b       branch_0x80212ba4

branch_0x80212b00:
    cmplwi  r4, 0x0
    beq-    branch_0x80212b54
    lwz     r0, 0xc(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x80212b54
    extsh   r0, r27
    slwi    r0, r0, 3
    cmplwi  r29, 0x0
    add     r6, r4, r0
    beq-    branch_0x80212b40
    addi    r3, r30, 0x0
    addi    r7, r29, 0x0
    clrlwi  r4, r31, 16
    li      r5, 0x2
    bl      SMS_InitPacket_OneTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10PC8_GXColor
    b       branch_0x80212ba4

branch_0x80212b40:
    addi    r3, r30, 0x0
    clrlwi  r4, r31, 16
    li      r5, 0x2
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    b       branch_0x80212ba4

branch_0x80212b54:
    cmplwi  r4, 0x0
    bne-    branch_0x80212ba4
    lwz     r3, 0xc(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x80212ba4
    extsh   r0, r27
    slwi    r0, r0, 3
    cmplwi  r29, 0x0
    add     r6, r3, r0
    beq-    branch_0x80212b94
    addi    r3, r30, 0x0
    addi    r7, r29, 0x0
    clrlwi  r4, r31, 16
    li      r5, 0x3
    bl      SMS_InitPacket_OneTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10PC8_GXColor
    b       branch_0x80212ba4

branch_0x80212b94:
    addi    r3, r30, 0x0
    clrlwi  r4, r31, 16
    li      r5, 0x3
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
branch_0x80212ba4:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr

