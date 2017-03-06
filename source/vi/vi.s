
.globl __VIRetraceHandler
__VIRetraceHandler: # 0x8034ed18
    mflr    r0
    lis     r3, 0xcc00
    stw     r0, 0x4(sp)
    addi    r5, r3, 0x2000
    lis     r3, 0x8040
    stwu    sp, -0x2f8(sp)
    li      r7, 0x0
    stmw    r27, 0x2e4(sp)
    addi    r30, r4, 0x0
    addi    r31, r3, 0x32c8
    lhzu    r6, 0x30(r5)
    rlwinm. r0, r6, 0, 16, 16
    beq-    branch_0x8034ed58
    rlwinm  r0, r6, 0, 17, 15
    sth     r0, 0x0(r5)
    ori     r7, r7, 0x1
branch_0x8034ed58:
    lis     r3, 0xcc00
    lhzu    r4, 0x2034(r3)
    rlwinm. r0, r4, 0, 16, 16
    beq-    branch_0x8034ed74
    rlwinm  r0, r4, 0, 17, 15
    sth     r0, 0x0(r3)
    ori     r7, r7, 0x2
branch_0x8034ed74:
    lis     r3, 0xcc00
    lhzu    r4, 0x2038(r3)
    rlwinm. r0, r4, 0, 16, 16
    beq-    branch_0x8034ed90
    rlwinm  r0, r4, 0, 17, 15
    sth     r0, 0x0(r3)
    ori     r7, r7, 0x4
branch_0x8034ed90:
    lis     r3, 0xcc00
    lhzu    r4, 0x203c(r3)
    rlwinm. r0, r4, 0, 16, 16
    beq-    branch_0x8034edac
    rlwinm  r0, r4, 0, 17, 15
    sth     r0, 0x0(r3)
    ori     r7, r7, 0x8
branch_0x8034edac:
    rlwinm. r0, r7, 0, 29, 29
    bne-    branch_0x8034edbc
    rlwinm. r0, r7, 0, 28, 28
    beq-    branch_0x8034edc8
branch_0x8034edbc:
    mr      r3, r30
    bl      OSSetCurrentContext
    b       branch_0x8034ef2c

branch_0x8034edc8:
    lwz     r4, -0x58f0(r13)
    addi    r3, sp, 0x18
    addi    r0, r4, 0x1
    stw     r0, -0x58f0(r13)
    bl      OSClearContext
    addi    r3, sp, 0x18
    bl      OSSetCurrentContext
    lwz     r12, -0x58e0(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034edfc
    lwz     r3, -0x58f0(r13)
    mtlr    r12
    blrl
branch_0x8034edfc:
    lwz     r0, -0x58ec(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034eef0
    lwz     r0, -0x58c0(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x8034ee20
    bl      getCurrentFieldEvenOdd
    cmplwi  r3, 0x0
    beq-    branch_0x8034eed8
branch_0x8034ee20:
    lis     r3, 0xcc00
    addi    r29, r3, 0x2000
    b       branch_0x8034eea0

branch_0x8034ee2c:
    lwz     r3, -0x58b8(r13)
    li      r5, 0x20
    lwz     r27, -0x58b4(r13)
    addi    r4, r27, 0x0
    bl      __shr2u
    cntlzw  r4, r4
    cmpwi   r4, 0x20
    li      r0, -0x1
    and     r0, r27, r0
    bge-    branch_0x8034ee58
    b       branch_0x8034ee60

branch_0x8034ee58:
    cntlzw  r3, r0
    addi    r4, r3, 0x20
branch_0x8034ee60:
    slwi    r6, r4, 1
    add     r3, r31, r6
    lhz     r0, 0x78(r3)
    subfic  r5, r4, 0x3f
    li      r3, 0x0
    sthx    r0, r29, r6
    li      r4, 0x1
    bl      __shl2i
    lwz     r0, -0x58b8(r13)
    not     r5, r3
    not     r4, r4
    lwz     r3, -0x58b4(r13)
    and     r0, r0, r5
    and     r3, r3, r4
    stw     r3, -0x58b4(r13)
    stw     r0, -0x58b8(r13)
branch_0x8034eea0:
    lwz     r0, -0x58b8(r13)
    li      r4, 0x0
    lwz     r3, -0x58b4(r13)
    xor     r0, r0, r4
    xor     r3, r3, r4
    or.     r0, r3, r0
    bne+    branch_0x8034ee2c
    stw     r4, -0x58c0(r13)
    li      r3, 0x1
    lwz     r0, 0x144(r31)
    stw     r0, -0x58b0(r13)
    lwz     r0, 0x118(r31)
    stw     r0, -0x58ac(r13)
    b       branch_0x8034eedc

branch_0x8034eed8:
    li      r3, 0x0
branch_0x8034eedc:
    cmpwi   r3, 0x0
    beq-    branch_0x8034eef0
    li      r0, 0x0
    stw     r0, -0x58ec(r13)
    bl      SIRefreshSamplingRate
branch_0x8034eef0:
    lwz     r0, -0x58dc(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034ef14
    addi    r3, sp, 0x18
    bl      OSClearContext
    lwz     r12, -0x58dc(r13)
    lwz     r3, -0x58f0(r13)
    mtlr    r12
    blrl
branch_0x8034ef14:
    subi    r3, r13, 0x58e8
    bl      OSWakeupThread
    addi    r3, sp, 0x18
    bl      OSClearContext
    mr      r3, r30
    bl      OSSetCurrentContext
branch_0x8034ef2c:
    lmw     r27, 0x2e4(sp)
    lwz     r0, 0x2fc(sp)
    addi    sp, sp, 0x2f8
    mtlr    r0
    blr


.globl VISetPostRetraceCallback
VISetPostRetraceCallback: # 0x8034ef40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r31, -0x58dc(r13)
    bl      OSDisableInterrupts
    stw     r30, -0x58dc(r13)
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getTiming
getTiming: # 0x8034ef84
    cmplwi  r3, 0x15
    lis     r4, 0x803f
    subi    r5, r4, 0x7850
    bgt-    branch_0x8034f00c
    lis     r4, 0x803f
    subi    r4, r4, 0x76ec
    slwi    r0, r3, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
    mr      r3, r5
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x3499b4, 0x8034f00c - 0x8034efb4
branch_0x8034f00c:
    li      r3, 0x0
    blr


.globl __VIInit
__VIInit: # 0x8034f014
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    srwi    r31, r3, 2
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x8000
    stw     r31, 0xcc(r3)
    addi    r3, r29, 0x0
    rlwinm  r30, r29, 0, 30, 30
    bl      getTiming
    lis     r4, 0xcc00
    li      r0, 0x2
    addi    r5, r4, 0x2000
    sthu    r0, 0x2(r5)
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    lwz     r0, 0x1c(sp)
    cmplwi  r0, 0x3e8
    bge-    branch_0x8034f088
    b       branch_0x8034f07c

branch_0x8034f070:
    lwz     r4, 0x1c(sp)
    addi    r0, r4, 0x8
    stw     r0, 0x1c(sp)
branch_0x8034f07c:
    lwz     r0, 0x1c(sp)
    cmplwi  r0, 0x3e8
    blt+    branch_0x8034f070
branch_0x8034f088:
    li      r0, 0x0
    sth     r0, 0x0(r5)
    lis     r12, 0xcc00
    li      r8, 0x2828
    lhz     r6, 0x1a(r3)
    li      r7, 0x1
    cmpwi   r29, 0x2
    sth     r6, 0x2006(r12)
    li      r6, 0x1001
    addi    r4, r12, 0x2000
    lbz     r9, 0x1d(r3)
    lbz     r10, 0x1e(r3)
    insrwi  r10, r9, 8, 16
    sth     r10, 0x2004(r12)
    lbz     r9, 0x1f(r3)
    lbz     r10, 0x1c(r3)
    slwi    r9, r9, 7
    or      r9, r10, r9
    sth     r9, 0x200a(r12)
    lhz     r9, 0x20(r3)
    clrlslwi  r9, r9, 17, 1
    sth     r9, 0x2008(r12)
    lhz     r9, 0x2(r3)
    lbz     r11, 0x0(r3)
    slwi    r9, r9, 1
    lhz     r10, 0x4(r3)
    subi    r9, r9, 0x2
    sth     r11, 0x2000(r12)
    add     r9, r10, r9
    sth     r9, 0x200e(r12)
    lhz     r9, 0x8(r3)
    addi    r9, r9, 0x2
    sth     r9, 0x200c(r12)
    lhz     r9, 0x2(r3)
    lhz     r10, 0x6(r3)
    slwi    r9, r9, 1
    subi    r9, r9, 0x2
    add     r9, r10, r9
    sth     r9, 0x2012(r12)
    lhz     r9, 0xa(r3)
    addi    r9, r9, 0x2
    sth     r9, 0x2010(r12)
    lhz     r9, 0x10(r3)
    lbz     r10, 0xc(r3)
    slwi    r9, r9, 5
    or      r9, r10, r9
    sth     r9, 0x2016(r12)
    lhz     r9, 0x14(r3)
    lbz     r10, 0xe(r3)
    slwi    r9, r9, 5
    or      r9, r10, r9
    sth     r9, 0x2014(r12)
    lhz     r9, 0x12(r3)
    lbz     r10, 0xd(r3)
    slwi    r9, r9, 5
    or      r9, r10, r9
    sth     r9, 0x201a(r12)
    lhz     r9, 0x16(r3)
    lbz     r10, 0xf(r3)
    slwi    r9, r9, 5
    or      r9, r10, r9
    sth     r9, 0x2018(r12)
    sth     r8, 0x2048(r12)
    sth     r7, 0x2036(r12)
    sth     r6, 0x2034(r12)
    lhz     r6, 0x18(r3)
    lhz     r3, 0x1a(r3)
    srawi   r6, r6, 1
    addi    r3, r3, 0x1
    addze   r6, r6
    sth     r3, 0x2032(r12)
    addi    r6, r6, 0x1
    ori     r3, r6, 0x1000
    sth     r3, 0x2030(r12)
    beq-    branch_0x8034f1d8
    cmpwi   r29, 0x3
    beq-    branch_0x8034f1d8
    slwi    r3, r30, 2
    ori     r6, r3, 0x1
    slwi    r3, r31, 8
    or      r3, r6, r3
    sth     r3, 0x0(r5)
    sth     r0, 0x6c(r4)
    b       branch_0x8034f1f0

branch_0x8034f1d8:
    slwi    r0, r31, 8
    ori     r0, r0, 0x5
    sth     r0, 0x0(r5)
    lis     r3, 0xcc00
    li      r0, 0x1
    sth     r0, 0x206c(r3)
branch_0x8034f1f0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl VIInit
VIInit: # 0x8034f20c
    mflr    r0
    lis     r3, 0xcc00
    stw     r0, 0x4(sp)
    li      r0, 0x1
    lis     r4, 0x803f
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    subi    r30, r4, 0x7850
    stw     r29, 0xc(sp)
    stw     r28, 0x8(sp)
    addi    r28, r3, 0x2000
    lis     r3, 0x8040
    stw     r0, -0x58d8(r13)
    addi    r31, r3, 0x32c8
    lhzu    r0, 0x2(r28)
    clrlwi. r0, r0, 31
    bne-    branch_0x8034f25c
    li      r3, 0x0
    bl      __VIInit
branch_0x8034f25c:
    li      r29, 0x0
    stw     r29, -0x58f0(r13)
    lis     r3, 0xcc00
    addi    r3, r3, 0x2000
    stw     r29, -0x58c4(r13)
    li      r0, 0x280
    stw     r29, -0x58c8(r13)
    stw     r29, -0x58b4(r13)
    stw     r29, -0x58b8(r13)
    stw     r29, -0x58d0(r13)
    stw     r29, -0x58c0(r13)
    stw     r29, -0x58ec(r13)
    lhz     r5, 0x132(r30)
    lhz     r6, 0x130(r30)
    clrlslwi  r5, r5, 26, 10
    or      r5, r6, r5
    sth     r5, 0x4e(r3)
    lhz     r6, 0x132(r30)
    lhz     r5, 0x134(r30)
    srawi   r6, r6, 6
    slwi    r5, r5, 4
    or      r5, r6, r5
    sth     r5, 0x4c(r3)
    lhz     r5, 0x138(r30)
    lhz     r6, 0x136(r30)
    clrlslwi  r5, r5, 26, 10
    or      r5, r6, r5
    sth     r5, 0x52(r3)
    lhz     r6, 0x138(r30)
    lhz     r5, 0x13a(r30)
    srawi   r6, r6, 6
    slwi    r5, r5, 4
    or      r5, r6, r5
    sth     r5, 0x50(r3)
    lhz     r5, 0x13e(r30)
    lhz     r6, 0x13c(r30)
    clrlslwi  r5, r5, 26, 10
    or      r5, r6, r5
    sth     r5, 0x56(r3)
    lhz     r5, 0x13e(r30)
    lhz     r4, 0x140(r30)
    srawi   r5, r5, 6
    slwi    r4, r4, 4
    or      r4, r5, r4
    sth     r4, 0x54(r3)
    lhz     r4, 0x144(r30)
    lhz     r5, 0x142(r30)
    slwi    r4, r4, 8
    or      r4, r5, r4
    sth     r4, 0x5a(r3)
    lhz     r4, 0x148(r30)
    lhz     r5, 0x146(r30)
    slwi    r4, r4, 8
    or      r4, r5, r4
    sth     r4, 0x58(r3)
    lhz     r4, 0x14c(r30)
    lhz     r5, 0x14a(r30)
    slwi    r4, r4, 8
    or      r4, r5, r4
    sth     r4, 0x5e(r3)
    lhz     r4, 0x150(r30)
    lhz     r5, 0x14e(r30)
    slwi    r4, r4, 8
    or      r4, r5, r4
    sth     r4, 0x5c(r3)
    lhz     r4, 0x154(r30)
    lhz     r5, 0x152(r30)
    slwi    r4, r4, 8
    or      r4, r5, r4
    sth     r4, 0x62(r3)
    lhz     r4, 0x158(r30)
    lhz     r5, 0x156(r30)
    slwi    r4, r4, 8
    or      r4, r5, r4
    sth     r4, 0x60(r3)
    lhz     r4, 0x15c(r30)
    lhz     r5, 0x15a(r30)
    slwi    r4, r4, 8
    or      r4, r5, r4
    sth     r4, 0x66(r3)
    lhz     r4, 0x160(r30)
    lhz     r5, 0x15e(r30)
    slwi    r4, r4, 8
    or      r4, r5, r4
    sth     r4, 0x64(r3)
    sth     r0, 0x70(r3)
    bl      __OSLockSram
    lbz     r0, 0x10(r3)
    li      r3, 0x0
    extsb   r0, r0
    sth     r29, -0x58d2(r13)
    sth     r0, -0x58d4(r13)
    bl      __OSUnlockSram
    lhz     r30, 0x0(r28)
    addi    r3, r31, 0x114
    addi    r28, r31, 0x118
    extrwi  r0, r30, 1, 29
    stw     r0, 0x114(r31)
    extrwi  r0, r30, 2, 22
    stw     r0, 0x118(r31)
    lwz     r0, 0x118(r31)
    cmplwi  r0, 0x3
    bne-    branch_0x8034f3fc
    b       branch_0x8034f400

branch_0x8034f3fc:
    mr      r29, r0
branch_0x8034f400:
    lwz     r0, 0x0(r3)
    slwi    r3, r29, 2
    add     r3, r3, r0
    bl      getTiming
    stw     r3, 0x144(r31)
    addi    r4, r31, 0x144
    li      r0, 0x280
    sth     r30, 0x2(r31)
    li      r8, 0x0
    addi    r6, r31, 0xf6
    lwz     r4, 0x0(r4)
    addi    r3, r31, 0xf2
    stw     r4, -0x58b0(r13)
    lwz     r4, 0x0(r28)
    stw     r4, -0x58ac(r13)
    sth     r0, 0xf4(r31)
    lwz     r4, -0x58b0(r13)
    lhzu    r0, 0x2(r4)
    clrlslwi  r0, r0, 17, 1
    sth     r0, 0xf6(r31)
    lhz     r0, 0xf4(r31)
    subfic  r0, r0, 0x2d0
    srawi   r0, r0, 1
    addze   r0, r0
    sth     r0, 0xf0(r31)
    sth     r8, 0xf2(r31)
    lhz     r0, 0xf4(r31)
    lha     r7, 0xf0(r31)
    lha     r5, -0x58d4(r13)
    subfic  r0, r0, 0x2d0
    lhz     r9, 0x0(r4)
    add     r5, r7, r5
    cmpw    r5, r0
    ble-    branch_0x8034f48c
    b       branch_0x8034f4a0

branch_0x8034f48c:
    cmpwi   r5, 0x0
    bge-    branch_0x8034f498
    b       branch_0x8034f49c

branch_0x8034f498:
    mr      r8, r5
branch_0x8034f49c:
    mr      r0, r8
branch_0x8034f4a0:
    sth     r0, 0xf8(r31)
    addi    r8, r31, 0x110
    lwz     r0, 0x110(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8034f4bc
    li      r11, 0x2
    b       branch_0x8034f4c0

branch_0x8034f4bc:
    li      r11, 0x1
branch_0x8034f4c0:
    lhz     r0, 0x0(r3)
    lha     r5, -0x58d2(r13)
    extsh   r7, r0
    clrlwi  r0, r0, 31
    add     r7, r7, r5
    cmpw    r7, r0
    ble-    branch_0x8034f4e0
    b       branch_0x8034f4e4

branch_0x8034f4e0:
    mr      r7, r0
branch_0x8034f4e4:
    sth     r7, 0xfa(r31)
    extsh   r7, r9
    slwi    r7, r7, 1
    lhz     r28, 0x0(r6)
    subf    r12, r0, r7
    lha     r10, 0x0(r3)
    extsh   r7, r28
    add     r9, r7, r5
    add     r9, r10, r9
    subf.   r7, r12, r9
    ble-    branch_0x8034f518
    subf    r9, r12, r9
    b       branch_0x8034f51c

branch_0x8034f518:
    li      r9, 0x0
branch_0x8034f51c:
    add     r10, r10, r5
    subf.   r7, r0, r10
    bge-    branch_0x8034f530
    subf    r7, r0, r10
    b       branch_0x8034f534

branch_0x8034f530:
    li      r7, 0x0
branch_0x8034f534:
    add     r7, r28, r7
    subf    r7, r9, r7
    sth     r7, 0xfc(r31)
    lha     r7, 0x0(r3)
    add     r9, r7, r5
    subf.   r7, r0, r9
    bge-    branch_0x8034f558
    subf    r7, r0, r9
    b       branch_0x8034f55c

branch_0x8034f558:
    li      r7, 0x0
branch_0x8034f55c:
    divw    r10, r7, r11
    addi    r7, r31, 0x108
    lhz     r9, 0x108(r31)
    subf    r9, r10, r9
    sth     r9, 0xfe(r31)
    lha     r6, 0x0(r6)
    lha     r9, 0x0(r3)
    add     r6, r6, r5
    add     r6, r9, r6
    subf.   r3, r12, r6
    ble-    branch_0x8034f590
    subf    r6, r12, r6
    b       branch_0x8034f594

branch_0x8034f590:
    li      r6, 0x0
branch_0x8034f594:
    add     r5, r9, r5
    subf.   r3, r0, r5
    bge-    branch_0x8034f5a8
    subf    r0, r0, r5
    b       branch_0x8034f5ac

branch_0x8034f5a8:
    li      r0, 0x0
branch_0x8034f5ac:
    divw    r0, r0, r11
    lhz     r3, 0x10c(r31)
    add     r0, r3, r0
    divw    r5, r6, r11
    subf    r0, r5, r0
    sth     r0, 0x100(r31)
    li      r9, 0x280
    li      r28, 0x0
    sth     r9, 0x102(r31)
    li      r5, 0x28
    li      r0, 0x1
    lhz     r6, 0x0(r4)
    subi    r3, r13, 0x58e8
    clrlslwi  r6, r6, 17, 1
    sth     r6, 0x104(r31)
    sth     r28, 0x106(r31)
    sth     r28, 0x0(r7)
    sth     r9, 0x10a(r31)
    lhz     r4, 0x0(r4)
    clrlslwi  r4, r4, 17, 1
    sth     r4, 0x10c(r31)
    stw     r28, 0x0(r8)
    stb     r5, 0x11c(r31)
    stb     r5, 0x11d(r31)
    stb     r5, 0x11e(r31)
    stb     r28, 0x12c(r31)
    stw     r0, 0x130(r31)
    stw     r28, 0x134(r31)
    bl      OSInitThreadQueue
    lis     r3, 0xcc00
    lhz     r0, 0x2030(r3)
    addi    r4, r3, 0x2000
    addi    r5, r3, 0x2000
    clrlwi  r0, r0, 17
    sth     r0, 0x30(r4)
    lis     r3, 0x8035
    subi    r4, r3, 0x12e8
    lhz     r0, 0x34(r5)
    li      r3, 0x18
    clrlwi  r0, r0, 17
    sth     r0, 0x34(r5)
    stw     r28, -0x58e0(r13)
    stw     r28, -0x58dc(r13)
    bl      __OSSetInterruptHandler
    li      r3, 0x80
    bl      __OSUnmaskInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl VIWaitForRetrace
VIWaitForRetrace: # 0x8034f684
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    bl      OSDisableInterrupts
    lwz     r30, -0x58f0(r13)
    mr      r31, r3
branch_0x8034f6a4:
    subi    r3, r13, 0x58e8
    bl      OSSleepThread
    lwz     r0, -0x58f0(r13)
    cmplw   r30, r0
    beq+    branch_0x8034f6a4
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl setFbbRegs
setFbbRegs: # 0x8034f6d8
    stwu    sp, -0x48(sp)
    lis     r9, 0x8040
    addi    r9, r9, 0x32c8
    stw     r31, 0x44(sp)
    lbz     r8, 0x2c(r3)
    lhz     r0, 0xe(r3)
    slwi    r31, r8, 5
    lhz     r8, 0x16(r3)
    mullw   r0, r31, r0
    lwz     r11, 0x20(r3)
    lwz     r10, 0x30(r3)
    lhz     r12, 0xa(r3)
    extlwi  r8, r8, 27, 1
    add     r0, r8, r0
    add     r0, r10, r0
    cmpwi   r11, 0x0
    stw     r0, 0x0(r4)
    bne-    branch_0x8034f728
    lwz     r8, 0x0(r4)
    b       branch_0x8034f730

branch_0x8034f728:
    lwz     r0, 0x0(r4)
    add     r8, r0, r31
branch_0x8034f730:
    srawi   r0, r12, 1
    stw     r8, 0x0(r5)
    addze   r0, r0
    slwi    r0, r0, 1
    subfc   r0, r0, r12
    cmpwi   r0, 0x1
    bne-    branch_0x8034f75c
    lwz     r8, 0x0(r4)
    lwz     r0, 0x0(r5)
    stw     r0, 0x0(r4)
    stw     r8, 0x0(r5)
branch_0x8034f75c:
    lwz     r0, 0x0(r4)
    clrlwi  r0, r0, 2
    stw     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    clrlwi  r0, r0, 2
    stw     r0, 0x0(r5)
    lwz     r0, 0x44(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8034f80c
    lbz     r8, 0x2c(r3)
    lhz     r0, 0xe(r3)
    slwi    r31, r8, 5
    lhz     r8, 0x16(r3)
    mullw   r0, r31, r0
    lwz     r11, 0x20(r3)
    lwz     r10, 0x48(r3)
    lhz     r12, 0xa(r3)
    extlwi  r8, r8, 27, 1
    add     r0, r8, r0
    add     r0, r10, r0
    cmpwi   r11, 0x0
    stw     r0, 0x0(r6)
    bne-    branch_0x8034f7c0
    lwz     r8, 0x0(r6)
    b       branch_0x8034f7c8

branch_0x8034f7c0:
    lwz     r0, 0x0(r6)
    add     r8, r0, r31
branch_0x8034f7c8:
    srawi   r0, r12, 1
    stw     r8, 0x0(r7)
    addze   r0, r0
    slwi    r0, r0, 1
    subfc   r0, r0, r12
    cmpwi   r0, 0x1
    bne-    branch_0x8034f7f4
    lwz     r8, 0x0(r6)
    lwz     r0, 0x0(r7)
    stw     r0, 0x0(r6)
    stw     r8, 0x0(r7)
branch_0x8034f7f4:
    lwz     r0, 0x0(r6)
    clrlwi  r0, r0, 2
    stw     r0, 0x0(r6)
    lwz     r0, 0x0(r7)
    clrlwi  r0, r0, 2
    stw     r0, 0x0(r7)
branch_0x8034f80c:
    lwz     r0, 0x0(r4)
    lis     r8, 0x100
    cmplw   r0, r8
    bge-    branch_0x8034f848
    lwz     r0, 0x0(r5)
    cmplw   r0, r8
    bge-    branch_0x8034f848
    lwz     r0, 0x0(r6)
    cmplw   r0, r8
    bge-    branch_0x8034f848
    lwz     r0, 0x0(r7)
    cmplw   r0, r8
    bge-    branch_0x8034f848
    li      r10, 0x0
    b       branch_0x8034f84c

branch_0x8034f848:
    li      r10, 0x1
branch_0x8034f84c:
    cmplwi  r10, 0x0
    beq-    branch_0x8034f884
    lwz     r0, 0x0(r4)
    srwi    r0, r0, 5
    stw     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    srwi    r0, r0, 5
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r6)
    srwi    r0, r0, 5
    stw     r0, 0x0(r6)
    lwz     r0, 0x0(r7)
    srwi    r0, r0, 5
    stw     r0, 0x0(r7)
branch_0x8034f884:
    lwz     r0, 0x0(r4)
    slwi    r11, r10, 12
    lis     r8, 0x1
    sth     r0, 0x1e(r9)
    lis     r0, 0x2
    lwz     r10, -0x58c8(r13)
    lwz     r12, -0x58c4(r13)
    or      r10, r10, r8
    stw     r12, -0x58c4(r13)
    stw     r10, -0x58c8(r13)
    lwz     r10, 0x0(r4)
    lbz     r4, 0x3c(r3)
    srwi    r10, r10, 16
    slwi    r4, r4, 8
    or      r4, r10, r4
    or      r4, r11, r4
    sth     r4, 0x1c(r9)
    lwz     r4, -0x58c8(r13)
    lwz     r10, -0x58c4(r13)
    or      r0, r4, r0
    stw     r10, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lwz     r0, 0x0(r5)
    sth     r0, 0x26(r9)
    lwz     r0, -0x58c8(r13)
    lwz     r4, -0x58c4(r13)
    ori     r0, r0, 0x1000
    stw     r4, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lwz     r0, 0x0(r5)
    srwi    r0, r0, 16
    sth     r0, 0x24(r9)
    lwz     r0, -0x58c8(r13)
    lwz     r4, -0x58c4(r13)
    ori     r0, r0, 0x2000
    stw     r4, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lwz     r0, 0x44(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8034f9a0
    lwz     r3, 0x0(r6)
    subi    r0, r8, 0x8000
    sth     r3, 0x22(r9)
    lwz     r3, -0x58c8(r13)
    lwz     r4, -0x58c4(r13)
    ori     r3, r3, 0x4000
    stw     r4, -0x58c4(r13)
    stw     r3, -0x58c8(r13)
    lwz     r3, 0x0(r6)
    srwi    r3, r3, 16
    sth     r3, 0x20(r9)
    lwz     r3, -0x58c8(r13)
    lwz     r4, -0x58c4(r13)
    or      r0, r3, r0
    stw     r4, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lwz     r0, 0x0(r7)
    sth     r0, 0x2a(r9)
    lwz     r0, -0x58c8(r13)
    lwz     r3, -0x58c4(r13)
    ori     r0, r0, 0x400
    stw     r3, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lwz     r0, 0x0(r7)
    srwi    r0, r0, 16
    sth     r0, 0x28(r9)
    lwz     r0, -0x58c8(r13)
    lwz     r3, -0x58c4(r13)
    ori     r0, r0, 0x800
    stw     r3, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
branch_0x8034f9a0:
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    blr


.globl setVerticalRegs
setVerticalRegs: # 0x8034f9ac
    stwu    sp, -0x28(sp)
    clrlwi  r0, r5, 24
    lis     r11, 0x8040
    stw     r31, 0x24(sp)
    cmplwi  r0, 0xa
    lwz     r31, 0x30(sp)
    addi    r11, r11, 0x32c8
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    blt-    branch_0x8034f9e0
    li      r12, 0x1
    li      r29, 0x2
    b       branch_0x8034f9e8

branch_0x8034f9e0:
    li      r12, 0x2
    li      r29, 0x1
branch_0x8034f9e8:
    clrlwi  r30, r3, 16
    srawi   r0, r30, 1
    addze   r0, r0
    slwi    r0, r0, 1
    subfc.  r0, r0, r30
    bne-    branch_0x8034fa38
    clrlwi  r3, r12, 16
    clrlwi  r0, r6, 16
    mullw   r0, r3, r0
    clrlwi  r3, r4, 16
    subf    r0, r3, r0
    clrlwi  r3, r29, 16
    mullw   r29, r3, r30
    subf    r0, r30, r0
    mullw   r30, r3, r0
    add     r0, r7, r29
    add     r6, r9, r30
    add     r3, r8, r29
    add     r7, r10, r30
    b       branch_0x8034fa6c

branch_0x8034fa38:
    clrlwi  r3, r12, 16
    clrlwi  r0, r6, 16
    mullw   r0, r3, r0
    clrlwi  r3, r4, 16
    subf    r0, r3, r0
    clrlwi  r3, r29, 16
    mullw   r29, r3, r30
    subf    r0, r30, r0
    mullw   r30, r3, r0
    add     r0, r8, r29
    add     r6, r10, r30
    add     r3, r7, r29
    add     r7, r9, r30
branch_0x8034fa6c:
    clrlwi  r8, r4, 16
    clrlwi  r4, r12, 16
    divw    r4, r8, r4
    cmpwi   r31, 0x0
    clrlwi  r4, r4, 16
    beq-    branch_0x8034faa0
    slwi    r4, r4, 1
    subi    r4, r4, 0x2
    add     r0, r0, r4
    add     r3, r3, r4
    li      r4, 0x0
    addi    r6, r6, 0x2
    addi    r7, r7, 0x2
branch_0x8034faa0:
    clrlwi  r5, r5, 24
    clrlslwi  r4, r4, 16, 4
    or      r4, r5, r4
    sth     r4, 0x0(r11)
    lis     r4, 0x8000
    lis     r9, 0x100
    lwz     r5, -0x58c8(r13)
    lis     r8, 0x200
    lwz     r10, -0x58c4(r13)
    or      r4, r5, r4
    lis     r5, 0x40
    stw     r10, -0x58c4(r13)
    stw     r4, -0x58c8(r13)
    lis     r4, 0x80
    sth     r0, 0xe(r11)
    lwz     r0, -0x58c8(r13)
    lwz     r10, -0x58c4(r13)
    or      r0, r0, r9
    stw     r10, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    sth     r6, 0xc(r11)
    lwz     r0, -0x58c8(r13)
    lwz     r6, -0x58c4(r13)
    or      r0, r0, r8
    stw     r6, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    sth     r3, 0x12(r11)
    lwz     r0, -0x58c8(r13)
    lwz     r3, -0x58c4(r13)
    or      r0, r0, r5
    stw     r3, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    sth     r7, 0x10(r11)
    lwz     r0, -0x58c8(r13)
    lwz     r3, -0x58c4(r13)
    or      r0, r0, r4
    stw     r3, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl VIConfigure
VIConfigure: # 0x8034fb4c
    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    lis     r4, 0x8040
    stwu    sp, -0x78(sp)
    stmw    r14, 0x30(sp)
    addi    r31, r3, 0x0
    subi    r15, r5, 0x7850
    addi    r29, r4, 0x32c8
    bl      OSDisableInterrupts
    lwz     r4, 0x0(r31)
    addi    r28, r29, 0x114
    lwz     r0, 0x114(r29)
    addi    r14, r3, 0x0
    clrlwi  r4, r4, 30
    cmplw   r0, r4
    beq-    branch_0x8034fb9c
    li      r0, 0x1
    stw     r0, -0x58d0(r13)
    stw     r4, 0x0(r28)
branch_0x8034fb9c:
    lwz     r0, 0x0(r31)
    lis     r3, 0x8000
    lwz     r17, 0xcc(r3)
    srwi    r16, r0, 2
    cmplwi  r16, 0x4
    bne-    branch_0x8034fc1c
    lwz     r0, -0x58a4(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8034fc1c
    li      r0, 0x1
    crxor   6, 6, 6
    stw     r0, -0x58a4(r13)
    addi    r3, r15, 0x1bc
    bl      OSReport
    addi    r3, r15, 0x1e8
    crxor   6, 6, 6
    bl      OSReport
    addi    r3, r15, 0x214
    crxor   6, 6, 6
    bl      OSReport
    addi    r3, r15, 0x240
    crxor   6, 6, 6
    bl      OSReport
    addi    r3, r15, 0x26c
    crxor   6, 6, 6
    bl      OSReport
    addi    r3, r15, 0x298
    crxor   6, 6, 6
    bl      OSReport
    addi    r3, r15, 0x1bc
    crxor   6, 6, 6
    bl      OSReport
branch_0x8034fc1c:
    cmplwi  r16, 0x0
    beq-    branch_0x8034fc2c
    cmplwi  r16, 0x2
    bne-    branch_0x8034fc34
branch_0x8034fc2c:
    stw     r17, 0x118(r29)
    b       branch_0x8034fc38

branch_0x8034fc34:
    stw     r16, 0x118(r29)
branch_0x8034fc38:
    lhz     r0, 0xa(r31)
    sth     r0, 0xf0(r29)
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x1
    bne-    branch_0x8034fc58
    lhz     r0, 0xc(r31)
    clrlslwi  r0, r0, 17, 1
    b       branch_0x8034fc5c

branch_0x8034fc58:
    lhz     r0, 0xc(r31)
branch_0x8034fc5c:
    sth     r0, 0xf2(r29)
    addi    r23, r29, 0xf2
    addi    r24, r29, 0xf4
    lhz     r0, 0xe(r31)
    addi    r27, r29, 0x102
    addi    r25, r29, 0x110
    sth     r0, 0xf4(r29)
    li      r0, 0x0
    addi    r16, r29, 0x10a
    lhz     r3, 0x4(r31)
    addi    r26, r29, 0x10c
    addi    r15, r29, 0x106
    sth     r3, 0x102(r29)
    addi    r17, r29, 0x108
    lhz     r3, 0x8(r31)
    sth     r3, 0x104(r29)
    lwz     r3, 0x14(r31)
    stw     r3, 0x110(r29)
    lhz     r3, 0x102(r29)
    sth     r3, 0x10a(r29)
    lhz     r3, 0x104(r29)
    sth     r3, 0x10c(r29)
    sth     r0, 0x106(r29)
    sth     r0, 0x108(r29)
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x2
    bne-    branch_0x8034fcd0
    lhz     r0, 0x0(r26)
    b       branch_0x8034fcfc

branch_0x8034fcd0:
    cmplwi  r0, 0x3
    bne-    branch_0x8034fce0
    lhz     r0, 0x0(r26)
    b       branch_0x8034fcfc

branch_0x8034fce0:
    lwz     r0, 0x0(r25)
    cmpwi   r0, 0x0
    bne-    branch_0x8034fcf8
    lhz     r0, 0x0(r26)
    clrlslwi  r0, r0, 17, 1
    b       branch_0x8034fcfc

branch_0x8034fcf8:
    lhz     r0, 0x0(r26)
branch_0x8034fcfc:
    addi    r22, r29, 0xf6
    sth     r0, 0xf6(r29)
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x3
    bne-    branch_0x8034fd18
    li      r0, 0x1
    b       branch_0x8034fd1c

branch_0x8034fd18:
    li      r0, 0x0
branch_0x8034fd1c:
    addi    r18, r29, 0x134
    stw     r0, 0x134(r29)
    addi    r21, r29, 0x118
    lwz     r3, 0x118(r29)
    lwz     r0, 0x0(r28)
    slwi    r3, r3, 2
    add     r3, r3, r0
    bl      getTiming
    mr      r30, r3
    stw     r30, 0x144(r29)
    lhz     r0, 0x0(r24)
    lha     r4, 0xf0(r29)
    lha     r3, -0x58d4(r13)
    subfic  r5, r0, 0x2d0
    lhz     r0, 0x2(r30)
    add     r3, r4, r3
    cmpw    r3, r5
    ble-    branch_0x8034fd68
    b       branch_0x8034fd78

branch_0x8034fd68:
    cmpwi   r3, 0x0
    bge-    branch_0x8034fd74
    li      r3, 0x0
branch_0x8034fd74:
    mr      r5, r3
branch_0x8034fd78:
    sth     r5, 0xf8(r29)
    addi    r3, r29, 0xf8
    lwz     r4, 0x0(r25)
    cmpwi   r4, 0x0
    bne-    branch_0x8034fd94
    li      r4, 0x2
    b       branch_0x8034fd98

branch_0x8034fd94:
    li      r4, 0x1
branch_0x8034fd98:
    lhz     r5, 0x0(r23)
    lha     r6, -0x58d2(r13)
    extsh   r7, r5
    clrlwi  r5, r5, 31
    add     r7, r7, r6
    cmpw    r7, r5
    ble-    branch_0x8034fdb8
    b       branch_0x8034fdbc

branch_0x8034fdb8:
    mr      r7, r5
branch_0x8034fdbc:
    sth     r7, 0xfa(r29)
    extsh   r0, r0
    slwi    r0, r0, 1
    lhz     r8, 0x0(r22)
    subf    r0, r5, r0
    lha     r7, 0x0(r23)
    addi    r19, r29, 0xfa
    extsh   r9, r8
    add     r10, r9, r6
    add     r10, r7, r10
    subf.   r9, r0, r10
    ble-    branch_0x8034fdf4
    subf    r9, r0, r10
    b       branch_0x8034fdf8

branch_0x8034fdf4:
    li      r9, 0x0
branch_0x8034fdf8:
    add     r10, r7, r6
    subf.   r7, r5, r10
    bge-    branch_0x8034fe0c
    subf    r7, r5, r10
    b       branch_0x8034fe10

branch_0x8034fe0c:
    li      r7, 0x0
branch_0x8034fe10:
    add     r7, r8, r7
    subf    r7, r9, r7
    addi    r20, r29, 0xfc
    sth     r7, 0xfc(r29)
    lha     r7, 0x0(r23)
    add     r8, r7, r6
    subf.   r7, r5, r8
    bge-    branch_0x8034fe38
    subf    r7, r5, r8
    b       branch_0x8034fe3c

branch_0x8034fe38:
    li      r7, 0x0
branch_0x8034fe3c:
    divw    r8, r7, r4
    lhz     r7, 0x0(r17)
    subf    r7, r8, r7
    sth     r7, 0xfe(r29)
    lha     r7, 0x0(r22)
    lha     r9, 0x0(r23)
    add     r8, r7, r6
    add     r8, r9, r8
    subf.   r7, r0, r8
    ble-    branch_0x8034fe6c
    subf    r7, r0, r8
    b       branch_0x8034fe70

branch_0x8034fe6c:
    li      r7, 0x0
branch_0x8034fe70:
    add     r6, r9, r6
    subf.   r0, r5, r6
    bge-    branch_0x8034fe84
    subf    r0, r5, r6
    b       branch_0x8034fe88

branch_0x8034fe84:
    li      r0, 0x0
branch_0x8034fe88:
    divw    r0, r0, r4
    lhz     r5, 0x0(r26)
    divw    r4, r7, r4
    add     r0, r5, r0
    subf    r0, r4, r0
    sth     r0, 0x100(r29)
    lwz     r0, -0x58d8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8034feb4
    li      r0, 0x3
    stw     r0, 0x0(r21)
branch_0x8034feb4:
    lhz     r5, 0x18(r30)
    srawi   r4, r5, 1
    addze   r4, r4
    srawi   r0, r5, 1
    addze   r0, r0
    slwi    r0, r0, 1
    subfc   r0, r0, r5
    clrlwi. r0, r0, 16
    clrlwi  r4, r4, 16
    beq-    branch_0x8034fee4
    lhz     r5, 0x1a(r30)
    b       branch_0x8034fee8

branch_0x8034fee4:
    li      r5, 0x0
branch_0x8034fee8:
    addi    r0, r5, 0x1
    sth     r0, 0x32(r29)
    addi    r0, r4, 0x1
    ori     r0, r0, 0x1000
    lwz     r5, -0x58c8(r13)
    addi    r4, r29, 0x2
    lwz     r6, -0x58c4(r13)
    ori     r5, r5, 0x40
    stw     r6, -0x58c4(r13)
    stw     r5, -0x58c8(r13)
    sth     r0, 0x30(r29)
    lwz     r0, -0x58c8(r13)
    lwz     r5, -0x58c4(r13)
    ori     r0, r0, 0x80
    stw     r5, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lwz     r0, 0x0(r28)
    lhz     r5, 0x2(r29)
    cmplwi  r0, 0x2
    beq-    branch_0x8034ff40
    cmplwi  r0, 0x3
    bne-    branch_0x8034ff4c
branch_0x8034ff40:
    rlwinm  r0, r5, 0, 30, 28
    ori     r5, r0, 0x4
    b       branch_0x8034ff54

branch_0x8034ff4c:
    rlwinm  r5, r5, 0, 30, 28
    insrwi  r5, r0, 1, 29
branch_0x8034ff54:
    lwz     r6, 0x0(r21)
    rlwinm  r5, r5, 0, 29, 27
    lwz     r7, 0x0(r18)
    cmplwi  r6, 0x4
    slwi    r0, r7, 3
    or      r0, r5, r0
    beq-    branch_0x8034ff78
    cmplwi  r6, 0x5
    bne-    branch_0x8034ff80
branch_0x8034ff78:
    rlwinm  r0, r0, 0, 24, 21
    b       branch_0x8034ff8c

branch_0x8034ff80:
    rlwinm  r5, r0, 0, 24, 21
    slwi    r0, r6, 8
    or      r0, r5, r0
branch_0x8034ff8c:
    sth     r0, 0x0(r4)
    lis     r0, 0x4000
    addi    r6, r29, 0x6c
    lwz     r4, -0x58c8(r13)
    lwz     r5, -0x58c4(r13)
    or      r0, r4, r0
    stw     r5, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lwz     r0, 0x0(r31)
    lhz     r4, 0x6c(r29)
    cmpwi   r0, 0x2
    beq-    branch_0x8034ffc4
    cmpwi   r0, 0x3
    bne-    branch_0x8034ffd0
branch_0x8034ffc4:
    clrrwi  r0, r4, 1
    ori     r0, r0, 0x1
    b       branch_0x8034ffd4

branch_0x8034ffd0:
    clrrwi  r0, r4, 1
branch_0x8034ffd4:
    sth     r0, 0x0(r6)
    cmpwi   r7, 0x0
    lwz     r4, -0x58c8(r13)
    lwz     r0, -0x58c4(r13)
    ori     r0, r0, 0x200
    stw     r0, -0x58c4(r13)
    stw     r4, -0x58c8(r13)
    lhz     r4, 0x0(r24)
    lhz     r5, 0x0(r16)
    beq-    branch_0x80350004
    slwi    r0, r5, 1
    b       branch_0x80350008

branch_0x80350004:
    mr      r0, r5
branch_0x80350008:
    clrlwi  r8, r0, 16
    cmplw   r8, r4
    bge-    branch_0x80350060
    slwi    r6, r8, 8
    subi    r0, r6, 0x1
    add     r0, r4, r0
    divwu   r0, r0, r4
    ori     r0, r0, 0x1000
    sth     r0, 0x4a(r29)
    lis     r0, 0x400
    lwz     r6, -0x58c8(r13)
    lwz     r7, -0x58c4(r13)
    or      r0, r7, r0
    stw     r0, -0x58c4(r13)
    stw     r6, -0x58c8(r13)
    sth     r8, 0x70(r29)
    lwz     r6, -0x58c8(r13)
    lwz     r0, -0x58c4(r13)
    ori     r0, r0, 0x80
    stw     r0, -0x58c4(r13)
    stw     r6, -0x58c8(r13)
    b       branch_0x80350080

branch_0x80350060:
    li      r0, 0x100
    sth     r0, 0x4a(r29)
    lis     r0, 0x400
    lwz     r6, -0x58c8(r13)
    lwz     r7, -0x58c4(r13)
    or      r0, r7, r0
    stw     r0, -0x58c4(r13)
    stw     r6, -0x58c8(r13)
branch_0x80350080:
    lhz     r0, 0x0(r3)
    subfic  r12, r4, 0x2d0
    lhz     r6, 0x1a(r30)
    lis     r3, 0x1000
    lis     r8, 0x2000
    sth     r6, 0x6(r29)
    lis     r9, 0x400
    lis     r7, 0x800
    lwz     r10, -0x58c8(r13)
    lis     r6, 0x10
    lis     r4, 0x20
    lwz     r11, -0x58c4(r13)
    or      r10, r10, r3
    lis     r3, 0x4
    stw     r11, -0x58c4(r13)
    stw     r10, -0x58c8(r13)
    lbz     r10, 0x1d(r30)
    lbz     r11, 0x1e(r30)
    insrwi  r11, r10, 8, 16
    sth     r11, 0x4(r29)
    lwz     r10, -0x58c8(r13)
    lwz     r11, -0x58c4(r13)
    or      r8, r10, r8
    stw     r11, -0x58c4(r13)
    stw     r8, -0x58c8(r13)
    lbz     r8, 0x1f(r30)
    lbz     r10, 0x1c(r30)
    add     r16, r8, r0
    lhz     r11, 0x20(r30)
    subi    r16, r16, 0x28
    clrlslwi  r8, r16, 23, 7
    or      r8, r10, r8
    sth     r8, 0xa(r29)
    add     r8, r11, r0
    addi    r0, r8, 0x28
    lwz     r10, -0x58c8(r13)
    subf    r0, r12, r0
    srwi    r8, r16, 9
    lwz     r11, -0x58c4(r13)
    slwi    r0, r0, 1
    or      r9, r10, r9
    stw     r11, -0x58c4(r13)
    or      r0, r8, r0
    stw     r9, -0x58c8(r13)
    sth     r0, 0x8(r29)
    lwz     r0, -0x58c8(r13)
    lwz     r8, -0x58c4(r13)
    or      r0, r0, r7
    stw     r8, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lhz     r0, 0x10(r30)
    lbz     r7, 0xc(r30)
    slwi    r0, r0, 5
    or      r0, r7, r0
    sth     r0, 0x16(r29)
    lwz     r0, -0x58c8(r13)
    lwz     r7, -0x58c4(r13)
    or      r0, r0, r6
    stw     r7, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lhz     r0, 0x14(r30)
    lbz     r6, 0xe(r30)
    slwi    r0, r0, 5
    or      r0, r6, r0
    sth     r0, 0x14(r29)
    lwz     r0, -0x58c8(r13)
    lwz     r6, -0x58c4(r13)
    or      r0, r0, r4
    stw     r6, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lhz     r0, 0x12(r30)
    lbz     r4, 0xd(r30)
    slwi    r0, r0, 5
    or      r0, r4, r0
    sth     r0, 0x1a(r29)
    lwz     r0, -0x58c8(r13)
    lwz     r4, -0x58c4(r13)
    or      r0, r0, r3
    stw     r4, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lhz     r0, 0x16(r30)
    lbz     r3, 0xf(r30)
    slwi    r0, r0, 5
    or      r0, r3, r0
    sth     r0, 0x18(r29)
    lwz     r3, -0x58c8(r13)
    lis     r0, 0x8
    addi    r6, r29, 0x11c
    lwz     r4, -0x58c4(r13)
    or      r0, r3, r0
    stw     r4, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
    lhz     r3, 0x0(r27)
    lwz     r4, 0x0(r25)
    addi    r0, r3, 0xf
    lhz     r3, 0x0(r15)
    srawi   r0, r0, 4
    addze   r0, r0
    cmpwi   r4, 0x0
    stb     r0, 0x11c(r29)
    bne-    branch_0x8035021c
    lbz     r4, 0x0(r6)
    b       branch_0x80350224

branch_0x8035021c:
    lbz     r0, 0x0(r6)
    clrlslwi  r4, r0, 25, 1
branch_0x80350224:
    srawi   r0, r3, 4
    stb     r4, 0x11d(r29)
    addze   r0, r0
    slwi    r0, r0, 4
    subfc   r0, r0, r3
    stb     r0, 0x12c(r29)
    addi    r0, r5, 0xf
    lis     r3, 0x800
    lbz     r4, 0x12c(r29)
    add     r0, r4, r0
    srawi   r0, r0, 4
    addze   r0, r0
    stb     r0, 0x11e(r29)
    lbz     r0, 0x11e(r29)
    lbz     r4, 0x11d(r29)
    insrwi  r4, r0, 8, 16
    sth     r4, 0x48(r29)
    lwz     r4, -0x58c8(r13)
    lwz     r0, -0x58a8(r13)
    lwz     r5, -0x58c4(r13)
    cmplwi  r0, 0x0
    or      r0, r5, r3
    stw     r0, -0x58c4(r13)
    stw     r4, -0x58c8(r13)
    beq-    branch_0x803502a0
    addi    r3, r29, 0xf0
    addi    r4, r29, 0x124
    addi    r5, r29, 0x128
    addi    r6, r29, 0x13c
    addi    r7, r29, 0x140
    bl      setFbbRegs
branch_0x803502a0:
    lwz     r0, 0x130(r29)
    stw     r0, 0x8(sp)
    lhz     r3, 0x0(r19)
    lhz     r4, 0x0(r20)
    lbz     r5, 0x0(r30)
    lhz     r6, 0x2(r30)
    lhz     r7, 0x4(r30)
    lhz     r8, 0x6(r30)
    lhz     r9, 0x8(r30)
    lhz     r10, 0xa(r30)
    bl      setVerticalRegs
    mr      r3, r14
    bl      OSRestoreInterrupts
    lmw     r14, 0x30(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl VIFlush
VIFlush: # 0x803502e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    bl      OSDisableInterrupts
    lwz     r7, -0x58c0(r13)
    lis     r4, 0x8040
    lis     r5, 0x8040
    lwz     r6, -0x58d0(r13)
    li      r0, 0x0
    addi    r29, r4, 0x3340
    or      r6, r7, r6
    stw     r6, -0x58c0(r13)
    addi    r31, r5, 0x32c8
    addi    r30, r3, 0x0
    stw     r0, -0x58d0(r13)
    lwz     r4, -0x58b8(r13)
    lwz     r5, -0x58b4(r13)
    lwz     r0, -0x58c8(r13)
    lwz     r3, -0x58c4(r13)
    or      r0, r4, r0
    or      r3, r5, r3
    stw     r3, -0x58b4(r13)
    stw     r0, -0x58b8(r13)
    b       branch_0x803503c4

branch_0x8035034c:
    lwz     r3, -0x58c8(r13)
    li      r5, 0x20
    lwz     r27, -0x58c4(r13)
    addi    r4, r27, 0x0
    bl      __shr2u
    cntlzw  r4, r4
    cmpwi   r4, 0x20
    li      r0, -0x1
    and     r0, r27, r0
    bge-    branch_0x80350378
    b       branch_0x80350380

branch_0x80350378:
    cntlzw  r3, r0
    addi    r4, r3, 0x20
branch_0x80350380:
    slwi    r5, r4, 1
    add     r3, r31, r5
    lhz     r0, 0x0(r3)
    add     r3, r29, r5
    subfic  r5, r4, 0x3f
    sth     r0, 0x0(r3)
    li      r3, 0x0
    li      r4, 0x1
    bl      __shl2i
    lwz     r0, -0x58c8(r13)
    not     r5, r3
    not     r4, r4
    lwz     r3, -0x58c4(r13)
    and     r0, r0, r5
    and     r3, r3, r4
    stw     r3, -0x58c4(r13)
    stw     r0, -0x58c8(r13)
branch_0x803503c4:
    lwz     r0, -0x58c8(r13)
    li      r3, 0x0
    lwz     r4, -0x58c4(r13)
    xor     r0, r0, r3
    xor     r3, r4, r3
    or.     r0, r3, r0
    bne+    branch_0x8035034c
    li      r0, 0x1
    stw     r0, -0x58ec(r13)
    mr      r3, r30
    bl      OSRestoreInterrupts
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl VISetNextFrameBuffer
VISetNextFrameBuffer: # 0x80350404
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x32c8
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      OSDisableInterrupts
    stw     r30, 0x120(r31)
    li      r0, 0x1
    addi    r30, r3, 0x0
    stw     r0, -0x58a8(r13)
    addi    r3, r31, 0xf0
    addi    r4, r31, 0x124
    addi    r5, r31, 0x128
    addi    r6, r31, 0x13c
    addi    r7, r31, 0x140
    bl      setFbbRegs
    mr      r3, r30
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl VISetBlack
VISetBlack: # 0x80350470
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x32c8
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      OSDisableInterrupts
    stw     r30, 0x130(r31)
    mr      r30, r3
    lwz     r10, 0x144(r31)
    lwz     r0, 0x130(r31)
    stw     r0, 0x8(sp)
    lhz     r3, 0xfa(r31)
    lhz     r4, 0xf6(r31)
    lbz     r5, 0x0(r10)
    lhz     r6, 0x2(r10)
    lhz     r7, 0x4(r10)
    lhz     r8, 0x6(r10)
    lhz     r9, 0x8(r10)
    lhz     r10, 0xa(r10)
    bl      setVerticalRegs
    mr      r3, r30
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl VIGetRetraceCount
VIGetRetraceCount: # 0x803504ec
    lwz     r3, -0x58f0(r13)
    blr


.globl getCurrentFieldEvenOdd
getCurrentFieldEvenOdd: # 0x803504f4
    lis     r3, 0xcc00
    addi    r7, r3, 0x2000
    lhzu    r0, 0x2c(r7)
    addi    r4, r3, 0x2000
    clrlwi  r5, r0, 21
branch_0x80350508:
    lhz     r0, 0x0(r7)
    mr      r6, r5
    lhz     r3, 0x2e(r4)
    clrlwi  r5, r0, 21
    cmplw   r6, r5
    clrlwi  r3, r3, 21
    bne+    branch_0x80350508
    lwz     r6, -0x58b0(r13)
    subi    r0, r5, 0x1
    subi    r4, r3, 0x1
    lhz     r3, 0x1a(r6)
    slwi    r5, r0, 1
    lhz     r0, 0x18(r6)
    divwu   r3, r4, r3
    add     r3, r5, r3
    cmplw   r3, r0
    bge-    branch_0x80350554
    li      r3, 0x1
    blr

branch_0x80350554:
    li      r3, 0x0
    blr


.globl VIGetNextField
VIGetNextField: # 0x8035055c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    addi    r8, r4, 0x2000
    lhzu    r0, 0x2c(r8)
    addi    r5, r4, 0x2000
    clrlwi  r6, r0, 21
branch_0x80350584:
    lhz     r0, 0x0(r8)
    mr      r7, r6
    lhz     r4, 0x2e(r5)
    clrlwi  r6, r0, 21
    cmplw   r7, r6
    clrlwi  r4, r4, 21
    bne+    branch_0x80350584
    lwz     r7, -0x58b0(r13)
    subi    r0, r6, 0x1
    subi    r5, r4, 0x1
    lhz     r4, 0x1a(r7)
    slwi    r6, r0, 1
    lhz     r0, 0x18(r7)
    divwu   r4, r5, r4
    add     r4, r6, r4
    cmplw   r4, r0
    bge-    branch_0x803505d0
    li      r31, 0x1
    b       branch_0x803505d4

branch_0x803505d0:
    li      r31, 0x0
branch_0x803505d4:
    bl      OSRestoreInterrupts
    lis     r3, 0x8040
    addi    r3, r3, 0x33b8
    lhz     r0, 0xa(r3)
    xori     r3, r31, 0x1
    clrlwi  r0, r0, 31
    xor     r3, r3, r0
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl VIGetCurrentLine
VIGetCurrentLine: # 0x80350604
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    lwz     r31, -0x58b0(r13)
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    addi    r8, r4, 0x2000
    lhzu    r0, 0x2c(r8)
    addi    r5, r4, 0x2000
    clrlwi  r6, r0, 21
branch_0x80350634:
    lhz     r0, 0x0(r8)
    mr      r7, r6
    lhz     r4, 0x2e(r5)
    clrlwi  r6, r0, 21
    cmplw   r7, r6
    clrlwi  r7, r4, 21
    bne+    branch_0x80350634
    lwz     r4, -0x58b0(r13)
    subi    r5, r7, 0x1
    subi    r6, r6, 0x1
    lhz     r0, 0x1a(r4)
    slwi    r4, r6, 1
    divwu   r0, r5, r0
    add     r30, r4, r0
    bl      OSRestoreInterrupts
    lhz     r0, 0x18(r31)
    cmplw   r30, r0
    blt-    branch_0x80350680
    subf    r30, r0, r30
branch_0x80350680:
    srwi    r3, r30, 1
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl VIGetTvFormat
VIGetTvFormat: # 0x8035069c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSDisableInterrupts
    lwz     r0, -0x58ac(r13)
    cmpwi   r0, 0x3
    beq-    branch_0x803506e8
    bge-    branch_0x803506d8
    cmpwi   r0, 0x1
    beq-    branch_0x803506f0
    bge-    branch_0x803506f8
    cmpwi   r0, 0x0
    bge-    branch_0x803506e8
    b       branch_0x803506fc

branch_0x803506d8:
    cmpwi   r0, 0x5
    beq-    branch_0x803506f8
    bge-    branch_0x803506fc
    b       branch_0x803506f0

branch_0x803506e8:
    li      r31, 0x0
    b       branch_0x803506fc

branch_0x803506f0:
    li      r31, 0x1
    b       branch_0x803506fc

branch_0x803506f8:
    mr      r31, r0
branch_0x803506fc:
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl VIGetDTVStatus
VIGetDTVStatus: # 0x80350718
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    lhz     r0, 0x206e(r4)
    clrlwi  r31, r0, 30
    bl      OSRestoreInterrupts
    clrlwi  r3, r31, 31
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

