
.globl __check_pad3
__check_pad3: # 0x800051ec
    mflr    r0
    lis     r3, 0x8000
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lhz     r0, 0x30e4(r3)
    andi.   r0, r0, 0xeef
    cmpwi   r0, 0xeef
    bne-    branch_0x8000521c
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      OSResetSystem
branch_0x8000521c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __start
__start: # 0x8000522c
    bl      __init_registers
    bl      __init_hardware
    li      r0, -0x1
    stwu    sp, -0x8(sp)
    stw     r0, 0x4(sp)
    stw     r0, 0x0(sp)
    bl      __init_data
    li      r0, 0x0
    lis     r6, 0x8000
    addi    r6, r6, 0x44
    stw     r0, 0x0(r6)
    lis     r6, 0x8000
    addi    r6, r6, 0xf4
    lwz     r6, 0x0(r6)
    cmplwi  r6, 0x0
    beq-    branch_0x80005274
    lwz     r7, 0xc(r6)
    b       branch_0x80005294

branch_0x80005274:
    lis     r5, 0x8000
    addi    r5, r5, 0x34
    lwz     r5, 0x0(r5)
    cmplwi  r5, 0x0
    beq-    branch_0x800052bc
    lis     r7, 0x8000
    addi    r7, r7, 0x30e8
    lwz     r7, 0x0(r7)
branch_0x80005294:
    li      r5, 0x0
    cmplwi  r7, 0x2
    beq-    branch_0x800052ac
    cmplwi  r7, 0x3
    bne-    branch_0x800052bc
    li      r5, 0x1
branch_0x800052ac:
    lis     r6, 0x8034
    addi    r6, r6, 0x10f4
    mtlr    r6
    blrl
branch_0x800052bc:
    lis     r6, 0x8000
    addi    r6, r6, 0xf4
    lwz     r5, 0x0(r6)
    cmplwi  r5, 0x0
    beq+    branch_0x8000531c
    lwz     r6, 0x8(r5)
    cmplwi  r6, 0x0
    beq+    branch_0x8000531c
    add     r6, r5, r6
    lwz     r14, 0x0(r6)
    cmplwi  r14, 0x0
    beq-    branch_0x8000531c
    addi    r15, r6, 0x4
    mtctr   r14
branch_0x800052f4:
    addi    r6, r6, 0x4
    lwz     r7, 0x0(r6)
    add     r7, r7, r5
    stw     r7, 0x0(r6)
    bdnz+      branch_0x800052f4
    lis     r5, 0x8000
    addi    r5, r5, 0x34
    clrrwi  r7, r15, 5
    stw     r7, 0x0(r5)
    b       branch_0x80005324

branch_0x8000531c:
    li      r14, 0x0
    li      r15, 0x0
branch_0x80005324:
    bl      DBInit
    bl      OSInit
    lis     r4, 0x8000
    addi    r4, r4, 0x30e6
    lhz     r3, 0x0(r4)
    andi.   r5, r3, 0x8000
    beq-    branch_0x8000534c
    andi.   r3, r3, 0x7fff
    cmplwi  r3, 0x1
    bne-    branch_0x80005350
branch_0x8000534c:
    bl      __check_pad3
branch_0x80005350:
    bl      __init_user
    mr      r3, r14
    mr      r4, r15
    bl      main
    b       exit


.globl __init_registers
__init_registers: # 0x80005364
    lis     sp, 0x8042
    ori     sp, sp, 0x77e8
    lis     rtoc, 0x8041
    ori     rtoc, rtoc, 0x6ba0
    lis     r13, 0x8041
    ori     r13, r13, 0x41c0
    blr


.globl __init_data
__init_data: # 0x80005380
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    lis     r3, 0x8000
    addi    r0, r3, 0x5494
    mr      r29, r0
    b       branch_0x800053a8

branch_0x800053a8:
    b       branch_0x800053ac

branch_0x800053ac:
    lwz     r30, 0x8(r29)
    cmplwi  r30, 0x0
    beq-    branch_0x800053ec
    lwz     r4, 0x0(r29)
    lwz     r31, 0x4(r29)
    beq-    branch_0x800053e4
    cmplw   r31, r4
    beq-    branch_0x800053e4
    mr      r3, r31
    mr      r5, r30
    bl      memcpy
    mr      r3, r31
    mr      r4, r30
    bl      __flush_cache
branch_0x800053e4:
    addi    r29, r29, 0xc
    b       branch_0x800053ac

branch_0x800053ec:
    lis     r3, 0x8000
    addi    r0, r3, 0x5518
    mr      r29, r0
    b       branch_0x800053fc

branch_0x800053fc:
    b       branch_0x80005400

branch_0x80005400:
    lwz     r5, 0x4(r29)
    cmplwi  r5, 0x0
    beq-    branch_0x80005424
    lwz     r3, 0x0(r29)
    beq-    branch_0x8000541c
    li      r4, 0x0
    bl      memset
branch_0x8000541c:
    addi    r29, r29, 0x8
    b       branch_0x80005400

branch_0x80005424:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

