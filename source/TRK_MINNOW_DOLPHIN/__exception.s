
# 0x80003298
.ascii "Metrowerks Target Resident Kernel for PowerPC"

.zero 0x80003398 - 0x80003298 - 45


.globl TRKInterrupt_0
TRKInterrupt_0: # 0x80003398
    b       __TRK_reset


.zero 0x80003498 - 0x8000339c

.globl TRKInterrupt_1
TRKInterrupt_1: # 0x80003498
    mtspr   SPRG1, r2
    mfspr   r2, SRR0
    icbi    r0, r2
    mfspr   r2, DAR
    dcbi    r0, r2
    mfspr   r2, SPRG1
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x200
    rfi


.zero 0x80003598 - 0x800034e4

.globl TRKInterrupt_2
TRKInterrupt_2: # 0x80003598
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x300
    rfi


.zero 0x80003698 - 0x800035cc

.globl TRKInterrupt_3
TRKInterrupt_3: # 0x80003698
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x400
    rfi


.zero 0x80003798 - 0x800036cc

.globl TRKInterrupt_4
TRKInterrupt_4: # 0x80003798
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x500
    rfi


.zero 0x80003898 - 0x800037cc

.globl TRKInterrupt_5
TRKInterrupt_5: # 0x80003898
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x600
    rfi


.zero 0x80003998 - 0x800038cc

.globl TRKInterrupt_6
TRKInterrupt_6: # 0x80003998
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x700
    rfi


.zero 0x80003a98 - 0x800039cc

.globl TRKInterrupt_7
TRKInterrupt_7: # 0x80003a98
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x800
    rfi


.zero 0x80003b98 - 0x80003acc

.globl TRKInterrupt_8
TRKInterrupt_8: # 0x80003b98
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x900
    rfi


.zero 0x80003e98 - 0x80003bcc

.globl TRKInterrupt_11
TRKInterrupt_11: # 0x80003e98
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0xc00
    rfi


.zero 0x80003f98 - 0x80003ecc

.globl TRKInterrupt_12
TRKInterrupt_12: # 0x80003f98
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0xd00
    rfi


.zero 0x80004098 - 0x80003fcc

.globl TRKInterrupt_13
TRKInterrupt_13: # 0x80004098
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0xe00
    rfi


.zero 0x80004198 - 0x800040cc

.globl TRKInterrupt_14
TRKInterrupt_14: # 0x80004198
    b       branch_0x800041ec


.zero 0x800041b8 - 0x8000419c

.globl TRKInterrupt_14_
TRKInterrupt_14_: # 0x800041b8
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0xf20
    rfi

branch_0x800041ec:
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0xf00
    rfi


.zero 0x80004298 - 0x80004220

.globl TRKInterrupt_15
TRKInterrupt_15: # 0x80004298
    mtspr   SPRG1, r2
    mfcr    r2
    mtspr   SPRG2, r2
    mfmsr   r2
    andis.  r2, r2, 0x2
    beq-    branch_0x800042c8
    mfmsr   r2
    xoris   r2, r2, 0x2
    sync
    mtmsr   r2
    sync
    mtspr   SPRG1, r2
branch_0x800042c8:
    mfspr   r2, SPRG2
    mtcrf   255, r2
    mfspr   r2, SPRG1
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1000
    rfi


.zero 0x80004398 - 0x80004308

.globl TRKInterrupt_16
TRKInterrupt_16: # 0x80004398
    mtspr   SPRG1, r2
    mfcr    r2
    mtspr   SPRG2, r2
    mfmsr   r2
    andis.  r2, r2, 0x2
    beq-    branch_0x800043c8
    mfmsr   r2
    xoris   r2, r2, 0x2
    sync
    mtmsr   r2
    sync
    mtspr   SPRG1, r2
branch_0x800043c8:
    mfspr   r2, SPRG2
    mtcrf   255, r2
    mfspr   r2, SPRG1
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1100
    rfi


.zero 0x80004498 - 0x80004408

.globl TRKInterrupt_17
TRKInterrupt_17: # 0x80004498
    mtspr   SPRG1, r2
    mfcr    r2
    mtspr   SPRG2, r2
    mfmsr   r2
    andis.  r2, r2, 0x2
    beq-    branch_0x800044c8
    mfmsr   r2
    xoris   r2, r2, 0x2
    sync
    mtmsr   r2
    sync
    mtspr   SPRG1, r2
branch_0x800044c8:
    mfspr   r2, SPRG2
    mtcrf   255, r2
    mfspr   r2, SPRG1
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1200
    rfi


.zero 0x80004598 - 0x80004508

.globl TRKInterrupt_18
TRKInterrupt_18: # 0x80004598
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1300
    rfi


.zero 0x80004698 - 0x800045cc

.globl TRKInterrupt_19
TRKInterrupt_19: # 0x80004698
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1400
    rfi


.zero 0x80004898 - 0x800046cc

.globl TRKInterrupt_21
TRKInterrupt_21: # 0x80004898
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1600
    rfi


.zero 0x80004998 - 0x800048cc

.globl TRKInterrupt_22
TRKInterrupt_22: # 0x80004998
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1700
    rfi


.zero 0x80004e98 - 0x800049cc

.globl TRKInterrupt_27
TRKInterrupt_27: # 0x80004e98
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1c00
    rfi


.zero 0x80004f98 - 0x80004ecc

.globl TRKInterrupt_28
TRKInterrupt_28: # 0x80004f98
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1d00
    rfi


.zero 0x80005098 - 0x80004fcc

.globl TRKInterrupt_29
TRKInterrupt_29: # 0x80005098
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1e00
    rfi


.zero 0x80005198 - 0x800050cc

.globl TRKInterrupt_30
TRKInterrupt_30: # 0x80005198
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   SRR0, r3
    li      r3, 0x1f00
    rfi

