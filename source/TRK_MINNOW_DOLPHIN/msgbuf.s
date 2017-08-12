
.globl TRKSetBufferUsed
TRKSetBufferUsed: # 0x8033d760
    stw     r4, 0x4(r3)
    blr


.globl TRKInitializeMessageBuffers
TRKInitializeMessageBuffers: # 0x8033d768
    mflr    r0
    lis     r3, gTRKMsgBufs@h
    stw     r0, 0x4(sp)
    addi    r0, r3, gTRKMsgBufs@l
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    li      r30, 0x0
    mulli   r4, r30, 0x890
    add     r31, r0, r4
branch_0x8033d790:
    mr      r3, r31
    bl      TRKInitializeMutex
    mr      r3, r31
    bl      TRKAcquireMutex
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      TRKSetBufferUsed
    mr      r3, r31
    bl      TRKReleaseMutex
    addi    r30, r30, 0x1
    addi    r31, r31, 0x890
    cmpwi   r30, 0x3
    blt+    branch_0x8033d790
    lwz     r31, 0xc(sp)
    li      r3, 0x0
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKGetFreeBuffer
TRKGetFreeBuffer: # 0x8033d7e0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stmw    r27, 0xc(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    li      r31, 0x300
    li      r30, 0x0
    stw     r0, 0x0(r4)
    b       branch_0x8033d85c

branch_0x8033d80c:
    mr      r3, r30
    bl      TRKGetBuffer
    mr      r29, r3
    bl      TRKAcquireMutex
    lwz     r0, 0x4(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x8033d850
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      TRKResetBuffer
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      TRKSetBufferUsed
    stw     r29, 0x0(r28)
    li      r31, 0x0
    stw     r30, 0x0(r27)
    li      r30, 0x3
branch_0x8033d850:
    mr      r3, r29
    bl      TRKReleaseMutex
    addi    r30, r30, 0x1
branch_0x8033d85c:
    cmpwi   r30, 0x3
    blt+    branch_0x8033d80c
    mr      r3, r31
    lmw     r27, 0xc(sp)
    addi    sp, sp, 0x20
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKGetBuffer
TRKGetBuffer: # 0x8033d87c
    cmpwi   r3, 0x0
    li      r0, 0x0
    blt-    branch_0x8033d8a0
    cmpwi   r3, 0x3
    bge-    branch_0x8033d8a0
    mulli   r4, r3, 0x890
    lis     r3, gTRKMsgBufs@h
    addi    r0, r3, gTRKMsgBufs@l
    add     r0, r0, r4
branch_0x8033d8a0:
    mr      r3, r0
    blr


.globl TRKReleaseBuffer
TRKReleaseBuffer: # 0x8033d8a8
    mflr    r0
    cmpwi   r3, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    beq-    branch_0x8033d8fc
    cmpwi   r3, 0x0
    blt-    branch_0x8033d8fc
    cmpwi   r3, 0x3
    bge-    branch_0x8033d8fc
    mulli   r4, r3, 0x890
    lis     r3, gTRKMsgBufs@h
    addi    r0, r3, gTRKMsgBufs@l
    add     r31, r0, r4
    addi    r3, r31, 0x0
    bl      TRKAcquireMutex
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      TRKSetBufferUsed
    mr      r3, r31
    bl      TRKReleaseMutex
branch_0x8033d8fc:
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKResetBuffer
TRKResetBuffer: # 0x8033d910
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0x8(sp)
    stw     r5, 0x8(r3)
    stw     r5, 0xc(r3)
    bne-    branch_0x8033d940
    addi    r3, r3, 0x10
    li      r4, 0x0
    li      r5, 0x880
    bl      TRK_memset
branch_0x8033d940:
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKSetBufferPosition
TRKSetBufferPosition: # 0x8033d950
    cmplwi  r4, 0x880
    li      r5, 0x0
    ble-    branch_0x8033d964
    li      r5, 0x301
    b       branch_0x8033d978

branch_0x8033d964:
    stw     r4, 0xc(r3)
    lwz     r0, 0x8(r3)
    cmplw   r4, r0
    ble-    branch_0x8033d978
    stw     r4, 0x8(r3)
branch_0x8033d978:
    mr      r3, r5
    blr


.globl TRKAppendBuffer
TRKAppendBuffer: # 0x8033d980
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r5
    stw     r29, 0xc(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x8033d9b0
    li      r3, 0x0
    b       branch_0x8033da08

branch_0x8033d9b0:
    lwz     r3, 0xc(r29)
    subfic  r0, r3, 0x880
    cmplw   r0, r30
    bge-    branch_0x8033d9c8
    li      r31, 0x301
    mr      r30, r0
branch_0x8033d9c8:
    cmplwi  r30, 0x1
    bne-    branch_0x8033d9e0
    lbz     r0, 0x0(r4)
    add     r3, r29, r3
    stb     r0, 0x10(r3)
    b       branch_0x8033d9f0

branch_0x8033d9e0:
    addi    r3, r3, 0x10
    addi    r5, r30, 0x0
    add     r3, r29, r3
    bl      TRK_memcpy
branch_0x8033d9f0:
    lwz     r0, 0xc(r29)
    addi    r3, r31, 0x0
    add     r0, r0, r30
    stw     r0, 0xc(r29)
    lwz     r0, 0xc(r29)
    stw     r0, 0x8(r29)
branch_0x8033da08:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKReadBuffer
TRKReadBuffer: # 0x8033da24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r5
    stw     r29, 0xc(sp)
    addi    r29, r3, 0x0
    addi    r3, r4, 0x0
    bne-    branch_0x8033da58
    li      r3, 0x0
    b       branch_0x8033da94

branch_0x8033da58:
    lwz     r4, 0xc(r29)
    lwz     r0, 0x8(r29)
    subf    r0, r4, r0
    cmplw   r30, r0
    ble-    branch_0x8033da74
    li      r31, 0x302
    mr      r30, r0
branch_0x8033da74:
    addi    r4, r4, 0x10
    addi    r5, r30, 0x0
    add     r4, r29, r4
    bl      TRK_memcpy
    lwz     r0, 0xc(r29)
    addi    r3, r31, 0x0
    add     r0, r0, r30
    stw     r0, 0xc(r29)
branch_0x8033da94:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKAppendBuffer1_ui16
TRKAppendBuffer1_ui16: # 0x8033dab0
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    sth     r4, 0x8(sp)
    lwz     r0, 0x608(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8033dad8
    addi    r4, sp, 0x8
    b       branch_0x8033daec

branch_0x8033dad8:
    lbz     r0, 0x9(sp)
    addi    r4, sp, 0xc
    stb     r0, 0xc(sp)
    lbz     r0, 0x8(sp)
    stb     r0, 0xd(sp)
branch_0x8033daec:
    li      r5, 0x2
    bl      TRKAppendBuffer
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKAppendBuffer1_ui32
TRKAppendBuffer1_ui32: # 0x8033db04
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r4, 0x8(sp)
    lwz     r0, 0x608(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8033db2c
    addi    r4, sp, 0x8
    b       branch_0x8033db50

branch_0x8033db2c:
    lbz     r0, 0xb(sp)
    addi    r4, sp, 0xc
    stb     r0, 0xc(sp)
    lbz     r0, 0xa(sp)
    stb     r0, 0xd(sp)
    lbz     r0, 0x9(sp)
    stb     r0, 0xe(sp)
    lbz     r0, 0x8(sp)
    stb     r0, 0xf(sp)
branch_0x8033db50:
    li      r5, 0x4
    bl      TRKAppendBuffer
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKAppendBuffer1_ui64
TRKAppendBuffer1_ui64: # 0x8033db68
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r5, 0x8(sp)
    stw     r6, 0xc(sp)
    lwz     r0, 0x608(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8033db94
    addi    r4, sp, 0x8
    b       branch_0x8033dbd8

branch_0x8033db94:
    lbz     r0, 0xf(sp)
    addi    r4, sp, 0x10
    stb     r0, 0x10(sp)
    lbz     r0, 0xe(sp)
    stb     r0, 0x11(sp)
    lbz     r0, 0xd(sp)
    stb     r0, 0x12(sp)
    lbz     r0, 0xc(sp)
    stb     r0, 0x13(sp)
    lbz     r0, 0xb(sp)
    stb     r0, 0x14(sp)
    lbz     r0, 0xa(sp)
    stb     r0, 0x15(sp)
    lbz     r0, 0x9(sp)
    stb     r0, 0x16(sp)
    lbz     r0, 0x8(sp)
    stb     r0, 0x17(sp)
branch_0x8033dbd8:
    li      r5, 0x8
    bl      TRKAppendBuffer
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKAppendBuffer_ui8
TRKAppendBuffer_ui8: # 0x8033dbf0
    li      r9, 0x0
    li      r0, 0x0
    b       branch_0x8033dc40

branch_0x8033dbfc:
    lwz     r7, 0xc(r3)
    lbz     r8, 0x0(r4)
    cmplwi  r7, 0x880
    blt-    branch_0x8033dc14
    li      r7, 0x301
    b       branch_0x8033dc34

branch_0x8033dc14:
    addi    r6, r7, 0x1
    addi    r0, r7, 0x10
    stw     r6, 0xc(r3)
    li      r7, 0x0
    stbx    r8, r3, r0
    lwz     r6, 0x8(r3)
    addi    r0, r6, 0x1
    stw     r0, 0x8(r3)
branch_0x8033dc34:
    addi    r0, r7, 0x0
    addi    r9, r9, 0x1
    addi    r4, r4, 0x1
branch_0x8033dc40:
    cmpwi   r0, 0x0
    bne-    branch_0x8033dc50
    cmpw    r9, r5
    blt+    branch_0x8033dbfc
branch_0x8033dc50:
    mr      r3, r0
    blr


.globl TRKAppendBuffer_ui32
TRKAppendBuffer_ui32: # 0x8033dc58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    li      r30, 0x0
    slwi    r0, r30, 2
    stw     r29, 0xc(sp)
    add     r31, r4, r0
    addi    r29, r5, 0x0
    stw     r28, 0x8(sp)
    addi    r28, r3, 0x0
    li      r3, 0x0
    b       branch_0x8033dca4

branch_0x8033dc90:
    mr      r3, r28
    lwz     r4, 0x0(r31)
    bl      TRKAppendBuffer1_ui32
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8033dca4:
    cmpwi   r3, 0x0
    bne-    branch_0x8033dcb4
    cmpw    r30, r29
    blt+    branch_0x8033dc90
branch_0x8033dcb4:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKReadBuffer1_ui8
TRKReadBuffer1_ui8: # 0x8033dcd4
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      TRKReadBuffer
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKReadBuffer1_ui16
TRKReadBuffer1_ui16: # 0x8033dcf8
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    lwz     r0, 0x608(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8033dd28
    mr      r31, r30
    b       branch_0x8033dd2c

branch_0x8033dd28:
    addi    r31, sp, 0x8
branch_0x8033dd2c:
    addi    r4, r31, 0x0
    li      r5, 0x2
    bl      TRKReadBuffer
    lis     r4, unk_80400000@h
    lwz     r0, 0x608(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8033dd60
    cmpwi   r3, 0x0
    bne-    branch_0x8033dd60
    lbz     r0, 0x1(r31)
    stb     r0, 0x0(r30)
    lbz     r0, 0x0(r31)
    stb     r0, 0x1(r30)
branch_0x8033dd60:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKReadBuffer1_ui32
TRKReadBuffer1_ui32: # 0x8033dd78
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r4, unk_80400000@l
    lwz     r0, 0x608(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8033dda8
    mr      r31, r30
    b       branch_0x8033ddac

branch_0x8033dda8:
    addi    r31, sp, 0x8
branch_0x8033ddac:
    addi    r4, r31, 0x0
    li      r5, 0x4
    bl      TRKReadBuffer
    lis     r4, unk_80400000@h
    lwz     r0, 0x608(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8033ddf0
    cmpwi   r3, 0x0
    bne-    branch_0x8033ddf0
    lbz     r0, 0x3(r31)
    stb     r0, 0x0(r30)
    lbz     r0, 0x2(r31)
    stb     r0, 0x1(r30)
    lbz     r0, 0x1(r31)
    stb     r0, 0x2(r30)
    lbz     r0, 0x0(r31)
    stb     r0, 0x3(r30)
branch_0x8033ddf0:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKReadBuffer1_ui64
TRKReadBuffer1_ui64: # 0x8033de08
    mflr    r0
    lis     r5, unk_80400000@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r4, unk_80400000@l
    lwz     r0, 0x608(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8033de38
    mr      r31, r30
    b       branch_0x8033de3c

branch_0x8033de38:
    addi    r31, sp, 0x8
branch_0x8033de3c:
    addi    r4, r31, 0x0
    li      r5, 0x8
    bl      TRKReadBuffer
    lis     r4, unk_80400000@h
    lwz     r0, 0x608(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8033dea0
    cmpwi   r3, 0x0
    bne-    branch_0x8033dea0
    lbz     r0, 0x7(r31)
    stb     r0, 0x0(r30)
    lbz     r0, 0x6(r31)
    stb     r0, 0x1(r30)
    lbz     r0, 0x5(r31)
    stb     r0, 0x2(r30)
    lbz     r0, 0x4(r31)
    stb     r0, 0x3(r30)
    lbz     r0, 0x3(r31)
    stb     r0, 0x4(r30)
    lbz     r0, 0x2(r31)
    stb     r0, 0x5(r30)
    lbz     r0, 0x1(r31)
    stb     r0, 0x6(r30)
    lbz     r0, 0x0(r31)
    stb     r0, 0x7(r30)
branch_0x8033dea0:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKReadBuffer_ui8
TRKReadBuffer_ui8: # 0x8033deb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r5, unk_80400000@l
    stw     r29, 0xc(sp)
    addi    r29, r4, unk_80400000@l
    stw     r28, 0x8(sp)
    addi    r28, r3, 0x0
    li      r3, 0x0
    b       branch_0x8033defc

branch_0x8033deec:
    addi    r3, r28, 0x0
    add     r4, r29, r31
    bl      TRKReadBuffer1_ui8
    addi    r31, r31, 0x1
branch_0x8033defc:
    cmpwi   r3, 0x0
    bne-    branch_0x8033df0c
    cmpw    r31, r30
    blt+    branch_0x8033deec
branch_0x8033df0c:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKReadBuffer_ui32
TRKReadBuffer_ui32: # 0x8033df2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    li      r30, 0x0
    slwi    r0, r30, 2
    stw     r29, 0xc(sp)
    add     r31, r4, r0
    addi    r29, r5, 0x0
    stw     r28, 0x8(sp)
    addi    r28, r3, 0x0
    li      r3, 0x0
    b       branch_0x8033df78

branch_0x8033df64:
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    bl      TRKReadBuffer1_ui32
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8033df78:
    cmpwi   r3, 0x0
    bne-    branch_0x8033df88
    cmpw    r30, r29
    blt+    branch_0x8033df64
branch_0x8033df88:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

