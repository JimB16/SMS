
.globl __copy_longs_rev_unaligned
__copy_longs_rev_unaligned: # 0x803393f0
    add     r12, r3, r5
    clrlwi. r0, r12, 30
    add     r11, r4, r5
    mr      r3, r0
    beq-    branch_0x80339418
    subf    r5, r3, r5
branch_0x80339408:
    lbzu    r0, -0x1(r11)
    subic.  r3, r3, 0x1
    stbu    r0, -0x1(r12)
    bne+    branch_0x80339408
branch_0x80339418:
    clrlslwi  r4, r11, 30, 3
    clrlwi  r9, r11, 30
    subfic  r10, r4, 0x20
    subfic  r0, r9, 0x4
    add     r11, r11, r0
    lwzu    r7, -0x4(r11)
    srwi    r6, r5, 3
branch_0x80339434:
    lwz     r8, -0x4(r11)
    srw     r0, r7, r10
    subic.  r6, r6, 0x1
    slw     r3, r8, r4
    or      r0, r3, r0
    stw     r0, -0x4(r12)
    srw     r0, r8, r10
    lwzu    r7, -0x8(r11)
    slw     r3, r7, r4
    or      r0, r3, r0
    stwu    r0, -0x8(r12)
    bne+    branch_0x80339434
    rlwinm. r0, r5, 0, 29, 29
    beq-    branch_0x80339480
    lwzu    r3, -0x4(r11)
    srw     r0, r7, r10
    slw     r3, r3, r4
    or      r0, r3, r0
    stwu    r0, -0x4(r12)
branch_0x80339480:
    clrlwi. r5, r5, 30
    beqlr-    

    add     r11, r11, r9
branch_0x8033948c:
    lbzu    r0, -0x1(r11)
    subic.  r5, r5, 0x1
    stbu    r0, -0x1(r12)
    bne+    branch_0x8033948c
    blr


.globl __copy_longs_unaligned
__copy_longs_unaligned: # 0x803394a0
    neg     r0, r3
    clrlwi. r6, r0, 30
    subi    r4, r4, 0x1
    subi    r3, r3, 0x1
    beq-    branch_0x803394c8
    subf    r5, r6, r5
branch_0x803394b8:
    lbzu    r0, 0x1(r4)
    subic.  r6, r6, 0x1
    stbu    r0, 0x1(r3)
    bne+    branch_0x803394b8
branch_0x803394c8:
    addi    r0, r4, 0x1
    clrlwi  r11, r0, 30
    subf    r4, r11, r4
    subi    r8, r4, 0x3
    lwzu    r9, 0x4(r8)
    clrlslwi  r4, r0, 30, 3
    subfic  r12, r4, 0x20
    subi    r6, r3, 0x3
    srwi    r7, r5, 3
branch_0x803394ec:
    lwz     r10, 0x4(r8)
    slw     r3, r9, r4
    subic.  r7, r7, 0x1
    srw     r0, r10, r12
    or      r0, r3, r0
    stw     r0, 0x4(r6)
    slw     r3, r10, r4
    lwzu    r9, 0x8(r8)
    srw     r0, r9, r12
    or      r0, r3, r0
    stwu    r0, 0x8(r6)
    bne+    branch_0x803394ec
    rlwinm. r0, r5, 0, 29, 29
    beq-    branch_0x80339538
    lwzu    r0, 0x4(r8)
    slw     r3, r9, r4
    srw     r0, r0, r12
    or      r0, r3, r0
    stwu    r0, 0x4(r6)
branch_0x80339538:
    clrlwi. r5, r5, 30
    addi    r4, r8, 0x3
    addi    r3, r6, 0x3
    beqlr-    

    subfic  r0, r11, 0x4
    subf    r4, r0, r4
branch_0x80339550:
    lbzu    r0, 0x1(r4)
    subic.  r5, r5, 0x1
    stbu    r0, 0x1(r3)
    bne+    branch_0x80339550
    blr


.globl __copy_longs_rev_aligned
__copy_longs_rev_aligned: # 0x80339564
    add     r6, r3, r5
    clrlwi. r0, r6, 30
    add     r4, r4, r5
    mr      r3, r0
    beq-    branch_0x8033958c
    subf    r5, r3, r5
branch_0x8033957c:
    lbzu    r0, -0x1(r4)
    subic.  r3, r3, 0x1
    stbu    r0, -0x1(r6)
    bne+    branch_0x8033957c
branch_0x8033958c:
    srwi.   r3, r5, 5
    beq-    branch_0x803395dc
branch_0x80339594:
    lwz     r0, -0x4(r4)
    subic.  r3, r3, 0x1
    stw     r0, -0x4(r6)
    lwz     r0, -0x8(r4)
    stw     r0, -0x8(r6)
    lwz     r0, -0xc(r4)
    stw     r0, -0xc(r6)
    lwz     r0, -0x10(r4)
    stw     r0, -0x10(r6)
    lwz     r0, -0x14(r4)
    stw     r0, -0x14(r6)
    lwz     r0, -0x18(r4)
    stw     r0, -0x18(r6)
    lwz     r0, -0x1c(r4)
    stw     r0, -0x1c(r6)
    lwzu    r0, -0x20(r4)
    stwu    r0, -0x20(r6)
    bne+    branch_0x80339594
branch_0x803395dc:
    extrwi. r3, r5, 3, 27
    beq-    branch_0x803395f4
branch_0x803395e4:
    lwzu    r0, -0x4(r4)
    subic.  r3, r3, 0x1
    stwu    r0, -0x4(r6)
    bne+    branch_0x803395e4
branch_0x803395f4:
    clrlwi. r5, r5, 30
    beqlr-    

branch_0x803395fc:
    lbzu    r0, -0x1(r4)
    subic.  r5, r5, 0x1
    stbu    r0, -0x1(r6)
    bne+    branch_0x803395fc
    blr


.globl __copy_longs_aligned
__copy_longs_aligned: # 0x80339610
    neg     r0, r3
    clrlwi. r6, r0, 30
    subi    r7, r4, 0x1
    subi    r3, r3, 0x1
    beq-    branch_0x80339638
    subf    r5, r6, r5
branch_0x80339628:
    lbzu    r0, 0x1(r7)
    subic.  r6, r6, 0x1
    stbu    r0, 0x1(r3)
    bne+    branch_0x80339628
branch_0x80339638:
    srwi.   r4, r5, 5
    subi    r6, r7, 0x3
    subi    r3, r3, 0x3
    beq-    branch_0x80339690
branch_0x80339648:
    lwz     r0, 0x4(r6)
    subic.  r4, r4, 0x1
    stw     r0, 0x4(r3)
    lwz     r0, 0x8(r6)
    stw     r0, 0x8(r3)
    lwz     r0, 0xc(r6)
    stw     r0, 0xc(r3)
    lwz     r0, 0x10(r6)
    stw     r0, 0x10(r3)
    lwz     r0, 0x14(r6)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r6)
    stw     r0, 0x18(r3)
    lwz     r0, 0x1c(r6)
    stw     r0, 0x1c(r3)
    lwzu    r0, 0x20(r6)
    stwu    r0, 0x20(r3)
    bne+    branch_0x80339648
branch_0x80339690:
    extrwi. r4, r5, 3, 27
    beq-    branch_0x803396a8
branch_0x80339698:
    lwzu    r0, 0x4(r6)
    subic.  r4, r4, 0x1
    stwu    r0, 0x4(r3)
    bne+    branch_0x80339698
branch_0x803396a8:
    clrlwi. r5, r5, 30
    addi    r4, r6, 0x3
    addi    r3, r3, 0x3
    beqlr-    

branch_0x803396b8:
    lbzu    r0, 0x1(r4)
    subic.  r5, r5, 0x1
    stbu    r0, 0x1(r3)
    bne+    branch_0x803396b8
    blr

