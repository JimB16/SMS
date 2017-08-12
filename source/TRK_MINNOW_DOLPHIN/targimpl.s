
.globl __TRK_get_MSR
__TRK_get_MSR: # 0x8033fb18
    mfmsr   r3
    blr


.globl __TRK_set_MSR
__TRK_set_MSR: # 0x8033fb20
    mtmsr   r3
    blr


.globl TRKValidMemory32
TRKValidMemory32: # 0x8033fb28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    mr      r30, r5
    add     r31, r4, r3
    addi    r31, r31, -0x1
    cmplw   r31, r3
    li      r5, 0x700
    bge-    branch_0x8033fb60
    li      r3, 0x700
    b       branch_0x8033fc44

branch_0x8033fb60:
    lis     r4, unk_803ab578@ha
    addi    r4, r4, unk_803ab578@l
    li      r6, 0x0
    b       branch_0x8033fb70

branch_0x8033fb70:
    b       branch_0x8033fb74

branch_0x8033fb74:
    lwz     r0, 0x4(r4)
    cmplw   r3, r0
    bgt-    branch_0x8033fc40
    lwz     r0, 0x0(r4)
    cmplw   r31, r0
    blt-    branch_0x8033fc40
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x0
    bne-    branch_0x8033fbac
    slwi    r0, r6, 4
    add     r4, r4, r0
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8033fbd4
branch_0x8033fbac:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8033fbdc
    lis     r4, unk_803ab578@ha
    addi    r4, r4, unk_803ab578@l
    slwi    r0, r6, 4
    add     r4, r4, r0
    lwz     r0, 0xc(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8033fbdc
branch_0x8033fbd4:
    li      r5, 0x700
    b       branch_0x8033fc40

branch_0x8033fbdc:
    lis     r4, unk_803ab578@ha
    slwi    r29, r6, 4
    addi    r0, r4, unk_803ab578@l
    add     r4, r0, r29
    lwz     r0, 0x0(r4)
    li      r5, 0x0
    cmplw   r3, r0
    bge-    branch_0x8033fc0c
    mr      r5, r30
    subf    r4, r3, r0
    bl      TRKValidMemory32
    mr      r5, r3
branch_0x8033fc0c:
    cmpwi   r5, 0x0
    bne-    branch_0x8033fc40
    lis     r3, unk_803ab578@ha
    addi    r0, r3, unk_803ab578@l
    add     r3, r0, r29
    lwz     r3, 0x4(r3)
    cmplw   r31, r3
    ble-    branch_0x8033fc40
    mr      r5, r30
    subf    r4, r3, r31
    bl      TRKValidMemory32
    mr      r5, r3
    b       branch_0x8033fc40

branch_0x8033fc40:
    mr      r3, r5
branch_0x8033fc44:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRK_ppc_memcpy
TRK_ppc_memcpy: # 0x8033fc60
    mfmsr   r8
    li      r10, 0x0
branch_0x8033fc68:
    cmpw    r10, r5
    beq-    branch_0x8033fc90
    mtmsr   r7
    sync
    lbzx    r9, r10, r4
    mtmsr   r6
    sync
    stbx    r9, r10, r3
    addi    r10, r10, 0x1
    b       branch_0x8033fc68

branch_0x8033fc90:
    mtmsr   r8
    sync
    blr


.globl TRKTargetAccessMemory
TRKTargetAccessMemory: # 0x8033fc9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    mr      r26, r3
    mr      r27, r4
    mr      r28, r5
    mr      r29, r7
    lis     r3, gTRKExceptionStatus@h
    addi    r5, r3, gTRKExceptionStatus@l
    lwz     r4, 0x0(r5)
    addi    r31, r5, 0xd
    lwz     r0, 0x4(r5)
    li      r30, 0x0
    mr      r3, r27
    stw     r4, 0x8(sp)
    stw     r0, 0xc(sp)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x10(sp)
    stw     r0, 0x14(sp)
    stb     r30, 0x0(r31)
    bl      TRKTargetTranslate
    cmpwi   r29, 0x0
    mr      r25, r3
    beq-    branch_0x8033fd08
    b       branch_0x8033fd0c

branch_0x8033fd08:
    li      r30, 0x1
branch_0x8033fd0c:
    lwz     r4, 0x0(r28)
    mr      r3, r25
    mr      r5, r30
    bl      TRKValidMemory32
    mr      r30, r3
    cmpwi   r30, 0x0
    beq-    branch_0x8033fd34
    li      r0, 0x0
    stw     r0, 0x0(r28)
    b       branch_0x8033fda8

branch_0x8033fd34:
    bl      __TRK_get_MSR
    lis     r4, gTRKCPUState@h
    cmpwi   r29, 0x0
    addi    r4, r4, gTRKCPUState@l
    lwz     r0, 0x1f8(r4)
    mr      r8, r3
    rlwinm  r0, r0, 0, 27, 27
    or      r7, r8, r0
    beq-    branch_0x8033fd70
    lwz     r5, 0x0(r28)
    mr      r3, r26
    mr      r4, r25
    mr      r6, r8
    bl      TRK_ppc_memcpy
    b       branch_0x8033fda8

branch_0x8033fd70:
    lwz     r5, 0x0(r28)
    mr      r3, r25
    mr      r4, r26
    mr      r6, r7
    mr      r7, r8
    bl      TRK_ppc_memcpy
    mr      r3, r25
    lwz     r4, 0x0(r28)
    bl      TRK_flush_cache
    cmplw   r27, r25
    beq-    branch_0x8033fda8
    mr      r3, r27
    lwz     r4, 0x0(r28)
    bl      TRK_flush_cache
branch_0x8033fda8:
    lbz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8033fdc0
    li      r0, 0x0
    stw     r0, 0x0(r28)
    li      r30, 0x702
branch_0x8033fdc0:
    lis     r3, gTRKExceptionStatus@h
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    addi    r5, r3, gTRKExceptionStatus@l
    mr      r3, r30
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r4, 0x8(r5)
    stw     r0, 0xc(r5)
    lmw     r25, 0x1c(sp)
    addi    sp, sp, 0x38
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetReadInstruction
TRKTargetReadInstruction: # 0x8033fe00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    li      r0, 0x4
    addi    r5, sp, 0x8
    stw     r0, 0x8(sp)
    li      r6, 0x0
    li      r7, 0x1
    bl      TRKTargetAccessMemory
    cmpwi   r3, 0x0
    bne-    branch_0x8033fe3c
    lwz     r0, 0x8(sp)
    cmplwi  r0, 0x4
    beq-    branch_0x8033fe3c
    li      r3, 0x700
branch_0x8033fe3c:
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetAccessDefault
TRKTargetAccessDefault: # 0x8033fe4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r31, r6
    cmplwi  r4, 0x24
    ble-    branch_0x8033fe74
    li      r3, 0x701
    b       branch_0x8033ff30

branch_0x8033fe74:
    lis     r6, gTRKExceptionStatus@h
    cmpwi   r7, 0x0
    addi    r8, r6, gTRKExceptionStatus@l
    lwz     r0, 0x0(r8)
    subf    r4, r3, r4
    lwz     r7, 0x4(r8)
    addi    r9, r4, 0x1
    lis     r4, gTRKCPUState@h
    stw     r0, 0x8(sp)
    addi    r0, r4, gTRKCPUState@l
    slwi    r3, r3, 2
    addi    r30, r8, 0xd
    stw     r7, 0xc(sp)
    add     r4, r0, r3
    lwz     r7, 0x8(r8)
    li      r6, 0x0
    lwz     r3, 0xc(r8)
    slwi    r0, r9, 2
    stw     r7, 0x10(sp)
    mr      r7, r9
    stw     r3, 0x14(sp)
    stb     r6, 0x0(r30)
    stw     r0, 0x0(r31)
    beq-    branch_0x8033fee4
    mr      r3, r5
    mr      r5, r7
    bl      TRKAppendBuffer_ui32
    b       branch_0x8033fef0

branch_0x8033fee4:
    mr      r3, r5
    mr      r5, r7
    bl      TRKReadBuffer_ui32
branch_0x8033fef0:
    lbz     r0, 0x0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8033ff08
    li      r0, 0x0
    stw     r0, 0x0(r31)
    li      r3, 0x702
branch_0x8033ff08:
    lis     r5, gTRKExceptionStatus@h
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    addi    r5, r5, gTRKExceptionStatus@l
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r4, 0x8(r5)
    stw     r0, 0xc(r5)
branch_0x8033ff30:
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetAccessFP
TRKTargetAccessFP: # 0x8033ff48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    mr      r25, r3
    mr      r28, r4
    mr      r29, r5
    mr      r30, r6
    mr      r31, r7
    cmplwi  r28, 0x21
    ble-    branch_0x8033ff7c
    li      r3, 0x701
    b       branch_0x8034007c

branch_0x8033ff7c:
    lis     r3, gTRKExceptionStatus@h
    addi    r4, r3, gTRKExceptionStatus@l
    lwz     r3, 0x0(r4)
    addi    r26, r4, 0xd
    lwz     r0, 0x4(r4)
    li      r27, 0x0
    stw     r3, 0x8(sp)
    stw     r0, 0xc(sp)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x10(sp)
    stw     r0, 0x14(sp)
    stb     r27, 0x0(r26)
    bl      __TRK_get_MSR
    ori     r3, r3, 0x2000
    bl      __TRK_set_MSR
    stw     r27, 0x0(r30)
    mr      r27, r25
    li      r3, 0x0
    b       branch_0x8033ffcc

branch_0x8033ffcc:
    b       branch_0x8033ffd0

branch_0x8033ffd0:
    b       branch_0x8034002c

branch_0x8033ffd4:
    cmpwi   r31, 0x0
    beq-    branch_0x80340000
    mr      r4, r27
    addi    r3, sp, 0x18
    mr      r5, r31
    bl      TRKPPCAccessFPRegister
    lwz     r5, 0x18(sp)
    mr      r3, r29
    lwz     r6, 0x1c(sp)
    bl      TRKAppendBuffer1_ui64
    b       branch_0x8034001c

branch_0x80340000:
    mr      r3, r29
    addi    r4, sp, 0x18
    bl      TRKReadBuffer1_ui64
    mr      r4, r27
    addi    r3, sp, 0x18
    mr      r5, r31
    bl      TRKPPCAccessFPRegister
branch_0x8034001c:
    lwz     r4, 0x0(r30)
    addi    r27, r27, 0x1
    addi    r0, r4, 0x8
    stw     r0, 0x0(r30)
branch_0x8034002c:
    cmplw   r27, r28
    bgt-    branch_0x8034003c
    cmpwi   r3, 0x0
    beq+    branch_0x8033ffd4
branch_0x8034003c:
    lbz     r0, 0x0(r26)
    cmplwi  r0, 0x0
    beq-    branch_0x80340054
    li      r0, 0x0
    stw     r0, 0x0(r30)
    li      r3, 0x702
branch_0x80340054:
    lis     r5, gTRKExceptionStatus@h
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    addi    r5, r5, gTRKExceptionStatus@l
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r4, 0x8(r5)
    stw     r0, 0xc(r5)
branch_0x8034007c:
    lmw     r25, 0x24(sp)
    addi    sp, sp, 0x40
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetAccessExtended1
TRKTargetAccessExtended1: # 0x80340090
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r6
    cmplwi  r4, 0x60
    ble-    branch_0x803400b8
    li      r3, 0x701
    b       branch_0x803401f0

branch_0x803400b8:
    lis     r6, gTRKExceptionStatus@h
    cmplw   r3, r4
    addi    r9, r6, gTRKExceptionStatus@l
    lwz     r8, 0x0(r9)
    addi    r31, r9, 0xd
    lwz     r6, 0x4(r9)
    li      r0, 0x0
    stw     r8, 0x8(sp)
    stw     r6, 0xc(sp)
    lwz     r8, 0x8(r9)
    lwz     r6, 0xc(r9)
    stw     r8, 0x10(sp)
    stw     r6, 0x14(sp)
    stb     r0, 0x0(r31)
    stw     r0, 0x0(r30)
    bgt-    branch_0x803401b0
    subf    r4, r3, r4
    lwz     r0, 0x0(r30)
    addi    r8, r4, 0x1
    cmpwi   r7, 0x0
    slwi    r6, r8, 2
    lis     r4, gTRKCPUState@h
    add     r0, r0, r6
    stw     r0, 0x0(r30)
    addi    r7, r4, gTRKCPUState@l
    slwi    r0, r3, 2
    add     r4, r7, r0
    addi    r4, r4, 0x1a8
    beq-    branch_0x8034013c
    mr      r3, r5
    mr      r5, r8
    bl      TRKAppendBuffer_ui32
    b       branch_0x803401b0

branch_0x8034013c:
    addi    r0, r7, 0x1ec
    cmplw   r4, r0
    bgt-    branch_0x8034016c
    addi    r3, r6, -0x4
    addi    r0, r7, 0x1e8
    add     r3, r4, r3
    cmplw   r3, r0
    blt-    branch_0x8034016c
    lis     r3, gTRKRestoreFlags@h
    addi    r3, r3, gTRKRestoreFlags@l
    li      r0, 0x1
    stb     r0, 0x0(r3)
branch_0x8034016c:
    lis     r3, gTRKCPUState@h
    addi    r3, r3, gTRKCPUState@l
    addi    r6, r3, 0x278
    cmplw   r4, r6
    bgt-    branch_0x803401a4
    slwi    r3, r8, 2
    addi    r0, r3, -0x4
    add     r0, r4, r0
    cmplw   r0, r6
    blt-    branch_0x803401a4
    lis     r3, gTRKRestoreFlags@h
    addi    r3, r3, gTRKRestoreFlags@l
    li      r0, 0x1
    stb     r0, 0x1(r3)
branch_0x803401a4:
    mr      r3, r5
    mr      r5, r8
    bl      TRKReadBuffer_ui32
branch_0x803401b0:
    lbz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x803401c8
    li      r0, 0x0
    stw     r0, 0x0(r30)
    li      r3, 0x702
branch_0x803401c8:
    lis     r5, gTRKExceptionStatus@h
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    addi    r5, r5, gTRKExceptionStatus@l
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r4, 0x8(r5)
    stw     r0, 0xc(r5)
branch_0x803401f0:
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetAccessExtended2
TRKTargetAccessExtended2: # 0x80340208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    mr      r25, r3
    mr      r27, r4
    mr      r28, r5
    mr      r29, r6
    mr      r30, r7
    cmplwi  r27, 0x1f
    ble-    branch_0x8034023c
    li      r3, 0x701
    b       branch_0x80340370

branch_0x8034023c:
    lis     r4, gTRKExceptionStatus@h
    addi    r3, sp, 0x8
    addi    r7, r4, gTRKExceptionStatus@l
    lwz     r5, 0x0(r7)
    addi    r31, r7, 0xd
    lwz     r0, 0x4(r7)
    li      r26, 0x0
    li      r4, 0x398
    stw     r5, 0xc(sp)
    li      r5, 0x1
    stw     r0, 0x10(sp)
    lwz     r6, 0x8(r7)
    lwz     r0, 0xc(r7)
    stw     r6, 0x14(sp)
    stw     r0, 0x18(sp)
    stb     r26, 0x0(r31)
    bl      TRKPPCAccessSPR
    lwz     r0, 0x8(sp)
    addi    r3, sp, 0x8
    li      r4, 0x398
    oris    r0, r0, 0xa000
    stw     r0, 0x8(sp)
    li      r5, 0x0
    bl      TRKPPCAccessSPR
    stw     r26, 0x8(sp)
    addi    r3, sp, 0x8
    li      r4, 0x390
    li      r5, 0x0
    bl      TRKPPCAccessSPR
    stw     r26, 0x0(r29)
    mr      r26, r25
    li      r3, 0x0
    b       branch_0x803402c0

branch_0x803402c0:
    b       branch_0x803402c4

branch_0x803402c4:
    b       branch_0x80340320

branch_0x803402c8:
    cmpwi   r30, 0x0
    beq-    branch_0x803402f4
    mr      r4, r26
    addi    r3, sp, 0x1c
    mr      r5, r30
    bl      TRKPPCAccessPairedSingleRegister
    lwz     r5, 0x1c(sp)
    mr      r3, r28
    lwz     r6, 0x20(sp)
    bl      TRKAppendBuffer1_ui64
    b       branch_0x80340310

branch_0x803402f4:
    mr      r3, r28
    addi    r4, sp, 0x1c
    bl      TRKReadBuffer1_ui64
    mr      r4, r26
    addi    r3, sp, 0x1c
    mr      r5, r30
    bl      TRKPPCAccessPairedSingleRegister
branch_0x80340310:
    lwz     r4, 0x0(r29)
    addi    r26, r26, 0x1
    addi    r0, r4, 0x8
    stw     r0, 0x0(r29)
branch_0x80340320:
    cmplw   r26, r27
    bgt-    branch_0x80340330
    cmpwi   r3, 0x0
    beq+    branch_0x803402c8
branch_0x80340330:
    lbz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80340348
    li      r0, 0x0
    stw     r0, 0x0(r29)
    li      r3, 0x702
branch_0x80340348:
    lis     r5, gTRKExceptionStatus@h
    lwz     r4, 0xc(sp)
    lwz     r0, 0x10(sp)
    addi    r5, r5, gTRKExceptionStatus@l
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x14(sp)
    lwz     r0, 0x18(sp)
    stw     r4, 0x8(r5)
    stw     r0, 0xc(r5)
branch_0x80340370:
    lmw     r25, 0x24(sp)
    addi    sp, sp, 0x40
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetVersions
TRKTargetVersions: # 0x80340384
    li      r0, 0x0
    stb     r0, 0x0(r3)
    li      r0, 0x8
    li      r4, 0x1
    stb     r0, 0x1(r3)
    li      r0, 0xa
    stb     r4, 0x2(r3)
    stb     r0, 0x3(r3)
    li      r3, 0x0
    blr


.globl TRKTargetSupportMask
TRKTargetSupportMask: # 0x803403ac
    li      r0, 0x7a
    stb     r0, 0x0(r3)
    li      r7, 0x0
    li      r0, 0x4f
    stb     r7, 0x1(r3)
    li      r6, 0x7
    li      r5, 0x1
    stb     r0, 0x2(r3)
    li      r4, 0x3
    li      r0, 0x80
    stb     r6, 0x3(r3)
    stb     r7, 0x4(r3)
    stb     r7, 0x5(r3)
    stb     r7, 0x6(r3)
    stb     r7, 0x7(r3)
    stb     r7, 0x8(r3)
    stb     r7, 0x9(r3)
    stb     r7, 0xa(r3)
    stb     r7, 0xb(r3)
    stb     r7, 0xc(r3)
    stb     r7, 0xd(r3)
    stb     r7, 0xe(r3)
    stb     r7, 0xf(r3)
    stb     r5, 0x10(r3)
    stb     r7, 0x11(r3)
    stb     r4, 0x12(r3)
    stb     r7, 0x13(r3)
    stb     r7, 0x14(r3)
    stb     r7, 0x15(r3)
    stb     r7, 0x16(r3)
    stb     r7, 0x17(r3)
    stb     r7, 0x18(r3)
    stb     r7, 0x19(r3)
    stb     r4, 0x1a(r3)
    stb     r7, 0x1b(r3)
    stb     r7, 0x1c(r3)
    stb     r7, 0x1d(r3)
    stb     r7, 0x1e(r3)
    stb     r0, 0x1f(r3)
    li      r3, 0x0
    blr


.globl TRKTargetCPUType
TRKTargetCPUType: # 0x80340450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    mr      r31, r3
    li      r0, 0x0
    stb     r0, 0x0(r31)
    bl      TRKTargetCPUMinorType
    stb     r3, 0x1(r31)
    lis     r3, gTRKBigEndian@h
    addi    r3, r3, gTRKBigEndian@l
    lwz     r3, 0x0(r3)
    li      r4, 0x4
    li      r0, 0x8
    clrlwi  r3, r3, 24
    stb     r3, 0x2(r31)
    li      r3, 0x0
    stb     r4, 0x3(r31)
    stb     r0, 0x4(r31)
    stb     r4, 0x5(r31)
    stb     r0, 0x6(r31)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKInterruptHandler
TRKInterruptHandler: # 0x803404b8
    mtspr   26, r2
    mtspr   27, r4
    mfspr   r4, 275
    mfcr    r2
    mtspr   275, r2
    lis     r2, gTRKState@h
    ori     r2, r2, gTRKState@l
    lwz     r2, R2Off_0x8c(r2)
    ori     r2, r2, 0x8002
    xori     r2, r2, 0x8002
    sync
    mtmsr   r2
    sync
    lis     r2, TRK_saved_exceptionID@h
    ori     r2, r2, TRK_saved_exceptionID@l
    sth     r3, 0x0(r2)
    cmpwi   r3, 0x500
    bne-    branch_0x80340580
    lis     r2, gTRKCPUState@h
    ori     r2, r2, gTRKCPUState@l
    mflr    r3
    stw     r3, R2Off_0x42c(r2)
    bl      TRKUARTInterruptHandler
    lis     r2, gTRKCPUState@h
    ori     r2, r2, gTRKCPUState@l
    lwz     r3, R2Off_0x42c(r2)
    mtlr    r3
    lis     r2, gTRKState@h
    ori     r2, r2, gTRKState@l
    lwz     r2, R2Off_0xa0(r2)
    lbz     r2, R2Off_0x0(r2)
    cmpwi   r2, 0x0
    beq-    branch_0x80340564
    lis     r2, gTRKExceptionStatus@h
    ori     r2, r2, gTRKExceptionStatus@l
    lbz     r2, R2Off_0xc(r2)
    cmpwi   r2, 0x1
    beq-    branch_0x80340564
    lis     r2, gTRKState@h
    ori     r2, r2, gTRKState@l
    li      r3, 0x1
    stb     r3, R2Off_0x9c(r2)
    b       branch_0x80340580

branch_0x80340564:
    lis     r2, gTRKSaveState@h
    ori     r2, r2, gTRKSaveState@l
    lwz     r3, R2Off_0x88(r2)
    mtcrf   255, r3
    lwz     r3, R2Off_0xc(r2)
    lwz     r2, R2Off_0x8(r2)
    rfi

branch_0x80340580:
    lis     r2, TRK_saved_exceptionID@h
    ori     r2, r2, TRK_saved_exceptionID@l
    lhz     r3, 0x0(r2)
    lis     r2, gTRKExceptionStatus@h
    ori     r2, r2, gTRKExceptionStatus@l
    lbz     r2, R2Off_0xc(r2)
    cmpwi   r2, 0x0
    bne-    TRKExceptionHandler
    lis     r2, gTRKCPUState@h
    ori     r2, r2, gTRKCPUState@l
    stw     r0, R2Off_0x0(r2)
    stw     sp, R2Off_0x4(r2)
    mfspr   r0, 273
    stw     r0, R2Off_0x8(r2)
    sth     r3, 0x2f8(r2)
    sth     r3, 0x2fa(r2)
    mfspr   r0, 274
    stw     r0, R2Off_0xc(r2)
    stmw    r4, 0x10(r2)
    mfspr   r27, 26
    mflr    r28
    mfspr   r29, 275
    mfctr   r30
    mfxer   r31
    stmw    r27, 0x80(r2)
    bl      TRKSaveExtended1Block
    lis     r2, gTRKExceptionStatus@h
    ori     r2, r2, gTRKExceptionStatus@l
    li      r3, 0x1
    stb     r3, R2Off_0xc(r2)
    lis     r2, gTRKState@h
    ori     r2, r2, gTRKState@l
    lwz     r0, R2Off_0x8c(r2)
    sync
    mtmsr   r0
    sync
    lwz     r0, R2Off_0x80(r2)
    mtlr    r0
    lwz     r0, R2Off_0x84(r2)
    mtctr   r0
    lwz     r0, R2Off_0x88(r2)
    mtxer   r0
    lwz     r0, R2Off_0x94(r2)
    mtspr   18, r0
    lwz     r0, R2Off_0x90(r2)
    mtspr   19, r0
    lmw     r3, 0xc(r2)
    lwz     r0, R2Off_0x0(r2)
    lwz     sp, R2Off_0x4(r2)
    lwz     r2, R2Off_0x8(r2)
    b       TRKPostInterruptEvent


.globl TRKExceptionHandler
TRKExceptionHandler: # 0x8034064c
    lis     r2, gTRKExceptionStatus@h
    ori     r2, r2, gTRKExceptionStatus@l
    sth     r3, 0x8(r2)
    mfspr   r3, 26
    stw     r3, R2Off_0x0(r2)
    lhz     r3, 0x8(r2)
    cmpwi   r3, 0x200
    beq-    branch_0x803406b8
    cmpwi   r3, 0x300
    beq-    branch_0x803406b8
    cmpwi   r3, 0x400
    beq-    branch_0x803406b8
    cmpwi   r3, 0x600
    beq-    branch_0x803406b8
    cmpwi   r3, 0x700
    beq-    branch_0x803406b8
    cmpwi   r3, 0x800
    beq-    branch_0x803406b8
    cmpwi   r3, 0x1000
    beq-    branch_0x803406b8
    cmpwi   r3, 0x1100
    beq-    branch_0x803406b8
    cmpwi   r3, 0x1200
    beq-    branch_0x803406b8
    cmpwi   r3, 0x1300
    beq-    branch_0x803406b8
    b       branch_0x803406c4

branch_0x803406b8:
    mfspr   r3, 26
    addi    r3, r3, 0x4
    mtspr   26, r3
branch_0x803406c4:
    lis     r2, gTRKExceptionStatus@h
    ori     r2, r2, gTRKExceptionStatus@l
    li      r3, 0x1
    stb     r3, R2Off_0xd(r2)
    mfspr   r3, 275
    mtcrf   255, r3
    mfspr   r2, 273
    mfspr   r3, 274
    rfi


.globl TRKPostInterruptEvent
TRKPostInterruptEvent: # 0x803406e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    lis     r3, gTRKState@h
    addi    r3, r3, gTRKState@l
    addi    r3, r3, 0x9c
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80340718
    li      r0, 0x0
    stw     r0, 0x0(r3)
    b       branch_0x80340788

branch_0x80340718:
    lis     r3, gTRKCPUState@h
    addi    r3, r3, gTRKCPUState@l
    lwz     r0, 0x2f8(r3)
    clrlwi  r0, r0, 16
    cmpwi   r0, 0xd00
    beq-    branch_0x80340740
    bge-    branch_0x80340774
    cmpwi   r0, 0x700
    beq-    branch_0x80340740
    b       branch_0x80340774

branch_0x80340740:
    lis     r4, gTRKCPUState@h
    addi    r3, sp, 0x8
    addi    r4, r4, gTRKCPUState@l
    lwz     r4, 0x80(r4)
    bl      TRKTargetReadInstruction
    lwz     r3, 0x8(sp)
    addis   r0, r3, 0xf020
    cmplwi  r0, 0x0
    bne-    branch_0x8034076c
    li      r4, 0x5
    b       branch_0x80340778

branch_0x8034076c:
    li      r4, 0x3
    b       branch_0x80340778

branch_0x80340774:
    li      r4, 0x4
branch_0x80340778:
    addi    r3, sp, 0xc
    bl      TRKConstructEvent
    addi    r3, sp, 0xc
    bl      TRKPostEvent
branch_0x80340788:
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKSwapAndGo
TRKSwapAndGo: # 0x80340798
    lis     r3, gTRKState@h
    ori     r3, r3, gTRKState@l
    stmw    r0, 0x0(r3)
    mfmsr   r0
    stw     r0, 0x8c(r3)
    mflr    r0
    stw     r0, 0x80(r3)
    mfctr   r0
    stw     r0, 0x84(r3)
    mfxer   r0
    stw     r0, 0x88(r3)
    mfspr   r0, 18
    stw     r0, 0x94(r3)
    mfspr   r0, 19
    stw     r0, 0x90(r3)
    li      sp, -0x7ffe
    not     r1, r1
    mfmsr   r3
    and     r3, r3, r1
    mtmsr   r3
    lis     r2, gTRKState@h
    ori     r2, r2, gTRKState@l
    lwz     r2, R2Off_0xa0(r2)
    lbz     r2, R2Off_0x0(r2)
    cmpwi   r2, 0x0
    beq-    branch_0x80340814
    lis     r2, gTRKState@h
    ori     r2, r2, gTRKState@l
    li      r3, 0x1
    stb     r3, R2Off_0x9c(r2)
    b       TRKInterruptHandlerEnableInterrupts

branch_0x80340814:
    lis     r2, gTRKExceptionStatus@h
    ori     r2, r2, gTRKExceptionStatus@l
    li      r3, 0x0
    stb     r3, R2Off_0xc(r2)
    bl      TRKRestoreExtended1Block
    lis     r2, gTRKCPUState@h
    ori     r2, r2, gTRKCPUState@l
    lmw     r27, 0x80(r2)
    mtspr   26, r27
    mtlr    r28
    mtcrf   255, r29
    mtctr   r30
    mtxer   r31
    lmw     r3, 0xc(r2)
    lwz     r0, R2Off_0x0(r2)
    lwz     sp, R2Off_0x4(r2)
    lwz     r2, R2Off_0x8(r2)
    rfi


.globl TRKInterruptHandlerEnableInterrupts
TRKInterruptHandlerEnableInterrupts: # 0x8034085c
    lis     r2, gTRKState@h
    ori     r2, r2, gTRKState@l
    lwz     r0, R2Off_0x8c(r2)
    sync
    mtmsr   r0
    sync
    lwz     r0, R2Off_0x80(r2)
    mtlr    r0
    lwz     r0, R2Off_0x84(r2)
    mtctr   r0
    lwz     r0, R2Off_0x88(r2)
    mtxer   r0
    lwz     r0, R2Off_0x94(r2)
    mtspr   18, r0
    lwz     r0, R2Off_0x90(r2)
    mtspr   19, r0
    lmw     r3, 0xc(r2)
    lwz     r0, R2Off_0x0(r2)
    lwz     sp, R2Off_0x4(r2)
    lwz     r2, R2Off_0x8(r2)
    b       TRKPostInterruptEvent


.globl TRKTargetInterrupt
TRKTargetInterrupt: # 0x803408b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lbz     r0, 0x0(r3)
    li      r31, 0x0
    cmpwi   r0, 0x5
    bge-    branch_0x803408fc
    cmpwi   r0, 0x3
    bge-    branch_0x803408dc
    b       branch_0x803408fc

branch_0x803408dc:
    bl      TRKTargetCheckStep
    cmpwi   r3, 0x0
    bne-    branch_0x803408fc
    li      r3, 0x1
    bl      TRKTargetSetStopped
    li      r3, 0x90
    bl      TRKDoNotifyStopped
    mr      r31, r3
branch_0x803408fc:
    mr      r3, r31
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetAddStopInfo
TRKTargetAddStopInfo: # 0x80340914
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lis     r3, gTRKCPUState@h
    addi    r3, r3, gTRKCPUState@l
    addi    r31, r3, 0x80
    lwz     r4, 0x0(r31)
    mr      r3, r30
    bl      TRKAppendBuffer1_ui32
    cmpwi   r3, 0x0
    bne-    branch_0x80340958
    addi    r3, sp, 0x8
    lwz     r4, 0x0(r31)
    bl      TRKTargetReadInstruction
branch_0x80340958:
    cmpwi   r3, 0x0
    bne-    branch_0x8034096c
    mr      r3, r30
    lwz     r4, 0x8(sp)
    bl      TRKAppendBuffer1_ui32
branch_0x8034096c:
    cmpwi   r3, 0x0
    bne-    branch_0x8034098c
    lis     r3, gTRKCPUState@h
    addi    r3, r3, gTRKCPUState@l
    lwz     r0, 0x2f8(r3)
    mr      r3, r30
    clrlwi  r4, r0, 16
    bl      TRKAppendBuffer1_ui16
branch_0x8034098c:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetAddExceptionInfo
TRKTargetAddExceptionInfo: # 0x803409a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lis     r3, gTRKExceptionStatus@h
    addi    r31, r3, gTRKExceptionStatus@l
    lwz     r4, 0x0(r31)
    mr      r3, r30
    bl      TRKAppendBuffer1_ui32
    cmpwi   r3, 0x0
    bne-    branch_0x803409e4
    addi    r3, sp, 0x8
    lwz     r4, 0x0(r31)
    bl      TRKTargetReadInstruction
branch_0x803409e4:
    cmpwi   r3, 0x0
    bne-    branch_0x803409f8
    mr      r3, r30
    lwz     r4, 0x8(sp)
    bl      TRKAppendBuffer1_ui32
branch_0x803409f8:
    cmpwi   r3, 0x0
    bne-    branch_0x80340a14
    lis     r3, gTRKExceptionStatus@h
    addi    r3, r3, gTRKExceptionStatus@l
    lhz     r4, 0x8(r3)
    mr      r3, r30
    bl      TRKAppendBuffer1_ui16
branch_0x80340a14:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetEnableTrace
TRKTargetEnableTrace: # 0x80340a2c
    cmpwi   r3, 0x0
    beq-    branch_0x80340a4c
    lis     r3, gTRKCPUState@h
    addi    r3, r3, gTRKCPUState@l
    lwz     r0, 0x1f8(r3)
    ori     r0, r0, 0x400
    stw     r0, 0x1f8(r3)
    b       branch_0x80340a60

branch_0x80340a4c:
    lis     r3, gTRKCPUState@h
    addi    r3, r3, gTRKCPUState@l
    lwz     r0, 0x1f8(r3)
    rlwinm  r0, r0, 0, 22, 20
    stw     r0, 0x1f8(r3)
branch_0x80340a60:
    li      r3, 0x0
    blr


.globl TRKTargetStepDone
TRKTargetStepDone: # 0x80340a68
    lis     r3, gTRKStepStatus@h
    addi    r5, r3, gTRKStepStatus@l
    lwz     r0, 0x0(r5)
    li      r3, 0x1
    cmpwi   r0, 0x0
    beq-    branch_0x80340ae8
    lis     r4, gTRKCPUState@h
    addi    r4, r4, gTRKCPUState@l
    lwz     r0, 0x2f8(r4)
    clrlwi  r0, r0, 16
    cmplwi  r0, 0xd00
    bne-    branch_0x80340ae8
    lbz     r0, 0x4(r5)
    cmpwi   r0, 0x1
    beq-    branch_0x80340ac8
    bge-    branch_0x80340ae8
    cmpwi   r0, 0x0
    bge-    branch_0x80340ab4
    b       branch_0x80340ae8

branch_0x80340ab4:
    lwz     r0, 0x8(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80340ae8
    li      r3, 0x0
    b       branch_0x80340ae8

branch_0x80340ac8:
    lwz     r4, 0x80(r4)
    lwz     r0, 0xc(r5)
    cmplw   r4, r0
    blt-    branch_0x80340ae8
    lwz     r0, 0x10(r5)
    cmplw   r4, r0
    bgt-    branch_0x80340ae8
    li      r3, 0x0
branch_0x80340ae8:
    blr


.globl TRKTargetDoStep
TRKTargetDoStep: # 0x80340aec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lis     r3, gTRKStepStatus@h
    addi    r31, r3, gTRKStepStatus@l
    li      r0, 0x1
    stw     r0, 0x0(r31)
    li      r3, 0x1
    bl      TRKTargetEnableTrace
    lbz     r0, 0x4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80340b28
    cmplwi  r0, 0x10
    bne-    branch_0x80340b3c
branch_0x80340b28:
    lis     r3, gTRKStepStatus@h
    addi    r4, r3, gTRKStepStatus@l
    lwz     r3, 0x8(r4)
    addi    r0, r3, -0x1
    stw     r0, 0x8(r4)
branch_0x80340b3c:
    li      r3, 0x0
    bl      TRKTargetSetStopped
    li      r3, 0x0
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetCheckStep
TRKTargetCheckStep: # 0x80340b5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lis     r3, gTRKStepStatus@h
    addi    r31, r3, gTRKStepStatus@l
    lwz     r0, 0x0(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80340ba4
    li      r3, 0x0
    bl      TRKTargetEnableTrace
    bl      TRKTargetStepDone
    cmpwi   r3, 0x0
    beq-    branch_0x80340ba0
    li      r0, 0x0
    stw     r0, 0x0(r31)
    b       branch_0x80340ba4

branch_0x80340ba0:
    bl      TRKTargetDoStep
branch_0x80340ba4:
    lis     r3, gTRKStepStatus@h
    addi    r3, r3, gTRKStepStatus@l
    lwz     r3, 0x0(r3)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetSingleStep
TRKTargetSingleStep: # 0x80340bc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    cmpwi   r4, 0x0
    beq-    branch_0x80340be0
    li      r3, 0x703
    b       branch_0x80340bf8

branch_0x80340be0:
    lis     r4, gTRKStepStatus@h
    addi    r4, r4, gTRKStepStatus@l
    li      r0, 0x0
    stb     r0, 0x4(r4)
    stw     r3, 0x8(r4)
    bl      TRKTargetDoStep
branch_0x80340bf8:
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetStepOutOfRange
TRKTargetStepOutOfRange: # 0x80340c08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    cmpwi   r5, 0x0
    beq-    branch_0x80340c24
    li      r3, 0x703
    b       branch_0x80340c40

branch_0x80340c24:
    lis     r5, gTRKStepStatus@h
    addi    r5, r5, gTRKStepStatus@l
    li      r0, 0x1
    stb     r0, 0x4(r5)
    stw     r3, 0xc(r5)
    stw     r4, 0x10(r5)
    bl      TRKTargetDoStep
branch_0x80340c40:
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetGetPC
TRKTargetGetPC: # 0x80340c50
    lis     r3, gTRKCPUState@h
    addi    r3, r3, gTRKCPUState@l
    lwz     r3, 0x80(r3)
    blr


.globl TRKTargetSupportRequest
TRKTargetSupportRequest: # 0x80340c60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    lis     r3, gTRKCPUState@h
    addi    r3, r3, gTRKCPUState@l
    addi    r31, r3, 0xc
    lwz     r0, 0x0(r31)
    clrlwi  r27, r0, 24
    cmplwi  r27, 0xd1
    beq-    branch_0x80340cb0
    cmplwi  r27, 0xd0
    beq-    branch_0x80340cb0
    addi    r3, sp, 0xc
    li      r4, 0x4
    bl      TRKConstructEvent
    addi    r3, sp, 0xc
    bl      TRKPostEvent
    li      r3, 0x0
    b       branch_0x80340d3c

branch_0x80340cb0:
    lis     r3, gTRKCPUState@h
    addi    r6, sp, 0x8
    addi    r4, r3, gTRKCPUState@l
    lwz     r3, 0x10(r4)
    subfic  r0, r27, 0xd1
    lwz     r28, 0x14(r4)
    addi    r30, r4, 0x18
    cntlzw  r0, r0
    lwz     r4, 0x0(r30)
    clrlwi  r3, r3, 24
    mr      r5, r28
    srwi    r8, r0, 5
    li      r7, 0x1
    bl      TRKSuppAccessFile
    lbz     r0, 0x8(sp)
    mr      r29, r3
    cmplwi  r0, 0x0
    bne-    branch_0x80340d08
    cmpwi   r29, 0x0
    beq-    branch_0x80340d08
    li      r0, 0x1
    stb     r0, 0x8(sp)
branch_0x80340d08:
    lbz     r0, 0x8(sp)
    cmplwi  r27, 0xd1
    stw     r0, 0x0(r31)
    bne-    branch_0x80340d24
    lwz     r3, 0x0(r30)
    lwz     r4, 0x0(r28)
    bl      TRK_flush_cache
branch_0x80340d24:
    lis     r3, gTRKCPUState@h
    addi    r5, r3, gTRKCPUState@l
    lwz     r4, 0x80(r5)
    mr      r3, r29
    addi    r0, r4, 0x4
    stw     r0, 0x80(r5)
branch_0x80340d3c:
    lmw     r27, 0x1c(sp)
    addi    sp, sp, 0x30
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetFlushCache
TRKTargetFlushCache: # 0x80340d50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    cmplw   r4, r5
    bge-    branch_0x80340d78
    mr      r3, r4
    subf    r4, r4, r5
    bl      TRK_flush_cache
    li      r3, 0x0
    b       branch_0x80340d7c

branch_0x80340d78:
    li      r3, 0x700
branch_0x80340d7c:
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetStopped
TRKTargetStopped: # 0x80340d8c
    lis     r3, gTRKState@h
    addi    r3, r3, gTRKState@l
    lwz     r3, 0x98(r3)
    blr


.globl TRKTargetSetStopped
TRKTargetSetStopped: # 0x80340d9c
    lis     r4, gTRKState@h
    addi    r4, r4, gTRKState@l
    stw     r3, 0x98(r4)
    blr


.globl TRKTargetStop
TRKTargetStop: # 0x80340dac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    li      r3, 0x1
    bl      TRKTargetSetStopped
    li      r3, 0x0
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKPPCAccessSPR
TRKPPCAccessSPR: # 0x80340dd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lis     r6, unk_803ab588@ha
    cmpwi   r5, 0x0
    addi    r7, r6, unk_803ab588@l
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r6, 0x8(sp)
    stw     r0, 0xc(sp)
    lwz     r6, 0x8(r7)
    lwz     r0, 0xc(r7)
    stw     r6, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0x10(r7)
    stw     r0, 0x18(sp)
    beq-    branch_0x80340e44
    rlwinm  r0, r4, 0, 20, 26
    slwi    r6, r0, 6
    clrlwi  r0, r4, 27
    oris    r4, r6, 0x7c80
    slwi    r0, r0, 16
    or      r0, r4, r0
    ori     r0, r0, 0x2a6
    stw     r0, 0x8(sp)
    lis     r0, unk_908303a6@h
    stw     r0, 0xc(sp)
    b       branch_0x80340e6c

branch_0x80340e44:
    rlwinm  r0, r4, 0, 20, 26
    slwi    r6, r0, 6
    clrlwi  r0, r4, 27
    lis     r7, 0x8083
    oris    r4, r6, 0x7c80
    stw     r7, 0x8(sp)
    slwi    r0, r0, 16
    or      r0, r4, r0
    ori     r0, r0, unk_908303a6@l
    stw     r0, 0xc(sp)
branch_0x80340e6c:
    addi    r4, sp, 0x8
    bl      TRKPPCAccessSpecialReg
    addi    sp, sp, 0x20
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKPPCAccessPairedSingleRegister
TRKPPCAccessPairedSingleRegister: # 0x80340e84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lis     r6, unk_803ab59c@ha
    cmpwi   r5, 0x0
    addi    r7, r6, unk_803ab59c@l
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r6, 0x8(sp)
    stw     r0, 0xc(sp)
    lwz     r6, 0x8(r7)
    lwz     r0, 0xc(r7)
    stw     r6, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0x10(r7)
    stw     r0, 0x18(sp)
    beq-    branch_0x80340ed8
    slwi    r0, r4, 21
    oris    r0, r0, 0xf003
    stw     r0, 0x8(sp)
    b       branch_0x80340ee4

branch_0x80340ed8:
    slwi    r0, r4, 21
    oris    r0, r0, 0xe003
    stw     r0, 0x8(sp)
branch_0x80340ee4:
    addi    r4, sp, 0x8
    bl      TRKPPCAccessSpecialReg
    addi    sp, sp, 0x20
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKPPCAccessFPRegister
TRKPPCAccessFPRegister: # 0x80340efc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    mr      r31, r5
    lis     r3, unk_803ab5b0@ha
    cmplwi  r4, 0x20
    addi    r6, r3, unk_803ab5b0@l
    lwz     r5, 0x0(r6)
    li      r3, 0x0
    lwz     r0, 0x4(r6)
    stw     r5, 0x8(sp)
    stw     r0, 0xc(sp)
    lwz     r5, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r5, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0x10(r6)
    stw     r0, 0x18(sp)
    bge-    branch_0x80340f8c
    cmpwi   r31, 0x0
    beq-    branch_0x80340f6c
    slwi    r0, r4, 21
    oris    r0, r0, 0xd803
    stw     r0, 0x8(sp)
    b       branch_0x80340f78

branch_0x80340f6c:
    slwi    r0, r4, 21
    oris    r0, r0, 0xc803
    stw     r0, 0x8(sp)
branch_0x80340f78:
    mr      r3, r30
    addi    r4, sp, 0x8
    mr      r5, r31
    bl      TRKPPCAccessSpecialReg
    b       branch_0x80341064

branch_0x80340f8c:
    bne-    branch_0x80341018
    cmpwi   r31, 0x0
    beq-    branch_0x80340fc0
    lis     r0, 0xd824
    lis     r3, unk_fc20048e@h
    stw     r0, 0x8(sp)
    addi    r0, r3, unk_fc20048e@l
    stw     r0, 0xc(sp)
    lis     r3, 0xd823
    lis     r0, 0xc824
    stw     r3, 0x10(sp)
    stw     r0, 0x14(sp)
    b       branch_0x80340fe4

branch_0x80340fc0:
    lis     r0, 0xd824
    stw     r0, 0x8(sp)
    lis     r0, 0xc823
    lis     r3, unk_fdfe0d8e@h
    stw     r0, 0xc(sp)
    addi    r3, r3, unk_fdfe0d8e@l
    lis     r0, unk_c823ffff@ha
    stw     r3, 0x10(sp)
    stw     r0, 0x14(sp)
branch_0x80340fe4:
    mr      r3, r30
    addi    r4, sp, 0x8
    mr      r5, r31
    bl      TRKPPCAccessSpecialReg
    lwz     r6, 0x4(r30)
    addi    r0, r0, unk_c823ffff@l
    lwz     r5, 0x0(r30)
    li      r4, 0x0
    and     r0, r6, r0
    stw     r0, 0x4(r30)
    and     r0, r5, r4
    stw     r0, 0x0(r30)
    b       branch_0x80341064

branch_0x80341018:
    cmplwi  r4, 0x21
    bne-    branch_0x80341064
    cmpwi   r31, 0x0
    bne-    branch_0x80341030
    lwz     r0, 0x4(r30)
    stw     r0, 0x0(r30)
branch_0x80341030:
    mr      r3, r30
    mr      r5, r31
    li      r4, 0x3fe
    bl      TRKPPCAccessSPR
    cmpwi   r31, 0x0
    beq-    branch_0x80341064
    lwz     r5, 0x0(r30)
    li      r0, -0x1
    li      r4, 0x0
    and     r0, r5, r0
    stw     r0, 0x4(r30)
    and     r0, r4, r4
    stw     r0, 0x0(r30)
branch_0x80341064:
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKPPCAccessSpecialReg
TRKPPCAccessSpecialReg: # 0x8034107c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    mr      r30, r3
    mr      r31, r4
    lis     r3, unk_4e800020@h
    addi    r0, r3, unk_4e800020@l
    stw     r0, 0x10(r31)
    mr      r3, r31
    li      r4, 0x14
    bl      TRK_flush_cache
    lis     r3, TRKvalue128_temp@h
    addi    r4, r3, TRKvalue128_temp@l
    mr      r3, r30
    mr      r12, r31
    mtlr    r12
    blrl
    li      r3, 0x0
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetSetInputPendingPtr
TRKTargetSetInputPendingPtr: # 0x803410e4
    lis     r4, gTRKState@h
    addi    r4, r4, gTRKState@l
    stw     r3, 0xa0(r4)
    blr

