
.globl OnReset
OnReset: # 0x80346334
    mflr    r0
    cmpwi   r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    beq-    branch_0x8034635c
    lis     r3, 0xcc00
    li      r0, 0xff
    sth     r0, 0x4010(r3)
    lis     r3, 0xf000
    bl      __OSMaskInterrupts
branch_0x8034635c:
    li      r3, 0x1
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl MEMIntrruptHandler
MEMIntrruptHandler: # 0x80346370
    mflr    r0
    lis     r3, 0xcc00
    stw     r0, 0x4(sp)
    addi    r8, r3, 0x4000
    li      r0, 0x0
    stwu    sp, -0x8(sp)
    lhz     r7, 0x4024(r3)
    lis     r3, 0x8040
    lhz     r6, 0x22(r8)
    addi    r3, r3, 0x25d0
    lhz     r5, 0x1e(r8)
    insrwi  r6, r7, 10, 6
    sth     r0, 0x20(r8)
    lwz     r12, 0x3c(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x803463c4
    mtlr    r12
    li      r3, 0xf
    crxor   6, 6, 6
    blrl
    b       branch_0x803463cc

branch_0x803463c4:
    li      r3, 0xf
    bl      __OSUnhandledException
branch_0x803463cc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl OSProtectRange
OSProtectRange: # 0x803463dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r26, r3, 0x0
    cmplwi  r26, 0x4
    bge-    branch_0x8034648c
    add     r3, r4, r5
    addi    r0, r3, 0x3ff
    clrrwi  r27, r4, 10
    clrrwi  r29, r0, 10
    addi    r3, r27, 0x0
    clrlwi  r31, r6, 30
    subf    r4, r27, r29
    bl      DCFlushRange
    bl      OSDisableInterrupts
    lis     r0, 0x8000
    srw     r30, r0, r26
    addi    r28, r3, 0x0
    addi    r3, r30, 0x0
    bl      __OSMaskInterrupts
    lis     r3, 0xcc00
    addi    r5, r3, 0x4000
    slwi    r3, r26, 2
    extrwi  r0, r27, 16, 6
    sthx    r0, r5, r3
    extrwi  r4, r29, 16, 6
    add     r3, r5, r3
    sth     r4, 0x2(r3)
    addi    r4, r5, 0x10
    slwi    r6, r26, 1
    li      r0, 0x3
    lhz     r5, 0x10(r5)
    slw     r3, r0, r6
    slw     r0, r31, r6
    andc    r5, r5, r3
    or      r5, r5, r0
    cmplwi  r31, 0x3
    sth     r5, 0x0(r4)
    beq-    branch_0x80346484
    mr      r3, r30
    bl      __OSUnmaskInterrupts
branch_0x80346484:
    mr      r3, r28
    bl      OSRestoreInterrupts
branch_0x8034648c:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl Config24MB
Config24MB: # 0x803464a0
    li      r7, 0x0
    lis     r4, 0x0
    addi    r4, r4, 0x2
    lis     r3, 0x8000
    addi    r3, r3, 0x1ff
    lis     r6, 0x100
    addi    r6, r6, 0x2
    lis     r5, 0x8100
    addi    r5, r5, 0xff
    isync
    mtspr   536, r7
    mtspr   537, r4
    mtspr   536, r3
    isync
    mtspr   528, r7
    mtspr   529, r4
    mtspr   528, r3
    isync
    mtspr   540, r7
    mtspr   541, r6
    mtspr   540, r5
    isync
    mtspr   532, r7
    mtspr   533, r6
    mtspr   532, r5
    isync
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    mflr    r3
    mtspr   26, r3
    rfi


.globl Config48MB
Config48MB: # 0x80346520
    li      r7, 0x0
    lis     r4, 0x0
    addi    r4, r4, 0x2
    lis     r3, 0x8000
    addi    r3, r3, 0x3ff
    lis     r6, 0x200
    addi    r6, r6, 0x2
    lis     r5, 0x8200
    addi    r5, r5, 0x1ff
    isync
    mtspr   536, r7
    mtspr   537, r4
    mtspr   536, r3
    isync
    mtspr   528, r7
    mtspr   529, r4
    mtspr   528, r3
    isync
    mtspr   540, r7
    mtspr   541, r6
    mtspr   540, r5
    isync
    mtspr   532, r7
    mtspr   533, r6
    mtspr   532, r5
    isync
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    mflr    r3
    mtspr   26, r3
    rfi


.globl RealMode
RealMode: # 0x803465a0
    clrlwi  r3, r3, 2
    mtspr   26, r3
    mfmsr   r3
    rlwinm  r3, r3, 0, 28, 25
    mtspr   27, r3
    rfi


.globl __OSInitMemoryProtection
__OSInitMemoryProtection: # 0x803465b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    lis     r3, 0x8000
    lwz     r29, 0xf0(r3)
    bl      OSDisableInterrupts
    lis     r0, 0x180
    cmplw   r29, r0
    mr      r31, r3
    bgt-    branch_0x803465fc
    lis     r3, 0x8034
    addi    r3, r3, 0x64a0
    bl      RealMode
    b       branch_0x80346614

branch_0x803465fc:
    lis     r0, 0x300
    cmplw   r29, r0
    bgt-    branch_0x80346614
    lis     r3, 0x8034
    addi    r3, r3, 0x6520
    bl      RealMode
branch_0x80346614:
    lis     r3, 0xcc00
    addi    r29, r3, 0x4000
    li      r0, 0x0
    sth     r0, 0x20(r29)
    li      r0, 0xff
    lis     r3, 0xf000
    sth     r0, 0x10(r29)
    bl      __OSMaskInterrupts
    lis     r3, 0x8034
    addi    r30, r3, 0x6370
    mr      r4, r30
    li      r3, 0x0
    bl      __OSSetInterruptHandler
    mr      r4, r30
    li      r3, 0x1
    bl      __OSSetInterruptHandler
    mr      r4, r30
    li      r3, 0x2
    bl      __OSSetInterruptHandler
    mr      r4, r30
    li      r3, 0x3
    bl      __OSSetInterruptHandler
    mr      r4, r30
    li      r3, 0x4
    bl      __OSSetInterruptHandler
    lis     r3, 0x803f
    subi    r3, r3, 0x7e80
    bl      OSRegisterResetFunction
    lis     r3, 0x8000
    lwz     r4, 0xf0(r3)
    lwz     r0, 0x28(r3)
    cmplw   r4, r0
    bge-    branch_0x803466ac
    addis   r0, r4, 0xfe80
    cmplwi  r0, 0x0
    bne-    branch_0x803466ac
    li      r0, 0x2
    sth     r0, 0x28(r29)
branch_0x803466ac:
    lis     r3, 0x800
    bl      __OSUnmaskInterrupts
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr

