
.globl __cvt_fp2unsigned
__cvt_fp2unsigned: # 0x8033829c
    stwu    sp, -0x10(sp)
    lis     r4, 0x803a
    ori     r4, r4, 0xa8e8
    li      r3, 0x0
    lfd     f0, 0x0(r4)
    lfd     f3, 0x8(r4)
    lfd     f4, 0x10(r4)
    fcmpu   cr0, f1, f0
    fcmpu   cr6, f1, f3
    blt-    branch_0x803382f0
    subi    r3, r3, 0x1
    bge-    cr6, branch_0x803382f0
    fcmpu   cr7, f1, f4
    fmr     f2, f1
    blt-    cr7, branch_0x803382dc
    fsub    f2, f1, f4
branch_0x803382dc:
    fctiwz  f2, f2
    stfd    f2, 0x8(sp)
    lwz     r3, 0xc(sp)
    blt-    cr7, branch_0x803382f0
    addis   r3, r3, 0x8000
branch_0x803382f0:
    addi    sp, sp, 0x10
    blr


.globl __div2u
__div2u: # 0x803382f8
    cmpwi   r3, 0x0
    cntlzw  r0, r3
    cntlzw  r9, r4
    bne-    branch_0x8033830c
    addi    r0, r9, 0x20
branch_0x8033830c:
    cmpwi   r5, 0x0
    cntlzw  r9, r5
    cntlzw  r10, r6
    bne-    branch_0x80338320
    addi    r9, r10, 0x20
branch_0x80338320:
    cmpw    r0, r9
    subfic  r10, r0, 0x40
    bgt-    branch_0x803383d8
    addi    r9, r9, 0x1
    subfic  r9, r9, 0x40
    add     r0, r0, r9
    subf    r9, r9, r10
    mtctr   r9
    cmpwi   r9, 0x20
    subi    r7, r9, 0x20
    blt-    branch_0x80338358
    srw     r8, r3, r7
    li      r7, 0x0
    b       branch_0x8033836c

branch_0x80338358:
    srw     r8, r4, r9
    subfic  r7, r9, 0x20
    slw     r7, r3, r7
    or      r8, r8, r7
    srw     r7, r3, r9
branch_0x8033836c:
    cmpwi   r0, 0x20
    subic   r9, r0, 0x20
    blt-    branch_0x80338384
    slw     r3, r4, r9
    li      r4, 0x0
    b       branch_0x80338398

branch_0x80338384:
    slw     r3, r3, r0
    subfic  r9, r0, 0x20
    srw     r9, r4, r9
    or      r3, r3, r9
    slw     r4, r4, r0
branch_0x80338398:
    li      r10, -0x1
    addic   r7, r7, 0x0
branch_0x803383a0:
    adde    r4, r4, r4
    adde    r3, r3, r3
    adde    r8, r8, r8
    adde    r7, r7, r7
    subfc   r0, r6, r8
    subfe.  r9, r5, r7
    blt-    branch_0x803383c8
    mr      r8, r0
    mr      r7, r9
    addic   r0, r10, 0x1
branch_0x803383c8:
    bdnz+      branch_0x803383a0
    adde    r4, r4, r4
    adde    r3, r3, r3
    blr

branch_0x803383d8:
    li      r4, 0x0
    li      r3, 0x0
    blr


.globl __div2i
__div2i: # 0x803383e4
    stwu    sp, -0x10(sp)
    clrrwi. r9, r3, 31
    beq-    branch_0x803383f8
    subfic  r4, r4, 0x0
    subfze  r3, r3
branch_0x803383f8:
    stw     r9, 0x8(sp)
    clrrwi. r9, r5, 31
    beq-    branch_0x8033840c
    subfic  r6, r6, 0x0
    subfze  r5, r5
branch_0x8033840c:
    stw     r9, 0xc(sp)
    cmpwi   r3, 0x0
    cntlzw  r0, r3
    cntlzw  r9, r4
    bne-    branch_0x80338424
    addi    r0, r9, 0x20
branch_0x80338424:
    cmpwi   r5, 0x0
    cntlzw  r9, r5
    cntlzw  r10, r6
    bne-    branch_0x80338438
    addi    r9, r10, 0x20
branch_0x80338438:
    cmpw    r0, r9
    subfic  r10, r0, 0x40
    bgt-    branch_0x8033850c
    addi    r9, r9, 0x1
    subfic  r9, r9, 0x40
    add     r0, r0, r9
    subf    r9, r9, r10
    mtctr   r9
    cmpwi   r9, 0x20
    subi    r7, r9, 0x20
    blt-    branch_0x80338470
    srw     r8, r3, r7
    li      r7, 0x0
    b       branch_0x80338484

branch_0x80338470:
    srw     r8, r4, r9
    subfic  r7, r9, 0x20
    slw     r7, r3, r7
    or      r8, r8, r7
    srw     r7, r3, r9
branch_0x80338484:
    cmpwi   r0, 0x20
    subic   r9, r0, 0x20
    blt-    branch_0x8033849c
    slw     r3, r4, r9
    li      r4, 0x0
    b       branch_0x803384b0

branch_0x8033849c:
    slw     r3, r3, r0
    subfic  r9, r0, 0x20
    srw     r9, r4, r9
    or      r3, r3, r9
    slw     r4, r4, r0
branch_0x803384b0:
    li      r10, -0x1
    addic   r7, r7, 0x0
branch_0x803384b8:
    adde    r4, r4, r4
    adde    r3, r3, r3
    adde    r8, r8, r8
    adde    r7, r7, r7
    subfc   r0, r6, r8
    subfe.  r9, r5, r7
    blt-    branch_0x803384e0
    mr      r8, r0
    mr      r7, r9
    addic   r0, r10, 0x1
branch_0x803384e0:
    bdnz+      branch_0x803384b8
    adde    r4, r4, r4
    adde    r3, r3, r3
    lwz     r9, 0x8(sp)
    lwz     r10, 0xc(sp)
    xor.    r7, r9, r10
    beq-    branch_0x80338508
    cmpwi   r9, 0x0
    subfic  r4, r4, 0x0
    subfze  r3, r3
branch_0x80338508:
    b       branch_0x80338514

branch_0x8033850c:
    li      r4, 0x0
    li      r3, 0x0
branch_0x80338514:
    addi    sp, sp, 0x10
    blr


.globl __mod2u
__mod2u: # 0x8033851c
    cmpwi   r3, 0x0
    cntlzw  r0, r3
    cntlzw  r9, r4
    bne-    branch_0x80338530
    addi    r0, r9, 0x20
branch_0x80338530:
    cmpwi   r5, 0x0
    cntlzw  r9, r5
    cntlzw  r10, r6
    bne-    branch_0x80338544
    addi    r9, r10, 0x20
branch_0x80338544:
    cmpw    r0, r9
    subfic  r10, r0, 0x40
    bgt-    branch_0x803385fc
    addi    r9, r9, 0x1
    subfic  r9, r9, 0x40
    add     r0, r0, r9
    subf    r9, r9, r10
    mtctr   r9
    cmpwi   r9, 0x20
    subi    r7, r9, 0x20
    blt-    branch_0x8033857c
    srw     r8, r3, r7
    li      r7, 0x0
    b       branch_0x80338590

branch_0x8033857c:
    srw     r8, r4, r9
    subfic  r7, r9, 0x20
    slw     r7, r3, r7
    or      r8, r8, r7
    srw     r7, r3, r9
branch_0x80338590:
    cmpwi   r0, 0x20
    subic   r9, r0, 0x20
    blt-    branch_0x803385a8
    slw     r3, r4, r9
    li      r4, 0x0
    b       branch_0x803385bc

branch_0x803385a8:
    slw     r3, r3, r0
    subfic  r9, r0, 0x20
    srw     r9, r4, r9
    or      r3, r3, r9
    slw     r4, r4, r0
branch_0x803385bc:
    li      r10, -0x1
    addic   r7, r7, 0x0
branch_0x803385c4:
    adde    r4, r4, r4
    adde    r3, r3, r3
    adde    r8, r8, r8
    adde    r7, r7, r7
    subfc   r0, r6, r8
    subfe.  r9, r5, r7
    blt-    branch_0x803385ec
    mr      r8, r0
    mr      r7, r9
    addic   r0, r10, 0x1
branch_0x803385ec:
    bdnz+      branch_0x803385c4
    mr      r4, r8
    mr      r3, r7
    blr

branch_0x803385fc:
    blr


.globl __mod2i
__mod2i: # 0x80338600
    cmpwi   cr7, r3, 0x0
    bge-    cr7, branch_0x80338610
    subfic  r4, r4, 0x0
    subfze  r3, r3
branch_0x80338610:
    cmpwi   r5, 0x0
    bge-    branch_0x80338620
    subfic  r6, r6, 0x0
    subfze  r5, r5
branch_0x80338620:
    cmpwi   r3, 0x0
    cntlzw  r0, r3
    cntlzw  r9, r4
    bne-    branch_0x80338634
    addi    r0, r9, 0x20
branch_0x80338634:
    cmpwi   r5, 0x0
    cntlzw  r9, r5
    cntlzw  r10, r6
    bne-    branch_0x80338648
    addi    r9, r10, 0x20
branch_0x80338648:
    cmpw    r0, r9
    subfic  r10, r0, 0x40
    bgt-    branch_0x803386fc
    addi    r9, r9, 0x1
    subfic  r9, r9, 0x40
    add     r0, r0, r9
    subf    r9, r9, r10
    mtctr   r9
    cmpwi   r9, 0x20
    subi    r7, r9, 0x20
    blt-    branch_0x80338680
    srw     r8, r3, r7
    li      r7, 0x0
    b       branch_0x80338694

branch_0x80338680:
    srw     r8, r4, r9
    subfic  r7, r9, 0x20
    slw     r7, r3, r7
    or      r8, r8, r7
    srw     r7, r3, r9
branch_0x80338694:
    cmpwi   r0, 0x20
    subic   r9, r0, 0x20
    blt-    branch_0x803386ac
    slw     r3, r4, r9
    li      r4, 0x0
    b       branch_0x803386c0

branch_0x803386ac:
    slw     r3, r3, r0
    subfic  r9, r0, 0x20
    srw     r9, r4, r9
    or      r3, r3, r9
    slw     r4, r4, r0
branch_0x803386c0:
    li      r10, -0x1
    addic   r7, r7, 0x0
branch_0x803386c8:
    adde    r4, r4, r4
    adde    r3, r3, r3
    adde    r8, r8, r8
    adde    r7, r7, r7
    subfc   r0, r6, r8
    subfe.  r9, r5, r7
    blt-    branch_0x803386f0
    mr      r8, r0
    mr      r7, r9
    addic   r0, r10, 0x1
branch_0x803386f0:
    bdnz+      branch_0x803386c8
    mr      r4, r8
    mr      r3, r7
branch_0x803386fc:
    bge-    cr7, branch_0x80338708
    subfic  r4, r4, 0x0
    subfze  r3, r3
branch_0x80338708:
    blr


.globl __shl2i
__shl2i: # 0x8033870c
    subfic  r8, r5, 0x20
    subic   r9, r5, 0x20
    slw     r3, r3, r5
    srw     r10, r4, r8
    or      r3, r3, r10
    slw     r10, r4, r9
    or      r3, r3, r10
    slw     r4, r4, r5
    blr


.globl __shr2u
__shr2u: # 0x80338730
    subfic  r8, r5, 0x20
    subic   r9, r5, 0x20
    srw     r4, r4, r5
    slw     r10, r3, r8
    or      r4, r4, r10
    srw     r10, r3, r9
    or      r4, r4, r10
    srw     r3, r3, r5
    blr


.globl __shr2i
__shr2i: # 0x80338754
    subfic  r8, r5, 0x20
    subic.  r9, r5, 0x20
    srw     r4, r4, r5
    slw     r10, r3, r8
    or      r4, r4, r10
    sraw    r10, r3, r9
    ble-    branch_0x80338774
    or      r4, r4, r10
branch_0x80338774:
    sraw    r3, r3, r5
    blr


.globl __cvt_sll_flt
__cvt_sll_flt: # 0x8033877c
    stwu    sp, -0x10(sp)
    clrrwi. r5, r3, 31
    beq-    branch_0x80338790
    subfic  r4, r4, 0x0
    subfze  r3, r3
branch_0x80338790:
    or.     r7, r3, r4
    li      r6, 0x0
    beq-    branch_0x80338818
    cntlzw  r7, r3
    cntlzw  r8, r4
    extlwi  r9, r7, 5, 26
    srawi   r9, r9, 31
    and     r9, r9, r8
    add     r7, r7, r9
    subfic  r8, r7, 0x20
    subic   r9, r7, 0x20
    slw     r3, r3, r7
    srw     r10, r4, r8
    or      r3, r3, r10
    slw     r10, r4, r9
    or      r3, r3, r10
    slw     r4, r4, r7
    subf    r6, r7, r6
    clrlwi  r7, r4, 21
    cmpwi   r7, 0x400
    addi    r6, r6, 0x43e
    blt-    branch_0x80338800
    bgt-    branch_0x803387f4
    rlwinm. r7, r4, 0, 20, 20
    beq-    branch_0x80338800
branch_0x803387f4:
    addic   r4, r4, 0x800
    addze   r3, r3
    addze   r6, r6
branch_0x80338800:
    rotlwi  r4, r4, 21
    insrwi  r4, r3, 11, 0
    extrwi  r3, r3, 20, 1
    slwi    r6, r6, 20
    or      r3, r6, r3
    or      r3, r5, r3
branch_0x80338818:
    stw     r3, 0x8(sp)
    stw     r4, 0xc(sp)
    lfd     f1, 0x8(sp)
    frsp    f1, f1
    addi    sp, sp, 0x10
    blr


.globl __cvt_dbl_usll
__cvt_dbl_usll: # 0x80338830
    stwu    sp, -0x10(sp)
    stfd    f1, 0x8(sp)
    lwz     r3, 0x8(sp)
    lwz     r4, 0xc(sp)
    extrwi  r5, r3, 11, 1
    cmplwi  r5, 0x3ff
    bge-    branch_0x80338858
    li      r3, 0x0
    li      r4, 0x0
    b       branch_0x803388f4

branch_0x80338858:
    mr      r6, r3
    clrlwi  r3, r3, 12
    oris    r3, r3, 0x10
    subi    r5, r5, 0x433
    cmpwi   r5, 0x0
    bge-    branch_0x80338898
    neg     r5, r5
    subfic  r8, r5, 0x20
    subic   r9, r5, 0x20
    srw     r4, r4, r5
    slw     r10, r3, r8
    or      r4, r4, r10
    srw     r10, r3, r9
    or      r4, r4, r10
    srw     r3, r3, r5
    b       branch_0x803388e4

branch_0x80338898:
    cmpwi   r5, 0xa
    ble+    branch_0x803388c4
    clrrwi. r6, r6, 31
    beq-    branch_0x803388b4
    lis     r3, 0x8000
    li      r4, 0x0
    b       branch_0x803388f4

branch_0x803388b4:
    lis     r3, 0x7fff
    ori     r3, r3, 0xffff
    li      r4, -0x1
    b       branch_0x803388f4

branch_0x803388c4:
    subfic  r8, r5, 0x20
    subic   r9, r5, 0x20
    slw     r3, r3, r5
    srw     r10, r4, r8
    or      r3, r3, r10
    slw     r10, r4, r9
    or      r3, r3, r10
    slw     r4, r4, r5
branch_0x803388e4:
    clrrwi. r6, r6, 31
    beq-    branch_0x803388f4
    subfic  r4, r4, 0x0
    subfze  r3, r3
branch_0x803388f4:
    addi    sp, sp, 0x10
    blr

