
.globl PopDecodedTextureSet
PopDecodedTextureSet: # 0x8001fe00
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    addi    r5, r3, 0x0
    subi    r3, r4, 0x388
    stwu    sp, -0x10(sp)
    addi    r4, sp, 0xc
    bl      OSReceiveMessage
    cmpwi   r3, 0x1
    bne-    branch_0x8001fe30
    lwz     r3, 0xc(sp)
    b       branch_0x8001fe34

branch_0x8001fe30:
    li      r3, 0x0
branch_0x8001fe34:
    lwz     r0, 0x14(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl PushFreeTextureSet
PushFreeTextureSet: # 0x8001fe44
    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    addi    r4, r3, 0x0
    subi    r3, r5, 0x3a8
    stwu    sp, -0x8(sp)
    li      r5, 0x0
    bl      OSSendMessage
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl VideoDecode__FP13THPReadBuffer
VideoDecode__FP13THPReadBuffer: # 0x8001fe74
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    li      r5, 0x1
    stwu    sp, -0x38(sp)
    stmw    r24, 0x18(sp)
    subi    r31, r4, 0x3ea0
    addi    r24, r3, 0x0
    lis     r3, 0x803f
    subi    r30, r3, 0x16b8
    addi    r29, r31, 0x6c
    lwz     r0, 0x6c(r31)
    lwz     r4, 0x0(r24)
    slwi    r3, r0, 2
    addi    r25, r3, 0x8
    addi    r26, r4, 0x8
    add     r25, r4, r25
    addi    r3, r30, 0x1310
    addi    r4, sp, 0x14
    bl      OSReceiveMessage
    lwz     r28, 0x14(sp)
    li      r27, 0x0
    b       branch_0x8001ff68

branch_0x8001fed0:
    add     r3, r31, r27
    lbz     r0, 0x70(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8001fee4
    b       branch_0x8001ff58

branch_0x8001fee4:
    lwz     r4, 0x0(r28)
    mr      r3, r25
    lwz     r5, 0x4(r28)
    lwz     r6, 0x8(r28)
    lwz     r7, 0x9c(r31)
    bl      THPVideoDecode
    cmpwi   r3, 0x0
    stw     r3, 0xac(r31)
    beq-    branch_0x8001ff2c
    lwz     r0, -0x711c(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8001ff24
    li      r3, 0x0
    bl      PrepareReady__Fi
    li      r0, 0x0
    stw     r0, -0x711c(r13)
branch_0x8001ff24:
    mr      r3, r30
    bl      OSSuspendThread
branch_0x8001ff2c:
    lwz     r0, 0x4(r24)
    addi    r4, r28, 0x0
    addi    r3, r30, 0x1330
    stw     r0, 0xc(r28)
    li      r5, 0x1
    bl      OSSendMessage
    bl      OSDisableInterrupts
    lwz     r4, 0xd8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0xd8(r31)
    bl      OSRestoreInterrupts
branch_0x8001ff58:
    lwz     r0, 0x0(r26)
    addi    r26, r26, 0x4
    addi    r27, r27, 0x1
    add     r25, r25, r0
branch_0x8001ff68:
    lwz     r0, 0x0(r29)
    cmplw   r27, r0
    blt+    branch_0x8001fed0
    lwz     r0, -0x711c(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8001ff90
    li      r3, 0x1
    bl      PrepareReady__Fi
    li      r0, 0x0
    stw     r0, -0x711c(r13)
branch_0x8001ff90:
    lmw     r24, 0x18(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl VideoDecoderForOnMemory__FPv
VideoDecoderForOnMemory__FPv: # 0x8001ffa4
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    subi    r31, r4, 0x3ea0
    lis     r4, 0x803f
    addi    r30, r31, 0xd8
    subi    r27, r4, 0x16b8
    li      r28, 0x0
    lwz     r29, 0xbc(r31)
    stw     r3, 0x10(sp)
branch_0x8001ffd4:
    lbz     r0, 0xa7(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80020060
    b       branch_0x80020054

branch_0x8001ffe4:
    bl      OSDisableInterrupts
    lwz     r4, 0x0(r30)
    addi    r0, r4, 0x1
    stw     r0, 0x0(r30)
    bl      OSRestoreInterrupts
    lwz     r0, 0xc0(r31)
    lwz     r4, 0x50(r31)
    add     r3, r28, r0
    divwu   r0, r3, r4
    mullw   r0, r0, r4
    subf    r3, r0, r3
    subi    r0, r4, 0x1
    cmplw   r3, r0
    bne-    branch_0x8002003c
    lbz     r0, 0xa6(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x80020060
    lwz     r3, 0x10(sp)
    lwz     r0, 0xb4(r31)
    lwz     r29, 0x0(r3)
    stw     r0, 0x10(sp)
    b       branch_0x80020050

branch_0x8002003c:
    lwz     r3, 0x10(sp)
    lwz     r4, 0x0(r3)
    add     r0, r3, r29
    stw     r0, 0x10(sp)
    mr      r29, r4
branch_0x80020050:
    addi    r28, r28, 0x1
branch_0x80020054:
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    blt+    branch_0x8001ffe4
branch_0x80020060:
    stw     r28, 0x14(sp)
    addi    r3, sp, 0x10
    bl      VideoDecode__FP13THPReadBuffer
    lwz     r0, 0xc0(r31)
    lwz     r4, 0x50(r31)
    add     r3, r28, r0
    divwu   r0, r3, r4
    mullw   r0, r0, r4
    subf    r3, r0, r3
    subi    r0, r4, 0x1
    cmplw   r3, r0
    bne-    branch_0x800200bc
    lbz     r0, 0xa6(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x800200b0
    lwz     r3, 0x10(sp)
    lwz     r0, 0xb4(r31)
    lwz     r29, 0x0(r3)
    stw     r0, 0x10(sp)
    b       branch_0x800200d0

branch_0x800200b0:
    mr      r3, r27
    bl      OSSuspendThread
    b       branch_0x800200d0

branch_0x800200bc:
    lwz     r3, 0x10(sp)
    lwz     r4, 0x0(r3)
    add     r0, r3, r29
    stw     r0, 0x10(sp)
    mr      r29, r4
branch_0x800200d0:
    addi    r28, r28, 0x1
    b       branch_0x8001ffd4


.globl VideoDecoder__FPv
VideoDecoder__FPv: # 0x800200d8
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    subi    r31, r3, 0x3ea0
    stw     r30, 0x18(sp)
    addi    r30, r31, 0xd8
    stw     r29, 0x14(sp)
    addi    r29, r31, 0xa7
    stw     r28, 0x10(sp)
branch_0x80020104:
    lbz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80020180
    b       branch_0x80020174

branch_0x80020114:
    bl      PopReadedBuffer2
    mr      r28, r3
    lwz     r5, 0x50(r31)
    lwz     r3, 0xc0(r31)
    lwz     r4, 0x4(r28)
    subi    r0, r5, 0x1
    add     r4, r4, r3
    divwu   r3, r4, r5
    mullw   r3, r3, r5
    subf    r3, r3, r4
    cmplw   r3, r0
    bne-    branch_0x80020158
    lbz     r0, 0xa6(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x80020158
    mr      r3, r28
    bl      VideoDecode__FP13THPReadBuffer
branch_0x80020158:
    mr      r3, r28
    bl      PushFreeReadBuffer
    bl      OSDisableInterrupts
    lwz     r4, 0x0(r30)
    addi    r0, r4, 0x1
    stw     r0, 0x0(r30)
    bl      OSRestoreInterrupts
branch_0x80020174:
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    blt+    branch_0x80020114
branch_0x80020180:
    lbz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80020198
    bl      PopReadedBuffer2
    mr      r28, r3
    b       branch_0x800201a0

branch_0x80020198:
    bl      PopReadedBuffer
    mr      r28, r3
branch_0x800201a0:
    mr      r3, r28
    bl      VideoDecode__FP13THPReadBuffer
    mr      r3, r28
    bl      PushFreeReadBuffer
    b       branch_0x80020104


.globl VideoDecodeThreadCancel
VideoDecodeThreadCancel: # 0x800201b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, -0x7120(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x800201e0
    lis     r3, 0x803f
    subi    r3, r3, 0x16b8
    bl      OSCancelThread
    li      r0, 0x0
    stw     r0, -0x7120(r13)
branch_0x800201e0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl VideoDecodeThreadStart
VideoDecodeThreadStart: # 0x800201f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, -0x7120(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x80020214
    lis     r3, 0x803f
    subi    r3, r3, 0x16b8
    bl      OSResumeThread
branch_0x80020214:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl CreateVideoDecodeThread
CreateVideoDecodeThread: # 0x80020224
    mflr    r0
    mr.     r5, r4
    stw     r0, 0x4(sp)
    lis     r4, 0x803f
    addi    r8, r3, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    subi    r31, r4, 0x16b8
    beq-    branch_0x80020274
    lis     r3, 0x8002
    subi    r4, r3, 0x5c
    addi    r3, r31, 0x0
    addi    r6, r31, 0x1310
    li      r7, 0x1000
    li      r9, 0x1
    bl      OSCreateThread
    cmpwi   r3, 0x0
    bne-    branch_0x800202a4
    li      r3, 0x0
    b       branch_0x800202d4

branch_0x80020274:
    lis     r3, 0x8002
    addi    r4, r3, 0xd8
    addi    r3, r31, 0x0
    addi    r6, r31, 0x1310
    li      r5, 0x0
    li      r7, 0x1000
    li      r9, 0x1
    bl      OSCreateThread
    cmpwi   r3, 0x0
    bne-    branch_0x800202a4
    li      r3, 0x0
    b       branch_0x800202d4

branch_0x800202a4:
    addi    r3, r31, 0x1310
    addi    r4, r31, 0x1350
    li      r5, 0x3
    bl      OSInitMessageQueue
    addi    r3, r31, 0x1330
    addi    r4, r31, 0x135c
    li      r5, 0x3
    bl      OSInitMessageQueue
    li      r0, 0x1
    stw     r0, -0x7120(r13)
    li      r3, 0x1
    stw     r0, -0x711c(r13)
branch_0x800202d4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

