
.globl OSRegisterResetFunction
OSRegisterResetFunction: # 0x80346d00
    lwz     r5, R13Off_m0x59e8(r13)
    b       branch_0x80346d0c

branch_0x80346d08:
    lwz     r5, 0x8(r5)
branch_0x80346d0c:
    cmplwi  r5, 0x0
    beq-    branch_0x80346d24
    lwz     r4, 0x4(r5)
    lwz     r0, 0x4(r3)
    cmplw   r4, r0
    ble+    branch_0x80346d08
branch_0x80346d24:
    cmplwi  r5, 0x0
    bne-    branch_0x80346d5c
    addi    r5, r13, R13Off_m0x59e8
    lwzu    r4, 0x4(r5)
    cmplwi  r4, 0x0
    bne-    branch_0x80346d44
    stw     r3, R13Off_m0x59e8(r13)
    b       branch_0x80346d48

branch_0x80346d44:
    stw     r3, 0x8(r4)
branch_0x80346d48:
    stw     r4, 0xc(r3)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    stw     r3, 0x0(r5)
    blr

branch_0x80346d5c:
    stw     r5, 0x8(r3)
    lwz     r4, 0xc(r5)
    stw     r3, 0xc(r5)
    cmplwi  r4, 0x0
    stw     r4, 0xc(r3)
    bne-    branch_0x80346d7c
    stw     r3, R13Off_m0x59e8(r13)
    blr

branch_0x80346d7c:
    stw     r3, 0x8(r4)
    blr


.globl Reset
Reset: # 0x80346d84
    b       branch_0x80346da4

branch_0x80346d88:
    mfspr   r8, 1008
    ori     r8, r8, 0x8
    mtspr   1008, r8
    isync
    sync
    ori     r0, r0, 0x0
    b       branch_0x80346da8

branch_0x80346da4:
    b       branch_0x80346dc4

branch_0x80346da8:
    mftb    r5, 268
branch_0x80346dac:
    mftb    r6, 268
    subf    r7, r5, r6
    cmplwi  r7, 0x1124
    blt+    branch_0x80346dac
    ori     r0, r0, 0x0
    b       branch_0x80346dc8

branch_0x80346dc4:
    b       branch_0x80346de4

branch_0x80346dc8:
    lis     r8, unk_cc003000@h
    ori     r8, r8, unk_cc003000@l
    li      r4, 0x3
    stw     r4, 0x24(r8)
    stw     r3, 0x24(r8)
    ori     r0, r0, 0x0
    b       branch_0x80346de8

branch_0x80346de4:
    b       branch_0x80346df0

branch_0x80346de8:
    ori     r0, r0, 0x0
    b       branch_0x80346de8

branch_0x80346df0:
    b       branch_0x80346d88


.globl __OSDoHotReset
__OSDoHotReset: # 0x80346df4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      OSDisableInterrupts
    lis     r3, unk_cc002000@h
    addi    r3, r3, unk_cc002000@l
    li      r0, 0x0
    sth     r0, 0x2(r3)
    bl      ICFlashInvalidate
    slwi    r3, r31, 3
    bl      Reset
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSResetSystem
OSResetSystem: # 0x80346e3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    mr      r26, r3
    mr      r29, r4
    mr      r30, r5
    bl      OSDisableScheduler
    bl      __OSStopAudioSystem
    cmpwi   r26, 0x2
    bne-    branch_0x80346e74
    li      r3, 0x1
    bl      __PADDisableRecalibration
    mr      r31, r3
branch_0x80346e74:
    b       branch_0x80346e78

branch_0x80346e78:
    b       branch_0x80346e7c

branch_0x80346e7c:
    lwz     r27, R13Off_m0x59e8(r13)
    li      r28, 0x0
    b       branch_0x80346e88

branch_0x80346e88:
    b       branch_0x80346e8c

branch_0x80346e8c:
    b       branch_0x80346eb0

branch_0x80346e90:
    li      r3, 0x0
    lwz     r12, 0x0(r27)
    mtlr    r12
    blrl
    cntlzw  r0, r3
    lwz     r27, 0x8(r27)
    srwi    r0, r0, 5
    or      r28, r28, r0
branch_0x80346eb0:
    cmplwi  r27, 0x0
    bne+    branch_0x80346e90
    bl      __OSSyncSram
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r28, r28, r0
    cmpwi   r28, 0x0
    beq-    branch_0x80346ed8
    li      r0, 0x0
    b       branch_0x80346edc

branch_0x80346ed8:
    li      r0, 0x1
branch_0x80346edc:
    cmpwi   r0, 0x0
    beq+    branch_0x80346e7c
    cmpwi   r26, 0x1
    bne-    branch_0x80346f20
    cmpwi   r30, 0x0
    beq-    branch_0x80346f20
    bl      __OSLockSram
    lbz     r0, 0x13(r3)
    ori     r0, r0, 0x40
    stb     r0, 0x13(r3)
    li      r3, 0x1
    bl      __OSUnlockSram
    b       branch_0x80346f10

branch_0x80346f10:
    b       branch_0x80346f14

branch_0x80346f14:
    bl      __OSSyncSram
    cmpwi   r3, 0x0
    beq+    branch_0x80346f14
branch_0x80346f20:
    bl      OSDisableInterrupts
    lwz     r28, R13Off_m0x59e8(r13)
    li      r27, 0x0
    b       branch_0x80346f30

branch_0x80346f30:
    b       branch_0x80346f34

branch_0x80346f34:
    b       branch_0x80346f58

branch_0x80346f38:
    li      r3, 0x1
    lwz     r12, 0x0(r28)
    mtlr    r12
    blrl
    cntlzw  r0, r3
    lwz     r28, 0x8(r28)
    srwi    r0, r0, 5
    or      r27, r27, r0
branch_0x80346f58:
    cmplwi  r28, 0x0
    bne+    branch_0x80346f38
    bl      __OSSyncSram
    bl      LCDisable
    cmpwi   r26, 0x1
    bne-    branch_0x80346f94
    bl      OSDisableInterrupts
    lis     r3, unk_cc002000@h
    addi    r3, r3, unk_cc002000@l
    li      r0, 0x0
    sth     r0, 0x2(r3)
    bl      ICFlashInvalidate
    slwi    r3, r29, 3
    bl      Reset
    b       branch_0x80346ff0

branch_0x80346f94:
    cmpwi   r26, 0x0
    bne-    branch_0x80346ff0
    lis     r3, 0x8000
    lwz     r3, 0xdc(r3)
    b       branch_0x80346fa8

branch_0x80346fa8:
    b       branch_0x80346fac

branch_0x80346fac:
    b       branch_0x80346fd8

branch_0x80346fb0:
    lhz     r0, 0x2c8(r3)
    lwz     r27, 0x2fc(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80346fd0
    bge-    branch_0x80346fd4
    cmpwi   r0, 0x1
    beq-    branch_0x80346fd0
    b       branch_0x80346fd4

branch_0x80346fd0:
    bl      OSCancelThread
branch_0x80346fd4:
    mr      r3, r27
branch_0x80346fd8:
    cmplwi  r3, 0x0
    bne+    branch_0x80346fb0
    bl      OSEnableScheduler
    mr      r3, r29
    mr      r4, r30
    bl      __OSReboot
branch_0x80346ff0:
    lis     r3, 0x8000
    lwz     r3, 0xdc(r3)
    b       branch_0x80346ffc

branch_0x80346ffc:
    b       branch_0x80347000

branch_0x80347000:
    b       branch_0x8034702c

branch_0x80347004:
    lhz     r0, 0x2c8(r3)
    lwz     r27, 0x2fc(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80347024
    bge-    branch_0x80347028
    cmpwi   r0, 0x1
    beq-    branch_0x80347024
    b       branch_0x80347028

branch_0x80347024:
    bl      OSCancelThread
branch_0x80347028:
    mr      r3, r27
branch_0x8034702c:
    cmplwi  r3, 0x0
    bne+    branch_0x80347004
    lis     r29, unk_80000040@h
    addi    r3, r29, unk_80000040@l
    li      r4, 0x0
    li      r5, 0x8c
    bl      memset
    addi    r3, r29, 0xd4
    li      r4, 0x0
    li      r5, 0x14
    bl      memset
    addi    r3, r29, 0xf4
    li      r4, 0x0
    li      r5, 0x4
    bl      memset
    addi    r3, r29, 0x3000
    li      r4, 0x0
    li      r5, 0xc0
    bl      memset
    addi    r3, r29, 0x30c8
    li      r4, 0x0
    li      r5, 0xc
    bl      memset
    addi    r3, r29, 0x30e2
    li      r4, 0x0
    li      r5, 0x1
    bl      memset
    mr      r3, r31
    bl      __PADDisableRecalibration
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl OSGetResetCode
OSGetResetCode: # 0x803470b4
    lis     r3, 0x8000
    lbz     r0, 0x30e2(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803470cc
    lis     r3, 0x8000
    b       branch_0x803470e0

branch_0x803470cc:
    lis     r3, unk_cc003000@h
    addi    r3, r3, unk_cc003000@l
    lwz     r0, 0x24(r3)
    clrrwi  r0, r0, 3
    srwi    r3, r0, 3
branch_0x803470e0:
    blr

