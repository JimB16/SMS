
.globl memset
memset: # 0x80003100
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __fill_mem
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __fill_mem
__fill_mem: # 0x80003130
    cmplwi  r5, 0x20
    clrlwi  r0, r4, 24
    mr      r7, r0
    subi    r6, r3, 0x1
    blt-    branch_0x800031d8
    not     r0, r6
    clrlwi. r0, r0, 30
    mr      r3, r0
    beq-    branch_0x80003168
    subf    r5, r3, r5
    clrlwi  r0, r7, 24
branch_0x8000315c:
    subic.  r3, r3, 0x1
    stbu    r0, 0x1(r6)
    bne+    branch_0x8000315c
branch_0x80003168:
    cmplwi  r7, 0x0
    beq-    branch_0x80003188
    slwi    r3, r7, 24
    slwi    r0, r7, 16
    slwi    r4, r7, 8
    or      r0, r3, r0
    or      r0, r4, r0
    or      r7, r7, r0
branch_0x80003188:
    srwi.   r0, r5, 5
    subi    r3, r6, 0x3
    beq-    branch_0x800031bc
branch_0x80003194:
    stw     r7, 0x4(r3)
    subic.  r0, r0, 0x1
    stw     r7, 0x8(r3)
    stw     r7, 0xc(r3)
    stw     r7, 0x10(r3)
    stw     r7, 0x14(r3)
    stw     r7, 0x18(r3)
    stw     r7, 0x1c(r3)
    stwu    r7, 0x20(r3)
    bne+    branch_0x80003194
branch_0x800031bc:
    extrwi. r0, r5, 3, 27
    beq-    branch_0x800031d0
branch_0x800031c4:
    subic.  r0, r0, 0x1
    stwu    r7, 0x4(r3)
    bne+    branch_0x800031c4
branch_0x800031d0:
    addi    r6, r3, 0x3
    clrlwi  r5, r5, 30
branch_0x800031d8:
    cmplwi  r5, 0x0
    beqlr-    

    clrlwi  r0, r7, 24
branch_0x800031e4:
    subic.  r5, r5, 0x1
    stbu    r0, 0x1(r6)
    bne+    branch_0x800031e4
    blr


.globl memcpy
memcpy: # 0x800031f4
    cmplw   r4, r3
    blt-    branch_0x80003220
    subi    r4, r4, 0x1
    subi    r6, r3, 0x1
    addi    r5, r5, 0x1
    b       branch_0x80003214

branch_0x8000320c:
    lbzu    r0, 0x1(r4)
    stbu    r0, 0x1(r6)
branch_0x80003214:
    subic.  r5, r5, 0x1
    bne+    branch_0x8000320c
    blr

branch_0x80003220:
    add     r4, r4, r5
    add     r6, r3, r5
    addi    r5, r5, 0x1
    b       branch_0x80003238

branch_0x80003230:
    lbzu    r0, -0x1(r4)
    stbu    r0, -0x1(r6)
branch_0x80003238:
    subic.  r5, r5, 0x1
    bne+    branch_0x80003230
    blr

