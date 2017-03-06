
.globl __OSInitAudioSystem
__OSInitAudioSystem: # 0x803433b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    bl      OSGetArenaHi
    lis     r4, 0x8100
    li      r5, 0x80
    subi    r3, r3, 0x80
    bl      memcpy
    lis     r3, 0x803e
    addi    r4, r3, 0x6e98
    lis     r3, 0x8100
    li      r5, 0x80
    bl      memcpy
    lis     r3, 0x8100
    li      r4, 0x80
    bl      DCFlushRange
    lis     r3, 0xcc00
    addi    r3, r3, 0x5000
    li      r0, 0x43
    sth     r0, 0x12(r3)
    addi    r31, r3, 0xa
    li      r0, 0x8ac
    sth     r0, 0xa(r3)
    lhz     r0, 0xa(r3)
    ori     r0, r0, 0x1
    sth     r0, 0xa(r3)
branch_0x80343420:
    lhz     r0, 0x0(r31)
    clrlwi. r0, r0, 31
    bne+    branch_0x80343420
    li      r0, 0x0
    lis     r4, 0xcc00
    sth     r0, 0x5000(r4)
branch_0x80343438:
    addi    r30, r4, 0x5000
    lhzu    r3, 0x4(r30)
    addi    r29, r4, 0x5000
    lhzu    r0, 0x6(r29)
    insrwi  r0, r3, 16, 0
    clrrwi. r0, r0, 31
    bne+    branch_0x80343438
    lis     r3, 0xcc00
    lis     r0, 0x100
    addi    r27, r3, 0x5000
    stwu    r0, 0x20(r27)
    li      r0, 0x0
    addi    r26, r3, 0x5000
    stwu    r0, 0x24(r26)
    li      r0, 0x20
    addi    r25, r3, 0x5000
    stwu    r0, 0x28(r25)
    lhz     r3, 0x0(r31)
    b       branch_0x80343488

branch_0x80343484:
    lhz     r3, 0x0(r31)
branch_0x80343488:
    rlwinm. r0, r3, 0, 26, 26
    beq+    branch_0x80343484
    sth     r3, 0x0(r31)
    bl      OSGetTick
    mr      r28, r3
branch_0x8034349c:
    bl      OSGetTick
    subf    r0, r28, r3
    cmpwi   r0, 0x892
    blt+    branch_0x8034349c
    lis     r0, 0x100
    stw     r0, 0x0(r27)
    li      r3, 0x0
    li      r0, 0x20
    stw     r3, 0x0(r26)
    stw     r0, 0x0(r25)
    lhz     r3, 0x0(r31)
    b       branch_0x803434d0

branch_0x803434cc:
    lhz     r3, 0x0(r31)
branch_0x803434d0:
    rlwinm. r0, r3, 0, 26, 26
    beq+    branch_0x803434cc
    sth     r3, 0x0(r31)
    lhz     r0, 0x0(r31)
    rlwinm  r0, r0, 0, 21, 19
    sth     r0, 0x0(r31)
branch_0x803434e8:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 21, 21
    bne+    branch_0x803434e8
    lhz     r0, 0x0(r31)
    rlwinm  r0, r0, 0, 30, 28
    sth     r0, 0x0(r31)
    lhz     r0, 0x0(r30)
    b       branch_0x8034350c

branch_0x80343508:
    lhz     r0, 0x0(r30)
branch_0x8034350c:
    clrlwi  r5, r0, 16
    rlwinm. r0, r0, 0, 16, 16
    beq+    branch_0x80343508
    lhz     r0, 0x0(r31)
    lhz     r4, 0x0(r29)
    ori     r0, r0, 0x4
    sth     r0, 0x0(r31)
    li      r0, 0x8ac
    sth     r0, 0x0(r31)
    lhz     r0, 0x0(r31)
    ori     r0, r0, 0x1
    sth     r0, 0x0(r31)
branch_0x8034353c:
    lhz     r0, 0x0(r31)
    clrlwi. r0, r0, 31
    bne+    branch_0x8034353c
    bl      OSGetArenaHi
    subi    r4, r3, 0x80
    lis     r3, 0x8100
    li      r5, 0x80
    bl      memcpy
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __OSStopAudioSystem
__OSStopAudioSystem: # 0x80343570
    mflr    r0
    lis     r3, 0xcc00
    stw     r0, 0x4(sp)
    li      r0, 0x804
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x5000
    addi    r3, r3, 0x5000
    stw     r30, 0x8(sp)
    sth     r0, 0xa(r31)
    lhz     r0, 0x36(r3)
    rlwinm  r0, r0, 0, 17, 15
    sth     r0, 0x36(r3)
    lhzu    r0, 0xa(r31)
    b       branch_0x803435b0

branch_0x803435ac:
    lhz     r0, 0x0(r31)
branch_0x803435b0:
    rlwinm. r0, r0, 0, 21, 21
    bne+    branch_0x803435ac
    lhz     r0, 0x0(r31)
    b       branch_0x803435c4

branch_0x803435c0:
    lhz     r0, 0x0(r31)
branch_0x803435c4:
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x803435c0
    li      r0, 0x8ac
    lis     r3, 0xcc00
    sth     r0, 0x0(r31)
    li      r0, 0x0
    sth     r0, 0x5000(r3)
    addi    r4, r3, 0x5000
branch_0x803435e4:
    lhz     r3, 0x4(r4)
    lhz     r0, 0x6(r4)
    insrwi  r0, r3, 16, 0
    clrrwi. r0, r0, 31
    bne+    branch_0x803435e4
    bl      OSGetTick
    mr      r30, r3
branch_0x80343600:
    bl      OSGetTick
    subf    r0, r30, r3
    cmpwi   r0, 0x2c
    blt+    branch_0x80343600
    lhz     r0, 0x0(r31)
    ori     r0, r0, 0x1
    sth     r0, 0x0(r31)
    lhz     r0, 0x0(r31)
    b       branch_0x80343628

branch_0x80343624:
    lhz     r0, 0x0(r31)
branch_0x80343628:
    clrlwi. r0, r0, 31
    bne+    branch_0x80343624
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

