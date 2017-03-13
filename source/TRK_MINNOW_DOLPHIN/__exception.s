
/*
  00000198 000000 80003298 gTRKInterruptVectorTable (entry of .init) 	TRK_MINNOW_DOLPHIN.a __exception.s
  000020cc 000000 800051cc gTRKInterruptVectorTableEnd (entry of .init) 	TRK_MINNOW_DOLPHIN.a __exception.s
*/

.globl gTRKInterruptVectorTable
gTRKInterruptVectorTable: # 0x80003298

.string "Metrowerks Target Resident Kernel for PowerPC"
.zero 0x100-46


SystemResetInterrupt: # 0x80000100
    b       __TRK_reset
.zero 0x100-4*1


MachineCheckInterrupt: # 0x80000200
    mtsprg1	r2
    mfsrr0	r2
    icbi	r0, r2
    mfdar	r2
    dcbi	r0, r2
    mfsprg1	r2
    mtsprg1	r2
    mtsprg2	r3
    mtsprg3	r4
    mfsrr0	r2
    mfsrr1	r4
    mfmsr	r3
    ori	    r3, r3, 0x30
    mtsrr1	r3
    lis	    r3, TRKInterruptHandler@h
    ori	    r3, r3, TRKInterruptHandler@l
    mtsrr0	r3
    li	    r3, 0x200
    rfi
.zero 0x100-4*19


DSIInterrupt: # 0x80000300
    mtsprg1	r2
    mtsprg2	r3
    mtsprg3	r4
    mfsrr0	r2
    mfsrr1	r4
    mfmsr	r3
    ori	    r3, r3, 0x30
    mtsrr1  r3
    lis	    r3, TRKInterruptHandler@h
    ori	    r3, r3, TRKInterruptHandler@l
    mtsrr0	r3
    li	    r3, 0x300
    rfi
.zero 0x100-4*13


ISIInterrupt: # 0x80000400
    mtsprg1	r2
    mtsprg2	r3
    mtsprg3	r4
    mfsrr0	r2
    mfsrr1	r4
    mfmsr	r3
    ori	    r3, r3, 0x30
    mtsrr1	r3
    lis	    r3, TRKInterruptHandler@h
    ori	    r3, r3, TRKInterruptHandler@l
    mtsrr0	r3
    li	    r3, 0x400
    rfi
.zero 0x100-4*13


ExternalInterrupt: # 0x80000500
    mtsprg1	r2
    mtsprg2	r3
    mtsprg3	r4
    mfsrr0	r2
    mfsrr1	r4
    mfmsr	r3
    ori	    r3, r3, 0x30
    mtsrr1	r3
    lis	    r3, TRKInterruptHandler@h
    ori	    r3, r3, TRKInterruptHandler@l
    mtsrr0	r3
    li	    r3, 0x500
    rfi
.zero 0x100-4*13


AlignmentInterrupt: # 0x80000600
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x600
rfi
.zero 0x100-4*13


ProgramInterrupt: # 0x80000700
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x700
rfi
.zero 0x100-4*13


FPunavailableInterrupt: # 0x80000800
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x800
rfi
.zero 0x100-4*13


DecrementerInterrupt: # 0x80000900
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x900
rfi
.zero 0x100-4*13


# 0x80000a00
.zero 0x100-0


# 0x80000b00
.zero 0x100-0


SystemCallInterrupt: # 0x80000c00
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0xC00
rfi
.zero 0x100-4*13


TraceInterrupt: # 0x80000d00
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0xD00
rfi
.zero 0x100-4*13


# 0x80000e00
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0xE00
rfi
.zero 0x100-4*13


PerformanceMonitorInterrupt: # 0x80000f00
b	  loc_800041EC
.zero 4*7
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0xF20
rfi

loc_800041EC:
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0xF00
rfi
.zero 0x100-4*34


# 0x80001000
mtsprg1	  r2
mfcr	  r2
mtsprg2	  r2
mfmsr	  r2
andis.	  r2, r2, 2
beq	  loc_800042C8
mfmsr	  r2
xoris	  r2, r2, 2
sync
mtmsr	  r2
sync
mtsprg1	  r2

loc_800042C8:
mfsprg2	  r2
mtcr	  r2
mfsprg1	  r2
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1000
rfi
.zero 0x100-4*28


# 0x80001100
mtsprg1	  r2
mfcr	  r2
mtsprg2	  r2
mfmsr	  r2
andis.	  r2, r2, 2
beq	  loc_800043C8
mfmsr	  r2
xoris	  r2, r2, 2
sync
mtmsr	  r2
sync
mtsprg1	  r2

loc_800043C8:
mfsprg2	  r2
mtcr	  r2
mfsprg1	  r2
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1100
rfi
.zero 0x100-4*28


# 0x80001200
mtsprg1	  r2
mfcr	  r2
mtsprg2	  r2
mfmsr	  r2
andis.	  r2, r2, 2
beq	  loc_800044C8
mfmsr	  r2
xoris	  r2, r2, 2
sync
mtmsr	  r2
sync
mtsprg1	  r2

loc_800044C8:
mfsprg2	  r2
mtcr	  r2
mfsprg1	  r2
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1200
rfi
.zero 0x100-4*28


IABRInterrupt: # 0x80001300
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1300
rfi
.zero 0x100-4*13


# 0x80001400
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1400
rfi
.zero 0x100-4*13


# 0x80001500
.zero 0x100


# 0x80001600
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1600
rfi
.zero 0x100-4*13


ThermalInterrupt: # 0x80001700
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1700
rfi
.zero 0x100-4*13


# 0x80001800
.zero 0x100

# 0x80001900
.zero 0x100

# 0x80001a00
.zero 0x100

# 0x80001b00
.zero 0x100


# 0x80001c00
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1C00
rfi
.zero 0x100-4*13


# 0x80001d00
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1D00
rfi
.zero 0x100-4*13


# 0x80001e00
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1E00
rfi
.zero 0x100-4*13


# 0x80001f00
mtsprg1	  r2
mtsprg2	  r3
mtsprg3	  r4
mfsrr0	  r2
mfsrr1	  r4
mfmsr	  r3
ori	  r3, r3, 0x30
mtsrr1	  r3
lis	  r3, TRKInterruptHandler@h
ori	  r3, r3, TRKInterruptHandler@l
mtsrr0	  r3
li	  r3, 0x1F00
rfi


.globl gTRKInterruptVectorTableEnd
gTRKInterruptVectorTableEnd: # 800051cc

