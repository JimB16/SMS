
.globl testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics: # 0x802fcc94
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 19, 19
    stwu    sp, -0x8(sp)
    beq-    branch_0x802fccb8
    lhz     r0, 0xc(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x802fccb8
    clrrwi  r4, r4, 1
branch_0x802fccb8:
    rlwinm. r0, r4, 0, 18, 18
    beq-    branch_0x802fccd0
    lhz     r0, 0xc(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x802fccd0
    clrrwi  r4, r4, 1
branch_0x802fccd0:
    lhz     r0, 0xc(r3)
    andc.   r4, r4, r0
    beq-    branch_0x802fccec
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x802fccec:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

