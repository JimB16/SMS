
.globl init__Q28JASystem8TSeqCtrlFPvUl
init__Q28JASystem8TSeqCtrlFPvUl: # 0x8031a078
    stw     r4, 0x0(r3)
    li      r0, 0x0
    lwz     r4, 0x0(r3)
    add     r4, r4, r5
    stw     r4, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    sth     r0, 0x30(r3)
    stw     r0, 0x14(r3)
    sth     r0, 0x32(r3)
    stw     r0, 0x18(r3)
    sth     r0, 0x34(r3)
    stw     r0, 0x1c(r3)
    sth     r0, 0x36(r3)
    stw     r0, 0x20(r3)
    sth     r0, 0x38(r3)
    stw     r0, 0x24(r3)
    sth     r0, 0x3a(r3)
    stw     r0, 0x28(r3)
    sth     r0, 0x3c(r3)
    stw     r0, 0x2c(r3)
    sth     r0, 0x3e(r3)
    stw     r0, 0x40(r3)
    stw     r0, 0x44(r3)
    blr


.globl loopE__Q28JASystem8TSeqCtrlFv
loopE__Q28JASystem8TSeqCtrlFv: # 0x8031a0e0
    lwz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8031a0f4
    li      r3, 0x0
    blr

branch_0x8031a0f4:
    slwi    r0, r0, 1
    add     r4, r3, r0
    lhzu    r0, 0x2e(r4)
    cmplwi  r0, 0x0
    mr      r5, r0
    beq-    branch_0x8031a110
    addi    r5, r5, -0x1
branch_0x8031a110:
    clrlwi. r0, r5, 16
    bne-    branch_0x8031a12c
    lwz     r4, 0xc(r3)
    addi    r0, r4, -0x1
    stw     r0, 0xc(r3)
    li      r3, 0x1
    blr

branch_0x8031a12c:
    sth     r5, 0x0(r4)
    lwz     r0, 0xc(r3)
    slwi    r0, r0, 2
    add     r4, r3, r0
    lwz     r0, 0xc(r4)
    stw     r0, 0x4(r3)
    li      r3, 0x1
    blr


.globl waitCountDown__Q28JASystem8TSeqCtrlFv
waitCountDown__Q28JASystem8TSeqCtrlFv: # 0x8031a14c
    lwz     r4, 0x8(r3)
    cmpwi   r4, 0x0
    ble-    branch_0x8031a174
    addi    r0, r4, -0x1
    stw     r0, 0x8(r3)
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8031a174
    li      r3, 0x0
    blr

branch_0x8031a174:
    li      r3, 0x1
    blr


.globl callIntr__Q28JASystem8TSeqCtrlFPv
callIntr__Q28JASystem8TSeqCtrlFPv: # 0x8031a17c
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8031a190
    li      r3, 0x0
    blr

branch_0x8031a190:
    lwz     r5, 0x4(r3)
    li      r0, 0x0
    stw     r5, 0x44(r3)
    stw     r4, 0x4(r3)
    lwz     r4, 0x8(r3)
    stw     r4, 0x40(r3)
    stw     r0, 0x8(r3)
    li      r3, 0x1
    blr


.globl retIntr__Q28JASystem8TSeqCtrlFv
retIntr__Q28JASystem8TSeqCtrlFv: # 0x8031a1b4
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8031a1c8
    li      r3, 0x0
    blr

branch_0x8031a1c8:
    lwz     r4, 0x40(r3)
    li      r0, 0x0
    stw     r4, 0x8(r3)
    lwz     r4, 0x44(r3)
    stw     r4, 0x4(r3)
    stw     r0, 0x44(r3)
    li      r3, 0x1
    blr


.globl get16__Q28JASystem8TSeqCtrlCFUl
get16__Q28JASystem8TSeqCtrlCFUl: # 0x8031a1e8
    lwz     r6, 0x0(r3)
    li      r3, 0x8
    lbzx    r5, r6, r4
    addi    r4, r4, 0x1
    lbzx    r0, r6, r4
    clrlwi  r4, r5, 16
    slw     r3, r4, r3
    clrlwi  r3, r3, 16
    or      r3, r3, r0
    blr


.globl get24__Q28JASystem8TSeqCtrlCFUl
get24__Q28JASystem8TSeqCtrlCFUl: # 0x8031a210
    lwz     r6, 0x0(r3)
    lbzx    r5, r6, r4
    addi    r4, r4, 0x1
    lbzx    r3, r6, r4
    addi    r4, r4, 0x1
    insrwi  r3, r5, 8, 16
    lbzx    r0, r6, r4
    slwi    r3, r3, 8
    or      r3, r3, r0
    blr


.globl get32__Q28JASystem8TSeqCtrlCFUl
get32__Q28JASystem8TSeqCtrlCFUl: # 0x8031a238
    lwz     r6, 0x0(r3)
    lbzx    r5, r6, r4
    addi    r4, r4, 0x1
    lbzx    r3, r6, r4
    addi    r4, r4, 0x1
    lbzx    r0, r6, r4
    insrwi  r3, r5, 8, 16
    slwi    r3, r3, 8
    or      r3, r3, r0
    addi    r4, r4, 0x1
    lbzx    r0, r6, r4
    slwi    r3, r3, 8
    or      r3, r3, r0
    blr


.globl read16__Q28JASystem8TSeqCtrlFv
read16__Q28JASystem8TSeqCtrlFv: # 0x8031a270
    lwz     r6, 0x4(r3)
    li      r5, 0x8
    addi    r0, r6, 0x1
    stw     r0, 0x4(r3)
    lwz     r4, 0x4(r3)
    lbz     r6, 0x0(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r3)
    clrlwi  r0, r6, 16
    slw     r0, r0, r5
    lbz     r4, 0x0(r4)
    clrlwi  r3, r0, 16
    or      r3, r3, r4
    blr


.globl read24__Q28JASystem8TSeqCtrlFv
read24__Q28JASystem8TSeqCtrlFv: # 0x8031a2a8
    lwz     r4, 0x4(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r3)
    lwz     r5, 0x4(r3)
    lbz     r6, 0x0(r4)
    addi    r0, r5, 0x1
    stw     r0, 0x4(r3)
    lwz     r4, 0x4(r3)
    lbz     r5, 0x0(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r3)
    addi    r3, r5, 0x0
    insrwi  r3, r6, 8, 16
    lbz     r0, 0x0(r4)
    slwi    r3, r3, 8
    or      r3, r3, r0
    blr

