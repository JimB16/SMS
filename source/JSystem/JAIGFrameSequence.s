
.globl stopSeq__8JAIBasicFP8JAISound
stopSeq__8JAIBasicFP8JAISound: # 0x803068d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      getSwBit__8JAISoundFv
    clrlwi. r0, r3, 31
    beq-    branch_0x80306988
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x8030697c

branch_0x8030690c:
    lwz     r3, 0x0(r30)
    addi    r0, r29, 0x48
    lwz     r3, 0x180(r3)
    lwzx    r0, r3, r0
    cmplw   r31, r0
    mr      r27, r0
    beq-    branch_0x80306974
    cmplwi  r27, 0x0
    beq-    branch_0x80306974
    lbz     r0, 0x1(r27)
    cmplwi  r0, 0x3
    blt-    branch_0x80306974
    mr      r3, r27
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x80306974
    lfs     f1, 0x540(rtoc)
    addi    r3, r27, 0x0
    li      r4, 0xa
    li      r5, 0xa
    bl      setSeqInterVolume__8JAISoundFUcfUl
    mr      r3, r27
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    bl      unPauseTrackAll__Q28JASystem6TTrackFv
branch_0x80306974:
    addi    r28, r28, 0x1
    addi    r29, r29, 0x50
branch_0x8030697c:
    lwz     r0, -0x74b8(r13)
    cmplw   r28, r0
    blt+    branch_0x8030690c
branch_0x80306988:
    li      r29, 0x0
    stw     r29, 0x34(r31)
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    stw     r29, 0x1850(r3)
    lbz     r0, 0x1(r31)
    cmplwi  r0, 0x3
    blt-    branch_0x803069c0
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    mr      r4, r3
    lwz     r3, 0x0(r30)
    lbz     r4, 0x1754(r4)
    bl      releaseAutoHeapPointer__7JAIDataFUc
branch_0x803069c0:
    li      r29, 0x0
    stb     r29, 0x1(r31)
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      releaseSeqParameterPointer__8JAIBasicFP15JAISeqParameter
    lwz     r4, 0x0(r30)
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    addi    r4, r4, 0x210
    bl      releaseControllerHandle__8JAIBasicFP13JAILinkBufferP8JAISound
    lbz     r0, 0x0(r31)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x50
    lwz     r3, 0x180(r3)
    add     r3, r3, r0
    stw     r29, 0x48(r3)
    lwz     r0, 0x34(sp)
    lmw     r27, 0x1c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl checkEntriedSeq__8JAIBasicFv
checkEntriedSeq__8JAIBasicFv: # 0x80306a1c
    mflr    r0
    lis     r4, 0x8031
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r20, 0x20(sp)
    addi    r24, r3, 0x0
    subi    r31, r4, 0x7d70
    li      r28, 0x0
    li      r23, 0x0
    b       branch_0x80306d88

branch_0x80306a44:
    lwz     r3, 0x0(r24)
    lwz     r0, 0x180(r3)
    add     r30, r0, r23
    addi    r29, r30, 0x48
    lwz     r3, 0x48(r30)
    addi    r27, r30, 0x8
    cmplwi  r3, 0x0
    beq-    branch_0x80306d80
    lwz     r0, 0x0(r27)
    clrlwi. r0, r0, 31
    beq-    branch_0x80306d80
    lbz     r0, 0x3(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80306d94
    lwz     r0, 0x8(r3)
    lwz     r3, 0x2c(r24)
    clrlwi  r0, r0, 22
    add     r3, r3, r0
    bl      checkSize__Q28JASystem5VloadFUl
    lwz     r4, 0x0(r29)
    mr      r0, r3
    lwz     r3, 0x0(r24)
    mr      r26, r0
    lwz     r0, 0x8(r4)
    addi    r5, sp, 0x18
    clrlwi  r4, r0, 22
    bl      checkOnMemory__7JAIDataFUlPUc
    mr.     r25, r3
    bne-    branch_0x80306d10
    lwz     r3, 0x0(r29)
    li      r4, 0x10
    bl      checkSwBit__8JAISoundFUl
    cmplwi  r3, 0x0
    beq-    branch_0x80306b10
    lwz     r5, 0x0(r29)
    mr      r4, r26
    lwz     r3, 0x0(r24)
    lwz     r0, 0x8(r5)
    clrlwi  r5, r0, 22
    bl      getFreeStayHeapPointer__7JAIDataFUlUl
    li      r22, 0xff
    stb     r22, 0x18(sp)
    mr      r25, r3
    lwz     r3, 0x0(r29)
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r25, 0x0
    stb     r22, 0x1754(r3)
    bne-    branch_0x80306b10
    lwz     r3, 0x0(r29)
    li      r4, 0x20
    bl      checkSwBit__8JAISoundFUl
branch_0x80306b10:
    cmplwi  r25, 0x0
    bne-    branch_0x80306c68
    lwz     r3, 0x0(r29)
    li      r4, 0x20
    bl      checkSwBit__8JAISoundFUl
    cmplwi  r3, 0x0
    bne-    branch_0x80306b40
    lwz     r3, 0x0(r29)
    li      r4, 0x10
    bl      checkSwBit__8JAISoundFUl
    cmplwi  r3, 0x0
    bne-    branch_0x80306c68
branch_0x80306b40:
    lwz     r3, 0x0(r24)
    bl      checkUsefulAutoHeapPosition__7JAIDataFv
    stb     r3, 0x18(sp)
    lwz     r0, -0x74a8(r13)
    lbz     r3, 0x18(sp)
    cmplw   r3, r0
    blt-    branch_0x80306c14
    li      r25, 0x0
    li      r22, 0x0
    b       branch_0x80306bec

branch_0x80306b68:
    lwz     r3, 0x0(r24)
    addi    r0, r22, 0x10
    lwz     r7, 0x1ec(r3)
    lwzx    r4, r7, r0
    addis   r0, r4, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x80306be4
    lwz     r8, -0x74b8(r13)
    addi    r5, r22, 0x8
    li      r9, 0x0
    b       branch_0x80306bc8

branch_0x80306b94:
    mulli   r4, r9, 0x50
    lwz     r6, 0x180(r3)
    addi    r0, r4, 0x48
    lwzx    r4, r6, r0
    cmplwi  r4, 0x0
    beq-    branch_0x80306bc4
    lwz     r0, 0x8(r4)
    lwzx    r4, r7, r5
    clrlwi  r0, r0, 24
    cmplw   r4, r0
    bne-    branch_0x80306bc4
    mr      r9, r8
branch_0x80306bc4:
    addi    r9, r9, 0x1
branch_0x80306bc8:
    cmplw   r9, r8
    blt+    branch_0x80306b94
    cmplw   r9, r8
    bne-    branch_0x80306be4
    clrlwi  r4, r25, 24
    bl      releaseAutoHeapPointer__7JAIDataFUc
    stb     r25, 0x18(sp)
branch_0x80306be4:
    addi    r25, r25, 0x1
    addi    r22, r22, 0x14
branch_0x80306bec:
    lwz     r3, -0x74a8(r13)
    cmplw   r25, r3
    blt+    branch_0x80306b68
    lbz     r0, 0x18(sp)
    cmplw   r0, r3
    blt-    branch_0x80306c30
    lwz     r3, 0x0(r29)
    li      r4, 0x0
    bl      stop__8JAISoundFUl
    b       branch_0x80306d94

branch_0x80306c14:
    lwz     r0, -0x74a0(r13)
    cmplw   r26, r0
    blt-    branch_0x80306c30
    lwz     r3, 0x0(r29)
    li      r4, 0x0
    bl      stop__8JAISoundFUl
    b       branch_0x80306d94

branch_0x80306c30:
    lbz     r22, 0x18(sp)
    lwz     r3, 0x0(r29)
    bl      getSeqParameter__8JAISoundFv
    stb     r22, 0x1754(r3)
    lwz     r22, 0x0(r29)
    mr      r3, r22
    bl      getSeqParameter__8JAISoundFv
    mr      r4, r3
    lwz     r0, 0x8(r22)
    lwz     r3, 0x0(r24)
    lbz     r4, 0x1754(r4)
    clrlwi  r5, r0, 22
    bl      getFreeAutoHeapPointer__7JAIDataFUcUl
    mr      r25, r3
branch_0x80306c68:
    lwz     r3, 0x0(r29)
    li      r4, 0x40
    bl      checkSwBit__8JAISoundFUl
    cmplwi  r3, 0x0
    bne-    branch_0x80306cdc
    lwz     r3, 0x0(r29)
    li      r22, 0x1
    li      r5, 0x1
    stb     r22, 0x1(r3)
    lwz     r3, 0x0(r29)
    lbz     r4, 0x18(sp)
    lwz     r0, 0x8(r3)
    slwi    r6, r4, 8
    lwz     r3, 0x0(r24)
    clrlwi  r21, r0, 22
    clrlslwi  r0, r0, 22, 16
    or      r0, r28, r0
    or      r20, r6, r0
    bl      setAutoHeapLoadedFlag__7JAIDataFUcUc
    stb     r22, 0x3(r30)
    addi    r4, r25, 0x0
    addi    r6, r26, 0x0
    lwz     r0, 0x2c(r24)
    addi    r7, r31, 0x0
    addi    r8, r20, 0x0
    add     r3, r0, r21
    li      r5, 0x0
    bl      loadFileAsync__Q28JASystem5VloadFUlPUcUlUlPFUl_vUl
    b       branch_0x80306d58

branch_0x80306cdc:
    lwz     r3, 0x0(r29)
    mr      r4, r25
    lwz     r7, 0x2c(r24)
    mr      r6, r26
    lwz     r0, 0x8(r3)
    li      r5, 0x0
    clrlwi  r0, r0, 22
    add     r3, r7, r0
    bl      loadFile__Q28JASystem5VloadFUlPUcUlUl
    lwz     r3, 0x0(r29)
    li      r0, 0x2
    stb     r0, 0x1(r3)
    b       branch_0x80306d58

branch_0x80306d10:
    addis   r0, r25, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x80306d94
    lbz     r4, 0x18(sp)
    lwz     r3, 0x0(r29)
    cmplwi  r4, 0xff
    beq-    branch_0x80306d3c
    lwz     r0, 0x8(r3)
    lwz     r3, 0x0(r24)
    clrlwi  r5, r0, 22
    bl      getFreeAutoHeapPointer__7JAIDataFUcUl
branch_0x80306d3c:
    lbz     r22, 0x18(sp)
    lwz     r3, 0x0(r29)
    bl      getSeqParameter__8JAISoundFv
    stb     r22, 0x1754(r3)
    li      r0, 0x2
    lwz     r3, 0x0(r29)
    stb     r0, 0x1(r3)
branch_0x80306d58:
    cmplwi  r25, 0x0
    beq-    branch_0x80306d74
    stw     r25, 0x40(r30)
    lwz     r0, 0x0(r27)
    xori     r0, r0, 0x1
    stw     r0, 0x0(r27)
    b       branch_0x80306d80

branch_0x80306d74:
    mr      r3, r24
    lwz     r4, 0x0(r29)
    bl      stopSeq__8JAIBasicFP8JAISound
branch_0x80306d80:
    addi    r28, r28, 0x1
    addi    r23, r23, 0x50
branch_0x80306d88:
    lwz     r0, -0x74b8(r13)
    cmplw   r28, r0
    blt+    branch_0x80306a44
branch_0x80306d94:
    lmw     r20, 0x20(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl checkPlayingSeqTrack__8JAIBasicFUl
checkPlayingSeqTrack__8JAIBasicFUl: # 0x80306da8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stfd    f28, 0x78(sp)
    stfd    f27, 0x70(sp)
    stmw    r19, 0x3c(sp)
    mr      r28, r3
    mulli   r25, r4, 0x50
    lwz     r3, 0x0(r3)
    lwz     r0, 0x180(r3)
    add     r26, r0, r25
    lwz     r3, 0x48(r26)
    addi    r31, r26, 0x48
    bl      getSeqParameter__8JAISoundFv
    lbz     r0, 0x1755(r3)
    cmplwi  r0, 0x2
    beq-    branch_0x80307c1c
    addi    r30, r26, 0x8
    lwz     r3, 0x0(r31)
    bl      getSeqParameter__8JAISoundFv
    lwz     r29, 0x44(r26)
    addi    r27, r3, 0x0
    li      r6, 0x0
    li      r5, 0x0
    b       branch_0x80306e24

branch_0x80306e18:
    clrlslwi  r0, r6, 24, 2
    stwx    r5, r29, r0
    addi    r6, r6, 0x1
branch_0x80306e24:
    lwz     r3, -0x74bc(r13)
    clrlwi  r4, r6, 24
    addi    r0, r3, 0x1
    cmplw   r4, r0
    blt+    branch_0x80306e18
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80306eb8
    lwz     r3, 0x0(r31)
    lwz     r5, 0x10(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x80306e60
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x4
    bge-    branch_0x80306e94
branch_0x80306e60:
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x3
    blt-    branch_0x80306e74
    lwz     r3, 0x0(r27)
    bl      stopSeq__18JAISystemInterfaceFl
branch_0x80306e74:
    lwz     r3, 0x0(r31)
    bl      clearMainSoundPPointer__8JAISoundFv
    mr      r3, r28
    lwz     r4, 0x0(r31)
    bl      stopSeq__8JAIBasicFP8JAISound
    li      r0, 0x0
    stw     r0, 0x0(r30)
    b       branch_0x80307c1c

branch_0x80306e94:
    lfs     f1, 0x544(rtoc)
    li      r4, 0x6
    bl      setSeqInterVolume__8JAISoundFUcfUl
    lwz     r3, 0x0(r31)
    li      r0, 0x5
    stb     r0, 0x1(r3)
    lwz     r0, 0x0(r30)
    xori     r0, r0, 0x2
    stw     r0, 0x0(r30)
branch_0x80306eb8:
    lwz     r3, 0x0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80307098
    lwz     r0, 0x20(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80307098
    lbz     r3, 0x4(r3)
    cmplwi  r3, 0x4
    bne-    branch_0x80306ee8
    lwz     r23, -0x7450(r13)
    li      r0, 0x0
    b       branch_0x80306ef0

branch_0x80306ee8:
    addi    r0, r3, 0x0
    addi    r23, r3, 0x1
branch_0x80306ef0:
    mr      r24, r0
    lfs     f29, 0x544(rtoc)
    mulli   r20, r24, 0x1c
    lfd     f30, 0x548(rtoc)
    lfd     f31, 0x550(rtoc)
    lfs     f27, 0x558(rtoc)
    mulli   r21, r24, 0xc
    lfd     f28, 0x560(rtoc)
    lis     r19, 0x4330
    b       branch_0x80307090

branch_0x80306f18:
    lwz     r3, 0x0(r31)
    addi    r0, r21, 0x8
    lwz     r3, 0x1c(r3)
    add     r22, r3, r20
    lwz     r4, 0x0(r22)
    mr      r5, r22
    lwz     r3, 0x4(r22)
    stw     r4, 0xc(r22)
    stw     r3, 0x10(r22)
    lwz     r3, 0x8(r22)
    stw     r3, 0x14(r22)
    lwz     r3, 0x8(r28)
    lwz     r4, 0x0(r31)
    lwzx    r3, r3, r0
    lwz     r4, 0x24(r4)
    bl      PSMTXMultVec
    lfs     f1, 0x0(r22)
    lfs     f0, 0x4(r22)
    fmuls   f1, f1, f1
    lfs     f2, 0x8(r22)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f2, f2, f0
    fcmpo   cr0, f2, f29
    ble-    branch_0x80306fc4
    frsqrte f1, f2
    fmul    f0, f1, f1
    fmul    f1, f30, f1
    fnmsub   f0, f2, f0, f31
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f30, f1
    fnmsub   f0, f2, f0, f31
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f30, f1
    fnmsub   f0, f2, f0, f31
    fmul    f0, f1, f0
    fmul    f0, f2, f0
    frsp    f0, f0
    stfs    f0, 0x10(sp)
    lfs     f2, 0x10(sp)
branch_0x80306fc4:
    stfs    f2, 0x18(r22)
    li      r4, 0x0
    lwz     r3, 0x0(r31)
    lfs     f1, -0x7470(r13)
    lwz     r12, 0x40(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    fmuls   f0, f27, f1
    lwz     r3, 0x0(r31)
    lbz     r5, -0x74d0(r13)
    li      r4, 0x4
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    clrlwi  r0, r0, 24
    stw     r0, 0x2c(sp)
    stw     r19, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f1, f0, f28
    bl      setSeqInterVolume__8JAISoundFUcfUl
    lwz     r3, 0x0(r31)
    lwz     r12, 0x40(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    fctiwz  f0, f1
    lwz     r3, 0x0(r31)
    lbz     r5, -0x74d0(r13)
    li      r4, 0x4
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    clrlwi  r0, r0, 24
    stw     r0, 0x1c(sp)
    stw     r19, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f28
    bl      setSeqInterPan__8JAISoundFUcfUl
    lwz     r3, 0x0(r31)
    li      r4, 0x100
    lwz     r12, 0x40(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r31)
    li      r4, 0x4
    lwz     r5, -0x745c(r13)
    bl      setSeqInterPitch__8JAISoundFUcfUl
    addi    r24, r24, 0x1
    addi    r21, r21, 0xc
    addi    r20, r20, 0x1c
branch_0x80307090:
    cmplw   r24, r23
    blt+    branch_0x80306f18
branch_0x80307098:
    lwz     r4, 0x0(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x803070b0
    lwz     r3, 0x14(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x14(r4)
branch_0x803070b0:
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80307c1c
    lwz     r3, -0x74b8(r13)
    rlwinm. r0, r0, 0, 13, 13
    addi    r22, r3, 0xc
    beq-    branch_0x80307190
    lfs     f27, 0x540(rtoc)
    clrlwi  r20, r22, 24
    li      r23, 0x0
    li      r21, 0x1
    b       branch_0x8030712c

branch_0x803070e0:
    clrlwi  r3, r23, 24
    lwz     r0, 0x1760(r27)
    slw     r19, r21, r3
    clrlslwi  r3, r23, 24, 4
    addi    r24, r3, 0x114
    and.    r0, r0, r19
    add     r24, r27, r24
    beq-    branch_0x80307120
    lwz     r3, 0x0(r28)
    mr      r4, r24
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x80307120
    lwz     r0, 0x1760(r27)
    xor     r0, r0, r19
    stw     r0, 0x1760(r27)
branch_0x80307120:
    lfs     f0, 0x4(r24)
    addi    r23, r23, 0x1
    fmuls   f27, f27, f0
branch_0x8030712c:
    clrlwi  r0, r23, 24
    cmplw   r0, r20
    blt+    branch_0x803070e0
    lfs     f0, 0xc(r26)
    fcmpu   cr0, f0, f27
    beq-    branch_0x80307178
    stfs    f27, 0xc(r26)
    fmr     f1, f27
    li      r5, 0x2
    lwz     r3, 0x0(r28)
    lwz     r4, -0x74bc(r13)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
    lwz     r0, -0x74bc(r13)
    slwi    r3, r0, 2
    lwzx    r0, r29, r3
    ori     r0, r0, 0x1
    stwx    r0, r29, r3
branch_0x80307178:
    lwz     r0, 0x1760(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80307190
    lwz     r0, 0x0(r30)
    xoris   r0, r0, 0x4
    stw     r0, 0x0(r30)
branch_0x80307190:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x80307294
    lfs     f27, 0x544(rtoc)
    clrlwi  r20, r22, 24
    lfs     f29, 0x55c(rtoc)
    li      r23, 0x0
    li      r21, 0x1
    b       branch_0x80307204

branch_0x803071b4:
    clrlwi  r3, r23, 24
    lwz     r0, 0x1764(r27)
    slw     r19, r21, r3
    clrlslwi  r3, r23, 24, 4
    addi    r24, r3, 0x254
    and.    r0, r0, r19
    add     r24, r27, r24
    beq-    branch_0x803071f4
    lwz     r3, 0x0(r28)
    mr      r4, r24
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x803071f4
    lwz     r0, 0x1764(r27)
    xor     r0, r0, r19
    stw     r0, 0x1764(r27)
branch_0x803071f4:
    lfs     f0, 0x4(r24)
    addi    r23, r23, 0x1
    fsubs   f0, f0, f29
    fadds   f27, f27, f0
branch_0x80307204:
    clrlwi  r0, r23, 24
    cmplw   r0, r20
    blt+    branch_0x803071b4
    lfs     f1, 0x55c(rtoc)
    lfs     f0, 0x540(rtoc)
    fadds   f27, f27, f1
    fcmpo   cr0, f27, f0
    ble-    branch_0x8030722c
    fmr     f27, f0
    b       branch_0x8030723c

branch_0x8030722c:
    lfs     f0, 0x544(rtoc)
    fcmpo   cr0, f27, f0
    bge-    branch_0x8030723c
    fmr     f27, f0
branch_0x8030723c:
    lfs     f0, 0x18(r26)
    fcmpu   cr0, f0, f27
    beq-    branch_0x8030727c
    stfs    f27, 0x18(r26)
    fmr     f1, f27
    li      r5, 0x4
    lwz     r3, 0x0(r28)
    lwz     r4, -0x74bc(r13)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
    lwz     r0, -0x74bc(r13)
    slwi    r3, r0, 2
    lwzx    r0, r29, r3
    ori     r0, r0, 0x4
    stwx    r0, r29, r3
branch_0x8030727c:
    lwz     r0, 0x1764(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80307294
    lwz     r0, 0x0(r30)
    xoris   r0, r0, 0x8
    stw     r0, 0x0(r30)
branch_0x80307294:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x80307364
    lfs     f27, 0x540(rtoc)
    clrlwi  r20, r22, 24
    li      r23, 0x0
    li      r21, 0x1
    b       branch_0x80307300

branch_0x803072b4:
    clrlwi  r3, r23, 24
    lwz     r0, 0x1768(r27)
    slw     r19, r21, r3
    clrlslwi  r3, r23, 24, 4
    addi    r24, r3, 0x394
    and.    r0, r0, r19
    add     r24, r27, r24
    beq-    branch_0x803072f4
    lwz     r3, 0x0(r28)
    mr      r4, r24
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x803072f4
    lwz     r0, 0x1768(r27)
    xor     r0, r0, r19
    stw     r0, 0x1768(r27)
branch_0x803072f4:
    lfs     f0, 0x4(r24)
    addi    r23, r23, 0x1
    fmuls   f27, f27, f0
branch_0x80307300:
    clrlwi  r0, r23, 24
    cmplw   r0, r20
    blt+    branch_0x803072b4
    lfs     f0, 0x10(r26)
    fcmpu   cr0, f0, f27
    beq-    branch_0x8030734c
    stfs    f27, 0x10(r26)
    fmr     f1, f27
    li      r5, 0x3
    lwz     r3, 0x0(r28)
    lwz     r4, -0x74bc(r13)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
    lwz     r0, -0x74bc(r13)
    slwi    r3, r0, 2
    lwzx    r0, r29, r3
    ori     r0, r0, 0x2
    stwx    r0, r29, r3
branch_0x8030734c:
    lwz     r0, 0x1768(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80307364
    lwz     r0, 0x0(r30)
    xoris   r0, r0, 0x10
    stw     r0, 0x0(r30)
branch_0x80307364:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 10, 10
    beq-    branch_0x80307444
    lfs     f27, 0x544(rtoc)
    clrlwi  r20, r22, 24
    li      r23, 0x0
    li      r21, 0x1
    b       branch_0x803073d0

branch_0x80307384:
    clrlwi  r3, r23, 24
    lwz     r0, 0x176c(r27)
    slw     r19, r21, r3
    clrlslwi  r3, r23, 24, 4
    addi    r24, r3, 0x4d4
    and.    r0, r0, r19
    add     r24, r27, r24
    beq-    branch_0x803073cc
    lwz     r3, 0x0(r28)
    mr      r4, r24
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x803073c4
    lwz     r0, 0x176c(r27)
    xor     r0, r0, r19
    stw     r0, 0x176c(r27)
branch_0x803073c4:
    lfs     f0, 0x4(r24)
    fadds   f27, f27, f0
branch_0x803073cc:
    addi    r23, r23, 0x1
branch_0x803073d0:
    clrlwi  r0, r23, 24
    cmplw   r0, r20
    blt+    branch_0x80307384
    lfs     f0, 0x540(rtoc)
    fcmpo   cr0, f27, f0
    ble-    branch_0x803073ec
    fmr     f27, f0
branch_0x803073ec:
    lfs     f0, 0x14(r26)
    fcmpu   cr0, f0, f27
    beq-    branch_0x8030742c
    stfs    f27, 0x14(r26)
    fmr     f1, f27
    li      r5, 0x5
    lwz     r3, 0x0(r28)
    lwz     r4, -0x74bc(r13)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
    lwz     r0, -0x74bc(r13)
    slwi    r3, r0, 2
    lwzx    r0, r29, r3
    ori     r0, r0, 0x8
    stwx    r0, r29, r3
branch_0x8030742c:
    lwz     r0, 0x176c(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80307444
    lwz     r0, 0x0(r30)
    xoris   r0, r0, 0x20
    stw     r0, 0x0(r30)
branch_0x80307444:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 9, 9
    beq-    branch_0x80307514
    lfs     f27, 0x540(rtoc)
    clrlwi  r20, r22, 24
    li      r22, 0x0
    li      r21, 0x1
    b       branch_0x803074b0

branch_0x80307464:
    clrlwi  r3, r22, 24
    lwz     r0, 0x1770(r27)
    slw     r19, r21, r3
    clrlslwi  r3, r22, 24, 4
    addi    r23, r3, 0x614
    and.    r0, r0, r19
    add     r23, r27, r23
    beq-    branch_0x803074ac
    lwz     r3, 0x0(r28)
    mr      r4, r23
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x803074a4
    lwz     r0, 0x1770(r27)
    xor     r0, r0, r19
    stw     r0, 0x1770(r27)
branch_0x803074a4:
    lfs     f0, 0x4(r23)
    fmuls   f27, f27, f0
branch_0x803074ac:
    addi    r22, r22, 0x1
branch_0x803074b0:
    clrlwi  r0, r22, 24
    cmplw   r0, r20
    blt+    branch_0x80307464
    lfs     f0, 0x1c(r26)
    fcmpu   cr0, f0, f27
    beq-    branch_0x803074fc
    stfs    f27, 0x1c(r26)
    fmr     f1, f27
    li      r5, 0x6
    lwz     r3, 0x0(r28)
    lwz     r4, -0x74bc(r13)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
    lwz     r0, -0x74bc(r13)
    slwi    r3, r0, 2
    lwzx    r0, r29, r3
    ori     r0, r0, 0x10
    stwx    r0, r29, r3
branch_0x803074fc:
    lwz     r0, 0x1770(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80307514
    lwz     r0, 0x0(r30)
    xoris   r0, r0, 0x40
    stw     r0, 0x0(r30)
branch_0x80307514:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80307584
    lwz     r3, 0x0(r28)
    addi    r4, r27, 0x4
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x80307540
    lwz     r0, 0x0(r30)
    xori     r0, r0, 0x4
    stw     r0, 0x0(r30)
branch_0x80307540:
    lfs     f0, 0x20(r26)
    lfs     f1, 0x8(r27)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80307584
    stfs    f1, 0x20(r26)
    li      r5, 0x9
    lwz     r3, 0x0(r28)
    lwz     r4, -0x74bc(r13)
    lwz     r0, 0x180(r3)
    lfs     f1, 0x8(r27)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
    lwz     r0, -0x74bc(r13)
    slwi    r3, r0, 2
    lwzx    r0, r29, r3
    ori     r0, r0, 0x80
    stwx    r0, r29, r3
branch_0x80307584:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80307650
    li      r22, 0x0
    b       branch_0x8030762c

branch_0x80307598:
    clrlwi  r20, r22, 24
    lwz     r3, 0x175c(r27)
    li      r0, 0x1
    slw     r19, r0, r20
    and.    r0, r3, r19
    beq-    branch_0x803075d8
    slwi    r4, r20, 4
    lwz     r3, 0x0(r28)
    addi    r4, r4, 0x14
    add     r4, r27, r4
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x803075d8
    lwz     r0, 0x175c(r27)
    xor     r0, r0, r19
    stw     r0, 0x175c(r27)
branch_0x803075d8:
    slwi    r19, r20, 16
    lwz     r3, 0x0(r27)
    addi    r4, r19, 0x0
    addi    r5, sp, 0x16
    bl      readPortApp__18JAISystemInterfaceFUlUlPUs
    clrlslwi  r3, r22, 24, 4
    lhz     r4, 0x16(sp)
    addi    r0, r3, 0x18
    lfsx    f0, r27, r0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    clrlwi  r0, r0, 16
    cmplw   r4, r0
    beq-    branch_0x80307628
    stfd    f0, 0x18(sp)
    mr      r4, r19
    lwz     r3, 0x0(r27)
    lwz     r5, 0x1c(sp)
    bl      writePortApp__18JAISystemInterfaceFUlUlUs
branch_0x80307628:
    addi    r22, r22, 0x1
branch_0x8030762c:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x10
    blt+    branch_0x80307598
    lwz     r0, 0x175c(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80307650
    lwz     r0, 0x0(r30)
    xori     r0, r0, 0x10
    stw     r0, 0x0(r30)
branch_0x80307650:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8030771c
    li      r22, 0x0
    b       branch_0x803076f4

branch_0x80307664:
    li      r0, 0x1
    lwz     r3, 0x1774(r27)
    clrlwi  r24, r22, 24
    slw     r19, r0, r4
    clrlslwi  r4, r22, 24, 4
    addi    r23, r4, 0x754
    and.    r0, r3, r19
    add     r23, r27, r23
    beq-    branch_0x803076f0
    lwz     r3, 0x0(r28)
    mr      r4, r23
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x803076a8
    lwz     r0, 0x1774(r27)
    xor     r0, r0, r19
    stw     r0, 0x1774(r27)
branch_0x803076a8:
    lwz     r0, 0x24(r26)
    slwi    r6, r24, 2
    lfs     f1, 0x4(r23)
    add     r3, r0, r6
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x803076f0
    stfs    f1, 0x0(r3)
    addi    r4, r24, 0x0
    li      r5, 0x2
    lwzx    r0, r29, r6
    ori     r0, r0, 0x1
    stwx    r0, r29, r6
    lwz     r3, 0x0(r28)
    lfs     f1, 0x4(r23)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
branch_0x803076f0:
    addi    r22, r22, 0x1
branch_0x803076f4:
    lwz     r0, -0x74bc(r13)
    clrlwi  r4, r22, 24
    cmplw   r4, r0
    blt+    branch_0x80307664
    lwz     r0, 0x1774(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x8030771c
    lwz     r0, 0x0(r30)
    xori     r0, r0, 0x40
    stw     r0, 0x0(r30)
branch_0x8030771c:
    lwz     r3, 0x0(r30)
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x803077a4
    xori     r0, r3, 0x20
    stw     r0, 0x0(r30)
    li      r22, 0x0
    b       branch_0x80307794

branch_0x80307738:
    clrlwi  r3, r22, 24
    addi    r19, r3, 0x1830
    add     r19, r27, r19
    lbz     r4, 0x0(r19)
    extrwi  r0, r4, 1, 26
    cmplwi  r0, 0x1
    bne-    branch_0x80307790
    extrwi  r3, r4, 1, 24
    extrwi  r0, r4, 1, 25
    cmplw   r3, r0
    beq-    branch_0x80307790
    lwz     r3, 0x0(r31)
    mr      r4, r22
    bl      trackToSeqp__18JAISystemInterfaceFP8JAISoundUc
    cmplwi  r3, 0x0
    beq-    branch_0x80307784
    lbz     r4, 0x0(r19)
    extrwi  r4, r4, 1, 25
    bl      muteTrack__Q28JASystem6TTrackFUc
branch_0x80307784:
    lbz     r3, 0x0(r19)
    rlwimi  r3, r3, 1, 24, 24
    stb     r3, 0x0(r19)
branch_0x80307790:
    addi    r22, r22, 0x1
branch_0x80307794:
    lwz     r0, -0x74bc(r13)
    clrlwi  r3, r22, 24
    cmplw   r3, r0
    blt+    branch_0x80307738
branch_0x803077a4:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80307870
    li      r22, 0x0
    b       branch_0x80307848

branch_0x803077b8:
    li      r0, 0x1
    lwz     r3, 0x1778(r27)
    clrlwi  r24, r22, 24
    slw     r19, r0, r4
    clrlslwi  r0, r22, 24, 4
    add     r23, r27, r0
    and.    r0, r3, r19
    addi    r20, r23, 0x954
    beq-    branch_0x80307844
    lwz     r3, 0x0(r28)
    mr      r4, r20
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x803077fc
    lwz     r0, 0x1778(r27)
    xor     r0, r0, r19
    stw     r0, 0x1778(r27)
branch_0x803077fc:
    lwz     r0, 0x30(r26)
    slwi    r6, r24, 2
    lfs     f1, 0x4(r20)
    add     r3, r0, r6
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80307844
    stfs    f1, 0x0(r3)
    addi    r4, r24, 0x0
    li      r5, 0x4
    lwzx    r0, r29, r6
    ori     r0, r0, 0x4
    stwx    r0, r29, r6
    lwz     r3, 0x0(r28)
    lfs     f1, 0x958(r23)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
branch_0x80307844:
    addi    r22, r22, 0x1
branch_0x80307848:
    lwz     r0, -0x74bc(r13)
    clrlwi  r4, r22, 24
    cmplw   r4, r0
    blt+    branch_0x803077b8
    lwz     r0, 0x1778(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80307870
    lwz     r0, 0x0(r30)
    xori     r0, r0, 0x80
    stw     r0, 0x0(r30)
branch_0x80307870:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x8030793c
    li      r22, 0x0
    b       branch_0x80307914

branch_0x80307884:
    li      r0, 0x1
    lwz     r3, 0x177c(r27)
    clrlwi  r23, r22, 24
    slw     r19, r0, r4
    clrlslwi  r0, r22, 24, 4
    add     r24, r27, r0
    and.    r0, r3, r19
    addi    r20, r24, 0xb54
    beq-    branch_0x80307910
    lwz     r3, 0x0(r28)
    mr      r4, r20
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x803078c8
    lwz     r0, 0x177c(r27)
    xor     r0, r0, r19
    stw     r0, 0x177c(r27)
branch_0x803078c8:
    lwz     r0, 0x28(r26)
    slwi    r6, r23, 2
    lfs     f1, 0x4(r20)
    add     r3, r0, r6
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80307910
    stfs    f1, 0x0(r3)
    addi    r4, r23, 0x0
    li      r5, 0x3
    lwzx    r0, r29, r6
    ori     r0, r0, 0x2
    stwx    r0, r29, r6
    lwz     r3, 0x0(r28)
    lfs     f1, 0xb58(r24)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
branch_0x80307910:
    addi    r22, r22, 0x1
branch_0x80307914:
    lwz     r0, -0x74bc(r13)
    clrlwi  r4, r22, 24
    cmplw   r4, r0
    blt+    branch_0x80307884
    lwz     r0, 0x177c(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x8030793c
    lwz     r0, 0x0(r30)
    xori     r0, r0, 0x200
    stw     r0, 0x0(r30)
branch_0x8030793c:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80307a08
    li      r22, 0x0
    b       branch_0x803079e0

branch_0x80307950:
    li      r0, 0x1
    lwz     r3, 0x1780(r27)
    clrlwi  r23, r22, 24
    slw     r19, r0, r4
    clrlslwi  r0, r22, 24, 4
    add     r24, r27, r0
    and.    r0, r3, r19
    addi    r20, r24, 0xd54
    beq-    branch_0x803079dc
    lwz     r3, 0x0(r28)
    mr      r4, r20
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x80307994
    lwz     r0, 0x1780(r27)
    xor     r0, r0, r19
    stw     r0, 0x1780(r27)
branch_0x80307994:
    lwz     r0, 0x2c(r26)
    slwi    r6, r23, 2
    lfs     f1, 0x4(r20)
    add     r3, r0, r6
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x803079dc
    stfs    f1, 0x0(r3)
    addi    r4, r23, 0x0
    li      r5, 0x5
    lwzx    r0, r29, r6
    ori     r0, r0, 0x8
    stwx    r0, r29, r6
    lwz     r3, 0x0(r28)
    lfs     f1, 0xd58(r24)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
branch_0x803079dc:
    addi    r22, r22, 0x1
branch_0x803079e0:
    lwz     r0, -0x74bc(r13)
    clrlwi  r4, r22, 24
    cmplw   r4, r0
    blt+    branch_0x80307950
    lwz     r0, 0x1780(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80307a08
    lwz     r0, 0x0(r30)
    xori     r0, r0, 0x800
    stw     r0, 0x0(r30)
branch_0x80307a08:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x80307ad4
    li      r22, 0x0
    b       branch_0x80307aac

branch_0x80307a1c:
    li      r0, 0x1
    lwz     r3, 0x1784(r27)
    clrlwi  r23, r22, 24
    slw     r19, r0, r4
    clrlslwi  r0, r22, 24, 4
    add     r24, r27, r0
    and.    r0, r3, r19
    addi    r20, r24, 0xf54
    beq-    branch_0x80307aa8
    lwz     r3, 0x0(r28)
    mr      r4, r20
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x80307a60
    lwz     r0, 0x1784(r27)
    xor     r0, r0, r19
    stw     r0, 0x1784(r27)
branch_0x80307a60:
    lwz     r0, 0x34(r26)
    slwi    r6, r23, 2
    lfs     f1, 0x4(r20)
    add     r3, r0, r6
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80307aa8
    stfs    f1, 0x0(r3)
    addi    r4, r23, 0x0
    li      r5, 0x6
    lwzx    r0, r29, r6
    ori     r0, r0, 0x10
    stwx    r0, r29, r6
    lwz     r3, 0x0(r28)
    lfs     f1, 0xf58(r24)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
branch_0x80307aa8:
    addi    r22, r22, 0x1
branch_0x80307aac:
    lwz     r0, -0x74bc(r13)
    clrlwi  r4, r22, 24
    cmplw   r4, r0
    blt+    branch_0x80307a1c
    lwz     r0, 0x1784(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80307ad4
    lwz     r0, 0x0(r30)
    xori     r0, r0, 0x100
    stw     r0, 0x0(r30)
branch_0x80307ad4:
    lwz     r3, 0x0(r30)
    rlwinm. r0, r3, 0, 8, 8
    beq-    branch_0x80307b4c
    xoris   r0, r3, 0x80
    stw     r0, 0x0(r30)
    li      r21, 0x0
    li      r20, 0x0
    b       branch_0x80307b3c

branch_0x80307af4:
    clrlwi  r4, r21, 24
    addi    r19, r4, 0x1810
    add     r19, r27, r19
    lbz     r0, 0x0(r19)
    cmplwi  r0, 0x1
    bne-    branch_0x80307b38
    slwi    r3, r4, 2
    lwzx    r0, r29, r3
    li      r5, 0x8
    li      r6, 0x1
    ori     r0, r0, 0x40
    stwx    r0, r29, r3
    lwz     r3, 0x0(r28)
    lwz     r0, 0x180(r3)
    add     r3, r0, r25
    bl      setSeqPortargsU32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcUl
    stb     r20, 0x0(r19)
branch_0x80307b38:
    addi    r21, r21, 0x1
branch_0x80307b3c:
    lwz     r0, -0x74bc(r13)
    clrlwi  r3, r21, 24
    cmplw   r3, r0
    blt+    branch_0x80307af4
branch_0x80307b4c:
    lwz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80307c1c
    li      r22, 0x0
    b       branch_0x80307bf4

branch_0x80307b60:
    li      r21, 0x1
    lwz     r3, 0x178c(r27)
    slw     r5, r21, r4
    clrlwi  r6, r22, 24
    clrlslwi  r4, r22, 24, 5
    and.    r0, r3, r5
    add     r23, r27, r4
    beq-    branch_0x80307bf0
    xor     r3, r3, r5
    slwi    r0, r6, 2
    stw     r3, 0x178c(r27)
    add     r19, r27, r0
    li      r25, 0x0
    b       branch_0x80307be4

branch_0x80307b98:
    clrlwi  r20, r25, 24
    lwz     r0, 0x1790(r19)
    slw     r24, r21, r20
    and.    r0, r0, r24
    beq-    branch_0x80307be0
    lwz     r3, 0x0(r31)
    addi    r4, r22, 0x0
    addi    r5, r25, 0x0
    bl      getTrackPortRoute__8JAISoundFUcUc
    slwi    r4, r20, 1
    addi    r0, r4, 0x1354
    addi    r4, r3, 0x0
    lwz     r3, 0x0(r27)
    lhzx    r5, r23, r0
    bl      writePortApp__18JAISystemInterfaceFUlUlUs
    lwz     r0, 0x1790(r19)
    xor     r0, r0, r24
    stw     r0, 0x1790(r19)
branch_0x80307be0:
    addi    r25, r25, 0x1
branch_0x80307be4:
    clrlwi  r0, r25, 24
    cmplwi  r0, 0x10
    blt+    branch_0x80307b98
branch_0x80307bf0:
    addi    r22, r22, 0x1
branch_0x80307bf4:
    lwz     r0, -0x74bc(r13)
    clrlwi  r4, r22, 24
    cmplw   r4, r0
    blt+    branch_0x80307b60
    lwz     r0, 0x178c(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80307c1c
    lwz     r0, 0x0(r30)
    xori     r0, r0, 0x1000
    stw     r0, 0x0(r30)
branch_0x80307c1c:
    lmw     r19, 0x3c(sp)
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lfd     f28, 0x78(sp)
    lfd     f27, 0x70(sp)
    addi    sp, sp, 0x98
    blr


.globl checkPlayingSeq__8JAIBasicFv
checkPlayingSeq__8JAIBasicFv: # 0x80307c44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r29, r3, 0x0
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x80307d2c

branch_0x80307c64:
    lwz     r3, 0x0(r29)
    addi    r4, r28, 0x48
    lwz     r0, 0x180(r3)
    add     r4, r0, r4
    lwz     r3, 0x0(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80307d24
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x4
    blt-    branch_0x80307d24
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      checkPlayingSeqTrack__8JAIBasicFUl
    li      r30, 0x0
    b       branch_0x80307d10

branch_0x80307ca0:
    lwz     r3, 0x0(r29)
    clrlwi  r27, r30, 24
    clrlslwi  r0, r30, 24, 2
    lwz     r5, 0x180(r3)
    addi    r3, r5, 0x44
    lwzx    r3, r28, r3
    lwzx    r6, r3, r0
    cmplwi  r6, 0x0
    beq-    branch_0x80307d0c
    add     r3, r5, r28
    addi    r4, r27, 0x0
    li      r5, 0x1
    bl      setSeqPortargsU32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcUl
    lwz     r3, 0x0(r29)
    mulli   r5, r27, 0x3c
    lwz     r4, 0x180(r3)
    addi    r3, r5, 0x2c
    addi    r0, r4, 0x4c
    lwzx    r4, r28, r0
    li      r0, 0x0
    stwx    r0, r4, r3
    lwz     r4, 0x0(r29)
    lwz     r4, 0x180(r4)
    addi    r0, r4, 0x4c
    lwzx    r0, r28, r0
    add     r3, r0, r3
    bl      addPortCmdOnce__Q38JASystem6Kernel8TPortCmdFv
branch_0x80307d0c:
    addi    r30, r30, 0x1
branch_0x80307d10:
    lwz     r3, -0x74bc(r13)
    clrlwi  r4, r30, 24
    addi    r0, r3, 0x1
    cmplw   r4, r0
    blt+    branch_0x80307ca0
branch_0x80307d24:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x50
branch_0x80307d2c:
    lwz     r0, -0x74b8(r13)
    cmplw   r31, r0
    blt+    branch_0x80307c64
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl checkStoppedSeq__8JAIBasicFv
checkStoppedSeq__8JAIBasicFv: # 0x80307d4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    li      r29, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    b       branch_0x80307dec

branch_0x80307d78:
    lwz     r3, 0x0(r28)
    addi    r30, r31, 0x48
    lwz     r0, 0x180(r3)
    add     r30, r0, r30
    lwz     r3, 0x0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80307de4
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x80307da8
    cmplwi  r0, 0x5
    bne-    branch_0x80307de4
branch_0x80307da8:
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      checkSeqActiveFlag__18JAISystemInterfaceFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x80307de4
    lwz     r3, 0x0(r30)
    bl      clearMainSoundPPointer__8JAISoundFv
    mr      r3, r28
    lwz     r4, 0x0(r30)
    bl      stopSeq__8JAIBasicFP8JAISound
    lwz     r3, 0x0(r28)
    addi    r0, r31, 0x8
    li      r4, 0x0
    lwz     r3, 0x180(r3)
    stwx    r4, r3, r0
branch_0x80307de4:
    addi    r29, r29, 0x1
    addi    r31, r31, 0x50
branch_0x80307dec:
    lwz     r0, -0x74b8(r13)
    cmplw   r29, r0
    blt+    branch_0x80307d78
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl checkStartedSeq__8JAIBasicFv
checkStartedSeq__8JAIBasicFv: # 0x80307e18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    li      r29, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    b       branch_0x80307ea4

branch_0x80307e44:
    lwz     r3, 0x0(r28)
    addi    r30, r31, 0x48
    lwz     r0, 0x180(r3)
    add     r30, r0, r30
    lwz     r3, 0x0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80307e9c
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x80307e9c
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      checkSeqActiveFlag__18JAISystemInterfaceFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80307e9c
    lwz     r3, 0x0(r30)
    li      r0, 0x4
    stb     r0, 0x1(r3)
    lwz     r3, 0x0(r28)
    lwz     r0, 0x180(r3)
    add     r3, r0, r31
    bl      trackInit__18JAISystemInterfaceFP16JAISeqUpdateData
branch_0x80307e9c:
    addi    r29, r29, 0x1
    addi    r31, r31, 0x50
branch_0x80307ea4:
    lwz     r0, -0x74b8(r13)
    cmplw   r29, r0
    blt+    branch_0x80307e44
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl checkFadeoutSeq__8JAIBasicFv
checkFadeoutSeq__8JAIBasicFv: # 0x80307ed0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    li      r29, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    lfs     f31, 0x544(rtoc)
    b       branch_0x80307f7c

branch_0x80307f04:
    lwz     r3, 0x0(r28)
    addi    r30, r31, 0x48
    lwz     r0, 0x180(r3)
    add     r30, r0, r30
    lwz     r3, 0x0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80307f74
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x80307f74
    li      r4, 0x6
    bl      getSeqInterVolume__8JAISoundFUc
    fcmpu   cr0, f31, f1
    bne-    branch_0x80307f74
    lwz     r3, 0x0(r30)
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      stopSeq__18JAISystemInterfaceFl
    lwz     r3, 0x0(r30)
    bl      clearMainSoundPPointer__8JAISoundFv
    mr      r3, r28
    lwz     r4, 0x0(r30)
    bl      stopSeq__8JAIBasicFP8JAISound
    lwz     r3, 0x0(r28)
    addi    r0, r31, 0x8
    li      r4, 0x0
    lwz     r3, 0x180(r3)
    stwx    r4, r3, r0
branch_0x80307f74:
    addi    r29, r29, 0x1
    addi    r31, r31, 0x50
branch_0x80307f7c:
    lwz     r0, -0x74b8(r13)
    cmplw   r29, r0
    blt+    branch_0x80307f04
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x28
    blr


.globl checkReadSeq__8JAIBasicFv
checkReadSeq__8JAIBasicFv: # 0x80307fac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r28, r3, 0x0
    li      r30, 0x0
    li      r27, 0x0
    lfs     f31, 0x568(rtoc)
    b       branch_0x80308154

branch_0x80307fd4:
    lwz     r3, 0x0(r28)
    lwz     r0, 0x180(r3)
    add     r4, r0, r27
    addi    r31, r4, 0x48
    lwz     r3, 0x48(r4)
    addi    r29, r4, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x8030814c
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x8030814c
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1758(r3)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x8030814c
    lwz     r3, 0x0(r31)
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1850(r3)
    lbz     r0, 0x2(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8030814c
    lwz     r3, 0x0(r31)
    lwz     r4, 0x2c(r28)
    lwz     r0, 0x8(r3)
    clrlwi  r0, r0, 22
    add     r3, r4, r0
    bl      checkSize__Q28JASystem5VloadFUl
    lwz     r4, 0x40(r29)
    addi    r5, r3, 0x0
    li      r3, 0x0
    li      r6, 0x0
    bl      setSeqData__18JAISystemInterfaceFPQ28JASystem6TTrackPUclQ38JASystem6Player12SEQ_PLAYMODE
    mr      r26, r3
    lwz     r3, 0x0(r31)
    bl      getSeqParameter__8JAISoundFv
    stw     r26, 0x0(r3)
    lwz     r3, 0x0(r31)
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r31)
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x80308140
    lwz     r4, 0x0(r31)
    lwz     r3, 0x0(r28)
    lbz     r4, 0x0(r4)
    bl      initSeqTrackInfoParameter__7JAIDataFUl
    lwz     r3, 0x0(r31)
    li      r0, 0x3
    stb     r0, 0x1(r3)
    lwz     r3, 0x0(r31)
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0x1
    ble-    branch_0x803080d8
    lfs     f1, 0x544(rtoc)
    li      r4, 0x6
    li      r5, 0x0
    bl      setSeqInterVolume__8JAISoundFUcfUl
    lwz     r3, 0x0(r31)
    li      r4, 0x6
    lfs     f1, 0x540(rtoc)
    lwz     r5, 0x10(r3)
    bl      setSeqInterVolume__8JAISoundFUcfUl
branch_0x803080d8:
    lbz     r4, 0x0(r29)
    cmplwi  r4, 0x0
    beq-    branch_0x803080f4
    lwz     r3, 0x0(r31)
    lbz     r5, 0x1(r29)
    bl      setPauseMode__8JAISoundFUcUc
    stfs    f31, 0xc(r29)
branch_0x803080f4:
    mr      r3, r28
    lwz     r4, 0x0(r31)
    lwz     r12, 0x4(r28)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      checkPlayingSeqTrack__8JAIBasicFUl
    lwz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8030814c
    mr      r3, r29
    bl      rootInit__18JAISystemInterfaceFP16JAISeqUpdateData
    lwz     r3, 0x0(r31)
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      startSeq__18JAISystemInterfaceFUl
    b       branch_0x8030814c

branch_0x80308140:
    lwz     r4, 0x0(r31)
    mr      r3, r28
    bl      stopSeq__8JAIBasicFP8JAISound
branch_0x8030814c:
    addi    r30, r30, 0x1
    addi    r27, r27, 0x50
branch_0x80308154:
    lwz     r0, -0x74b8(r13)
    cmplw   r30, r0
    blt+    branch_0x80307fd4
    lmw     r26, 0x10(sp)
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl checkSeqWave__8JAIBasicFv
checkSeqWave__8JAIBasicFv: # 0x80308178
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x1c(sp)
    li      r29, 0x0
    stw     r28, 0x18(sp)
    b       branch_0x80308264

branch_0x803081a4:
    lwz     r3, 0x0(r30)
    addi    r28, r29, 0x48
    lwz     r0, 0x180(r3)
    add     r28, r0, r28
    lwz     r3, 0x0(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x8030825c
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030825c
    lwz     r3, 0x0(r28)
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1758(r3)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x8030825c
    lwz     r3, 0x34(r30)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x8030825c
    lwz     r3, 0x0(r28)
    bl      getSeqParameter__8JAISoundFv
    lwz     r6, 0x1758(r3)
    lwz     r5, 0x34(r30)
    lwz     r3, 0x0(r28)
    cmplw   r5, r6
    beq-    branch_0x80308250
    addis   r0, r6, 0x100
    cmplwi  r0, 0xff00
    beq-    branch_0x80308250
    clrrwi  r4, r5, 16
    clrrwi  r0, r6, 16
    cmplw   r4, r0
    bne-    branch_0x80308234
    cmplwi  r6, 0xffff
    beq-    branch_0x80308250
branch_0x80308234:
    clrlwi  r4, r5, 16
    clrlwi  r0, r6, 16
    cmplw   r4, r0
    bne-    branch_0x8030825c
    addis   r0, r6, 0x1
    cmplwi  r0, 0x0
    bne-    branch_0x8030825c
branch_0x80308250:
    li      r28, -0x1
    bl      getSeqParameter__8JAISoundFv
    stw     r28, 0x1758(r3)
branch_0x8030825c:
    addi    r31, r31, 0x1
    addi    r29, r29, 0x50
branch_0x80308264:
    lwz     r0, -0x74b8(r13)
    cmplw   r31, r0
    blt+    branch_0x803081a4
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl checkDvdLoadArc__8JAIBasicFUl
checkDvdLoadArc__8JAIBasicFUl: # 0x80308290
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    extrwi  r31, r3, 8, 16
    cmplwi  r31, 0xff
    stw     r30, 0x18(sp)
    clrlwi  r30, r3, 24
    stw     r29, 0x14(sp)
    extrwi  r29, r3, 10, 6
    beq-    branch_0x803082d0
    lwz     r3, -0x5d90(r13)
    addi    r4, r31, 0x0
    li      r5, 0x0
    lwz     r3, 0x0(r3)
    bl      setAutoHeapLoadedFlag__7JAIDataFUcUc
branch_0x803082d0:
    cmplwi  r30, 0xfe
    bge-    branch_0x8030833c
    lwz     r3, -0x5d90(r13)
    mulli   r4, r30, 0x50
    lwz     r3, 0x0(r3)
    li      r0, 0x0
    lwz     r3, 0x180(r3)
    add     r3, r3, r4
    lwz     r4, 0x48(r3)
    cmplwi  r4, 0x0
    stb     r0, 0x3(r3)
    beq-    branch_0x80308328
    lbz     r0, 0x1(r4)
    cmplwi  r0, 0x1
    bne-    branch_0x80308328
    lwz     r0, 0x8(r4)
    clrlwi  r0, r0, 22
    cmplw   r29, r0
    bne-    branch_0x80308328
    li      r0, 0x2
    stb     r0, 0x1(r4)
    b       branch_0x80308350

branch_0x80308328:
    lwz     r3, -0x5d90(r13)
    mr      r4, r31
    lwz     r3, 0x0(r3)
    bl      releaseAutoHeapPointer__7JAIDataFUc
    b       branch_0x80308350

branch_0x8030833c:
    bne-    branch_0x80308350
    lwz     r3, -0x5d90(r13)
    mr      r4, r31
    lwz     r3, 0x0(r3)
    bl      releaseAutoHeapPointer__7JAIDataFUc
branch_0x80308350:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr

