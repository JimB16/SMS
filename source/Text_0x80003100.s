
.section .ram80003100, "ax"


.globl memset
memset: /* 0x80003100 */
    mflr    r0
    stw     r0, 0x4 (r1)
    stwu    r1, -0x20 (r1)
    stw     r31, 0x1c (r1)
    mr      r31, r3
    bl      __fill_mem
    lwz     r0, 0x24 (r1)
    mr      r3, r31
    lwz     r31, 0x1c (r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr


.globl __fill_mem
__fill_mem: /* 0x80003130 */
    cmpli   cr0, 0, 5, 0x20
    rlwinm  r0, r4, 0, 24, 31
    mr      r7, r0
    addi    r6, r3, -0x1
    blt     branch_0x800031d8
    not     r0, r6
    rlwinm. r0, r0, 0, 30, 31
    mr      r3, r0
    beq-    branch_0x80003168
    subf    r5, r3, r5
    rlwinm  r0, r7, 0, 24, 31
branch_0x8000315c:
    addic.  r3, r3, -0x1
    stbu    r0, 0x1 (r6)
    bne     branch_0x8000315c
branch_0x80003168:
    cmpli   cr0, 0, 7, 0x0
    beq-    branch_0x80003188
    rlwinm  r3, r7, 24, 0, 7
    rlwinm  r0, r7, 16, 0, 15
    rlwinm  r4, r7, 8, 0, 23
    or      r0, r3, r0
    or      r0, r4, r0
    or      r7, r7, r0
branch_0x80003188:
    rlwinm. r0, r5, 27, 5, 31
    addi    r3, r6, -0x3
    beq-    branch_0x800031bc
branch_0x80003194:
    stw     r7, 0x4 (r3)
    addic.  r0, r0, -0x1
    stw     r7, 0x8 (r3)
    stw     r7, 0xc (r3)
    stw     r7, 0x10 (r3)
    stw     r7, 0x14 (r3)
    stw     r7, 0x18 (r3)
    stw     r7, 0x1c (r3)
    stwu    r7, 0x20 (r3)
    bne     branch_0x80003194
branch_0x800031bc:
    rlwinm. r0, r5, 30, 29, 31
    beq-    branch_0x800031d0
branch_0x800031c4:
    addic.  r0, r0, -0x1
    stwu    r7, 0x4 (r3)
    bne     branch_0x800031c4
branch_0x800031d0:
    addi    r6, r3, 0x3
    rlwinm  r5, r5, 0, 30, 31
branch_0x800031d8:
    cmpli   cr0, 0, 5, 0x0
    beqlr

    rlwinm  r0, r7, 0, 24, 31
branch_0x800031e4:
    addic.  r5, r5, -0x1
    stbu    r0, 0x1 (r6)
    bne     branch_0x800031e4
    blr


.globl memcpy
memcpy: /* 0x800031f4 */
    cmpl    cr0, 0, r4, r3
    blt     branch_0x80003220
    addi    r4, r4, -0x1
    addi    r6, r3, -0x1
    addi    r5, r5, 0x1
    b       branch_0x80003214
branch_0x8000320c:
    lbzu    r0, 0x1 (r4)
    stbu    r0, 0x1 (r6)
branch_0x80003214:
    addic.  r5, r5, -0x1
    bne     branch_0x8000320c
    blr

branch_0x80003220:
    add     r4, r4, r5
    add     r6, r3, r5
    addi    r5, r5, 0x1
    b       branch_0x80003238
branch_0x80003230:
    lbzu    r0, -0x1 (r4)
    stbu    r0, -0x1 (r6)
branch_0x80003238:
    addic.  r5, r5, -0x1
    bne     branch_0x80003230
    blr


.incbin "./baserom/Text_0x80003100.bin", 0x144, 0x800051ec - 0x80003244

.globl __check_pad3
__check_pad3: /* 0x800051ec */
    mflr    r0
    lis     r3, 0x8000
    stw     r0, 0x4 (r1)
    stwu    r1, -0x8 (r1)
    lhz     r0, 0x30e4(r3)
    andi.   r0, r0, 0xeef
    cmpi    cr0, 0, r0, 0xeef
    bne     branch_0x8000521c
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      OSResetSystem
branch_0x8000521c:
    lwz     r0, 0xc (r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr


.globl __start
__start: /* 0x8000522c */
    bl      __init_registers
    bl      __init_hardware
    li      r0, -0x1
    stwu    r1, -0x8 (r1)
    stw     r0, 0x4 (r1)
    stw     r0, 0x0 (r1)
    bl      __init_data
    li      r0, 0x0
    lis     r6, 0x8000
    addi    r6, r6, 0x44
    stw     r0, 0x0 (r6)
    lis     r6, 0x8000
    addi    r6, r6, 0xf4
    lwz     r6, 0x0 (r6)
    cmpli   cr0, 0, 6, 0x0
    beq-    branch_0x80005274
    lwz     r7, 0xc (r6)
    b       branch_0x80005294
branch_0x80005274:
    lis     r5, 0x8000
    addi    r5, r5, 0x34
    lwz     r5, 0x0 (r5)
    cmpli   cr0, 0, 5, 0x0
    beq-    branch_0x800052bc
    lis     r7, 0x8000
    addi    r7, r7, 0x30e8
    lwz     r7, 0x0 (r7)
branch_0x80005294:
    li      r5, 0x0
    cmpli   cr0, 0, 7, 0x2
    beq-    branch_0x800052ac
    cmpli   cr0, 0, 7, 0x3
    bne     branch_0x800052bc
    li      r5, 0x1
branch_0x800052ac:
    lis     r6, 0x8034
    addi    r6, r6, -0x6d8c
    mtlr    r6
    blrl
branch_0x800052bc:
    lis     r6, 0x8000
    addi    r6, r6, 0xf4
    lwz     r5, 0x0 (r6)
    cmpli   cr0, 0, 5, 0x0
    beq+    branch_0x8000531c
    lwz     r6, 0x8 (r5)
    cmpli   cr0, 0, 6, 0x0
    beq+    branch_0x8000531c
    add     r6, r5, r6
    lwz     r14, 0x0 (r6)
    cmpli   cr0, 0, 14, 0x0
    beq-    branch_0x8000531c
    addi    r15, r6, 0x4
    mtctr   r14
branch_0x800052f4:
    addi    r6, r6, 0x4
    lwz     r7, 0x0 (r6)
    add     r7, r7, r5
    stw     r7, 0x0 (r6)
    bdnz    branch_0x800052f4
    lis     r5, 0x8000
    addi    r5, r5, 0x34
    rlwinm  r7, r15, 0, 0, 26
    stw     r7, 0x0 (r5)
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
    cmpli   cr0, 0, 3, 0x1
    bne     branch_0x80005350
branch_0x8000534c:
    bl      __check_pad3
branch_0x80005350:
    bl      __init_user
    mr      r3, r14
    mr      r4, r15
    bl      main
    b       exit

.globl __init_registers
__init_registers: /* 0x80005364 */
    lis     r1, 0x8041
    ori     r1, r1, 0xed48
    lis     r2, 0x8040
    ori     r2, r2, 0xe280
    lis     r13, 0x8040
    ori     r13, r13, 0xb960
    blr


.globl __init_data
__init_data: /* 0x80005380 */
    mflr    r0
    stw     r0, 0x4 (r1)
    stwu    r1, -0x18 (r1)
    stw     r31, 0x14 (r1)
    stw     r30, 0x10 (r1)
    stw     r29, 0xc (r1)
    lis     r3, 0x8000
    addi    r0, r3, 0x5494
    mr      r29, r0
    b       branch_0x800053a8
branch_0x800053a8:
    b       branch_0x800053ac
branch_0x800053ac:
    lwz     r30, 0x8 (r29)
    cmpli   cr0, 0, 30, 0x0
    beq-    branch_0x800053ec
    lwz     r4, 0x0 (r29)
    lwz     r31, 0x4 (r29)
    beq-    branch_0x800053e4
    cmpl    cr0, 0, r31, r4
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
    lwz     r5, 0x4 (r29)
    cmpli   cr0, 0, 5, 0x0
    beq-    branch_0x80005424
    lwz     r3, 0x0 (r29)
    beq-    branch_0x8000541c
    li      r4, 0x0
    bl      memset
branch_0x8000541c:
    addi    r29, r29, 0x8
    b       branch_0x80005400
branch_0x80005424:
    lwz     r0, 0x1c (r1)
    lwz     r31, 0x14 (r1)
    lwz     r30, 0x10 (r1)
    lwz     r29, 0xc (r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr


.globl __init_hardware
__init_hardware: /* 0x80005440 */
    mfmsr   r0
    ori     r0, r0, 0x2000
    mtmsr   r0
    mflr    r31
    bl      __OSPSInit
    bl      __OSCacheInit
    mtlr    r31
    blr


.globl __flush_cache
__flush_cache: /* 0x80005460 */
    lis     r5, 0xffff
    ori     r5, r5, 0xfff1
    and     r5, r5, r3
    subf    r3, r5, r3
    add     r4, r4, r3
branch_0x80005474:
    dcbst   r0, r5
    sync
    icbi    r0, r5
    addic   r5, r5, 0x8
    addic.  r4, r4, -0x8
    bge     branch_0x80005474
    isync
    blr


.incbin "./baserom/Text_0x80003100.bin", 0x2394, 0x80005540 - 0x80005494
