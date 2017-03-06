
.globl SMSGetMessageData__FPvUl
SMSGetMessageData__FPvUl: # 0x80157ab4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r24, 0x90(sp)
    mr.     r28, r3
    addi    r29, r4, 0x0
    bne-    branch_0x80157ad8
    li      r3, 0x0
    b       branch_0x80157d88

branch_0x80157ad8:
    addi    r24, sp, 0x70
    stw     r24, 0x40(sp)
    li      r31, 0x0
    lis     r4, 0x803b
    lwz     r3, 0x40(sp)
    subi    r30, r4, 0xf0c
    stw     r31, 0x88(sp)
    lis     r6, 0x803e
    lis     r5, 0x803e
    stw     r31, 0x84(sp)
    addi    r26, r5, 0x160
    lis     r4, 0x803e
    stw     r30, 0x0(r3)
    addi    r27, r6, 0x184
    addi    r25, r4, 0x1c8
    stb     r31, 0x4(r3)
    addi    r4, r28, 0x0
    li      r5, 0x20
    stw     r27, 0x0(r3)
    stw     r26, 0x0(r3)
    stw     r25, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r24, 0x0
    li      r4, 0x8
    bl      skip__20JSURandomInputStreamFl
    addi    r3, r24, 0x0
    addi    r4, sp, 0x88
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r24, 0x0
    addi    r4, sp, 0x84
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    stw     r25, 0x70(sp)
    addi    r3, r24, 0x0
    li      r4, 0x0
    stw     r26, 0x70(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r0, sp, 0x54
    lwz     r3, 0x88(sp)
    stw     r0, 0x3c(sp)
    addi    r4, r28, 0x20
    slwi    r5, r3, 5
    lwz     r3, 0x3c(sp)
    subi    r5, r5, 0x20
    stw     r31, 0x68(sp)
    stw     r30, 0x0(r3)
    li      r30, 0x0
    stb     r31, 0x4(r3)
    stw     r27, 0x0(r3)
    stw     r26, 0x0(r3)
    stw     r25, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    lis     r3, 0x4441
    lis     r4, 0x494e
    addi    r26, r3, 0x5431
    addi    r25, r4, 0x4631
    li      r31, 0x0
    b       branch_0x80157cf8

branch_0x80157bc4:
    addi    r3, sp, 0x54
    addi    r4, sp, 0x38
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r24, 0x38(sp)
    addi    r3, sp, 0x54
    addi    r4, sp, 0x34
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    cmpw    r24, r25
    lwz     r27, 0x34(sp)
    beq-    branch_0x80157c04
    bge-    branch_0x80157cec
    cmpw    r24, r26
    beq-    branch_0x80157cd8
    b       branch_0x80157cec

branch_0x80157c04:
    addi    r3, sp, 0x54
    addi    r4, sp, 0x32
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0x32(sp)
    cmplw   r29, r0
    blt-    branch_0x80157c4c
    lis     r3, 0x803e
    addi    r0, r3, 0x1c8
    lis     r3, 0x803e
    stw     r0, 0x54(sp)
    addi    r0, r3, 0x160
    stw     r0, 0x54(sp)
    addi    r3, sp, 0x54
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    li      r3, 0x0
    b       branch_0x80157d88

branch_0x80157c4c:
    addi    r3, sp, 0x54
    addi    r4, sp, 0x30
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r24, 0x30(sp)
    addi    r3, sp, 0x54
    li      r4, 0x4
    bl      skip__20JSURandomInputStreamFl
    mullw   r24, r29, r24
    addi    r4, r24, 0x0
    addi    r3, sp, 0x54
    bl      skip__20JSURandomInputStreamFl
    addi    r3, sp, 0x54
    addi    r4, sp, 0x68
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x68(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x80157cc4
    lis     r3, 0x803e
    addi    r0, r3, 0x1c8
    lis     r3, 0x803e
    stw     r0, 0x54(sp)
    addi    r0, r3, 0x160
    stw     r0, 0x54(sp)
    addi    r3, sp, 0x54
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    li      r3, 0x0
    b       branch_0x80157d88

branch_0x80157cc4:
    subf    r4, r24, r27
    addi    r3, sp, 0x54
    subi    r4, r4, 0x14
    bl      skip__20JSURandomInputStreamFl
    b       branch_0x80157cf8

branch_0x80157cd8:
    lwz     r30, 0x64(sp)
    addi    r3, sp, 0x54
    subi    r4, r27, 0x8
    bl      skip__20JSURandomInputStreamFl
    b       branch_0x80157cf8

branch_0x80157cec:
    addi    r3, sp, 0x54
    subi    r4, r27, 0x8
    bl      skip__20JSURandomInputStreamFl
branch_0x80157cf8:
    cmpwi   r30, 0x0
    beq-    branch_0x80157d0c
    lwz     r0, 0x68(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x80157d40
branch_0x80157d0c:
    lwz     r12, 0x54(sp)
    addi    r3, sp, 0x54
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x54(sp)
    addi    r27, r3, 0x0
    addi    r3, sp, 0x54
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    subf.   r0, r3, r27
    bne+    branch_0x80157bc4
branch_0x80157d40:
    cmpwi   r30, 0x0
    beq-    branch_0x80157d60
    lwz     r0, 0x68(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x80157d60
    add     r3, r30, r0
    addi    r31, r3, 0x20
    add     r31, r28, r31
branch_0x80157d60:
    lis     r3, 0x803e
    addi    r0, r3, 0x1c8
    lis     r3, 0x803e
    stw     r0, 0x54(sp)
    addi    r0, r3, 0x160
    stw     r0, 0x54(sp)
    addi    r3, sp, 0x54
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    mr      r3, r31
branch_0x80157d88:
    lmw     r24, 0x90(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl SMSMakeTextBuffer__FP10J2DTextBoxi
SMSMakeTextBuffer__FP10J2DTextBoxi: # 0x80157d9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      __nwa__FUl
    subic.  r0, r31, 0x1
    addi    r4, r3, 0x0
    li      r5, 0x0
    ble-    branch_0x80157e4c
    subi    r0, r31, 0x1
    cmpwi   r0, 0x8
    subi    r3, r31, 0x9
    ble-    branch_0x80157e24
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmpwi   r3, 0x0
    mtctr   r0
    li      r0, 0x20
    ble-    branch_0x80157e24
branch_0x80157df8:
    add     r3, r4, r5
    stb     r0, 0x0(r3)
    addi    r5, r5, 0x8
    stb     r0, 0x1(r3)
    stb     r0, 0x2(r3)
    stb     r0, 0x3(r3)
    stb     r0, 0x4(r3)
    stb     r0, 0x5(r3)
    stb     r0, 0x6(r3)
    stb     r0, 0x7(r3)
    bdnz+      branch_0x80157df8
branch_0x80157e24:
    subi    r3, r31, 0x1
    subf    r0, r5, r3
    cmpw    r5, r3
    mtctr   r0
    add     r3, r4, r5
    li      r0, 0x20
    bge-    branch_0x80157e4c
branch_0x80157e40:
    stb     r0, 0x0(r3)
    addi    r3, r3, 0x1
    bdnz+      branch_0x80157e40
branch_0x80157e4c:
    add     r3, r4, r31
    crxor   6, 6, 6
    li      r0, 0x0
    stb     r0, -0x1(r3)
    mr      r3, r30
    bl      setString__10J2DTextBoxFPCce
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr

