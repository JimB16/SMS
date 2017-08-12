
.globl UpdateOrigin
UpdateOrigin: # 0x8035098c
    mflr    r0
    lis     r5, Origin@h
    stw     r0, 0x4(sp)
    mulli   r6, r3, 0xc
    stwu    sp, -0x18(sp)
    addi    r5, r5, Origin@l
    stw     r31, 0x14(sp)
    add     r31, r5, r6
    lwz     r0, R13Off_m0x7320(r13)
    rlwinm  r4, r0, 0, 21, 23
    cmpwi   r4, 0x400
    lis     r0, 0x8000
    srw     r0, r0, r3
    beq-    branch_0x80350ab4
    bge-    branch_0x803509f8
    cmpwi   r4, 0x200
    beq-    branch_0x80350a84
    bge-    branch_0x803509ec
    cmpwi   r4, 0x100
    beq-    branch_0x80350a50
    bge-    branch_0x80350ab4
    cmpwi   r4, 0x0
    beq-    branch_0x80350a1c
    b       branch_0x80350ab4

branch_0x803509ec:
    cmpwi   r4, 0x300
    beq-    branch_0x80350ab4
    b       branch_0x80350ab4

branch_0x803509f8:
    cmpwi   r4, 0x600
    beq-    branch_0x80350a1c
    bge-    branch_0x80350a10
    cmpwi   r4, 0x500
    beq-    branch_0x80350a1c
    b       branch_0x80350ab4

branch_0x80350a10:
    cmpwi   r4, 0x700
    beq-    branch_0x80350a1c
    b       branch_0x80350ab4

branch_0x80350a1c:
    lbz     r4, 0x6(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x6(r31)
    lbz     r4, 0x7(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x7(r31)
    lbz     r4, 0x8(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x8(r31)
    lbz     r4, 0x9(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x9(r31)
    b       branch_0x80350ab4

branch_0x80350a50:
    lbz     r4, 0x4(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x4(r31)
    lbz     r4, 0x5(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x5(r31)
    lbz     r4, 0x8(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x8(r31)
    lbz     r4, 0x9(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x9(r31)
    b       branch_0x80350ab4

branch_0x80350a84:
    lbz     r4, 0x4(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x4(r31)
    lbz     r4, 0x5(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x5(r31)
    lbz     r4, 0x6(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x6(r31)
    lbz     r4, 0x7(r31)
    clrrwi  r4, r4, 4
    stb     r4, 0x7(r31)
branch_0x80350ab4:
    lbz     r4, 0x2(r31)
    addi    r4, r4, -0x80
    stb     r4, 0x2(r31)
    lbz     r4, 0x3(r31)
    addi    r4, r4, -0x80
    stb     r4, 0x3(r31)
    lbz     r4, 0x4(r31)
    addi    r4, r4, -0x80
    stb     r4, 0x4(r31)
    lbz     r4, 0x5(r31)
    addi    r4, r4, -0x80
    stb     r4, 0x5(r31)
    lwz     r4, R13Off_m0x7324(r13)
    and.    r0, r4, r0
    beq-    branch_0x80350b1c
    lbz     r0, 0x2(r31)
    extsb   r0, r0
    cmpwi   r0, 0x40
    ble-    branch_0x80350b1c
    bl      SIGetType
    clrrwi  r3, r3, 16
    addis   r0, r3, 0xf700
    cmplwi  r0, 0x0
    bne-    branch_0x80350b1c
    li      r0, 0x0
    stb     r0, 0x2(r31)
branch_0x80350b1c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl PADOriginCallback
PADOriginCallback: # 0x80350b30
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 28
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    bne-    branch_0x80350b8c
    lwz     r3, R13Off_m0x7328(r13)
    bl      UpdateOrigin
    lwz     r31, R13Off_m0x7328(r13)
    lis     r0, 0x8000
    lwz     r3, R13Off_m0x589c(r13)
    addi    r4, sp, 0x1c
    srw     r0, r0, r31
    or      r0, r3, r0
    stw     r0, R13Off_m0x589c(r13)
    mr      r3, r31
    bl      SIGetResponse
    lwz     r0, R13Off_m0x7320(r13)
    addi    r3, r31, 0x0
    oris    r4, r0, 0x40
    bl      SISetCommand
    lwz     r3, R13Off_m0x589c(r13)
    bl      SIEnablePolling
branch_0x80350b8c:
    lwz     r5, R13Off_m0x5898(r13)
    cntlzw  r0, r5
    stw     r0, R13Off_m0x7328(r13)
    lwz     r4, R13Off_m0x7328(r13)
    cmpwi   r4, 0x20
    beq-    branch_0x80350be0
    lis     r0, unk_80000000@h
    srw     r0, r0, r4
    andc    r0, r5, r0
    mulli   r4, r4, 0xc
    stw     r0, R13Off_m0x5898(r13)
    lis     r3, Origin@h
    addi    r0, r3, Origin@l
    add     r3, r0, r4
    addi    r4, r0, unk_80000000@l
    li      r5, 0xc
    bl      memset
    lis     r4, PADTypeAndStatusCallback@h
    lwz     r3, R13Off_m0x7328(r13)
    addi    r4, r4, PADTypeAndStatusCallback@l
    bl      SIGetTypeAsync
branch_0x80350be0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl PADOriginUpdateCallback
PADOriginUpdateCallback: # 0x80350bf4
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0x8000
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r29, r3
    srw     r30, r0, r29
    lwz     r3, R13Off_m0x589c(r13)
    and.    r0, r3, r30
    beq-    branch_0x80350c98
    clrlwi. r0, r31, 28
    bne-    branch_0x80350c38
    mr      r3, r29
    bl      UpdateOrigin
branch_0x80350c38:
    rlwinm. r0, r31, 0, 28, 28
    beq-    branch_0x80350c98
    bl      OSDisableInterrupts
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      SIDisablePolling
    lwz     r6, R13Off_m0x589c(r13)
    not     r8, r30
    lwz     r5, R13Off_m0x5890(r13)
    mr      r3, r29
    lwz     r4, R13Off_m0x588c(r13)
    lwz     r0, R13Off_m0x5888(r13)
    and     r7, r6, r8
    and     r6, r5, r8
    stw     r7, R13Off_m0x589c(r13)
    and     r5, r4, r8
    and     r0, r0, r8
    stw     r6, R13Off_m0x5890(r13)
    li      r4, 0x0
    stw     r5, R13Off_m0x588c(r13)
    stw     r0, R13Off_m0x5888(r13)
    bl      OSSetWirelessID
    mr      r3, r31
    bl      OSRestoreInterrupts
branch_0x80350c98:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl PADProbeCallback
PADProbeCallback: # 0x80350cb4
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 28
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    bne-    branch_0x80350d20
    lwz     r30, R13Off_m0x7328(r13)
    lis     r31, 0x8000
    lwz     r3, R13Off_m0x589c(r13)
    addi    r4, sp, 0x1c
    srw     r0, r31, r30
    or      r0, r3, r0
    stw     r0, R13Off_m0x589c(r13)
    mr      r3, r30
    bl      SIGetResponse
    lwz     r0, R13Off_m0x7320(r13)
    addi    r3, r30, 0x0
    oris    r4, r0, 0x40
    bl      SISetCommand
    lwz     r3, R13Off_m0x589c(r13)
    bl      SIEnablePolling
    lwz     r0, R13Off_m0x7328(r13)
    lwz     r3, R13Off_m0x5890(r13)
    srw     r0, r31, r0
    or      r0, r3, r0
    stw     r0, R13Off_m0x5890(r13)
branch_0x80350d20:
    lwz     r5, R13Off_m0x5898(r13)
    cntlzw  r0, r5
    stw     r0, R13Off_m0x7328(r13)
    lwz     r4, R13Off_m0x7328(r13)
    cmpwi   r4, 0x20
    beq-    branch_0x80350d74
    lis     r0, unk_80000000@h
    srw     r0, r0, r4
    andc    r0, r5, r0
    mulli   r4, r4, 0xc
    stw     r0, R13Off_m0x5898(r13)
    lis     r3, Origin@h
    addi    r0, r3, Origin@l
    add     r3, r0, r4
    addi    r4, r0, unk_80000000@l
    li      r5, 0xc
    bl      memset
    lis     r4, PADTypeAndStatusCallback@h
    lwz     r3, R13Off_m0x7328(r13)
    addi    r4, r4, PADTypeAndStatusCallback@l
    bl      SIGetTypeAsync
branch_0x80350d74:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl PADTypeAndStatusCallback
PADTypeAndStatusCallback: # 0x80350d8c
    mflr    r0
    lis     r6, Type_80403410@h
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 28
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    lis     r31, 0x8000
    stw     r30, 0x38(sp)
    addi    r30, r6, Type_80403410@l
    stw     r29, 0x34(sp)
    stw     r28, 0x30(sp)
    lwz     r29, R13Off_m0x7328(r13)
    lwz     r5, R13Off_m0x5894(r13)
    srw     r28, r31, r29
    andc    r3, r5, r28
    stw     r3, R13Off_m0x5894(r13)
    and     r5, r5, r28
    li      r3, 0x1
    beq-    branch_0x80350e28
    lwz     r4, R13Off_m0x5898(r13)
    cntlzw  r0, r4
    stw     r0, R13Off_m0x7328(r13)
    lwz     r3, R13Off_m0x7328(r13)
    cmpwi   r3, 0x20
    beq-    branch_0x80351098
    mulli   r0, r3, 0xc
    srw     r3, r31, r3
    andc    r4, r4, r3
    add     r3, r30, r0
    stw     r4, R13Off_m0x5898(r13)
    li      r4, 0x0
    li      r5, 0xc
    addi    r3, r3, 0x10
    bl      memset
    lis     r4, PADTypeAndStatusCallback@h
    lwz     r3, R13Off_m0x7328(r13)
    addi    r4, r4, PADTypeAndStatusCallback@l
    bl      SIGetTypeAsync
    b       branch_0x80351098

branch_0x80350e28:
    clrrwi  r6, r4, 8
    rlwinm  r4, r4, 0, 3, 4
    addis   r0, r4, 0xf800
    slwi    r4, r29, 2
    cmplwi  r0, 0x0
    stwx    r6, r30, r4
    bne-    branch_0x80350e4c
    rlwinm. r0, r6, 0, 7, 7
    bne-    branch_0x80350ea0
branch_0x80350e4c:
    lwz     r5, R13Off_m0x5898(r13)
    cntlzw  r0, r5
    stw     r0, R13Off_m0x7328(r13)
    lwz     r4, R13Off_m0x7328(r13)
    cmpwi   r4, 0x20
    beq-    branch_0x80351098
    lis     r3, 0x8000
    mulli   r0, r4, 0xc
    srw     r3, r3, r4
    andc    r4, r5, r3
    add     r3, r30, r0
    stw     r4, R13Off_m0x5898(r13)
    li      r4, 0x0
    li      r5, 0xc
    addi    r3, r3, 0x10
    bl      memset
    lis     r4, PADTypeAndStatusCallback@h
    lwz     r3, R13Off_m0x7328(r13)
    addi    r4, r4, PADTypeAndStatusCallback@l
    bl      SIGetTypeAsync
    b       branch_0x80351098

branch_0x80350ea0:
    lwz     r0, R13Off_m0x731c(r13)
    cmplwi  r0, 0x2
    bge-    branch_0x80350f2c
    lwz     r0, R13Off_m0x589c(r13)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x1c
    or      r0, r0, r28
    stw     r0, R13Off_m0x589c(r13)
    bl      SIGetResponse
    lwz     r0, R13Off_m0x7320(r13)
    addi    r3, r29, 0x0
    oris    r4, r0, 0x40
    bl      SISetCommand
    lwz     r3, R13Off_m0x589c(r13)
    bl      SIEnablePolling
    lwz     r4, R13Off_m0x5898(r13)
    cntlzw  r0, r4
    stw     r0, R13Off_m0x7328(r13)
    lwz     r3, R13Off_m0x7328(r13)
    cmpwi   r3, 0x20
    beq-    branch_0x80351098
    mulli   r0, r3, 0xc
    srw     r3, r31, r3
    andc    r4, r4, r3
    add     r3, r30, r0
    stw     r4, R13Off_m0x5898(r13)
    li      r4, 0x0
    li      r5, 0xc
    addi    r3, r3, 0x10
    bl      memset
    lis     r4, PADTypeAndStatusCallback@h
    lwz     r3, R13Off_m0x7328(r13)
    addi    r4, r4, PADTypeAndStatusCallback@l
    bl      SIGetTypeAsync
    b       branch_0x80351098

branch_0x80350f2c:
    clrrwi. r0, r6, 31
    beq-    branch_0x80350f3c
    rlwinm. r0, r6, 0, 5, 5
    beq-    branch_0x80350fac
branch_0x80350f3c:
    cmplwi  r5, 0x0
    beq-    branch_0x80350f78
    mulli   r0, r29, 0xc
    lis     r3, PADOriginCallback@h
    add     r6, r30, r0
    addi    r8, r3, PADOriginCallback@l
    addi    r3, r29, 0x0
    addi    r4, r13, R13Off_m0x7310
    li      r5, 0x3
    li      r7, 0xa
    li      r10, 0x0
    li      r9, 0x0
    addi    r6, r6, 0x10
    bl      SITransfer
    b       branch_0x80351034

branch_0x80350f78:
    mulli   r0, r29, 0xc
    lis     r3, PADOriginCallback@h
    add     r6, r30, r0
    addi    r8, r3, PADOriginCallback@l
    addi    r3, r29, 0x0
    addi    r4, r13, R13Off_m0x7314
    li      r5, 0x1
    li      r7, 0xa
    li      r10, 0x0
    li      r9, 0x0
    addi    r6, r6, 0x10
    bl      SITransfer
    b       branch_0x80351034

branch_0x80350fac:
    rlwinm. r0, r6, 0, 11, 11
    beq-    branch_0x80351034
    rlwinm. r0, r6, 0, 12, 12
    bne-    branch_0x80351034
    rlwinm. r0, r6, 0, 13, 13
    bne-    branch_0x80351034
    rlwinm. r0, r6, 0, 1, 1
    beq-    branch_0x80351000
    mulli   r0, r29, 0xc
    lis     r3, PADOriginCallback@h
    add     r6, r30, r0
    addi    r8, r3, PADOriginCallback@l
    addi    r3, r29, 0x0
    addi    r4, r13, R13Off_m0x7314
    li      r5, 0x1
    li      r7, 0xa
    li      r10, 0x0
    li      r9, 0x0
    addi    r6, r6, 0x10
    bl      SITransfer
    b       branch_0x80351034

branch_0x80351000:
    mulli   r0, r29, 0xc
    lis     r3, PADProbeCallback@h
    add     r4, r30, r4
    add     r6, r30, r0
    addi    r8, r3, PADProbeCallback@l
    addi    r3, r29, 0x0
    li      r5, 0x3
    li      r7, 0x8
    li      r10, 0x0
    li      r9, 0x0
    addi    r4, r4, 0x40
    addi    r6, r6, 0x10
    bl      SITransfer
branch_0x80351034:
    cmpwi   r3, 0x0
    bne-    branch_0x80351098
    lwz     r5, R13Off_m0x5898(r13)
    lwz     r3, R13Off_m0x5888(r13)
    cntlzw  r0, r5
    stw     r0, R13Off_m0x7328(r13)
    or      r0, r3, r28
    lwz     r4, R13Off_m0x7328(r13)
    stw     r0, R13Off_m0x5888(r13)
    cmpwi   r4, 0x20
    beq-    branch_0x80351098
    lis     r3, 0x8000
    mulli   r0, r4, 0xc
    srw     r3, r3, r4
    andc    r4, r5, r3
    add     r3, r30, r0
    stw     r4, R13Off_m0x5898(r13)
    li      r4, 0x0
    li      r5, 0xc
    addi    r3, r3, 0x10
    bl      memset
    lis     r4, PADTypeAndStatusCallback@h
    lwz     r3, R13Off_m0x7328(r13)
    addi    r4, r4, PADTypeAndStatusCallback@l
    bl      SIGetTypeAsync
branch_0x80351098:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl PADReceiveCheckCallback
PADReceiveCheckCallback: # 0x803510b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lis     r3, 0x8000
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    srw     r29, r3, r31
    lwz     r0, R13Off_m0x589c(r13)
    and.    r0, r0, r29
    beq-    branch_0x803511d0
    lwz     r5, R13Off_m0x5890(r13)
    not     r6, r29
    lwz     r3, R13Off_m0x588c(r13)
    clrlwi. r0, r4, 28
    and     r5, r5, r6
    and     r3, r3, r6
    stw     r5, R13Off_m0x5890(r13)
    stw     r3, R13Off_m0x588c(r13)
    clrrwi  r3, r4, 8
    bne-    branch_0x80351178
    clrrwi. r0, r3, 31
    beq-    branch_0x80351178
    rlwinm. r0, r3, 0, 11, 11
    beq-    branch_0x80351178
    rlwinm. r0, r3, 0, 1, 1
    beq-    branch_0x80351178
    rlwinm. r0, r3, 0, 5, 5
    bne-    branch_0x80351178
    rlwinm. r0, r3, 0, 12, 12
    bne-    branch_0x80351178
    rlwinm. r0, r3, 0, 13, 13
    bne-    branch_0x80351178
    mulli   r4, r31, 0xc
    lis     r3, Origin@h
    addi    r0, r3, Origin@l
    lis     r3, PADOriginUpdateCallback@h
    add     r6, r0, r4
    addi    r8, r3, PADOriginUpdateCallback@l
    addi    r3, r31, 0x0
    addi    r4, r13, R13Off_m0x7314
    li      r5, 0x1
    li      r7, 0xa
    li      r10, 0x0
    li      r9, 0x0
    bl      SITransfer
    b       branch_0x803511d0

branch_0x80351178:
    bl      OSDisableInterrupts
    addi    r30, r3, 0x0
    addi    r3, r29, 0x0
    bl      SIDisablePolling
    lwz     r6, R13Off_m0x589c(r13)
    not     r8, r29
    lwz     r5, R13Off_m0x5890(r13)
    mr      r3, r31
    lwz     r4, R13Off_m0x588c(r13)
    lwz     r0, R13Off_m0x5888(r13)
    and     r7, r6, r8
    and     r6, r5, r8
    stw     r7, R13Off_m0x589c(r13)
    and     r5, r4, r8
    and     r0, r0, r8
    stw     r6, R13Off_m0x5890(r13)
    li      r4, 0x0
    stw     r5, R13Off_m0x588c(r13)
    stw     r0, R13Off_m0x5888(r13)
    bl      OSSetWirelessID
    mr      r3, r30
    bl      OSRestoreInterrupts
branch_0x803511d0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl PADReset
PADReset: # 0x803511ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lwz     r4, R13Off_m0x5888(r13)
    li      r7, 0x0
    lwz     r5, R13Off_m0x5890(r13)
    addi    r31, r3, 0x0
    lwz     r0, R13Off_m0x588c(r13)
    or      r30, r30, r4
    lwz     r4, R13Off_m0x5898(r13)
    or      r5, r5, r0
    lwz     r0, R13Off_m0x731c(r13)
    andc    r30, r30, r5
    lwz     r5, R13Off_m0x589c(r13)
    or      r6, r4, r30
    stw     r7, R13Off_m0x5888(r13)
    andc    r4, r5, r30
    stw     r6, R13Off_m0x5898(r13)
    cmplwi  r0, 0x4
    lwz     r0, R13Off_m0x5898(r13)
    stw     r4, R13Off_m0x589c(r13)
    and     r3, r0, r5
    bne-    branch_0x80351264
    lwz     r0, R13Off_m0x5894(r13)
    or      r0, r0, r30
    stw     r0, R13Off_m0x5894(r13)
branch_0x80351264:
    bl      SIDisablePolling
    lwz     r0, R13Off_m0x7328(r13)
    cmpwi   r0, 0x20
    bne-    branch_0x803512c8
    lwz     r5, R13Off_m0x5898(r13)
    cntlzw  r0, r5
    stw     r0, R13Off_m0x7328(r13)
    lwz     r4, R13Off_m0x7328(r13)
    cmpwi   r4, 0x20
    beq-    branch_0x803512c8
    lis     r0, unk_80000000@h
    srw     r0, r0, r4
    andc    r0, r5, r0
    mulli   r4, r4, 0xc
    stw     r0, R13Off_m0x5898(r13)
    lis     r3, Origin@h
    addi    r0, r3, Origin@l
    add     r3, r0, r4
    addi    r4, r0, unk_80000000@l
    li      r5, 0xc
    bl      memset
    lis     r4, PADTypeAndStatusCallback@h
    lwz     r3, R13Off_m0x7328(r13)
    addi    r4, r4, PADTypeAndStatusCallback@l
    bl      SIGetTypeAsync
branch_0x803512c8:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl PADRecalibrate
PADRecalibrate: # 0x803512ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lwz     r6, R13Off_m0x5888(r13)
    li      r7, 0x0
    lwz     r5, R13Off_m0x5890(r13)
    lis     r4, 0x8000
    lwz     r0, R13Off_m0x588c(r13)
    or      r30, r30, r6
    lwz     r6, R13Off_m0x5898(r13)
    or      r5, r5, r0
    lbz     r0, 0x30e3(r4)
    andc    r30, r30, r5
    lwz     r5, R13Off_m0x589c(r13)
    or      r4, r6, r30
    stw     r7, R13Off_m0x5888(r13)
    rlwinm. r0, r0, 0, 25, 25
    stw     r4, R13Off_m0x5898(r13)
    andc    r4, r5, r30
    addi    r31, r3, 0x0
    lwz     r6, R13Off_m0x5898(r13)
    stw     r4, R13Off_m0x589c(r13)
    and     r3, r6, r5
    bne-    branch_0x80351368
    lwz     r0, R13Off_m0x5894(r13)
    or      r0, r0, r30
    stw     r0, R13Off_m0x5894(r13)
branch_0x80351368:
    bl      SIDisablePolling
    lwz     r0, R13Off_m0x7328(r13)
    cmpwi   r0, 0x20
    bne-    branch_0x803513cc
    lwz     r5, R13Off_m0x5898(r13)
    cntlzw  r0, r5
    stw     r0, R13Off_m0x7328(r13)
    lwz     r4, R13Off_m0x7328(r13)
    cmpwi   r4, 0x20
    beq-    branch_0x803513cc
    lis     r0, unk_80000000@h
    srw     r0, r0, r4
    andc    r0, r5, r0
    mulli   r4, r4, 0xc
    stw     r0, R13Off_m0x5898(r13)
    lis     r3, Origin@h
    addi    r0, r3, Origin@l
    add     r3, r0, r4
    addi    r4, r0, unk_80000000@l
    li      r5, 0xc
    bl      memset
    lis     r4, PADTypeAndStatusCallback@h
    lwz     r3, R13Off_m0x7328(r13)
    addi    r4, r4, PADTypeAndStatusCallback@l
    bl      SIGetTypeAsync
branch_0x803513cc:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl PADInit
PADInit: # 0x803513f0
    mflr    r0
    lis     r3, Type_80403410@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r31, r3, Type_80403410@l
    lwz     r0, R13Off_m0x58a0(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8035141c
    li      r3, 0x1
    b       branch_0x803515ec

branch_0x8035141c:
    lwz     r3, R13Off_m0x587c(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x8035142c
    bl      PADSetSpec
branch_0x8035142c:
    lwz     r0, R13Off_m0x5768(r13)
    li      r3, 0x1
    stw     r3, R13Off_m0x58a0(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x803514c8
    bl      OSGetTime
    addi    r25, r4, 0x0
    addi    r26, r3, 0x0
    li      r5, 0x10
    bl      __shr2i
    lis     r5, unk_0000ffff@ha
    addi    r27, r5, unk_0000ffff@l
    li      r28, 0x0
    and     r6, r4, r27
    and     r4, r25, r27
    and     r5, r3, r28
    and     r0, r26, r28
    addc    r29, r4, r6
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    adde    r30, r0, r5
    li      r5, 0x20
    bl      __shr2i
    and     r4, r4, r27
    and     r0, r3, r28
    addc    r29, r4, r29
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    adde    r30, r0, r30
    li      r5, 0x30
    bl      __shr2i
    and     r0, r4, r27
    addc    r5, r0, r29
    lis     r0, unk_f0003fff@h
    addi    r4, r0, unk_f0003fff@l
    stw     r0, R13Off_m0x5894(r13)
    and     r0, r5, r4
    lis     r3, 0x8000
    sth     r0, 0x30e0(r3)
branch_0x803514c8:
    lis     r3, 0x8000
    lhz     r0, 0x30e0(r3)
    clrlslwi  r0, r0, 18, 8
    oris    r0, r0, 0x4d00
    stw     r0, 0x40(r31)
    lhz     r0, 0x30e0(r3)
    clrlslwi  r0, r0, 18, 8
    oris    r0, r0, 0x4d40
    stw     r0, 0x44(r31)
    lhz     r0, 0x30e0(r3)
    clrlslwi  r0, r0, 18, 8
    oris    r0, r0, 0x4d80
    stw     r0, 0x48(r31)
    lhz     r0, 0x30e0(r3)
    clrlslwi  r0, r0, 18, 8
    oris    r0, r0, 0x4dc0
    stw     r0, 0x4c(r31)
    bl      SIRefreshSamplingRate
    lis     r3, ResetFunctionInfo_803e8a78@ha
    addi    r3, r3, ResetFunctionInfo_803e8a78@l
    bl      OSRegisterResetFunction
    lis     r28, 0xf000
    bl      OSDisableInterrupts
    lwz     r4, R13Off_m0x5888(r13)
    li      r7, 0x0
    lwz     r5, R13Off_m0x5890(r13)
    addi    r27, r3, 0x0
    lwz     r0, R13Off_m0x588c(r13)
    or      r28, r28, r4
    lwz     r4, R13Off_m0x5898(r13)
    or      r5, r5, r0
    lwz     r0, R13Off_m0x731c(r13)
    andc    r28, r28, r5
    lwz     r5, R13Off_m0x589c(r13)
    or      r6, r4, r28
    stw     r7, R13Off_m0x5888(r13)
    andc    r4, r5, r28
    stw     r6, R13Off_m0x5898(r13)
    cmplwi  r0, 0x4
    lwz     r0, R13Off_m0x5898(r13)
    stw     r4, R13Off_m0x589c(r13)
    and     r3, r0, r5
    bne-    branch_0x80351580
    lwz     r0, R13Off_m0x5894(r13)
    or      r0, r0, r28
    stw     r0, R13Off_m0x5894(r13)
branch_0x80351580:
    bl      SIDisablePolling
    lwz     r0, R13Off_m0x7328(r13)
    cmpwi   r0, 0x20
    bne-    branch_0x803515e0
    lwz     r5, R13Off_m0x5898(r13)
    cntlzw  r0, r5
    stw     r0, R13Off_m0x7328(r13)
    lwz     r4, R13Off_m0x7328(r13)
    cmpwi   r4, 0x20
    beq-    branch_0x803515e0
    lis     r3, 0x8000
    mulli   r0, r4, 0xc
    srw     r3, r3, r4
    andc    r4, r5, r3
    add     r3, r31, r0
    stw     r4, R13Off_m0x5898(r13)
    li      r4, 0x0
    li      r5, 0xc
    addi    r3, r3, 0x10
    bl      memset
    lis     r4, PADTypeAndStatusCallback@h
    lwz     r3, R13Off_m0x7328(r13)
    addi    r4, r4, PADTypeAndStatusCallback@l
    bl      SIGetTypeAsync
branch_0x803515e0:
    mr      r3, r27
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x803515ec:
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl PADRead
PADRead: # 0x80351600
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r20, 0x20(sp)
    mr      r31, r3
    bl      OSDisableInterrupts
    li      r21, 0x0
    mulli   r0, r21, 0xc
    lis     r4, Origin@h
    addi    r26, r4, Origin@l
    lis     r4, PADOriginUpdateCallback@h
    lis     r5, PADReceiveCheckCallback@h
    lis     r6, PADTypeAndStatusCallback@h
    add     r24, r26, r0
    addi    r22, r3, 0x0
    addi    r30, r4, PADOriginUpdateCallback@l
    addi    r29, r5, PADReceiveCheckCallback@l
    addi    r28, r6, PADTypeAndStatusCallback@l
    li      r20, 0x0
    lis     r27, 0x8000
branch_0x80351650:
    lwz     r0, R13Off_m0x5888(r13)
    srw     r23, r27, r21
    and.    r0, r0, r23
    beq-    branch_0x80351734
    bl      OSDisableInterrupts
    lwz     r4, R13Off_m0x5890(r13)
    li      r6, 0x0
    lwz     r0, R13Off_m0x588c(r13)
    mr      r25, r3
    lwz     r5, R13Off_m0x5888(r13)
    or      r4, r4, r0
    lwz     r0, R13Off_m0x5898(r13)
    andc    r7, r5, r4
    lwz     r5, R13Off_m0x589c(r13)
    or      r4, r0, r7
    lwz     r0, R13Off_m0x731c(r13)
    stw     r4, R13Off_m0x5898(r13)
    andc    r4, r5, r7
    cmplwi  r0, 0x4
    lwz     r0, R13Off_m0x5898(r13)
    stw     r6, R13Off_m0x5888(r13)
    and     r3, r0, r5
    stw     r4, R13Off_m0x589c(r13)
    bne-    branch_0x803516bc
    lwz     r0, R13Off_m0x5894(r13)
    or      r0, r0, r7
    stw     r0, R13Off_m0x5894(r13)
branch_0x803516bc:
    bl      SIDisablePolling
    lwz     r0, R13Off_m0x7328(r13)
    cmpwi   r0, 0x20
    bne-    branch_0x80351710
    lwz     r4, R13Off_m0x5898(r13)
    cntlzw  r0, r4
    stw     r0, R13Off_m0x7328(r13)
    lwz     r3, R13Off_m0x7328(r13)
    cmpwi   r3, 0x20
    beq-    branch_0x80351710
    mulli   r0, r3, 0xc
    srw     r3, r27, r3
    andc    r4, r4, r3
    stw     r4, R13Off_m0x5898(r13)
    add     r3, r26, r0
    li      r4, 0x0
    li      r5, 0xc
    bl      memset
    lwz     r3, R13Off_m0x7328(r13)
    mr      r4, r28
    bl      SIGetTypeAsync
branch_0x80351710:
    mr      r3, r25
    bl      OSRestoreInterrupts
    li      r0, -0x2
    stb     r0, 0xa(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0xa
    bl      memset
    b       branch_0x80351978

branch_0x80351734:
    lwz     r0, R13Off_m0x5898(r13)
    and.    r0, r0, r23
    bne-    branch_0x8035174c
    lwz     r0, R13Off_m0x7328(r13)
    cmpw    r0, r21
    bne-    branch_0x80351768
branch_0x8035174c:
    li      r0, -0x2
    stb     r0, 0xa(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0xa
    bl      memset
    b       branch_0x80351978

branch_0x80351768:
    lwz     r0, R13Off_m0x589c(r13)
    and.    r0, r0, r23
    bne-    branch_0x80351790
    li      r0, -0x1
    stb     r0, 0xa(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0xa
    bl      memset
    b       branch_0x80351978

branch_0x80351790:
    mr      r3, r21
    bl      SIIsChanBusy
    cmpwi   r3, 0x0
    beq-    branch_0x803517bc
    li      r0, -0x3
    stb     r0, 0xa(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0xa
    bl      memset
    b       branch_0x80351978

branch_0x803517bc:
    mr      r3, r21
    bl      SIGetStatus
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80351894
    addi    r3, r21, 0x0
    addi    r4, sp, 0x14
    bl      SIGetResponse
    lwz     r0, R13Off_m0x5890(r13)
    and.    r0, r0, r23
    beq-    branch_0x80351820
    li      r0, 0x0
    stb     r0, 0xa(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0xa
    bl      memset
    lwz     r3, R13Off_m0x588c(r13)
    and.    r0, r3, r23
    bne-    branch_0x80351978
    or      r0, r3, r23
    stw     r0, R13Off_m0x588c(r13)
    addi    r3, r21, 0x0
    addi    r4, r29, 0x0
    bl      SIGetTypeAsync
    b       branch_0x80351978

branch_0x80351820:
    bl      OSDisableInterrupts
    addi    r25, r3, 0x0
    addi    r3, r23, 0x0
    bl      SIDisablePolling
    lwz     r6, R13Off_m0x589c(r13)
    not     r8, r23
    lwz     r5, R13Off_m0x5890(r13)
    mr      r3, r21
    lwz     r4, R13Off_m0x588c(r13)
    lwz     r0, R13Off_m0x5888(r13)
    and     r7, r6, r8
    and     r6, r5, r8
    stw     r7, R13Off_m0x589c(r13)
    and     r5, r4, r8
    and     r0, r0, r8
    stw     r6, R13Off_m0x5890(r13)
    li      r4, 0x0
    stw     r5, R13Off_m0x588c(r13)
    stw     r0, R13Off_m0x5888(r13)
    bl      OSSetWirelessID
    mr      r3, r25
    bl      OSRestoreInterrupts
    li      r0, -0x1
    stb     r0, 0xa(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0xa
    bl      memset
    b       branch_0x80351978

branch_0x80351894:
    mr      r3, r21
    bl      SIGetType
    rlwinm. r0, r3, 0, 2, 2
    bne-    branch_0x803518a8
    or      r20, r20, r23
branch_0x803518a8:
    addi    r3, r21, 0x0
    addi    r4, sp, 0x14
    bl      SIGetResponse
    cmpwi   r3, 0x0
    bne-    branch_0x803518d8
    li      r0, -0x3
    stb     r0, 0xa(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0xa
    bl      memset
    b       branch_0x80351978

branch_0x803518d8:
    lwz     r0, 0x14(sp)
    clrrwi. r0, r0, 31
    beq-    branch_0x80351900
    li      r0, -0x3
    stb     r0, 0xa(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0xa
    bl      memset
    b       branch_0x80351978

branch_0x80351900:
    lwz     r12, R13Off_m0x7318(r13)
    addi    r3, r21, 0x0
    addi    r4, r31, 0x0
    mtlr    r12
    addi    r5, sp, 0x14
    blrl
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80351964
    li      r0, -0x3
    stb     r0, 0xa(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0xa
    bl      memset
    addi    r3, r21, 0x0
    addi    r6, r24, 0x0
    addi    r8, r30, 0x0
    addi    r4, r13, R13Off_m0x7314
    li      r5, 0x1
    li      r7, 0xa
    li      r10, 0x0
    li      r9, 0x0
    bl      SITransfer
    b       branch_0x80351978

branch_0x80351964:
    li      r0, 0x0
    stb     r0, 0xa(r31)
    lhz     r0, 0x0(r31)
    rlwinm  r0, r0, 0, 25, 23
    sth     r0, 0x0(r31)
branch_0x80351978:
    addi    r21, r21, 0x1
    cmpwi   r21, 0x4
    addi    r24, r24, 0xc
    addi    r31, r31, 0xc
    blt+    branch_0x80351650
    mr      r3, r22
    bl      OSRestoreInterrupts
    mr      r3, r20
    lmw     r20, 0x20(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl PADControlMotor
PADControlMotor: # 0x803519ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      OSDisableInterrupts
    lis     r0, 0x8000
    lwz     r4, R13Off_m0x589c(r13)
    srw     r0, r0, r29
    and.    r0, r4, r0
    addi    r31, r3, 0x0
    beq-    branch_0x80351a2c
    mr      r3, r29
    bl      SIGetType
    rlwinm. r0, r3, 0, 2, 2
    bne-    branch_0x80351a2c
    lwz     r0, R13Off_m0x731c(r13)
    cmplwi  r0, 0x2
    bge-    branch_0x80351a10
    cmplwi  r30, 0x2
    bne-    branch_0x80351a10
    li      r30, 0x0
branch_0x80351a10:
    lwz     r4, R13Off_m0x7320(r13)
    clrlwi  r0, r30, 30
    addi    r3, r29, 0x0
    oris    r4, r4, 0x40
    or      r4, r4, r0
    bl      SISetCommand
    bl      SITransferCommands
branch_0x80351a2c:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl PADSetSpec
PADSetSpec: # 0x80351a50
    li      r0, 0x0
    cmpwi   r3, 0x1
    stw     r0, R13Off_m0x587c(r13)
    beq-    branch_0x80351a8c
    bge-    branch_0x80351a70
    cmpwi   r3, 0x0
    bge-    branch_0x80351a7c
    b       branch_0x80351aa8

branch_0x80351a70:
    cmpwi   r3, 0x6
    bge-    branch_0x80351aa8
    b       branch_0x80351a9c

branch_0x80351a7c:
    lis     r4, SPEC0_MakeStatus@h
    addi    r0, r4, SPEC0_MakeStatus@l
    stw     r0, R13Off_m0x7318(r13)
    b       branch_0x80351aa8

branch_0x80351a8c:
    lis     r4, SPEC1_MakeStatus@h
    addi    r0, r4, SPEC1_MakeStatus@l
    stw     r0, R13Off_m0x7318(r13)
    b       branch_0x80351aa8

branch_0x80351a9c:
    lis     r4, SPEC2_MakeStatus@h
    addi    r0, r4, SPEC2_MakeStatus@l
    stw     r0, R13Off_m0x7318(r13)
branch_0x80351aa8:
    stw     r3, R13Off_m0x731c(r13)
    blr


.globl SPEC0_MakeStatus
SPEC0_MakeStatus: # 0x80351ab0
    li      r3, 0x0
    sth     r3, 0x0(r4)
    lwz     r0, 0x0(r5)
    rlwinm. r0, r0, 16, 28, 28
    beq-    branch_0x80351ac8
    li      r3, 0x100
branch_0x80351ac8:
    lhz     r0, 0x0(r4)
    or      r0, r0, r3
    sth     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    rlwinm. r0, r0, 16, 26, 26
    beq-    branch_0x80351ae8
    li      r3, 0x200
    b       branch_0x80351aec

branch_0x80351ae8:
    li      r3, 0x0
branch_0x80351aec:
    lhz     r0, 0x0(r4)
    or      r0, r0, r3
    sth     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    rlwinm. r0, r0, 16, 23, 23
    beq-    branch_0x80351b0c
    li      r3, 0x400
    b       branch_0x80351b10

branch_0x80351b0c:
    li      r3, 0x0
branch_0x80351b10:
    lhz     r0, 0x0(r4)
    or      r0, r0, r3
    sth     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    extrwi. r0, r0, 1, 15
    beq-    branch_0x80351b30
    li      r3, 0x800
    b       branch_0x80351b34

branch_0x80351b30:
    li      r3, 0x0
branch_0x80351b34:
    lhz     r0, 0x0(r4)
    or      r0, r0, r3
    sth     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    rlwinm. r0, r0, 16, 27, 27
    beq-    branch_0x80351b54
    li      r6, 0x1000
    b       branch_0x80351b58

branch_0x80351b54:
    li      r6, 0x0
branch_0x80351b58:
    lhz     r3, 0x0(r4)
    li      r0, 0x0
    or      r3, r3, r6
    sth     r3, 0x0(r4)
    lwz     r3, 0x4(r5)
    srwi    r3, r3, 16
    extsb   r3, r3
    stb     r3, 0x2(r4)
    lwz     r3, 0x4(r5)
    srwi    r3, r3, 24
    extsb   r3, r3
    stb     r3, 0x3(r4)
    lwz     r3, 0x4(r5)
    extsb   r3, r3
    stb     r3, 0x4(r4)
    lwz     r3, 0x4(r5)
    srwi    r3, r3, 8
    extsb   r3, r3
    stb     r3, 0x5(r4)
    lwz     r3, 0x0(r5)
    extrwi  r3, r3, 8, 16
    stb     r3, 0x6(r4)
    lwz     r3, 0x0(r5)
    stb     r3, 0x7(r4)
    stb     r0, 0x8(r4)
    stb     r0, 0x9(r4)
    lbz     r0, 0x6(r4)
    cmplwi  r0, 0xaa
    blt-    branch_0x80351bd8
    lhz     r0, 0x0(r4)
    ori     r0, r0, 0x40
    sth     r0, 0x0(r4)
branch_0x80351bd8:
    lbz     r0, 0x7(r4)
    cmplwi  r0, 0xaa
    blt-    branch_0x80351bf0
    lhz     r0, 0x0(r4)
    ori     r0, r0, 0x20
    sth     r0, 0x0(r4)
branch_0x80351bf0:
    lbz     r3, 0x2(r4)
    addi    r0, r3, -0x80
    stb     r0, 0x2(r4)
    lbz     r3, 0x3(r4)
    addi    r0, r3, -0x80
    stb     r0, 0x3(r4)
    lbz     r3, 0x4(r4)
    addi    r0, r3, -0x80
    stb     r0, 0x4(r4)
    lbz     r3, 0x5(r4)
    addi    r0, r3, -0x80
    stb     r0, 0x5(r4)
    blr


.globl SPEC1_MakeStatus
SPEC1_MakeStatus: # 0x80351c24
    li      r3, 0x0
    sth     r3, 0x0(r4)
    lwz     r0, 0x0(r5)
    rlwinm. r0, r0, 16, 24, 24
    beq-    branch_0x80351c3c
    li      r3, 0x100
branch_0x80351c3c:
    lhz     r0, 0x0(r4)
    or      r0, r0, r3
    sth     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    rlwinm. r0, r0, 16, 23, 23
    beq-    branch_0x80351c5c
    li      r3, 0x200
    b       branch_0x80351c60

branch_0x80351c5c:
    li      r3, 0x0
branch_0x80351c60:
    lhz     r0, 0x0(r4)
    or      r0, r0, r3
    sth     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    rlwinm. r0, r0, 16, 26, 26
    beq-    branch_0x80351c80
    li      r3, 0x400
    b       branch_0x80351c84

branch_0x80351c80:
    li      r3, 0x0
branch_0x80351c84:
    lhz     r0, 0x0(r4)
    or      r0, r0, r3
    sth     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    rlwinm. r0, r0, 16, 27, 27
    beq-    branch_0x80351ca4
    li      r3, 0x800
    b       branch_0x80351ca8

branch_0x80351ca4:
    li      r3, 0x0
branch_0x80351ca8:
    lhz     r0, 0x0(r4)
    or      r0, r0, r3
    sth     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    rlwinm. r0, r0, 16, 22, 22
    beq-    branch_0x80351cc8
    li      r6, 0x1000
    b       branch_0x80351ccc

branch_0x80351cc8:
    li      r6, 0x0
branch_0x80351ccc:
    lhz     r3, 0x0(r4)
    li      r0, 0x0
    or      r3, r3, r6
    sth     r3, 0x0(r4)
    lwz     r3, 0x4(r5)
    srwi    r3, r3, 16
    extsb   r3, r3
    stb     r3, 0x2(r4)
    lwz     r3, 0x4(r5)
    srwi    r3, r3, 24
    extsb   r3, r3
    stb     r3, 0x3(r4)
    lwz     r3, 0x4(r5)
    extsb   r3, r3
    stb     r3, 0x4(r4)
    lwz     r3, 0x4(r5)
    srwi    r3, r3, 8
    extsb   r3, r3
    stb     r3, 0x5(r4)
    lwz     r3, 0x0(r5)
    extrwi  r3, r3, 8, 16
    stb     r3, 0x6(r4)
    lwz     r3, 0x0(r5)
    stb     r3, 0x7(r4)
    stb     r0, 0x8(r4)
    stb     r0, 0x9(r4)
    lbz     r0, 0x6(r4)
    cmplwi  r0, 0xaa
    blt-    branch_0x80351d4c
    lhz     r0, 0x0(r4)
    ori     r0, r0, 0x40
    sth     r0, 0x0(r4)
branch_0x80351d4c:
    lbz     r0, 0x7(r4)
    cmplwi  r0, 0xaa
    blt-    branch_0x80351d64
    lhz     r0, 0x0(r4)
    ori     r0, r0, 0x20
    sth     r0, 0x0(r4)
branch_0x80351d64:
    lbz     r3, 0x2(r4)
    addi    r0, r3, -0x80
    stb     r0, 0x2(r4)
    lbz     r3, 0x3(r4)
    addi    r0, r3, -0x80
    stb     r0, 0x3(r4)
    lbz     r3, 0x4(r4)
    addi    r0, r3, -0x80
    stb     r0, 0x4(r4)
    lbz     r3, 0x5(r4)
    addi    r0, r3, -0x80
    stb     r0, 0x5(r4)
    blr


.globl SPEC2_MakeStatus
SPEC2_MakeStatus: # 0x80351d98
    lwz     r0, 0x0(r5)
    extrwi  r0, r0, 14, 2
    sth     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    srwi    r0, r0, 8
    extsb   r0, r0
    stb     r0, 0x2(r4)
    lwz     r0, 0x0(r5)
    extsb   r0, r0
    stb     r0, 0x3(r4)
    lwz     r0, R13Off_m0x7320(r13)
    rlwinm  r0, r0, 0, 21, 23
    cmpwi   r0, 0x400
    beq-    branch_0x80351f64
    bge-    branch_0x80351e04
    cmpwi   r0, 0x200
    beq-    branch_0x80351ed0
    bge-    branch_0x80351df8
    cmpwi   r0, 0x100
    beq-    branch_0x80351e7c
    bge-    branch_0x80351fa4
    cmpwi   r0, 0x0
    beq-    branch_0x80351e28
    b       branch_0x80351fa4

branch_0x80351df8:
    cmpwi   r0, 0x300
    beq-    branch_0x80351f20
    b       branch_0x80351fa4

branch_0x80351e04:
    cmpwi   r0, 0x600
    beq-    branch_0x80351e28
    bge-    branch_0x80351e1c
    cmpwi   r0, 0x500
    beq-    branch_0x80351e28
    b       branch_0x80351fa4

branch_0x80351e1c:
    cmpwi   r0, 0x700
    beq-    branch_0x80351e28
    b       branch_0x80351fa4

branch_0x80351e28:
    lwz     r0, 0x4(r5)
    srwi    r0, r0, 24
    extsb   r0, r0
    stb     r0, 0x4(r4)
    lwz     r0, 0x4(r5)
    srwi    r0, r0, 16
    extsb   r0, r0
    stb     r0, 0x5(r4)
    lwz     r0, 0x4(r5)
    rlwinm  r0, r0, 24, 24, 27
    stb     r0, 0x6(r4)
    lwz     r0, 0x4(r5)
    rlwinm  r0, r0, 28, 24, 27
    stb     r0, 0x7(r4)
    lwz     r0, 0x4(r5)
    rlwinm  r0, r0, 0, 24, 27
    stb     r0, 0x8(r4)
    lwz     r0, 0x4(r5)
    clrlslwi  r0, r0, 28, 4
    stb     r0, 0x9(r4)
    b       branch_0x80351fa4

branch_0x80351e7c:
    lwz     r0, 0x4(r5)
    rlwinm  r0, r0, 8, 24, 27
    extsb   r0, r0
    stb     r0, 0x4(r4)
    lwz     r0, 0x4(r5)
    rlwinm  r0, r0, 12, 24, 27
    extsb   r0, r0
    stb     r0, 0x5(r4)
    lwz     r0, 0x4(r5)
    extrwi  r0, r0, 8, 8
    stb     r0, 0x6(r4)
    lwz     r0, 0x4(r5)
    extrwi  r0, r0, 8, 16
    stb     r0, 0x7(r4)
    lwz     r0, 0x4(r5)
    rlwinm  r0, r0, 0, 24, 27
    stb     r0, 0x8(r4)
    lwz     r0, 0x4(r5)
    clrlslwi  r0, r0, 28, 4
    stb     r0, 0x9(r4)
    b       branch_0x80351fa4

branch_0x80351ed0:
    lwz     r0, 0x4(r5)
    rlwinm  r0, r0, 8, 24, 27
    extsb   r0, r0
    stb     r0, 0x4(r4)
    lwz     r0, 0x4(r5)
    rlwinm  r0, r0, 12, 24, 27
    extsb   r0, r0
    stb     r0, 0x5(r4)
    lwz     r0, 0x4(r5)
    rlwinm  r0, r0, 16, 24, 27
    stb     r0, 0x6(r4)
    lwz     r0, 0x4(r5)
    rlwinm  r0, r0, 20, 24, 27
    stb     r0, 0x7(r4)
    lwz     r0, 0x4(r5)
    extrwi  r0, r0, 8, 16
    stb     r0, 0x8(r4)
    lwz     r0, 0x4(r5)
    stb     r0, 0x9(r4)
    b       branch_0x80351fa4

branch_0x80351f20:
    lwz     r6, 0x4(r5)
    li      r0, 0x0
    srwi    r6, r6, 24
    extsb   r6, r6
    stb     r6, 0x4(r4)
    lwz     r6, 0x4(r5)
    srwi    r6, r6, 16
    extsb   r6, r6
    stb     r6, 0x5(r4)
    lwz     r6, 0x4(r5)
    extrwi  r6, r6, 8, 16
    stb     r6, 0x6(r4)
    lwz     r5, 0x4(r5)
    stb     r5, 0x7(r4)
    stb     r0, 0x8(r4)
    stb     r0, 0x9(r4)
    b       branch_0x80351fa4

branch_0x80351f64:
    lwz     r6, 0x4(r5)
    li      r0, 0x0
    srwi    r6, r6, 24
    extsb   r6, r6
    stb     r6, 0x4(r4)
    lwz     r6, 0x4(r5)
    srwi    r6, r6, 16
    extsb   r6, r6
    stb     r6, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    lwz     r0, 0x4(r5)
    extrwi  r0, r0, 8, 16
    stb     r0, 0x8(r4)
    lwz     r0, 0x4(r5)
    stb     r0, 0x9(r4)
branch_0x80351fa4:
    lbz     r6, 0x2(r4)
    lis     r5, Origin@h
    mulli   r3, r3, 0xc
    addi    r0, r6, -0x80
    stb     r0, 0x2(r4)
    addi    r0, r5, Origin@l
    add     r3, r0, r3
    lbz     r5, 0x3(r4)
    addi    r0, r5, -0x80
    stb     r0, 0x3(r4)
    lbz     r5, 0x4(r4)
    addi    r0, r5, -0x80
    stb     r0, 0x4(r4)
    lbz     r5, 0x5(r4)
    addi    r0, r5, -0x80
    stb     r0, 0x5(r4)
    lbz     r7, 0x2(r3)
    lbz     r6, 0x2(r4)
    extsb.  r0, r7
    ble-    branch_0x80352014
    extsb   r5, r7
    addi    r0, r5, -0x80
    extsb   r5, r0
    extsb   r0, r6
    cmpw    r0, r5
    bge-    branch_0x80352038
    mr      r6, r5
    b       branch_0x80352038

branch_0x80352014:
    extsb.  r0, r7
    bge-    branch_0x80352038
    extsb   r5, r7
    addi    r0, r5, 0x7f
    extsb   r5, r0
    extsb   r0, r6
    cmpw    r5, r0
    bge-    branch_0x80352038
    mr      r6, r5
branch_0x80352038:
    subf    r6, r7, r6
    stb     r6, 0x2(r4)
    lbz     r7, 0x3(r3)
    lbz     r6, 0x3(r4)
    extsb.  r0, r7
    ble-    branch_0x80352070
    extsb   r5, r7
    addi    r0, r5, -0x80
    extsb   r5, r0
    extsb   r0, r6
    cmpw    r0, r5
    bge-    branch_0x80352094
    mr      r6, r5
    b       branch_0x80352094

branch_0x80352070:
    extsb.  r0, r7
    bge-    branch_0x80352094
    extsb   r5, r7
    addi    r0, r5, 0x7f
    extsb   r5, r0
    extsb   r0, r6
    cmpw    r5, r0
    bge-    branch_0x80352094
    mr      r6, r5
branch_0x80352094:
    subf    r6, r7, r6
    stb     r6, 0x3(r4)
    lbz     r7, 0x4(r3)
    lbz     r6, 0x4(r4)
    extsb.  r0, r7
    ble-    branch_0x803520cc
    extsb   r5, r7
    addi    r0, r5, -0x80
    extsb   r5, r0
    extsb   r0, r6
    cmpw    r0, r5
    bge-    branch_0x803520f0
    mr      r6, r5
    b       branch_0x803520f0

branch_0x803520cc:
    extsb.  r0, r7
    bge-    branch_0x803520f0
    extsb   r5, r7
    addi    r0, r5, 0x7f
    extsb   r5, r0
    extsb   r0, r6
    cmpw    r5, r0
    bge-    branch_0x803520f0
    mr      r6, r5
branch_0x803520f0:
    subf    r6, r7, r6
    stb     r6, 0x4(r4)
    lbz     r7, 0x5(r3)
    lbz     r6, 0x5(r4)
    extsb.  r0, r7
    ble-    branch_0x80352128
    extsb   r5, r7
    addi    r0, r5, -0x80
    extsb   r5, r0
    extsb   r0, r6
    cmpw    r0, r5
    bge-    branch_0x8035214c
    mr      r6, r5
    b       branch_0x8035214c

branch_0x80352128:
    extsb.  r0, r7
    bge-    branch_0x8035214c
    extsb   r5, r7
    addi    r0, r5, 0x7f
    extsb   r5, r0
    extsb   r0, r6
    cmpw    r5, r0
    bge-    branch_0x8035214c
    mr      r6, r5
branch_0x8035214c:
    subf    r6, r7, r6
    stb     r6, 0x5(r4)
    lbz     r0, 0x6(r3)
    lbz     r5, 0x6(r4)
    cmplw   r5, r0
    bge-    branch_0x80352168
    mr      r5, r0
branch_0x80352168:
    subf    r5, r0, r5
    stb     r5, 0x6(r4)
    lbz     r0, 0x7(r3)
    lbz     r3, 0x7(r4)
    cmplw   r3, r0
    bge-    branch_0x80352184
    mr      r3, r0
branch_0x80352184:
    subf    r3, r0, r3
    stb     r3, 0x7(r4)
    blr


.globl PADSetAnalogMode
PADSetAnalogMode: # 0x80352190
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      OSDisableInterrupts
    lwz     r5, R13Off_m0x589c(r13)
    slwi    r6, r31, 8
    lwz     r4, R13Off_m0x5890(r13)
    mr      r31, r3
    addi    r8, r5, 0x0
    not     r7, r8
    lwz     r0, R13Off_m0x588c(r13)
    andc    r5, r5, r5
    stw     r6, R13Off_m0x7320(r13)
    and     r4, r4, r7
    and     r0, r0, r7
    stw     r5, R13Off_m0x589c(r13)
    mr      r3, r8
    stw     r4, R13Off_m0x5890(r13)
    stw     r0, R13Off_m0x588c(r13)
    bl      SIDisablePolling
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OnReset_80352204
OnReset_80352204: # 0x80352204
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lwz     r0, R13Off_m0x5884(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80352230
    li      r3, 0x0
    bl      PADSetSamplingCallback
branch_0x80352230:
    cmpwi   r30, 0x0
    bne-    branch_0x80352374
    lwz     r0, R13Off_m0x5898(r13)
    li      r30, 0x0
    addi    r3, r30, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8035225c
    lwz     r0, R13Off_m0x7328(r13)
    cmpwi   r0, 0x20
    bne-    branch_0x8035225c
    li      r3, 0x1
branch_0x8035225c:
    cmpwi   r3, 0x0
    beq-    branch_0x80352274
    bl      SIBusy
    cmpwi   r3, 0x0
    bne-    branch_0x80352274
    li      r30, 0x1
branch_0x80352274:
    lwz     r0, R13Off_m0x5880(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8035236c
    cmpwi   r30, 0x0
    beq-    branch_0x8035236c
    lis     r30, 0xf000
    bl      OSDisableInterrupts
    lwz     r6, R13Off_m0x5888(r13)
    li      r7, 0x0
    lwz     r5, R13Off_m0x5890(r13)
    lis     r4, 0x8000
    lwz     r0, R13Off_m0x588c(r13)
    or      r30, r30, r6
    lwz     r6, R13Off_m0x5898(r13)
    or      r5, r5, r0
    lbz     r0, 0x30e3(r4)
    andc    r30, r30, r5
    lwz     r5, R13Off_m0x589c(r13)
    or      r4, r6, r30
    stw     r7, R13Off_m0x5888(r13)
    rlwinm. r0, r0, 0, 25, 25
    stw     r4, R13Off_m0x5898(r13)
    andc    r4, r5, r30
    addi    r31, r3, 0x0
    lwz     r6, R13Off_m0x5898(r13)
    stw     r4, R13Off_m0x589c(r13)
    and     r3, r6, r5
    bne-    branch_0x803522f0
    lwz     r0, R13Off_m0x5894(r13)
    or      r0, r0, r30
    stw     r0, R13Off_m0x5894(r13)
branch_0x803522f0:
    bl      SIDisablePolling
    lwz     r0, R13Off_m0x7328(r13)
    cmpwi   r0, 0x20
    bne-    branch_0x80352354
    lwz     r5, R13Off_m0x5898(r13)
    cntlzw  r0, r5
    stw     r0, R13Off_m0x7328(r13)
    lwz     r4, R13Off_m0x7328(r13)
    cmpwi   r4, 0x20
    beq-    branch_0x80352354
    lis     r0, unk_80000000@h
    srw     r0, r0, r4
    andc    r0, r5, r0
    mulli   r4, r4, 0xc
    stw     r0, R13Off_m0x5898(r13)
    lis     r3, Origin@h
    addi    r0, r3, Origin@l
    add     r3, r0, r4
    addi    r4, r0, unk_80000000@l
    li      r5, 0xc
    bl      memset
    lis     r4, PADTypeAndStatusCallback@h
    lwz     r3, R13Off_m0x7328(r13)
    addi    r4, r4, PADTypeAndStatusCallback@l
    bl      SIGetTypeAsync
branch_0x80352354:
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r0, 0x1
    stw     r0, R13Off_m0x5880(r13)
    li      r3, 0x0
    b       branch_0x80352380

branch_0x8035236c:
    mr      r3, r30
    b       branch_0x80352380

branch_0x80352374:
    li      r0, 0x0
    stw     r0, R13Off_m0x5880(r13)
    li      r3, 0x1
branch_0x80352380:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl SamplingHandler
SamplingHandler: # 0x80352398
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2e0(sp)
    stw     r31, 0x2dc(sp)
    addi    r31, r4, 0x0
    lwz     r0, R13Off_m0x5884(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x803523e4
    addi    r3, sp, 0x10
    bl      OSClearContext
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    lwz     r12, R13Off_m0x5884(r13)
    mtlr    r12
    blrl
    addi    r3, sp, 0x10
    bl      OSClearContext
    mr      r3, r31
    bl      OSSetCurrentContext
branch_0x803523e4:
    lwz     r0, 0x2e4(sp)
    lwz     r31, 0x2dc(sp)
    addi    sp, sp, 0x2e0
    mtlr    r0
    blr


.globl PADSetSamplingCallback
PADSetSamplingCallback: # 0x803523f8
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r31, R13Off_m0x5884(r13)
    stw     r3, R13Off_m0x5884(r13)
    beq-    branch_0x80352428
    lis     r3, SamplingHandler@h
    addi    r3, r3, SamplingHandler@l
    bl      SIRegisterPollingHandler
    b       branch_0x80352434

branch_0x80352428:
    lis     r3, SamplingHandler@h
    addi    r3, r3, SamplingHandler@l
    bl      SIUnregisterPollingHandler
branch_0x80352434:
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __PADDisableRecalibration
__PADDisableRecalibration: # 0x8035244c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lis     r4, 0x8000
    lbz     r0, 0x30e3(r4)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80352480
    li      r31, 0x1
    b       branch_0x80352484

branch_0x80352480:
    li      r31, 0x0
branch_0x80352484:
    lis     r4, unk_80000000@h
    lbz     r0, 0x30e3(r4)
    andi.   r0, r0, 0xbf
    cmpwi   r30, 0x0
    stb     r0, 0x30e3(r4)
    beq-    branch_0x803524a8
    lbz     r0, 0x30e3(r4)
    ori     r0, r0, 0x40
    stb     r0, 0x30e3(r4)
branch_0x803524a8:
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

