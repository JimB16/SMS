
.globl wcstombs
wcstombs: # 0x80339268
    cmplwi  r5, 0x0
    mtctr   r5
    li      r6, 0x0
    ble-    branch_0x8033929c
branch_0x80339278:
    lhz     r0, 0x0(r4)
    addi    r4, r4, 0x2
    extsb   r5, r0
    extsb.  r0, r5
    stb     r5, 0x0(r3)
    addi    r3, r3, 0x1
    beq-    branch_0x8033929c
    addi    r6, r6, 0x1
    bdnz+      branch_0x80339278
branch_0x8033929c:
    mr      r3, r6
    blr

