
.globl TRK_memcpy
TRK_memcpy: # 0x80003244
    subi    r4, r4, 0x1
    subi    r6, r3, 0x1
    addi    r5, r5, 0x1
    b       branch_0x8000325c

branch_0x80003254:
    lbzu    r0, 0x1(r4)
    stbu    r0, 0x1(r6)
branch_0x8000325c:
    subic.  r5, r5, 0x1
    bne+    branch_0x80003254
    blr


.globl TRK_memset
TRK_memset: # 0x80003268
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    mr      r31, r3
    bl      TRK_fill_mem
    mr      r3, r31
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

