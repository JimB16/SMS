
.globl TRK_fill_mem
TRK_fill_mem: # 0x8033fa54
    cmplwi  r5, 0x20
    subi    r6, r3, 0x1
    clrlwi  r0, r4, 24
    mr      r7, r0
    blt-    branch_0x8033fafc
    not     r0, r6
    clrlwi. r0, r0, 30
    mr      r3, r0
    beq-    branch_0x8033fa8c
    subf    r5, r3, r5
    clrlwi  r0, r7, 24
branch_0x8033fa80:
    subic.  r3, r3, 0x1
    stbu    r0, 0x1(r6)
    bne+    branch_0x8033fa80
branch_0x8033fa8c:
    cmplwi  r7, 0x0
    beq-    branch_0x8033faac
    slwi    r3, r7, 24
    slwi    r0, r7, 16
    slwi    r4, r7, 8
    or      r0, r3, r0
    or      r0, r4, r0
    or      r7, r7, r0
branch_0x8033faac:
    srwi.   r0, r5, 5
    subi    r3, r6, 0x3
    beq-    branch_0x8033fae0
branch_0x8033fab8:
    stw     r7, 0x4(r3)
    subic.  r0, r0, 0x1
    stw     r7, 0x8(r3)
    stw     r7, 0xc(r3)
    stw     r7, 0x10(r3)
    stw     r7, 0x14(r3)
    stw     r7, 0x18(r3)
    stw     r7, 0x1c(r3)
    stwu    r7, 0x20(r3)
    bne+    branch_0x8033fab8
branch_0x8033fae0:
    extrwi. r0, r5, 3, 27
    beq-    branch_0x8033faf4
branch_0x8033fae8:
    subic.  r0, r0, 0x1
    stwu    r7, 0x4(r3)
    bne+    branch_0x8033fae8
branch_0x8033faf4:
    addi    r6, r3, 0x3
    clrlwi  r5, r5, 30
branch_0x8033fafc:
    cmplwi  r5, 0x0
    beqlr-    

    clrlwi  r0, r7, 24
branch_0x8033fb08:
    subic.  r5, r5, 0x1
    stbu    r0, 0x1(r6)
    bne+    branch_0x8033fb08
    blr

