
.globl checkFileExsistence__18JAISystemInterfaceFPc
checkFileExsistence__18JAISystemInterfaceFPc: # 0x8030d138
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    addi    r3, sp, 0xc
    bl      extendPath__Q28JASystem3DvdFPcPc
    addi    r3, sp, 0xc
    bl      DVDConvertPathToEntrynum
    cmpwi   r3, -0x1
    beq-    branch_0x8030d168
    li      r3, 0x1
    b       branch_0x8030d16c

branch_0x8030d168:
    li      r3, 0x0
branch_0x8030d16c:
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl checkSeqActiveFlag__18JAISystemInterfaceFUl
checkSeqActiveFlag__18JAISystemInterfaceFUl: # 0x8030d17c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    cmplwi  r3, 0x0
    beq-    branch_0x8030d270
    lbz     r4, 0x3c4(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8030d270
    lwz     r0, 0x2c4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2c8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2cc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2d0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2d4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2d8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2dc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2e0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2e4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2e8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2ec(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2f0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2f4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2f8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x2fc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030d260
    lwz     r0, 0x300(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030d268
branch_0x8030d260:
    mr      r3, r4
    b       branch_0x8030d274

branch_0x8030d268:
    li      r3, 0x0
    b       branch_0x8030d274

branch_0x8030d270:
    li      r3, 0x0
branch_0x8030d274:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl trackToSeqp__18JAISystemInterfaceFP8JAISoundUc
trackToSeqp__18JAISystemInterfaceFP8JAISoundUc: # 0x8030d284
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x8030d2e0
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    rlwinm  r0, r30, 30, 26, 29
    add     r3, r3, r0
    lwz     r3, 0x2c4(r3)
    clrlwi  r4, r30, 24
    cmplwi  r3, 0x0
    beq-    branch_0x8030d2f8
    clrlslwi  r0, r4, 28, 2
    add     r3, r3, r0
    lwz     r31, 0x2c4(r3)
    b       branch_0x8030d2f8

branch_0x8030d2e0:
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    clrlslwi  r0, r30, 28, 2
    add     r3, r3, r0
    lwz     r31, 0x2c4(r3)
branch_0x8030d2f8:
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf: # 0x8030d314
    mulli   r0, r4, 0x3c
    lwz     r3, 0x4c(r3)
    add     r3, r3, r0
    clrlslwi  r0, r5, 24, 2
    add     r3, r3, r0
    stfs    f1, 0x4(r3)
    blr


.globl setSeqPortargsU32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcUl
setSeqPortargsU32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcUl: # 0x8030d330
    mulli   r0, r4, 0x3c
    lwz     r3, 0x4c(r3)
    add     r3, r3, r0
    clrlslwi  r0, r5, 24, 2
    add     r3, r3, r0
    stw     r6, 0x4(r3)
    blr


.globl rootInit__18JAISystemInterfaceFP16JAISeqUpdateData
rootInit__18JAISystemInterfaceFP16JAISeqUpdateData: # 0x8030d34c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r31, 0x48(r3)
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    mr      r30, r3
    bl      getParamSeqTrackMax__18JAIGlobalParameterFv
    lis     r6, unk_0000ffff@ha
    addi    r5, r3, 0x0
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r6, r6, unk_0000ffff@l
    li      r7, 0x0
    bl      outerInit__18JAISystemInterfaceFP16JAISeqUpdateDataPvUlUsUc
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl trackInit__18JAISystemInterfaceFP16JAISeqUpdateData
trackInit__18JAISystemInterfaceFP16JAISeqUpdateData: # 0x8030d3c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r26, 0x38(sp)
    mr      r28, r3
    li      r30, 0x10
    lwz     r3, 0x48(r3)
    lwz     r0, 0x8(r3)
    addi    r31, r3, 0x0
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x8030d3f8
    bl      getParamSeqTrackMax__18JAIGlobalParameterFv
    mr      r30, r3
branch_0x8030d3f8:
    li      r29, 0x0
    lis     r27, unk_0000ffff@ha
    b       branch_0x8030d498

branch_0x8030d404:
    li      r0, 0x1
    lwz     r3, 0x4(r28)
    slw     r0, r0, r29
    and.    r0, r3, r0
    bne-    branch_0x8030d494
    lwz     r0, 0x8(r31)
    li      r26, 0x0
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x8030d460
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    rlwinm  r4, r29, 30, 26, 29
    addi    r0, r4, 0x2c4
    lwzx    r4, r3, r0
    clrlwi  r5, r29, 24
    cmplwi  r4, 0x0
    beq-    branch_0x8030d47c
    clrlslwi  r3, r5, 28, 2
    addi    r0, r3, 0x2c4
    lwzx    r26, r4, r0
    b       branch_0x8030d47c

branch_0x8030d460:
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    clrlslwi  r4, r29, 28, 2
    addi    r0, r4, 0x2c4
    lwzx    r26, r3, r0
branch_0x8030d47c:
    addi    r4, r26, 0x0
    addi    r3, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r27, unk_0000ffff@l
    li      r7, 0x0
    bl      outerInit__18JAISystemInterfaceFP16JAISeqUpdateDataPvUlUsUc
branch_0x8030d494:
    addi    r29, r29, 0x1
branch_0x8030d498:
    cmplw   r29, r30
    blt+    branch_0x8030d404
    lmw     r26, 0x38(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl outerInit__18JAISystemInterfaceFP16JAISeqUpdateDataPvUlUsUc
outerInit__18JAISystemInterfaceFP16JAISeqUpdateDataPvUlUsUc: # 0x8030d4b4
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    addi    r28, r3, 0x0
    addi    r25, r5, 0x0
    addi    r29, r6, 0x0
    beq-    branch_0x8030d690
    mulli   r31, r25, 0x3c
    lwz     r0, 0x4c(r28)
    add     r3, r0, r31
    addi    r26, r4, 0x0
    addi    r27, r3, 0x4
    stw     r26, 0x0(r3)
    lis     r3, setSePortParameter__18JAISystemInterfaceFPQ38JASystem6Kernel9TPortArgs@ha
    stw     r4, 0x0(r27)
    addi    r4, r3, setSePortParameter__18JAISystemInterfaceFPQ38JASystem6Kernel9TPortArgs@l
    addi    r3, r31, 0x2c
    lwz     r0, 0x4c(r28)
    addi    r5, r27, 0x0
    add     r3, r0, r3
    bl      setPortCmd__Q38JASystem6Kernel8TPortCmdFPFPQ38JASystem6Kernel9TPortArgs_vPQ38JASystem6Kernel9TPortArgs
    lwz     r30, 0x304(r26)
    bl      getParamSeqTrackMax__18JAIGlobalParameterFv
    cmplw   r25, r3
    bne-    branch_0x8030d568
    lfs     f0, 0xc(r28)
    li      r0, 0xff
    addi    r3, r30, 0x0
    stfs    f0, 0x8(r27)
    li      r4, 0x40
    lfs     f0, 0x10(r28)
    stfs    f0, 0xc(r27)
    lfs     f0, 0x14(r28)
    stfs    f0, 0x14(r27)
    lfs     f0, 0x18(r28)
    stfs    f0, 0x10(r27)
    lfs     f0, 0x1c(r28)
    stfs    f0, 0x18(r27)
    lfs     f0, 0x20(r28)
    stfs    f0, 0x24(r27)
    stw     r0, 0x4(r27)
    bl      onSwitch__Q38JASystem6TTrack11TOuterParamFUs
    b       branch_0x8030d5c8

branch_0x8030d568:
    lwz     r3, 0x48(r28)
    bl      getSeqParameter__8JAISoundFv
    addi    r7, r3, 0x0
    slwi    r0, r25, 4
    add     r6, r7, r0
    lfs     f0, 0x758(r6)
    li      r5, 0x0
    li      r4, 0x7f
    stfs    f0, 0x8(r27)
    addi    r0, r25, 0x1830
    addi    r3, r26, 0x0
    lfs     f0, 0xb58(r6)
    stfs    f0, 0xc(r27)
    lfs     f0, 0xd58(r6)
    stfs    f0, 0x14(r27)
    lfs     f0, 0x958(r6)
    stfs    f0, 0x10(r27)
    lfs     f0, 0xf58(r6)
    stfs    f0, 0x18(r27)
    stw     r5, 0x20(r27)
    stw     r4, 0x4(r27)
    lbzx    r4, r7, r0
    extrwi  r4, r4, 1, 24
    bl      muteTrack__Q28JASystem6TTrackFUc
branch_0x8030d5c8:
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      onSwitch__Q38JASystem6TTrack11TOuterParamFUs
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      onSwitch__Q38JASystem6TTrack11TOuterParamFUs
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      onSwitch__Q38JASystem6TTrack11TOuterParamFUs
    addi    r3, r30, 0x0
    li      r4, 0x8
    bl      onSwitch__Q38JASystem6TTrack11TOuterParamFUs
    addi    r3, r30, 0x0
    li      r4, 0x10
    bl      onSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r29, 31
    clrlwi  r27, r29, 16
    bne-    branch_0x8030d620
    lfs     f1, 0x600(r2)
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
branch_0x8030d620:
    rlwinm. r0, r27, 0, 30, 30
    bne-    branch_0x8030d638
    lfs     f1, 0x600(r2)
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
branch_0x8030d638:
    rlwinm. r0, r27, 0, 29, 29
    bne-    branch_0x8030d650
    lfs     f1, 0x600(r2)
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
branch_0x8030d650:
    rlwinm. r0, r27, 0, 28, 28
    bne-    branch_0x8030d668
    lfs     f1, 0x600(r2)
    addi    r3, r30, 0x0
    li      r4, 0x8
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
branch_0x8030d668:
    rlwinm. r0, r27, 0, 27, 27
    bne-    branch_0x8030d680
    lfs     f1, 0x600(r2)
    addi    r3, r30, 0x0
    li      r4, 0x10
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
branch_0x8030d680:
    lwz     r0, 0x4c(r28)
    addi    r3, r31, 0x2c
    add     r3, r0, r3
    bl      addPortCmdOnce__Q38JASystem6Kernel8TPortCmdFv
branch_0x8030d690:
    lmw     r25, 0x24(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl setSePortParameter__18JAISystemInterfaceFPQ38JASystem6Kernel9TPortArgs
setSePortParameter__18JAISystemInterfaceFPQ38JASystem6Kernel9TPortArgs: # 0x8030d6a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    mr      r31, r0
    beq-    branch_0x8030d7e0
    lwz     r0, 0x4(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x8030d6f4
    lwz     r3, 0x304(r31)
    li      r4, 0x1
    lfs     f1, 0x8(r30)
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    lwz     r0, 0x4(r30)
    xori     r0, r0, 0x1
    stw     r0, 0x4(r30)
branch_0x8030d6f4:
    lwz     r0, 0x4(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8030d71c
    lwz     r3, 0x304(r31)
    li      r4, 0x2
    lfs     f1, 0xc(r30)
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    lwz     r0, 0x4(r30)
    xori     r0, r0, 0x2
    stw     r0, 0x4(r30)
branch_0x8030d71c:
    lwz     r0, 0x4(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8030d744
    lwz     r3, 0x304(r31)
    li      r4, 0x8
    lfs     f1, 0x10(r30)
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    lwz     r0, 0x4(r30)
    xori     r0, r0, 0x4
    stw     r0, 0x4(r30)
branch_0x8030d744:
    lwz     r0, 0x4(r30)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8030d76c
    lwz     r3, 0x304(r31)
    li      r4, 0x4
    lfs     f1, 0x14(r30)
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    lwz     r0, 0x4(r30)
    xori     r0, r0, 0x8
    stw     r0, 0x4(r30)
branch_0x8030d76c:
    lwz     r0, 0x4(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8030d794
    lwz     r3, 0x304(r31)
    li      r4, 0x40
    lfs     f1, 0x24(r30)
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    lwz     r0, 0x4(r30)
    xori     r0, r0, 0x80
    stw     r0, 0x4(r30)
branch_0x8030d794:
    lwz     r0, 0x4(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8030d7bc
    lwz     r3, 0x304(r31)
    li      r4, 0x10
    lfs     f1, 0x18(r30)
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    lwz     r0, 0x4(r30)
    xori     r0, r0, 0x10
    stw     r0, 0x4(r30)
branch_0x8030d7bc:
    lwz     r0, 0x4(r30)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8030d7e0
    lwz     r0, 0x20(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8030d7e0
    addi    r3, r31, 0x0
    li      r4, 0x5
    bl      setInterrupt__Q28JASystem6TTrackFUs
branch_0x8030d7e0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl setSeqData__18JAISystemInterfaceFPQ28JASystem6TTrackPUclQ38JASystem6Player12SEQ_PLAYMODE
setSeqData__18JAISystemInterfaceFPQ28JASystem6TTrackPUclQ38JASystem6Player12SEQ_PLAYMODE: # 0x8030d7f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    mr.     r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    bne-    branch_0x8030d844
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      getNewTrack__Q28JASystem8TrackMgrFv
    addi    r27, r3, 0x0
    addi    r3, r31, 0x0
    bl      OSRestoreInterrupts
    cmplwi  r27, 0x0
    bne-    branch_0x8030d850
    li      r3, -0x1
    b       branch_0x8030d864

branch_0x8030d844:
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      setInnerMemory__Q28JASystem6TTrackFUc
branch_0x8030d850:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    bl      setSeqData__Q28JASystem6TTrackFPUclQ38JASystem6Player12SEQ_PLAYMODE
branch_0x8030d864:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl startSeq__18JAISystemInterfaceFUl
startSeq__18JAISystemInterfaceFUl: # 0x8030d878
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    addis   r0, r31, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x8030d8a4
    li      r3, 0x0
    b       branch_0x8030d8bc

branch_0x8030d8a4:
    cmplwi  r3, 0x0
    bne-    branch_0x8030d8b4
    li      r3, 0x0
    b       branch_0x8030d8bc

branch_0x8030d8b4:
    bl      startSeq__Q28JASystem6TTrackFv
    clrlwi  r3, r3, 24
branch_0x8030d8bc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stopSeq__18JAISystemInterfaceFl
stopSeq__18JAISystemInterfaceFl: # 0x8030d8d0
    mflr    r0
    cmpwi   r3, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x8030d8ec
    li      r3, 0x0
    b       branch_0x8030d908

branch_0x8030d8ec:
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    cmplwi  r3, 0x0
    bne-    branch_0x8030d900
    li      r3, 0x0
    b       branch_0x8030d908

branch_0x8030d900:
    bl      stopSeq__Q28JASystem6TTrackFv
    clrlwi  r3, r3, 24
branch_0x8030d908:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl writePortApp__18JAISystemInterfaceFUlUlUs
writePortApp__18JAISystemInterfaceFUlUlUs: # 0x8030d918
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    cmplwi  r3, 0x0
    bne-    branch_0x8030d948
    li      r3, 0x0
    b       branch_0x8030d958

branch_0x8030d948:
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      writePortApp__Q28JASystem6TTrackFUlUs
    clrlwi  r3, r3, 24
branch_0x8030d958:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl readPortApp__18JAISystemInterfaceFUlUlPUs
readPortApp__18JAISystemInterfaceFUlUlPUs: # 0x8030d970
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    cmplwi  r3, 0x0
    bne-    branch_0x8030d9a0
    li      r3, 0x0
    b       branch_0x8030d9b0

branch_0x8030d9a0:
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      readPortApp__Q28JASystem6TTrackFUlPUs
    clrlwi  r3, r3, 24
branch_0x8030d9b0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __sinit_JAISystemInterface_cpp
__sinit_JAISystemInterface_cpp: # 0x8030d9c8
    mflr    r0
    lis     r3, systemPortCmd__18JAISystemInterface@h
    stw     r0, 0x4(sp)
    addi    r3, r3, systemPortCmd__18JAISystemInterface@l
    stwu    sp, -0x8(sp)
    bl      __ct__Q38JASystem6Kernel8TPortCmdFv
    lis     r4, __dt__Q38JASystem6Kernel8TPortCmdFv@ha
    lis     r5, unk_803fd7f8@ha
    addi    r4, r4, __dt__Q38JASystem6Kernel8TPortCmdFv@l
    addi    r5, r5, unk_803fd7f8@l
    bl      __register_global_object
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__Q38JASystem6Kernel8TPortCmdFv
__dt__Q38JASystem6Kernel8TPortCmdFv: # 0x8030da04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8030da2c
    extsh.  r0, r4
    ble-    branch_0x8030da2c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8030da2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

