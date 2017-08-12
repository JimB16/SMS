
.globl SetExiInterruptMask
SetExiInterruptMask: # 0x80369b00
    mflr    r0
    lis     r5, Ecb@h
    stw     r0, 0x4(sp)
    cmpwi   r3, 0x1
    addi    r5, r5, Ecb@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, 0x80
    beq-    branch_0x80369b80
    bge-    branch_0x80369b38
    cmpwi   r3, 0x0
    bge-    branch_0x80369b44
    b       branch_0x80369be0

branch_0x80369b38:
    cmpwi   r3, 0x3
    bge-    branch_0x80369be0
    b       branch_0x80369bb0

branch_0x80369b44:
    lwz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80369b5c
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80369b68
branch_0x80369b5c:
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80369b74
branch_0x80369b68:
    lis     r3, 0x41
    bl      __OSMaskInterrupts
    b       branch_0x80369be0

branch_0x80369b74:
    lis     r3, 0x41
    bl      __OSUnmaskInterrupts
    b       branch_0x80369be0

branch_0x80369b80:
    lwz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80369b98
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80369ba4
branch_0x80369b98:
    lis     r3, 0x8
    bl      __OSMaskInterrupts
    b       branch_0x80369be0

branch_0x80369ba4:
    lis     r3, unk_00080000@h
    bl      __OSUnmaskInterrupts
    b       branch_0x80369be0

branch_0x80369bb0:
    li      r3, 0x19
    bl      __OSGetInterruptHandler
    cmplwi  r3, 0x0
    beq-    branch_0x80369bcc
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80369bd8
branch_0x80369bcc:
    li      r3, 0x40
    bl      __OSMaskInterrupts
    b       branch_0x80369be0

branch_0x80369bd8:
    li      r3, 0x40
    bl      __OSUnmaskInterrupts
branch_0x80369be0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl EXIImm
EXIImm: # 0x80369bf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r19, 0x24(sp)
    addi    r28, r3, unk_00080000@l
    lis     r3, Ecb@h
    slwi    r8, r28, 6
    addi    r0, r3, Ecb@l
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    addi    r31, r6, 0x0
    addi    r19, r7, 0x0
    add     r27, r0, r8
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r27)
    addi    r26, r3, 0x0
    clrlwi. r0, r0, 30
    bne-    branch_0x80369c48
    lwz     r0, 0xc(r27)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80369c58
branch_0x80369c48:
    mr      r3, r26
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x80369e3c

branch_0x80369c58:
    stw     r19, 0x4(r27)
    lwz     r0, 0x4(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x80369c8c
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    bl      EXIClearInterrupts
    mulli   r0, r28, 0x3
    lis     r3, unk_00200007@h
    srw     r3, r3, r0
    bl      __OSUnmaskInterrupts
branch_0x80369c8c:
    lwz     r0, 0xc(r27)
    cmplwi  r31, 0x0
    ori     r0, r0, 0x2
    stw     r0, 0xc(r27)
    beq-    branch_0x80369de0
    li      r24, 0x0
    cmpw    r24, r30
    li      r25, 0x0
    bge-    branch_0x80369dcc
    cmpwi   r30, 0x8
    addi    r3, r30, -0x8
    ble-    branch_0x80369e34
    addi    r0, r3, unk_00200007@l
    srwi    r0, r0, 3
    cmpwi   r3, 0x0
    mtctr   r0
    addi    r12, r29, 0x0
    ble-    branch_0x80369e34
branch_0x80369cd4:
    subfic  r3, r24, 0x3
    lbz     r9, 0x0(r12)
    addi    r0, r24, 0x1
    lbz     r10, 0x1(r12)
    slwi    r7, r3, 3
    lbz     r8, 0x2(r12)
    subfic  r5, r0, 0x3
    lbz     r6, 0x3(r12)
    addi    r3, r24, 0x2
    lbz     r4, 0x4(r12)
    slw     r11, r9, r7
    lbz     r0, 0x5(r12)
    slwi    r9, r5, 3
    lbz     r20, 0x6(r12)
    subfic  r3, r3, 0x3
    lbz     r22, 0x7(r12)
    slwi    r7, r3, 3
    neg     r5, r24
    addi    r3, r24, 0x4
    slwi    r5, r5, 3
    subfic  r3, r3, 0x3
    addi    r19, r24, 0x5
    slwi    r3, r3, 3
    subfic  r19, r19, 0x3
    addi    r21, r24, 0x6
    slwi    r19, r19, 3
    subfic  r21, r21, 0x3
    addi    r23, r24, 0x7
    slwi    r21, r21, 3
    subfic  r23, r23, 0x3
    slwi    r23, r23, 3
    or      r25, r25, r11
    slw     r9, r10, r9
    or      r25, r25, r9
    slw     r7, r8, r7
    or      r25, r25, r7
    slw     r5, r6, r5
    or      r25, r25, r5
    slw     r3, r4, r3
    or      r25, r25, r3
    slw     r0, r0, r19
    or      r25, r25, r0
    slw     r0, r20, r21
    or      r25, r25, r0
    slw     r0, r22, r23
    or      r25, r25, r0
    addi    r12, r12, 0x8
    addi    r24, r24, 0x8
    bdnz+      branch_0x80369cd4
    b       branch_0x80369e34

branch_0x80369d9c:
    subf    r0, r24, r30
    cmpw    r24, r30
    mtctr   r0
    bge-    branch_0x80369dcc
branch_0x80369dac:
    subfic  r0, r24, 0x3
    lbz     r3, 0x0(r4)
    slwi    r0, r0, 3
    slw     r0, r3, r0
    or      r25, r25, r0
    addi    r4, r4, 0x1
    addi    r24, r24, 0x1
    bdnz+      branch_0x80369dac
branch_0x80369dcc:
    mulli   r0, r28, 0x14
    lis     r3, unk_cc006800@h
    addi    r3, r3, unk_cc006800@l
    add     r3, r3, r0
    stw     r25, 0x10(r3)
branch_0x80369de0:
    cmplwi  r31, 0x1
    stw     r29, 0x14(r27)
    beq-    branch_0x80369df4
    mr      r3, r30
    b       branch_0x80369df8

branch_0x80369df4:
    li      r3, 0x0
branch_0x80369df8:
    mulli   r0, r28, 0x14
    stw     r3, 0x10(r27)
    slwi    r5, r31, 2
    addi    r4, r30, -0x1
    lis     r3, unk_cc006800@h
    addi    r3, r3, unk_cc006800@l
    ori     r5, r5, 0x1
    slwi    r4, r4, 4
    or      r4, r5, r4
    add     r3, r3, r0
    stw     r4, 0xc(r3)
    mr      r3, r26
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       branch_0x80369e3c

branch_0x80369e34:
    add     r4, r29, r24
    b       branch_0x80369d9c

branch_0x80369e3c:
    lmw     r19, 0x24(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl EXIImmEx
EXIImmEx: # 0x80369e50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    b       branch_0x80369ed0

branch_0x80369e74:
    cmpwi   r29, 0x4
    bge-    branch_0x80369e84
    mr      r31, r29
    b       branch_0x80369e88

branch_0x80369e84:
    li      r31, 0x4
branch_0x80369e88:
    addi    r5, r31, 0x0
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r6, r30, 0x0
    li      r7, 0x0
    bl      EXIImm
    cmpwi   r3, 0x0
    bne-    branch_0x80369eb0
    li      r3, 0x0
    b       branch_0x80369edc

branch_0x80369eb0:
    mr      r3, r27
    bl      EXISync
    cmpwi   r3, 0x0
    bne-    branch_0x80369ec8
    li      r3, 0x0
    b       branch_0x80369edc

branch_0x80369ec8:
    add     r28, r28, r31
    subf    r29, r31, r29
branch_0x80369ed0:
    cmpwi   r29, 0x0
    bne+    branch_0x80369e74
    li      r3, 0x1
branch_0x80369edc:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl EXIDma
EXIDma: # 0x80369ef0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    addi    r27, r3, 0x0
    lis     r3, Ecb@h
    slwi    r8, r27, 6
    addi    r0, r3, Ecb@l
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r25, r7, 0x0
    add     r26, r0, r8
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r26)
    addi    r31, r3, 0x0
    clrlwi. r0, r0, 30
    bne-    branch_0x80369f44
    lwz     r0, 0xc(r26)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80369f54
branch_0x80369f44:
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x80369fc8

branch_0x80369f54:
    stw     r25, 0x4(r26)
    lwz     r0, 0x4(r26)
    cmplwi  r0, 0x0
    beq-    branch_0x80369f88
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    bl      EXIClearInterrupts
    mulli   r0, r27, 0x3
    lis     r3, 0x20
    srw     r3, r3, r0
    bl      __OSUnmaskInterrupts
branch_0x80369f88:
    lwz     r0, 0xc(r26)
    lis     r3, unk_cc006800@h
    mulli   r5, r27, 0x14
    ori     r4, r0, 0x1
    addi    r0, r3, unk_cc006800@l
    stw     r4, 0xc(r26)
    rlwinm  r3, r28, 0, 6, 26
    add     r4, r0, r5
    stw     r3, 0x4(r4)
    slwi    r0, r30, 2
    ori     r0, r0, 0x3
    stw     r29, 0x8(r4)
    mr      r3, r31
    stw     r0, 0xc(r4)
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x80369fc8:
    lmw     r25, 0x24(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl EXISync
EXISync: # 0x80369fdc
    mflr    r0
    lis     r5, Ecb@h
    stw     r0, 0x4(sp)
    lis     r4, unk_cc006800@h
    addi    r0, r5, Ecb@l
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    mulli   r30, r3, 0x14
    addi    r29, r4, unk_cc006800@l
    slwi    r3, r3, 6
    add     r31, r0, r3
    add     r29, r29, r30
    li      r28, 0x0
    b       branch_0x8036a1f0

branch_0x8036a014:
    lwz     r0, 0xc(r29)
    clrlwi. r0, r0, 31
    bne-    branch_0x8036a1f0
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r31)
    addi    r27, r3, 0x0
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8036a1e4
    lwz     r0, 0xc(r31)
    clrlwi. r0, r0, 30
    beq-    branch_0x8036a170
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8036a164
    lwz     r4, 0x10(r31)
    cmpwi   r4, 0x0
    beq-    branch_0x8036a164
    lis     r3, unk_cc006800@h
    lwz     r7, 0x14(r31)
    addi    r0, r3, unk_cc006800@l
    add     r3, r0, r30
    lwz     r6, 0x10(r3)
    li      r5, 0x0
    ble-    branch_0x8036a164
    cmpwi   r4, 0x8
    addi    r3, r4, -0x8
    ble-    branch_0x8036a138
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmpwi   r3, 0x0
    mtctr   r0
    ble-    branch_0x8036a138
branch_0x8036a094:
    subfic  r0, r5, 0x3
    slwi    r3, r0, 3
    addi    r0, r5, 0x1
    srw     r8, r6, r3
    subfic  r0, r0, 0x3
    stb     r8, 0x0(r7)
    slwi    r3, r0, 3
    addi    r0, r5, 0x2
    srw     r3, r6, r3
    subfic  r0, r0, 0x3
    stb     r3, 0x1(r7)
    slwi    r0, r0, 3
    srw     r0, r6, r0
    neg     r8, r5
    stb     r0, 0x2(r7)
    slwi    r9, r8, 3
    addi    r8, r5, 0x4
    srw     r12, r6, r9
    subfic  r8, r8, 0x3
    stb     r12, 0x3(r7)
    slwi    r9, r8, 3
    addi    r8, r5, 0x5
    srw     r11, r6, r9
    subfic  r8, r8, 0x3
    stb     r11, 0x4(r7)
    slwi    r9, r8, 3
    srw     r10, r6, r9
    addi    r8, r5, 0x6
    stb     r10, 0x5(r7)
    subfic  r9, r8, 0x3
    addi    r8, r5, 0x7
    slwi    r9, r9, 3
    srw     r9, r6, r9
    subfic  r8, r8, 0x3
    stb     r9, 0x6(r7)
    slwi    r8, r8, 3
    srw     r8, r6, r8
    stb     r8, 0x7(r7)
    addi    r7, r7, 0x8
    addi    r5, r5, 0x8
    bdnz+      branch_0x8036a094
branch_0x8036a138:
    subf    r0, r5, r4
    cmpw    r5, r4
    mtctr   r0
    bge-    branch_0x8036a164
branch_0x8036a148:
    subfic  r0, r5, 0x3
    slwi    r0, r0, 3
    srw     r0, r6, r0
    stb     r0, 0x0(r7)
    addi    r7, r7, 0x1
    addi    r5, r5, 0x1
    bdnz+      branch_0x8036a148
branch_0x8036a164:
    lwz     r0, 0xc(r31)
    clrrwi  r0, r0, 2
    stw     r0, 0xc(r31)
branch_0x8036a170:
    bl      __OSGetDIConfig
    cmplwi  r3, 0xff
    bne-    branch_0x8036a1e0
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x8036a1e0
    lwz     r0, 0x0(r29)
    rlwinm. r0, r0, 0, 25, 27
    bne-    branch_0x8036a1e0
    lis     r3, unk_cc006800@h
    addi    r0, r3, unk_cc006800@l
    add     r4, r0, r30
    lwzu    r3, 0x10(r4)
    addis   r0, r3, 0xfeff
    cmplwi  r0, 0x0
    beq-    branch_0x8036a1d0
    lwz     r3, 0x0(r4)
    addis   r0, r3, 0xfaf9
    cmplwi  r0, 0x0
    beq-    branch_0x8036a1d0
    lwz     r3, 0x0(r4)
    addis   r0, r3, 0xfbde
    cmplwi  r0, 0x1
    bne-    branch_0x8036a1e0
branch_0x8036a1d0:
    lis     r3, 0x8000
    lhz     r0, 0x30e6(r3)
    cmplwi  r0, 0x8200
    bne-    branch_0x8036a1e4
branch_0x8036a1e0:
    li      r28, 0x1
branch_0x8036a1e4:
    mr      r3, r27
    bl      OSRestoreInterrupts
    b       branch_0x8036a1fc

branch_0x8036a1f0:
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne+    branch_0x8036a014
branch_0x8036a1fc:
    mr      r3, r28
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl EXIClearInterrupts
EXIClearInterrupts: # 0x8036a214
    mulli   r0, r3, 0x14
    lis     r3, unk_cc006800@h
    addi    r7, r3, unk_cc006800@l
    add     r7, r7, r0
    lwz     r0, 0x0(r7)
    mr      r3, r0
    andi.   r0, r0, 0x7f5
    cmpwi   r4, 0x0
    beq-    branch_0x8036a23c
    ori     r0, r0, 0x2
branch_0x8036a23c:
    cmpwi   r5, 0x0
    beq-    branch_0x8036a248
    ori     r0, r0, 0x8
branch_0x8036a248:
    cmpwi   r6, 0x0
    beq-    branch_0x8036a254
    ori     r0, r0, 0x800
branch_0x8036a254:
    stw     r0, 0x0(r7)
    blr


.globl EXISetExiCallback
EXISetExiCallback: # 0x8036a25c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r27, r3, 0x0
    lis     r3, Ecb@h
    slwi    r0, r27, 6
    addi    r31, r3, Ecb@l
    add     r30, r31, r0
    addi    r28, r4, 0x0
    bl      OSDisableInterrupts
    lwz     r29, 0x0(r30)
    cmpwi   r27, 0x2
    stw     r28, 0x0(r30)
    mr      r28, r3
    beq-    branch_0x8036a2ac
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    bl      SetExiInterruptMask
    b       branch_0x8036a2b8

branch_0x8036a2ac:
    addi    r4, r31, 0x0
    li      r3, 0x0
    bl      SetExiInterruptMask
branch_0x8036a2b8:
    mr      r3, r28
    bl      OSRestoreInterrupts
    mr      r3, r29
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __EXIProbe
__EXIProbe: # 0x8036a2d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r28, r3, 0x0
    lis     r3, Ecb@h
    cmpwi   r28, 0x2
    slwi    r4, r28, 6
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    bne-    branch_0x8036a30c
    li      r3, 0x1
    b       branch_0x8036a438

branch_0x8036a30c:
    li      r29, 0x1
    bl      OSDisableInterrupts
    mulli   r5, r28, 0x14
    lwz     r0, 0xc(r31)
    lis     r4, unk_cc006800@h
    addi    r6, r4, unk_cc006800@l
    add     r6, r6, r5
    rlwinm. r0, r0, 0, 28, 28
    lwz     r7, 0x0(r6)
    mr      r30, r3
    bne-    branch_0x8036a400
    rlwinm. r0, r7, 0, 20, 20
    beq-    branch_0x8036a368
    lwz     r5, 0x0(r6)
    lis     r3, unk_800030c0@h
    li      r4, 0x0
    andi.   r5, r5, 0x7f5
    slwi    r0, r28, 2
    addi    r3, r3, unk_800030c0@l
    ori     r5, r5, 0x800
    stw     r5, 0x0(r6)
    stw     r4, 0x20(r31)
    stwx    r4, r3, r0
branch_0x8036a368:
    rlwinm. r0, r7, 0, 19, 19
    beq-    branch_0x8036a3e0
    lis     r31, unk_800030c0@h
    lwz     r0, 0xf8(r31)
    lis     r3, unk_10624dd3@h
    addi    r3, r3, unk_10624dd3@l
    srwi    r0, r0, 2
    mulhwu  r0, r3, r0
    srwi    r27, r0, 6
    bl      OSGetTime
    addi    r6, r27, 0x0
    li      r5, 0x0
    bl      __div2i
    li      r5, 0x0
    li      r6, 0x64
    bl      __div2i
    slwi    r0, r28, 2
    addi    r3, r31, unk_800030c0@l
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    addi    r4, r4, 0x1
    cmpwi   r0, 0x0
    bne-    branch_0x8036a3c8
    stw     r4, 0x0(r3)
branch_0x8036a3c8:
    lwz     r0, 0x0(r3)
    subf    r0, r0, r4
    cmpwi   r0, 0x3
    bge-    branch_0x8036a42c
    li      r29, 0x0
    b       branch_0x8036a42c

branch_0x8036a3e0:
    li      r4, 0x0
    lis     r3, unk_800030c0@h
    stw     r4, 0x20(r31)
    slwi    r0, r28, 2
    addi    r3, r3, unk_800030c0@l
    stwx    r4, r3, r0
    li      r29, 0x0
    b       branch_0x8036a42c

branch_0x8036a400:
    rlwinm. r0, r7, 0, 19, 19
    beq-    branch_0x8036a410
    rlwinm. r0, r7, 0, 20, 20
    beq-    branch_0x8036a42c
branch_0x8036a410:
    li      r4, 0x0
    lis     r3, unk_800030c0@h
    stw     r4, 0x20(r31)
    slwi    r0, r28, 2
    addi    r3, r3, unk_800030c0@l
    stwx    r4, r3, r0
    li      r29, 0x0
branch_0x8036a42c:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r29
branch_0x8036a438:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl EXIProbe
EXIProbe: # 0x8036a44c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lis     r3, Ecb@h
    addi    r0, r3, Ecb@l
    slwi    r4, r30, 6
    addi    r3, r30, 0x0
    add     r31, r0, r4
    bl      __EXIProbe
    cmpwi   r3, 0x0
    beq-    branch_0x8036a4b4
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8036a4b4
    addi    r3, r30, 0x0
    addi    r5, sp, 0xc
    li      r4, 0x0
    bl      EXIGetID
    cmpwi   r3, 0x0
    beq-    branch_0x8036a4b0
    li      r3, 0x1
    b       branch_0x8036a4b4

branch_0x8036a4b0:
    li      r3, 0x0
branch_0x8036a4b4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl EXIProbeEx
EXIProbeEx: # 0x8036a4cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lis     r3, Ecb@h
    addi    r0, r3, Ecb@l
    slwi    r4, r30, 6
    addi    r3, r30, 0x0
    add     r31, r0, r4
    bl      __EXIProbe
    cmpwi   r3, 0x0
    beq-    branch_0x8036a534
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8036a534
    addi    r3, r30, 0x0
    addi    r5, sp, 0xc
    li      r4, 0x0
    bl      EXIGetID
    cmpwi   r3, 0x0
    beq-    branch_0x8036a530
    li      r3, 0x1
    b       branch_0x8036a534

branch_0x8036a530:
    li      r3, 0x0
branch_0x8036a534:
    cmpwi   r3, 0x0
    beq-    branch_0x8036a544
    li      r3, 0x1
    b       branch_0x8036a568

branch_0x8036a544:
    lis     r3, unk_800030c0@h
    slwi    r0, r30, 2
    addi    r3, r3, unk_800030c0@l
    lwzx    r0, r3, r0
    cmpwi   r0, 0x0
    beq-    branch_0x8036a564
    li      r3, 0x0
    b       branch_0x8036a568

branch_0x8036a564:
    li      r3, -0x1
branch_0x8036a568:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl EXIAttach
EXIAttach: # 0x8036a580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r27, 0x2c(sp)
    addi    r27, r3, 0x0
    lis     r3, Ecb@h
    addi    r0, r3, Ecb@l
    slwi    r5, r27, 6
    addi    r28, r4, 0x0
    addi    r3, r27, 0x0
    add     r30, r0, r5
    bl      __EXIProbe
    cmpwi   r3, 0x0
    beq-    branch_0x8036a5d4
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8036a5d4
    addi    r3, r27, 0x0
    addi    r5, sp, 0x1c
    li      r4, 0x0
    bl      EXIGetID
branch_0x8036a5d4:
    bl      OSDisableInterrupts
    lwz     r0, 0x20(r30)
    addi    r29, r3, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x8036a5f8
    mr      r3, r29
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8036a678

branch_0x8036a5f8:
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r30)
    addi    r31, r3, 0x0
    rlwinm. r0, r0, 0, 28, 28
    bne-    branch_0x8036a61c
    mr      r3, r27
    bl      __EXIProbe
    cmpwi   r3, 0x0
    bne-    branch_0x8036a62c
branch_0x8036a61c:
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       branch_0x8036a66c

branch_0x8036a62c:
    addi    r3, r27, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    bl      EXIClearInterrupts
    mulli   r0, r27, 0x3
    stw     r28, 0x8(r30)
    lis     r3, unk_00100000@h
    srw     r3, r3, r0
    bl      __OSUnmaskInterrupts
    lwz     r0, 0xc(r30)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x8
    stw     r0, 0xc(r30)
    bl      OSRestoreInterrupts
    li      r31, 0x1
branch_0x8036a66c:
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r31
branch_0x8036a678:
    lmw     r27, 0x2c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl EXIDetach
EXIDetach: # 0x8036a68c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, unk_00100000@l
    lis     r3, Ecb@h
    slwi    r4, r29, 6
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r31)
    addi    r30, r3, 0x0
    rlwinm. r0, r0, 0, 28, 28
    bne-    branch_0x8036a6dc
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       branch_0x8036a72c

branch_0x8036a6dc:
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8036a704
    lwz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8036a704
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8036a72c

branch_0x8036a704:
    lwz     r3, 0xc(r31)
    mulli   r0, r29, 0x3
    rlwinm  r4, r3, 0, 29, 27
    lis     r3, unk_00700000@h
    stw     r4, 0xc(r31)
    srw     r3, r3, r0
    bl      __OSMaskInterrupts
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x8036a72c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl EXISelect
EXISelect: # 0x8036a748
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, unk_00700000@l
    lis     r3, Ecb@h
    slwi    r6, r27, 6
    addi    r0, r3, Ecb@l
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    add     r31, r0, r6
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r31)
    addi    r30, r3, 0x0
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8036a7cc
    cmpwi   r27, 0x2
    beq-    branch_0x8036a7dc
    cmplwi  r28, 0x0
    bne-    branch_0x8036a7b4
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne-    branch_0x8036a7b4
    mr      r3, r27
    bl      __EXIProbe
    cmpwi   r3, 0x0
    beq-    branch_0x8036a7cc
branch_0x8036a7b4:
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8036a7cc
    lwz     r0, 0x18(r31)
    cmplw   r0, r28
    beq-    branch_0x8036a7dc
branch_0x8036a7cc:
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8036a860

branch_0x8036a7dc:
    lwz     r4, 0xc(r31)
    lis     r3, unk_cc006800@h
    mulli   r0, r27, 0x14
    ori     r4, r4, 0x4
    addi    r5, r3, unk_cc006800@l
    stw     r4, 0xc(r31)
    add     r5, r5, r0
    lwz     r4, 0x0(r5)
    li      r0, 0x1
    slw     r0, r0, r28
    slwi    r3, r0, 7
    slwi    r0, r29, 4
    andi.   r4, r4, 0x405
    or      r0, r3, r0
    or      r4, r4, r0
    stw     r4, 0x0(r5)
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8036a854
    cmpwi   r27, 0x1
    beq-    branch_0x8036a84c
    bge-    branch_0x8036a854
    cmpwi   r27, 0x0
    bge-    branch_0x8036a840
    b       branch_0x8036a854

branch_0x8036a840:
    lis     r3, 0x10
    bl      __OSMaskInterrupts
    b       branch_0x8036a854

branch_0x8036a84c:
    lis     r3, unk_00020000@h
    bl      __OSMaskInterrupts
branch_0x8036a854:
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x8036a860:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl EXIDeselect
EXIDeselect: # 0x8036a874
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, unk_00020000@l
    lis     r3, Ecb@h
    stw     r30, 0x18(sp)
    slwi    r4, r31, 6
    addi    r0, r3, Ecb@l
    stw     r29, 0x14(sp)
    add     r30, r0, r4
    stw     r28, 0x10(sp)
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r30)
    addi    r28, r3, 0x0
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8036a8c8
    mr      r3, r28
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8036a964

branch_0x8036a8c8:
    lwz     r4, 0xc(r30)
    lis     r3, unk_cc006800@h
    mulli   r0, r31, 0x14
    rlwinm  r4, r4, 0, 30, 28
    addi    r3, r3, unk_cc006800@l
    stw     r4, 0xc(r30)
    add     r3, r3, r0
    lwz     r29, 0x0(r3)
    andi.   r0, r29, 0x405
    stw     r0, 0x0(r3)
    lwz     r0, 0xc(r30)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8036a928
    cmpwi   r31, 0x1
    beq-    branch_0x8036a920
    bge-    branch_0x8036a928
    cmpwi   r31, 0x0
    bge-    branch_0x8036a914
    b       branch_0x8036a928

branch_0x8036a914:
    lis     r3, 0x10
    bl      __OSUnmaskInterrupts
    b       branch_0x8036a928

branch_0x8036a920:
    lis     r3, 0x2
    bl      __OSUnmaskInterrupts
branch_0x8036a928:
    mr      r3, r28
    bl      OSRestoreInterrupts
    cmpwi   r31, 0x2
    beq-    branch_0x8036a960
    rlwinm. r0, r29, 0, 24, 24
    beq-    branch_0x8036a960
    mr      r3, r31
    bl      __EXIProbe
    cmpwi   r3, 0x0
    beq-    branch_0x8036a958
    li      r3, 0x1
    b       branch_0x8036a964

branch_0x8036a958:
    li      r3, 0x0
    b       branch_0x8036a964

branch_0x8036a960:
    li      r3, 0x1
branch_0x8036a964:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl EXIIntrruptHandler
EXIIntrruptHandler: # 0x8036a984
    mflr    r0
    extsh   r5, r3
    stw     r0, 0x4(sp)
    lis     r3, unk_55555556@h
    addi    r0, r5, -0x9
    addi    r3, r3, unk_55555556@l
    stwu    sp, -0x2f8(sp)
    mulhw   r3, r3, r0
    stw     r31, 0x2f4(sp)
    stw     r30, 0x2f0(sp)
    srwi    r0, r3, 31
    stw     r29, 0x2ec(sp)
    add     r31, r3, r0
    lis     r3, unk_cc006800@h
    addi    r7, r3, unk_cc006800@l
    mulli   r0, r31, 0x14
    add     r7, r7, r0
    lwz     r6, 0x0(r7)
    lis     r3, Ecb@h
    slwi    r5, r31, 6
    andi.   r6, r6, 0x7f5
    addi    r0, r3, Ecb@l
    add     r3, r0, r5
    ori     r6, r6, 0x2
    stw     r6, 0x0(r7)
    mr      r29, r4
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    mr      r30, r0
    beq-    branch_0x8036aa30
    addi    r3, sp, 0x18
    bl      OSClearContext
    addi    r3, sp, 0x18
    bl      OSSetCurrentContext
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    blrl
    addi    r3, sp, 0x18
    bl      OSClearContext
    mr      r3, r29
    bl      OSSetCurrentContext
branch_0x8036aa30:
    lwz     r0, 0x2fc(sp)
    lwz     r31, 0x2f4(sp)
    lwz     r30, 0x2f0(sp)
    lwz     r29, 0x2ec(sp)
    addi    sp, sp, 0x2f8
    mtlr    r0
    blr


.globl TCIntrruptHandler
TCIntrruptHandler: # 0x8036aa4c
    mflr    r0
    extsh   r6, r3
    stw     r0, 0x4(sp)
    lis     r3, unk_55555556@h
    addi    r0, r6, -0xa
    stwu    sp, -0x2f8(sp)
    addi    r3, r3, unk_55555556@l
    mulhw   r3, r3, r0
    stw     r31, 0x2f4(sp)
    stw     r30, 0x2f0(sp)
    stw     r29, 0x2ec(sp)
    srwi    r0, r3, 31
    add     r30, r3, r0
    lis     r3, Ecb@h
    stw     r28, 0x2e8(sp)
    lis     r0, 0x8000
    slwi    r5, r30, 6
    addi    r3, r3, Ecb@l
    add     r31, r3, r5
    addi    r28, r4, 0x0
    srw     r3, r0, r6
    bl      __OSMaskInterrupts
    mulli   r6, r30, 0x14
    lis     r3, unk_cc006800@h
    addi    r4, r3, unk_cc006800@l
    add     r4, r4, r6
    lwz     r0, 0x0(r4)
    andi.   r0, r0, 0x7f5
    ori     r0, r0, 0x8
    stw     r0, 0x0(r4)
    lwz     r0, 0x4(r31)
    cmplwi  r0, 0x0
    mr      r29, r0
    beq-    branch_0x8036ac44
    li      r5, 0x0
    stw     r5, 0x4(r31)
    lwz     r0, 0xc(r31)
    clrlwi. r0, r0, 30
    beq-    branch_0x8036ac10
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8036ac04
    lwz     r4, 0x10(r31)
    cmpwi   r4, 0x0
    beq-    branch_0x8036ac04
    addi    r0, r3, 0x6800
    lwz     r7, 0x14(r31)
    add     r3, r0, r6
    lwz     r6, 0x10(r3)
    ble-    branch_0x8036ac04
    cmpwi   r4, 0x8
    addi    r3, r4, -0x8
    ble-    branch_0x8036abd8
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmpwi   r3, 0x0
    mtctr   r0
    ble-    branch_0x8036abd8
branch_0x8036ab34:
    subfic  r0, r5, 0x3
    slwi    r3, r0, 3
    addi    r0, r5, 0x1
    srw     r8, r6, r3
    subfic  r0, r0, 0x3
    stb     r8, 0x0(r7)
    slwi    r3, r0, 3
    addi    r0, r5, 0x2
    srw     r3, r6, r3
    subfic  r0, r0, 0x3
    stb     r3, 0x1(r7)
    slwi    r0, r0, 3
    srw     r0, r6, r0
    neg     r8, r5
    stb     r0, 0x2(r7)
    slwi    r9, r8, 3
    addi    r8, r5, 0x4
    srw     r12, r6, r9
    subfic  r8, r8, 0x3
    stb     r12, 0x3(r7)
    slwi    r9, r8, 3
    addi    r8, r5, 0x5
    srw     r11, r6, r9
    subfic  r8, r8, 0x3
    stb     r11, 0x4(r7)
    slwi    r9, r8, 3
    srw     r10, r6, r9
    addi    r8, r5, 0x6
    stb     r10, 0x5(r7)
    subfic  r9, r8, 0x3
    addi    r8, r5, 0x7
    slwi    r9, r9, 3
    srw     r9, r6, r9
    subfic  r8, r8, 0x3
    stb     r9, 0x6(r7)
    slwi    r8, r8, 3
    srw     r8, r6, r8
    stb     r8, 0x7(r7)
    addi    r7, r7, 0x8
    addi    r5, r5, 0x8
    bdnz+      branch_0x8036ab34
branch_0x8036abd8:
    subf    r0, r5, r4
    cmpw    r5, r4
    mtctr   r0
    bge-    branch_0x8036ac04
branch_0x8036abe8:
    subfic  r0, r5, 0x3
    slwi    r0, r0, 3
    srw     r0, r6, r0
    stb     r0, 0x0(r7)
    addi    r7, r7, 0x1
    addi    r5, r5, 0x1
    bdnz+      branch_0x8036abe8
branch_0x8036ac04:
    lwz     r0, 0xc(r31)
    clrrwi  r0, r0, 2
    stw     r0, 0xc(r31)
branch_0x8036ac10:
    addi    r3, sp, 0x20
    bl      OSClearContext
    addi    r3, sp, 0x20
    bl      OSSetCurrentContext
    addi    r12, r29, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    blrl
    addi    r3, sp, 0x20
    bl      OSClearContext
    mr      r3, r28
    bl      OSSetCurrentContext
branch_0x8036ac44:
    lwz     r0, 0x2fc(sp)
    lwz     r31, 0x2f4(sp)
    lwz     r30, 0x2f0(sp)
    lwz     r29, 0x2ec(sp)
    lwz     r28, 0x2e8(sp)
    addi    sp, sp, 0x2f8
    mtlr    r0
    blr


.globl EXTIntrruptHandler
EXTIntrruptHandler: # 0x8036ac64
    mflr    r0
    extsh   r5, r3
    stw     r0, 0x4(sp)
    lis     r3, unk_55555556@h
    addi    r0, r5, -0xb
    addi    r3, r3, unk_55555556@l
    stwu    sp, -0x2f0(sp)
    mulhw   r3, r3, r0
    stmw    r27, 0x2dc(sp)
    srwi    r0, r3, 31
    add     r30, r3, r0
    mulli   r0, r30, 0x3
    lis     r3, 0x70
    addi    r27, r4, 0x0
    srw     r3, r3, r0
    bl      __OSMaskInterrupts
    mulli   r0, r30, 0x14
    lis     r4, unk_cc006800@h
    lis     r3, Ecb@h
    addi    r4, r4, unk_cc006800@l
    li      r31, 0x0
    stwx    r31, r4, r0
    slwi    r4, r30, 6
    addi    r0, r3, Ecb@l
    add     r29, r0, r4
    lwz     r28, 0x8(r29)
    lwz     r0, 0xc(r29)
    cmplwi  r28, 0x0
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xc(r29)
    beq-    branch_0x8036ad18
    addi    r3, sp, 0x10
    bl      OSClearContext
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    mr      r12, r28
    stw     r31, 0x8(r29)
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r27, 0x0
    blrl
    addi    r3, sp, 0x10
    bl      OSClearContext
    mr      r3, r27
    bl      OSSetCurrentContext
branch_0x8036ad18:
    lmw     r27, 0x2dc(sp)
    lwz     r0, 0x2f4(sp)
    addi    sp, sp, 0x2f0
    mtlr    r0
    blr


.globl EXIInit
EXIInit: # 0x8036ad2c
    mflr    r0
    lis     r3, unk_007f8000@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, unk_007f8000@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    stw     r28, 0x8(sp)
    bl      __OSMaskInterrupts
    lis     r5, 0xcc00
    li      r31, 0x0
    stw     r31, 0x6800(r5)
    li      r0, 0x2000
    lis     r3, EXIIntrruptHandler@ha
    stw     r31, 0x6814(r5)
    addi    r28, r3, EXIIntrruptHandler@l
    addi    r4, r28, 0x0
    stw     r31, 0x6828(r5)
    li      r3, 0x9
    stw     r0, 0x6800(r5)
    bl      __OSSetInterruptHandler
    lis     r3, TCIntrruptHandler@ha
    addi    r29, r3, TCIntrruptHandler@l
    addi    r4, r29, 0x0
    li      r3, 0xa
    bl      __OSSetInterruptHandler
    lis     r3, EXTIntrruptHandler@ha
    addi    r30, r3, EXTIntrruptHandler@l
    addi    r4, r30, 0x0
    li      r3, 0xb
    bl      __OSSetInterruptHandler
    addi    r4, r28, 0x0
    li      r3, 0xc
    bl      __OSSetInterruptHandler
    addi    r4, r29, 0x0
    li      r3, 0xd
    bl      __OSSetInterruptHandler
    addi    r4, r30, 0x0
    li      r3, 0xe
    bl      __OSSetInterruptHandler
    addi    r4, r28, 0x0
    li      r3, 0xf
    bl      __OSSetInterruptHandler
    addi    r4, r29, 0x0
    li      r3, 0x10
    bl      __OSSetInterruptHandler
    bl      OSGetConsoleType
    rlwinm. r0, r3, 0, 3, 3
    beq-    branch_0x8036ae20
    lis     r5, unk_80000000@h
    stw     r31, 0x30c4(r5)
    lis     r3, Ecb@h
    addi    r4, r3, Ecb@l
    stw     r31, 0x30c0(r5)
    li      r3, 0x0
    stw     r31, 0x60(r4)
    stw     r31, 0x20(r4)
    bl      __EXIProbe
    li      r3, 0x1
    bl      __EXIProbe
branch_0x8036ae20:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl EXILock
EXILock: # 0x8036ae40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    lis     r3, Ecb@h
    slwi    r6, r27, 6
    addi    r0, r3, Ecb@l
    add     r31, r0, r6
    addi    r28, r4, 0x0
    addi    r29, r5, unk_80000000@l
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r31)
    addi    r30, r3, 0x0
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8036aef8
    cmplwi  r29, 0x0
    beq-    branch_0x8036aee8
    lwz     r4, 0x24(r31)
    addi    r3, r31, 0x0
    cmpwi   r4, 0x0
    mtctr   r4
    ble-    branch_0x8036aec0
branch_0x8036ae9c:
    lwz     r0, 0x28(r3)
    cmplw   r0, r28
    bne-    branch_0x8036aeb8
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8036af20

branch_0x8036aeb8:
    addi    r3, r3, 0x8
    bdnz+      branch_0x8036ae9c
branch_0x8036aec0:
    slwi    r0, r4, 3
    add     r3, r31, r0
    stw     r29, 0x2c(r3)
    lwz     r0, 0x24(r31)
    slwi    r0, r0, 3
    add     r3, r31, r0
    stw     r28, 0x28(r3)
    lwz     r3, 0x24(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x24(r31)
branch_0x8036aee8:
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8036af20

branch_0x8036aef8:
    lwz     r0, 0xc(r31)
    addi    r3, r27, 0x0
    addi    r4, r31, 0x0
    ori     r0, r0, 0x10
    stw     r0, 0xc(r31)
    stw     r28, 0x18(r31)
    bl      SetExiInterruptMask
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x8036af20:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl EXIUnlock
EXIUnlock: # 0x8036af34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    lis     r3, Ecb@h
    slwi    r4, r28, 6
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r31)
    addi    r30, r3, 0x0
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x8036af88
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8036aff0

branch_0x8036af88:
    lwz     r0, 0xc(r31)
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xc(r31)
    bl      SetExiInterruptMask
    lwz     r3, 0x24(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8036afe4
    subic.  r0, r3, 0x1
    lwz     r29, 0x2c(r31)
    stw     r0, 0x24(r31)
    ble-    branch_0x8036afd0
    lwz     r0, 0x24(r31)
    addi    r3, r31, 0x28
    addi    r4, r31, 0x30
    slwi    r5, r0, 3
    bl      memmove
branch_0x8036afd0:
    addi    r12, r29, 0x0
    mtlr    r12
    addi    r3, r28, 0x0
    li      r4, 0x0
    blrl
branch_0x8036afe4:
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x8036aff0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl EXIGetState
EXIGetState: # 0x8036b010
    lis     r4, Ecb@h
    slwi    r3, r3, 6
    addi    r0, r4, Ecb@l
    add     r3, r0, r3
    lwz     r3, 0xc(r3)
    blr


.globl UnlockedHandler
UnlockedHandler: # 0x8036b028
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    addi    r5, sp, 0x10
    bl      EXIGetID
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl EXIGetID
EXIGetID: # 0x8036b050
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r24, 0x20(sp)
    addi    r26, r3, 0x0
    lis     r3, Ecb@h
    cmpwi   r26, 0x2
    slwi    r6, r26, 6
    addi    r0, r3, Ecb@l
    add     r31, r0, r6
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    bge-    branch_0x8036b160
    cmplwi  r27, 0x0
    bne-    branch_0x8036b160
    mr      r3, r26
    bl      __EXIProbe
    cmpwi   r3, 0x0
    bne-    branch_0x8036b0a4
    li      r3, 0x0
    b       branch_0x8036b3b8

branch_0x8036b0a4:
    lis     r3, unk_800030c0@h
    lwz     r4, 0x20(r31)
    slwi    r0, r26, 2
    addi    r30, r3, unk_800030c0@l
    add     r30, r30, r0
    lwz     r0, 0x0(r30)
    cmpw    r4, r0
    bne-    branch_0x8036b0d4
    lwz     r0, 0x1c(r31)
    stw     r0, 0x0(r28)
    lwz     r3, 0x20(r31)
    b       branch_0x8036b3b8

branch_0x8036b0d4:
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r31)
    addi    r29, r3, 0x0
    rlwinm. r0, r0, 0, 28, 28
    bne-    branch_0x8036b0f8
    mr      r3, r26
    bl      __EXIProbe
    cmpwi   r3, 0x0
    bne-    branch_0x8036b108
branch_0x8036b0f8:
    mr      r3, r29
    bl      OSRestoreInterrupts
    li      r0, 0x0
    b       branch_0x8036b14c

branch_0x8036b108:
    addi    r3, r26, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    bl      EXIClearInterrupts
    mulli   r0, r26, 0x3
    li      r4, 0x0
    lis     r3, 0x10
    stw     r4, 0x8(r31)
    srw     r3, r3, r0
    bl      __OSUnmaskInterrupts
    lwz     r0, 0xc(r31)
    addi    r3, r29, 0x0
    ori     r0, r0, 0x8
    stw     r0, 0xc(r31)
    bl      OSRestoreInterrupts
    li      r0, 0x1
branch_0x8036b14c:
    cmpwi   r0, 0x0
    bne-    branch_0x8036b15c
    li      r3, 0x0
    b       branch_0x8036b3b8

branch_0x8036b15c:
    lwz     r29, 0x0(r30)
branch_0x8036b160:
    cmpwi   r26, 0x2
    li      r0, 0x0
    bge-    branch_0x8036b178
    cmplwi  r27, 0x0
    bne-    branch_0x8036b178
    li      r0, 0x1
branch_0x8036b178:
    cmpwi   r0, 0x0
    beq-    branch_0x8036b18c
    lis     r3, UnlockedHandler@ha
    addi    r5, r3, UnlockedHandler@l
    b       branch_0x8036b190

branch_0x8036b18c:
    li      r5, 0x0
branch_0x8036b190:
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    bl      EXILock
    cntlzw  r0, r3
    srwi    r0, r0, 5
    mr.     r30, r0
    bne-    branch_0x8036b2dc
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x0
    bl      EXISelect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    mr.     r30, r0
    bne-    branch_0x8036b258
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    addi    r3, r26, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x2
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r26, 0x0
    or      r30, r30, r0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r26, 0x0
    addi    r4, r28, 0x0
    or      r30, r30, r0
    li      r5, 0x4
    li      r6, 0x0
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r26, 0x0
    or      r30, r30, r0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r26, 0x0
    or      r30, r30, r0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r30, r30, r0
branch_0x8036b258:
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r31)
    addi    r24, r3, 0x0
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x8036b278
    mr      r3, r24
    bl      OSRestoreInterrupts
    b       branch_0x8036b2dc

branch_0x8036b278:
    lwz     r0, 0xc(r31)
    addi    r3, r26, 0x0
    addi    r4, r31, 0x0
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xc(r31)
    bl      SetExiInterruptMask
    lwz     r3, 0x24(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8036b2d4
    subic.  r0, r3, 0x1
    lwz     r25, 0x2c(r31)
    stw     r0, 0x24(r31)
    ble-    branch_0x8036b2c0
    lwz     r0, 0x24(r31)
    addi    r3, r31, 0x28
    addi    r4, r31, 0x30
    slwi    r5, r0, 3
    bl      memmove
branch_0x8036b2c0:
    addi    r12, r25, 0x0
    mtlr    r12
    addi    r3, r26, 0x0
    li      r4, 0x0
    blrl
branch_0x8036b2d4:
    mr      r3, r24
    bl      OSRestoreInterrupts
branch_0x8036b2dc:
    cmpwi   r26, 0x2
    bge-    branch_0x8036b3a4
    cmplwi  r27, 0x0
    bne-    branch_0x8036b3a4
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r31)
    addi    r24, r3, 0x0
    rlwinm. r0, r0, 0, 28, 28
    bne-    branch_0x8036b30c
    mr      r3, r24
    bl      OSRestoreInterrupts
    b       branch_0x8036b354

branch_0x8036b30c:
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8036b330
    lwz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8036b330
    mr      r3, r24
    bl      OSRestoreInterrupts
    b       branch_0x8036b354

branch_0x8036b330:
    lwz     r3, 0xc(r31)
    mulli   r0, r26, 0x3
    rlwinm  r4, r3, 0, 29, 27
    lis     r3, 0x70
    stw     r4, 0xc(r31)
    srw     r3, r3, r0
    bl      __OSMaskInterrupts
    mr      r3, r24
    bl      OSRestoreInterrupts
branch_0x8036b354:
    bl      OSDisableInterrupts
    lis     r4, unk_800030c0@h
    slwi    r0, r26, 2
    addi    r4, r4, unk_800030c0@l
    lwzx    r0, r4, r0
    subf    r4, r29, r0
    subic   r0, r4, 0x1
    subfe   r0, r0, r4
    or.     r30, r30, r0
    bne-    branch_0x8036b388
    lwz     r0, 0x0(r28)
    stw     r0, 0x1c(r31)
    stw     r29, 0x20(r31)
branch_0x8036b388:
    bl      OSRestoreInterrupts
    cmpwi   r30, 0x0
    beq-    branch_0x8036b39c
    li      r3, 0x0
    b       branch_0x8036b3b8

branch_0x8036b39c:
    lwz     r3, 0x20(r31)
    b       branch_0x8036b3b8

branch_0x8036b3a4:
    cmpwi   r30, 0x0
    beq-    branch_0x8036b3b4
    li      r3, 0x0
    b       branch_0x8036b3b8

branch_0x8036b3b4:
    li      r3, 0x1
branch_0x8036b3b8:
    lmw     r24, 0x20(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr

