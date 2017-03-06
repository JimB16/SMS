
.globl __ct__10JUTNameTabFPC7ResNTAB
__ct__10JUTNameTabFPC7ResNTAB: # 0x802c9f90
    stw     r4, 0x0(r3)
    lhz     r0, 0x0(r4)
    slwi    r5, r0, 2
    addi    r0, r5, 0x4
    add     r0, r4, r0
    stw     r0, 0x4(r3)
    lhz     r0, 0x0(r4)
    sth     r0, 0x8(r3)
    blr


.globl getIndex__10JUTNameTabCFPCc
getIndex__10JUTNameTabCFPCc: # 0x802c9fb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    mr      r26, r3
    addi    r27, r4, 0x0
    lwz     r5, 0x0(r3)
    addi    r29, r5, 0x4
    bl      calcKeyCode__10JUTNameTabCFPCc
    clrlwi  r30, r3, 16
    li      r28, 0x0
    b       branch_0x802ca028

branch_0x802c9fe4:
    lhz     r0, 0x0(r29)
    cmplw   r0, r30
    bne-    branch_0x802ca020
    clrlwi  r31, r28, 16
    lwz     r5, 0x0(r26)
    clrlslwi  r3, r28, 16, 2
    addi    r0, r3, 0x6
    lhzx    r0, r5, r0
    addi    r4, r27, 0x0
    add     r3, r5, r0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ca020
    mr      r3, r31
    b       branch_0x802ca03c

branch_0x802ca020:
    addi    r29, r29, 0x4
    addi    r28, r28, 0x1
branch_0x802ca028:
    lhz     r0, 0x8(r26)
    clrlwi  r3, r28, 16
    cmplw   r3, r0
    blt+    branch_0x802c9fe4
    li      r3, -0x1
branch_0x802ca03c:
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getName__10JUTNameTabCFUs
getName__10JUTNameTabCFUs: # 0x802ca050
    lhz     r0, 0x8(r3)
    clrlwi  r4, r4, 16
    cmplw   r4, r0
    bge-    branch_0x802ca078
    lwz     r5, 0x0(r3)
    slwi    r0, r4, 2
    add     r3, r5, r0
    lhz     r0, 0x6(r3)
    add     r3, r5, r0
    blr

branch_0x802ca078:
    li      r3, 0x0
    blr


.globl calcKeyCode__10JUTNameTabCFPCc
calcKeyCode__10JUTNameTabCFPCc: # 0x802ca080
    li      r5, 0x0
    b       branch_0x802ca09c

branch_0x802ca088:
    lbz     r3, 0x0(r4)
    mulli   r0, r5, 0x3
    extsb   r3, r3
    add     r5, r3, r0
    addi    r4, r4, 0x1
branch_0x802ca09c:
    lbz     r0, 0x0(r4)
    extsb.  r0, r0
    bne+    branch_0x802ca088
    clrlwi  r3, r5, 16
    blr

