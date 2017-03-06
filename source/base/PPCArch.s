
.globl PPCMfmsr
PPCMfmsr: # 0x80341a80
    mfmsr   r3
    blr


.globl PPCMtmsr
PPCMtmsr: # 0x80341a88
    mtmsr   r3
    blr


.globl PPCMfhid0
PPCMfhid0: # 0x80341a90
    mfspr   r3, 1008
    blr


.globl PPCMthid0
PPCMthid0: # 0x80341a98
    mtspr   1008, r3
    blr


.globl PPCMfl2cr
PPCMfl2cr: # 0x80341aa0
    mfspr   r3, 1017
    blr


.globl PPCMtl2cr
PPCMtl2cr: # 0x80341aa8
    mtspr   1017, r3
    blr


.globl PPCMtdec
PPCMtdec: # 0x80341ab0
    mtspr   22, r3
    blr


.globl PPCSync
PPCSync: # 0x80341ab8
    sc
    blr


.globl PPCHalt
PPCHalt: # 0x80341ac0
    sync
branch_0x80341ac4:
    ori     r0, r0, 0x0
    li      r3, 0x0
    ori     r0, r0, 0x0
    b       branch_0x80341ac4


.globl PPCMfhid2
PPCMfhid2: # 0x80341ad4
    mfspr   r3, 920
    blr


.globl PPCMthid2
PPCMthid2: # 0x80341adc
    mtspr   920, r3
    blr


.globl PPCMtwpar
PPCMtwpar: # 0x80341ae4
    mtspr   921, r3
    blr


.globl PPCDisableSpeculation
PPCDisableSpeculation: # 0x80341aec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      PPCMfhid0
    ori     r3, r3, 0x200
    bl      PPCMthid0
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl PPCSetFpNonIEEEMode
PPCSetFpNonIEEEMode: # 0x80341b14
    mtfsb1  29
    blr

