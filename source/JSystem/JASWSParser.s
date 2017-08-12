
.globl getGroupCount__Q28JASystem8WSParserFPv
getGroupCount__Q28JASystem8WSParserFPv: # 0x80310b74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x14(r3)
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser10TCtrlGroup___FPCvUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    lwz     r3, 0x8(r3)
    mtlr    r0
    blr


.globl createBasicWaveBank__Q28JASystem8WSParserFPv
createBasicWaveBank__Q28JASystem8WSParserFPv: # 0x80310b9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r18, 0x48(sp)
    mr      r18, r3
    bl      getCurrentHeap__Q28JASystem9TWaveBankFv
    mr      r26, r3
    lwz     r12, 0x0(r26)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r28, r3, 0x0
    addi    r25, r18, 0x0
    addi    r4, r26, 0x0
    li      r3, 0x14
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    mr.     r27, r3
    beq-    branch_0x80310bf4
    mr      r3, r27
    bl      __ct__Q28JASystem14TBasicWaveBankFv
    mr      r27, r3
branch_0x80310bf4:
    cmplwi  r27, 0x0
    bne-    branch_0x80310c04
    li      r3, 0x0
    b       branch_0x80310db4

branch_0x80310c04:
    mr      r3, r25
    lwz     r4, 0x14(r25)
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser10TCtrlGroup___FPCvUl
    mr      r29, r3
    lwz     r4, 0x8(r3)
    mr      r3, r27
    bl      setGroupCount__Q28JASystem14TBasicWaveBankFUl
    li      r24, 0x0
    li      r23, 0x0
    li      r31, 0x0
    b       branch_0x80310d74

branch_0x80310c30:
    addi    r0, r31, 0xc
    lwzx    r4, r29, r0
    mr      r3, r25
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser10TCtrlScene___FPCvUl
    lwz     r4, 0xc(r3)
    mr      r3, r25
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser5TCtrl___FPCvUl
    addi    r30, r3, 0x0
    addi    r3, r27, 0x0
    addi    r4, r23, 0x0
    bl      getWaveGroup__Q28JASystem14TBasicWaveBankFi
    lwz     r4, 0x10(r25)
    addi    r22, r3, 0x0
    addi    r3, r25, 0x0
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser16TWaveArchiveBank___FPCvUl
    addi    r0, r31, 0x8
    lwzx    r4, r3, r0
    mr      r3, r25
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser12TWaveArchive___FPCvUl
    lwz     r4, 0x4(r30)
    addi    r21, r3, 0x0
    addi    r3, r22, 0x0
    bl      setWaveCount__Q38JASystem14TBasicWaveBank10TWaveGroupFUl
    li      r20, 0x0
    li      r19, 0x0
    b       branch_0x80310d54

branch_0x80310c98:
    addi    r0, r19, 0x74
    lwzx    r4, r21, r0
    mr      r3, r25
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser5TWave___FPCvUl
    lbz     r4, 0x0(r3)
    addi    r0, r19, 0x8
    stb     r4, 0x18(sp)
    lbz     r4, 0x1(r3)
    stb     r4, 0x19(sp)
    lbz     r4, 0x2(r3)
    stb     r4, 0x1a(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x1c(sp)
    lwz     r4, 0x8(r3)
    stw     r4, 0x20(sp)
    lwz     r4, 0xc(r3)
    stw     r4, 0x24(sp)
    lwz     r4, 0x10(r3)
    stw     r4, 0x28(sp)
    lwz     r4, 0x14(r3)
    stw     r4, 0x2c(sp)
    lwz     r4, 0x18(r3)
    stw     r4, 0x30(sp)
    lwz     r4, 0x1c(r3)
    stw     r4, 0x34(sp)
    lha     r4, 0x20(r3)
    sth     r4, 0x38(sp)
    lha     r4, 0x22(r3)
    sth     r4, 0x3a(sp)
    lwz     r4, 0x28(r3)
    mr      r3, r25
    stw     r4, 0x40(sp)
    lwzx    r4, r30, r0
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser9TCtrlWave___FPCvUl
    lwz     r0, 0x0(r3)
    addi    r3, r22, 0x0
    addi    r4, r20, 0x0
    clrlwi  r0, r0, 16
    mr      r18, r0
    addi    r5, r18, 0x0
    addi    r6, sp, 0x18
    bl      setWaveInfo__Q38JASystem14TBasicWaveBank10TWaveGroupFiUlRCQ28JASystem9TWaveInfo
    cmplw   r24, r18
    bge-    branch_0x80310d4c
    mr      r24, r18
branch_0x80310d4c:
    addi    r20, r20, 0x1
    addi    r19, r19, 0x4
branch_0x80310d54:
    lwz     r0, 0x4(r30)
    cmplw   r20, r0
    blt+    branch_0x80310c98
    addi    r3, r22, 0x0
    addi    r4, r21, 0x0
    bl      setWaveArcFileName__Q38JASystem14TBasicWaveBank10TWaveGroupFPCc
    addi    r23, r23, 0x1
    addi    r31, r31, 0x4
branch_0x80310d74:
    lwz     r0, 0x8(r29)
    cmplw   r23, r0
    blt+    branch_0x80310c30
    addi    r3, r27, 0x0
    addi    r4, r24, 0x1
    bl      setWaveTableSize__Q28JASystem14TBasicWaveBankFUl
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, R13Off_m0x5c78(r13)
    subf    r4, r3, r28
    addi    r3, r27, 0x0
    add     r0, r0, r4
    stw     r0, R13Off_m0x5c78(r13)
branch_0x80310db4:
    lmw     r18, 0x48(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl createSimpleWaveBank__Q28JASystem8WSParserFPv
createSimpleWaveBank__Q28JASystem8WSParserFPv: # 0x80310dc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r23, 0x5c(sp)
    mr      r23, r3
    bl      getCurrentHeap__Q28JASystem9TWaveBankFv
    mr      r28, r3
    lwz     r12, 0x0(r28)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r27, r23
    lwz     r4, 0x14(r23)
    addi    r30, r3, 0x0
    addi    r3, r27, 0x0
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser10TCtrlGroup___FPCvUl
    mr      r24, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x80310e20
    li      r3, 0x0
    b       branch_0x80310fd4

branch_0x80310e20:
    addi    r4, r28, 0x0
    li      r3, 0x44
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    mr.     r29, r3
    beq-    branch_0x80310e44
    mr      r3, r29
    bl      __ct__Q28JASystem15TSimpleWaveBankFv
    mr      r29, r3
branch_0x80310e44:
    cmplwi  r29, 0x0
    bne-    branch_0x80310e54
    li      r3, 0x0
    b       branch_0x80310fd4

branch_0x80310e54:
    lwz     r4, 0xc(r24)
    addi    r3, r27, 0x0
    li      r26, 0x0
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser10TCtrlScene___FPCvUl
    lwz     r4, 0xc(r3)
    mr      r3, r27
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser5TCtrl___FPCvUl
    lwz     r4, 0x10(r27)
    addi    r31, r3, 0x0
    addi    r3, r27, 0x0
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser16TWaveArchiveBank___FPCvUl
    lwz     r4, 0x8(r3)
    mr      r3, r27
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser12TWaveArchive___FPCvUl
    addi    r25, r3, 0x0
    li      r23, 0x0
    li      r24, 0x0
    b       branch_0x80310ec8

branch_0x80310e9c:
    addi    r0, r24, 0x8
    lwzx    r4, r31, r0
    mr      r3, r27
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser9TCtrlWave___FPCvUl
    lwz     r0, 0x0(r3)
    clrlwi  r0, r0, 16
    cmplw   r26, r0
    bge-    branch_0x80310ec0
    mr      r26, r0
branch_0x80310ec0:
    addi    r23, r23, 0x1
    addi    r24, r24, 0x4
branch_0x80310ec8:
    lwz     r0, 0x4(r31)
    cmplw   r23, r0
    blt+    branch_0x80310e9c
    addi    r3, r29, 0x0
    addi    r4, r26, 0x1
    bl      setWaveTableSize__Q28JASystem15TSimpleWaveBankFUl
    li      r26, 0x0
    li      r24, 0x0
    b       branch_0x80310f94

branch_0x80310eec:
    addi    r0, r24, 0x74
    lwzx    r4, r25, r0
    mr      r3, r27
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser5TWave___FPCvUl
    lbz     r4, 0x0(r3)
    addi    r0, r24, 0x8
    stb     r4, 0x20(sp)
    lbz     r4, 0x1(r3)
    stb     r4, 0x21(sp)
    lbz     r4, 0x2(r3)
    stb     r4, 0x22(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x24(sp)
    lwz     r4, 0x8(r3)
    stw     r4, 0x28(sp)
    lwz     r4, 0xc(r3)
    stw     r4, 0x2c(sp)
    lwz     r4, 0x10(r3)
    stw     r4, 0x30(sp)
    lwz     r4, 0x14(r3)
    stw     r4, 0x34(sp)
    lwz     r4, 0x18(r3)
    stw     r4, 0x38(sp)
    lwz     r4, 0x1c(r3)
    stw     r4, 0x3c(sp)
    lha     r4, 0x20(r3)
    sth     r4, 0x40(sp)
    lha     r4, 0x22(r3)
    sth     r4, 0x42(sp)
    lwz     r4, 0x28(r3)
    mr      r3, r27
    stw     r4, 0x48(sp)
    lwzx    r4, r31, r0
    bl      JSUConvertOffsetToPtr_Q38JASystem8WSParser9TCtrlWave___FPCvUl
    lwz     r0, 0x0(r3)
    addi    r3, r29, 0x0
    addi    r5, sp, 0x20
    clrlwi  r0, r0, 16
    mr      r4, r0
    bl      setWaveInfo__Q28JASystem15TSimpleWaveBankFUlRCQ28JASystem9TWaveInfo
    addi    r26, r26, 0x1
    addi    r24, r24, 0x4
branch_0x80310f94:
    lwz     r0, 0x4(r31)
    cmplw   r26, r0
    blt+    branch_0x80310eec
    addi    r3, r29, 0x0
    addi    r4, r25, 0x0
    bl      setWaveArcFileName__Q28JASystem15TSimpleWaveBankFPCc
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, R13Off_m0x5c78(r13)
    subf    r4, r3, r30
    addi    r3, r29, 0x0
    add     r0, r0, r4
    stw     r0, R13Off_m0x5c78(r13)
branch_0x80310fd4:
    lmw     r23, 0x5c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem8WSParser9TCtrlWave___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem8WSParser9TCtrlWave___FPCvUl: # 0x80310fe8
    cmplwi  r4, 0x0
    bne-    branch_0x80310ff8
    li      r3, 0x0
    blr

branch_0x80310ff8:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem8WSParser5TWave___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem8WSParser5TWave___FPCvUl: # 0x80311000
    cmplwi  r4, 0x0
    bne-    branch_0x80311010
    li      r3, 0x0
    blr

branch_0x80311010:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem8WSParser12TWaveArchive___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem8WSParser12TWaveArchive___FPCvUl: # 0x80311018
    cmplwi  r4, 0x0
    bne-    branch_0x80311028
    li      r3, 0x0
    blr

branch_0x80311028:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem8WSParser16TWaveArchiveBank___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem8WSParser16TWaveArchiveBank___FPCvUl: # 0x80311030
    cmplwi  r4, 0x0
    bne-    branch_0x80311040
    li      r3, 0x0
    blr

branch_0x80311040:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem8WSParser5TCtrl___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem8WSParser5TCtrl___FPCvUl: # 0x80311048
    cmplwi  r4, 0x0
    bne-    branch_0x80311058
    li      r3, 0x0
    blr

branch_0x80311058:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem8WSParser10TCtrlScene___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem8WSParser10TCtrlScene___FPCvUl: # 0x80311060
    cmplwi  r4, 0x0
    bne-    branch_0x80311070
    li      r3, 0x0
    blr

branch_0x80311070:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem8WSParser10TCtrlGroup___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem8WSParser10TCtrlGroup___FPCvUl: # 0x80311078
    cmplwi  r4, 0x0
    bne-    branch_0x80311088
    li      r3, 0x0
    blr

branch_0x80311088:
    add     r3, r3, r4
    blr

