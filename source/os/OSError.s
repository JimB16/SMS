
.globl OSReport
OSReport: # 0x80344644
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    bne-    cr1, branch_0x80344674
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x80344674:
    stw     r3, 0x8(sp)
    lis     r0, 0x100
    stw     r4, 0xc(sp)
    addi    r4, sp, 0x6c
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    stw     r0, 0x6c(sp)
    addi    r0, sp, 0x80
    stw     r0, 0x70(sp)
    addi    r0, sp, 0x8
    stw     r0, 0x74(sp)
    bl      vprintf
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl OSPanic
OSPanic: # 0x803446c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    stw     r29, 0x84(sp)
    stw     r28, 0x80(sp)
    bne-    cr1, branch_0x80344704
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x80344704:
    stw     r3, 0x8(sp)
    addi    r28, r3, 0x0
    addi    r30, r4, 0x0
    stw     r4, 0xc(sp)
    addi    r29, r5, 0x0
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    lis     r6, 0x803e
    addi    r31, r6, 0x7320
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    bl      OSDisableInterrupts
    lis     r0, 0x300
    stw     r0, 0x74(sp)
    addi    r0, sp, 0x98
    addi    r4, sp, 0x74
    stw     r0, 0x78(sp)
    addi    r0, sp, 0x8
    addi    r3, r29, 0x0
    stw     r0, 0x7c(sp)
    bl      vprintf
    addi    r3, r31, 0x0
    crxor   6, 6, 6
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    bl      OSReport
    addi    r3, r31, 0x18
    crxor   6, 6, 6
    bl      OSReport
    li      r30, 0x0
    bl      OSGetStackPointer
    mr      r29, r3
    b       branch_0x803447ac

branch_0x80344790:
    lwz     r5, 0x0(r29)
    mr      r4, r29
    lwz     r6, 0x4(r29)
    addi    r3, r31, 0x40
    crxor   6, 6, 6
    bl      OSReport
    lwz     r29, 0x0(r29)
branch_0x803447ac:
    cmplwi  r29, 0x0
    beq-    branch_0x803447cc
    addis   r0, r29, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x803447cc
    cmplwi  r30, 0x10
    addi    r30, r30, 0x1
    blt+    branch_0x80344790
branch_0x803447cc:
    bl      PPCHalt
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl OSSetErrorHandler
OSSetErrorHandler: # 0x803447f0
    lis     r5, 0x8040
    clrlslwi  r3, r3, 16, 2
    addi    r0, r5, 0x25d0
    add     r5, r0, r3
    lwz     r3, 0x0(r5)
    stw     r4, 0x0(r5)
    blr


.globl __OSUnhandledException
__OSUnhandledException: # 0x8034480c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    mr      r31, r4
    addi    r25, r3, 0x0
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    lwz     r0, 0x19c(r4)
    lis     r4, 0x803e
    addi    r29, r4, 0x7320
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80344854
    addi    r3, r29, 0x5c
    crxor   6, 6, 6
    clrlwi  r4, r25, 24
    bl      OSReport
    b       branch_0x803448cc

branch_0x80344854:
    clrlwi  r30, r25, 24
    lis     r3, 0x8040
    clrlslwi  r4, r25, 24, 2
    addi    r0, r3, 0x25d0
    add     r28, r0, r4
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x803448a8
    bl      OSDisableScheduler
    lwz     r12, 0x0(r28)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    crxor   6, 6, 6
    mtlr    r12
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    blrl
    bl      OSEnableScheduler
    bl      __OSReschedule
    mr      r3, r31
    bl      OSLoadContext
branch_0x803448a8:
    clrlwi  r0, r25, 24
    cmplwi  r0, 0x8
    bne-    branch_0x803448bc
    mr      r3, r31
    bl      OSLoadContext
branch_0x803448bc:
    addi    r3, r29, 0x7c
    crxor   6, 6, 6
    clrlwi  r4, r25, 24
    bl      OSReport
branch_0x803448cc:
    subi    r3, r13, 0x7370
    crxor   6, 6, 6
    bl      OSReport
    mr      r3, r31
    bl      OSDumpContext
    addi    r4, r26, 0x0
    crxor   6, 6, 6
    addi    r5, r27, 0x0
    addi    r3, r29, 0x94
    bl      OSReport
    bl      OSGetTime
    addi    r5, r3, 0x0
    crxor   6, 6, 6
    addi    r6, r4, 0x0
    addi    r3, r29, 0xc8
    bl      OSReport
    clrlwi  r0, r25, 24
    cmplwi  r0, 0xf
    bgt-    branch_0x803449d8
    lis     r3, 0x803e
    addi    r3, r3, 0x75fc
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x80344930:		# jumptable 8034492C case 2
    lwz     r4, 0x198(r31)
    addi    r5, r27, 0x0
    addi    r3, r29, 0xd8
    crxor   6, 6, 6
    bl      OSReport
    b       branch_0x803449d8

branch_0x80344948:		# jumptable 8034492C case 3
lwz	  r4, 0x198(r31)
addi	  r3, r29, 0x138
crclr	  4*cr1+eq
bl	  OSReport
b	  def_8034492C	# jumptable 8034492C default case

branch_0x8034495C:		# jumptable 8034492C case 5
lwz	  r4, 0x198(r31)
addi	  r5, r27, 0
addi	  r3, r29, 0x184
crclr	  4*cr1+eq
bl	  OSReport
b	  def_8034492C	# jumptable 8034492C default case

branch_0x80344974:		# jumptable 8034492C case 6
lwz	  r4, 0x198(r31)
addi	  r5, r27, 0
addi	  r3, r29, 0x1E8
crclr	  4*cr1+eq
bl	  OSReport
b	  def_8034492C	# jumptable 8034492C default case

branch_0x8034498C:		# jumptable 8034492C case 15
addi	  r3, r13, -0x7370
crclr	  4*cr1+eq
bl	  OSReport
lis	  r30, -0x3400 # 0xCC005000
crclr	  4*cr1+eq
addi	  r31, r30, 0x5000 # 0xCC005000
lhz	  r4, 0x5030(r30)
addi	  r3, r29, 0x248
lhz	  r5, 0x5032(r30)
bl	  OSReport
lhz	  r4, 0x20(r31)
addi	  r3, r29, 0x268
lhz	  r5, 0x22(r31)
crclr	  4*cr1+eq
bl	  OSReport
lwz	  r4, 0x6014(r30)
crclr	  4*cr1+eq
addi	  r3, r29, 0x288
bl	  OSReport

def_8034492C:		# jumptable 8034492C default case
branch_0x803449d8:
    lha     r4, -0x5a08(r13)
    addi    r3, r29, 0x2a4
    crxor   6, 6, 6
    lwz     r5, -0x5a0c(r13)
    lwz     r7, -0x5a00(r13)
    lwz     r8, -0x59fc(r13)
    bl      OSReport
    bl      PPCHalt
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr

