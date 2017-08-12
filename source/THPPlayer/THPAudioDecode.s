
.globl PopDecodedAudioBuffer
PopDecodedAudioBuffer: # 0x8001dab0
    mflr    r0
    lis     r4, DecodedAudioBufferQueue@ha
    stw     r0, 0x4(sp)
    addi    r5, r3, 0x0
    addi    r3, r4, DecodedAudioBufferQueue@l
    stwu    sp, -0x10(sp)
    addi    r4, sp, 0xc
    bl      OSReceiveMessage
    cmpwi   r3, 0x1
    bne-    branch_0x8001dae0
    lwz     r3, 0xc(sp)
    b       branch_0x8001dae4

branch_0x8001dae0:
    li      r3, 0x0
branch_0x8001dae4:
    lwz     r0, 0x14(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl PushFreeAudioBuffer
PushFreeAudioBuffer: # 0x8001daf4
    mflr    r0
    lis     r5, FreeAudioBufferQueue@ha
    stw     r0, 0x4(sp)
    addi    r4, r3, 0x0
    addi    r3, r5, FreeAudioBufferQueue@l
    stwu    sp, -0x8(sp)
    li      r5, 0x0
    bl      OSSendMessage
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl AudioDecode__FP13THPReadBuffer
AudioDecode__FP13THPReadBuffer: # 0x8001db24
    mflr    r0
    lis     r4, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, ActivePlayer@l
    stw     r30, 0x20(sp)
    addi    r30, r31, 0x6c
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    lwz     r0, 0x6c(r31)
    lwz     r5, 0x0(r3)
    lis     r3, FreeAudioBufferQueue@ha
    slwi    r4, r0, 2
    addi    r28, r4, 0x8
    addi    r3, r3, FreeAudioBufferQueue@l
    addi    r29, r5, 0x8
    add     r28, r5, r28
    addi    r4, sp, 0x14
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r0, 0x0(r30)
    li      r4, 0x0
    lwz     r30, 0x14(sp)
    cmplwi  r0, 0x0
    mtctr   r0
    ble-    branch_0x8001dc00
branch_0x8001db90:
    add     r3, r31, r4
    lbz     r0, 0x70(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8001dba4
    b       branch_0x8001dbec

branch_0x8001dba4:
    lis     r3, ActivePlayer@ha
    lwz     r6, 0x0(r29)
    addi    r4, r3, ActivePlayer@l
    lwz     r3, 0x0(r30)
    lwz     r0, 0xec(r4)
    li      r5, 0x0
    mullw   r0, r6, r0
    add     r4, r28, r0
    bl      THPAudioDecode
    stw     r3, 0x8(r30)
    lis     r3, DecodedAudioBufferQueue@ha
    addi    r3, r3, DecodedAudioBufferQueue@l
    lwz     r0, 0x0(r30)
    mr      r4, r30
    li      r5, 0x1
    stw     r0, 0x4(r30)
    bl      OSSendMessage
    b       branch_0x8001dc00

branch_0x8001dbec:
    lwz     r0, 0x0(r29)
    addi    r29, r29, 0x4
    addi    r4, r4, 0x1
    add     r28, r28, r0
    bdnz+      branch_0x8001db90
branch_0x8001dc00:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl AudioDecoderForOnMemory__FPv
AudioDecoderForOnMemory__FPv: # 0x8001dc20
    mflr    r0
    lis     r4, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x0
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r4, ActivePlayer@l
    lis     r4, AudioDecodeThread@ha
    stw     r28, 0x20(sp)
    addi    r30, r4, AudioDecodeThread@l
    lwz     r28, 0xbc(r29)
    stw     r3, 0x10(sp)
branch_0x8001dc58:
    stw     r31, 0x14(sp)
    addi    r3, sp, 0x10
    bl      AudioDecode__FP13THPReadBuffer
    lwz     r0, 0xc0(r29)
    lwz     r4, 0x50(r29)
    add     r3, r31, r0
    divwu   r0, r3, r4
    mullw   r0, r0, r4
    subf    r3, r0, r3
    addi    r0, r4, -0x1
    cmplw   r3, r0
    bne-    branch_0x8001dcb4
    lbz     r0, 0xa6(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x8001dca8
    lwz     r3, 0x10(sp)
    lwz     r0, 0xb4(r29)
    lwz     r28, 0x0(r3)
    stw     r0, 0x10(sp)
    b       branch_0x8001dcc8

branch_0x8001dca8:
    mr      r3, r30
    bl      OSSuspendThread
    b       branch_0x8001dcc8

branch_0x8001dcb4:
    lwz     r3, 0x10(sp)
    lwz     r4, 0x0(r3)
    add     r0, r3, r28
    stw     r0, 0x10(sp)
    mr      r28, r4
branch_0x8001dcc8:
    addi    r31, r31, 0x1
    b       branch_0x8001dc58


.globl AudioDecoder__FPv
AudioDecoder__FPv: # 0x8001dcd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
branch_0x8001dce0:
    bl      PopReadedBuffer
    mr      r31, r3
    bl      AudioDecode__FP13THPReadBuffer
    mr      r3, r31
    bl      PushReadedBuffer2
    b       branch_0x8001dce0


.globl AudioDecodeThreadCancel
AudioDecodeThreadCancel: # 0x8001dcf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x7148(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8001dd24
    lis     r3, AudioDecodeThread@ha
    addi    r3, r3, AudioDecodeThread@l
    bl      OSCancelThread
    li      r0, 0x0
    stw     r0, R13Off_m0x7148(r13)
branch_0x8001dd24:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl AudioDecodeThreadStart
AudioDecodeThreadStart: # 0x8001dd34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x7148(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8001dd58
    lis     r3, AudioDecodeThread@ha
    addi    r3, r3, AudioDecodeThread@l
    bl      OSResumeThread
branch_0x8001dd58:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl CreateAudioDecodeThread
CreateAudioDecodeThread: # 0x8001dd68
    mflr    r0
    mr.     r5, r4
    stw     r0, 0x4(sp)
    lis     r4, AudioDecodeThread@ha
    addi    r8, r3, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, AudioDecodeThread@l
    beq-    branch_0x8001ddb8
    lis     r3, AudioDecoderForOnMemory__FPv@ha
    addi    r4, r3, AudioDecoderForOnMemory__FPv@l
    addi    r3, r31, 0x0
    addi    r6, r31, 0x1310
    li      r7, 0x1000
    li      r9, 0x1
    bl      OSCreateThread
    cmpwi   r3, 0x0
    bne-    branch_0x8001dde8
    li      r3, 0x0
    b       branch_0x8001de14

branch_0x8001ddb8:
    lis     r3, AudioDecoder__FPv@ha
    addi    r4, r3, AudioDecoder__FPv@l
    addi    r3, r31, 0x0
    addi    r6, r31, 0x1310
    li      r5, 0x0
    li      r7, 0x1000
    li      r9, 0x1
    bl      OSCreateThread
    cmpwi   r3, 0x0
    bne-    branch_0x8001dde8
    li      r3, 0x0
    b       branch_0x8001de14

branch_0x8001dde8:
    addi    r3, r31, 0x1310
    addi    r4, r31, 0x1350
    li      r5, 0x3
    bl      OSInitMessageQueue
    addi    r3, r31, 0x1330
    addi    r4, r31, 0x135c
    li      r5, 0x3
    bl      OSInitMessageQueue
    li      r0, 0x1
    stw     r0, R13Off_m0x7148(r13)
    li      r3, 0x1
branch_0x8001de14:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

