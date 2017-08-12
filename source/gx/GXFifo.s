
.globl GXCPInterruptHandler
GXCPInterruptHandler: # 0x8035b6b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2e0(sp)
    stw     r31, 0x2dc(sp)
    mr      r31, r4
    lwz     r5, R13Off_m0x57d4(r13)
    lwz     r3, R13Off_m0x72f8(r13)
    lhz     r0, 0x0(r5)
    stw     r0, 0xc(r3)
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x8(r3)
    extrwi. r0, r0, 1, 28
    beq-    branch_0x8035b71c
    lwz     r0, 0xc(r3)
    extrwi. r0, r0, 1, 30
    beq-    branch_0x8035b71c
    lwz     r3, R13Off_m0x57c0(r13)
    bl      OSResumeThread
    li      r0, 0x0
    stw     r0, R13Off_m0x57b8(r13)
    li      r3, 0x1
    li      r4, 0x1
    bl      __GXWriteFifoIntReset
    li      r3, 0x1
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
branch_0x8035b71c:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x8(r3)
    extrwi. r0, r0, 1, 29
    beq-    branch_0x8035b76c
    lwz     r0, 0xc(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8035b76c
    lwz     r5, R13Off_m0x57b0(r13)
    li      r3, 0x0
    li      r4, 0x1
    addi    r0, r5, 0x1
    stw     r0, R13Off_m0x57b0(r13)
    bl      __GXWriteFifoIntEnable
    li      r3, 0x1
    li      r4, 0x0
    bl      __GXWriteFifoIntReset
    li      r0, 0x1
    lwz     r3, R13Off_m0x57c0(r13)
    stw     r0, R13Off_m0x57b8(r13)
    bl      OSSuspendThread
branch_0x8035b76c:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r4, 0x8(r3)
    addi    r5, r3, 0x8
    extrwi. r0, r4, 1, 26
    beq-    branch_0x8035b7dc
    lwz     r0, 0xc(r3)
    extrwi. r0, r0, 1, 27
    beq-    branch_0x8035b7dc
    rlwinm  r0, r4, 0, 27, 25
    stw     r0, 0x0(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, R13Off_m0x57d4(r13)
    lwz     r0, 0x8(r4)
    sth     r0, 0x2(r3)
    lwz     r0, R13Off_m0x57b4(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8035b7dc
    addi    r3, sp, 0x10
    bl      OSClearContext
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    lwz     r12, R13Off_m0x57b4(r13)
    mtlr    r12
    blrl
    addi    r3, sp, 0x10
    bl      OSClearContext
    mr      r3, r31
    bl      OSSetCurrentContext
branch_0x8035b7dc:
    lwz     r0, 0x2e4(sp)
    lwz     r31, 0x2dc(sp)
    addi    sp, sp, 0x2e0
    mtlr    r0
    blr


.globl GXInitFifoBase
GXInitFifoBase: # 0x8035b7f0
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, -0x4
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    add     r0, r31, r0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r4, r5, -0x4000
    stw     r31, 0x0(r3)
    stw     r0, 0x4(r3)
    li      r0, 0x0
    stw     r5, 0x8(r3)
    rlwinm  r5, r5, 31, 1, 26
    stw     r0, 0x1c(r30)
    bl      GXInitFifoLimits
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r5, r31, 0x0
    bl      GXInitFifoPtrs
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl GXInitFifoPtrs
GXInitFifoPtrs: # 0x8035b85c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      OSDisableInterrupts
    stw     r30, 0x14(r29)
    subf    r0, r30, r31
    stw     r31, 0x18(r29)
    stw     r0, 0x1c(r29)
    lwz     r4, 0x1c(r29)
    cmpwi   r4, 0x0
    bge-    branch_0x8035b8ac
    lwz     r0, 0x8(r29)
    add     r0, r4, r0
    stw     r0, 0x1c(r29)
branch_0x8035b8ac:
    bl      OSRestoreInterrupts
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl GXInitFifoLimits
GXInitFifoLimits: # 0x8035b8cc
    stw     r4, 0xc(r3)
    stw     r5, 0x10(r3)
    blr


.globl GXSetCPUFifo
GXSetCPUFifo: # 0x8035b8d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lwz     r0, R13Off_m0x57c4(r13)
    addi    r31, r3, 0x0
    stw     r30, R13Off_m0x57c8(r13)
    cmplw   r30, r0
    bne-    branch_0x8035b968
    lwz     r5, 0x0(r30)
    li      r0, 0x1
    lwz     r4, R13Off_m0x57d8(r13)
    li      r3, 0x1
    clrlwi  r5, r5, 2
    stw     r5, 0xc(r4)
    li      r4, 0x1
    lwz     r6, 0x4(r30)
    lwz     r5, R13Off_m0x57d8(r13)
    clrlwi  r6, r6, 2
    stw     r6, 0x10(r5)
    lwz     r6, 0x18(r30)
    lwz     r5, R13Off_m0x57d8(r13)
    rlwinm  r6, r6, 0, 2, 26
    rlwinm  r6, r6, 0, 6, 4
    stw     r6, 0x14(r5)
    stb     r0, R13Off_m0x57bc(r13)
    bl      __GXWriteFifoIntReset
    li      r3, 0x1
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
    li      r3, 0x1
    bl      __GXFifoLink
    b       branch_0x8035b9c4

branch_0x8035b968:
    lbz     r0, R13Off_m0x57bc(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8035b984
    li      r3, 0x0
    bl      __GXFifoLink
    li      r0, 0x0
    stb     r0, R13Off_m0x57bc(r13)
branch_0x8035b984:
    li      r3, 0x0
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
    lwz     r0, 0x0(r30)
    lwz     r3, R13Off_m0x57d8(r13)
    clrlwi  r0, r0, 2
    stw     r0, 0xc(r3)
    lwz     r0, 0x4(r30)
    lwz     r3, R13Off_m0x57d8(r13)
    clrlwi  r0, r0, 2
    stw     r0, 0x10(r3)
    lwz     r0, 0x18(r30)
    lwz     r3, R13Off_m0x57d8(r13)
    rlwinm  r0, r0, 0, 2, 26
    rlwinm  r0, r0, 0, 6, 4
    stw     r0, 0x14(r3)
branch_0x8035b9c4:
    sync
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GXSetGPFifo
GXSetGPFifo: # 0x8035b9e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      __GXFifoReadDisable
    li      r3, 0x0
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
    stw     r30, R13Off_m0x57c4(r13)
    lwz     r3, R13Off_m0x57d4(r13)
    lwz     r0, 0x0(r30)
    sth     r0, 0x20(r3)
    lwz     r0, 0x4(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    sth     r0, 0x24(r3)
    lwz     r0, 0x1c(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    sth     r0, 0x30(r3)
    lwz     r0, 0x18(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    sth     r0, 0x34(r3)
    lwz     r0, 0x14(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    sth     r0, 0x38(r3)
    lwz     r0, 0xc(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    sth     r0, 0x28(r3)
    lwz     r0, 0x10(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    sth     r0, 0x2c(r3)
    lwz     r0, 0x0(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    extrwi  r0, r0, 14, 2
    sth     r0, 0x22(r3)
    lwz     r0, 0x4(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    extrwi  r0, r0, 14, 2
    sth     r0, 0x26(r3)
    lwz     r0, 0x1c(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    srawi   r0, r0, 16
    sth     r0, 0x32(r3)
    lwz     r0, 0x18(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    extrwi  r0, r0, 14, 2
    sth     r0, 0x36(r3)
    lwz     r0, 0x14(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    extrwi  r0, r0, 14, 2
    sth     r0, 0x3a(r3)
    lwz     r0, 0xc(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    srwi    r0, r0, 16
    sth     r0, 0x2a(r3)
    lwz     r0, 0x10(r30)
    lwz     r3, R13Off_m0x57d4(r13)
    srwi    r0, r0, 16
    sth     r0, 0x2e(r3)
    sync
    lwz     r3, R13Off_m0x57c8(r13)
    lwz     r0, R13Off_m0x57c4(r13)
    cmplw   r3, r0
    bne-    branch_0x8035bb14
    li      r0, 0x1
    stb     r0, R13Off_m0x57bc(r13)
    li      r3, 0x1
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
    li      r3, 0x1
    bl      __GXFifoLink
    b       branch_0x8035bb30

branch_0x8035bb14:
    li      r0, 0x0
    stb     r0, R13Off_m0x57bc(r13)
    li      r3, 0x0
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
    li      r3, 0x0
    bl      __GXFifoLink
branch_0x8035bb30:
    li      r3, 0x1
    li      r4, 0x1
    bl      __GXWriteFifoIntReset
    bl      __GXFifoReadEnable
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GXGetFifoPtrs
GXGetFifoPtrs: # 0x8035bb60
    lwz     r0, R13Off_m0x57c8(r13)
    cmplw   r3, r0
    bne-    branch_0x8035bb80
    lwz     r6, R13Off_m0x57d8(r13)
    lwz     r0, 0x14(r6)
    rlwinm  r6, r0, 0, 6, 4
    addis   r0, r6, 0x8000
    stw     r0, 0x18(r3)
branch_0x8035bb80:
    lwz     r0, R13Off_m0x57c4(r13)
    cmplw   r3, r0
    bne-    branch_0x8035bbbc
    lwz     r7, R13Off_m0x57d4(r13)
    lhz     r6, 0x3a(r7)
    lhz     r7, 0x38(r7)
    insrwi  r7, r6, 16, 0
    addis   r0, r7, 0x8000
    stw     r0, 0x14(r3)
    lwz     r7, R13Off_m0x57d4(r13)
    lhz     r6, 0x32(r7)
    lhz     r0, 0x30(r7)
    insrwi  r0, r6, 16, 0
    stw     r0, 0x1c(r3)
    b       branch_0x8035bbe4

branch_0x8035bbbc:
    lwz     r6, 0x14(r3)
    lwz     r0, 0x18(r3)
    subf    r0, r6, r0
    stw     r0, 0x1c(r3)
    lwz     r6, 0x1c(r3)
    cmpwi   r6, 0x0
    bge-    branch_0x8035bbe4
    lwz     r0, 0x8(r3)
    add     r0, r6, r0
    stw     r0, 0x1c(r3)
branch_0x8035bbe4:
    lwz     r0, 0x14(r3)
    stw     r0, 0x0(r4)
    lwz     r0, 0x18(r3)
    stw     r0, 0x0(r5)
    blr


.globl GXEnableBreakPt
GXEnableBreakPt: # 0x8035bbf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      OSDisableInterrupts
    mr      r30, r3
    bl      __GXFifoReadDisable
    lwz     r3, R13Off_m0x57d4(r13)
    extrwi  r0, r31, 14, 2
    sth     r31, 0x3c(r3)
    lwz     r3, R13Off_m0x57d4(r13)
    sth     r0, 0x3e(r3)
    lwz     r3, R13Off_m0x72f8(r13)
    lwzu    r0, 0x8(r3)
    rlwinm  r0, r0, 0, 31, 29
    ori     r0, r0, 0x2
    stw     r0, 0x0(r3)
    lwz     r3, R13Off_m0x72f8(r13)
    lwzu    r0, 0x8(r3)
    rlwinm  r0, r0, 0, 27, 25
    ori     r0, r0, 0x20
    stw     r0, 0x0(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, R13Off_m0x57d4(r13)
    lwz     r0, 0x8(r4)
    sth     r0, 0x2(r3)
    stw     r31, R13Off_m0x57ac(r13)
    bl      __GXFifoReadEnable
    mr      r3, r30
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GXDisableBreakPt
GXDisableBreakPt: # 0x8035bc90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      OSDisableInterrupts
    lwz     r4, R13Off_m0x72f8(r13)
    li      r0, 0x0
    addi    r5, r4, 0x8
    lwz     r4, 0x8(r4)
    rlwinm  r4, r4, 0, 31, 29
    stw     r4, 0x0(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    addi    r5, r4, 0x8
    lwz     r4, 0x8(r4)
    rlwinm  r4, r4, 0, 27, 25
    stw     r4, 0x0(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    lwz     r4, R13Off_m0x57d4(r13)
    lwz     r5, 0x8(r5)
    sth     r5, 0x2(r4)
    stw     r0, R13Off_m0x57ac(r13)
    bl      OSRestoreInterrupts
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __GXFifoInit
__GXFifoInit: # 0x8035bcf4
    mflr    r0
    lis     r3, GXCPInterruptHandler@ha
    stw     r0, 0x4(sp)
    addi    r4, r3, GXCPInterruptHandler@l
    li      r3, 0x11
    stwu    sp, -0x8(sp)
    bl      __OSSetInterruptHandler
    li      r3, 0x4000
    bl      __OSUnmaskInterrupts
    bl      OSGetCurrentThread
    li      r0, 0x0
    stw     r3, R13Off_m0x57c0(r13)
    stw     r0, R13Off_m0x57b8(r13)
    stw     r0, R13Off_m0x57c8(r13)
    stw     r0, R13Off_m0x57c4(r13)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __GXFifoReadEnable
__GXFifoReadEnable: # 0x8035bd40
    lwz     r3, R13Off_m0x72f8(r13)
    lwzu    r0, 0x8(r3)
    clrrwi  r0, r0, 1
    ori     r0, r0, 0x1
    stw     r0, 0x0(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, R13Off_m0x57d4(r13)
    lwz     r0, 0x8(r4)
    sth     r0, 0x2(r3)
    blr


.globl __GXFifoReadDisable
__GXFifoReadDisable: # 0x8035bd68
    lwz     r3, R13Off_m0x72f8(r13)
    lwzu    r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x0(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, R13Off_m0x57d4(r13)
    lwz     r0, 0x8(r4)
    sth     r0, 0x2(r3)
    blr


.globl __GXFifoLink
__GXFifoLink: # 0x8035bd8c
    clrlwi. r0, r3, 24
    beq-    branch_0x8035bd9c
    li      r0, 0x1
    b       branch_0x8035bda0

branch_0x8035bd9c:
    li      r0, 0x0
branch_0x8035bda0:
    lwz     r3, R13Off_m0x72f8(r13)
    slwi    r0, r0, 4
    addi    r4, r3, 0x8
    lwz     r3, 0x8(r3)
    rlwinm  r3, r3, 0, 28, 26
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, R13Off_m0x57d4(r13)
    lwz     r0, 0x8(r4)
    sth     r0, 0x2(r3)
    blr


.globl __GXWriteFifoIntEnable
__GXWriteFifoIntEnable: # 0x8035bdd0
    lwz     r5, R13Off_m0x72f8(r13)
    clrlslwi  r3, r3, 24, 2
    clrlslwi  r0, r4, 24, 3
    addi    r6, r5, 0x8
    lwz     r5, 0x8(r5)
    rlwinm  r4, r5, 0, 30, 28
    or      r3, r4, r3
    stw     r3, 0x0(r6)
    lwz     r3, R13Off_m0x72f8(r13)
    addi    r4, r3, 0x8
    lwz     r3, 0x8(r3)
    rlwinm  r3, r3, 0, 29, 27
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, R13Off_m0x57d4(r13)
    lwz     r0, 0x8(r4)
    sth     r0, 0x2(r3)
    blr


.globl __GXWriteFifoIntReset
__GXWriteFifoIntReset: # 0x8035be1c
    lwz     r5, R13Off_m0x72f8(r13)
    clrlwi  r3, r3, 24
    clrlslwi  r0, r4, 24, 1
    addi    r6, r5, 0x10
    lwz     r5, 0x10(r5)
    clrrwi  r4, r5, 1
    or      r3, r4, r3
    stw     r3, 0x0(r6)
    lwz     r3, R13Off_m0x72f8(r13)
    addi    r4, r3, 0x10
    lwz     r3, 0x10(r3)
    rlwinm  r3, r3, 0, 31, 29
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, R13Off_m0x57d4(r13)
    lwz     r0, 0x10(r4)
    sth     r0, 0x4(r3)
    blr


.globl GXGetCPUFifo
GXGetCPUFifo: # 0x8035be68
    lwz     r3, R13Off_m0x57c8(r13)
    blr

