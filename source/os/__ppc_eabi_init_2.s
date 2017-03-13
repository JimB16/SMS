
.globl __init_hardware
__init_hardware: # 0x80005440
    mfmsr   r0
    ori     r0, r0, 0x2000
    mtmsr   r0
    mflr    r31
    bl      __OSPSInit
    bl      __OSCacheInit
    mtlr    r31
    blr


.globl __flush_cache
__flush_cache: # 0x80005460
    lis     r5, 0xffff
    ori     r5, r5, 0xfff1
    and     r5, r5, r3
    subf    r3, r5, r3
    add     r4, r4, r3
branch_0x80005474:
    dcbst   r0, r5
    sync
    icbi    r0, r5
    addic   r5, r5, 0x8
    subic.  r4, r4, 0x8
    bge+    branch_0x80005474
    isync
    blr

