
.globl flushMessage__12JUTAssertionFv
flushMessage__12JUTAssertionFv: # 0x802f1208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, R13Off_m0x5de8(r13)
    cmplwi  r3, 0x0
    bne-    branch_0x802f1228
    li      r0, 0x0
    b       branch_0x802f124c

branch_0x802f1228:
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x802f123c
    addi    r0, r3, -0x1
    stw     r0, R13Off_m0x5de8(r13)
branch_0x802f123c:
    lwz     r0, R13Off_m0x5de8(r13)
    cmplwi  r0, 0x5
    bge-    branch_0x802f124c
    li      r0, 0x0
branch_0x802f124c:
    cmplwi  r0, 0x0
    beq-    branch_0x802f1290
    lbz     r0, R13Off_m0x7508(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x802f1290
    lis     r4, sMessageFileLine__Q212JUTAssertion9_unnamed_@ha
    lwz     r3, R13Off_m0x5ee8(r13)
    addi    r6, r4, sMessageFileLine__Q212JUTAssertion9_unnamed_@l
    li      r4, 0x10
    li      r5, 0x10
    bl      drawString__14JUTDirectPrintFUsUsPc
    lis     r4, sMessageString__Q212JUTAssertion9_unnamed_@ha
    lwz     r3, R13Off_m0x5ee8(r13)
    addi    r6, r4, sMessageString__Q212JUTAssertion9_unnamed_@l
    li      r4, 0x10
    li      r5, 0x18
    bl      drawString__14JUTDirectPrintFUsUsPc
branch_0x802f1290:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

