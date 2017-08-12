
# 0x80003298
.ascii "Metrowerks Target Resident Kernel for PowerPC"

.zero 0x80003398 - 0x80003298 - 45
#.incbin "./baserom/code/Text_0x80003100.bin", 0x198, 0x80003398 - 0x80003298

.globl TRKInterrupt_0
TRKInterrupt_0: # 0x80003398
    b       __TRK_reset


.zero 0x80003498 - 0x8000339c
#.incbin "./baserom/code/Text_0x80003100.bin", 0x29c, 0x80003498 - 0x8000339c

.globl TRKInterrupt_1
TRKInterrupt_1: # 0x80003498
    mtspr   273, r2
    mfspr   r2, 26
    icbi    r0, r2
    mfspr   r2, 19
    dcbi    r0, r2
    mfspr   r2, 273
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x200
    rfi


.zero 0x80003598 - 0x800034e4
#.incbin "./baserom/code/Text_0x80003100.bin", 0x3e4, 0x80003598 - 0x800034e4

.globl TRKInterrupt_2
TRKInterrupt_2: # 0x80003598
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x300
    rfi


.zero 0x80003698 - 0x800035cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x4cc, 0x80003698 - 0x800035cc

.globl TRKInterrupt_3
TRKInterrupt_3: # 0x80003698
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x400
    rfi


.zero 0x80003798 - 0x800036cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x5cc, 0x80003798 - 0x800036cc

.globl TRKInterrupt_4
TRKInterrupt_4: # 0x80003798
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x500
    rfi


.zero 0x80003898 - 0x800037cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x6cc, 0x80003898 - 0x800037cc

.globl TRKInterrupt_5
TRKInterrupt_5: # 0x80003898
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x600
    rfi


.zero 0x80003998 - 0x800038cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x7cc, 0x80003998 - 0x800038cc

.globl TRKInterrupt_6
TRKInterrupt_6: # 0x80003998
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x700
    rfi


.zero 0x80003a98 - 0x800039cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x8cc, 0x80003a98 - 0x800039cc

.globl TRKInterrupt_7
TRKInterrupt_7: # 0x80003a98
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x800
    rfi


.zero 0x80003b98 - 0x80003acc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x9cc, 0x80003b98 - 0x80003acc

.globl TRKInterrupt_8
TRKInterrupt_8: # 0x80003b98
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x900
    rfi


.zero 0x80003e98 - 0x80003bcc
#.incbin "./baserom/code/Text_0x80003100.bin", 0xacc, 0x80003e98 - 0x80003bcc

.globl TRKInterrupt_11
TRKInterrupt_11: # 0x80003e98
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0xc00
    rfi


.zero 0x80003f98 - 0x80003ecc
#.incbin "./baserom/code/Text_0x80003100.bin", 0xdcc, 0x80003f98 - 0x80003ecc

.globl TRKInterrupt_12
TRKInterrupt_12: # 0x80003f98
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0xd00
    rfi


.zero 0x80004098 - 0x80003fcc
#.incbin "./baserom/code/Text_0x80003100.bin", 0xecc, 0x80004098 - 0x80003fcc

.globl TRKInterrupt_13
TRKInterrupt_13: # 0x80004098
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0xe00
    rfi


.zero 0x80004198 - 0x800040cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0xfcc, 0x80004198 - 0x800040cc

.globl TRKInterrupt_14
TRKInterrupt_14: # 0x80004198
    b       branch_0x800041ec


.zero 0x800041b8 - 0x8000419c
#.incbin "./baserom/code/Text_0x80003100.bin", 0x109c, 0x800041b8 - 0x8000419c

.globl TRKInterrupt_14_
TRKInterrupt_14_: # 0x800041b8
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0xf20
    rfi

branch_0x800041ec:
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0xf00
    rfi


.zero 0x80004298 - 0x80004220
#.incbin "./baserom/code/Text_0x80003100.bin", 0x1120, 0x80004298 - 0x80004220

.globl TRKInterrupt_15
TRKInterrupt_15: # 0x80004298
    mtspr   273, r2
    mfcr    r2
    mtspr   274, r2
    mfmsr   r2
    andis.  r2, r2, 0x2
    beq-    branch_0x800042c8
    mfmsr   r2
    xoris   r2, r2, 0x2
    sync
    mtmsr   r2
    sync
    mtspr   273, r2
branch_0x800042c8:
    mfspr   r2, 274
    mtcrf   255, r2
    mfspr   r2, 273
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1000
    rfi


.zero 0x80004398 - 0x80004308
#.incbin "./baserom/code/Text_0x80003100.bin", 0x1208, 0x80004398 - 0x80004308

.globl TRKInterrupt_16
TRKInterrupt_16: # 0x80004398
    mtspr   273, r2
    mfcr    r2
    mtspr   274, r2
    mfmsr   r2
    andis.  r2, r2, 0x2
    beq-    branch_0x800043c8
    mfmsr   r2
    xoris   r2, r2, 0x2
    sync
    mtmsr   r2
    sync
    mtspr   273, r2
branch_0x800043c8:
    mfspr   r2, 274
    mtcrf   255, r2
    mfspr   r2, 273
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1100
    rfi


.zero 0x80004498 - 0x80004408
#.incbin "./baserom/code/Text_0x80003100.bin", 0x1308, 0x80004498 - 0x80004408

.globl TRKInterrupt_17
TRKInterrupt_17: # 0x80004498
    mtspr   273, r2
    mfcr    r2
    mtspr   274, r2
    mfmsr   r2
    andis.  r2, r2, 0x2
    beq-    branch_0x800044c8
    mfmsr   r2
    xoris   r2, r2, 0x2
    sync
    mtmsr   r2
    sync
    mtspr   273, r2
branch_0x800044c8:
    mfspr   r2, 274
    mtcrf   255, r2
    mfspr   r2, 273
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1200
    rfi


.zero 0x80004598 - 0x80004508
#.incbin "./baserom/code/Text_0x80003100.bin", 0x1408, 0x80004598 - 0x80004508

.globl TRKInterrupt_18
TRKInterrupt_18: # 0x80004598
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1300
    rfi


.zero 0x80004698 - 0x800045cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x14cc, 0x80004698 - 0x800045cc

.globl TRKInterrupt_19
TRKInterrupt_19: # 0x80004698
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1400
    rfi


.zero 0x80004898 - 0x800046cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x15cc, 0x80004898 - 0x800046cc

.globl TRKInterrupt_21
TRKInterrupt_21: # 0x80004898
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1600
    rfi


.zero 0x80004998 - 0x800048cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x17cc, 0x80004998 - 0x800048cc

.globl TRKInterrupt_22
TRKInterrupt_22: # 0x80004998
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1700
    rfi


.zero 0x80004e98 - 0x800049cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x18cc, 0x80004e98 - 0x800049cc

.globl TRKInterrupt_27
TRKInterrupt_27: # 0x80004e98
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1c00
    rfi


.zero 0x80004f98 - 0x80004ecc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x1dcc, 0x80004f98 - 0x80004ecc

.globl TRKInterrupt_28
TRKInterrupt_28: # 0x80004f98
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1d00
    rfi


.zero 0x80005098 - 0x80004fcc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x1ecc, 0x80005098 - 0x80004fcc

.globl TRKInterrupt_29
TRKInterrupt_29: # 0x80005098
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1e00
    rfi


.zero 0x80005198 - 0x800050cc
#.incbin "./baserom/code/Text_0x80003100.bin", 0x1fcc, 0x80005198 - 0x800050cc

.globl TRKInterrupt_30
TRKInterrupt_30: # 0x80005198
    mtspr   273, r2
    mtspr   274, r3
    mtspr   275, r4
    mfspr   r2, 26
    mfspr   r4, 27
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   26, r3
    li      r3, 0x1f00
    rfi

