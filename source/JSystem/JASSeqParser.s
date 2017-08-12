
.globl cmdOpenTrack__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdOpenTrack__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031f8f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    mr      r28, r4
    lwz     r3, 0x0(r5)
    lwz     r31, 0x4(r5)
    rlwinm. r0, r3, 0, 26, 26
    clrlwi  r30, r3, 28
    extrwi  r29, r3, 2, 24
    beq-    branch_0x8031f934
    li      r29, 0x4
branch_0x8031f934:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      openTrack__Q28JASystem6TTrackFUc
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    addi    r6, r29, 0x0
    addi    r7, r31, 0x0
    bl      startTrack__Q28JASystem6TTrackFPQ28JASystem6TTrackUcUcUl
    lwz     r0, 0x2c(sp)
    li      r3, 0x0
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl cmdOpenTrackBros__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdOpenTrackBros__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031f978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    lwz     r0, 0x2c0(r4)
    cmplwi  r0, 0x0
    mr      r31, r0
    bne-    branch_0x8031f9ac
    li      r3, 0x0
    b       branch_0x8031f9ec

branch_0x8031f9ac:
    lwz     r3, 0x0(r5)
    lwz     r30, 0x4(r5)
    rlwinm. r0, r3, 0, 26, 26
    clrlwi  r29, r3, 28
    extrwi  r28, r3, 2, 24
    beq-    branch_0x8031f9c8
    li      r28, 0x4
branch_0x8031f9c8:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      openTrack__Q28JASystem6TTrackFUc
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r6, r28, 0x0
    addi    r7, r30, 0x0
    bl      startTrack__Q28JASystem6TTrackFPQ28JASystem6TTrackUcUcUl
    li      r3, 0x0
branch_0x8031f9ec:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl cmdCall__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdCall__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fa0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    lwz     r4, 0x4(r4)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r31)
    lbz     r29, 0x0(r4)
    rlwinm. r0, r29, 0, 24, 24
    beq-    branch_0x8031fab8
    lwz     r4, 0x4(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x4(r31)
    lbz     r4, 0x0(r4)
    bl      readRegDirect__Q28JASystem6TTrackFUc
    rlwinm. r0, r29, 0, 25, 25
    clrlwi  r28, r3, 16
    beq-    branch_0x8031fac4
    rlwinm. r0, r29, 0, 26, 26
    beq-    branch_0x8031fa94
    lwz     r4, 0x4(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x4(r31)
    lbz     r4, 0x0(r4)
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r4, r3, 16
    b       branch_0x8031faa0

branch_0x8031fa94:
    mr      r3, r31
    bl      read24__Q28JASystem8TSeqCtrlFv
    mr      r4, r3
branch_0x8031faa0:
    mulli   r0, r28, 0x3
    addi    r3, r31, 0x0
    add     r4, r4, r0
    bl      get24__Q28JASystem8TSeqCtrlCFUl
    mr      r28, r3
    b       branch_0x8031fac4

branch_0x8031fab8:
    mr      r3, r31
    bl      read24__Q28JASystem8TSeqCtrlFv
    mr      r28, r3
branch_0x8031fac4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    bl      conditionCheck__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc
    clrlwi. r0, r3, 24
    beq-    branch_0x8031fb04
    lwz     r4, 0xc(r31)
    lwz     r5, 0x4(r31)
    addi    r3, r4, 0x1
    slwi    r0, r4, 2
    stw     r3, 0xc(r31)
    add     r3, r31, r0
    stw     r5, 0x10(r3)
    lwz     r0, 0x0(r31)
    add     r0, r0, r28
    stw     r0, 0x4(r31)
branch_0x8031fb04:
    lwz     r0, 0x2c(sp)
    li      r3, 0x0
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl cmdRet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdRet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fb28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    lwz     r0, 0x0(r5)
    clrlwi  r5, r0, 24
    bl      conditionCheck__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc
    clrlwi. r0, r3, 24
    beq-    branch_0x8031fb90
    lwz     r3, 0xc(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8031fb64
    li      r3, 0x0
    b       branch_0x8031fb80

branch_0x8031fb64:
    addi    r3, r3, -0x1
    slwi    r0, r3, 2
    stw     r3, 0xc(r31)
    add     r3, r31, r0
    lwz     r0, 0x10(r3)
    li      r3, 0x1
    stw     r0, 0x4(r31)
branch_0x8031fb80:
    clrlwi. r0, r3, 24
    bne-    branch_0x8031fb90
    li      r3, 0x3
    b       branch_0x8031fb94

branch_0x8031fb90:
    li      r3, 0x0
branch_0x8031fb94:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl cmdJmp__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdJmp__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fba8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    mr      r29, r4
    addi    r28, r3, 0x0
    li      r31, 0x0
    lwz     r4, 0x4(r4)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r29)
    lbz     r30, 0x0(r4)
    rlwinm. r0, r30, 0, 24, 24
    beq-    branch_0x8031fc80
    lwz     r3, 0x4(r29)
    rlwinm. r0, r30, 0, 25, 25
    addi    r0, r3, 0x1
    stw     r0, 0x4(r29)
    lbz     r0, 0x0(r3)
    mr      r4, r0
    beq-    branch_0x8031fc50
    mr      r3, r29
    bl      readRegDirect__Q28JASystem6TTrackFUc
    rlwinm. r0, r30, 0, 26, 26
    clrlwi  r27, r3, 16
    beq-    branch_0x8031fc2c
    lwz     r4, 0x4(r29)
    addi    r3, r29, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x4(r29)
    lbz     r4, 0x0(r4)
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r4, r3, 16
    b       branch_0x8031fc38

branch_0x8031fc2c:
    mr      r3, r29
    bl      read24__Q28JASystem8TSeqCtrlFv
    mr      r4, r3
branch_0x8031fc38:
    mulli   r0, r27, 0x3
    addi    r3, r29, 0x0
    add     r4, r4, r0
    bl      get24__Q28JASystem8TSeqCtrlCFUl
    mr      r27, r3
    b       branch_0x8031fc8c

branch_0x8031fc50:
    cmplwi  r0, 0x28
    blt-    branch_0x8031fc70
    cmplwi  r0, 0x2b
    bgt-    branch_0x8031fc70
    mr      r3, r29
    bl      readReg32__Q28JASystem6TTrackFUc
    mr      r31, r3
    b       branch_0x8031fc8c

branch_0x8031fc70:
    mr      r3, r29
    bl      readReg32__Q28JASystem6TTrackFUc
    mr      r27, r3
    b       branch_0x8031fc8c

branch_0x8031fc80:
    mr      r3, r29
    bl      read24__Q28JASystem8TSeqCtrlFv
    mr      r27, r3
branch_0x8031fc8c:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      conditionCheck__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc
    clrlwi. r0, r3, 24
    beq-    branch_0x8031fccc
    cmplwi  r31, 0x0
    bne-    branch_0x8031fcbc
    lwz     r0, 0x0(r29)
    add     r0, r0, r27
    stw     r0, 0x4(r29)
    b       branch_0x8031fccc

branch_0x8031fcbc:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      init__Q28JASystem8TSeqCtrlFPvUl
branch_0x8031fccc:
    lmw     r27, 0x1c(sp)
    li      r3, 0x0
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl cmdLoopS__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdLoopS__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fce4
    lwz     r0, 0xc(r4)
    li      r3, 0x0
    lwz     r7, 0x0(r5)
    slwi    r0, r0, 2
    lwz     r6, 0x4(r4)
    add     r5, r4, r0
    stw     r6, 0x10(r5)
    lwz     r6, 0xc(r4)
    addi    r5, r6, 0x1
    slwi    r0, r6, 1
    stw     r5, 0xc(r4)
    add     r4, r4, r0
    sth     r7, 0x30(r4)
    blr


.globl cmdLoopE__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdLoopE__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fd1c
    mflr    r0
    mr      r3, r4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      loopE__Q28JASystem8TSeqCtrlFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8031fd40
    li      r3, 0x0
    b       branch_0x8031fd44

branch_0x8031fd40:
    li      r3, 0x0
branch_0x8031fd44:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdReadPort__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdReadPort__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fd54
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x8(sp)
    lwz     r6, 0x0(r5)
    add     r3, r4, r6
    stb     r0, 0x48(r3)
    slwi    r0, r6, 1
    add     r6, r4, r0
    lwz     r0, 0x4(r5)
    mr      r3, r4
    lhz     r5, 0x68(r6)
    clrlwi  r4, r0, 24
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdWritePort__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdWritePort__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fda0
    lwz     r0, 0x0(r5)
    li      r6, 0x1
    lwz     r7, 0x4(r5)
    li      r3, 0x0
    add     r5, r4, r0
    slwi    r0, r0, 1
    stb     r6, 0x58(r5)
    add     r4, r4, r0
    sth     r7, 0x68(r4)
    blr


.globl cmdCheckPortImport__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdCheckPortImport__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fdc8
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r5)
    add     r4, r4, r0
    lbz     r5, 0x48(r4)
    li      r4, 0x3
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdCheckPortExport__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdCheckPortExport__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fe00
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r5)
    add     r4, r4, r0
    lbz     r5, 0x58(r4)
    li      r4, 0x3
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdWait__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdWait__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fe38
    lwz     r0, 0x0(r5)
    cmpwi   r0, 0x0
    stw     r0, 0x8(r4)
    beq-    branch_0x8031fe50
    li      r3, 0x1
    blr

branch_0x8031fe50:
    li      r3, 0x0
    blr


.globl cmdConnectName__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdConnectName__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fe58
    lwz     r6, 0x0(r5)
    li      r3, 0x0
    lwz     r0, 0x4(r5)
    slwi    r5, r6, 16
    or      r0, r5, r0
    stw     r0, 0x3a8(r4)
    blr


.globl cmdParentWritePort__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdParentWritePort__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031fe74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x2c0(r4)
    clrlwi  r4, r6, 28
    clrlwi  r5, r0, 16
    bl      writePortAppDirect__Q28JASystem6TTrackFUlUs
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdChildWritePort__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdChildWritePort__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031feac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x0(r5)
    lwz     r0, 0x4(r5)
    rlwinm  r3, r6, 30, 2, 29
    add     r3, r4, r3
    lwz     r3, 0x2c4(r3)
    clrlwi  r4, r6, 28
    clrlwi  r5, r0, 16
    bl      writePortAppDirect__Q28JASystem6TTrackFUlUs
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdSetLastNote__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdSetLastNote__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031feec
    lbz     r0, 0x3c0(r4)
    li      r3, 0x0
    lwz     r5, 0x0(r5)
    extsb   r0, r0
    add     r5, r5, r0
    stb     r5, 0xe9(r4)
    blr


.globl cmdTimeRelate__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdTimeRelate__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031ff08
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8031ff1c
    li      r0, 0x1
    b       branch_0x8031ff20

branch_0x8031ff1c:
    li      r0, 0x0
branch_0x8031ff20:
    stb     r0, 0x3cb(r4)
    li      r3, 0x0
    blr


.globl cmdSimpleOsc__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdSimpleOsc__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031ff2c
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r5)
    clrlwi  r4, r0, 24
    bl      oscSetupSimple__Q28JASystem6TTrackFUc
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdSimpleEnv__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdSimpleEnv__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031ff5c
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r5)
    lwz     r5, 0x4(r5)
    clrlwi  r4, r0, 24
    bl      oscSetupSimpleEnv__Q28JASystem6TTrackFUcUl
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdSimpleADSR__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdSimpleADSR__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8031ff90
    stwu    sp, -0x28(sp)
    lis     r3, sAdsrDef__Q28JASystem6Player@h
    addi    r8, r3, sAdsrDef__Q28JASystem6Player@l
    lwz     r0, 0x0(r5)
    addi    r6, r4, 0x37c
    li      r3, 0x0
    extsh   r0, r0
    sth     r0, 0x18(sp)
    addi    r0, r4, 0x394
    lwz     r7, 0x4(r5)
    extsh   r7, r7
    sth     r7, 0x1a(sp)
    lwz     r7, 0x8(r5)
    extsh   r7, r7
    sth     r7, 0x1c(sp)
    lwz     r7, 0xc(r5)
    extsh   r7, r7
    sth     r7, 0x1e(sp)
    lwz     r5, 0x10(r5)
    extsh   r5, r5
    sth     r5, 0x20(sp)
    lwz     r7, 0x0(r8)
    lwz     r5, 0x4(r8)
    stw     r7, 0x30c(r4)
    stw     r5, 0x310(r4)
    lwz     r7, 0x8(r8)
    lwz     r5, 0xc(r8)
    stw     r7, 0x314(r4)
    stw     r5, 0x318(r4)
    lwz     r7, 0x10(r8)
    lwz     r5, 0x14(r8)
    stw     r7, 0x31c(r4)
    stw     r5, 0x320(r4)
    stw     r6, 0x314(r4)
    stw     r0, 0x318(r4)
    lha     r0, 0x18(sp)
    sth     r0, 0x37e(r4)
    lha     r0, 0x1a(sp)
    sth     r0, 0x384(r4)
    lha     r0, 0x1c(sp)
    sth     r0, 0x38a(r4)
    lha     r0, 0x1e(sp)
    sth     r0, 0x38c(r4)
    lha     r0, 0x20(sp)
    addi    sp, sp, 0x28
    sth     r0, 0x396(r4)
    blr


.globl cmdTranspose__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdTranspose__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8032004c
    lwz     r0, 0x0(r5)
    extsb   r0, r0
    stb     r0, 0x3bf(r4)
    lbz     r0, 0x3bf(r4)
    stb     r0, 0x3c0(r4)
    lwz     r5, 0x2c0(r4)
    cmplwi  r5, 0x0
    beq-    branch_0x8032007c
    lbz     r3, 0x3c0(r4)
    lbz     r0, 0x3bf(r5)
    add     r0, r3, r0
    stb     r0, 0x3c0(r4)
branch_0x8032007c:
    li      r3, 0x0
    blr


.globl cmdCloseTrack__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdCloseTrack__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320084
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x0(r5)
    clrlslwi  r0, r0, 24, 2
    add     r31, r4, r0
    lwz     r0, 0x2c4(r31)
    cmplwi  r0, 0x0
    mr      r3, r0
    bne-    branch_0x803200b8
    li      r3, 0x0
    b       branch_0x803200c8

branch_0x803200b8:
    bl      closeTrack__Q28JASystem6TTrackFv
    li      r0, 0x0
    stw     r0, 0x2c4(r31)
    li      r3, 0x0
branch_0x803200c8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl cmdOutSwitch__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdOutSwitch__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803200dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x304(r4)
    cmplwi  r0, 0x0
    mr      r31, r0
    beq-    branch_0x8032011c
    lwz     r0, 0x0(r5)
    addi    r3, r31, 0x0
    clrlwi  r4, r0, 16
    bl      setOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    lis     r4, unk_0000ffff@ha
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0000ffff@l
    bl      setOuterUpdate__Q38JASystem6TTrack11TOuterParamFUs
branch_0x8032011c:
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl cmdUpdateSync__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdUpdateSync__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320134
    mflr    r0
    mr      r3, r4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x0(r5)
    bl      updateTrack__Q28JASystem6TTrackFUl
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdBusConnect__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdBusConnect__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320160
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x6
    bge-    branch_0x8032017c
    slwi    r0, r0, 1
    lwz     r5, 0x4(r5)
    add     r3, r4, r0
    sth     r5, 0x13a(r3)
branch_0x8032017c:
    li      r3, 0x0
    blr


.globl cmdPauseStatus__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdPauseStatus__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320184
    lwz     r0, 0x0(r5)
    li      r3, 0x0
    stb     r0, 0x3c1(r4)
    blr


.globl cmdVolumeMode__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdVolumeMode__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320194
    lwz     r0, 0x0(r5)
    li      r3, 0x0
    stb     r0, 0x3c3(r4)
    blr


.globl cmdSetInterrupt__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdSetInterrupt__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803201a4
    mflr    r0
    addi    r3, r4, 0x88
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x0(r4)
    lwz     r0, 0x4(r5)
    lwz     r4, 0x0(r5)
    add     r5, r6, r0
    bl      setIntr__Q28JASystem8TIntrMgrFUlPv
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdDisInterrupt__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdDisInterrupt__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803201dc
    mflr    r0
    addi    r3, r4, 0x88
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x0(r5)
    bl      resetInter__Q28JASystem8TIntrMgrFUl
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdClrI__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdClrI__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320208
    li      r0, 0x1
    stb     r0, 0x88(r4)
    li      r0, 0x0
    li      r3, 0x0
    stw     r0, 0x44(r4)
    blr


.globl cmdSetI__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdSetI__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320220
    li      r0, 0x0
    stb     r0, 0x88(r4)
    li      r3, 0x0
    blr


.globl cmdRetI__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdRetI__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320230
    mflr    r0
    mr      r3, r4
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x8(sp)
    stb     r0, 0x88(r4)
    bl      retIntr__Q28JASystem8TSeqCtrlFv
    lwz     r0, 0xc(sp)
    li      r3, 0x2
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdIntTimer__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdIntTimer__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320260
    lwz     r0, 0x0(r5)
    li      r3, 0x0
    lwz     r5, 0x4(r5)
    stb     r0, 0x8b(r4)
    stw     r5, 0x8c(r4)
    stw     r5, 0x90(r4)
    blr


.globl cmdConnectOpen__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdConnectOpen__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8032027c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    lwz     r3, 0x3a8(r4)
    bl      registTrack__Q28JASystem8TrackMgrFUlPQ28JASystem6TTrack
    li      r0, 0x1
    stb     r0, 0x3cc(r31)
    li      r3, 0x0
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl cmdConnectClose__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdConnectClose__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803202b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    lbz     r0, 0x3cc(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x803202e8
    mr      r3, r31
    bl      unRegistTrack__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
    li      r0, 0x0
    stb     r0, 0x3cc(r31)
branch_0x803202e8:
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl cmdSyncCPU__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdSyncCPU__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320300
    mflr    r0
    lis     r3, unk_0000ffff@ha
    stw     r0, 0x4(sp)
    addi    r0, r3, unk_0000ffff@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    lwz     r12, R13Off_m0x5b0c(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80320340
    lwz     r0, 0x0(r5)
    mtlr    r12
    addi    r3, r31, 0x0
    clrlwi  r4, r0, 16
    blrl
    mr      r0, r3
branch_0x80320340:
    addi    r3, r31, 0x0
    mr      r5, r0
    li      r4, 0x3
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl cmdFlushAll__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdFlushAll__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320368
    mflr    r0
    mr      r3, r4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      flushAll__Q28JASystem6TTrackFv
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdFlushRelease__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdFlushRelease__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320390
    mflr    r0
    addi    r3, r4, 0xec
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      stopAllRelease__Q28JASystem11TChannelMgrFv
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdTimeBase__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdTimeBase__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803203b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r5)
    sth     r0, 0x3ba(r4)
    lwz     r0, 0x2c0(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x803203e0
    mr      r3, r4
    bl      updateTempo__Q28JASystem6TTrackFv
branch_0x803203e0:
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdTempo__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdTempo__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803203f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r5)
    sth     r0, 0x3b8(r4)
    lwz     r0, 0x2c0(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x80320420
    mr      r3, r4
    bl      updateTempo__Q28JASystem6TTrackFv
    b       branch_0x80320428

branch_0x80320420:
    li      r0, 0x1
    stb     r0, 0x3bd(r4)
branch_0x80320428:
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdFinish__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdFinish__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x8032043c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r4
    lfs     f31, 0x7d4(r2)
    lfs     f30, 0x7d0(r2)
    b       branch_0x803204e4

branch_0x80320474:
    clrlwi  r3, r30, 24
    clrlslwi  r0, r30, 24, 4
    add     r4, r29, r0
    lfs     f0, 0x168(r4)
    addi    r4, r4, 0x160
    fcmpo   cr0, f0, f30
    ble-    branch_0x803204e0
    lfs     f1, 0x0(r4)
    cmplwi  r3, 0x5
    lfs     f0, 0xc(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r4)
    lfs     f0, 0x8(r4)
    fsubs   f0, f0, f31
    stfs    f0, 0x8(r4)
    ble-    branch_0x803204bc
    cmplwi  r3, 0xb
    blt-    branch_0x803204d0
branch_0x803204bc:
    clrlwi  r0, r30, 24
    li      r3, 0x1
    slw     r0, r3, r0
    or      r31, r31, r0
    b       branch_0x803204e0

branch_0x803204d0:
    lfs     f1, 0x0(r4)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      oscUpdateParam__Q28JASystem6TTrackFUcf
branch_0x803204e0:
    addi    r30, r30, 0x1
branch_0x803204e4:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x12
    blt+    branch_0x80320474
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      updateSeq__Q28JASystem6TTrackFUlb
    lwz     r0, 0x3c(sp)
    li      r3, 0x3
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    mtlr    r0
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x38
    blr


.globl cmdNop__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdNop__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320528
    li      r3, 0x0
    blr


.globl cmdPanPowSet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdPanPowSet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320530
    stwu    sp, -0x40(sp)
    lis     r6, 0x4330
    li      r3, 0x0
    lwz     r0, 0x0(r5)
    sth     r0, 0x290(r4)
    lwz     r0, 0x4(r5)
    sth     r0, 0x292(r4)
    lwz     r0, 0x8(r5)
    sth     r0, 0x294(r4)
    lwz     r0, 0xc(r5)
    lfd     f1, 0x7e0(r2)
    stw     r0, 0x3c(sp)
    lfs     f2, 0x7d8(r2)
    stw     r6, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    sth     r0, 0x296(r4)
    lwz     r0, 0x10(r5)
    stw     r0, 0x2c(sp)
    stw     r6, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x40
    sth     r0, 0x298(r4)
    blr


.globl cmdIIRSet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdIIRSet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803205b4
    stwu    sp, -0x40(sp)
    lis     r6, 0x4330
    addi    r9, r4, 0x220
    lwz     r0, 0x0(r5)
    addi    r8, r4, 0x230
    addi    r7, r4, 0x240
    lfd     f4, 0x7f0(r2)
    extsh   r0, r0
    xoris   r0, r0, 0x8000
    lfs     f3, 0x7e8(r2)
    stw     r0, 0x3c(sp)
    addi    r4, r4, 0x250
    li      r3, 0x0
    stw     r6, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f4
    fdivs   f0, f0, f3
    stfs    f0, 0x4(r9)
    lfs     f0, 0x4(r9)
    stfs    f0, 0x0(r9)
    lfs     f2, 0x7d0(r2)
    stfs    f2, 0xc(r9)
    lfs     f1, 0x7d4(r2)
    stfs    f1, 0x8(r9)
    lwz     r0, 0x4(r5)
    extsh   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x34(sp)
    stw     r6, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f4
    fdivs   f0, f0, f3
    stfs    f0, 0x4(r8)
    lfs     f0, 0x4(r8)
    stfs    f0, 0x0(r8)
    stfs    f2, 0xc(r8)
    stfs    f1, 0x8(r8)
    lwz     r0, 0x8(r5)
    extsh   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x2c(sp)
    stw     r6, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f4
    fdivs   f0, f0, f3
    stfs    f0, 0x4(r7)
    lfs     f0, 0x4(r7)
    stfs    f0, 0x0(r7)
    stfs    f2, 0xc(r7)
    stfs    f1, 0x8(r7)
    lwz     r0, 0xc(r5)
    extsh   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x24(sp)
    stw     r6, 0x20(sp)
    lfd     f0, 0x20(sp)
    addi    sp, sp, 0x40
    fsubs   f0, f0, f4
    fdivs   f0, f0, f3
    stfs    f0, 0x4(r4)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x0(r4)
    stfs    f2, 0xc(r4)
    stfs    f1, 0x8(r4)
    blr


.globl cmdFIRSet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdFIRSet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803206b8
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r5)
    lwz     r5, 0x0(r4)
    add     r4, r5, r0
    bl      setExtFirFilterD__Q28JASystem6TTrackFPs
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdEXTSet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdEXTSet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803206ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r4
    lwz     r0, 0x0(r5)
    lwz     r3, 0x0(r4)
    add     r31, r3, r0
    addi    r3, r31, 0x0
    bl      initExtBuffer__Q38JASystem6TTrack11TOuterParamFv
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      assignExtBuffer__Q28JASystem6TTrackFPQ38JASystem6TTrack11TOuterParam
    lwz     r0, 0x2c(sp)
    li      r3, 0x0
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl cmdPanSwSet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdPanSwSet__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320740
    stwu    sp, -0x28(sp)
    lwz     r3, R2Off_0x7f8(r2)
    addi    r9, sp, 0x20
    lwz     r0, R2Off_0x800(r2)
    addi    r8, sp, 0x18
    stw     r3, 0x20(sp)
    lhz     r3, 0x7fc(r2)
    stw     r0, 0x18(sp)
    lhz     r0, 0x804(r2)
    sth     r3, 0x24(sp)
    li      r3, 0x0
    lbz     r10, R2Off_0x7fe(r2)
    sth     r0, 0x1c(sp)
    lbz     r0, R2Off_0x806(r2)
    stb     r10, 0x26(sp)
    stb     r0, 0x1e(sp)
    addi    sp, sp, 0x28
    lwz     r0, 0x0(r5)
    srwi    r0, r0, 5
    lbzx    r0, r9, r0
    stb     r0, 0x3c5(r4)
    lwz     r0, 0x0(r5)
    srwi    r0, r0, 5
    lbzx    r0, r8, r0
    stb     r0, 0x3c8(r4)
    lwz     r0, 0x0(r5)
    clrlwi  r0, r0, 27
    stb     r0, 0x14e(r4)
    lwz     r0, 0x3b4(r4)
    ori     r0, r0, 0x8
    stw     r0, 0x3b4(r4)
    lwz     r0, 0x4(r5)
    srwi    r0, r0, 5
    lbzx    r0, r9, r0
    stb     r0, 0x3c6(r4)
    lwz     r0, 0x4(r5)
    srwi    r0, r0, 5
    lbzx    r0, r8, r0
    stb     r0, 0x3c9(r4)
    lwz     r0, 0x4(r5)
    clrlwi  r0, r0, 27
    stb     r0, 0x14f(r4)
    lwz     r0, 0x3b4(r4)
    ori     r0, r0, 0x8
    stw     r0, 0x3b4(r4)
    lwz     r0, 0x8(r5)
    srwi    r0, r0, 5
    lbzx    r0, r9, r0
    stb     r0, 0x3c7(r4)
    lwz     r0, 0x8(r5)
    srwi    r0, r0, 5
    lbzx    r0, r8, r0
    stb     r0, 0x3ca(r4)
    lwz     r0, 0x8(r5)
    clrlwi  r0, r0, 27
    stb     r0, 0x150(r4)
    lwz     r0, 0x3b4(r4)
    ori     r0, r0, 0x8
    stw     r0, 0x3b4(r4)
    blr


.globl cmdOscRoute__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdOscRoute__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320830
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r5)
    clrlwi  r6, r0, 28
    extrwi  r5, r0, 4, 24
    rlwinm  r0, r0, 30, 26, 29
    add     r3, r4, r0
    cmpwi   r6, 0xe
    stw     r6, 0x3a0(r3)
    bne-    branch_0x8032086c
    slwi    r3, r5, 5
    addi    r3, r3, 0x33c
    add     r3, r4, r3
    bl      initStart__Q28JASystem11TOscillatorFv
branch_0x8032086c:
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdIIRCutOff__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdIIRCutOff__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320880
    stwu    sp, -0x40(sp)
    lis     r3, CUTOFF_TO_IIR_TABLE__Q28JASystem6Player@h
    addi    r0, r3, CUTOFF_TO_IIR_TABLE__Q28JASystem6Player@l
    lwz     r5, 0x0(r5)
    addi    r9, r4, 0x220
    lfd     f4, 0x7f0(r2)
    addi    r8, r4, 0x230
    clrlslwi  r3, r5, 24, 3
    add     r6, r0, r3
    lfs     f3, 0x808(r2)
    lha     r0, 0x0(r6)
    addi    r7, r4, 0x240
    lis     r5, 0x4330
    xoris   r0, r0, 0x8000
    stw     r0, 0x3c(sp)
    addi    r4, r4, 0x250
    li      r3, 0x0
    stw     r5, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f4
    fdivs   f0, f0, f3
    stfs    f0, 0x4(r9)
    lfs     f0, 0x4(r9)
    stfs    f0, 0x0(r9)
    lfs     f2, 0x7d0(r2)
    stfs    f2, 0xc(r9)
    lfs     f1, 0x7d4(r2)
    stfs    f1, 0x8(r9)
    lha     r0, 0x2(r6)
    xoris   r0, r0, 0x8000
    stw     r0, 0x34(sp)
    stw     r5, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f4
    fdivs   f0, f0, f3
    stfs    f0, 0x4(r8)
    lfs     f0, 0x4(r8)
    stfs    f0, 0x0(r8)
    stfs    f2, 0xc(r8)
    stfs    f1, 0x8(r8)
    lha     r0, 0x4(r6)
    xoris   r0, r0, 0x8000
    stw     r0, 0x2c(sp)
    stw     r5, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f4
    fdivs   f0, f0, f3
    stfs    f0, 0x4(r7)
    lfs     f0, 0x4(r7)
    stfs    f0, 0x0(r7)
    stfs    f2, 0xc(r7)
    stfs    f1, 0x8(r7)
    lha     r0, 0x6(r6)
    xoris   r0, r0, 0x8000
    stw     r0, 0x24(sp)
    stw     r5, 0x20(sp)
    lfd     f0, 0x20(sp)
    addi    sp, sp, 0x40
    fsubs   f0, f0, f4
    fdivs   f0, f0, f3
    stfs    f0, 0x4(r4)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x0(r4)
    stfs    f2, 0xc(r4)
    stfs    f1, 0x8(r4)
    blr


.globl cmdOscFull__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdOscFull__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x80320988
    mflr    r0
    mr      r6, r5
    stw     r0, 0x4(sp)
    mr      r3, r4
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r5)
    lwz     r5, 0x4(r5)
    lwz     r6, 0x8(r6)
    clrlwi  r4, r0, 24
    bl      oscSetupFull__Q28JASystem6TTrackFUcUlUl
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdCheckWave__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdCheckWave__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803209c4
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x3
    li      r5, 0x0
    stwu    sp, -0x8(sp)
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cmdPrintf__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl
cmdPrintf__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPUl: # 0x803209f4
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stmw    r26, 0xb8(sp)
    addi    r30, r4, 0x0
    addi    r4, sp, 0x30
    li      r31, 0x0
    b       branch_0x80320b64

branch_0x80320a18:
    lwz     r5, 0x4(r30)
    addi    r6, sp, 0x34
    add     r6, r6, r3
    addi    r0, r5, 0x1
    stw     r0, 0x4(r30)
    lbz     r0, 0x0(r5)
    stb     r0, 0x0(r6)
    lbz     r5, 0x0(r6)
    extsb.  r0, r5
    beq-    branch_0x80320b6c
    extsb   r0, r5
    cmpwi   r0, 0x5c
    bne-    branch_0x80320a88
    lwz     r5, 0x4(r30)
    addi    r0, r5, 0x1
    stw     r0, 0x4(r30)
    lbz     r0, 0x0(r5)
    stb     r0, 0x0(r6)
    lbz     r5, 0x0(r6)
    extsb.  r0, r5
    beq-    branch_0x80320b6c
    extsb   r0, r5
    cmpwi   r0, 0x6e
    beq-    branch_0x80320a7c
    b       branch_0x80320b60

branch_0x80320a7c:
    li      r0, 0xd
    stb     r0, 0x0(r6)
    b       branch_0x80320b60

branch_0x80320a88:
    cmpwi   r0, 0x25
    bne-    branch_0x80320b60
    lwz     r5, 0x4(r30)
    addi    r6, sp, 0x34
    addi    r3, r3, 0x1
    addi    r0, r5, 0x1
    stw     r0, 0x4(r30)
    add     r6, r6, r3
    lbz     r0, 0x0(r5)
    stb     r0, 0x0(r6)
    lbz     r5, 0x0(r6)
    extsb.  r0, r5
    beq-    branch_0x80320b6c
    extsb   r0, r5
    cmpwi   r0, 0x72
    beq-    branch_0x80320b24
    bge-    branch_0x80320ae4
    cmpwi   r0, 0x64
    beq-    branch_0x80320b00
    bge-    branch_0x80320b5c
    cmpwi   r0, 0x52
    beq-    branch_0x80320b38
    b       branch_0x80320b5c

branch_0x80320ae4:
    cmpwi   r0, 0x78
    beq-    branch_0x80320b0c
    bge-    branch_0x80320b5c
    cmpwi   r0, 0x74
    beq-    branch_0x80320b4c
    bge-    branch_0x80320b5c
    b       branch_0x80320b18

branch_0x80320b00:
    li      r0, 0x0
    stbx    r0, r4, r31
    b       branch_0x80320b5c

branch_0x80320b0c:
    li      r0, 0x1
    stbx    r0, r4, r31
    b       branch_0x80320b5c

branch_0x80320b18:
    li      r0, 0x2
    stbx    r0, r4, r31
    b       branch_0x80320b5c

branch_0x80320b24:
    li      r0, 0x3
    stbx    r0, r4, r31
    li      r0, 0x64
    stb     r0, 0x0(r6)
    b       branch_0x80320b5c

branch_0x80320b38:
    li      r0, 0x4
    stbx    r0, r4, r31
    li      r0, 0x78
    stb     r0, 0x0(r6)
    b       branch_0x80320b5c

branch_0x80320b4c:
    li      r0, 0x5
    stbx    r0, r4, r31
    li      r0, 0x78
    stb     r0, 0x0(r6)
branch_0x80320b5c:
    addi    r31, r31, 0x1
branch_0x80320b60:
    addi    r3, r3, 0x1
branch_0x80320b64:
    cmplwi  r3, 0x80
    blt+    branch_0x80320a18
branch_0x80320b6c:
    li      r26, 0x0
    addi    r28, r26, 0x0
    addi    r29, sp, 0x30
    b       branch_0x80320bf4

branch_0x80320b7c:
    lwz     r3, 0x4(r30)
    addi    r27, sp, 0x20
    add     r27, r27, r28
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    lbz     r0, 0x0(r3)
    stw     r0, 0x0(r27)
    lbz     r0, 0x0(r29)
    cmplwi  r0, 0x2
    bne-    branch_0x80320bb8
    lwz     r3, 0x0(r30)
    lwz     r0, 0x0(r27)
    add     r0, r3, r0
    stw     r0, 0x0(r27)
    b       branch_0x80320be8

branch_0x80320bb8:
    cmplwi  r0, 0x5
    bne-    branch_0x80320bcc
    lwz     r0, 0x308(r30)
    stw     r0, 0x0(r27)
    b       branch_0x80320be8

branch_0x80320bcc:
    cmplwi  r0, 0x3
    blt-    branch_0x80320be8
    lwz     r0, 0x0(r27)
    addi    r3, r30, 0x0
    clrlwi  r4, r0, 24
    bl      exchangeRegisterValue__Q28JASystem6TTrackFUc
    stw     r3, 0x0(r27)
branch_0x80320be8:
    addi    r26, r26, 0x1
    addi    r29, r29, 0x1
    addi    r28, r28, 0x4
branch_0x80320bf4:
    cmplw   r26, r31
    blt+    branch_0x80320b7c
    lmw     r26, 0xb8(sp)
    li      r3, 0x0
    lwz     r0, 0xd4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl Cmd_Process__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUcUs
Cmd_Process__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUcUs: # 0x80320c14
    mflr    r0
    lis     r7, unk_803aa6d8@ha
    stw     r0, 0x4(sp)
    addi    r7, r7, unk_803aa6d8@l
    clrlslwi  r0, r5, 24, 2
    stwu    sp, -0x68(sp)
    stmw    r24, 0x48(sp)
    clrlwi  r30, r5, 24
    add     r5, r7, r0
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r24, sp, 0x20
    li      r28, 0x0
    li      r25, 0x0
    lwz     r0, -0x300(r5)
    stw     r0, 0x40(sp)
    lhz     r29, 0x42(sp)
    lhz     r31, 0x40(sp)
    or      r29, r29, r6
    b       branch_0x80320cf8

branch_0x80320c64:
    clrlwi  r0, r29, 30
    cmpwi   r0, 0x2
    li      r3, 0x0
    beq-    branch_0x80320cb8
    bge-    branch_0x80320c88
    cmpwi   r0, 0x0
    beq-    branch_0x80320c94
    bge-    branch_0x80320ca8
    b       branch_0x80320cdc

branch_0x80320c88:
    cmpwi   r0, 0x4
    bge-    branch_0x80320cdc
    b       branch_0x80320cc4

branch_0x80320c94:
    lwz     r3, 0x4(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r27)
    lbz     r3, 0x0(r3)
    b       branch_0x80320cdc

branch_0x80320ca8:
    mr      r3, r27
    bl      read16__Q28JASystem8TSeqCtrlFv
    clrlwi  r3, r3, 16
    b       branch_0x80320cdc

branch_0x80320cb8:
    mr      r3, r27
    bl      read24__Q28JASystem8TSeqCtrlFv
    b       branch_0x80320cdc

branch_0x80320cc4:
    lwz     r4, 0x4(r27)
    addi    r3, r27, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x4(r27)
    lbz     r4, 0x0(r4)
    bl      exchangeRegisterValue__Q28JASystem6TTrackFUc
branch_0x80320cdc:
    clrlwi  r4, r29, 16
    stwx    r3, r24, r25
    li      r0, 0x2
    sraw    r0, r4, r0
    clrlwi  r29, r0, 16
    addi    r28, r28, 0x1
    addi    r25, r25, 0x4
branch_0x80320cf8:
    cmpw    r28, r31
    blt+    branch_0x80320c64
    mulli   r0, r30, 0xc
    lis     r3, sCmdPList__Q28JASystem10TSeqParser@h
    addi    r3, r3, sCmdPList__Q28JASystem10TSeqParser@l
    add     r5, r3, r0
    lwz     r4, -0x900(r5)
    addi    r3, sp, 0x14
    lwz     r0, -0x8fc(r5)
    stw     r4, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, -0x8f8(r5)
    stw     r0, 0x1c(sp)
    bl      __ptmf_test
    cmpwi   r3, 0x0
    bne-    branch_0x80320d40
    li      r3, 0x0
    b       branch_0x80320d58

branch_0x80320d40:
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, sp, 0x20
    addi    r12, sp, 0x14
    bl      __ptmf_scall
    ori     r0, r0, 0x0
branch_0x80320d58:
    lmw     r24, 0x48(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl RegCmd_Process__Q28JASystem10TSeqParserFPQ28JASystem6TTrackii
RegCmd_Process__Q28JASystem10TSeqParserFPQ28JASystem6TTrackii: # 0x80320d6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x18(sp)
    mr.     r28, r5
    lwz     r4, 0x4(r4)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r31)
    lbz     r5, 0x0(r4)
    beq-    branch_0x80320dbc
    addi    r3, r31, 0x0
    addi    r4, r5, 0x0
    bl      exchangeRegisterValue__Q28JASystem6TTrackFUc
    clrlwi  r5, r3, 24
branch_0x80320dbc:
    cmpwi   r28, 0x0
    li      r6, 0x0
    beq-    branch_0x80320dd0
    cmpwi   r29, 0x0
    beq-    branch_0x80320e24
branch_0x80320dd0:
    lwz     r3, 0x4(r31)
    addi    r0, r29, 0x1
    cmplwi  r0, 0x0
    mtctr   r0
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
    li      r8, 0x3
    li      r7, 0x1
    lbz     r4, 0x0(r3)
    li      r3, 0x2
    ble-    branch_0x80320e24
branch_0x80320dfc:
    rlwinm. r0, r4, 0, 24, 24
    beq-    branch_0x80320e08
    or      r6, r6, r8
branch_0x80320e08:
    clrlwi  r4, r4, 24
    clrlwi  r0, r8, 16
    slw     r4, r4, r7
    slw     r0, r0, r3
    clrlwi  r4, r4, 24
    clrlwi  r8, r0, 16
    bdnz+      branch_0x80320dfc
branch_0x80320e24:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      Cmd_Process__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUcUs
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl cmdNoteOff__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc
cmdNoteOff__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc: # 0x80320e50
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r5, 24
    cmplwi  r0, 0xf9
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    bne-    branch_0x80320ed0
    lwz     r4, 0x4(r30)
    addi    r3, r30, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x4(r30)
    lbz     r31, 0x0(r4)
    clrlwi  r4, r31, 29
    bl      exchangeRegisterValue__Q28JASystem6TTrackFUc
    clrlwi  r3, r3, 24
    cmplwi  r3, 0x7
    bgt-    branch_0x80320ea4
    cmplwi  r3, 0x0
    bne-    branch_0x80320ec0
branch_0x80320ea4:
    rlwinm. r0, r31, 0, 24, 24
    beq-    branch_0x80320eb8
    lwz     r3, 0x4(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
branch_0x80320eb8:
    li      r3, 0x0
    b       branch_0x80320f18

branch_0x80320ec0:
    rlwinm. r0, r31, 0, 24, 24
    addi    r5, r3, 0x80
    beq-    branch_0x80320ed0
    ori     r5, r5, 0x8
branch_0x80320ed0:
    clrlwi  r0, r5, 28
    mr      r4, r0
    rlwinm. r0, r5, 0, 28, 28
    li      r5, 0x0
    beq-    branch_0x80320f08
    lwz     r3, 0x4(r30)
    addi    r4, r4, -0x8
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    lbz     r5, 0x0(r3)
    cmpwi   r5, 0x64
    ble-    branch_0x80320f08
    addi    r0, r5, -0x62
    mulli   r5, r0, 0x14
branch_0x80320f08:
    addi    r3, r30, 0x0
    clrlwi  r5, r5, 16
    bl      noteOff__Q28JASystem6TTrackFUcUs
    li      r3, 0x0
branch_0x80320f18:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl cmdNoteOn__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc
cmdNoteOn__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc: # 0x80320f30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r24, 0x20(sp)
    mr      r24, r4
    lwz     r3, 0x4(r4)
    lbz     r4, 0x3c0(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r24)
    add     r31, r5, r4
    lbz     r25, 0x0(r3)
    rlwinm. r0, r25, 0, 24, 24
    beq-    branch_0x80320f7c
    addi    r3, r24, 0x0
    addi    r4, r31, 0x0
    bl      exchangeRegisterValue__Q28JASystem6TTrackFUc
    lbz     r0, 0x3c0(r24)
    clrlwi  r31, r3, 24
    add     r31, r31, r0
branch_0x80320f7c:
    stb     r25, 0x1c(sp)
    lbz     r0, 0x1c(sp)
    rlwinm. r0, r0, 27, 30, 30
    beq-    branch_0x80320f94
    mr      r30, r31
    lbz     r31, 0xe9(r24)
branch_0x80320f94:
    lwz     r3, 0x4(r24)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r24)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x80
    mr      r29, r0
    blt-    branch_0x80320fc0
    addi    r3, r24, 0x0
    addi    r4, r29, -0x80
    bl      exchangeRegisterValue__Q28JASystem6TTrackFUc
    clrlwi  r29, r3, 24
branch_0x80320fc0:
    lbz     r3, 0x1c(sp)
    clrlwi. r3, r3, 29
    bne-    branch_0x80321058
    lwz     r3, 0x4(r24)
    li      r27, 0x0
    addi    r0, r3, 0x1
    stw     r0, 0x4(r24)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x80
    mr      r26, r0
    blt-    branch_0x80320ffc
    addi    r3, r24, 0x0
    addi    r4, r26, -0x80
    bl      exchangeRegisterValue__Q28JASystem6TTrackFUc
    clrlwi  r26, r3, 24
branch_0x80320ffc:
    li      r28, 0x0
    li      r4, 0x0
    b       branch_0x80321024

branch_0x80321008:
    lwz     r3, 0x4(r24)
    slwi    r28, r28, 8
    addi    r4, r4, 0x1
    addi    r0, r3, 0x1
    stw     r0, 0x4(r24)
    lbz     r0, 0x0(r3)
    or      r28, r28, r0
branch_0x80321024:
    lbz     r0, 0x1c(sp)
    extrwi  r0, r0, 2, 27
    cmpw    r4, r0
    blt+    branch_0x80321008
    cmplwi  r0, 0x1
    bne-    branch_0x80321080
    cmplwi  r28, 0x80
    blt-    branch_0x80321080
    addi    r3, r24, 0x0
    addi    r4, r28, -0x80
    bl      exchangeRegisterValue__Q28JASystem6TTrackFUc
    mr      r28, r3
    b       branch_0x80321080

branch_0x80321058:
    lbz     r0, 0x1c(sp)
    addi    r27, r3, 0x0
    extrwi. r0, r0, 2, 27
    beq-    branch_0x80321078
    addi    r3, r24, 0x0
    addi    r4, r27, -0x1
    bl      exchangeRegisterValue__Q28JASystem6TTrackFUc
    clrlwi  r27, r3, 24
branch_0x80321078:
    li      r28, -0x1
    li      r26, 0x64
branch_0x80321080:
    lbz     r0, 0x1c(sp)
    addi    r25, r28, 0x0
    extrwi  r0, r0, 2, 25
    stb     r0, 0xe8(r24)
    lbz     r0, 0xea(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x803210fc
    lbz     r0, 0xe8(r24)
    clrlwi. r0, r0, 31
    beq-    branch_0x803210ac
    li      r25, -0x1
branch_0x803210ac:
    cmpwi   r25, -0x1
    beq-    branch_0x803210c8
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    bl      seqTimeToDspTime__Q28JASystem6TTrackFlUc
    mr      r25, r3
branch_0x803210c8:
    lbz     r0, 0x3cd(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x803210e0
    lbz     r0, 0x3c1(r24)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x80321158
branch_0x803210e0:
    addi    r3, r24, 0x0
    addi    r4, r27, 0x0
    addi    r7, r25, 0x0
    clrlwi  r5, r31, 24
    clrlwi  r6, r29, 24
    bl      gateOn__Q28JASystem6TTrackFUclll
    b       branch_0x80321158

branch_0x803210fc:
    cmpwi   r25, -0x1
    beq-    branch_0x80321118
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    bl      seqTimeToDspTime__Q28JASystem6TTrackFlUc
    mr      r25, r3
branch_0x80321118:
    lbz     r0, 0xe8(r24)
    clrlwi. r0, r0, 31
    beq-    branch_0x80321128
    li      r25, -0x1
branch_0x80321128:
    lbz     r0, 0x3cd(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x80321140
    lbz     r0, 0x3c1(r24)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x80321158
branch_0x80321140:
    addi    r3, r24, 0x0
    addi    r4, r27, 0x0
    addi    r7, r25, 0x0
    clrlwi  r5, r31, 24
    clrlwi  r6, r29, 24
    bl      noteOn__Q28JASystem6TTrackFUclll
branch_0x80321158:
    stw     r28, 0xe4(r24)
    lbz     r0, 0xe8(r24)
    clrlwi. r0, r0, 31
    beq-    branch_0x80321170
    li      r0, 0x1
    b       branch_0x80321174

branch_0x80321170:
    li      r0, 0x0
branch_0x80321174:
    stb     r0, 0xea(r24)
    lbz     r0, 0xe8(r24)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x803211c8
    cmpwi   r25, -0x1
    bne-    branch_0x803211a0
    addi    r3, r24, 0x0
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    bl      seqTimeToDspTime__Q28JASystem6TTrackFlUc
    mr      r25, r3
branch_0x803211a0:
    addi    r3, r24, 0xb4
    li      r4, 0x0
    bl      getChannel__Q38JASystem6TTrack8TNoteMgrFi
    cmplwi  r3, 0x0
    beq-    branch_0x803211c4
    lbz     r0, 0x3c0(r24)
    addi    r5, r25, 0x0
    add     r4, r30, r0
    bl      setKeySweepTarget__Q28JASystem8TChannelFUcUl
branch_0x803211c4:
    mr      r31, r30
branch_0x803211c8:
    addis   r0, r28, 0x1
    stb     r31, 0xe9(r24)
    cmplwi  r0, 0xffff
    bne-    branch_0x803211e0
    li      r3, 0x0
    b       branch_0x803211fc

branch_0x803211e0:
    cmplwi  r28, 0x0
    beq-    branch_0x803211f0
    mr      r0, r28
    b       branch_0x803211f4

branch_0x803211f0:
    li      r0, -0x1
branch_0x803211f4:
    stw     r0, 0x8(r24)
    li      r3, 0x1
branch_0x803211fc:
    lmw     r24, 0x20(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl conditionCheck__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc
conditionCheck__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc: # 0x80321210
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x3
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r0, r31, 28
    cmpwi   r0, 0x3
    beq-    branch_0x80321298
    bge-    branch_0x80321258
    cmpwi   r0, 0x1
    beq-    branch_0x80321270
    bge-    branch_0x80321284
    cmpwi   r0, 0x0
    bge-    branch_0x80321268
    b       branch_0x803212e8

branch_0x80321258:
    cmpwi   r0, 0x5
    beq-    branch_0x803212cc
    bge-    branch_0x803212e8
    b       branch_0x803212ac

branch_0x80321268:
    li      r3, 0x1
    b       branch_0x803212ec

branch_0x80321270:
    clrlwi  r0, r3, 16
    neg     r0, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    b       branch_0x803212ec

branch_0x80321284:
    clrlwi  r0, r3, 16
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    b       branch_0x803212ec

branch_0x80321298:
    clrlwi  r0, r3, 16
    subfic  r0, r0, 0x1
    cntlzw  r0, r0
    srwi    r3, r0, 5
    b       branch_0x803212ec

branch_0x803212ac:
    lis     r4, unk_00008000@ha
    addi    r0, r4, unk_00008000@l
    clrlwi  r3, r3, 16
    clrlwi  r0, r0, 16
    subfc   r0, r0, r3
    li      r0, -0x1
    subfze  r3, r0
    b       branch_0x803212ec

branch_0x803212cc:
    lis     r4, unk_00008000@ha
    addi    r0, r4, unk_00008000@l
    clrlwi  r3, r3, 16
    clrlwi  r0, r0, 16
    subf    r0, r0, r3
    srwi    r3, r0, 31
    b       branch_0x803212ec

branch_0x803212e8:
    li      r3, 0x0
branch_0x803212ec:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl mainProc__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPQ28JASystem8TSeqCtrl
mainProc__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPQ28JASystem8TSeqCtrl: # 0x80321300
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x20(sp)
branch_0x80321328:
    lwz     r3, 0x4(r31)
    li      r28, 0x0
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
    lbz     r3, 0x0(r3)
    rlwinm. r0, r3, 0, 24, 24
    addi    r6, r3, 0x0
    bne-    branch_0x80321360
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r6, 0x0
    bl      cmdNoteOn__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc
    mr      r28, r3
    b       branch_0x80321580

branch_0x80321360:
    rlwinm  r4, r3, 0, 24, 27
    cmpwi   r4, 0x80
    bne-    branch_0x803214cc
    clrlwi. r0, r3, 29
    bne-    branch_0x803214cc
    cmplwi  r3, 0x80
    bne-    branch_0x80321384
    li      r7, 0x1
    b       branch_0x80321388

branch_0x80321384:
    li      r7, 0x2
branch_0x80321388:
    cmpwi   r7, 0x0
    li      r6, 0x0
    addi    r5, r6, 0x0
    ble-    branch_0x803214ac
    cmpwi   r7, 0x8
    addi    r3, r7, -0x8
    ble-    branch_0x80321480
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmpwi   r3, 0x0
    mtctr   r0
    ble-    branch_0x80321480
branch_0x803213b8:
    lwz     r4, 0x4(r30)
    slwi    r6, r6, 8
    addi    r5, r5, 0x8
    addi    r0, r4, 0x1
    stw     r0, 0x4(r30)
    lwz     r3, 0x4(r30)
    lbz     r4, 0x0(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    or      r6, r6, r4
    slwi    r6, r6, 8
    lwz     r4, 0x4(r30)
    lbz     r3, 0x0(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r30)
    or      r6, r6, r3
    slwi    r6, r6, 8
    lwz     r3, 0x4(r30)
    lbz     r4, 0x0(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    or      r6, r6, r4
    slwi    r6, r6, 8
    lwz     r4, 0x4(r30)
    lbz     r3, 0x0(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r30)
    or      r6, r6, r3
    slwi    r6, r6, 8
    lwz     r3, 0x4(r30)
    lbz     r4, 0x0(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    or      r6, r6, r4
    slwi    r6, r6, 8
    lwz     r4, 0x4(r30)
    lbz     r3, 0x0(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r30)
    or      r6, r6, r3
    slwi    r6, r6, 8
    lwz     r3, 0x4(r30)
    lbz     r4, 0x0(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    or      r6, r6, r4
    slwi    r6, r6, 8
    lbz     r0, 0x0(r3)
    or      r6, r6, r0
    bdnz+      branch_0x803213b8
branch_0x80321480:
    subf    r0, r5, r7
    cmpw    r5, r7
    mtctr   r0
    bge-    branch_0x803214ac
branch_0x80321490:
    lwz     r3, 0x4(r30)
    slwi    r6, r6, 8
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    lbz     r0, 0x0(r3)
    or      r6, r6, r0
    bdnz+      branch_0x80321490
branch_0x803214ac:
    cmpwi   r6, 0x0
    stw     r6, 0x8(r30)
    bne-    branch_0x803214c0
    li      r0, 0x0
    b       branch_0x803214c4

branch_0x803214c0:
    li      r0, 0x1
branch_0x803214c4:
    mr      r28, r0
    b       branch_0x80321580

branch_0x803214cc:
    cmpwi   r4, 0x80
    beq-    branch_0x803214dc
    cmplwi  r3, 0xf9
    bne-    branch_0x803214f4
branch_0x803214dc:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r6, 0x0
    bl      cmdNoteOff__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUc
    mr      r28, r3
    b       branch_0x80321580

branch_0x803214f4:
    rlwinm  r0, r3, 0, 24, 27
    cmpwi   r0, 0xa0
    beq-    branch_0x8032152c
    bge-    branch_0x80321510
    cmpwi   r0, 0x90
    beq-    branch_0x8032151c
    b       branch_0x80321568

branch_0x80321510:
    cmpwi   r0, 0xb0
    beq-    branch_0x8032153c
    b       branch_0x80321568

branch_0x8032151c:
    addi    r3, r30, 0x0
    clrlwi  r4, r6, 28
    bl      writeTimeParam__Q28JASystem6TTrackFUc
    b       branch_0x80321580

branch_0x8032152c:
    addi    r3, r30, 0x0
    clrlwi  r4, r6, 28
    bl      writeRegParam__Q28JASystem6TTrackFUc
    b       branch_0x80321580

branch_0x8032153c:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8032154c
    li      r5, 0x1
    b       branch_0x80321550

branch_0x8032154c:
    li      r5, 0x0
branch_0x80321550:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    clrlwi  r6, r6, 29
    bl      RegCmd_Process__Q28JASystem10TSeqParserFPQ28JASystem6TTrackii
    mr      r28, r3
    b       branch_0x80321580

branch_0x80321568:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r6, 0x0
    li      r6, 0x0
    bl      Cmd_Process__Q28JASystem10TSeqParserFPQ28JASystem6TTrackUcUs
    mr      r28, r3
branch_0x80321580:
    cmplwi  r28, 0x0
    beq+    branch_0x80321328
    cmplwi  r28, 0x1
    beq-    branch_0x803215b0
    cmplwi  r28, 0x2
    bne-    branch_0x803215a0
    li      r3, -0x2
    b       branch_0x803215b4

branch_0x803215a0:
    cmplwi  r28, 0x3
    bne+    branch_0x80321328
    li      r3, -0x1
    b       branch_0x803215b4

branch_0x803215b0:
    li      r3, 0x0
branch_0x803215b4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl __sinit_JASSeqParser_cpp
__sinit_JASSeqParser_cpp: # 0x803215d4
    stwu    sp, -0x18(sp)
    lis     r3, unk_803aa8d8@ha
    addi    r5, r3, unk_803aa8d8@l
    lwz     r4, 0x0(r5)
    lis     r3, unk_803e3720@h
    lwz     r0, 0x4(r5)
    addi    r3, r3, unk_803e3720@l
    stw     r4, 0x8(sp)
    stw     r0, 0xc(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x10(sp)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x27c(r3)
    stw     r0, 0x280(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x284(r3)
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0x288(r3)
    stw     r0, 0x28c(r3)
    lwz     r0, 0x8(r3)
    stw     r0, 0x290(r3)
    lwz     r4, 0xc(r3)
    lwz     r0, 0x10(r3)
    stw     r4, 0x294(r3)
    stw     r0, 0x298(r3)
    lwz     r0, 0x14(r3)
    stw     r0, 0x29c(r3)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x2a0(r3)
    stw     r0, 0x2a4(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x2a8(r3)
    lwz     r4, 0x18(r3)
    lwz     r0, 0x1c(r3)
    stw     r4, 0x2ac(r3)
    stw     r0, 0x2b0(r3)
    lwz     r0, 0x20(r3)
    stw     r0, 0x2b4(r3)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x2b8(r3)
    stw     r0, 0x2bc(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x2c0(r3)
    lwz     r4, 0x24(r3)
    lwz     r0, 0x28(r3)
    stw     r4, 0x2c4(r3)
    stw     r0, 0x2c8(r3)
    lwz     r0, 0x2c(r3)
    stw     r0, 0x2cc(r3)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x2d0(r3)
    stw     r0, 0x2d4(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x2d8(r3)
    lwz     r4, 0x30(r3)
    lwz     r0, 0x34(r3)
    stw     r4, 0x2dc(r3)
    stw     r0, 0x2e0(r3)
    lwz     r0, 0x38(r3)
    stw     r0, 0x2e4(r3)
    lwz     r4, 0x3c(r3)
    lwz     r0, 0x40(r3)
    stw     r4, 0x2e8(r3)
    stw     r0, 0x2ec(r3)
    lwz     r0, 0x44(r3)
    stw     r0, 0x2f0(r3)
    lwz     r4, 0x48(r3)
    lwz     r0, 0x4c(r3)
    stw     r4, 0x2f4(r3)
    stw     r0, 0x2f8(r3)
    lwz     r0, 0x50(r3)
    stw     r0, 0x2fc(r3)
    lwz     r4, 0x54(r3)
    lwz     r0, 0x58(r3)
    stw     r4, 0x300(r3)
    stw     r0, 0x304(r3)
    lwz     r0, 0x5c(r3)
    stw     r0, 0x308(r3)
    lwz     r4, 0x60(r3)
    lwz     r0, 0x64(r3)
    stw     r4, 0x30c(r3)
    stw     r0, 0x310(r3)
    lwz     r0, 0x68(r3)
    stw     r0, 0x314(r3)
    lwz     r4, 0x6c(r3)
    lwz     r0, 0x70(r3)
    stw     r4, 0x318(r3)
    stw     r0, 0x31c(r3)
    lwz     r0, 0x74(r3)
    stw     r0, 0x320(r3)
    lwz     r4, 0x78(r3)
    lwz     r0, 0x7c(r3)
    stw     r4, 0x324(r3)
    stw     r0, 0x328(r3)
    lwz     r0, 0x80(r3)
    stw     r0, 0x32c(r3)
    lwz     r4, 0x84(r3)
    lwz     r0, 0x88(r3)
    stw     r4, 0x330(r3)
    stw     r0, 0x334(r3)
    lwz     r0, 0x8c(r3)
    stw     r0, 0x338(r3)
    lwz     r4, 0x90(r3)
    lwz     r0, 0x94(r3)
    stw     r4, 0x33c(r3)
    stw     r0, 0x340(r3)
    lwz     r0, 0x98(r3)
    stw     r0, 0x344(r3)
    lwz     r4, 0x9c(r3)
    lwz     r0, 0xa0(r3)
    stw     r4, 0x348(r3)
    stw     r0, 0x34c(r3)
    lwz     r0, 0xa4(r3)
    stw     r0, 0x350(r3)
    lwz     r4, 0xa8(r3)
    lwz     r0, 0xac(r3)
    stw     r4, 0x354(r3)
    stw     r0, 0x358(r3)
    lwz     r0, 0xb0(r3)
    stw     r0, 0x35c(r3)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x360(r3)
    stw     r0, 0x364(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x368(r3)
    lwz     r4, 0xb4(r3)
    lwz     r0, 0xb8(r3)
    stw     r4, 0x36c(r3)
    stw     r0, 0x370(r3)
    lwz     r0, 0xbc(r3)
    stw     r0, 0x374(r3)
    lwz     r4, 0xc0(r3)
    lwz     r0, 0xc4(r3)
    stw     r4, 0x378(r3)
    stw     r0, 0x37c(r3)
    lwz     r0, 0xc8(r3)
    stw     r0, 0x380(r3)
    lwz     r4, 0xcc(r3)
    lwz     r0, 0xd0(r3)
    stw     r4, 0x384(r3)
    stw     r0, 0x388(r3)
    lwz     r0, 0xd4(r3)
    stw     r0, 0x38c(r3)
    lwz     r4, 0xd8(r3)
    lwz     r0, 0xdc(r3)
    stw     r4, 0x390(r3)
    stw     r0, 0x394(r3)
    lwz     r0, 0xe0(r3)
    stw     r0, 0x398(r3)
    lwz     r4, 0xe4(r3)
    lwz     r0, 0xe8(r3)
    stw     r4, 0x39c(r3)
    stw     r0, 0x3a0(r3)
    lwz     r0, 0xec(r3)
    stw     r0, 0x3a4(r3)
    lwz     r4, 0xf0(r3)
    lwz     r0, 0xf4(r3)
    stw     r4, 0x3a8(r3)
    stw     r0, 0x3ac(r3)
    lwz     r0, 0xf8(r3)
    stw     r0, 0x3b0(r3)
    lwz     r4, 0xfc(r3)
    lwz     r0, 0x100(r3)
    stw     r4, 0x3b4(r3)
    stw     r0, 0x3b8(r3)
    lwz     r0, 0x104(r3)
    stw     r0, 0x3bc(r3)
    lwz     r4, 0x108(r3)
    lwz     r0, 0x10c(r3)
    stw     r4, 0x3c0(r3)
    stw     r0, 0x3c4(r3)
    lwz     r0, 0x110(r3)
    stw     r0, 0x3c8(r3)
    lwz     r4, 0x114(r3)
    lwz     r0, 0x118(r3)
    stw     r4, 0x3cc(r3)
    stw     r0, 0x3d0(r3)
    lwz     r0, 0x11c(r3)
    stw     r0, 0x3d4(r3)
    lwz     r4, 0x120(r3)
    lwz     r0, 0x124(r3)
    stw     r4, 0x3d8(r3)
    stw     r0, 0x3dc(r3)
    lwz     r0, 0x128(r3)
    stw     r0, 0x3e0(r3)
    lwz     r4, 0x12c(r3)
    lwz     r0, 0x130(r3)
    stw     r4, 0x3e4(r3)
    stw     r0, 0x3e8(r3)
    lwz     r0, 0x134(r3)
    stw     r0, 0x3ec(r3)
    lwz     r4, 0x138(r3)
    lwz     r0, 0x13c(r3)
    stw     r4, 0x3f0(r3)
    stw     r0, 0x3f4(r3)
    lwz     r0, 0x140(r3)
    stw     r0, 0x3f8(r3)
    lwz     r4, 0x144(r3)
    lwz     r0, 0x148(r3)
    stw     r4, 0x3fc(r3)
    stw     r0, 0x400(r3)
    lwz     r0, 0x14c(r3)
    stw     r0, 0x404(r3)
    lwz     r4, 0x150(r3)
    lwz     r0, 0x154(r3)
    stw     r4, 0x408(r3)
    stw     r0, 0x40c(r3)
    lwz     r0, 0x158(r3)
    stw     r0, 0x410(r3)
    lwz     r4, 0x15c(r3)
    lwz     r0, 0x160(r3)
    stw     r4, 0x414(r3)
    stw     r0, 0x418(r3)
    lwz     r0, 0x164(r3)
    stw     r0, 0x41c(r3)
    lwz     r4, 0x168(r3)
    lwz     r0, 0x16c(r3)
    stw     r4, 0x420(r3)
    stw     r0, 0x424(r3)
    lwz     r0, 0x170(r3)
    stw     r0, 0x428(r3)
    lwz     r4, 0x174(r3)
    lwz     r0, 0x178(r3)
    stw     r4, 0x42c(r3)
    stw     r0, 0x430(r3)
    lwz     r0, 0x17c(r3)
    stw     r0, 0x434(r3)
    lwz     r4, 0x180(r3)
    lwz     r0, 0x184(r3)
    stw     r4, 0x438(r3)
    stw     r0, 0x43c(r3)
    lwz     r0, 0x188(r3)
    stw     r0, 0x440(r3)
    lwz     r4, 0x18c(r3)
    lwz     r0, 0x190(r3)
    stw     r4, 0x444(r3)
    stw     r0, 0x448(r3)
    lwz     r0, 0x194(r3)
    stw     r0, 0x44c(r3)
    lwz     r4, 0x198(r3)
    lwz     r0, 0x19c(r3)
    stw     r4, 0x450(r3)
    stw     r0, 0x454(r3)
    lwz     r0, 0x1a0(r3)
    stw     r0, 0x458(r3)
    lwz     r4, 0x1a4(r3)
    lwz     r0, 0x1a8(r3)
    stw     r4, 0x45c(r3)
    stw     r0, 0x460(r3)
    lwz     r0, 0x1ac(r3)
    stw     r0, 0x464(r3)
    lwz     r4, 0x1b0(r3)
    lwz     r0, 0x1b4(r3)
    stw     r4, 0x468(r3)
    stw     r0, 0x46c(r3)
    lwz     r0, 0x1b8(r3)
    stw     r0, 0x470(r3)
    lwz     r4, 0x1bc(r3)
    lwz     r0, 0x1c0(r3)
    stw     r4, 0x474(r3)
    stw     r0, 0x478(r3)
    lwz     r0, 0x1c4(r3)
    stw     r0, 0x47c(r3)
    lwz     r4, 0x1c8(r3)
    lwz     r0, 0x1cc(r3)
    stw     r4, 0x480(r3)
    stw     r0, 0x484(r3)
    lwz     r0, 0x1d0(r3)
    stw     r0, 0x488(r3)
    lwz     r4, 0x1d4(r3)
    lwz     r0, 0x1d8(r3)
    stw     r4, 0x48c(r3)
    stw     r0, 0x490(r3)
    lwz     r0, 0x1dc(r3)
    stw     r0, 0x494(r3)
    lwz     r4, 0x1e0(r3)
    lwz     r0, 0x1e4(r3)
    stw     r4, 0x498(r3)
    stw     r0, 0x49c(r3)
    lwz     r0, 0x1e8(r3)
    stw     r0, 0x4a0(r3)
    lwz     r4, 0x1ec(r3)
    lwz     r0, 0x1f0(r3)
    stw     r4, 0x4a4(r3)
    stw     r0, 0x4a8(r3)
    lwz     r0, 0x1f4(r3)
    stw     r0, 0x4ac(r3)
    lwz     r4, 0x1f8(r3)
    lwz     r0, 0x1fc(r3)
    stw     r4, 0x4b0(r3)
    stw     r0, 0x4b4(r3)
    lwz     r0, 0x200(r3)
    stw     r0, 0x4b8(r3)
    lwz     r4, 0x204(r3)
    lwz     r0, 0x208(r3)
    stw     r4, 0x4bc(r3)
    stw     r0, 0x4c0(r3)
    lwz     r0, 0x20c(r3)
    stw     r0, 0x4c4(r3)
    lwz     r4, 0x210(r3)
    lwz     r0, 0x214(r3)
    stw     r4, 0x4c8(r3)
    stw     r0, 0x4cc(r3)
    lwz     r0, 0x218(r3)
    stw     r0, 0x4d0(r3)
    lwz     r4, 0x21c(r3)
    lwz     r0, 0x220(r3)
    stw     r4, 0x4d4(r3)
    stw     r0, 0x4d8(r3)
    lwz     r0, 0x224(r3)
    stw     r0, 0x4dc(r3)
    lwz     r4, 0x228(r3)
    lwz     r0, 0x22c(r3)
    stw     r4, 0x4e0(r3)
    stw     r0, 0x4e4(r3)
    lwz     r0, 0x230(r3)
    stw     r0, 0x4e8(r3)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x4ec(r3)
    stw     r0, 0x4f0(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x4f4(r3)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x4f8(r3)
    stw     r0, 0x4fc(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x500(r3)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x504(r3)
    stw     r0, 0x508(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x50c(r3)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x510(r3)
    stw     r0, 0x514(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x518(r3)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x51c(r3)
    stw     r0, 0x520(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x524(r3)
    lwz     r4, 0x8(sp)
    lwz     r0, 0xc(sp)
    stw     r4, 0x528(r3)
    stw     r0, 0x52c(r3)
    lwz     r0, 0x10(sp)
    stw     r0, 0x530(r3)
    lwz     r4, 0x234(r3)
    lwz     r0, 0x238(r3)
    stw     r4, 0x534(r3)
    stw     r0, 0x538(r3)
    lwz     r0, 0x23c(r3)
    stw     r0, 0x53c(r3)
    lwz     r4, 0x240(r3)
    lwz     r0, 0x244(r3)
    stw     r4, 0x540(r3)
    stw     r0, 0x544(r3)
    lwz     r0, 0x248(r3)
    stw     r0, 0x548(r3)
    lwz     r4, 0x24c(r3)
    lwz     r0, 0x250(r3)
    stw     r4, 0x54c(r3)
    stw     r0, 0x550(r3)
    lwz     r0, 0x254(r3)
    stw     r0, 0x554(r3)
    lwz     r4, 0x258(r3)
    lwz     r0, 0x25c(r3)
    stw     r4, 0x558(r3)
    stw     r0, 0x55c(r3)
    lwz     r0, 0x260(r3)
    stw     r0, 0x560(r3)
    lwz     r4, 0x264(r3)
    lwz     r0, 0x268(r3)
    stw     r4, 0x564(r3)
    stw     r0, 0x568(r3)
    lwz     r0, 0x26c(r3)
    stw     r0, 0x56c(r3)
    lwz     r4, 0x270(r3)
    lwz     r0, 0x274(r3)
    stw     r4, 0x570(r3)
    stw     r0, 0x574(r3)
    lwz     r0, 0x278(r3)
    stw     r0, 0x578(r3)
    addi    sp, sp, 0x18
    blr

