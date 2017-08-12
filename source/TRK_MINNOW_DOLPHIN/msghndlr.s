
.globl TRKMessageIntoReply
TRKMessageIntoReply: # 0x8033e20c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    li      r4, 0x1
    stw     r29, 0xc(sp)
    addi    r29, r3, 0x0
    bl      TRKResetBuffer
    lwz     r3, 0xc(r29)
    cmplwi  r3, 0x880
    bge-    branch_0x8033e260
    addi    r0, r3, 0x1
    add     r3, r29, r3
    stw     r0, 0xc(r29)
    stb     r30, 0x10(r3)
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8033e260:
    lwz     r3, 0xc(r29)
    cmplwi  r3, 0x880
    bge-    branch_0x8033e288
    addi    r0, r3, 0x1
    add     r3, r29, r3
    stw     r0, 0xc(r29)
    stb     r31, 0x10(r3)
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8033e288:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKSendACK
TRKSendACK: # 0x8033e2a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    li      r31, 0x3
    stw     r30, 0x8(sp)
    addi    r30, r3, 0x0
branch_0x8033e2c0:
    mr      r3, r30
    bl      TRKMessageSend
    cmpwi   r3, 0x0
    addi    r31, r31, -0x1
    beq-    branch_0x8033e2dc
    cmpwi   r31, 0x0
    bgt+    branch_0x8033e2c0
branch_0x8033e2dc:
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKStandardACK
TRKStandardACK: # 0x8033e2f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    mr      r31, r3
    bl      TRKMessageIntoReply
    mr      r3, r31
    bl      TRKSendACK
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoUnsupported
TRKDoUnsupported: # 0x8033e328
    mflr    r0
    li      r4, 0x80
    stw     r0, 0x4(sp)
    li      r5, 0x10
    stwu    sp, -0x8(sp)
    bl      TRKStandardACK
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoConnect
TRKDoConnect: # 0x8033e350
    mflr    r0
    li      r4, 0x80
    stw     r0, 0x4(sp)
    li      r5, 0x0
    stwu    sp, -0x8(sp)
    bl      TRKStandardACK
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoDisconnect
TRKDoDisconnect: # 0x8033e378
    mflr    r0
    li      r4, 0x80
    stw     r0, 0x4(sp)
    li      r5, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      TRKStandardACK
    mr.     r31, r3
    bne-    branch_0x8033e3b0
    addi    r3, sp, 0x8
    li      r4, 0x1
    bl      TRKConstructEvent
    addi    r3, sp, 0x8
    bl      TRKPostEvent
branch_0x8033e3b0:
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoReset
TRKDoReset: # 0x8033e3c8
    mflr    r0
    li      r4, 0x80
    stw     r0, 0x4(sp)
    li      r5, 0x0
    stwu    sp, -0x8(sp)
    bl      TRKStandardACK
    bl      __TRK_reset
    li      r3, 0x0
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoVersions
TRKDoVersions: # 0x8033e3f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    mr      r31, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x8033e42c
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x2
    bl      TRKStandardACK
    b       branch_0x8033e568

branch_0x8033e42c:
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x0
    bl      TRKMessageIntoReply
    addi    r3, sp, 0x8
    bl      TRKTargetVersions
    cmpwi   r3, 0x0
    bne-    branch_0x8033e484
    lwz     r3, 0xc(r31)
    lbz     r5, 0x8(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e464
    li      r3, 0x301
    b       branch_0x8033e484

branch_0x8033e464:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e484:
    cmpwi   r3, 0x0
    bne-    branch_0x8033e4c4
    lwz     r3, 0xc(r31)
    lbz     r5, 0x9(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e4a4
    li      r3, 0x301
    b       branch_0x8033e4c4

branch_0x8033e4a4:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e4c4:
    cmpwi   r3, 0x0
    bne-    branch_0x8033e504
    lwz     r3, 0xc(r31)
    lbz     r5, 0xa(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e4e4
    li      r3, 0x301
    b       branch_0x8033e504

branch_0x8033e4e4:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e504:
    cmpwi   r3, 0x0
    bne-    branch_0x8033e544
    lwz     r3, 0xc(r31)
    lbz     r5, 0xb(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e524
    li      r3, 0x301
    b       branch_0x8033e544

branch_0x8033e524:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e544:
    cmpwi   r3, 0x0
    beq-    branch_0x8033e560
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x3
    bl      TRKStandardACK
    b       branch_0x8033e568

branch_0x8033e560:
    mr      r3, r31
    bl      TRKSendACK
branch_0x8033e568:
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoSupportMask
TRKDoSupportMask: # 0x8033e57c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x8033e5b0
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x2
    bl      TRKStandardACK
    b       branch_0x8033e644

branch_0x8033e5b0:
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x0
    bl      TRKMessageIntoReply
    addi    r3, sp, 0x8
    bl      TRKTargetSupportMask
    cmpwi   r3, 0x0
    bne-    branch_0x8033e5e0
    addi    r3, r31, 0x0
    addi    r4, sp, 0x8
    li      r5, 0x20
    bl      TRKAppendBuffer
branch_0x8033e5e0:
    cmpwi   r3, 0x0
    bne-    branch_0x8033e620
    lwz     r3, 0xc(r31)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e5fc
    li      r3, 0x301
    b       branch_0x8033e620

branch_0x8033e5fc:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r0, 0x2
    li      r3, 0x0
    stb     r0, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e620:
    cmpwi   r3, 0x0
    beq-    branch_0x8033e63c
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x3
    bl      TRKStandardACK
    b       branch_0x8033e644

branch_0x8033e63c:
    mr      r3, r31
    bl      TRKSendACK
branch_0x8033e644:
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoCPUType
TRKDoCPUType: # 0x8033e658
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x8033e68c
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x2
    bl      TRKStandardACK
    b       branch_0x8033e888

branch_0x8033e68c:
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x0
    bl      TRKMessageIntoReply
    addi    r3, sp, 0x8
    bl      TRKTargetCPUType
    cmpwi   r3, 0x0
    bne-    branch_0x8033e6e4
    lwz     r3, 0xc(r31)
    lbz     r5, 0x8(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e6c4
    li      r3, 0x301
    b       branch_0x8033e6e4

branch_0x8033e6c4:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e6e4:
    cmpwi   r3, 0x0
    bne-    branch_0x8033e724
    lwz     r3, 0xc(r31)
    lbz     r5, 0x9(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e704
    li      r3, 0x301
    b       branch_0x8033e724

branch_0x8033e704:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e724:
    cmpwi   r3, 0x0
    bne-    branch_0x8033e764
    lwz     r3, 0xc(r31)
    lbz     r5, 0xa(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e744
    li      r3, 0x301
    b       branch_0x8033e764

branch_0x8033e744:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e764:
    cmpwi   r3, 0x0
    bne-    branch_0x8033e7a4
    lwz     r3, 0xc(r31)
    lbz     r5, 0xb(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e784
    li      r3, 0x301
    b       branch_0x8033e7a4

branch_0x8033e784:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e7a4:
    cmpwi   r3, 0x0
    bne-    branch_0x8033e7e4
    lwz     r3, 0xc(r31)
    lbz     r5, 0xc(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e7c4
    li      r3, 0x301
    b       branch_0x8033e7e4

branch_0x8033e7c4:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e7e4:
    cmpwi   r3, 0x0
    bne-    branch_0x8033e824
    lwz     r3, 0xc(r31)
    lbz     r5, 0xd(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e804
    li      r3, 0x301
    b       branch_0x8033e824

branch_0x8033e804:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e824:
    cmpwi   r3, 0x0
    bne-    branch_0x8033e864
    lwz     r3, 0xc(r31)
    lbz     r5, 0xe(sp)
    cmplwi  r3, 0x880
    blt-    branch_0x8033e844
    li      r3, 0x301
    b       branch_0x8033e864

branch_0x8033e844:
    addi    r0, r3, 0x1
    add     r4, r31, r3
    stw     r0, 0xc(r31)
    li      r3, 0x0
    stb     r5, 0x10(r4)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
branch_0x8033e864:
    cmpwi   r3, 0x0
    beq-    branch_0x8033e880
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x3
    bl      TRKStandardACK
    b       branch_0x8033e888

branch_0x8033e880:
    mr      r3, r31
    bl      TRKSendACK
branch_0x8033e888:
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoReadMemory
TRKDoReadMemory: # 0x8033e89c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x820(sp)
    stw     r31, 0x81c(sp)
    mr      r31, r3
    stw     r30, 0x818(sp)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x8
    beq-    branch_0x8033e8d4
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x2
    bl      TRKStandardACK
    b       branch_0x8033ea6c

branch_0x8033e8d4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      TRKSetBufferPosition
    addi    r3, r31, 0x0
    addi    r4, sp, 0x8
    bl      TRKReadBuffer1_ui8
    mr.     r30, r3
    bne-    branch_0x8033e904
    addi    r3, r31, 0x0
    addi    r4, sp, 0x9
    bl      TRKReadBuffer1_ui8
    mr      r30, r3
branch_0x8033e904:
    cmpwi   r30, 0x0
    bne-    branch_0x8033e91c
    addi    r3, r31, 0x0
    addi    r4, sp, 0xa
    bl      TRKReadBuffer1_ui16
    mr      r30, r3
branch_0x8033e91c:
    cmpwi   r30, 0x0
    bne-    branch_0x8033e934
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc
    bl      TRKReadBuffer1_ui32
    mr      r30, r3
branch_0x8033e934:
    lbz     r0, 0x9(sp)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8033e954
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x12
    bl      TRKStandardACK
    b       branch_0x8033ea6c

branch_0x8033e954:
    lhz     r0, 0xa(sp)
    cmplwi  r0, 0x800
    ble-    branch_0x8033e974
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x11
    bl      TRKStandardACK
    b       branch_0x8033ea6c

branch_0x8033e974:
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x0
    bl      TRKMessageIntoReply
    cmpwi   r30, 0x0
    bne-    branch_0x8033e9fc
    lbz     r0, 0x9(sp)
    lhz     r3, 0xa(sp)
    rlwinm. r0, r0, 0, 28, 28
    stw     r3, 0x10(sp)
    beq-    branch_0x8033e9a8
    li      r6, 0x0
    b       branch_0x8033e9ac

branch_0x8033e9a8:
    li      r6, 0x1
branch_0x8033e9ac:
    lwz     r4, 0xc(sp)
    addi    r3, sp, 0x14
    addi    r5, sp, 0x10
    li      r7, 0x1
    bl      TRKTargetAccessMemory
    lwz     r0, 0x10(sp)
    mr.     r30, r3
    sth     r0, 0xa(sp)
    bne-    branch_0x8033e9e0
    mr      r3, r31
    lhz     r4, 0xa(sp)
    bl      TRKAppendBuffer1_ui16
    mr      r30, r3
branch_0x8033e9e0:
    cmpwi   r30, 0x0
    bne-    branch_0x8033e9fc
    lwz     r5, 0x10(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x14
    bl      TRKAppendBuffer
    mr      r30, r3
branch_0x8033e9fc:
    cmpwi   r30, 0x0
    beq-    branch_0x8033ea64
    addi    r0, r30, -0x700
    cmplwi  r0, 0x6
    bgt-    branch_0x8033ea50
    lis     r3, unk_803e6860@h
    addi    r3, r3, unk_803e6860@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8033ea28:
    li      r5, 0x15
    b       branch_0x8033ea54

branch_0x8033ea30:
    li      r5, 0x13
    b       branch_0x8033ea54

branch_0x8033ea38:
    li      r5, 0x21
    b       branch_0x8033ea54

branch_0x8033ea40:
    li      r5, 0x22
    b       branch_0x8033ea54

branch_0x8033ea48:
    li      r5, 0x20
    b       branch_0x8033ea54

branch_0x8033ea50:
    li      r5, 0x3
branch_0x8033ea54:
    addi    r3, r31, 0x0
    li      r4, 0x80
    bl      TRKStandardACK
    b       branch_0x8033ea6c

branch_0x8033ea64:
    mr      r3, r31
    bl      TRKSendACK
branch_0x8033ea6c:
    lwz     r31, 0x81c(sp)
    lwz     r30, 0x818(sp)
    addi    sp, sp, 0x820
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoWriteMemory
TRKDoWriteMemory: # 0x8033ea84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x820(sp)
    stw     r31, 0x81c(sp)
    mr      r31, r3
    stw     r30, 0x818(sp)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x8
    bgt-    branch_0x8033eabc
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x2
    bl      TRKStandardACK
    b       branch_0x8033ec68

branch_0x8033eabc:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      TRKSetBufferPosition
    addi    r3, r31, 0x0
    addi    r4, sp, 0x8
    bl      TRKReadBuffer1_ui8
    mr.     r30, r3
    bne-    branch_0x8033eaec
    addi    r3, r31, 0x0
    addi    r4, sp, 0x9
    bl      TRKReadBuffer1_ui8
    mr      r30, r3
branch_0x8033eaec:
    cmpwi   r30, 0x0
    bne-    branch_0x8033eb04
    addi    r3, r31, 0x0
    addi    r4, sp, 0xa
    bl      TRKReadBuffer1_ui16
    mr      r30, r3
branch_0x8033eb04:
    cmpwi   r30, 0x0
    bne-    branch_0x8033eb1c
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc
    bl      TRKReadBuffer1_ui32
    mr      r30, r3
branch_0x8033eb1c:
    lbz     r0, 0x9(sp)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8033eb3c
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x12
    bl      TRKStandardACK
    b       branch_0x8033ec68

branch_0x8033eb3c:
    lhz     r4, 0xa(sp)
    lwz     r3, 0x8(r31)
    addi    r0, r4, 0x8
    cmplw   r3, r0
    bne-    branch_0x8033eb58
    cmplwi  r4, 0x800
    ble-    branch_0x8033eb6c
branch_0x8033eb58:
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x11
    bl      TRKStandardACK
    b       branch_0x8033ec68

branch_0x8033eb6c:
    cmpwi   r30, 0x0
    bne-    branch_0x8033ebc8
    stw     r4, 0x10(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x14
    lwz     r5, 0x10(sp)
    bl      TRKReadBuffer
    mr.     r30, r3
    bne-    branch_0x8033ebc0
    lbz     r0, 0x9(sp)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8033eba4
    li      r6, 0x0
    b       branch_0x8033eba8

branch_0x8033eba4:
    li      r6, 0x1
branch_0x8033eba8:
    lwz     r4, 0xc(sp)
    addi    r3, sp, 0x14
    addi    r5, sp, 0x10
    li      r7, 0x0
    bl      TRKTargetAccessMemory
    mr      r30, r3
branch_0x8033ebc0:
    lwz     r0, 0x10(sp)
    sth     r0, 0xa(sp)
branch_0x8033ebc8:
    cmpwi   r30, 0x0
    bne-    branch_0x8033ebe0
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x0
    bl      TRKMessageIntoReply
branch_0x8033ebe0:
    cmpwi   r30, 0x0
    bne-    branch_0x8033ebf8
    mr      r3, r31
    lhz     r4, 0xa(sp)
    bl      TRKAppendBuffer1_ui16
    mr      r30, r3
branch_0x8033ebf8:
    cmpwi   r30, 0x0
    beq-    branch_0x8033ec60
    addi    r0, r30, -0x700
    cmplwi  r0, 0x6
    bgt-    branch_0x8033ec4c
    lis     r3, unk_803e687c@h
    addi    r3, r3, unk_803e687c@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8033ec24:
    li      r5, 0x15
    b       branch_0x8033ec50

branch_0x8033ec2c:
    li      r5, 0x13
    b       branch_0x8033ec50

branch_0x8033ec34:
    li      r5, 0x21
    b       branch_0x8033ec50

branch_0x8033ec3c:
    li      r5, 0x22
    b       branch_0x8033ec50

branch_0x8033ec44:
    li      r5, 0x20
    b       branch_0x8033ec50

branch_0x8033ec4c:
    li      r5, 0x3
branch_0x8033ec50:
    addi    r3, r31, 0x0
    li      r4, 0x80
    bl      TRKStandardACK
    b       branch_0x8033ec68

branch_0x8033ec60:
    mr      r3, r31
    bl      TRKSendACK
branch_0x8033ec68:
    lwz     r31, 0x81c(sp)
    lwz     r30, 0x818(sp)
    addi    sp, sp, 0x820
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoReadRegisters
TRKDoReadRegisters: # 0x8033ec80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x6
    beq-    branch_0x8033ecb4
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x2
    bl      TRKStandardACK
    b       branch_0x8033ee70

branch_0x8033ecb4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      TRKSetBufferPosition
    addi    r3, r31, 0x0
    addi    r4, sp, 0x8
    bl      TRKReadBuffer1_ui8
    cmpwi   r3, 0x0
    bne-    branch_0x8033ece0
    addi    r3, r31, 0x0
    addi    r4, sp, 0x9
    bl      TRKReadBuffer1_ui8
branch_0x8033ece0:
    cmpwi   r3, 0x0
    bne-    branch_0x8033ecf4
    addi    r3, r31, 0x0
    addi    r4, sp, 0xa
    bl      TRKReadBuffer1_ui16
branch_0x8033ecf4:
    cmpwi   r3, 0x0
    bne-    branch_0x8033ed08
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc
    bl      TRKReadBuffer1_ui16
branch_0x8033ed08:
    lhz     r4, 0xa(sp)
    lhz     r0, 0xc(sp)
    cmplw   r4, r0
    ble-    branch_0x8033ed2c
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x14
    bl      TRKStandardACK
    b       branch_0x8033ee70

branch_0x8033ed2c:
    cmpwi   r3, 0x0
    bne-    branch_0x8033ed44
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x0
    bl      TRKMessageIntoReply
branch_0x8033ed44:
    lbz     r0, 0x9(sp)
    clrlwi  r0, r0, 29
    cmpwi   r0, 0x2
    beq-    branch_0x8033edac
    bge-    branch_0x8033ed68
    cmpwi   r0, 0x0
    beq-    branch_0x8033ed74
    bge-    branch_0x8033ed90
    b       branch_0x8033ede4

branch_0x8033ed68:
    cmpwi   r0, 0x4
    bge-    branch_0x8033ede4
    b       branch_0x8033edc8

branch_0x8033ed74:
    lhz     r3, 0xa(sp)
    mr      r5, r31
    lhz     r4, 0xc(sp)
    addi    r6, sp, 0x10
    li      r7, 0x1
    bl      TRKTargetAccessDefault
    b       branch_0x8033ede8

branch_0x8033ed90:
    lhz     r3, 0xa(sp)
    mr      r5, r31
    lhz     r4, 0xc(sp)
    addi    r6, sp, 0x10
    li      r7, 0x1
    bl      TRKTargetAccessFP
    b       branch_0x8033ede8

branch_0x8033edac:
    lhz     r3, 0xa(sp)
    mr      r5, r31
    lhz     r4, 0xc(sp)
    addi    r6, sp, 0x10
    li      r7, 0x1
    bl      TRKTargetAccessExtended1
    b       branch_0x8033ede8

branch_0x8033edc8:
    lhz     r3, 0xa(sp)
    mr      r5, r31
    lhz     r4, 0xc(sp)
    addi    r6, sp, 0x10
    li      r7, 0x1
    bl      TRKTargetAccessExtended2
    b       branch_0x8033ede8

branch_0x8033ede4:
    li      r3, 0x703
branch_0x8033ede8:
    cmpwi   r3, 0x0
    beq-    branch_0x8033ee68
    cmpwi   r3, 0x704
    beq-    branch_0x8033ee3c
    bge-    branch_0x8033ee14
    cmpwi   r3, 0x702
    beq-    branch_0x8033ee34
    bge-    branch_0x8033ee24
    cmpwi   r3, 0x701
    bge-    branch_0x8033ee2c
    b       branch_0x8033ee54

branch_0x8033ee14:
    cmpwi   r3, 0x706
    beq-    branch_0x8033ee4c
    bge-    branch_0x8033ee54
    b       branch_0x8033ee44

branch_0x8033ee24:
    li      r5, 0x12
    b       branch_0x8033ee58

branch_0x8033ee2c:
    li      r5, 0x14
    b       branch_0x8033ee58

branch_0x8033ee34:
    li      r5, 0x15
    b       branch_0x8033ee58

branch_0x8033ee3c:
    li      r5, 0x21
    b       branch_0x8033ee58

branch_0x8033ee44:
    li      r5, 0x22
    b       branch_0x8033ee58

branch_0x8033ee4c:
    li      r5, 0x20
    b       branch_0x8033ee58

branch_0x8033ee54:
    li      r5, 0x3
branch_0x8033ee58:
    addi    r3, r31, 0x0
    li      r4, 0x80
    bl      TRKStandardACK
    b       branch_0x8033ee70

branch_0x8033ee68:
    mr      r3, r31
    bl      TRKSendACK
branch_0x8033ee70:
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoWriteRegisters
TRKDoWriteRegisters: # 0x8033ee84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x6
    bgt-    branch_0x8033eebc
    addi    r3, r30, 0x0
    li      r4, 0x80
    li      r5, 0x2
    bl      TRKStandardACK
    b       branch_0x8033f074

branch_0x8033eebc:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      TRKSetBufferPosition
    addi    r3, r30, 0x0
    addi    r4, sp, 0x8
    bl      TRKReadBuffer1_ui8
    cmpwi   r3, 0x0
    bne-    branch_0x8033eee8
    addi    r3, r30, 0x0
    addi    r4, sp, 0x9
    bl      TRKReadBuffer1_ui8
branch_0x8033eee8:
    cmpwi   r3, 0x0
    bne-    branch_0x8033eefc
    addi    r3, r30, 0x0
    addi    r4, sp, 0xa
    bl      TRKReadBuffer1_ui16
branch_0x8033eefc:
    cmpwi   r3, 0x0
    bne-    branch_0x8033ef10
    addi    r3, r30, 0x0
    addi    r4, sp, 0xc
    bl      TRKReadBuffer1_ui16
branch_0x8033ef10:
    lhz     r3, 0xa(sp)
    lhz     r4, 0xc(sp)
    cmplw   r3, r4
    ble-    branch_0x8033ef34
    addi    r3, r30, 0x0
    li      r4, 0x80
    li      r5, 0x14
    bl      TRKStandardACK
    b       branch_0x8033f074

branch_0x8033ef34:
    lbz     r0, 0x9(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x8033ef90
    bge-    branch_0x8033ef54
    cmpwi   r0, 0x0
    beq-    branch_0x8033ef60
    bge-    branch_0x8033ef78
    b       branch_0x8033efc0

branch_0x8033ef54:
    cmpwi   r0, 0x4
    bge-    branch_0x8033efc0
    b       branch_0x8033efa8

branch_0x8033ef60:
    addi    r6, sp, 0x10
    addi    r5, r30, 0x0
    li      r7, 0x0
    bl      TRKTargetAccessDefault
    mr      r31, r3
    b       branch_0x8033efc4

branch_0x8033ef78:
    addi    r6, sp, 0x10
    addi    r5, r30, 0x0
    li      r7, 0x0
    bl      TRKTargetAccessFP
    mr      r31, r3
    b       branch_0x8033efc4

branch_0x8033ef90:
    addi    r6, sp, 0x10
    addi    r5, r30, 0x0
    li      r7, 0x0
    bl      TRKTargetAccessExtended1
    mr      r31, r3
    b       branch_0x8033efc4

branch_0x8033efa8:
    addi    r6, sp, 0x10
    addi    r5, r30, 0x0
    li      r7, 0x0
    bl      TRKTargetAccessExtended2
    mr      r31, r3
    b       branch_0x8033efc4

branch_0x8033efc0:
    li      r31, 0x703
branch_0x8033efc4:
    cmpwi   r31, 0x0
    bne-    branch_0x8033efdc
    addi    r3, r30, 0x0
    li      r4, 0x80
    li      r5, 0x0
    bl      TRKMessageIntoReply
branch_0x8033efdc:
    cmpwi   r31, 0x0
    beq-    branch_0x8033f06c
    cmpwi   r31, 0x703
    beq-    branch_0x8033f020
    bge-    branch_0x8033f008
    cmpwi   r31, 0x701
    beq-    branch_0x8033f028
    bge-    branch_0x8033f038
    cmpwi   r31, 0x302
    beq-    branch_0x8033f030
    b       branch_0x8033f058

branch_0x8033f008:
    cmpwi   r31, 0x706
    beq-    branch_0x8033f050
    bge-    branch_0x8033f058
    cmpwi   r31, 0x705
    bge-    branch_0x8033f048
    b       branch_0x8033f040

branch_0x8033f020:
    li      r5, 0x12
    b       branch_0x8033f05c

branch_0x8033f028:
    li      r5, 0x14
    b       branch_0x8033f05c

branch_0x8033f030:
    li      r5, 0x2
    b       branch_0x8033f05c

branch_0x8033f038:
    li      r5, 0x15
    b       branch_0x8033f05c

branch_0x8033f040:
    li      r5, 0x21
    b       branch_0x8033f05c

branch_0x8033f048:
    li      r5, 0x22
    b       branch_0x8033f05c

branch_0x8033f050:
    li      r5, 0x20
    b       branch_0x8033f05c

branch_0x8033f058:
    li      r5, 0x3
branch_0x8033f05c:
    addi    r3, r30, 0x0
    li      r4, 0x80
    bl      TRKStandardACK
    b       branch_0x8033f074

branch_0x8033f06c:
    mr      r3, r30
    bl      TRKSendACK
branch_0x8033f074:
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoFlushCache
TRKDoFlushCache: # 0x8033f08c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0xa
    beq-    branch_0x8033f0c4
    addi    r3, r30, 0x0
    li      r4, 0x80
    li      r5, 0x2
    bl      TRKStandardACK
    b       branch_0x8033f1ac

branch_0x8033f0c4:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      TRKSetBufferPosition
    addi    r3, r30, 0x0
    addi    r4, sp, 0x8
    bl      TRKReadBuffer1_ui8
    mr.     r31, r3
    bne-    branch_0x8033f0f4
    addi    r3, r30, 0x0
    addi    r4, sp, 0x9
    bl      TRKReadBuffer1_ui8
    mr      r31, r3
branch_0x8033f0f4:
    cmpwi   r31, 0x0
    bne-    branch_0x8033f10c
    addi    r3, r30, 0x0
    addi    r4, sp, 0xc
    bl      TRKReadBuffer1_ui32
    mr      r31, r3
branch_0x8033f10c:
    cmpwi   r31, 0x0
    bne-    branch_0x8033f124
    addi    r3, r30, 0x0
    addi    r4, sp, 0x10
    bl      TRKReadBuffer1_ui32
    mr      r31, r3
branch_0x8033f124:
    lwz     r4, 0xc(sp)
    lwz     r5, 0x10(sp)
    cmplw   r4, r5
    ble-    branch_0x8033f148
    addi    r3, r30, 0x0
    li      r4, 0x80
    li      r5, 0x13
    bl      TRKStandardACK
    b       branch_0x8033f1ac

branch_0x8033f148:
    cmpwi   r31, 0x0
    bne-    branch_0x8033f15c
    lbz     r3, 0x9(sp)
    bl      TRKTargetFlushCache
    mr      r31, r3
branch_0x8033f15c:
    cmpwi   r31, 0x0
    bne-    branch_0x8033f174
    addi    r3, r30, 0x0
    li      r4, 0x80
    li      r5, 0x0
    bl      TRKMessageIntoReply
branch_0x8033f174:
    cmpwi   r31, 0x0
    beq-    branch_0x8033f1a4
    cmpwi   r31, 0x703
    beq-    branch_0x8033f188
    b       branch_0x8033f190

branch_0x8033f188:
    li      r5, 0x12
    b       branch_0x8033f194

branch_0x8033f190:
    li      r5, 0x3
branch_0x8033f194:
    addi    r3, r30, 0x0
    li      r4, 0x80
    bl      TRKStandardACK
    b       branch_0x8033f1ac

branch_0x8033f1a4:
    mr      r3, r30
    bl      TRKSendACK
branch_0x8033f1ac:
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoContinue
TRKDoContinue: # 0x8033f1c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    mr      r31, r3
    bl      TRKTargetStopped
    cmpwi   r3, 0x0
    bne-    branch_0x8033f1f8
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x16
    bl      TRKStandardACK
    b       branch_0x8033f214

branch_0x8033f1f8:
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x0
    bl      TRKStandardACK
    cmpwi   r3, 0x0
    bne-    branch_0x8033f214
    bl      TRKTargetContinue
branch_0x8033f214:
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoStep
TRKDoStep: # 0x8033f228
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x3
    bge-    branch_0x8033f25c
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x2
    bl      TRKStandardACK
    b       branch_0x8033f418

branch_0x8033f25c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      TRKSetBufferPosition
    addi    r3, r31, 0x0
    addi    r4, sp, 0x8
    bl      TRKReadBuffer1_ui8
    cmpwi   r3, 0x0
    bne-    branch_0x8033f288
    addi    r3, r31, 0x0
    addi    r4, sp, 0x9
    bl      TRKReadBuffer1_ui8
branch_0x8033f288:
    lbz     r0, 0x9(sp)
    cmpwi   r0, 0x10
    beq-    branch_0x8033f2bc
    bge-    branch_0x8033f2b0
    cmpwi   r0, 0x1
    beq-    branch_0x8033f2f0
    bge-    branch_0x8033f368
    cmpwi   r0, 0x0
    bge-    branch_0x8033f2bc
    b       branch_0x8033f368

branch_0x8033f2b0:
    cmpwi   r0, 0x12
    bge-    branch_0x8033f368
    b       branch_0x8033f2f0

branch_0x8033f2bc:
    cmpwi   r3, 0x0
    bne-    branch_0x8033f2d0
    addi    r3, r31, 0x0
    addi    r4, sp, 0xa
    bl      TRKReadBuffer1_ui8
branch_0x8033f2d0:
    lbz     r0, 0xa(sp)
    cmplwi  r0, 0x1
    bge-    branch_0x8033f37c
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x11
    bl      TRKStandardACK
    b       branch_0x8033f418

branch_0x8033f2f0:
    lwz     r0, 0x8(r31)
    cmplwi  r0, 0xa
    beq-    branch_0x8033f310
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x2
    bl      TRKStandardACK
    b       branch_0x8033f418

branch_0x8033f310:
    cmpwi   r3, 0x0
    bne-    branch_0x8033f324
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc
    bl      TRKReadBuffer1_ui32
branch_0x8033f324:
    cmpwi   r3, 0x0
    bne-    branch_0x8033f338
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    bl      TRKReadBuffer1_ui32
branch_0x8033f338:
    bl      TRKTargetGetPC
    lwz     r0, 0xc(sp)
    cmplw   r3, r0
    blt-    branch_0x8033f354
    lwz     r0, 0x10(sp)
    cmplw   r3, r0
    ble-    branch_0x8033f37c
branch_0x8033f354:
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x11
    bl      TRKStandardACK
    b       branch_0x8033f418

branch_0x8033f368:
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x12
    bl      TRKStandardACK
    b       branch_0x8033f418

branch_0x8033f37c:
    bl      TRKTargetStopped
    cmpwi   r3, 0x0
    bne-    branch_0x8033f39c
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x16
    bl      TRKStandardACK
    b       branch_0x8033f418

branch_0x8033f39c:
    addi    r3, r31, 0x0
    li      r4, 0x80
    li      r5, 0x0
    bl      TRKStandardACK
    cmpwi   r3, 0x0
    bne-    branch_0x8033f418
    lbz     r0, 0x9(sp)
    cmpwi   r0, 0x10
    beq-    branch_0x8033f3e8
    bge-    branch_0x8033f3dc
    cmpwi   r0, 0x1
    beq-    branch_0x8033f400
    bge-    branch_0x8033f418
    cmpwi   r0, 0x0
    bge-    branch_0x8033f3e8
    b       branch_0x8033f418

branch_0x8033f3dc:
    cmpwi   r0, 0x12
    bge-    branch_0x8033f418
    b       branch_0x8033f400

branch_0x8033f3e8:
    subfic  r0, r0, 0x10
    lbz     r3, 0xa(sp)
    cntlzw  r0, r0
    srwi    r4, r0, 5
    bl      TRKTargetSingleStep
    b       branch_0x8033f418

branch_0x8033f400:
    subfic  r0, r0, 0x11
    lwz     r3, 0xc(sp)
    cntlzw  r0, r0
    lwz     r4, 0x10(sp)
    srwi    r5, r0, 5
    bl      TRKTargetStepOutOfRange
branch_0x8033f418:
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKDoStop
TRKDoStop: # 0x8033f42c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    mr      r31, r3
    bl      TRKTargetStop
    cmpwi   r3, 0x704
    beq-    branch_0x8033f474
    bge-    branch_0x8033f45c
    cmpwi   r3, 0x0
    beq-    branch_0x8033f46c
    b       branch_0x8033f48c

branch_0x8033f45c:
    cmpwi   r3, 0x706
    beq-    branch_0x8033f484
    bge-    branch_0x8033f48c
    b       branch_0x8033f47c

branch_0x8033f46c:
    li      r5, 0x0
    b       branch_0x8033f490

branch_0x8033f474:
    li      r5, 0x21
    b       branch_0x8033f490

branch_0x8033f47c:
    li      r5, 0x22
    b       branch_0x8033f490

branch_0x8033f484:
    li      r5, 0x20
    b       branch_0x8033f490

branch_0x8033f48c:
    li      r5, 0x1
branch_0x8033f490:
    addi    r3, r31, 0x0
    li      r4, 0x80
    bl      TRKStandardACK
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

