
.globl __StringRead
__StringRead: # 0x8033b1c8
    cmpwi   r5, 0x1
    beq-    branch_0x8033b21c
    bge-    branch_0x8033b1e0
    cmpwi   r5, 0x0
    bge-    branch_0x8033b1ec
    b       branch_0x8033b250

branch_0x8033b1e0:
    cmpwi   r5, 0x3
    bge-    branch_0x8033b250
    b       branch_0x8033b248

branch_0x8033b1ec:
    lwz     r4, 0x0(r3)
    lbz     r5, 0x0(r4)
    extsb.  r0, r5
    bne-    branch_0x8033b20c
    li      r0, 0x1
    stw     r0, 0x4(r3)
    li      r3, -0x1
    blr

branch_0x8033b20c:
    addi    r0, r4, 0x1
    stw     r0, 0x0(r3)
    extsb   r3, r5
    blr

branch_0x8033b21c:
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8033b238
    lwz     r5, 0x0(r3)
    addi    r0, r5, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x8033b240

branch_0x8033b238:
    li      r0, 0x0
    stw     r0, 0x4(r3)
branch_0x8033b240:
    mr      r3, r4
    blr

branch_0x8033b248:
    lwz     r3, 0x4(r3)
    blr

branch_0x8033b250:
    li      r3, 0x0
    blr

