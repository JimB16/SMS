
.globl OSDisableInterrupts
OSDisableInterrupts: # 0x803458ac
    mfmsr   r3
    rlwinm  r4, r3, 0, 17, 15
    mtmsr   r4
    extrwi  r3, r3, 1, 16
    blr


.globl OSEnableInterrupts
OSEnableInterrupts: # 0x803458c0
    mfmsr   r3
    ori     r4, r3, 0x8000
    mtmsr   r4
    extrwi  r3, r3, 1, 16
    blr


.globl OSRestoreInterrupts
OSRestoreInterrupts: # 0x803458d4
    cmpwi   r3, 0x0
    mfmsr   r4
    beq-    branch_0x803458e8
    ori     r5, r4, 0x8000
    b       branch_0x803458ec

branch_0x803458e8:
    rlwinm  r5, r4, 0, 17, 15
branch_0x803458ec:
    mtmsr   r5
    extrwi  r3, r4, 1, 16
    blr


.globl __OSSetInterruptHandler
__OSSetInterruptHandler: # 0x803458f8
    extsh   r0, r3
    lwz     r3, R13Off_m0x5a10(r13)
    slwi    r0, r0, 2
    add     r5, r3, r0
    lwz     r3, 0x0(r5)
    stw     r4, 0x0(r5)
    blr


.globl __OSGetInterruptHandler
__OSGetInterruptHandler: # 0x80345914
    extsh   r0, r3
    lwz     r3, R13Off_m0x5a10(r13)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    blr


.globl __OSInterruptInit
__OSInterruptInit: # 0x80345928
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lis     r31, unk_80003040@h
    addi    r0, r31, unk_80003040@l
    stw     r0, R13Off_m0x5a10(r13)
    li      r4, 0x0
    li      r5, 0x80
    lwz     r3, R13Off_m0x5a10(r13)
    bl      memset
    li      r0, 0x0
    stw     r0, 0xc4(r31)
    lis     r3, unk_cc003000@h
    addi    r4, r3, unk_cc003000@l
    stw     r0, 0xc8(r31)
    li      r0, 0xf0
    li      r3, -0x20
    stw     r0, 0x4(r4)
    bl      __OSMaskInterrupts
    lis     r3, ExternalInterruptHandler@h
    addi    r4, r3, ExternalInterruptHandler@l
    li      r3, 0x4
    bl      __OSSetExceptionHandler
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl SetInterruptMask
SetInterruptMask: # 0x8034599c
    cntlzw  r0, r3
    cmpwi   r0, 0xc
    bge-    branch_0x803459c8
    cmpwi   r0, 0x8
    beq-    branch_0x80345aa8
    bge-    branch_0x80345ad8
    cmpwi   r0, 0x5
    bge-    branch_0x80345a54
    cmpwi   r0, 0x0
    bge-    branch_0x803459e8
    b       branch_0x80345c70

branch_0x803459c8:
    cmpwi   r0, 0x11
    bge-    branch_0x803459dc
    cmpwi   r0, 0xf
    bge-    branch_0x80345b7c
    b       branch_0x80345b28

branch_0x803459dc:
    cmpwi   r0, 0x1b
    bge-    branch_0x80345c70
    b       branch_0x80345bbc

branch_0x803459e8:
    clrrwi  r0, r4, 31
    cmplwi  r0, 0x0
    li      r5, 0x0
    bne-    branch_0x803459fc
    ori     r5, r5, 0x1
branch_0x803459fc:
    rlwinm  r0, r4, 0, 1, 1
    cmplwi  r0, 0x0
    bne-    branch_0x80345a0c
    ori     r5, r5, 0x2
branch_0x80345a0c:
    rlwinm  r0, r4, 0, 2, 2
    cmplwi  r0, 0x0
    bne-    branch_0x80345a1c
    ori     r5, r5, 0x4
branch_0x80345a1c:
    rlwinm  r0, r4, 0, 3, 3
    cmplwi  r0, 0x0
    bne-    branch_0x80345a2c
    ori     r5, r5, 0x8
branch_0x80345a2c:
    rlwinm  r0, r4, 0, 4, 4
    cmplwi  r0, 0x0
    bne-    branch_0x80345a3c
    ori     r5, r5, 0x10
branch_0x80345a3c:
    lis     r4, unk_cc004000@h
    clrlwi  r0, r5, 16
    addi    r4, r4, unk_cc004000@l
    sth     r0, 0x1c(r4)
    clrlwi  r3, r3, 5
    b       branch_0x80345c70

branch_0x80345a54:
    lis     r5, unk_cc005000@h
    addi    r5, r5, unk_cc005000@l
    addi    r5, r5, 0xa
    rlwinm  r0, r4, 0, 5, 5
    lhz     r6, 0x0(r5)
    cmplwi  r0, 0x0
    rlwinm  r6, r6, 0, 29, 22
    bne-    branch_0x80345a78
    ori     r6, r6, 0x10
branch_0x80345a78:
    rlwinm  r0, r4, 0, 6, 6
    cmplwi  r0, 0x0
    bne-    branch_0x80345a88
    ori     r6, r6, 0x40
branch_0x80345a88:
    rlwinm  r0, r4, 0, 7, 7
    cmplwi  r0, 0x0
    bne-    branch_0x80345a98
    ori     r6, r6, 0x100
branch_0x80345a98:
    clrlwi  r0, r6, 16
    sth     r0, 0x0(r5)
    rlwinm  r3, r3, 0, 8, 4
    b       branch_0x80345c70

branch_0x80345aa8:
    rlwinm  r0, r4, 0, 8, 8
    lis     r4, 0xcc00
    cmplwi  r0, 0x0
    lwz     r5, 0x6c00(r4)
    li      r0, -0x2d
    and     r5, r5, r0
    bne-    branch_0x80345ac8
    ori     r5, r5, 0x4
branch_0x80345ac8:
    lis     r4, 0xcc00
    stw     r5, 0x6c00(r4)
    rlwinm  r3, r3, 0, 9, 7
    b       branch_0x80345c70

branch_0x80345ad8:
    rlwinm  r0, r4, 0, 9, 9
    lis     r5, 0xcc00
    cmplwi  r0, 0x0
    lwz     r5, 0x6800(r5)
    li      r0, -0x2c10
    and     r5, r5, r0
    bne-    branch_0x80345af8
    ori     r5, r5, 0x1
branch_0x80345af8:
    rlwinm  r0, r4, 0, 10, 10
    cmplwi  r0, 0x0
    bne-    branch_0x80345b08
    ori     r5, r5, 0x4
branch_0x80345b08:
    rlwinm  r0, r4, 0, 11, 11
    cmplwi  r0, 0x0
    bne-    branch_0x80345b18
    ori     r5, r5, 0x400
branch_0x80345b18:
    lis     r4, 0xcc00
    stw     r5, 0x6800(r4)
    rlwinm  r3, r3, 0, 12, 8
    b       branch_0x80345c70

branch_0x80345b28:
    lis     r5, unk_cc006800@h
    addi    r6, r5, unk_cc006800@l
    addi    r6, r6, 0x14
    rlwinm  r0, r4, 0, 12, 12
    lwz     r7, 0x0(r6)
    li      r5, -0xc10
    cmplwi  r0, 0x0
    and     r7, r7, r5
    bne-    branch_0x80345b50
    ori     r7, r7, 0x1
branch_0x80345b50:
    rlwinm  r0, r4, 0, 13, 13
    cmplwi  r0, 0x0
    bne-    branch_0x80345b60
    ori     r7, r7, 0x4
branch_0x80345b60:
    rlwinm  r0, r4, 0, 14, 14
    cmplwi  r0, 0x0
    bne-    branch_0x80345b70
    ori     r7, r7, 0x400
branch_0x80345b70:
    stw     r7, 0x0(r6)
    rlwinm  r3, r3, 0, 15, 11
    b       branch_0x80345c70

branch_0x80345b7c:
    lis     r5, unk_cc006800@h
    addi    r5, r5, unk_cc006800@l
    addi    r5, r5, 0x28
    rlwinm  r0, r4, 0, 15, 15
    lwz     r6, 0x0(r5)
    cmplwi  r0, 0x0
    clrrwi  r6, r6, 4
    bne-    branch_0x80345ba0
    ori     r6, r6, 0x1
branch_0x80345ba0:
    rlwinm  r0, r4, 0, 16, 16
    cmplwi  r0, 0x0
    bne-    branch_0x80345bb0
    ori     r6, r6, 0x4
branch_0x80345bb0:
    stw     r6, 0x0(r5)
    rlwinm  r3, r3, 0, 17, 14
    b       branch_0x80345c70

branch_0x80345bbc:
    rlwinm  r0, r4, 0, 17, 17
    cmplwi  r0, 0x0
    li      r5, 0xf0
    bne-    branch_0x80345bd0
    ori     r5, r5, 0x800
branch_0x80345bd0:
    rlwinm  r0, r4, 0, 20, 20
    cmplwi  r0, 0x0
    bne-    branch_0x80345be0
    ori     r5, r5, 0x8
branch_0x80345be0:
    rlwinm  r0, r4, 0, 21, 21
    cmplwi  r0, 0x0
    bne-    branch_0x80345bf0
    ori     r5, r5, 0x4
branch_0x80345bf0:
    rlwinm  r0, r4, 0, 22, 22
    cmplwi  r0, 0x0
    bne-    branch_0x80345c00
    ori     r5, r5, 0x2
branch_0x80345c00:
    rlwinm  r0, r4, 0, 23, 23
    cmplwi  r0, 0x0
    bne-    branch_0x80345c10
    ori     r5, r5, 0x1
branch_0x80345c10:
    rlwinm  r0, r4, 0, 24, 24
    cmplwi  r0, 0x0
    bne-    branch_0x80345c20
    ori     r5, r5, 0x100
branch_0x80345c20:
    rlwinm  r0, r4, 0, 25, 25
    cmplwi  r0, 0x0
    bne-    branch_0x80345c30
    ori     r5, r5, 0x1000
branch_0x80345c30:
    rlwinm  r0, r4, 0, 18, 18
    cmplwi  r0, 0x0
    bne-    branch_0x80345c40
    ori     r5, r5, 0x200
branch_0x80345c40:
    rlwinm  r0, r4, 0, 19, 19
    cmplwi  r0, 0x0
    bne-    branch_0x80345c50
    ori     r5, r5, 0x400
branch_0x80345c50:
    rlwinm  r0, r4, 0, 26, 26
    cmplwi  r0, 0x0
    bne-    branch_0x80345c60
    ori     r5, r5, 0x2000
branch_0x80345c60:
    lis     r4, unk_cc003000@h
    addi    r4, r4, unk_cc003000@l
    stw     r5, 0x4(r4)
    rlwinm  r3, r3, 0, 27, 16
branch_0x80345c70:
    blr


.globl __OSMaskInterrupts
__OSMaskInterrupts: # 0x80345c74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r31, r3
    bl      OSDisableInterrupts
    lis     r4, 0x8000
    lwz     r29, 0xc4(r4)
    mr      r30, r3
    lwz     r5, 0xc8(r4)
    or      r0, r29, r5
    andc    r3, r31, r0
    or      r31, r31, r29
    stw     r31, 0xc4(r4)
    or      r31, r31, r5
    b       branch_0x80345cbc

branch_0x80345cbc:
    b       branch_0x80345cc0

branch_0x80345cc0:
    b       branch_0x80345ccc

branch_0x80345cc4:
    mr      r4, r31
    bl      SetInterruptMask
branch_0x80345ccc:
    cmplwi  r3, 0x0
    bne+    branch_0x80345cc4
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r29
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __OSUnmaskInterrupts
__OSUnmaskInterrupts: # 0x80345cfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r31, r3
    bl      OSDisableInterrupts
    lis     r4, 0x8000
    lwz     r29, 0xc4(r4)
    mr      r30, r3
    lwz     r5, 0xc8(r4)
    or      r0, r29, r5
    and     r3, r31, r0
    andc    r31, r29, r31
    stw     r31, 0xc4(r4)
    or      r31, r31, r5
    b       branch_0x80345d44

branch_0x80345d44:
    b       branch_0x80345d48

branch_0x80345d48:
    b       branch_0x80345d54

branch_0x80345d4c:
    mr      r4, r31
    bl      SetInterruptMask
branch_0x80345d54:
    cmplwi  r3, 0x0
    bne+    branch_0x80345d4c
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r29
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __OSDispatchInterrupt
__OSDispatchInterrupt: # 0x80345d84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r30, r4
    lis     r3, unk_cc003000@h
    lwz     r31, 0x3000(r3)
    rlwinm  r31, r31, 0, 16, 14
    cmplwi  r31, 0x0
    beq-    branch_0x80345dc8
    addi    r3, r3, unk_cc003000@l
    lwz     r0, 0x4(r3)
    and     r0, r31, r0
    cmplwi  r0, 0x0
    bne-    branch_0x80345dd0
branch_0x80345dc8:
    mr      r3, r30
    bl      OSLoadContext
branch_0x80345dd0:
    rlwinm  r0, r31, 0, 24, 24
    cmplwi  r0, 0x0
    li      r0, 0x0
    beq-    branch_0x80345e3c
    lis     r3, unk_cc004000@h
    addi    r3, r3, unk_cc004000@l
    lhz     r4, 0x1e(r3)
    clrlwi  r3, r4, 31
    cmplwi  r3, 0x0
    beq-    branch_0x80345dfc
    oris    r0, r0, 0x8000
branch_0x80345dfc:
    rlwinm  r3, r4, 0, 30, 30
    cmplwi  r3, 0x0
    beq-    branch_0x80345e0c
    oris    r0, r0, 0x4000
branch_0x80345e0c:
    rlwinm  r3, r4, 0, 29, 29
    cmplwi  r3, 0x0
    beq-    branch_0x80345e1c
    oris    r0, r0, 0x2000
branch_0x80345e1c:
    rlwinm  r3, r4, 0, 28, 28
    cmplwi  r3, 0x0
    beq-    branch_0x80345e2c
    oris    r0, r0, 0x1000
branch_0x80345e2c:
    rlwinm  r3, r4, 0, 27, 27
    cmplwi  r3, 0x0
    beq-    branch_0x80345e3c
    oris    r0, r0, 0x800
branch_0x80345e3c:
    rlwinm  r3, r31, 0, 25, 25
    cmplwi  r3, 0x0
    beq-    branch_0x80345e84
    lis     r3, unk_cc005000@h
    addi    r3, r3, unk_cc005000@l
    lhz     r4, 0xa(r3)
    rlwinm  r3, r4, 0, 28, 28
    cmplwi  r3, 0x0
    beq-    branch_0x80345e64
    oris    r0, r0, 0x400
branch_0x80345e64:
    rlwinm  r3, r4, 0, 26, 26
    cmplwi  r3, 0x0
    beq-    branch_0x80345e74
    oris    r0, r0, 0x200
branch_0x80345e74:
    rlwinm  r3, r4, 0, 24, 24
    cmplwi  r3, 0x0
    beq-    branch_0x80345e84
    oris    r0, r0, 0x100
branch_0x80345e84:
    rlwinm  r3, r31, 0, 26, 26
    cmplwi  r3, 0x0
    beq-    branch_0x80345ea8
    lis     r3, 0xcc00
    lwz     r3, 0x6c00(r3)
    rlwinm  r3, r3, 0, 28, 28
    cmplwi  r3, 0x0
    beq-    branch_0x80345ea8
    oris    r0, r0, 0x80
branch_0x80345ea8:
    rlwinm  r3, r31, 0, 27, 27
    cmplwi  r3, 0x0
    beq-    branch_0x80345f54
    lis     r3, 0xcc00
    lwz     r4, 0x6800(r3)
    rlwinm  r3, r4, 0, 30, 30
    cmplwi  r3, 0x0
    beq-    branch_0x80345ecc
    oris    r0, r0, 0x40
branch_0x80345ecc:
    rlwinm  r3, r4, 0, 28, 28
    cmplwi  r3, 0x0
    beq-    branch_0x80345edc
    oris    r0, r0, 0x20
branch_0x80345edc:
    rlwinm  r3, r4, 0, 20, 20
    cmplwi  r3, 0x0
    beq-    branch_0x80345eec
    oris    r0, r0, 0x10
branch_0x80345eec:
    lis     r3, unk_cc006800@h
    addi    r3, r3, unk_cc006800@l
    lwz     r4, 0x14(r3)
    rlwinm  r3, r4, 0, 30, 30
    cmplwi  r3, 0x0
    beq-    branch_0x80345f08
    oris    r0, r0, 0x8
branch_0x80345f08:
    rlwinm  r3, r4, 0, 28, 28
    cmplwi  r3, 0x0
    beq-    branch_0x80345f18
    oris    r0, r0, 0x4
branch_0x80345f18:
    rlwinm  r3, r4, 0, 20, 20
    cmplwi  r3, 0x0
    beq-    branch_0x80345f28
    oris    r0, r0, 0x2
branch_0x80345f28:
    lis     r3, unk_cc006800@h
    addi    r3, r3, unk_cc006800@l
    lwz     r4, 0x28(r3)
    rlwinm  r3, r4, 0, 30, 30
    cmplwi  r3, 0x0
    beq-    branch_0x80345f44
    oris    r0, r0, 0x1
branch_0x80345f44:
    rlwinm  r3, r4, 0, 28, 28
    cmplwi  r3, 0x0
    beq-    branch_0x80345f54
    ori     r0, r0, 0x8000
branch_0x80345f54:
    rlwinm  r3, r31, 0, 18, 18
    cmplwi  r3, 0x0
    beq-    branch_0x80345f64
    ori     r0, r0, 0x20
branch_0x80345f64:
    rlwinm  r3, r31, 0, 19, 19
    cmplwi  r3, 0x0
    beq-    branch_0x80345f74
    ori     r0, r0, 0x40
branch_0x80345f74:
    rlwinm  r3, r31, 0, 21, 21
    cmplwi  r3, 0x0
    beq-    branch_0x80345f84
    ori     r0, r0, 0x1000
branch_0x80345f84:
    rlwinm  r3, r31, 0, 22, 22
    cmplwi  r3, 0x0
    beq-    branch_0x80345f94
    ori     r0, r0, 0x2000
branch_0x80345f94:
    rlwinm  r3, r31, 0, 23, 23
    cmplwi  r3, 0x0
    beq-    branch_0x80345fa4
    ori     r0, r0, 0x80
branch_0x80345fa4:
    rlwinm  r3, r31, 0, 28, 28
    cmplwi  r3, 0x0
    beq-    branch_0x80345fb4
    ori     r0, r0, 0x800
branch_0x80345fb4:
    rlwinm  r3, r31, 0, 29, 29
    cmplwi  r3, 0x0
    beq-    branch_0x80345fc4
    ori     r0, r0, 0x400
branch_0x80345fc4:
    rlwinm  r3, r31, 0, 30, 30
    cmplwi  r3, 0x0
    beq-    branch_0x80345fd4
    ori     r0, r0, 0x200
branch_0x80345fd4:
    rlwinm  r3, r31, 0, 20, 20
    cmplwi  r3, 0x0
    beq-    branch_0x80345fe4
    ori     r0, r0, 0x4000
branch_0x80345fe4:
    clrlwi  r3, r31, 31
    cmplwi  r3, 0x0
    beq-    branch_0x80345ff4
    ori     r0, r0, 0x100
branch_0x80345ff4:
    lis     r3, 0x8000
    lwz     r4, 0xc4(r3)
    lwz     r3, 0xc8(r3)
    or      r3, r4, r3
    andc    r4, r0, r3
    cmplwi  r4, 0x0
    beq-    branch_0x803460a4
    lis     r3, InterruptPrioTable@ha
    addi    r0, r3, InterruptPrioTable@l
    mr      r3, r0
    b       branch_0x80346020

branch_0x80346020:
    b       branch_0x80346024

branch_0x80346024:
    lwz     r0, 0x0(r3)
    and     r0, r4, r0
    cmplwi  r0, 0x0
    beq-    branch_0x80346040
    cntlzw  r0, r0
    extsh   r29, r0
    b       branch_0x80346048

branch_0x80346040:
    addi    r3, r3, 0x4
    b       branch_0x80346024

branch_0x80346048:
    lwz     r3, R13Off_m0x5a10(r13)
    slwi    r0, r29, 2
    lwzx    r31, r3, r0
    cmplwi  r31, 0x0
    beq-    branch_0x803460a4
    cmpwi   r29, 0x4
    ble-    branch_0x8034607c
    sth     r29, -0x5a08(r13)
    bl      OSGetTime
    stw     r4, R13Off_m0x59fc(r13)
    stw     r3, R13Off_m0x5a00(r13)
    lwz     r0, 0x198(r30)
    stw     r0, R13Off_m0x5a0c(r13)
branch_0x8034607c:
    bl      OSDisableScheduler
    mr      r3, r29
    mr      r4, r30
    mr      r12, r31
    mtlr    r12
    blrl
    bl      OSEnableScheduler
    bl      __OSReschedule
    mr      r3, r30
    bl      OSLoadContext
branch_0x803460a4:
    mr      r3, r30
    bl      OSLoadContext
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl ExternalInterruptHandler
ExternalInterruptHandler: # 0x803460c8
    stw     r0, 0x0(r4)
    stw     sp, 0x4(r4)
    stw     r2, 0x8(r4)
    stmw    r6, 0x18(r4)
    mfspr   r0, 913
    stw     r0, 0x1a8(r4)
    mfspr   r0, 914
    stw     r0, 0x1ac(r4)
    mfspr   r0, 915
    stw     r0, 0x1b0(r4)
    mfspr   r0, 916
    stw     r0, 0x1b4(r4)
    mfspr   r0, 917
    stw     r0, 0x1b8(r4)
    mfspr   r0, 918
    stw     r0, 0x1bc(r4)
    mfspr   r0, 919
    stw     r0, 0x1c0(r4)
    stwu    sp, -0x8(sp)
    b       __OSDispatchInterrupt

