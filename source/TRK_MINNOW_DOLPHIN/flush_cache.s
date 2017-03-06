
.globl TRK_flush_cache
TRK_flush_cache: # 0x8033fa1c
    lis     r5, 0xffff
    ori     r5, r5, 0xfff1
    and     r5, r5, r3
    subf    r3, r5, r3
    add     r4, r4, r3
branch_0x8033fa30:
    dcbst   r0, r5
    dcbf    r0, r5
    sync
    icbi    r0, r5
    addic   r5, r5, 0x8
    subic.  r4, r4, 0x8
    bge+    branch_0x8033fa30
    isync
    blr

