
.globl storeBuffer__11JAISeqEntryFPP8JAISoundP8JAIActorUlUlUcPv
storeBuffer__11JAISeqEntryFPP8JAISoundP8JAIActorUlUlUcPv: # 0x80304e18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r18, 0x28(sp)
    mr      r23, r3
    addi    r29, r9, 0x0
    addi    r24, r4, 0x0
    addi    r25, r5, 0x0
    addi    r26, r6, 0x0
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r4, r29, 0x0
    lwz     r3, 0x0(r3)
    lwz     r30, 0x0(r3)
    bl      getSeqTrackNumber__8JAIBasicFPv
    cmplwi  r24, 0x0
    addi    r22, r3, 0x0
    beq-    branch_0x80304ea4
    lwz     r3, 0x0(r24)
    cmplwi  r3, 0x0
    beq-    branch_0x80304ea4
    lbz     r4, 0x0(r3)
    clrlwi  r0, r22, 24
    cmplw   r4, r0
    beq-    branch_0x80304e88
    li      r4, 0x0
    bl      stop__8JAISoundFUl
    b       branch_0x80304ea4

branch_0x80304e88:
    addi    r3, r23, 0x0
    addi    r4, r24, 0x0
    addi    r5, r26, 0x0
    addi    r6, r29, 0x0
    bl      checkSoundHandle__8JAIEntryFPP8JAISoundUlPv
    cmplwi  r3, 0x0
    bne-    branch_0x803050f0
branch_0x80304ea4:
    clrlwi  r19, r22, 24
    lwz     r0, 0x180(r30)
    mulli   r20, r19, 0x50
    addi    r21, r20, 0x48
    add     r21, r0, r21
    lwz     r3, 0x0(r21)
    cmplwi  r3, 0x0
    bne-    branch_0x80304ecc
    li      r0, 0x1
    b       branch_0x80304f78

branch_0x80304ecc:
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x80304f00
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      stopSeq__18JAISystemInterfaceFl
    lwz     r3, 0x0(r21)
    bl      clearMainSoundPPointer__8JAISoundFv
    lwz     r3, 0x0(r23)
    lwz     r4, 0x0(r21)
    bl      stopSeq__8JAIBasicFP8JAISound
    li      r0, 0x1
    b       branch_0x80304f78

branch_0x80304f00:
    cmplwi  r0, 0x1
    bne-    branch_0x80304f14
    li      r0, 0x0
    stw     r0, 0x0(r24)
    b       branch_0x803050f0

branch_0x80304f14:
    lwz     r4, 0x3c(r3)
    lwz     r3, 0x0(r23)
    bl      getSoundPrioity__8JAIBasicFPv
    mr      r18, r3
    lwz     r3, 0x0(r23)
    mr      r4, r29
    bl      getSoundPrioity__8JAIBasicFPv
    clrlwi  r4, r18, 24
    clrlwi  r0, r3, 24
    cmplw   r4, r0
    bgt-    branch_0x80304f6c
    lwz     r3, 0x0(r21)
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      stopSeq__18JAISystemInterfaceFl
    lwz     r3, 0x0(r21)
    bl      clearMainSoundPPointer__8JAISoundFv
    lwz     r3, 0x0(r23)
    lwz     r4, 0x0(r21)
    bl      stopSeq__8JAIBasicFP8JAISound
    li      r0, 0x1
    b       branch_0x80304f78

branch_0x80304f6c:
    li      r0, 0x0
    stw     r0, 0x0(r24)
    b       branch_0x803050f0

branch_0x80304f78:
    cmplwi  r0, 0x0
    beq-    branch_0x803050cc
    lwz     r3, 0x0(r23)
    addi    r4, r30, 0x210
    bl      getControllerHandle__8JAIBasicFP13JAILinkBuffer
    mr.     r31, r3
    bne-    branch_0x80304fa0
    li      r0, 0x0
    stw     r0, 0x0(r24)
    b       branch_0x803050f0

branch_0x80304fa0:
    lwz     r3, 0x0(r23)
    bl      getSeqParametermeterPointer__8JAIBasicFv
    stw     r3, 0x38(r31)
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80304fc4
    li      r0, 0x0
    stw     r0, 0x0(r24)
    b       branch_0x803050f0

branch_0x80304fc4:
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      initSeqParameter__7JAIDataFP15JAISeqParameter
    stw     r31, 0x0(r21)
    lwz     r3, 0x0(r21)
    stw     r26, 0x8(r3)
    lwz     r0, 0x180(r30)
    lwz     r3, 0x0(r21)
    add     r18, r0, r20
    bl      getSeqParameter__8JAISoundFv
    stw     r18, 0x1850(r3)
    li      r6, 0x1
    li      r18, 0x0
    lwz     r5, 0x0(r21)
    addi    r3, r30, 0x0
    addi    r4, r19, 0x0
    stb     r22, 0x0(r5)
    lwz     r0, 0x180(r30)
    add     r5, r0, r20
    stw     r6, 0x8(r5)
    lwz     r0, 0x180(r30)
    add     r5, r0, r20
    stb     r18, 0x2(r5)
    lwz     r0, 0x180(r30)
    add     r5, r0, r20
    stw     r18, 0x4(r5)
    bl      initSeqTrackInfoParameter__7JAIDataFUl
    lwz     r3, 0x0(r23)
    mr      r4, r29
    bl      getSoundSwBit__8JAIBasicFPv
    clrlwi. r0, r3, 31
    beq-    branch_0x803050cc
    clrlwi  r19, r22, 24
    li      r20, 0x0
    b       branch_0x803050c0

branch_0x80305058:
    lwz     r3, 0x180(r30)
    addi    r0, r18, 0x48
    cmplw   r20, r19
    lwzx    r21, r3, r0
    beq-    branch_0x803050b8
    cmplwi  r21, 0x0
    beq-    branch_0x803050b8
    lbz     r0, 0x1(r21)
    cmplwi  r0, 0x3
    blt-    branch_0x803050b8
    mr      r3, r21
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x803050b8
    lfs     f1, 0x4f0(r2)
    addi    r3, r21, 0x0
    li      r4, 0xa
    li      r5, 0xa
    bl      setSeqInterVolume__8JAISoundFUcfUl
    mr      r3, r21
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    bl      pauseTrackAll__Q28JASystem6TTrackFv
branch_0x803050b8:
    addi    r20, r20, 0x1
    addi    r18, r18, 0x50
branch_0x803050c0:
    lwz     r0, R13Off_m0x74b8(r13)
    cmplw   r20, r0
    blt+    branch_0x80305058
branch_0x803050cc:
    addi    r3, r23, 0x0
    addi    r4, r31, 0x0
    addi    r5, r24, 0x0
    addi    r6, r25, 0x0
    addi    r7, r26, 0x0
    addi    r8, r27, 0x0
    addi    r9, r28, 0x0
    addi    r10, r29, 0x0
    bl      initSoundParameter__8JAIEntryFP8JAISoundPP8JAISoundP8JAIActorUlUlUcPv
branch_0x803050f0:
    lmw     r18, 0x28(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr

