
.globl strstr
strstr: # 0x8033b258
    cmplwi  r4, 0x0
    subi    r5, r3, 0x1
    subi    r4, r4, 0x1
    beqlr-    

    lbzu    r6, 0x1(r4)
    cmplwi  r6, 0x0
    bne-    branch_0x8033b2b0
    blr

branch_0x8033b278:
    cmplw   r0, r6
    bne-    branch_0x8033b2b0
    subi    r7, r5, 0x1
    subi    r8, r4, 0x1
branch_0x8033b288:
    lbzu    r0, 0x1(r7)
    lbzu    r3, 0x1(r8)
    cmplw   r0, r3
    bne-    branch_0x8033b2a0
    cmplwi  r0, 0x0
    bne+    branch_0x8033b288
branch_0x8033b2a0:
    cmplwi  r3, 0x0
    bne-    branch_0x8033b2b0
    mr      r3, r5
    blr

branch_0x8033b2b0:
    lbzu    r0, 0x1(r5)
    cmplwi  r0, 0x0
    bne+    branch_0x8033b278
    li      r3, 0x0
    blr


.globl strrchr
strrchr: # 0x8033b2c4
    subi    r5, r3, 0x1
    clrlwi  r0, r4, 24
    li      r3, 0x0
    b       branch_0x8033b2e0

branch_0x8033b2d4:
    cmplw   r4, r0
    bne-    branch_0x8033b2e0
    mr      r3, r5
branch_0x8033b2e0:
    lbzu    r4, 0x1(r5)
    cmplwi  r4, 0x0
    bne+    branch_0x8033b2d4
    cmplwi  r3, 0x0
    bnelr-    

    cmplwi  r0, 0x0
    beq-    branch_0x8033b304
    li      r3, 0x0
    blr

branch_0x8033b304:
    mr      r3, r5
    blr


.globl strchr
strchr: # 0x8033b30c
    subi    r3, r3, 0x1
    clrlwi  r0, r4, 24
    b       branch_0x8033b320

branch_0x8033b318:
    cmplw   r4, r0
    beqlr-    

branch_0x8033b320:
    lbzu    r4, 0x1(r3)
    cmplwi  r4, 0x0
    bne+    branch_0x8033b318
    cmplwi  r0, 0x0
    beqlr-    

    li      r3, 0x0
    blr


.globl strcmp
strcmp: # 0x8033b33c
    lbz     r6, 0x0(r3)
    lbz     r5, 0x0(r4)
    subf.   r0, r5, r6
    beq-    branch_0x8033b354
    subf    r3, r5, r6
    blr

branch_0x8033b354:
    clrlwi  r0, r4, 30
    clrlwi  r5, r3, 30
    cmplw   r0, r5
    bne-    branch_0x8033b428
    cmplwi  r5, 0x0
    beq-    branch_0x8033b3c0
    cmplwi  r6, 0x0
    bne-    branch_0x8033b37c
    li      r3, 0x0
    blr

branch_0x8033b37c:
    subfic  r0, r5, 0x3
    cmplwi  r0, 0x0
    mtctr   r0
    beq-    branch_0x8033b3b8
branch_0x8033b38c:
    lbzu    r5, 0x1(r3)
    lbzu    r0, 0x1(r4)
    subf.   r0, r0, r5
    beq-    branch_0x8033b3a4
    mr      r3, r0
    blr

branch_0x8033b3a4:
    cmplwi  r5, 0x0
    bne-    branch_0x8033b3b4
    li      r3, 0x0
    blr

branch_0x8033b3b4:
    bdnz+      branch_0x8033b38c
branch_0x8033b3b8:
    addi    r3, r3, 0x1
    addi    r4, r4, 0x1
branch_0x8033b3c0:
    lwz     r7, 0x0(r3)
    lwz     r6, -0x7384(r13)
    lwz     r5, -0x7388(r13)
    add     r0, r7, r6
    lwz     r8, 0x0(r4)
    and.    r0, r0, r5
    bne-    branch_0x8033b410
    b       branch_0x8033b3f4

branch_0x8033b3e0:
    lwzu    r7, 0x4(r3)
    lwzu    r8, 0x4(r4)
    add     r0, r7, r6
    and.    r0, r0, r5
    bne-    branch_0x8033b410
branch_0x8033b3f4:
    cmplw   r7, r8
    beq+    branch_0x8033b3e0
    ble-    branch_0x8033b408
    li      r3, 0x1
    blr

branch_0x8033b408:
    li      r3, -0x1
    blr

branch_0x8033b410:
    lbz     r6, 0x0(r3)
    lbz     r5, 0x0(r4)
    subf.   r0, r5, r6
    beq-    branch_0x8033b428
    subf    r3, r5, r6
    blr

branch_0x8033b428:
    cmplwi  r6, 0x0
    bne-    branch_0x8033b438
    li      r3, 0x0
    blr

branch_0x8033b438:
    lbzu    r5, 0x1(r3)
    lbzu    r0, 0x1(r4)
    subf.   r0, r0, r5
    beq-    branch_0x8033b450
    mr      r3, r0
    blr

branch_0x8033b450:
    cmplwi  r5, 0x0
    bne+    branch_0x8033b438
    li      r3, 0x0
    blr


.globl strcat
strcat: # 0x8033b460
    subi    r4, r4, 0x1
    subi    r5, r3, 0x1
branch_0x8033b468:
    lbzu    r0, 0x1(r5)
    cmplwi  r0, 0x0
    bne+    branch_0x8033b468
    subi    r5, r5, 0x1
branch_0x8033b478:
    lbzu    r0, 0x1(r4)
    cmplwi  r0, 0x0
    stbu    r0, 0x1(r5)
    bne+    branch_0x8033b478
    blr


.globl strncpy
strncpy: # 0x8033b48c
    subi    r4, r4, 0x1
    subi    r6, r3, 0x1
    addi    r5, r5, 0x1
    b       branch_0x8033b4c4

branch_0x8033b49c:
    lbzu    r0, 0x1(r4)
    cmplwi  r0, 0x0
    stbu    r0, 0x1(r6)
    bne-    branch_0x8033b4c4
    li      r0, 0x0
    b       branch_0x8033b4b8

branch_0x8033b4b4:
    stbu    r0, 0x1(r6)
branch_0x8033b4b8:
    subic.  r5, r5, 0x1
    bne+    branch_0x8033b4b4
    blr

branch_0x8033b4c4:
    subic.  r5, r5, 0x1
    bne+    branch_0x8033b49c
    blr


.globl strcpy
strcpy: # 0x8033b4d0
    clrlwi  r0, r3, 30
    clrlwi  r5, r4, 30
    cmplw   r0, r5
    addi    r7, r3, 0x0
    bne-    branch_0x8033b560
    cmplwi  r5, 0x0
    beq-    branch_0x8033b528
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    stb     r0, 0x0(r7)
    beqlr-    

    subfic  r0, r5, 0x3
    cmplwi  r0, 0x0
    mtctr   r0
    beq-    branch_0x8033b520
branch_0x8033b50c:
    lbzu    r0, 0x1(r4)
    cmplwi  r0, 0x0
    stbu    r0, 0x1(r7)
    beqlr-    

    bdnz+      branch_0x8033b50c
branch_0x8033b520:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x1
branch_0x8033b528:
    lwz     r5, 0x0(r4)
    lwz     r0, -0x7384(r13)
    lwz     r6, -0x7388(r13)
    addi    r8, r5, 0x0
    add     r5, r5, r0
    and.    r5, r5, r6
    bne-    branch_0x8033b560
    subi    r7, r7, 0x4
branch_0x8033b548:
    stwu    r8, 0x4(r7)
    lwzu    r8, 0x4(r4)
    add     r5, r8, r0
    and.    r5, r5, r6
    beq+    branch_0x8033b548
    addi    r7, r7, 0x4
branch_0x8033b560:
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    stb     r0, 0x0(r7)
    beqlr-    

branch_0x8033b570:
    lbzu    r0, 0x1(r4)
    cmplwi  r0, 0x0
    stbu    r0, 0x1(r7)
    bne+    branch_0x8033b570
    blr


.globl strlen
strlen: # 0x8033b584
    li      r4, -0x1
    subi    r3, r3, 0x1
branch_0x8033b58c:
    lbzu    r0, 0x1(r3)
    addi    r4, r4, 0x1
    cmplwi  r0, 0x0
    bne+    branch_0x8033b58c
    mr      r3, r4
    blr

