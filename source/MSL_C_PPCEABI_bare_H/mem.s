
.globl memcmp
memcmp: # 0x803392a4
    subi    r6, r3, 0x1
    subi    r4, r4, 0x1
    addi    r5, r5, 0x1
    b       branch_0x803392d8

branch_0x803392b4:
    lbzu    r3, 0x1(r6)
    lbzu    r0, 0x1(r4)
    cmplw   r3, r0
    beq-    branch_0x803392d8
    bge-    branch_0x803392d0
    li      r3, -0x1
    blr

branch_0x803392d0:
    li      r3, 0x1
    blr

branch_0x803392d8:
    subic.  r5, r5, 0x1
    bne+    branch_0x803392b4
    li      r3, 0x0
    blr


.globl memchr
memchr: # 0x803392e8
    clrlwi  r4, r4, 24
    subi    r3, r3, 0x1
    addi    r5, r5, 0x1
    b       branch_0x80339304

branch_0x803392f8:
    lbzu    r0, 0x1(r3)
    cmplw   r0, r4
    beqlr-    

branch_0x80339304:
    subic.  r5, r5, 0x1
    bne+    branch_0x803392f8
    li      r3, 0x0
    blr


.globl memmove
memmove: # 0x80339314
    mflr    r0
    cmplwi  r5, 0x20
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    subfc   r3, r31, r4
    subfe   r0, r0, r0
    neg     r3, r0
    blt-    branch_0x8033938c
    xor     r0, r31, r4
    clrlwi. r0, r0, 30
    beq-    branch_0x80339368
    cmpwi   r3, 0x0
    bne-    branch_0x8033935c
    mr      r3, r31
    bl      __copy_longs_unaligned
    b       branch_0x80339384

branch_0x8033935c:
    mr      r3, r31
    bl      __copy_longs_rev_unaligned
    b       branch_0x80339384

branch_0x80339368:
    cmpwi   r3, 0x0
    bne-    branch_0x8033937c
    mr      r3, r31
    bl      __copy_longs_aligned
    b       branch_0x80339384

branch_0x8033937c:
    mr      r3, r31
    bl      __copy_longs_rev_aligned
branch_0x80339384:
    mr      r3, r31
    b       branch_0x803393dc

branch_0x8033938c:
    cmpwi   r3, 0x0
    bne-    branch_0x803393b8
    subi    r3, r4, 0x1
    subi    r4, r31, 0x1
    addi    r5, r5, 0x1
    b       branch_0x803393ac

branch_0x803393a4:
    lbzu    r0, 0x1(r3)
    stbu    r0, 0x1(r4)
branch_0x803393ac:
    subic.  r5, r5, 0x1
    bne+    branch_0x803393a4
    b       branch_0x803393d8

branch_0x803393b8:
    add     r3, r4, r5
    add     r4, r31, r5
    addi    r5, r5, 0x1
    b       branch_0x803393d0

branch_0x803393c8:
    lbzu    r0, -0x1(r3)
    stbu    r0, -0x1(r4)
branch_0x803393d0:
    subic.  r5, r5, 0x1
    bne+    branch_0x803393c8
branch_0x803393d8:
    mr      r3, r31
branch_0x803393dc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

