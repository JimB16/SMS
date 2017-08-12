
.globl DBClose
DBClose: # 0x80363c40
    blr


.globl DBOpen
DBOpen: # 0x80363c44
    blr


.globl DBWrite
DBWrite: # 0x80363c48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r24, 0x58(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    bl      OSDisableInterrupts
    addi    r28, r3, 0x0
    lis     r25, unk_cc006800@h
    lis     r31, 0x4000
branch_0x80363c70:
    lwz     r0, 0x6828(r25)
    addi    r30, r25, unk_cc006800@l
    addi    r3, sp, 0x50
    andi.   r0, r0, 0x405
    li      r4, 0x2
    li      r5, 0x1
    ori     r0, r0, 0xc0
    stwu    r0, 0x28(r30)
    stw     r31, 0x50(sp)
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r24, r0, 5
branch_0x80363ca0:
    addi    r29, r25, 0x6800
    lwzu    r0, 0x34(r29)
    clrlwi. r0, r0, 31
    bne+    branch_0x80363ca0
    addi    r3, sp, 0x54
    li      r4, 0x4
    li      r5, 0x0
    bl      DBGEXIImm
branch_0x80363cc0:
    lwz     r0, 0x0(r29)
    clrlwi. r0, r0, 31
    bne+    branch_0x80363cc0
    lwz     r0, 0x0(r30)
    andi.   r0, r0, 0x405
    stw     r0, 0x0(r30)
    lwz     r0, 0x54(sp)
    rlwinm. r0, r0, 0, 30, 30
    bne+    branch_0x80363c70
    lbz     r3, R13Off_m0x72d8(r13)
    addi    r0, r3, 0x1
    stb     r0, R13Off_m0x72d8(r13)
    lbz     r0, R13Off_m0x72d8(r13)
    clrlwi. r0, r0, 31
    beq-    branch_0x80363d04
    li      r3, 0x1000
    b       branch_0x80363d08

branch_0x80363d04:
    li      r3, 0x0
branch_0x80363d08:
    addi    r0, r27, 0x3
    oris    r25, r3, 0x1
    clrrwi  r24, r0, 2
    ori     r25, r25, 0xc000
branch_0x80363d18:
    addi    r3, r25, 0x0
    addi    r4, r26, 0x0
    addi    r5, r24, 0x0
    bl      DBGWrite
    cmpwi   r3, 0x0
    beq+    branch_0x80363d18
    lis     r31, 0x4000
branch_0x80363d34:
    lwz     r0, 0x0(r30)
    addi    r3, sp, 0x4c
    li      r4, 0x2
    andi.   r0, r0, 0x405
    li      r5, 0x1
    ori     r0, r0, 0xc0
    stw     r0, 0x0(r30)
    stw     r31, 0x4c(sp)
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r26, r0, 5
branch_0x80363d60:
    lwz     r0, 0x0(r29)
    clrlwi. r0, r0, 31
    bne+    branch_0x80363d60
    addi    r3, sp, 0x54
    li      r4, 0x4
    li      r5, 0x0
    bl      DBGEXIImm
branch_0x80363d7c:
    lwz     r0, 0x0(r29)
    clrlwi. r0, r0, 31
    bne+    branch_0x80363d7c
    lwz     r0, 0x0(r30)
    andi.   r0, r0, 0x405
    stw     r0, 0x0(r30)
    lwz     r0, 0x54(sp)
    rlwinm. r0, r0, 0, 30, 30
    bne+    branch_0x80363d34
    lbz     r0, R13Off_m0x72d8(r13)
    slwi    r0, r0, 16
    oris    r0, r0, 0x1f00
    or      r0, r0, r27
    clrlwi  r0, r0, 3
    oris    r24, r0, 0xc000
branch_0x80363db8:
    lwz     r0, 0x0(r30)
    addi    r3, sp, 0x44
    li      r4, 0x4
    andi.   r0, r0, 0x405
    li      r5, 0x1
    ori     r0, r0, 0xc0
    stw     r0, 0x0(r30)
    stw     r24, 0x44(sp)
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r3, r0, 5
branch_0x80363de4:
    lwz     r0, 0x0(r29)
    clrlwi. r0, r0, 31
    bne+    branch_0x80363de4
    lwz     r0, 0x0(r30)
    andi.   r0, r0, 0x405
    cmpwi   r3, 0x0
    stw     r0, 0x0(r30)
    bne+    branch_0x80363db8
    lis     r27, 0x4000
branch_0x80363e08:
    lwz     r0, 0x0(r30)
    addi    r3, sp, 0x3c
    li      r4, 0x2
    andi.   r0, r0, 0x405
    li      r5, 0x1
    ori     r0, r0, 0xc0
    stw     r0, 0x0(r30)
    stw     r27, 0x3c(sp)
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r26, r0, 5
branch_0x80363e34:
    lwz     r0, 0x0(r29)
    clrlwi. r0, r0, 31
    bne+    branch_0x80363e34
    addi    r3, sp, 0x54
    li      r4, 0x4
    li      r5, 0x0
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r3, r26, r0
branch_0x80363e5c:
    lwz     r0, 0x0(r29)
    clrlwi. r0, r0, 31
    bne+    branch_0x80363e5c
    lwz     r0, 0x0(r30)
    andi.   r0, r0, 0x405
    cmpwi   r3, 0x0
    stw     r0, 0x0(r30)
    bne+    branch_0x80363e08
    lwz     r0, 0x54(sp)
    rlwinm. r0, r0, 0, 30, 30
    bne+    branch_0x80363e08
    mr      r3, r28
    bl      OSRestoreInterrupts
    lmw     r24, 0x58(sp)
    li      r3, 0x0
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl DBRead
DBRead: # 0x80363ea8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    bl      OSDisableInterrupts
    lwz     r0, R13Off_m0x5788(r13)
    addi    r31, r3, 0x0
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80363ee4
    li      r3, 0x1000
    b       branch_0x80363ee8

branch_0x80363ee4:
    li      r3, 0x0
branch_0x80363ee8:
    addis   r3, r3, 0x2
    addi    r0, r30, 0x3
    addi    r4, r29, 0x0
    clrrwi  r5, r0, 2
    addi    r3, r3, -0x2000
    bl      DBGRead
    li      r0, 0x0
    stw     r0, R13Off_m0x5784(r13)
    mr      r3, r31
    stb     r0, R13Off_m0x577c(r13)
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DBQueryData
DBQueryData: # 0x80363f34
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r0, R13Off_m0x5784(r13)
    stb     r3, R13Off_m0x577c(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x80363fb8
    bl      OSDisableInterrupts
    addi    r31, r3, 0x0
    addi    r3, sp, 0x8
    bl      DBGReadStatus
    lwz     r0, 0x8(sp)
    clrlwi. r0, r0, 31
    beq-    branch_0x80363fb0
    addi    r3, sp, 0x8
    bl      DBGReadMailbox
    lwz     r0, 0x8(sp)
    clrlwi  r0, r0, 3
    stw     r0, 0x8(sp)
    lwz     r4, 0x8(sp)
    rlwinm  r3, r4, 0, 3, 7
    addis   r0, r3, 0xe100
    cmplwi  r0, 0x0
    bne-    branch_0x80363fb0
    clrlwi  r3, r4, 17
    stw     r4, R13Off_m0x5788(r13)
    li      r0, 0x1
    stw     r3, R13Off_m0x5784(r13)
    stb     r0, R13Off_m0x577c(r13)
branch_0x80363fb0:
    mr      r3, r31
    bl      OSRestoreInterrupts
branch_0x80363fb8:
    lwz     r3, R13Off_m0x5784(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DBInitInterrupts
DBInitInterrupts: # 0x80363fd0
    mflr    r0
    lis     r3, unk_00018000@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, unk_00018000@l
    stwu    sp, -0x8(sp)
    bl      __OSMaskInterrupts
    li      r3, 0x40
    bl      __OSMaskInterrupts
    lis     r3, MWCallback@h
    addi    r0, r3, MWCallback@l
    lis     r3, DBGHandler@h
    stw     r0, R13Off_m0x578c(r13)
    addi    r4, r3, DBGHandler@l
    li      r3, 0x19
    bl      __OSSetInterruptHandler
    li      r3, 0x40
    bl      __OSUnmaskInterrupts
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl DBInitComm
DBInitComm: # 0x80364024
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    bl      OSDisableInterrupts
    addi    r0, r13, R13Off_m0x577c
    stw     r0, R13Off_m0x5780(r13)
    lis     r4, unk_00018000@ha
    addi    r31, r3, 0x0
    lwz     r0, R13Off_m0x5780(r13)
    addi    r3, r4, unk_00018000@l
    stw     r0, 0x0(r29)
    stw     r30, R13Off_m0x5790(r13)
    bl      __OSMaskInterrupts
    lis     r3, 0xcc00
    li      r0, 0x0
    stw     r0, 0x6828(r3)
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DBGHandler
DBGHandler: # 0x8036409c
    mflr    r0
    lis     r5, 0xcc00
    stw     r0, 0x4(sp)
    li      r0, 0x1000
    stwu    sp, -0x8(sp)
    lwz     r12, R13Off_m0x578c(r13)
    stw     r0, 0x3000(r5)
    cmplwi  r12, 0x0
    beq-    branch_0x803640cc
    mtlr    r12
    extsh   r3, r3
    blrl
branch_0x803640cc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl MWCallback
MWCallback: # 0x803640dc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x8(sp)
    lwz     r12, R13Off_m0x5790(r13)
    stb     r0, R13Off_m0x577c(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80364108
    mtlr    r12
    li      r3, 0x0
    blrl
branch_0x80364108:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl DBGReadStatus
DBGReadStatus: # 0x80364118
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    lis     r0, unk_40000001@h
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    lis     r30, unk_cc006800@h
    addi    r27, r3, 0x0
    addi    r29, r30, unk_cc006800@l
    addi    r3, sp, 0x18
    lwz     r5, 0x6828(r30)
    andi.   r5, r5, 0x405
    ori     r5, r5, 0xc0
    stwu    r5, 0x28(r29)
    addi    r5, r0, unk_40000001@l
    stw     r0, 0x18(sp)
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r31, r0, 5
branch_0x80364164:
    addi    r28, r30, 0x6800
    lwzu    r0, 0x34(r28)
    clrlwi. r0, r0, 31
    bne+    branch_0x80364164
    addi    r3, r27, 0x0
    li      r4, 0x4
    li      r5, 0x0
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r3, r31, r0
branch_0x80364190:
    lwz     r0, 0x0(r28)
    clrlwi. r0, r0, 31
    bne+    branch_0x80364190
    lwz     r4, 0x0(r29)
    cntlzw  r0, r3
    srwi    r3, r0, 5
    andi.   r0, r4, 0x405
    stw     r0, 0x0(r29)
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl DBGWrite
DBGWrite: # 0x803641c4
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm  r0, r3, 8, 7, 21
    oris    r0, r0, 0xa000
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    lis     r29, unk_cc006800@h
    addi    r30, r5, 0x0
    addi    r26, r4, 0x0
    addi    r31, r29, unk_cc006800@l
    addi    r3, sp, 0x24
    li      r4, 0x4
    li      r5, 0x1
    lwz     r6, 0x6828(r29)
    andi.   r6, r6, 0x405
    ori     r6, r6, 0xc0
    stwu    r6, 0x28(r31)
    stw     r0, 0x24(sp)
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    mr      r27, r0
branch_0x8036421c:
    addi    r28, r29, 0x6800
    lwzu    r0, 0x34(r28)
    clrlwi. r0, r0, 31
    bne+    branch_0x8036421c
    b       branch_0x80364270

branch_0x80364230:
    lwz     r0, 0x0(r26)
    addi    r3, sp, 0x20
    li      r4, 0x4
    stw     r0, 0x20(sp)
    li      r5, 0x1
    addi    r26, r26, 0x4
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r27, r27, r0
branch_0x80364258:
    lwz     r0, 0x0(r28)
    clrlwi. r0, r0, 31
    bne+    branch_0x80364258
    subic.  r30, r30, 0x4
    bge-    branch_0x80364270
    li      r30, 0x0
branch_0x80364270:
    cmpwi   r30, 0x0
    bne+    branch_0x80364230
    lwz     r4, 0x0(r31)
    cntlzw  r0, r27
    srwi    r3, r0, 5
    andi.   r0, r4, 0x405
    stw     r0, 0x0(r31)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl DBGRead
DBGRead: # 0x803642a0
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm  r0, r3, 8, 7, 21
    oris    r0, r0, 0x2000
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    lis     r29, unk_cc006800@h
    addi    r30, r5, 0x0
    addi    r26, r4, 0x0
    addi    r31, r29, unk_cc006800@l
    addi    r3, sp, 0x24
    li      r4, 0x4
    li      r5, 0x1
    lwz     r6, 0x6828(r29)
    andi.   r6, r6, 0x405
    ori     r6, r6, 0xc0
    stwu    r6, 0x28(r31)
    stw     r0, 0x24(sp)
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    mr      r27, r0
branch_0x803642f8:
    addi    r28, r29, 0x6800
    lwzu    r0, 0x34(r28)
    clrlwi. r0, r0, 31
    bne+    branch_0x803642f8
    b       branch_0x8036434c

branch_0x8036430c:
    addi    r3, sp, 0x20
    li      r4, 0x4
    li      r5, 0x0
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r27, r27, r0
branch_0x80364328:
    lwz     r0, 0x0(r28)
    clrlwi. r0, r0, 31
    bne+    branch_0x80364328
    lwz     r0, 0x20(sp)
    subic.  r30, r30, 0x4
    stw     r0, 0x0(r26)
    addi    r26, r26, 0x4
    bge-    branch_0x8036434c
    li      r30, 0x0
branch_0x8036434c:
    cmpwi   r30, 0x0
    bne+    branch_0x8036430c
    lwz     r4, 0x0(r31)
    cntlzw  r0, r27
    srwi    r3, r0, 5
    andi.   r0, r4, 0x405
    stw     r0, 0x0(r31)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl DBGReadMailbox
DBGReadMailbox: # 0x8036437c
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    lis     r0, unk_60000001@h
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    lis     r30, unk_cc006800@h
    addi    r27, r3, 0x0
    addi    r29, r30, unk_cc006800@l
    addi    r3, sp, 0x18
    lwz     r5, 0x6828(r30)
    andi.   r5, r5, 0x405
    ori     r5, r5, 0xc0
    stwu    r5, 0x28(r29)
    addi    r5, r0, unk_60000001@l
    stw     r0, 0x18(sp)
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r31, r0, 5
branch_0x803643c8:
    addi    r28, r30, 0x6800
    lwzu    r0, 0x34(r28)
    clrlwi. r0, r0, 31
    bne+    branch_0x803643c8
    addi    r3, r27, 0x0
    li      r4, 0x4
    li      r5, 0x0
    bl      DBGEXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r3, r31, r0
branch_0x803643f4:
    lwz     r0, 0x0(r28)
    clrlwi. r0, r0, 31
    bne+    branch_0x803643f4
    lwz     r4, 0x0(r29)
    cntlzw  r0, r3
    srwi    r3, r0, 5
    andi.   r0, r4, 0x405
    stw     r0, 0x0(r29)
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl DBGEXIImm
DBGEXIImm: # 0x80364428
    stwu    sp, -0x48(sp)
    cmplwi  r5, 0x0
    stmw    r22, 0x20(sp)
    beq-    branch_0x8036456c
    li      r29, 0x0
    cmpw    r29, r4
    li      r30, 0x0
    bge-    branch_0x80364564
    cmpwi   r4, 0x8
    addi    r6, r4, -0x8
    ble-    branch_0x803646ac
    addi    r0, r6, 0x7
    srwi    r0, r0, 3
    cmpwi   r6, 0x0
    mtctr   r0
    addi    r31, r3, 0x0
    ble-    branch_0x803646ac
branch_0x8036446c:
    subfic  r6, r29, 0x3
    lbz     r12, 0x0(r31)
    addi    r0, r29, 0x1
    lbz     r11, 0x1(r31)
    slwi    r10, r6, 3
    lbz     r9, 0x2(r31)
    subfic  r8, r0, 0x3
    lbz     r7, 0x3(r31)
    addi    r6, r29, 0x2
    lbz     r0, 0x4(r31)
    slw     r12, r12, r10
    lbz     r23, 0x5(r31)
    slwi    r10, r8, 3
    lbz     r25, 0x6(r31)
    subfic  r6, r6, 0x3
    lbz     r27, 0x7(r31)
    slwi    r8, r6, 3
    neg     r6, r29
    addi    r22, r29, 0x4
    slwi    r6, r6, 3
    subfic  r22, r22, 0x3
    addi    r24, r29, 0x5
    slwi    r22, r22, 3
    subfic  r24, r24, 0x3
    addi    r26, r29, 0x6
    slwi    r24, r24, 3
    subfic  r26, r26, 0x3
    addi    r28, r29, 0x7
    slwi    r26, r26, 3
    subfic  r28, r28, 0x3
    slwi    r28, r28, 3
    or      r30, r30, r12
    slw     r10, r11, r10
    or      r30, r30, r10
    slw     r8, r9, r8
    or      r30, r30, r8
    slw     r6, r7, r6
    or      r30, r30, r6
    slw     r0, r0, r22
    or      r30, r30, r0
    slw     r0, r23, r24
    or      r30, r30, r0
    slw     r0, r25, r26
    or      r30, r30, r0
    slw     r0, r27, r28
    or      r30, r30, r0
    addi    r31, r31, 0x8
    addi    r29, r29, 0x8
    bdnz+      branch_0x8036446c
    b       branch_0x803646ac

branch_0x80364534:
    subf    r0, r29, r4
    cmpw    r29, r4
    mtctr   r0
    bge-    branch_0x80364564
branch_0x80364544:
    subfic  r0, r29, 0x3
    lbz     r6, 0x0(r7)
    slwi    r0, r0, 3
    slw     r0, r6, r0
    or      r30, r30, r0
    addi    r7, r7, 0x1
    addi    r29, r29, 0x1
    bdnz+      branch_0x80364544
branch_0x80364564:
    lis     r6, 0xcc00
    stw     r30, 0x6838(r6)
branch_0x8036456c:
    addi    r0, r4, -0x1
    lis     r6, unk_cc006800@h
    slwi    r7, r5, 2
    addi    r8, r6, unk_cc006800@l
    ori     r6, r7, 0x1
    slwi    r0, r0, 4
    or      r0, r6, r0
    stwu    r0, 0x34(r8)
branch_0x8036458c:
    lwz     r0, 0x0(r8)
    clrlwi. r0, r0, 31
    bne+    branch_0x8036458c
    cmplwi  r5, 0x0
    bne-    branch_0x803646a4
    li      r5, 0x0
    lis     r6, 0xcc00
    cmpw    r5, r4
    lwz     r0, 0x6838(r6)
    bge-    branch_0x803646a4
    cmpwi   r4, 0x8
    addi    r7, r4, -0x8
    ble-    branch_0x80364678
    addi    r6, r7, 0x7
    srwi    r6, r6, 3
    cmpwi   r7, 0x0
    mtctr   r6
    ble-    branch_0x80364678
branch_0x803645d4:
    subfic  r6, r5, 0x3
    slwi    r7, r6, 3
    addi    r6, r5, 0x1
    srw     r8, r0, r7
    subfic  r6, r6, 0x3
    stb     r8, 0x0(r3)
    slwi    r7, r6, 3
    addi    r6, r5, 0x2
    srw     r12, r0, r7
    subfic  r6, r6, 0x3
    stb     r12, 0x1(r3)
    slwi    r6, r6, 3
    srw     r11, r0, r6
    neg     r6, r5
    stb     r11, 0x2(r3)
    slwi    r7, r6, 3
    addi    r6, r5, 0x4
    srw     r10, r0, r7
    subfic  r6, r6, 0x3
    stb     r10, 0x3(r3)
    slwi    r7, r6, 3
    addi    r6, r5, 0x5
    srw     r9, r0, r7
    subfic  r6, r6, 0x3
    stb     r9, 0x4(r3)
    slwi    r7, r6, 3
    srw     r8, r0, r7
    addi    r6, r5, 0x6
    stb     r8, 0x5(r3)
    subfic  r7, r6, 0x3
    addi    r6, r5, 0x7
    slwi    r7, r7, 3
    srw     r7, r0, r7
    subfic  r6, r6, 0x3
    stb     r7, 0x6(r3)
    slwi    r6, r6, 3
    srw     r6, r0, r6
    stb     r6, 0x7(r3)
    addi    r3, r3, 0x8
    addi    r5, r5, 0x8
    bdnz+      branch_0x803645d4
branch_0x80364678:
    subf    r6, r5, r4
    cmpw    r5, r4
    mtctr   r6
    bge-    branch_0x803646a4
branch_0x80364688:
    subfic  r4, r5, 0x3
    slwi    r4, r4, 3
    srw     r4, r0, r4
    stb     r4, 0x0(r3)
    addi    r3, r3, 0x1
    addi    r5, r5, 0x1
    bdnz+      branch_0x80364688
branch_0x803646a4:
    li      r3, 0x1
    b       branch_0x803646b4

branch_0x803646ac:
    add     r7, r3, r29
    b       branch_0x80364534

branch_0x803646b4:
    lmw     r22, 0x20(sp)
    addi    sp, sp, 0x48
    blr

