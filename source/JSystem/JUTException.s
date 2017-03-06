
.globl create__12JUTExceptionFP14JUTDirectPrint
create__12JUTExceptionFP14JUTDirectPrint: # 0x802c662c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lwz     r0, -0x5f08(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802c6678
    lwz     r4, -0x5f30(r13)
    li      r3, 0x84
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802c666c
    mr      r4, r31
    bl      __ct__12JUTExceptionFP14JUTDirectPrint
branch_0x802c666c:
    stw     r3, -0x5f08(r13)
    lwz     r3, 0x2c(r3)
    bl      OSResumeThread
branch_0x802c6678:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    lwz     r3, -0x5f08(r13)
    mtlr    r0
    blr


.globl run__12JUTExceptionFv
run__12JUTExceptionFv: # 0x802c6690
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    li      r5, 0x1
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    addi    r31, r4, 0x218
    addi    r25, r3, 0x0
    addi    r3, r31, 0x0
    subi    r4, r13, 0x75b8
    bl      OSInitMessageQueue
branch_0x802c66bc:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r3, -0x5f08(r13)
    lwz     r4, 0x1c(sp)
    lwz     r3, 0x64(r3)
    lwz     r30, 0x0(r4)
    lhz     r29, 0x4(r4)
    lwz     r28, 0x8(r4)
    lwz     r27, 0xc(r4)
    lwz     r26, 0x10(r4)
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(r25)
    lwz     r3, -0x5f08(r13)
    lwz     r4, 0x64(r3)
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x802c670c
    bl      createFB__12JUTExceptionFv
branch_0x802c670c:
    cmplwi  r30, 0x0
    beq-    branch_0x802c6730
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    addi    r5, r27, 0x0
    addi    r6, r26, 0x0
    blrl
branch_0x802c6730:
    bl      OSDisableInterrupts
    lwz     r3, -0x5f08(r13)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    addi    r6, r27, 0x0
    addi    r7, r26, 0x0
    bl      printContext__12JUTExceptionFUsP9OSContextUlUl
    b       branch_0x802c66bc


.globl __ct__12JUTExceptionFP14JUTDirectPrint
__ct__12JUTExceptionFP14JUTDirectPrint: # 0x802c6750
    mflr    r0
    li      r5, 0x10
    stw     r0, 0x4(sp)
    li      r6, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    li      r4, 0x4000
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9JKRThreadFUlii
    lis     r3, 0x803e
    lwz     r30, 0x8(sp)
    addi    r0, r3, 0x278
    stw     r0, 0x0(r30)
    lis     r3, 0x802c
    addi    r31, r3, 0x6830
    stw     r29, 0x64(r30)
    addi    r4, r31, 0x0
    li      r3, 0x2
    bl      OSSetErrorHandler
    addi    r4, r31, 0x0
    li      r3, 0x3
    bl      OSSetErrorHandler
    addi    r4, r31, 0x0
    li      r3, 0x6
    bl      OSSetErrorHandler
    addi    r4, r31, 0x0
    li      r3, 0x5
    bl      OSSetErrorHandler
    addi    r4, r31, 0x0
    li      r3, 0xf
    bl      OSSetErrorHandler
    li      r6, 0x0
    stw     r6, -0x5f04(r13)
    li      r5, -0x1
    li      r4, 0xa
    stw     r6, -0x5f00(r13)
    li      r0, 0xff
    addi    r3, r30, 0x0
    stw     r6, 0x68(r30)
    stw     r5, 0x6c(r30)
    stw     r4, 0x70(r30)
    stw     r4, 0x74(r30)
    stw     r5, 0x78(r30)
    stw     r6, 0x7c(r30)
    stw     r0, 0x80(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl errorHandler__12JUTExceptionFUsP9OSContextUlUl
errorHandler__12JUTExceptionFUsP9OSContextUlUl: # 0x802c6830
    mflr    r0
    lis     r7, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    subi    r31, r7, 0x2a68
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    bl      PPCMfmsr
    stw     r3, -0x5ef0(r13)
    bl      getFpscr__12JUTExceptionFv
    stw     r3, -0x5eec(r13)
    mr      r3, r28
    bl      OSFillFPUContext
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      OSSetErrorHandler
    clrlwi  r0, r27, 16
    cmplwi  r0, 0xf
    bne-    branch_0x802c68d8
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x3
    bl      OSProtectRange
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x3
    bl      OSProtectRange
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x3
    bl      OSProtectRange
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x3
    bl      OSProtectRange
branch_0x802c68d8:
    lwz     r0, -0x5f04(r13)
    lis     r3, 0x803e
    addi    r3, r3, 0x218
    stw     r0, 0x0(r31)
    mr      r4, r31
    li      r5, 0x1
    sth     r27, 0x4(r31)
    stw     r28, 0x8(r31)
    stw     r29, 0xc(r31)
    stw     r30, 0x10(r31)
    bl      OSSendMessage
    bl      OSEnableScheduler
    bl      OSYieldThread
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl showFloat__12JUTExceptionFP9OSContext
showFloat__12JUTExceptionFP9OSContext: # 0x802c6920
    mflr    r0
    lis     r5, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stmw    r27, 0x2c(sp)
    addi    r27, r4, 0x0
    subi    r30, r5, 0x6500
    lwz     r3, -0x5ef4(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802c6d50
    addi    r4, r30, 0x138
    bl      print__10JUTConsoleFPCc
    lfs     f31, 0xc0(rtoc)
    li      r28, 0x0
    li      r31, 0x0
branch_0x802c6960:
    add     r29, r27, r31
    lfd     f0, 0x90(r29)
    frsp    f0, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x20(sp)
    bl      __fpclassifyf__Ff
    cmpwi   r3, 0x1
    bne-    branch_0x802c6998
    lwz     r3, -0x5ef4(r13)
    addi    r5, r28, 0x0
    addi    r4, r30, 0xe4
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6a1c

branch_0x802c6998:
    lfs     f1, 0x20(sp)
    bl      __fpclassifyf__Ff
    cmpwi   r3, 0x2
    bne-    branch_0x802c69e4
    lbz     r0, 0x20(sp)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x802c69cc
    lwz     r3, -0x5ef4(r13)
    addi    r5, r28, 0x0
    addi    r4, r30, 0xf8
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6a1c

branch_0x802c69cc:
    lwz     r3, -0x5ef4(r13)
    addi    r5, r28, 0x0
    addi    r4, r30, 0x108
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6a1c

branch_0x802c69e4:
    lfs     f1, 0x20(sp)
    fcmpu   cr0, f31, f1
    bne-    branch_0x802c6a08
    lwz     r3, -0x5ef4(r13)
    addi    r5, r28, 0x0
    addi    r4, r30, 0x118
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6a1c

branch_0x802c6a08:
    lwz     r3, -0x5ef4(r13)
    addi    r5, r28, 0x0
    creqv   6, 6, 6
    addi    r4, r30, 0x12c
    bl      print_f__10JUTConsoleFPCce
branch_0x802c6a1c:
    lwz     r3, -0x5ef4(r13)
    addi    r4, rtoc, 0xc4
    bl      print__10JUTConsoleFPCc
    lfd     f0, 0xe8(r29)
    frsp    f0, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x1c(sp)
    bl      __fpclassifyf__Ff
    cmpwi   r3, 0x1
    bne-    branch_0x802c6a5c
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0xe4
    addi    r5, r28, 0xb
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6ae0

branch_0x802c6a5c:
    lfs     f1, 0x1c(sp)
    bl      __fpclassifyf__Ff
    cmpwi   r3, 0x2
    bne-    branch_0x802c6aa8
    lbz     r0, 0x1c(sp)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x802c6a90
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0xf8
    addi    r5, r28, 0xb
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6ae0

branch_0x802c6a90:
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x108
    addi    r5, r28, 0xb
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6ae0

branch_0x802c6aa8:
    lfs     f1, 0x1c(sp)
    fcmpu   cr0, f31, f1
    bne-    branch_0x802c6acc
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x118
    addi    r5, r28, 0xb
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6ae0

branch_0x802c6acc:
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x12c
    creqv   6, 6, 6
    addi    r5, r28, 0xb
    bl      print_f__10JUTConsoleFPCce
branch_0x802c6ae0:
    lwz     r3, -0x5ef4(r13)
    addi    r4, rtoc, 0xc4
    bl      print__10JUTConsoleFPCc
    lfd     f0, 0x140(r29)
    frsp    f0, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x18(sp)
    bl      __fpclassifyf__Ff
    cmpwi   r3, 0x1
    bne-    branch_0x802c6b20
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0xe4
    addi    r5, r28, 0x16
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6ba4

branch_0x802c6b20:
    lfs     f1, 0x18(sp)
    bl      __fpclassifyf__Ff
    cmpwi   r3, 0x2
    bne-    branch_0x802c6b6c
    lbz     r0, 0x18(sp)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x802c6b54
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0xf8
    addi    r5, r28, 0x16
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6ba4

branch_0x802c6b54:
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x108
    addi    r5, r28, 0x16
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6ba4

branch_0x802c6b6c:
    lfs     f1, 0x18(sp)
    fcmpu   cr0, f31, f1
    bne-    branch_0x802c6b90
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x118
    addi    r5, r28, 0x16
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6ba4

branch_0x802c6b90:
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x12c
    creqv   6, 6, 6
    addi    r5, r28, 0x16
    bl      print_f__10JUTConsoleFPCce
branch_0x802c6ba4:
    lwz     r3, -0x5ef4(r13)
    addi    r4, rtoc, 0xc8
    bl      print__10JUTConsoleFPCc
    addi    r28, r28, 0x1
    cmpwi   r28, 0xa
    addi    r31, r31, 0x8
    blt+    branch_0x802c6960
    lfd     f0, 0xe0(r27)
    frsp    f0, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x14(sp)
    bl      __fpclassifyf__Ff
    cmpwi   r3, 0x1
    bne-    branch_0x802c6bf4
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0xe4
    crxor   6, 6, 6
    li      r5, 0xa
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6c7c

branch_0x802c6bf4:
    lfs     f1, 0x14(sp)
    bl      __fpclassifyf__Ff
    cmpwi   r3, 0x2
    bne-    branch_0x802c6c40
    lbz     r0, 0x14(sp)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x802c6c28
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0xf8
    crxor   6, 6, 6
    li      r5, 0xa
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6c7c

branch_0x802c6c28:
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x108
    crxor   6, 6, 6
    li      r5, 0xa
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6c7c

branch_0x802c6c40:
    lfs     f0, 0xc0(rtoc)
    lfs     f1, 0x14(sp)
    fcmpu   cr0, f0, f1
    bne-    branch_0x802c6c68
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x118
    crxor   6, 6, 6
    li      r5, 0xa
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6c7c

branch_0x802c6c68:
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x12c
    creqv   6, 6, 6
    li      r5, 0xa
    bl      print_f__10JUTConsoleFPCce
branch_0x802c6c7c:
    lwz     r3, -0x5ef4(r13)
    addi    r4, rtoc, 0xc4
    bl      print__10JUTConsoleFPCc
    lfd     f0, 0x138(r27)
    frsp    f0, f0
    stfs    f0, 0x10(sp)
    lfs     f1, 0x10(sp)
    bl      __fpclassifyf__Ff
    cmpwi   r3, 0x1
    bne-    branch_0x802c6cbc
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0xe4
    crxor   6, 6, 6
    li      r5, 0x15
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6d44

branch_0x802c6cbc:
    lfs     f1, 0x10(sp)
    bl      __fpclassifyf__Ff
    cmpwi   r3, 0x2
    bne-    branch_0x802c6d08
    lbz     r0, 0x10(sp)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x802c6cf0
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0xf8
    crxor   6, 6, 6
    li      r5, 0x15
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6d44

branch_0x802c6cf0:
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x108
    crxor   6, 6, 6
    li      r5, 0x15
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6d44

branch_0x802c6d08:
    lfs     f0, 0xc0(rtoc)
    lfs     f1, 0x10(sp)
    fcmpu   cr0, f0, f1
    bne-    branch_0x802c6d30
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x118
    crxor   6, 6, 6
    li      r5, 0x15
    bl      print_f__10JUTConsoleFPCce
    b       branch_0x802c6d44

branch_0x802c6d30:
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x12c
    creqv   6, 6, 6
    li      r5, 0x15
    bl      print_f__10JUTConsoleFPCce
branch_0x802c6d44:
    lwz     r3, -0x5ef4(r13)
    addi    r4, rtoc, 0xc8
    bl      print__10JUTConsoleFPCc
branch_0x802c6d50:
    lmw     r27, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __fpclassifyf__Ff
__fpclassifyf__Ff: # 0x802c6d68
    stwu    sp, -0x10(sp)
    lis     r0, 0x7f80
    stfs    f1, 0x8(sp)
    lwz     r4, 0x8(sp)
    rlwinm  r3, r4, 0, 1, 8
    cmpw    r3, r0
    beq-    branch_0x802c6d94
    bge-    branch_0x802c6dc4
    cmpwi   r3, 0x0
    beq-    branch_0x802c6dac
    b       branch_0x802c6dc4

branch_0x802c6d94:
    clrlwi. r0, r4, 9
    beq-    branch_0x802c6da4
    li      r3, 0x1
    b       branch_0x802c6dc8

branch_0x802c6da4:
    li      r3, 0x2
    b       branch_0x802c6dc8

branch_0x802c6dac:
    clrlwi. r0, r4, 9
    beq-    branch_0x802c6dbc
    li      r3, 0x5
    b       branch_0x802c6dc8

branch_0x802c6dbc:
    li      r3, 0x3
    b       branch_0x802c6dc8

branch_0x802c6dc4:
    li      r3, 0x4
branch_0x802c6dc8:
    addi    sp, sp, 0x10
    blr


.globl searchPartialModule__12JUTExceptionFUlPUlPUlPUlPUl
searchPartialModule__12JUTExceptionFUlPUlPUlPUlPUl: # 0x802c6dd0
    cmplwi  r3, 0x0
    bne-    branch_0x802c6de0
    li      r3, 0x0
    blr

branch_0x802c6de0:
    lis     r8, 0x8000
    lwz     r10, 0x30c8(r8)
    b       branch_0x802c6e80

branch_0x802c6dec:
    lwz     r0, 0xc(r10)
    li      r12, 0x0
    lwz     r11, 0x10(r10)
    cmplwi  r0, 0x0
    mtctr   r0
    ble-    branch_0x802c6e7c
branch_0x802c6e04:
    lwz     r9, 0x4(r11)
    cmplwi  r9, 0x0
    beq-    branch_0x802c6e70
    lwz     r0, 0x0(r11)
    clrrwi  r8, r0, 1
    cmplw   r8, r3
    bgt-    branch_0x802c6e70
    add     r0, r8, r9
    cmplw   r3, r0
    bge-    branch_0x802c6e70
    cmplwi  r4, 0x0
    beq-    branch_0x802c6e3c
    lwz     r0, 0x0(r10)
    stw     r0, 0x0(r4)
branch_0x802c6e3c:
    cmplwi  r5, 0x0
    beq-    branch_0x802c6e48
    stw     r12, 0x0(r5)
branch_0x802c6e48:
    cmplwi  r6, 0x0
    beq-    branch_0x802c6e58
    subf    r0, r8, r3
    stw     r0, 0x0(r6)
branch_0x802c6e58:
    cmplwi  r7, 0x0
    beq-    branch_0x802c6e68
    lwz     r0, 0x14(r10)
    stw     r0, 0x0(r7)
branch_0x802c6e68:
    li      r3, 0x1
    blr

branch_0x802c6e70:
    addi    r11, r11, 0x8
    addi    r12, r12, 0x1
    bdnz+      branch_0x802c6e04
branch_0x802c6e7c:
    lwz     r10, 0x4(r10)
branch_0x802c6e80:
    cmplwi  r10, 0x0
    bne+    branch_0x802c6dec
    li      r3, 0x0
    blr


.globl search_name_part__FPUcPUci
search_name_part__FPUcPUci: # 0x802c6e90
    mr      r6, r3
    b       branch_0x802c6ea8

branch_0x802c6e98:
    cmpwi   r0, 0x5c
    bne-    branch_0x802c6ea4
    mr      r3, r6
branch_0x802c6ea4:
    addi    r6, r6, 0x1
branch_0x802c6ea8:
    lbz     r0, 0x0(r6)
    cmplwi  r0, 0x0
    bne+    branch_0x802c6e98
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x5c
    bne-    branch_0x802c6ec4
    addi    r3, r3, 0x1
branch_0x802c6ec4:
    li      r6, 0x0
    b       branch_0x802c6ee8

branch_0x802c6ecc:
    cmpwi   r0, 0x2e
    beq-    branch_0x802c6efc
    lbz     r0, 0x0(r3)
    addi    r3, r3, 0x1
    addi    r6, r6, 0x1
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
branch_0x802c6ee8:
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802c6efc
    cmpw    r6, r5
    blt+    branch_0x802c6ecc
branch_0x802c6efc:
    li      r0, 0x0
    stb     r0, 0x0(r4)
    blr


.globl showStack__12JUTExceptionFP9OSContext
showStack__12JUTExceptionFP9OSContext: # 0x802c6f08
    mflr    r0
    lis     r5, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    subi    r31, r5, 0x6500
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    lwz     r0, -0x5ef4(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c6fe8
    mr      r3, r0
    addi    r4, r31, 0x160
    bl      print__10JUTConsoleFPCc
    lwz     r3, -0x5ef4(r13)
    addi    r4, r31, 0x188
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    lwz     r29, 0x4(r29)
    li      r30, 0x0
    b       branch_0x802c6fc8

branch_0x802c6f68:
    lwz     r0, 0x78(r28)
    cmplw   r30, r0
    ble-    branch_0x802c6f84
    lwz     r3, -0x5ef4(r13)
    addi    r4, r31, 0x1a8
    bl      print__10JUTConsoleFPCc
    b       branch_0x802c6fe8

branch_0x802c6f84:
    lwz     r3, -0x5ef4(r13)
    mr      r5, r29
    lwz     r6, 0x0(r29)
    addi    r4, r31, 0x1bc
    lwz     r7, 0x4(r29)
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    lwz     r4, 0x4(r29)
    addi    r3, r28, 0x0
    li      r5, 0x0
    bl      showMapInfo_subroutine__12JUTExceptionFUlb
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
    lwz     r3, 0x74(r28)
    bl      waitTime__12JUTExceptionFl
    lwz     r29, 0x0(r29)
branch_0x802c6fc8:
    cmplwi  r29, 0x0
    beq-    branch_0x802c6fe8
    addis   r0, r29, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x802c6fe8
    cmplwi  r30, 0x10
    addi    r30, r30, 0x1
    blt+    branch_0x802c6f68
branch_0x802c6fe8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl showGPR__12JUTExceptionFP9OSContext
showGPR__12JUTExceptionFP9OSContext: # 0x802c7008
    mflr    r0
    lis     r5, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    subi    r30, r5, 0x6500
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    addi    r28, r4, 0x0
    lwz     r3, -0x5ef4(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802c70a8
    addi    r4, r30, 0x22c
    bl      print__10JUTConsoleFPCc
    li      r29, 0x0
    li      r31, 0x0
branch_0x802c704c:
    add     r7, r28, r31
    lwz     r3, -0x5ef4(r13)
    lwz     r6, 0x0(r7)
    mr      r5, r29
    lwz     r8, 0x2c(r7)
    addi    r4, r30, 0x254
    lwz     r10, 0x58(r7)
    addi    r7, r29, 0xb
    crxor   6, 6, 6
    addi    r9, r29, 0x16
    bl      print_f__10JUTConsoleFPCce
    addi    r29, r29, 0x1
    cmpwi   r29, 0xa
    addi    r31, r31, 0x4
    blt+    branch_0x802c704c
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x27c
    lwz     r6, 0x28(r28)
    crxor   6, 6, 6
    lwz     r8, 0x54(r28)
    li      r5, 0xa
    li      r7, 0x15
    bl      print_f__10JUTConsoleFPCce
branch_0x802c70a8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl showMapInfo_subroutine__12JUTExceptionFUlb
showMapInfo_subroutine__12JUTExceptionFUlb: # 0x802c70c8
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0x8000
    stwu    sp, -0x170(sp)
    stw     r31, 0x16c(sp)
    stw     r30, 0x168(sp)
    stw     r29, 0x164(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x160(sp)
    addi    r28, r4, 0x0
    cmplw   r28, r0
    blt-    branch_0x802c7108
    lis     r3, 0x8300
    subi    r0, r3, 0x1
    cmplw   r0, r28
    bge-    branch_0x802c7110
branch_0x802c7108:
    li      r3, 0x0
    b       branch_0x802c7208

branch_0x802c7110:
    clrlwi. r0, r29, 24
    addi    r30, rtoc, 0xc8
    bne-    branch_0x802c7120
    addi    r30, rtoc, 0xcc
branch_0x802c7120:
    addi    r3, r28, 0x0
    addi    r4, sp, 0x158
    addi    r5, sp, 0x154
    addi    r6, sp, 0x150
    addi    r7, sp, 0x15c
    bl      searchPartialModule__12JUTExceptionFUlPUlPUlPUlPUl
    addi    r31, r3, 0x0
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802c7180
    lwz     r3, 0x15c(sp)
    addi    r4, sp, 0x12c
    li      r5, 0x20
    bl      search_name_part__FPUcPUci
    lis     r4, 0x803b
    lwz     r3, -0x5ef4(r13)
    lwz     r7, 0x150(sp)
    subi    r4, r4, 0x6268
    lwz     r8, 0x154(sp)
    addi    r5, r30, 0x0
    crxor   6, 6, 6
    addi    r6, sp, 0x12c
    bl      print_f__10JUTConsoleFPCce
    li      r29, 0x0
branch_0x802c7180:
    lis     r3, 0x8040
    lwz     r0, 0x42cc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802c7204
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802c71c8
    stw     r29, 0x8(sp)
    addi    r3, sp, 0x12c
    addi    r6, sp, 0x128
    lwz     r4, 0x150(sp)
    addi    r7, sp, 0x124
    lwz     r5, 0x154(sp)
    addi    r8, sp, 0x24
    li      r9, 0x100
    li      r10, 0x1
    bl      queryMapAddress__12JUTExceptionFPcUllPUlPUlPcUlbb
    b       branch_0x802c71f0

branch_0x802c71c8:
    stw     r29, 0x8(sp)
    addi    r4, r28, 0x0
    addi    r6, sp, 0x128
    addi    r7, sp, 0x124
    addi    r8, sp, 0x24
    li      r3, 0x0
    li      r5, -0x1
    li      r9, 0x100
    li      r10, 0x1
    bl      queryMapAddress__12JUTExceptionFPcUllPUlPUlPcUlbb
branch_0x802c71f0:
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802c7204
    li      r3, 0x1
    b       branch_0x802c7208

branch_0x802c7204:
    li      r3, 0x0
branch_0x802c7208:
    lwz     r0, 0x174(sp)
    lwz     r31, 0x16c(sp)
    lwz     r30, 0x168(sp)
    mtlr    r0
    lwz     r29, 0x164(sp)
    lwz     r28, 0x160(sp)
    addi    sp, sp, 0x170
    blr


.globl showGPRMap__12JUTExceptionFP9OSContext
showGPRMap__12JUTExceptionFP9OSContext: # 0x802c7228
    mflr    r0
    lis     r5, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r23, 0x14(sp)
    addi    r23, r3, 0x0
    addi    r24, r4, 0x0
    subi    r28, r5, 0x6500
    lwz     r0, -0x5ef4(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c7304
    mr      r3, r0
    addi    r4, r28, 0x2b0
    li      r27, 0x0
    bl      print__10JUTConsoleFPCc
    lis     r3, 0x8300
    subi    r30, r3, 0x1
    li      r26, 0x0
    li      r31, 0x0
    lis     r29, 0x8000
branch_0x802c7278:
    lwzx    r25, r24, r31
    cmplw   r25, r29
    blt-    branch_0x802c72e0
    cmplw   r30, r25
    blt-    branch_0x802c72e0
    lwz     r3, -0x5ef4(r13)
    addi    r5, r26, 0x0
    addi    r6, r25, 0x0
    crxor   6, 6, 6
    addi    r4, r28, 0x2dc
    li      r27, 0x1
    bl      print_f__10JUTConsoleFPCce
    addi    r3, r23, 0x0
    addi    r4, r25, 0x0
    li      r5, 0x1
    bl      showMapInfo_subroutine__12JUTExceptionFUlb
    clrlwi. r0, r3, 24
    bne-    branch_0x802c72cc
    lwz     r3, -0x5ef4(r13)
    addi    r4, r28, 0x2ec
    bl      print__10JUTConsoleFPCc
branch_0x802c72cc:
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
    lwz     r3, 0x74(r23)
    bl      waitTime__12JUTExceptionFl
branch_0x802c72e0:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x1f
    addi    r31, r31, 0x4
    blt+    branch_0x802c7278
    clrlwi. r0, r27, 24
    bne-    branch_0x802c7304
    lwz     r3, -0x5ef4(r13)
    addi    r4, r28, 0x300
    bl      print__10JUTConsoleFPCc
branch_0x802c7304:
    lmw     r23, 0x14(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl readPad__12JUTExceptionFPUlPUl
readPad__12JUTExceptionFPUlPUl: # 0x802c7318
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x3c8(sp)
    stmw    r23, 0x3a4(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    li      r31, 0x0
    bl      OSGetTime
    lis     r5, 0x8000
    lwz     r0, 0xf8(r5)
    lis     r5, 0x1062
    addi    r5, r5, 0x4dd3
    srwi    r0, r0, 2
    mulhwu  r0, r5, r0
    addi    r23, r4, 0x0
    addi    r24, r3, 0x0
    srwi    r25, r0, 6
    li      r26, 0x32
    li      r27, 0x0
branch_0x802c7368:
    bl      OSGetTime
    subfc   r4, r23, r4
    subfe   r3, r24, r3
    addi    r6, r25, 0x0
    li      r5, 0x0
    bl      __div2i
    xoris   r5, r3, 0x8000
    xoris   r3, r27, 0x8000
    subfc   r0, r26, r4
    subfe   r3, r3, r5
    subfe   r3, r5, r5
    neg.    r3, r3
    bne+    branch_0x802c7368
    lwz     r3, 0x68(r28)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x802c7468
    addi    r3, sp, 0x2f8
    li      r4, 0x0
    bl      __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
    addi    r3, sp, 0x250
    li      r4, 0x1
    bl      __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
    addi    r3, sp, 0x1a8
    li      r4, 0x2
    bl      __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
    addi    r3, sp, 0x100
    li      r4, 0x3
    bl      __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
    bl      read__10JUTGamePadFv
    cmplwi  r29, 0x0
    beq-    branch_0x802c7408
    lwz     r3, 0x314(sp)
    lwz     r0, 0x26c(sp)
    lwz     r4, 0x1c4(sp)
    or      r0, r3, r0
    lwz     r3, 0x11c(sp)
    or      r0, r4, r0
    or      r0, r3, r0
    stw     r0, 0x0(r29)
branch_0x802c7408:
    cmplwi  r30, 0x0
    beq-    branch_0x802c7430
    lwz     r3, 0x310(sp)
    lwz     r0, 0x268(sp)
    lwz     r4, 0x1c0(sp)
    or      r0, r3, r0
    lwz     r3, 0x118(sp)
    or      r0, r4, r0
    or      r0, r3, r0
    stw     r0, 0x0(r30)
branch_0x802c7430:
    addi    r3, sp, 0x100
    li      r31, 0x1
    li      r4, -0x1
    bl      __dt__10JUTGamePadFv
    addi    r3, sp, 0x1a8
    li      r4, -0x1
    bl      __dt__10JUTGamePadFv
    addi    r3, sp, 0x250
    li      r4, -0x1
    bl      __dt__10JUTGamePadFv
    addi    r3, sp, 0x2f8
    li      r4, -0x1
    bl      __dt__10JUTGamePadFv
    b       branch_0x802c74ec

branch_0x802c7468:
    lwz     r4, 0x6c(r28)
    cmpwi   r4, 0x0
    blt-    branch_0x802c74b4
    addi    r3, sp, 0x58
    bl      __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
    bl      read__10JUTGamePadFv
    cmplwi  r29, 0x0
    beq-    branch_0x802c7490
    lwz     r0, 0x74(sp)
    stw     r0, 0x0(r29)
branch_0x802c7490:
    cmplwi  r30, 0x0
    beq-    branch_0x802c74a0
    lwz     r0, 0x70(sp)
    stw     r0, 0x0(r30)
branch_0x802c74a0:
    addi    r3, sp, 0x58
    li      r31, 0x1
    li      r4, -0x1
    bl      __dt__10JUTGamePadFv
    b       branch_0x802c74ec

branch_0x802c74b4:
    cmplwi  r3, 0x0
    beq-    branch_0x802c74ec
    bl      read__10JUTGamePadFv
    cmplwi  r29, 0x0
    beq-    branch_0x802c74d4
    lwz     r3, 0x68(r28)
    lwz     r0, 0x1c(r3)
    stw     r0, 0x0(r29)
branch_0x802c74d4:
    cmplwi  r30, 0x0
    beq-    branch_0x802c74e8
    lwz     r3, 0x68(r28)
    lwz     r0, 0x18(r3)
    stw     r0, 0x0(r30)
branch_0x802c74e8:
    li      r31, 0x1
branch_0x802c74ec:
    mr      r3, r31
    lmw     r23, 0x3a4(sp)
    lwz     r0, 0x3cc(sp)
    addi    sp, sp, 0x3c8
    mtlr    r0
    blr


.globl printContext__12JUTExceptionFUsP9OSContextUlUl
printContext__12JUTExceptionFUsP9OSContextUlUl: # 0x802c7504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r21, 0x5c(sp)
    mr      r31, r3
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    lwz     r8, 0x68(r3)
    lis     r3, 0x803b
    subi    r30, r3, 0x6500
    addis   r0, r8, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x802c7548
    li      r0, 0x1
    b       branch_0x802c7570

branch_0x802c7548:
    lwz     r0, 0x6c(r31)
    cmpwi   r0, 0x0
    blt-    branch_0x802c755c
    li      r0, 0x1
    b       branch_0x802c7570

branch_0x802c755c:
    cmplwi  r8, 0x0
    beq-    branch_0x802c756c
    li      r0, 0x1
    b       branch_0x802c7570

branch_0x802c756c:
    li      r0, 0x0
branch_0x802c7570:
    clrlwi. r0, r0, 24
    beq-    branch_0x802c7580
    li      r22, 0x0
    b       branch_0x802c7584

branch_0x802c7580:
    li      r22, 0x1
branch_0x802c7584:
    lwz     r3, -0x5f08(r13)
    lwz     r3, 0x64(r3)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802c7994
    lwz     r3, -0x5ef4(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802c7994
    lwz     r5, 0x60(r31)
    addi    r4, r30, 0x344
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
    lis     r3, 0x803e
    clrlslwi  r4, r26, 16, 2
    addi    r0, r3, 0x238
    add     r24, r0, r4
    clrlwi  r25, r22, 24
    li      r23, 0x0
branch_0x802c75cc:
    lwz     r3, -0x5ef4(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802c761c
    lwz     r6, 0x0(r24)
    addi    r5, r27, 0x0
    crxor   6, 6, 6
    addi    r4, r30, 0x1d4
    bl      print_f__10JUTConsoleFPCce
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x1f4
    lwz     r5, 0x198(r27)
    crxor   6, 6, 6
    lwz     r6, 0x19c(r27)
    bl      print_f__10JUTConsoleFPCce
    lwz     r3, -0x5ef4(r13)
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    crxor   6, 6, 6
    addi    r4, r30, 0x210
    bl      print_f__10JUTConsoleFPCce
branch_0x802c761c:
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
    lwz     r3, 0x70(r31)
    bl      waitTime__12JUTExceptionFl
    lwz     r0, 0x80(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x802c765c
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    bl      showGPR__12JUTExceptionFP9OSContext
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
    lwz     r3, 0x70(r31)
    bl      waitTime__12JUTExceptionFl
branch_0x802c765c:
    lwz     r0, 0x80(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802c7688
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    bl      showGPRMap__12JUTExceptionFP9OSContext
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
    lwz     r3, 0x70(r31)
    bl      waitTime__12JUTExceptionFl
branch_0x802c7688:
    lwz     r0, 0x80(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802c76d4
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    bl      showFloat__12JUTExceptionFP9OSContext
    lwz     r3, -0x5ef4(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802c76c0
    lwz     r5, -0x5ef0(r13)
    addi    r4, r30, 0x328
    lwz     r6, -0x5eec(r13)
    crxor   6, 6, 6
    bl      print_f__10JUTConsoleFPCce
branch_0x802c76c0:
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
    lwz     r3, 0x70(r31)
    bl      waitTime__12JUTExceptionFl
branch_0x802c76d4:
    lwz     r0, 0x80(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802c7700
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    bl      showStack__12JUTExceptionFP9OSContext
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
    lwz     r3, 0x74(r31)
    bl      waitTime__12JUTExceptionFl
branch_0x802c7700:
    lwz     r3, -0x5ef4(r13)
    addi    r4, r30, 0x37c
    bl      print__10JUTConsoleFPCc
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
    cmpwi   r23, 0x0
    bne-    branch_0x802c775c
    lwz     r0, -0x5f00(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c775c
    bl      OSEnableInterrupts
    lwz     r12, -0x5f00(r13)
    addi    r21, r3, 0x0
    addi    r3, r26, 0x0
    mtlr    r12
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    li      r23, 0x1
    blrl
    mr      r3, r21
    bl      OSRestoreInterrupts
branch_0x802c775c:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802c7784
    cmplwi  r25, 0x0
    beq-    branch_0x802c7784
    lwz     r3, -0x5ef4(r13)
    lwzu    r0, 0x58(r3)
    clrlwi  r0, r0, 31
    stw     r0, 0x0(r3)
    b       branch_0x802c75cc

branch_0x802c7784:
    clrlwi. r0, r22, 24
    bne-    branch_0x802c78d4
    bl      OSEnableInterrupts
    li      r21, 0x0
    li      r23, 0x0
branch_0x802c7798:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x48
    addi    r5, sp, 0x4c
    bl      readPad__12JUTExceptionFPUlPUl
    lwz     r0, 0x48(sp)
    li      r3, 0x0
    cmplwi  r0, 0x100
    bne-    branch_0x802c77c8
    lwz     r3, -0x5ef4(r13)
    lwz     r4, 0x24(r3)
    bl      scroll__10JUTConsoleFi
    li      r3, 0x1
branch_0x802c77c8:
    lwz     r0, 0x48(sp)
    cmplwi  r0, 0x200
    bne-    branch_0x802c77e8
    lwz     r3, -0x5ef4(r13)
    lwz     r0, 0x24(r3)
    neg     r4, r0
    bl      scroll__10JUTConsoleFi
    li      r3, 0x1
branch_0x802c77e8:
    lwz     r0, 0x4c(sp)
    cmplwi  r0, 0x8
    bne-    branch_0x802c7840
    cmpwi   r21, 0x3
    bge-    branch_0x802c7804
    li      r4, -0x1
    b       branch_0x802c7828

branch_0x802c7804:
    cmpwi   r21, 0x5
    bge-    branch_0x802c7814
    li      r4, -0x2
    b       branch_0x802c7828

branch_0x802c7814:
    cmpwi   r21, 0x7
    bge-    branch_0x802c7824
    li      r4, -0x4
    b       branch_0x802c7828

branch_0x802c7824:
    li      r4, -0x8
branch_0x802c7828:
    lwz     r3, -0x5ef4(r13)
    bl      scroll__10JUTConsoleFi
    li      r3, 0x1
    li      r23, 0x0
    addi    r21, r21, 0x1
    b       branch_0x802c789c

branch_0x802c7840:
    cmplwi  r0, 0x4
    bne-    branch_0x802c7894
    cmpwi   r23, 0x3
    bge-    branch_0x802c7858
    li      r4, 0x1
    b       branch_0x802c787c

branch_0x802c7858:
    cmpwi   r23, 0x5
    bge-    branch_0x802c7868
    li      r4, 0x2
    b       branch_0x802c787c

branch_0x802c7868:
    cmpwi   r23, 0x7
    bge-    branch_0x802c7878
    li      r4, 0x4
    b       branch_0x802c787c

branch_0x802c7878:
    li      r4, 0x8
branch_0x802c787c:
    lwz     r3, -0x5ef4(r13)
    bl      scroll__10JUTConsoleFi
    li      r3, 0x1
    li      r21, 0x0
    addi    r23, r23, 0x1
    b       branch_0x802c789c

branch_0x802c7894:
    li      r21, 0x0
    li      r23, 0x0
branch_0x802c789c:
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802c78c8
    bl      VIGetRetraceCount
    mr      r22, r3
branch_0x802c78b0:
    bl      VIGetRetraceCount
    cmplw   r22, r3
    beq+    branch_0x802c78b0
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
branch_0x802c78c8:
    li      r3, 0x1e
    bl      waitTime__12JUTExceptionFl
    b       branch_0x802c7798

branch_0x802c78d4:
    lwz     r3, -0x5ef4(r13)
    lwz     r0, 0x24(r3)
    neg     r4, r0
    bl      scroll__10JUTConsoleFi
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
    li      r3, 0x7d0
    bl      waitTime__12JUTExceptionFl
branch_0x802c78f8:
    lwz     r3, -0x5ef4(r13)
    lwz     r21, 0x48(r3)
    b       branch_0x802c7954

branch_0x802c7904:
    lwz     r3, -0x5ef4(r13)
    li      r4, 0x1
    bl      scroll__10JUTConsoleFi
    lwz     r3, -0x5dc8(r13)
    li      r4, 0x1
    bl      drawDirect__17JUTConsoleManagerCFb
    lwz     r24, -0x5ef4(r13)
    lwz     r23, 0x48(r24)
    mr      r3, r24
    bl      getLineOffset__10JUTConsoleCFv
    addi    r22, r3, 0x0
    addi    r3, r24, 0x0
    bl      getUsedLine__10JUTConsoleCFv
    subf    r3, r23, r3
    addi    r0, r3, 0x1
    cmplw   r0, r22
    ble-    branch_0x802c795c
    li      r3, 0x14
    bl      waitTime__12JUTExceptionFl
    subi    r21, r21, 0x1
branch_0x802c7954:
    cmplwi  r21, 0x0
    bne+    branch_0x802c7904
branch_0x802c795c:
    li      r3, 0xbb8
    bl      waitTime__12JUTExceptionFl
    lwz     r24, -0x5ef4(r13)
    lwz     r23, 0x48(r24)
    mr      r3, r24
    bl      getLineOffset__10JUTConsoleCFv
    addi    r22, r3, 0x0
    addi    r3, r24, 0x0
    bl      getUsedLine__10JUTConsoleCFv
    subf    r3, r23, r3
    addi    r0, r3, 0x1
    cmplw   r0, r22
    ble+    branch_0x802c78d4
    b       branch_0x802c78f8

branch_0x802c7994:
    lmw     r21, 0x5c(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl waitTime__12JUTExceptionFl
waitTime__12JUTExceptionFl: # 0x802c79a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    mr.     r27, r3
    beq-    branch_0x802c7a20
    bl      OSGetTime
    lis     r5, 0x8000
    lwz     r0, 0xf8(r5)
    lis     r5, 0x1062
    addi    r5, r5, 0x4dd3
    srwi    r0, r0, 2
    mulhwu  r0, r5, r0
    addi    r29, r4, 0x0
    addi    r30, r3, 0x0
    srawi   r28, r27, 31
    srwi    r31, r0, 6
branch_0x802c79ec:
    bl      OSGetTime
    subfc   r4, r29, r4
    subfe   r3, r30, r3
    addi    r6, r31, 0x0
    li      r5, 0x0
    bl      __div2i
    xoris   r5, r3, 0x8000
    xoris   r3, r28, 0x8000
    subfc   r0, r27, r4
    subfe   r3, r3, r5
    subfe   r3, r5, r5
    neg.    r3, r3
    bne+    branch_0x802c79ec
branch_0x802c7a20:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl createFB__12JUTExceptionFv
createFB__12JUTExceptionFv: # 0x802c7a34
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    subi    r30, r4, 0x6f8c
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    bl      OSGetArenaHi
    lhz     r4, 0x4(r30)
    lhz     r0, 0x8(r30)
    addi    r4, r4, 0xf
    rlwinm  r4, r4, 0, 16, 27
    mullw   r0, r4, r0
    slwi    r4, r0, 1
    subf    r0, r4, r3
    clrrwi  r5, r0, 5
    subi    r0, r5, 0x14
    clrrwi. r3, r0, 5
    addi    r7, r4, 0x0
    addi    r29, r5, 0x0
    addi    r28, r3, 0x0
    beq-    branch_0x802c7aa8
    addi    r4, r30, 0x0
    addi    r6, r29, 0x0
    li      r5, 0x1
    bl      __ct__13JUTExternalFBFP16_GXRenderModeObj8_GXGammaPvUl
branch_0x802c7aa8:
    lwz     r3, 0x64(r31)
    mr      r4, r28
    lhz     r5, 0x4(r3)
    lhz     r6, 0x6(r3)
    bl      changeFrameBuffer__14JUTDirectPrintFPvUsUs
    mr      r3, r30
    bl      VIConfigure
    mr      r3, r29
    bl      VISetNextFrameBuffer
    li      r3, 0x0
    bl      VISetBlack
    bl      VIFlush
    stw     r28, 0x60(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl getFpscr__12JUTExceptionFv
getFpscr__12JUTExceptionFv: # 0x802c7afc
    stwu    sp, -0x10(sp)
    mfmsr   r5
    ori     r5, r5, 0x2000
    mtmsr   r5
    isync
    mffs    f1
    stfd    f1, 0x8(sp)
    lwz     r3, 0xc(sp)
    addi    sp, sp, 0x10
    blr


.globl setPreUserCallback__12JUTExceptionFPFUsP9OSContextUlUl_v
setPreUserCallback__12JUTExceptionFPFUsP9OSContextUlUl_v: # 0x802c7b24
    lwz     r0, -0x5f04(r13)
    stw     r3, -0x5f04(r13)
    mr      r3, r0
    blr


.globl appendMapFile__12JUTExceptionFPc
appendMapFile__12JUTExceptionFPc: # 0x802c7b34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr.     r30, r3
    beq-    branch_0x802c7bb0
    lis     r3, 0x8040
    lwz     r31, 0x42cc(r3)
    b       branch_0x802c7b78

branch_0x802c7b5c:
    lwz     r4, 0x0(r31)
    mr      r3, r30
    lwz     r4, 0x0(r4)
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x802c7bb0
    lwz     r31, 0xc(r31)
branch_0x802c7b78:
    cmplwi  r31, 0x0
    bne+    branch_0x802c7b5c
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802c7ba0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4
    bl      __ct__10JSUPtrLinkFPv
    stw     r30, 0x0(r31)
branch_0x802c7ba0:
    lis     r3, 0x8040
    addi    r3, r3, 0x42cc
    addi    r4, r31, 0x4
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x802c7bb0:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl queryMapAddress__12JUTExceptionFPcUllPUlPUlPcUlbb
queryMapAddress__12JUTExceptionFPcUllPUlPUlPcUlbb: # 0x802c7bc8
    mflr    r0
    stw     r0, 0x4(sp)
    mr.     r0, r3
    stwu    sp, -0xb8(sp)
    stmw    r24, 0x98(sp)
    addi    r24, r4, 0x0
    lbz     r31, 0xc3(sp)
    addi    r25, r5, 0x0
    addi    r26, r6, 0x0
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    beq-    branch_0x802c7c54
    addi    r3, sp, 0x48
    mr      r4, r0
    bl      strcpy
    addi    r3, sp, 0x48
    addi    r4, rtoc, 0xd0
    bl      strcat
    stw     r31, 0x8(sp)
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    addi    r6, r26, 0x0
    addi    r7, r27, 0x0
    addi    r8, r28, 0x0
    addi    r9, r29, 0x0
    addi    r10, r30, 0x0
    addi    r3, sp, 0x48
    bl      queryMapAddress_single__12JUTExceptionFPcUllPUlPUlPcUlbb
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802c7ca8
    li      r3, 0x1
    b       branch_0x802c7cac

branch_0x802c7c54:
    lis     r3, 0x8040
    addi    r3, r3, 0x42cc
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802c7ca8
    lwz     r3, 0x0(r3)
    addi    r4, r24, 0x0
    addi    r6, r26, 0x0
    stw     r31, 0x8(sp)
    addi    r7, r27, 0x0
    addi    r8, r28, 0x0
    lwz     r3, 0x0(r3)
    addi    r9, r29, 0x0
    addi    r10, r30, 0x0
    li      r5, -0x1
    bl      queryMapAddress_single__12JUTExceptionFPcUllPUlPUlPcUlbb
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802c7ca8
    li      r3, 0x1
    b       branch_0x802c7cac

branch_0x802c7ca8:
    li      r3, 0x0
branch_0x802c7cac:
    lmw     r24, 0x98(sp)
    lwz     r0, 0xbc(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl queryMapAddress_single__12JUTExceptionFPcUllPUlPUlPcUlbb
queryMapAddress_single__12JUTExceptionFPcUllPUlPUlPcUlbb: # 0x802c7cc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xaf8(sp)
    stmw    r14, 0xab0(sp)
    mr.     r22, r3
    lbz     r18, 0xb03(sp)
    addi    r30, r4, 0x0
    stb     r10, 0xaa8(sp)
    addi    r23, r5, 0x0
    addi    r20, r6, 0x0
    addi    r19, r7, 0x0
    addi    r21, r8, 0x0
    addi    r14, r9, 0x0
    bne-    branch_0x802c7d00
    li      r3, 0x0
    b       branch_0x802c7ff8

branch_0x802c7d00:
    addi    r3, sp, 0x238
    bl      __ct__13JUTDirectFileFv
    addi    r4, r22, 0x0
    addi    r3, sp, 0x238
    li      r22, 0x0
    bl      fopen__13JUTDirectFileFPc
    clrlwi. r0, r3, 24
    bne-    branch_0x802c7d34
    addi    r3, sp, 0x238
    li      r4, -0x1
    bl      __dt__13JUTDirectFileFv
    li      r3, 0x0
    b       branch_0x802c7ff8

branch_0x802c7d34:
    lis     r3, 0x803b
    lbz     r17, 0xaa8(sp)
    subi    r24, r14, 0x1
    addi    r26, sp, 0x39
    addi    r27, sp, 0x4b
    addi    r28, sp, 0x43
    addi    r16, sp, 0x56
    addi    r25, sp, 0x28
    subi    r15, r3, 0x6160
    li      r14, 0x0
branch_0x802c7d5c:
    li      r29, 0x0
    addi    r22, r22, 0x1
branch_0x802c7d64:
    addi    r3, sp, 0x238
    addi    r4, sp, 0x38
    li      r5, 0x200
    bl      fgets__13JUTDirectFileFPvi
    cmpwi   r3, 0x0
    blt-    branch_0x802c7e10
    lbz     r0, 0x38(sp)
    cmpwi   r0, 0x2e
    bne+    branch_0x802c7d64
    addi    r4, r26, 0x0
    addi    r5, sp, 0x28
    li      r3, 0x0
    b       branch_0x802c7dbc

branch_0x802c7d98:
    stb     r6, 0x0(r5)
    lbz     r0, 0x0(r4)
    cmpwi   r0, 0x20
    beq-    branch_0x802c7dc8
    cmpwi   r3, 0xf
    beq-    branch_0x802c7dc8
    addi    r3, r3, 0x1
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
branch_0x802c7dbc:
    lbz     r6, 0x0(r4)
    extsb.  r0, r6
    bne+    branch_0x802c7d98
branch_0x802c7dc8:
    li      r0, 0x0
    stbx    r0, r25, r3
    lbz     r0, 0x0(r4)
    extsb.  r0, r0
    beq-    branch_0x802c7e10
    lbz     r0, 0x1(r4)
    cmpwi   r0, 0x73
    bne+    branch_0x802c7d64
    lbz     r0, 0x2(r4)
    cmpwi   r0, 0x65
    bne+    branch_0x802c7d64
    lbz     r0, 0x3(r4)
    cmpwi   r0, 0x63
    bne+    branch_0x802c7d64
    lbz     r0, 0x4(r4)
    cmpwi   r0, 0x74
    bne+    branch_0x802c7d64
    li      r29, 0x1
branch_0x802c7e10:
    clrlwi. r0, r29, 24
    beq-    branch_0x802c7fcc
    cmpwi   r23, 0x0
    blt-    branch_0x802c7e28
    cmpw    r23, r22
    bne+    branch_0x802c7d5c
branch_0x802c7e28:
    addi    r3, sp, 0x238
    addi    r4, sp, 0x38
    li      r5, 0x200
    bl      fgets__13JUTDirectFileFPvi
    cmpwi   r3, 0x4
    ble-    branch_0x802c7f9c
    cmpwi   r3, 0x1c
    blt+    branch_0x802c7e28
    lbz     r0, 0x54(sp)
    cmpwi   r0, 0x34
    bne+    branch_0x802c7e28
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0x10
    bl      strtol
    lbz     r0, 0x4a(sp)
    li      r4, 0x0
    li      r5, 0x10
    extsb   r6, r0
    subi    r0, r6, 0x30
    slwi    r0, r0, 28
    or      r31, r0, r3
    addi    r3, r28, 0x0
    bl      strtol
    cmplw   r31, r30
    addi    r29, r3, 0x0
    bgt+    branch_0x802c7e28
    add     r0, r31, r29
    cmplw   r30, r0
    bge+    branch_0x802c7e28
    cmplwi  r20, 0x0
    beq-    branch_0x802c7eac
    stw     r31, 0x0(r20)
branch_0x802c7eac:
    cmplwi  r19, 0x0
    beq-    branch_0x802c7eb8
    stw     r29, 0x0(r19)
branch_0x802c7eb8:
    cmplwi  r21, 0x0
    beq-    branch_0x802c7f98
    addi    r3, r16, 0x0
    addi    r4, r21, 0x0
    li      r5, 0x0
    li      r0, 0x20
    b       branch_0x802c7f2c

branch_0x802c7ed4:
    lbz     r6, 0x0(r3)
    cmplwi  r6, 0x20
    bge-    branch_0x802c7ee8
    cmplwi  r6, 0x9
    bne-    branch_0x802c7f34
branch_0x802c7ee8:
    cmpwi   r6, 0x20
    beq-    branch_0x802c7ef8
    cmplwi  r6, 0x9
    bne-    branch_0x802c7f1c
branch_0x802c7ef8:
    cmplwi  r5, 0x0
    beq-    branch_0x802c7f1c
    lbz     r6, -0x1(r4)
    cmpwi   r6, 0x20
    beq-    branch_0x802c7f28
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    addi    r5, r5, 0x1
    b       branch_0x802c7f28

branch_0x802c7f1c:
    stb     r6, 0x0(r4)
    addi    r4, r4, 0x1
    addi    r5, r5, 0x1
branch_0x802c7f28:
    addi    r3, r3, 0x1
branch_0x802c7f2c:
    cmplw   r5, r24
    blt+    branch_0x802c7ed4
branch_0x802c7f34:
    cmplwi  r5, 0x0
    beq-    branch_0x802c7f4c
    lbz     r0, -0x1(r4)
    cmpwi   r0, 0x20
    bne-    branch_0x802c7f4c
    subi    r4, r4, 0x1
branch_0x802c7f4c:
    li      r0, 0x0
    cmplwi  r17, 0x0
    stb     r0, 0x0(r4)
    beq-    branch_0x802c7f98
    clrlwi. r0, r18, 24
    beq-    branch_0x802c7f70
    lwz     r3, -0x5ef4(r13)
    addi    r4, rtoc, 0xc8
    bl      print__10JUTConsoleFPCc
branch_0x802c7f70:
    lwz     r3, -0x5ef4(r13)
    addi    r4, r15, 0x0
    addi    r5, r30, 0x0
    crxor   6, 6, 6
    addi    r7, r31, 0x0
    addi    r8, r29, 0x0
    addi    r9, r21, 0x0
    addi    r6, sp, 0x28
    bl      print_f__10JUTConsoleFPCce
    li      r18, 0x0
branch_0x802c7f98:
    li      r14, 0x1
branch_0x802c7f9c:
    cmpwi   r23, 0x0
    blt+    branch_0x802c7d5c
    cmpw    r23, r22
    bne+    branch_0x802c7d5c
    lbz     r0, 0xaa8(sp)
    clrlwi. r0, r0, 24
    beq-    branch_0x802c7fcc
    clrlwi. r0, r18, 24
    beq-    branch_0x802c7fcc
    lwz     r3, -0x5ef4(r13)
    addi    r4, rtoc, 0xc8
    bl      print__10JUTConsoleFPCc
branch_0x802c7fcc:
    addi    r3, sp, 0x238
    bl      fclose__13JUTDirectFileFv
    clrlwi. r0, r14, 24
    beq-    branch_0x802c7fe4
    li      r18, 0x1
    b       branch_0x802c7fe8

branch_0x802c7fe4:
    li      r18, 0x0
branch_0x802c7fe8:
    addi    r3, sp, 0x238
    li      r4, -0x1
    bl      __dt__13JUTDirectFileFv
    mr      r3, r18
branch_0x802c7ff8:
    lmw     r14, 0xab0(sp)
    lwz     r0, 0xafc(sp)
    addi    sp, sp, 0xaf8
    mtlr    r0
    blr


.globl createConsole__12JUTExceptionFPvUl
createConsole__12JUTExceptionFPvUl: # 0x802c800c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr.     r30, r3
    beq-    branch_0x802c80d4
    cmplwi  r31, 0x0
    bne-    branch_0x802c8038
    b       branch_0x802c80d4

branch_0x802c8038:
    addi    r3, r31, 0x0
    li      r4, 0x32
    bl      getLineFromObjectSize__10JUTConsoleFUlUi
    cmplwi  r3, 0x0
    beq-    branch_0x802c80d4
    stw     r30, -0x5efc(r13)
    li      r3, 0x32
    stw     r31, -0x5ef8(r13)
    lwz     r4, -0x5efc(r13)
    lwz     r5, -0x5ef8(r13)
    bl      create__10JUTConsoleFUiPvUl
    stw     r3, -0x5ef4(r13)
    lwz     r3, -0x5dc8(r13)
    lwz     r4, -0x5ef4(r13)
    bl      setDirectConsole__17JUTConsoleManagerFP10JUTConsole
    lwz     r5, -0x5ef4(r13)
    li      r4, 0xf
    lfs     f0, 0xd8(rtoc)
    li      r3, 0x1a
    li      r0, 0x17
    stfs    f0, 0x50(r5)
    lfs     f0, 0xdc(rtoc)
    stfs    f0, 0x54(r5)
    lwz     r5, -0x5ef4(r13)
    stw     r4, 0x40(r5)
    stw     r3, 0x44(r5)
    lwz     r3, -0x5ef4(r13)
    stw     r0, 0x48(r3)
    lwz     r0, 0x48(r3)
    lwz     r4, 0x24(r3)
    cmplw   r0, r4
    ble-    branch_0x802c80bc
    stw     r4, 0x48(r3)
branch_0x802c80bc:
    lwz     r3, -0x5ef4(r13)
    li      r4, 0x1
    li      r0, 0x3
    stb     r4, 0x64(r3)
    lwz     r3, -0x5ef4(r13)
    stw     r0, 0x58(r3)
branch_0x802c80d4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __ct__13JUTExternalFBFP16_GXRenderModeObj8_GXGammaPvUl
__ct__13JUTExternalFBFP16_GXRenderModeObj8_GXGammaPvUl: # 0x802c80ec
    stw     r4, 0x0(r3)
    li      r4, 0x1
    li      r0, 0x0
    stw     r7, 0x4(r3)
    sth     r4, 0xc(r3)
    sth     r5, 0xe(r3)
    stb     r0, 0x10(r3)
    blr


.globl __dt__12JUTExceptionFv
__dt__12JUTExceptionFv: # 0x802c810c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c8154
    lis     r3, 0x803e
    addi    r0, r3, 0x278
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__9JKRThreadFv
    extsh.  r0, r31
    ble-    branch_0x802c8154
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c8154:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_JUTException_cpp
__sinit_JUTException_cpp: # 0x802c8170
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x42cc
    addi    r3, r31, 0x0
    bl      __ct__10JSUPtrListFb
    lis     r4, 0x802d
    lis     r3, 0x8040
    subi    r5, r3, 0x2a54
    subi    r4, r4, 0x7e40
    addi    r3, r31, 0x0
    bl      __register_global_object
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __dt__39JSUList_Q212JUTException12JUTExMapFile_Fv
__dt__39JSUList_Q212JUTException12JUTExMapFile_Fv: # 0x802c81c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c81fc
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x802c81fc
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c81fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

