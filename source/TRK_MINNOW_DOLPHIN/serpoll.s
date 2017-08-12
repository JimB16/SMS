
.globl TRKTestForPacket
TRKTestForPacket: # 0x8033dfa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    bl      TRKPollUART
    mr.     r30, r3
    ble-    branch_0x8033e04c
    addi    r3, sp, 0x8
    addi    r4, sp, 0xc
    bl      TRKGetFreeBuffer
    cmpwi   r30, 0x880
    ble-    branch_0x8033e024
    b       branch_0x8033e008

branch_0x8033dfe0:
    cmpwi   r30, 0x880
    ble-    branch_0x8033dff0
    li      r31, 0x880
    b       branch_0x8033dff4

branch_0x8033dff0:
    mr      r31, r30
branch_0x8033dff4:
    lwz     r3, 0xc(sp)
    addi    r4, r31, 0x0
    addi    r3, r3, 0x10
    bl      TRKReadUARTN
    subf    r30, r31, r30
branch_0x8033e008:
    cmpwi   r30, 0x0
    bgt+    branch_0x8033dfe0
    lwz     r3, 0xc(sp)
    li      r4, 0xff
    li      r5, 0x6
    bl      TRKStandardACK
    b       branch_0x8033e04c

branch_0x8033e024:
    lwz     r3, 0xc(sp)
    addi    r4, r30, 0x0
    addi    r3, r3, 0x10
    bl      TRKReadUARTN
    cmpwi   r3, 0x0
    bne-    branch_0x8033e04c
    lwz     r3, 0xc(sp)
    stw     r30, 0x8(r3)
    lwz     r3, 0x8(sp)
    b       branch_0x8033e060

branch_0x8033e04c:
    lwz     r3, 0x8(sp)
    cmpwi   r3, -0x1
    beq-    branch_0x8033e05c
    bl      TRKReleaseBuffer
branch_0x8033e05c:
    li      r3, -0x1
branch_0x8033e060:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKGetInput
TRKGetInput: # 0x8033e078
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    bl      TRKTestForPacket
    addi    r30, r3, 0x0
    cmpwi   r30, -0x1
    beq-    branch_0x8033e0dc
    mr      r3, r30
    bl      TRKGetBuffer
    addi    r31, r3, 0x0
    li      r4, 0x0
    bl      TRKSetBufferPosition
    addi    r3, r31, 0x0
    addi    r4, sp, 0x8
    bl      TRKReadBuffer1_ui8
    lbz     r0, 0x8(sp)
    cmplwi  r0, 0x80
    bge-    branch_0x8033e0d4
    mr      r3, r30
    bl      TRKProcessInput
    b       branch_0x8033e0dc

branch_0x8033e0d4:
    mr      r3, r30
    bl      TRKReleaseBuffer
branch_0x8033e0dc:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKProcessInput
TRKProcessInput: # 0x8033e0f4
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x8
    bl      TRKConstructEvent
    lis     r3, gTRKFramingState@h
    stw     r31, 0x10(sp)
    addi    r4, r3, gTRKFramingState@l
    addi    r3, sp, 0x8
    li      r0, -0x1
    stw     r0, 0x0(r4)
    bl      TRKPostEvent
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKInitializeSerialHandler
TRKInitializeSerialHandler: # 0x8033e144
    lis     r3, gTRKFramingState@h
    addi    r4, r3, gTRKFramingState@l
    li      r0, -0x1
    stw     r0, 0x0(r4)
    li      r0, 0x0
    li      r3, 0x0
    stb     r0, 0x8(r4)
    stw     r0, 0xc(r4)
    blr


.globl TRKTerminateSerialHandler
TRKTerminateSerialHandler: # 0x8033e168
    li      r3, 0x0
    blr

