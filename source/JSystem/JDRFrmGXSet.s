
.globl perform__Q26JDrama9TFrmGXSetFUlPQ26JDrama9TGraphics
perform__Q26JDrama9TFrmGXSetFUlPQ26JDrama9TGraphics: # 0x802f9310
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x130(sp)
    beq-    branch_0x802f952c
    lwz     r7, 0x10(r3)
    addi    r6, r5, 0xfc
    lhz     r0, 0xc(r7)
    slwi    r0, r0, 2
    add     r7, r7, r0
    lwz     r0, 0x4(r7)
    stw     r0, 0x4(r5)
    lwz     r8, 0x10(r3)
    lwz     r7, 0x10(r8)
    lwz     r0, 0x14(r8)
    stw     r7, 0x8(r5)
    stw     r0, 0xc(r5)
    lwz     r7, 0x18(r8)
    lwz     r0, 0x1c(r8)
    stw     r7, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r7, 0x20(r8)
    lwz     r0, 0x24(r8)
    stw     r7, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r7, 0x28(r8)
    lwz     r0, 0x2c(r8)
    stw     r7, 0x20(r5)
    stw     r0, 0x24(r5)
    lwz     r7, 0x30(r8)
    lwz     r0, 0x34(r8)
    stw     r7, 0x28(r5)
    stw     r0, 0x2c(r5)
    lwz     r7, 0x38(r8)
    lwz     r0, 0x3c(r8)
    stw     r7, 0x30(r5)
    stw     r0, 0x34(r5)
    lwz     r7, 0x40(r8)
    lwz     r0, 0x44(r8)
    stw     r7, 0x38(r5)
    stw     r0, 0x3c(r5)
    lwz     r0, 0x48(r8)
    stw     r0, 0x40(r5)
    lwz     r7, 0x10(r3)
    lhz     r0, 0x64(r7)
    clrlwi. r0, r0, 31
    beq-    branch_0x802f93d4
    lhz     r0, 0x0(r6)
    ori     r0, r0, 0x1
    sth     r0, 0x0(r6)
    b       branch_0x802f93e0

branch_0x802f93d4:
    lhz     r0, 0x0(r6)
    clrrwi  r0, r0, 1
    sth     r0, 0x0(r6)
branch_0x802f93e0:
    lwz     r6, 0x10(r3)
    addi    r7, r5, 0xfc
    lhz     r0, 0x64(r6)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802f9404
    lhz     r0, 0x0(r7)
    ori     r0, r0, 0x2
    sth     r0, 0x0(r7)
    b       branch_0x802f9410

branch_0x802f9404:
    lhz     r0, 0x0(r7)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x0(r7)
branch_0x802f9410:
    lwz     r6, 0x10(r3)
    addi    r7, r5, 0xfc
    lhz     r0, 0x64(r6)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802f9434
    lhz     r0, 0x0(r7)
    ori     r0, r0, 0x4
    sth     r0, 0x0(r7)
    b       branch_0x802f9440

branch_0x802f9434:
    lhz     r0, 0x0(r7)
    rlwinm  r0, r0, 0, 30, 28
    sth     r0, 0x0(r7)
branch_0x802f9440:
    lwz     r6, 0x10(r3)
    addi    r7, r5, 0xfc
    lhz     r0, 0x64(r6)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802f9464
    lhz     r0, 0x0(r7)
    ori     r0, r0, 0x8
    sth     r0, 0x0(r7)
    b       branch_0x802f9470

branch_0x802f9464:
    lhz     r0, 0x0(r7)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0x0(r7)
branch_0x802f9470:
    lwz     r6, 0x10(r3)
    addi    r7, r5, 0xfc
    lhz     r0, 0x64(r6)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802f9494
    lhz     r0, 0x0(r7)
    ori     r0, r0, 0x10
    sth     r0, 0x0(r7)
    b       branch_0x802f94a0

branch_0x802f9494:
    lhz     r0, 0x0(r7)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0x0(r7)
branch_0x802f94a0:
    lwz     r6, 0x10(r3)
    addi    r7, r5, 0xfc
    lhz     r0, 0x64(r6)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x802f94c4
    lhz     r0, 0x0(r7)
    ori     r0, r0, 0x20
    sth     r0, 0x0(r7)
    b       branch_0x802f94d0

branch_0x802f94c4:
    lhz     r0, 0x0(r7)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0x0(r7)
branch_0x802f94d0:
    lwz     r6, 0x10(r3)
    addi    r7, r5, 0xfc
    lhz     r0, 0x64(r6)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x802f94f4
    lhz     r0, 0x0(r7)
    ori     r0, r0, 0x40
    sth     r0, 0x0(r7)
    b       branch_0x802f9500

branch_0x802f94f4:
    lhz     r0, 0x0(r7)
    rlwinm  r0, r0, 0, 26, 24
    sth     r0, 0x0(r7)
branch_0x802f9500:
    lwz     r6, 0x10(r3)
    lwz     r0, 0x54(r6)
    stw     r0, 0xf0(r5)
    lwz     r6, 0x10(r3)
    lwz     r0, 0x58(r6)
    stw     r0, 0x124(sp)
    lwz     r0, 0x124(sp)
    stw     r0, 0xf4(r5)
    lwz     r3, 0x10(r3)
    lwz     r0, 0x5c(r3)
    stw     r0, 0xf8(r5)
branch_0x802f952c:
    addi    sp, sp, 0x130
    blr

