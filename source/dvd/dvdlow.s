
.globl __DVDInitWA
__DVDInitWA: # 0x8034a720
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    li      r0, 0x0
    li      r4, 0x0
    stwu    sp, -0x8(sp)
    stw     r0, R13Off_m0x596c(r13)
    li      r0, -0x1
    stw     r0, 0x3080(r3)
    li      r3, 0x0
    bl      __DVDLowSetWAType
    bl      OSInitAlarm
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __DVDInterruptHandler
__DVDInterruptHandler: # 0x8034a760
    mflr    r0
    lis     r3, CommandList@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x2e8(sp)
    stw     r31, 0x2e4(sp)
    stw     r30, 0x2e0(sp)
    addi    r30, r3, CommandList@l
    addi    r3, r30, 0x68
    stw     r29, 0x2dc(sp)
    li      r29, 0x0
    stw     r28, 0x2d8(sp)
    addi    r28, r4, 0x0
    bl      OSCancelAlarm
    lwz     r0, R13Off_m0x5970(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034a7dc
    bl      __OSGetSystemTime
    stw     r4, R13Off_m0x597c(r13)
    li      r0, 0x0
    stw     r3, R13Off_m0x5980(r13)
    stw     r0, R13Off_m0x7358(r13)
    lwz     r0, 0xc4(r30)
    stw     r0, 0xb8(r30)
    lwz     r0, 0xc8(r30)
    stw     r0, 0xbc(r30)
    lwz     r0, 0xcc(r30)
    stw     r0, 0xc0(r30)
    lwz     r0, R13Off_m0x59b0(r13)
    cmpwi   r0, 0x1
    bne-    branch_0x8034a7dc
    ori     r29, r29, 0x8
branch_0x8034a7dc:
    li      r0, 0x0
    stw     r0, R13Off_m0x5970(r13)
    lis     r3, 0xcc00
    stw     r0, R13Off_m0x59b0(r13)
    lwz     r0, 0x6000(r3)
    andi.   r4, r0, 0x2a
    andi.   r3, r0, 0x54
    slwi    r0, r4, 1
    and     r3, r3, r0
    rlwinm. r0, r3, 0, 25, 25
    beq-    branch_0x8034a80c
    ori     r29, r29, 0x8
branch_0x8034a80c:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x8034a818
    ori     r29, r29, 0x1
branch_0x8034a818:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x8034a824
    ori     r29, r29, 0x2
branch_0x8034a824:
    cmplwi  r29, 0x0
    beq-    branch_0x8034a834
    li      r0, 0x0
    stw     r0, R13Off_m0x5998(r13)
branch_0x8034a834:
    or      r0, r3, r4
    lis     r31, 0xcc00
    stw     r0, 0x6000(r31)
    lwz     r0, R13Off_m0x5998(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034a8e4
    bl      __OSGetSystemTime
    lis     r5, 0x8000
    lwz     r7, R13Off_m0x59a0(r13)
    lwz     r6, 0xf8(r5)
    lis     r5, unk_10624dd3@h
    addi    r5, r5, unk_10624dd3@l
    lwz     r8, R13Off_m0x599c(r13)
    srwi    r6, r6, 2
    mulhwu  r5, r5, r6
    srwi    r5, r5, 6
    mulli   r5, r5, 0xc8
    subfc   r6, r8, r4
    subfe   r3, r7, r3
    li      r0, 0x0
    xoris   r4, r3, 0x8000
    xoris   r3, r0, 0x8000
    subfc   r0, r5, r6
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq-    branch_0x8034a8e4
    lwzu    r0, 0x6004(r31)
    rlwinm  r3, r0, 0, 29, 29
    rlwinm  r0, r0, 1, 29, 29
    and     r0, r3, r0
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8034a8d8
    lwz     r12, R13Off_m0x59a4(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034a8d0
    mtlr    r12
    li      r3, 0x4
    blrl
branch_0x8034a8d0:
    li      r0, 0x0
    stw     r0, R13Off_m0x59a4(r13)
branch_0x8034a8d8:
    lwz     r0, 0x0(r31)
    stw     r0, 0x0(r31)
    b       branch_0x8034a938

branch_0x8034a8e4:
    lwz     r0, R13Off_m0x5994(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034a92c
    lis     r3, unk_cc006000@h
    addi    r5, r3, unk_cc006000@l
    lwzu    r0, 0x4(r5)
    rlwinm  r4, r0, 0, 30, 30
    rlwinm  r3, r0, 0, 29, 29
    rlwinm  r0, r0, 1, 29, 29
    and     r3, r3, r0
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x8034a918
    ori     r29, r29, 0x4
branch_0x8034a918:
    or      r0, r3, r4
    stw     r0, 0x0(r5)
    li      r0, 0x0
    stw     r0, R13Off_m0x5994(r13)
    b       branch_0x8034a938

branch_0x8034a92c:
    lis     r3, 0xcc00
    li      r0, 0x0
    stw     r0, 0x6004(r3)
branch_0x8034a938:
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x8034a950
    lwz     r0, R13Off_m0x5990(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8034a950
    rlwinm  r29, r29, 0, 29, 27
branch_0x8034a950:
    clrlwi. r0, r29, 31
    beq-    branch_0x8034a9d4
    lwz     r0, R13Off_m0x596c(r13)
    mulli   r0, r0, 0x14
    lwzx    r3, r30, r0
    cmpwi   r3, 0x1
    bne-    branch_0x8034a998
    lwz     r3, R13Off_m0x596c(r13)
    add     r6, r30, r0
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x596c(r13)
    lwz     r3, 0x4(r6)
    lwz     r4, 0x8(r6)
    lwz     r5, 0xc(r6)
    lwz     r6, 0x10(r6)
    bl      Read
    li      r0, 0x1
    b       branch_0x8034a9c8

branch_0x8034a998:
    cmpwi   r3, 0x2
    bne-    branch_0x8034a9c4
    lwz     r3, R13Off_m0x596c(r13)
    add     r4, r30, r0
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x596c(r13)
    lwz     r3, 0xc(r4)
    lwz     r4, 0x10(r4)
    bl      DVDLowSeek
    li      r0, 0x1
    b       branch_0x8034a9c8

branch_0x8034a9c4:
    li      r0, 0x0
branch_0x8034a9c8:
    cmpwi   r0, 0x0
    beq-    branch_0x8034a9e4
    b       branch_0x8034aa34

branch_0x8034a9d4:
    li      r0, -0x1
    stw     r0, 0x0(r30)
    li      r0, 0x0
    stw     r0, R13Off_m0x596c(r13)
branch_0x8034a9e4:
    addi    r3, sp, 0x10
    bl      OSClearContext
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    cmplwi  r29, 0x0
    beq-    branch_0x8034aa24
    lwz     r12, R13Off_m0x59a8(r13)
    li      r0, 0x0
    cmplwi  r12, 0x0
    stw     r0, R13Off_m0x59a8(r13)
    beq-    branch_0x8034aa1c
    mtlr    r12
    addi    r3, r29, 0x0
    blrl
branch_0x8034aa1c:
    li      r0, 0x0
    stw     r0, R13Off_m0x5990(r13)
branch_0x8034aa24:
    addi    r3, sp, 0x10
    bl      OSClearContext
    mr      r3, r28
    bl      OSSetCurrentContext
branch_0x8034aa34:
    lwz     r0, 0x2ec(sp)
    lwz     r31, 0x2e4(sp)
    lwz     r30, 0x2e0(sp)
    lwz     r29, 0x2dc(sp)
    lwz     r28, 0x2d8(sp)
    addi    sp, sp, 0x2e8
    mtlr    r0
    blr


.globl AlarmHandler
AlarmHandler: # 0x8034aa54
    mflr    r0
    lis     r3, CommandList@h
    stw     r0, 0x4(sp)
    addi    r4, r3, CommandList@l
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x596c(r13)
    mulli   r0, r0, 0x14
    lwzx    r3, r4, r0
    cmpwi   r3, 0x1
    bne-    branch_0x8034aaa4
    lwz     r3, R13Off_m0x596c(r13)
    add     r6, r4, r0
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x596c(r13)
    lwz     r3, 0x4(r6)
    lwz     r4, 0x8(r6)
    lwz     r5, 0xc(r6)
    lwz     r6, 0x10(r6)
    bl      Read
    b       branch_0x8034aac8

branch_0x8034aaa4:
    cmpwi   r3, 0x2
    bne-    branch_0x8034aac8
    lwz     r3, R13Off_m0x596c(r13)
    add     r4, r4, r0
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x596c(r13)
    lwz     r3, 0xc(r4)
    lwz     r4, 0x10(r4)
    bl      DVDLowSeek
branch_0x8034aac8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl AlarmHandlerForTimeout
AlarmHandlerForTimeout: # 0x8034aad8
    mflr    r0
    li      r3, 0x400
    stw     r0, 0x4(sp)
    stwu    sp, -0x2e0(sp)
    stw     r31, 0x2dc(sp)
    addi    r31, r4, 0x0
    bl      __OSMaskInterrupts
    addi    r3, sp, 0x10
    bl      OSClearContext
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    lwz     r12, R13Off_m0x59a8(r13)
    li      r0, 0x0
    cmplwi  r12, 0x0
    stw     r0, R13Off_m0x59a8(r13)
    beq-    branch_0x8034ab24
    mtlr    r12
    li      r3, 0x10
    blrl
branch_0x8034ab24:
    addi    r3, sp, 0x10
    bl      OSClearContext
    mr      r3, r31
    bl      OSSetCurrentContext
    lwz     r0, 0x2e4(sp)
    lwz     r31, 0x2dc(sp)
    addi    sp, sp, 0x2e0
    mtlr    r0
    blr


.globl Read
Read: # 0x8034ab48
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    stw     r0, R13Off_m0x59b0(r13)
    li      r0, 0x1
    stw     r6, R13Off_m0x59a8(r13)
    lis     r6, CommandList@h
    addi    r31, r6, CommandList@l
    stw     r0, R13Off_m0x5970(r13)
    bl      __OSGetSystemTime
    stw     r4, R13Off_m0x5974(r13)
    lis     r4, unk_cc006000@h
    lis     r0, unk_00a00003@h
    stw     r3, R13Off_m0x5978(r13)
    addi    r4, r4, unk_cc006000@l
    lis     r3, 0xa800
    stw     r3, 0x8(r4)
    srwi    r3, r30, 2
    cmplw   r29, r0
    stw     r3, 0xc(r4)
    addi    r0, r0, unk_00a00003@l
    stw     r29, 0x10(r4)
    stw     r28, 0x14(r4)
    stw     r29, 0x18(r4)
    stw     r29, R13Off_m0x59ac(r13)
    stw     r0, 0x1c(r4)
    ble-    branch_0x8034ac08
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    addi    r3, r31, 0x68
    srwi    r0, r0, 2
    mulli   r30, r0, 0x14
    bl      OSCreateAlarm
    lis     r3, AlarmHandlerForTimeout@ha
    addi    r7, r3, AlarmHandlerForTimeout@l
    addi    r6, r30, 0x0
    addi    r3, r31, 0x68
    li      r5, 0x0
    bl      OSSetAlarm
    b       branch_0x8034ac38

branch_0x8034ac08:
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    addi    r3, r31, 0x68
    srwi    r0, r0, 2
    mulli   r30, r0, 0xa
    bl      OSCreateAlarm
    lis     r3, AlarmHandlerForTimeout@ha
    addi    r7, r3, AlarmHandlerForTimeout@l
    addi    r6, r30, 0x0
    addi    r3, r31, 0x68
    li      r5, 0x0
    bl      OSSetAlarm
branch_0x8034ac38:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl SeekTwiceBeforeRead
SeekTwiceBeforeRead: # 0x8034ac58
    mflr    r0
    lis     r7, CommandList@h
    stw     r0, 0x4(sp)
    clrrwi. r8, r5, 15
    addi    r9, r7, CommandList@l
    stwu    sp, -0x8(sp)
    bne-    branch_0x8034ac7c
    li      r10, 0x0
    b       branch_0x8034ac84

branch_0x8034ac7c:
    lwz     r0, R13Off_m0x5988(r13)
    add     r10, r8, r0
branch_0x8034ac84:
    li      r0, 0x2
    stw     r0, 0x0(r9)
    li      r8, 0x1
    li      r7, -0x1
    stw     r10, 0xc(r9)
    li      r0, 0x0
    stw     r6, 0x10(r9)
    stw     r8, 0x14(r9)
    stw     r3, 0x18(r9)
    mr      r3, r10
    stw     r4, 0x1c(r9)
    mr      r4, r6
    stw     r5, 0x20(r9)
    stw     r6, 0x24(r9)
    stw     r7, 0x28(r9)
    stw     r0, R13Off_m0x596c(r13)
    bl      DVDLowSeek
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl DVDLowRead
DVDLowRead: # 0x8034acd8
    mflr    r0
    lis     r7, unk_cc006000@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r22, 0x18(sp)
    addi    r25, r4, 0x0
    addi    r4, r7, unk_cc006000@l
    lis     r7, CommandList@h
    addi    r31, r7, CommandList@l
    addi    r24, r3, 0x0
    addi    r26, r5, 0x0
    addi    r30, r31, 0xcc
    mr      r27, r6
    stw     r25, 0x18(r4)
    stw     r24, 0xc4(r31)
    stw     r25, 0xc8(r31)
    stw     r26, 0xcc(r31)
    lwz     r0, R13Off_m0x598c(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8034ad50
    li      r0, -0x1
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r24, 0x0
    stw     r0, R13Off_m0x596c(r13)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    bl      Read
    b       branch_0x8034af58

branch_0x8034ad50:
    lwz     r0, R13Off_m0x598c(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x8034af58
    lwz     r0, R13Off_m0x7358(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034ad80
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    bl      SeekTwiceBeforeRead
    b       branch_0x8034af58

branch_0x8034ad80:
    addi    r29, r31, 0xbc
    lwz     r0, 0x0(r30)
    addi    r28, r31, 0xc0
    lwz     r3, 0xbc(r31)
    lwz     r4, 0xc0(r31)
    srwi    r23, r0, 15
    addi    r0, r3, -0x1
    add     r0, r4, r0
    srwi    r22, r0, 15
    bl      DVDGetCurrentDiskID
    lbz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8034adbc
    li      r0, 0x1
    b       branch_0x8034adc0

branch_0x8034adbc:
    li      r0, 0x0
branch_0x8034adc0:
    cmpwi   r0, 0x0
    beq-    branch_0x8034add0
    li      r3, 0x5
    b       branch_0x8034add4

branch_0x8034add0:
    li      r3, 0xf
branch_0x8034add4:
    addi    r0, r22, -0x2
    cmplw   r23, r0
    bgt-    branch_0x8034adf0
    addi    r0, r3, 0x3
    add     r0, r22, r0
    cmplw   r23, r0
    bge-    branch_0x8034adf8
branch_0x8034adf0:
    li      r0, 0x1
    b       branch_0x8034adfc

branch_0x8034adf8:
    li      r0, 0x0
branch_0x8034adfc:
    cmpwi   r0, 0x0
    bne-    branch_0x8034ae2c
    li      r0, -0x1
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r24, 0x0
    stw     r0, R13Off_m0x596c(r13)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    bl      Read
    b       branch_0x8034af58

branch_0x8034ae2c:
    lwz     r3, 0x0(r29)
    lwz     r4, 0x0(r28)
    addi    r3, r3, -0x1
    lwz     r0, 0x0(r30)
    add     r3, r4, r3
    srwi    r3, r3, 15
    srwi    r4, r0, 15
    cmplw   r3, r4
    beq-    branch_0x8034ae5c
    addi    r0, r3, 0x1
    cmplw   r0, r4
    bne-    branch_0x8034af44
branch_0x8034ae5c:
    bl      __OSGetSystemTime
    lis     r5, 0x8000
    lwz     r8, R13Off_m0x5980(r13)
    lwz     r0, 0xf8(r5)
    lis     r5, unk_10624dd3@h
    lwz     r9, R13Off_m0x597c(r13)
    li      r6, 0x0
    srwi    r7, r0, 2
    addi    r0, r5, unk_10624dd3@l
    mulhwu  r0, r0, r7
    srwi    r0, r0, 6
    subfc   r9, r9, r4
    subfe   r8, r8, r3
    mulli   r5, r0, 0x5
    xoris   r4, r6, 0x8000
    xoris   r3, r8, 0x8000
    subfc   r0, r9, r5
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq-    branch_0x8034aed4
    li      r0, -0x1
    stw     r0, 0x0(r31)
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    stw     r6, R13Off_m0x596c(r13)
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    bl      Read
    b       branch_0x8034af58

branch_0x8034aed4:
    li      r0, 0x1
    stw     r0, 0x0(r31)
    lis     r3, unk_431bde83@ha
    addi    r0, r3, unk_431bde83@l
    stw     r24, 0x4(r31)
    mulhwu  r0, r0, r7
    stw     r25, 0x8(r31)
    stw     r26, 0xc(r31)
    srwi    r0, r0, 15
    mulli   r3, r0, 0x1f4
    stw     r27, 0x10(r31)
    li      r0, -0x1
    stw     r0, 0x14(r31)
    subfc   r5, r9, r5
    subfe   r4, r8, r6
    srwi    r0, r3, 3
    stw     r6, R13Off_m0x596c(r13)
    addc    r23, r5, r0
    adde    r22, r4, r6
    addi    r3, r31, 0x40
    bl      OSCreateAlarm
    lis     r3, AlarmHandler@ha
    addi    r7, r3, AlarmHandler@l
    addi    r6, r23, 0x0
    addi    r5, r22, 0x0
    addi    r3, r31, 0x40
    bl      OSSetAlarm
    b       branch_0x8034af58

branch_0x8034af44:
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    bl      SeekTwiceBeforeRead
branch_0x8034af58:
    lmw     r22, 0x18(sp)
    li      r3, 0x1
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl DVDLowSeek
DVDLowSeek: # 0x8034af70
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r4, R13Off_m0x59a8(r13)
    lis     r4, unk_cc006000@h
    addi    r4, r4, unk_cc006000@l
    stw     r0, R13Off_m0x59b0(r13)
    lis     r0, unk_ab000001@h
    stw     r0, 0x8(r4)
    srwi    r0, r3, 2
    lis     r3, AlarmForTimeout@h
    stw     r0, 0xc(r4)
    addi    r0, r0, unk_ab000001@l
    addi    r31, r3, AlarmForTimeout@l
    stw     r0, 0x1c(r4)
    lis     r4, 0x8000
    addi    r3, r31, 0x0
    lwz     r0, 0xf8(r4)
    srwi    r0, r0, 2
    mulli   r30, r0, 0xa
    bl      OSCreateAlarm
    lis     r3, AlarmHandlerForTimeout@ha
    addi    r7, r3, AlarmHandlerForTimeout@l
    addi    r3, r31, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x0
    bl      OSSetAlarm
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DVDLowWaitCoverClose
DVDLowWaitCoverClose: # 0x8034b004
    li      r0, 0x1
    stw     r3, R13Off_m0x59a8(r13)
    lis     r3, unk_cc006000@h
    stw     r0, R13Off_m0x5994(r13)
    li      r0, 0x0
    addi    r4, r3, unk_cc006000@l
    stw     r0, R13Off_m0x59b0(r13)
    li      r0, 0x2
    li      r3, 0x1
    stw     r0, 0x4(r4)
    blr


.globl DVDLowReadDiskID
DVDLowReadDiskID: # 0x8034b030
    mflr    r0
    li      r8, 0x0
    stw     r0, 0x4(sp)
    lis     r5, unk_a8000040@h
    addi    r0, r5, unk_a8000040@l
    stwu    sp, -0x18(sp)
    li      r6, 0x20
    lis     r5, 0x8000
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r4, R13Off_m0x59a8(r13)
    lis     r4, unk_cc006000@h
    addi    r7, r4, unk_cc006000@l
    stw     r8, R13Off_m0x59b0(r13)
    stw     r0, 0x6008(r4)
    lis     r4, AlarmForTimeout@h
    li      r0, 0x3
    stw     r8, 0xc(r7)
    addi    r31, r4, AlarmForTimeout@l
    stw     r6, 0x10(r7)
    stw     r3, 0x14(r7)
    mr      r3, r31
    stw     r6, 0x18(r7)
    stw     r0, 0x1c(r7)
    lwz     r0, 0xf8(r5)
    srwi    r0, r0, 2
    mulli   r30, r0, 0xa
    bl      OSCreateAlarm
    lis     r3, AlarmHandlerForTimeout@ha
    addi    r7, r3, AlarmHandlerForTimeout@l
    addi    r3, r31, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x0
    bl      OSSetAlarm
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DVDLowStopMotor
DVDLowStopMotor: # 0x8034b0d4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, R13Off_m0x59a8(r13)
    lis     r3, unk_cc006000@h
    addi    r4, r3, unk_cc006000@l
    stw     r0, R13Off_m0x59b0(r13)
    lis     r0, unk_e3000001@h
    stw     r0, 0x6008(r3)
    addi    r0, r0, unk_e3000001@l
    lis     r3, AlarmForTimeout@h
    stw     r0, 0x1c(r4)
    lis     r4, 0x8000
    addi    r31, r3, AlarmForTimeout@l
    lwz     r0, 0xf8(r4)
    addi    r3, r31, 0x0
    srwi    r0, r0, 2
    mulli   r30, r0, 0xa
    bl      OSCreateAlarm
    lis     r3, AlarmHandlerForTimeout@ha
    addi    r7, r3, AlarmHandlerForTimeout@l
    addi    r3, r31, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x0
    bl      OSSetAlarm
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DVDLowRequestError
DVDLowRequestError: # 0x8034b160
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, R13Off_m0x59a8(r13)
    lis     r3, unk_cc006000@h
    addi    r4, r3, unk_cc006000@l
    stw     r0, R13Off_m0x59b0(r13)
    lis     r0, unk_e0000001@h
    stw     r0, 0x6008(r3)
    addi    r0, r0, unk_e0000001@l
    lis     r3, AlarmForTimeout@h
    stw     r0, 0x1c(r4)
    lis     r4, 0x8000
    addi    r31, r3, AlarmForTimeout@l
    lwz     r0, 0xf8(r4)
    addi    r3, r31, 0x0
    srwi    r0, r0, 2
    mulli   r30, r0, 0xa
    bl      OSCreateAlarm
    lis     r3, AlarmHandlerForTimeout@ha
    addi    r7, r3, AlarmHandlerForTimeout@l
    addi    r3, r31, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x0
    bl      OSSetAlarm
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DVDLowInquiry
DVDLowInquiry: # 0x8034b1ec
    mflr    r0
    li      r6, 0x20
    stw     r0, 0x4(sp)
    li      r0, 0x0
    lis     r5, 0x8000
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r4, R13Off_m0x59a8(r13)
    lis     r4, unk_cc006000@h
    addi    r7, r4, unk_cc006000@l
    stw     r0, R13Off_m0x59b0(r13)
    lis     r0, unk_12000003@h
    stw     r0, 0x6008(r4)
    lis     r4, AlarmForTimeout@h
    addi    r0, r0, unk_12000003@l
    stw     r6, 0x10(r7)
    addi    r31, r4, AlarmForTimeout@l
    stw     r3, 0x14(r7)
    addi    r3, r31, 0x0
    stw     r6, 0x18(r7)
    stw     r0, 0x1c(r7)
    lwz     r0, 0xf8(r5)
    srwi    r0, r0, 2
    mulli   r30, r0, 0xa
    bl      OSCreateAlarm
    lis     r3, AlarmHandlerForTimeout@ha
    addi    r7, r3, AlarmHandlerForTimeout@l
    addi    r3, r31, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x0
    bl      OSSetAlarm
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DVDLowAudioStream
DVDLowAudioStream: # 0x8034b288
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r6, R13Off_m0x59a8(r13)
    lis     r6, unk_cc006000@h
    addi    r6, r6, unk_cc006000@l
    stw     r0, R13Off_m0x59b0(r13)
    oris    r0, r3, 0xe100
    lis     r3, AlarmForTimeout@h
    stw     r0, 0x8(r6)
    srwi    r0, r5, 2
    addi    r31, r3, AlarmForTimeout@l
    stw     r0, 0xc(r6)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r4, 0x10(r6)
    lis     r4, 0x8000
    stw     r0, 0x1c(r6)
    lwz     r0, 0xf8(r4)
    srwi    r0, r0, 2
    mulli   r30, r0, 0xa
    bl      OSCreateAlarm
    lis     r3, AlarmHandlerForTimeout@ha
    addi    r7, r3, AlarmHandlerForTimeout@l
    addi    r3, r31, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x0
    bl      OSSetAlarm
    lwz     r0, 0x24(sp)
    li      r3, 0x1
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DVDLowRequestAudioStatus
DVDLowRequestAudioStatus: # 0x8034b320
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r4, R13Off_m0x59a8(r13)
    lis     r4, unk_cc006000@h
    addi    r4, r4, unk_cc006000@l
    stw     r0, R13Off_m0x59b0(r13)
    oris    r0, r3, 0xe200
    lis     r3, AlarmForTimeout@h
    stw     r0, 0x8(r4)
    li      r0, 0x1
    addi    r31, r3, AlarmForTimeout@l
    stw     r0, 0x1c(r4)
    lis     r4, 0x8000
    addi    r3, r31, 0x0
    lwz     r0, 0xf8(r4)
    srwi    r0, r0, 2
    mulli   r30, r0, 0xa
    bl      OSCreateAlarm
    lis     r3, AlarmHandlerForTimeout@ha
    addi    r7, r3, AlarmHandlerForTimeout@l
    addi    r3, r31, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x0
    bl      OSSetAlarm
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DVDLowAudioBufferConfig
DVDLowAudioBufferConfig: # 0x8034b3ac
    mflr    r0
    cmpwi   r3, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r5, R13Off_m0x59a8(r13)
    stw     r0, R13Off_m0x59b0(r13)
    beq-    branch_0x8034b3d8
    lis     r0, unk_00010001@h
branch_0x8034b3d8:
    oris    r0, r0, 0xe400
    lis     r3, unk_cc006000@h
    or      r0, r4, r0
    addi    r3, r3, unk_cc006000@l
    stw     r0, 0x8(r3)
    addi    r0, r0, unk_00010001@l
    lis     r4, 0x8000
    stw     r0, 0x1c(r3)
    lis     r3, AlarmForTimeout@h
    addi    r31, r3, AlarmForTimeout@l
    lwz     r0, 0xf8(r4)
    addi    r3, r31, 0x0
    srwi    r0, r0, 2
    mulli   r30, r0, 0xa
    bl      OSCreateAlarm
    lis     r3, AlarmHandlerForTimeout@ha
    addi    r7, r3, AlarmHandlerForTimeout@l
    addi    r3, r31, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x0
    bl      OSSetAlarm
    lwz     r0, 0x24(sp)
    li      r3, 0x1
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DVDLowReset
DVDLowReset: # 0x8034b448
    mflr    r0
    lis     r4, unk_cc003000@h
    stw     r0, 0x4(sp)
    li      r0, 0x2
    stwu    sp, -0x20(sp)
    stmw    r26, 0x8(sp)
    addi    r31, r4, unk_cc003000@l
    stw     r0, 0x6004(r4)
    lwz     r30, 0x3024(r4)
    rlwinm  r0, r30, 0, 30, 28
    ori     r0, r0, 0x1
    stwu    r0, 0x24(r31)
    bl      __OSGetSystemTime
    lis     r5, 0x8000
    lwz     r0, 0xf8(r5)
    lis     r5, unk_431bde83@ha
    addi    r5, r5, unk_431bde83@l
    srwi    r0, r0, 2
    mulhwu  r0, r5, r0
    srwi    r0, r0, 15
    mulli   r0, r0, 0xc
    addi    r26, r4, 0x0
    addi    r27, r3, 0x0
    srwi    r28, r0, 3
    li      r29, 0x0
branch_0x8034b4ac:
    bl      __OSGetSystemTime
    subfc   r5, r26, r4
    subfe   r0, r27, r3
    xoris   r4, r0, 0x8000
    xoris   r3, r29, 0x8000
    subfc   r0, r28, r5
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    bne+    branch_0x8034b4ac
    ori     r0, r30, 0x5
    stw     r0, 0x0(r31)
    li      r0, 0x1
    stw     r0, R13Off_m0x5998(r13)
    bl      __OSGetSystemTime
    stw     r4, R13Off_m0x599c(r13)
    stw     r3, R13Off_m0x59a0(r13)
    lmw     r26, 0x8(sp)
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DVDLowBreak
DVDLowBreak: # 0x8034b504
    li      r0, 0x1
    stw     r0, R13Off_m0x59b0(r13)
    li      r3, 0x1
    stw     r0, R13Off_m0x5990(r13)
    blr


.globl DVDLowClearCallback
DVDLowClearCallback: # 0x8034b518
    lis     r3, 0xcc00
    li      r0, 0x0
    stw     r0, 0x6004(r3)
    lwz     r3, R13Off_m0x59a8(r13)
    stw     r0, R13Off_m0x59a8(r13)
    blr


.globl __DVDLowSetWAType
__DVDLowSetWAType: # 0x8034b530
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      OSDisableInterrupts
    stw     r30, R13Off_m0x598c(r13)
    stw     r31, R13Off_m0x5988(r13)
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

