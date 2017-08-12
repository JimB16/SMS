
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
    lis     r5, unk_fffffff1@h
    ori     r5, r5, unk_fffffff1@l
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


# 0x80005494
.long 0x80003100, 0x80003100, 0x00002430
.long 0x80005540, 0x80005540, 0x00000048
.long 0x800055a0, 0x800055a0, 0x0000005c
.long 0x80005600, 0x80005600, 0x0036dab4
.long 0x803730c0, 0x803730c0, 0x000003c0
.long 0x80373480, 0x80373480, 0x00000010
.long 0x803734a0, 0x803734a0, 0x000381b8
.long 0x803ab660, 0x803ab660, 0x0003e08b
.long 0x8040c1c0, 0x8040c1c0, 0x00000d38
.long 0x8040eba0, 0x8040eba0, 0x00008c44
.long 0x00000000, 0x00000000, 0x00000000
#.zero 0x80005518 - 0x80005494

# unk_80005518
.long 0x803e9700, 0x00022ac0, 0x8040cf00
.long 0x00001c98, 0x00000000, 0x00000000
.long 0, 0, 0, 0
#.zero 0x80005540 - 0x80005518

#.incbin "./baserom/code/Text_0x80003100.bin", 0x2394, 0x80005540 - 0x80005494
