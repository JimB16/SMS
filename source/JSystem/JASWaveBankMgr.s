
.globl init__Q28JASystem11WaveBankMgrFi
init__Q28JASystem11WaveBankMgrFi: # 0x803108ac
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    slwi    r31, r3, 2
    stw     r30, 0x10(sp)
    mr      r30, r3
    addi    r3, r31, 0x0
    lwz     r4, R13Off_m0x5b30(r13)
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, R13Off_m0x5c7c(r13)
    mr      r4, r31
    lwz     r3, R13Off_m0x5c7c(r13)
    bl      bzero__Q28JASystem4CalcFPvUl
    stw     r30, R13Off_m0x5c80(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getWaveBank__Q28JASystem11WaveBankMgrFi
getWaveBank__Q28JASystem11WaveBankMgrFi: # 0x80310904
    lwz     r4, R13Off_m0x5c7c(r13)
    slwi    r0, r3, 2
    lwzx    r3, r4, r0
    blr


.globl registWaveBankWS__Q28JASystem11WaveBankMgrFiPv
registWaveBankWS__Q28JASystem11WaveBankMgrFiPv: # 0x80310914
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      getGroupCount__Q28JASystem8WSParserFPv
    cmplwi  r3, 0x1
    bne-    branch_0x80310950
    mr      r3, r31
    bl      createSimpleWaveBank__Q28JASystem8WSParserFPv
    mr      r5, r3
    b       branch_0x8031095c

branch_0x80310950:
    mr      r3, r31
    bl      createBasicWaveBank__Q28JASystem8WSParserFPv
    mr      r5, r3
branch_0x8031095c:
    cmplwi  r5, 0x0
    bne-    branch_0x8031096c
    li      r3, 0x0
    b       branch_0x8031097c

branch_0x8031096c:
    lwz     r4, R13Off_m0x5c7c(r13)
    slwi    r0, r30, 2
    li      r3, 0x1
    stwx    r5, r4, r0
branch_0x8031097c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadWave__Q28JASystem11WaveBankMgrFii
loadWave__Q28JASystem11WaveBankMgrFii: # 0x80310994
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r3, 2
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    lwz     r5, R13Off_m0x5c7c(r13)
    lwzx    r31, r5, r0
    cmplwi  r31, 0x0
    bne-    branch_0x803109c8
    li      r3, 0x0
    b       branch_0x80310a6c

branch_0x803109c8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xbdad
    cmplwi  r0, 0x4943
    bne-    branch_0x80310a30
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      getWaveGroup__Q28JASystem14TBasicWaveBankFi
    mr.     r30, r3
    bne-    branch_0x80310a04
    li      r3, 0x0
    b       branch_0x80310a6c

branch_0x80310a04:
    mr      r3, r30
    bl      loadWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject
    clrlwi. r0, r3, 24
    bne-    branch_0x80310a1c
    li      r3, 0x0
    b       branch_0x80310a6c

branch_0x80310a1c:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      incWaveTable__Q28JASystem14TBasicWaveBankFPCQ38JASystem14TBasicWaveBank10TWaveGroup
    li      r3, 0x1
    b       branch_0x80310a6c

branch_0x80310a30:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xacb3
    cmplwi  r0, 0x504c
    bne-    branch_0x80310a68
    mr.     r0, r31
    mr      r3, r0
    beq-    branch_0x80310a60
    addi    r3, r3, 0x4
branch_0x80310a60:
    bl      loadWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject
    b       branch_0x80310a6c

branch_0x80310a68:
    li      r3, 0x0
branch_0x80310a6c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl eraseWave__Q28JASystem11WaveBankMgrFii
eraseWave__Q28JASystem11WaveBankMgrFii: # 0x80310a84
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r3, 2
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    lwz     r5, R13Off_m0x5c7c(r13)
    lwzx    r31, r5, r0
    cmplwi  r31, 0x0
    bne-    branch_0x80310ab8
    li      r3, 0x0
    b       branch_0x80310b5c

branch_0x80310ab8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xbdad
    cmplwi  r0, 0x4943
    bne-    branch_0x80310b20
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      getWaveGroup__Q28JASystem14TBasicWaveBankFi
    mr.     r30, r3
    bne-    branch_0x80310af4
    li      r3, 0x0
    b       branch_0x80310b5c

branch_0x80310af4:
    mr      r3, r30
    bl      eraseWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject
    clrlwi. r0, r3, 24
    bne-    branch_0x80310b0c
    li      r3, 0x0
    b       branch_0x80310b5c

branch_0x80310b0c:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      decWaveTable__Q28JASystem14TBasicWaveBankFPCQ38JASystem14TBasicWaveBank10TWaveGroup
    li      r3, 0x1
    b       branch_0x80310b5c

branch_0x80310b20:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xacb3
    cmplwi  r0, 0x504c
    bne-    branch_0x80310b58
    mr.     r0, r31
    mr      r3, r0
    beq-    branch_0x80310b50
    addi    r3, r3, 0x4
branch_0x80310b50:
    bl      eraseWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject
    b       branch_0x80310b5c

branch_0x80310b58:
    li      r3, 0x0
branch_0x80310b5c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

