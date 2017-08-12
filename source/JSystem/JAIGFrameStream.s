
.globl checkEntriedStream__8JAIBasicFv
checkEntriedStream__8JAIBasicFv: # 0x8030836c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, 0x0(r3)
    lwz     r30, 0x220(r3)
    b       branch_0x80308414

branch_0x80308394:
    lbz     r0, 0x1(r30)
    li      r4, 0x0
    cmplwi  r0, 0x1
    bne-    branch_0x80308410
    lwz     r3, 0x0(r29)
    lwz     r3, 0x184(r3)
    lwz     r3, 0x14(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x803083c4
    bl      stop__Q27JAInter9StreamLibFv
    li      r4, 0x1
    b       branch_0x803083d8

branch_0x803083c4:
    lbz     r0, 0x2(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x803083d8
    bl      stop__Q27JAInter9StreamLibFv
    li      r4, 0x1
branch_0x803083d8:
    clrlwi. r0, r4, 24
    beq-    branch_0x80308410
    li      r0, 0x2
    stb     r0, 0x1(r30)
    mr      r3, r30
    lwz     r4, 0x0(r29)
    lwz     r31, 0x184(r4)
    bl      getStreamParameter__8JAISoundFv
    stw     r31, 0x3d4(r3)
    lwz     r3, 0x0(r29)
    bl      initStreamUpdateParameter__7JAIDataFv
    lwz     r3, 0x0(r29)
    lwz     r3, 0x184(r3)
    stw     r30, 0x14(r3)
branch_0x80308410:
    lwz     r30, 0x30(r30)
branch_0x80308414:
    cmplwi  r30, 0x0
    bne+    branch_0x80308394
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl checkWaitStream__8JAIBasicFv
checkWaitStream__8JAIBasicFv: # 0x80308438
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    mr      r30, r3
    lwz     r3, 0x0(r3)
    lwz     r3, 0x184(r3)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    mr      r31, r0
    beq-    branch_0x80308508
    lbz     r0, 0x1(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x80308508
    addi    r3, sp, 0xc
    lwz     r4, R13Off_m0x7480(r13)
    bl      strcpy
    lwz     r0, 0x8(r31)
    addi    r3, sp, 0xc
    lwz     r5, 0x0(r30)
    clrlwi  r0, r0, 22
    mulli   r4, r0, 0x30
    lwz     r0, 0x1f8(r5)
    addi    r4, r4, 0x10
    add     r4, r0, r4
    bl      strcat
    mr      r3, r30
    lwz     r12, 0x4(r30)
    mr      r4, r31
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x3
    stb     r0, 0x1(r31)
    mr      r3, r30
    bl      checkPlayingStream__8JAIBasicFv
    mr      r3, r31
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x8(r31)
    mr      r6, r3
    lwz     r4, 0x0(r30)
    addi    r3, sp, 0xc
    clrlwi  r0, r0, 22
    mulli   r5, r0, 0x30
    lwz     r0, 0x1f8(r4)
    lwz     r4, 0x4(r6)
    addi    r5, r5, 0x20
    add     r5, r0, r5
    bl      start__Q27JAInter9StreamLibFPcUlPv
    li      r3, 0x1
    bl      setPrepareFlag__Q27JAInter9StreamLibFUc
branch_0x80308508:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl checkRequestStream__8JAIBasicFv
checkRequestStream__8JAIBasicFv: # 0x80308520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x184(r3)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    mr      r31, r0
    beq-    branch_0x803085a4
    lbz     r0, 0x1(r31)
    cmplwi  r0, 0x3
    bne-    branch_0x803085a4
    lbz     r0, 0x2(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x803085a4
    li      r0, 0x4
    stb     r0, 0x1(r31)
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x1
    ble-    branch_0x8030859c
    lfs     f1, 0x570(r2)
    addi    r3, r31, 0x0
    li      r4, 0x6
    li      r5, 0x0
    bl      setStreamInterVolume__8JAISoundFUcfUl
    lfs     f1, 0x574(r2)
    mr      r3, r31
    lwz     r5, 0x10(r31)
    li      r4, 0x6
    bl      setStreamInterVolume__8JAISoundFUcfUl
branch_0x8030859c:
    li      r3, 0x0
    bl      setPrepareFlag__Q27JAInter9StreamLibFUc
branch_0x803085a4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkPlayingStream__8JAIBasicFv
checkPlayingStream__8JAIBasicFv: # 0x803085b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stfd    f30, 0x38(sp)
    stmw    r24, 0x18(sp)
    mr      r28, r3
    lwz     r3, 0x0(r3)
    lwz     r3, 0x184(r3)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    mr      r30, r0
    beq-    branch_0x803089cc
    lbz     r0, 0x1(r30)
    addi    r29, r3, 0x10
    cmplwi  r0, 0x4
    blt-    branch_0x80308758
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    bl      getPlayingFlag__Q27JAInter9StreamLibFv
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x2
    bne-    branch_0x80308674
    li      r27, 0x0
    stb     r27, 0x1(r30)
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x3d4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80308640
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r3, 0x3d4(r3)
    stw     r27, 0x14(r3)
branch_0x80308640:
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      releaseStreamParameterPointer__8JAIBasicFP18JAIStreamParameter
    mr      r3, r30
    bl      clearMainSoundPPointer__8JAISoundFv
    lwz     r4, 0x0(r28)
    addi    r3, r28, 0x0
    addi    r5, r30, 0x0
    addi    r4, r4, 0x21c
    bl      releaseControllerHandle__8JAIBasicFP13JAILinkBufferP8JAISound
    b       branch_0x803089cc

branch_0x80308674:
    lbz     r3, 0x2(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80308688
    addi    r0, r3, -0x1
    stb     r0, 0x2(r30)
branch_0x80308688:
    lwz     r0, 0x0(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x803086bc
    lfs     f1, 0x570(r2)
    mr      r3, r30
    lwz     r5, 0x10(r30)
    li      r4, 0x6
    bl      setStreamInterVolume__8JAISoundFUcfUl
    li      r0, 0x5
    stb     r0, 0x1(r30)
    lwz     r0, 0x0(r29)
    xori     r0, r0, 0x2
    stw     r0, 0x0(r29)
branch_0x803086bc:
    lbz     r0, 0x1(r30)
    cmplwi  r0, 0x5
    bne-    branch_0x80308758
    addi    r3, r30, 0x0
    li      r4, 0x6
    bl      getStreamInterVolume__8JAISoundFUc
    lfs     f0, 0x570(r2)
    fcmpu   cr0, f0, f1
    beq-    branch_0x803086ec
    lwz     r0, 0x10(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80308758
branch_0x803086ec:
    lbz     r0, 0x2(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80308758
    bl      stop__Q27JAInter9StreamLibFv
    li      r27, 0x0
    stb     r27, 0x1(r30)
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x3d4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80308728
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r3, 0x3d4(r3)
    stw     r27, 0x14(r3)
branch_0x80308728:
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      releaseStreamParameterPointer__8JAIBasicFP18JAIStreamParameter
    mr      r3, r30
    bl      clearMainSoundPPointer__8JAISoundFv
    lwz     r4, 0x0(r28)
    addi    r3, r28, 0x0
    addi    r5, r30, 0x0
    addi    r4, r4, 0x21c
    bl      releaseControllerHandle__8JAIBasicFP13JAILinkBufferP8JAISound
branch_0x80308758:
    lbz     r0, 0x1(r30)
    cmplwi  r0, 0x3
    blt-    branch_0x803089cc
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x0(r29)
    addi    r31, r3, 0x0
    rlwinm. r0, r0, 0, 13, 13
    beq-    branch_0x80308824
    lfs     f31, 0x574(r2)
    li      r25, 0x0
    li      r27, 0x1
    b       branch_0x803087d8

branch_0x8030878c:
    clrlwi  r3, r25, 24
    lwz     r0, 0x8(r31)
    slw     r26, r27, r3
    clrlslwi  r3, r25, 24, 4
    addi    r24, r3, 0x14
    and.    r0, r0, r26
    add     r24, r31, r24
    beq-    branch_0x803087cc
    lwz     r3, 0x0(r28)
    mr      r4, r24
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x803087cc
    lwz     r0, 0x8(r31)
    xor     r0, r0, r26
    stw     r0, 0x8(r31)
branch_0x803087cc:
    lfs     f0, 0x4(r24)
    addi    r25, r25, 0x1
    fmuls   f31, f31, f0
branch_0x803087d8:
    clrlwi  r0, r25, 24
    cmplwi  r0, 0xd
    blt+    branch_0x8030878c
    lwz     r3, 0x0(r28)
    lwz     r3, 0x184(r3)
    lfs     f0, 0x4(r3)
    fcmpu   cr0, f0, f31
    beq-    branch_0x8030880c
    fmr     f1, f31
    bl      setVolume__Q27JAInter9StreamLibFf
    lwz     r3, 0x0(r28)
    lwz     r3, 0x184(r3)
    stfs    f31, 0x4(r3)
branch_0x8030880c:
    lwz     r0, 0x8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80308824
    lwz     r0, 0x0(r29)
    xoris   r0, r0, 0x4
    stw     r0, 0x0(r29)
branch_0x80308824:
    lwz     r0, 0x0(r29)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x803088d8
    lfs     f31, 0x574(r2)
    li      r24, 0x0
    li      r27, 0x1
    b       branch_0x8030888c

branch_0x80308840:
    clrlwi  r3, r24, 24
    lwz     r0, 0xc(r31)
    slw     r26, r27, r3
    clrlslwi  r3, r24, 24, 4
    addi    r25, r3, 0x154
    and.    r0, r0, r26
    add     r25, r31, r25
    beq-    branch_0x80308880
    lwz     r3, 0x0(r28)
    mr      r4, r25
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x80308880
    lwz     r0, 0xc(r31)
    xor     r0, r0, r26
    stw     r0, 0xc(r31)
branch_0x80308880:
    lfs     f0, 0x4(r25)
    addi    r24, r24, 0x1
    fmuls   f31, f31, f0
branch_0x8030888c:
    clrlwi  r0, r24, 24
    cmplwi  r0, 0xd
    blt+    branch_0x80308840
    lwz     r3, 0x0(r28)
    lwz     r3, 0x184(r3)
    lfs     f0, 0x8(r3)
    fcmpu   cr0, f0, f31
    beq-    branch_0x803088c0
    fmr     f1, f31
    bl      setPitch__Q27JAInter9StreamLibFf
    lwz     r3, 0x0(r28)
    lwz     r3, 0x184(r3)
    stfs    f31, 0x8(r3)
branch_0x803088c0:
    lwz     r0, 0xc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x803088d8
    lwz     r0, 0x0(r29)
    xoris   r0, r0, 0x10
    stw     r0, 0x0(r29)
branch_0x803088d8:
    lwz     r0, 0x0(r29)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x803089c0
    lfs     f30, 0x570(r2)
    li      r24, 0x0
    lfs     f31, 0x578(r2)
    li      r27, 0x1
    b       branch_0x80308948

branch_0x803088f8:
    clrlwi  r3, r24, 24
    lwz     r0, 0x10(r31)
    slw     r26, r27, r3
    clrlslwi  r3, r24, 24, 4
    addi    r25, r3, 0x294
    and.    r0, r0, r26
    add     r25, r31, r25
    beq-    branch_0x80308938
    lwz     r3, 0x0(r28)
    mr      r4, r25
    bl      moveParameter__7JAIDataFP14JAIMoveParaSet
    cmpwi   r3, 0x0
    bne-    branch_0x80308938
    lwz     r0, 0x10(r31)
    xor     r0, r0, r26
    stw     r0, 0x10(r31)
branch_0x80308938:
    lfs     f0, 0x4(r25)
    addi    r24, r24, 0x1
    fsubs   f0, f0, f31
    fadds   f30, f30, f0
branch_0x80308948:
    clrlwi  r0, r24, 24
    cmplwi  r0, 0xd
    blt+    branch_0x803088f8
    lfs     f1, 0x578(r2)
    lfs     f0, 0x574(r2)
    fadds   f30, f30, f1
    fcmpo   cr0, f30, f0
    ble-    branch_0x80308970
    fmr     f30, f0
    b       branch_0x80308980

branch_0x80308970:
    lfs     f0, 0x570(r2)
    fcmpo   cr0, f30, f0
    bge-    branch_0x80308980
    fmr     f30, f0
branch_0x80308980:
    lwz     r3, 0x0(r28)
    lwz     r3, 0x184(r3)
    lfs     f0, 0xc(r3)
    fcmpu   cr0, f0, f30
    beq-    branch_0x803089a8
    fmr     f1, f30
    bl      setPan__Q27JAInter9StreamLibFf
    lwz     r3, 0x0(r28)
    lwz     r3, 0x184(r3)
    stfs    f30, 0xc(r3)
branch_0x803089a8:
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x803089c0
    lwz     r0, 0x0(r29)
    xoris   r0, r0, 0x8
    stw     r0, 0x0(r29)
branch_0x803089c0:
    lwz     r3, 0x14(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x14(r30)
branch_0x803089cc:
    lmw     r24, 0x18(sp)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl Play_DirectPCM__Q27JAInter9StreamLibFPQ28JASystem11TDSPChannelPsUsUl
Play_DirectPCM__Q27JAInter9StreamLibFPQ28JASystem11TDSPChannelPsUsUl: # 0x803089e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    stw     r28, 0x118(r3)
    li      r0, 0x0
    li      r4, 0x21
    sth     r0, 0x102(r3)
    slwi    r0, r29, 16
    sth     r4, 0x100(r3)
    stw     r30, 0x74(r3)
    stw     r28, 0x110(r3)
    stw     r0, 0x114(r3)
    lbz     r3, 0x0(r31)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    li      r4, 0x0
    bl      setMixerInitDelayMax__Q38JASystem12DSPInterface9DSPBufferFUc
    li      r30, 0x0
    b       branch_0x80308ab0

branch_0x80308a58:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x2
    bge-    branch_0x80308a80
    lbz     r3, 0x0(r31)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    addi    r4, r30, 0x0
    li      r5, 0x7fff
    li      r6, 0x0
    bl      setMixerInitVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
    b       branch_0x80308a98

branch_0x80308a80:
    lbz     r3, 0x0(r31)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    addi    r4, r30, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      setMixerInitVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
branch_0x80308a98:
    lbz     r3, 0x0(r31)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    addi    r4, r30, 0x0
    addi    r5, r30, 0x1
    bl      setBusConnect__Q38JASystem12DSPInterface9DSPBufferFUcUc
    addi    r30, r30, 0x1
branch_0x80308ab0:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x6
    blt+    branch_0x80308a58
    lbz     r3, 0x0(r31)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    li      r4, 0x800
    bl      setPitch__Q38JASystem12DSPInterface9DSPBufferFUs
    lbz     r3, 0x0(r31)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    bl      playStart__Q38JASystem12DSPInterface9DSPBufferFv
    lbz     r3, 0x0(r31)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl init__Q27JAInter9StreamLibFb
init__Q27JAInter9StreamLibFb: # 0x80308b04
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r3, 24
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stb     r3, R13Off_m0x5cf4(r13)
    bne-    branch_0x80308b50
    bl      getNeedBufferSize__Q27JAInter9StreamLibFv
    mr      r0, r3
    lwz     r3, R13Off_m0x5b30(r13)
    mr      r31, r0
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r4, r31
    bl      allocBuffer__Q27JAInter9StreamLibFPvl
branch_0x80308b50:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl allocBuffer__Q27JAInter9StreamLibFPvl
allocBuffer__Q27JAInter9StreamLibFPvl: # 0x80308b64
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x0
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    lbz     r0, R13Off_m0x5cf3(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80308c78
    lis     r3, streamHeap__Q27JAInter9StreamLib@h
    addi    r28, r3, streamHeap__Q27JAInter9StreamLib@l
    addi    r3, r28, 0x0
    addi    r4, r6, 0x0
    bl      init__Q38JASystem6Kernel10TSolidHeapFPUcl
    addi    r3, r28, 0x0
    li      r4, 0x8
    bl      alloc__Q38JASystem6Kernel10TSolidHeapFl
    stw     r3, R13Off_m0x5d60(r13)
    addi    r29, r28, 0x0
    li      r27, 0x0
    li      r31, 0x0
branch_0x80308bb8:
    lwz     r0, R13Off_m0x74e0(r13)
    addi    r3, r29, 0x0
    slwi    r4, r0, 2
    bl      alloc__Q38JASystem6Kernel10TSolidHeapFl
    lwz     r4, R13Off_m0x5d60(r13)
    li      r26, 0x0
    li      r30, 0x0
    stwx    r3, r4, r31
    b       branch_0x80308bfc

branch_0x80308bdc:
    addi    r3, r28, 0x0
    li      r4, 0x2800
    bl      alloc__Q38JASystem6Kernel10TSolidHeapFl
    lwz     r0, R13Off_m0x5d60(r13)
    addi    r26, r26, 0x1
    lwzx    r4, r31, r0
    stwx    r3, r4, r30
    addi    r30, r30, 0x4
branch_0x80308bfc:
    lwz     r0, R13Off_m0x74e0(r13)
    cmplw   r26, r0
    blt+    branch_0x80308bdc
    addi    r27, r27, 0x1
    cmplwi  r27, 0x2
    addi    r31, r31, 0x4
    blt+    branch_0x80308bb8
    lis     r3, streamHeap__Q27JAInter9StreamLib@h
    addi    r30, r3, streamHeap__Q27JAInter9StreamLib@l
    addi    r3, r30, 0x0
    li      r4, 0x8
    bl      alloc__Q38JASystem6Kernel10TSolidHeapFl
    stw     r3, R13Off_m0x5d5c(r13)
    li      r26, 0x0
    li      r31, 0x0
branch_0x80308c38:
    addi    r3, r30, 0x0
    li      r4, 0x5000
    bl      alloc__Q38JASystem6Kernel10TSolidHeapFl
    lwz     r4, R13Off_m0x5d5c(r13)
    addi    r26, r26, 0x1
    cmplwi  r26, 0x2
    stwx    r3, r4, r31
    addi    r31, r31, 0x4
    blt+    branch_0x80308c38
    lis     r3, streamHeap__Q27JAInter9StreamLib@h
    addi    r3, r3, streamHeap__Q27JAInter9StreamLib@l
    li      r4, 0x5000
    bl      alloc__Q38JASystem6Kernel10TSolidHeapFl
    li      r0, 0x1
    stw     r3, R13Off_m0x5d64(r13)
    stb     r0, R13Off_m0x5cf3(r13)
branch_0x80308c78:
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getNeedBufferSize__Q27JAInter9StreamLibFv
getNeedBufferSize__Q27JAInter9StreamLibFv: # 0x80308c8c
    lwz     r5, R13Off_m0x74e0(r13)
    li      r6, 0x20
    li      r7, 0x0
    extlwi  r3, r5, 27, 2
    addi    r3, r3, 0x20
    addi    r4, r5, -0x8
branch_0x80308ca4:
    cmplwi  r5, 0x0
    add     r6, r6, r3
    li      r8, 0x0
    ble-    branch_0x80308cf8
    cmplwi  r5, 0x8
    ble-    branch_0x80308ce0
    addi    r0, r4, 0x7
    srwi    r0, r0, 3
    cmplwi  r4, 0x0
    mtctr   r0
    ble-    branch_0x80308ce0
branch_0x80308cd0:
    addis   r6, r6, 0x1
    addi    r6, r6, 0x4100
    addi    r8, r8, 0x8
    bdnz+      branch_0x80308cd0
branch_0x80308ce0:
    subf    r0, r8, r5
    cmplw   r8, r5
    mtctr   r0
    bge-    branch_0x80308cf8
branch_0x80308cf0:
    addi    r6, r6, 0x2820
    bdnz+      branch_0x80308cf0
branch_0x80308cf8:
    addi    r7, r7, 0x1
    cmplwi  r7, 0x2
    blt+    branch_0x80308ca4
    addis   r3, r6, 0x1
    addi    r3, r3, -0xf80
    blr

branch_0x80308d10:
    b       branch_0x80308ce0

branch_0x80308d14:
    blr


.globl __DecodePCM__Q27JAInter9StreamLibFv
__DecodePCM__Q27JAInter9StreamLibFv: # 0x80308d18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, R13Off_m0x5d60(r13)
    lwz     r6, R13Off_m0x5d68(r13)
    lwz     r0, R13Off_m0x5d50(r13)
    srwi    r3, r6, 2
    lwz     r5, 0x0(r4)
    slwi    r0, r0, 2
    lwz     r4, 0x4(r4)
    cmplwi  r3, 0x0
    lwzx    r5, r5, r0
    lwzx    r4, r4, r0
    lwz     r7, R13Off_m0x5d64(r13)
    ble-    branch_0x80308e1c
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x80308df8
branch_0x80308d60:
    lha     r0, 0x0(r7)
    sth     r0, 0x0(r5)
    lha     r0, 0x2(r7)
    sth     r0, 0x0(r4)
    lha     r0, 0x4(r7)
    sth     r0, 0x2(r5)
    lha     r0, 0x6(r7)
    sth     r0, 0x2(r4)
    lha     r0, 0x8(r7)
    sth     r0, 0x4(r5)
    lha     r0, 0xa(r7)
    sth     r0, 0x4(r4)
    lha     r0, 0xc(r7)
    sth     r0, 0x6(r5)
    lha     r0, 0xe(r7)
    sth     r0, 0x6(r4)
    lha     r0, 0x10(r7)
    sth     r0, 0x8(r5)
    lha     r0, 0x12(r7)
    sth     r0, 0x8(r4)
    lha     r0, 0x14(r7)
    sth     r0, 0xa(r5)
    lha     r0, 0x16(r7)
    sth     r0, 0xa(r4)
    lha     r0, 0x18(r7)
    sth     r0, 0xc(r5)
    lha     r0, 0x1a(r7)
    sth     r0, 0xc(r4)
    lha     r0, 0x1c(r7)
    sth     r0, 0xe(r5)
    addi    r5, r5, 0x10
    lha     r0, 0x1e(r7)
    addi    r7, r7, 0x20
    sth     r0, 0xe(r4)
    addi    r4, r4, 0x10
    bdnz+      branch_0x80308d60
    andi.   r3, r3, 0x7
    beq-    branch_0x80308e1c
branch_0x80308df8:
    mtctr   r3
branch_0x80308dfc:
    lha     r0, 0x0(r7)
    sth     r0, 0x0(r5)
    addi    r5, r5, 0x2
    lha     r0, 0x2(r7)
    addi    r7, r7, 0x4
    sth     r0, 0x0(r4)
    addi    r4, r4, 0x2
    bdnz+      branch_0x80308dfc
branch_0x80308e1c:
    lwz     r5, R13Off_m0x5d48(r13)
    srwi    r3, r6, 2
    lwz     r0, R13Off_m0x5d50(r13)
    srwi    r4, r6, 1
    add     r5, r5, r3
    lwz     r3, R13Off_m0x5d60(r13)
    slwi    r0, r0, 2
    stw     r5, R13Off_m0x5d48(r13)
    lwz     r3, 0x0(r3)
    lwzx    r3, r3, r0
    bl      DCStoreRange
    lwz     r3, R13Off_m0x5d60(r13)
    lwz     r0, R13Off_m0x5d50(r13)
    lwz     r4, 0x4(r3)
    slwi    r3, r0, 2
    lwz     r0, R13Off_m0x5d68(r13)
    lwzx    r3, r4, r3
    srwi    r4, r0, 1
    bl      DCStoreRange
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __DecodeADPCM__Q27JAInter9StreamLibFv
__DecodeADPCM__Q27JAInter9StreamLibFv: # 0x80308e78
    mflr    r0
    lis     r4, filter_table__Q27JAInter9StreamLib@h
    stw     r0, 0x4(sp)
    addi    r0, r4, filter_table__Q27JAInter9StreamLib@l
    li      r11, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    lwz     r3, R13Off_m0x5d40(r13)
    cmplwi  r3, 0x0
    bne-    branch_0x80308ecc
    lwz     r3, R13Off_m0x5d50(r13)
    cmplwi  r3, 0x0
    bne-    branch_0x80308ecc
    li      r3, 0x0
    sth     r3, -0x5ce4(r13)
    sth     r3, -0x5ce6(r13)
    sth     r3, -0x5ce8(r13)
    sth     r3, -0x5cea(r13)
branch_0x80308ecc:
    lwz     r3, R13Off_m0x5d18(r13)
    lwz     r4, R13Off_m0x5d5c(r13)
    lwz     r5, R13Off_m0x5d64(r13)
    cmplwi  r3, 0x0
    lwz     r7, 0x0(r4)
    lwz     r8, 0x4(r4)
    mr      r9, r5
    beq-    branch_0x80308f14
    lis     r3, header__Q27JAInter9StreamLib@ha
    addi    r3, r3, header__Q27JAInter9StreamLib@l
    lwz     r4, 0x14(r3)
    li      r3, 0x0
    stw     r3, R13Off_m0x5d18(r13)
    extrwi  r3, r4, 3, 25
    mulli   r11, r3, 0x12
    subfic  r3, r11, 0x1680
    stw     r3, R13Off_m0x5d68(r13)
    add     r9, r5, r11
branch_0x80308f14:
    lis     r3, unk_38e38e39@ha
    lwz     r4, R13Off_m0x5d68(r13)
    addi    r3, r3, unk_38e38e39@l
    mulhwu  r3, r3, r4
    srwi    r12, r3, 2
    li      r10, 0x0
    b       branch_0x80309174

branch_0x80308f30:
    lbz     r5, 0x0(r9)
    li      r3, 0x4
    mtctr   r3
    addi    r9, r9, 0x1
    clrlslwi  r3, r5, 28, 2
    add     r3, r0, r3
    lha     r6, 0x0(r3)
    extrwi  r5, r5, 4, 24
    lha     r3, 0x2(r3)
branch_0x80308f54:
    lha     r29, -0x5cea(r13)
    lha     r28, -0x5ce8(r13)
    lbz     r31, 0x0(r9)
    mullw   r29, r6, r29
    mullw   r28, r3, r28
    srawi   r30, r31, 4
    add     r29, r29, r28
    clrlslwi  r30, r30, 24, 1
    add     r30, r0, r30
    lha     r30, 0x40(r30)
    srawi   r29, r29, 11
    clrlslwi  r28, r31, 28, 1
    slw     r30, r30, r5
    add     r29, r30, r29
    extsh   r29, r29
    sth     r29, 0x0(r7)
    add     r30, r0, r28
    sth     r29, -0x5ce8(r13)
    lha     r28, -0x5cea(r13)
    lha     r29, -0x5ce8(r13)
    mullw   r28, r3, r28
    lha     r30, 0x40(r30)
    mullw   r29, r6, r29
    add     r28, r29, r28
    slw     r29, r30, r5
    srawi   r28, r28, 11
    add     r28, r29, r28
    extsh   r28, r28
    sth     r28, 0x2(r7)
    sth     r28, -0x5cea(r13)
    lha     r28, -0x5ce8(r13)
    lbz     r31, 0x1(r9)
    addi    r9, r9, 0x2
    lha     r29, -0x5cea(r13)
    mullw   r28, r3, r28
    mullw   r29, r6, r29
    srawi   r30, r31, 4
    add     r29, r29, r28
    clrlslwi  r30, r30, 24, 1
    add     r30, r0, r30
    lha     r30, 0x40(r30)
    srawi   r29, r29, 11
    clrlslwi  r28, r31, 28, 1
    slw     r30, r30, r5
    add     r29, r30, r29
    extsh   r29, r29
    sth     r29, 0x4(r7)
    add     r30, r0, r28
    sth     r29, -0x5ce8(r13)
    lha     r28, -0x5cea(r13)
    lha     r29, -0x5ce8(r13)
    mullw   r28, r3, r28
    lha     r30, 0x40(r30)
    mullw   r29, r6, r29
    add     r28, r29, r28
    slw     r29, r30, r5
    srawi   r28, r28, 11
    add     r28, r29, r28
    extsh   r28, r28
    sth     r28, 0x6(r7)
    addi    r7, r7, 0x8
    sth     r28, -0x5cea(r13)
    bdnz+      branch_0x80308f54
    lbz     r5, 0x0(r9)
    li      r3, 0x4
    mtctr   r3
    addi    r9, r9, 0x1
    clrlslwi  r3, r5, 28, 2
    add     r3, r0, r3
    lha     r6, 0x0(r3)
    extrwi  r5, r5, 4, 24
    lha     r3, 0x2(r3)
branch_0x80309074:
    lha     r29, -0x5ce6(r13)
    lha     r28, -0x5ce4(r13)
    lbz     r31, 0x0(r9)
    mullw   r29, r6, r29
    mullw   r28, r3, r28
    srawi   r30, r31, 4
    add     r29, r29, r28
    clrlslwi  r30, r30, 24, 1
    add     r30, r0, r30
    lha     r30, 0x40(r30)
    srawi   r29, r29, 11
    clrlslwi  r28, r31, 28, 1
    slw     r30, r30, r5
    add     r29, r30, r29
    extsh   r29, r29
    sth     r29, 0x0(r8)
    add     r30, r0, r28
    sth     r29, -0x5ce4(r13)
    lha     r28, -0x5ce6(r13)
    lha     r29, -0x5ce4(r13)
    mullw   r28, r3, r28
    lha     r30, 0x40(r30)
    mullw   r29, r6, r29
    add     r28, r29, r28
    slw     r29, r30, r5
    srawi   r28, r28, 11
    add     r28, r29, r28
    extsh   r28, r28
    sth     r28, 0x2(r8)
    sth     r28, -0x5ce6(r13)
    lha     r28, -0x5ce4(r13)
    lbz     r31, 0x1(r9)
    addi    r9, r9, 0x2
    lha     r29, -0x5ce6(r13)
    mullw   r28, r3, r28
    mullw   r29, r6, r29
    srawi   r30, r31, 4
    add     r29, r29, r28
    clrlslwi  r30, r30, 24, 1
    add     r30, r0, r30
    lha     r30, 0x40(r30)
    srawi   r29, r29, 11
    clrlslwi  r28, r31, 28, 1
    slw     r30, r30, r5
    add     r29, r30, r29
    extsh   r29, r29
    sth     r29, 0x4(r8)
    add     r30, r0, r28
    sth     r29, -0x5ce4(r13)
    lha     r28, -0x5ce6(r13)
    lha     r29, -0x5ce4(r13)
    mullw   r28, r3, r28
    lha     r30, 0x40(r30)
    mullw   r29, r6, r29
    add     r28, r29, r28
    slw     r29, r30, r5
    srawi   r28, r28, 11
    add     r28, r29, r28
    extsh   r28, r28
    sth     r28, 0x6(r8)
    addi    r8, r8, 0x8
    sth     r28, -0x5ce6(r13)
    bdnz+      branch_0x80309074
    addi    r10, r10, 0x1
branch_0x80309174:
    cmplw   r10, r12
    blt+    branch_0x80308f30
    lis     r3, unk_38e38e39@ha
    lwz     r5, R13Off_m0x5d48(r13)
    subf    r0, r11, r4
    addi    r31, r3, unk_38e38e39@l
    mulhwu  r0, r31, r0
    rlwinm  r0, r0, 2, 1, 27
    add     r0, r5, r0
    stw     r0, R13Off_m0x5d48(r13)
    li      r29, 0x0
    li      r28, 0x0
    b       branch_0x8030928c

branch_0x803091a8:
    lwz     r3, R13Off_m0x5d0c(r13)
    add     r0, r29, r3
    cmplwi  r0, 0x1400
    mr      r30, r0
    bne-    branch_0x8030922c
    lwz     r5, R13Off_m0x5d60(r13)
    subfic  r0, r3, 0x1400
    lwz     r4, R13Off_m0x5d50(r13)
    slwi    r3, r3, 1
    lwz     r5, 0x0(r5)
    slwi    r4, r4, 2
    lwzx    r5, r5, r4
    slwi    r4, r0, 1
    add     r3, r5, r3
    bl      DCStoreRange
    lwz     r3, R13Off_m0x5d60(r13)
    lwz     r0, R13Off_m0x5d50(r13)
    lwz     r3, 0x4(r3)
    lwz     r5, R13Off_m0x5d0c(r13)
    slwi    r0, r0, 2
    lwzx    r4, r3, r0
    slwi    r3, r5, 1
    subfic  r0, r5, 0x1400
    add     r3, r4, r3
    slwi    r4, r0, 1
    bl      DCStoreRange
    lwz     r4, R13Off_m0x5d50(r13)
    lwz     r3, R13Off_m0x74e0(r13)
    addi    r4, r4, 0x1
    divwu   r0, r4, r3
    mullw   r0, r0, r3
    subf    r0, r0, r4
    stw     r0, R13Off_m0x5d50(r13)
branch_0x8030922c:
    cmplwi  r30, 0x1400
    blt-    branch_0x80309238
    addi    r30, r30, -0x1400
branch_0x80309238:
    lwz     r4, R13Off_m0x5d5c(r13)
    slwi    r5, r30, 1
    lwz     r3, R13Off_m0x5d60(r13)
    addi    r29, r29, 0x1
    lwz     r0, R13Off_m0x5d50(r13)
    lwz     r4, 0x0(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    lhax    r4, r4, r28
    lwzx    r3, r3, r0
    sthx    r4, r3, r5
    lwz     r4, R13Off_m0x5d5c(r13)
    lwz     r3, R13Off_m0x5d60(r13)
    lwz     r0, R13Off_m0x5d50(r13)
    lwz     r4, 0x4(r4)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 2
    lhax    r4, r4, r28
    addi    r28, r28, 0x2
    lwzx    r3, r3, r0
    sthx    r4, r3, r5
branch_0x8030928c:
    lwz     r0, R13Off_m0x5d68(r13)
    mulhwu  r0, r31, r0
    extlwi  r0, r0, 28, 2
    cmplw   r29, r0
    blt+    branch_0x803091a8
    lwz     r3, R13Off_m0x5d60(r13)
    li      r4, 0x2800
    lwz     r0, R13Off_m0x5d50(r13)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    lwz     r5, R13Off_m0x5d0c(r13)
    lwzx    r3, r3, r0
    add     r28, r29, r5
    bl      DCStoreRange
    lwz     r3, R13Off_m0x5d60(r13)
    li      r4, 0x2800
    lwz     r0, R13Off_m0x5d50(r13)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      DCStoreRange
    cmplwi  r28, 0x1400
    bne-    branch_0x80309304
    lwz     r4, R13Off_m0x5d50(r13)
    lwz     r3, R13Off_m0x74e0(r13)
    addi    r4, r4, 0x1
    divwu   r0, r4, r3
    mullw   r0, r0, r3
    subf    r0, r0, r4
    stw     r0, R13Off_m0x5d50(r13)
branch_0x80309304:
    cmplwi  r28, 0x1400
    blt-    branch_0x80309318
    addi    r0, r28, -0x1400
    stw     r0, R13Off_m0x5d0c(r13)
    b       branch_0x8030932c

branch_0x80309318:
    stw     r28, R13Off_m0x5d0c(r13)
    ble-    branch_0x8030932c
    lwz     r3, R13Off_m0x5d0c(r13)
    addi    r0, r3, -0x1400
    stw     r0, R13Off_m0x5d0c(r13)
branch_0x8030932c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __LoadFin__Q27JAInter9StreamLibFlP11DVDFileInfo
__LoadFin__Q27JAInter9StreamLibFlP11DVDFileInfo: # 0x8030934c
    lwz     r0, R13Off_m0x5d44(r13)
    li      r3, 0x0
    stw     r3, R13Off_m0x5d04(r13)
    cmplwi  r0, 0x3
    beqlr-    

    li      r0, 0x2
    stw     r0, R13Off_m0x5d44(r13)
    blr


.globl LoadADPCM__Q27JAInter9StreamLibFv
LoadADPCM__Q27JAInter9StreamLibFv: # 0x8030936c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lwz     r0, R13Off_m0x5d44(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8030946c
    lis     r3, header__Q27JAInter9StreamLib@ha
    addi    r3, r3, header__Q27JAInter9StreamLib@l
    lhz     r0, 0xa(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x803093cc
    bge-    branch_0x803093ac
    cmpwi   r0, 0x2
    bge-    branch_0x803093b8
    b       branch_0x803093cc

branch_0x803093ac:
    cmpwi   r0, 0x5
    bge-    branch_0x803093cc
    b       branch_0x803093c4

branch_0x803093b8:
    li      r0, 0x5000
    stw     r0, R13Off_m0x5d68(r13)
    b       branch_0x803093cc

branch_0x803093c4:
    li      r0, 0x1680
    stw     r0, R13Off_m0x5d68(r13)
branch_0x803093cc:
    lwz     r4, R13Off_m0x5d70(r13)
    li      r3, 0x0
    lwz     r0, R13Off_m0x5d68(r13)
    stw     r3, R13Off_m0x5d08(r13)
    cmplw   r4, r0
    bge-    branch_0x8030940c
    clrlwi. r0, r4, 27
    beq-    branch_0x80309408
    subfic  r0, r0, 0x20
    add     r0, r4, r0
    stw     r0, R13Off_m0x5d68(r13)
    lwz     r0, R13Off_m0x5d68(r13)
    subf    r0, r4, r0
    stw     r0, R13Off_m0x5d08(r13)
    b       branch_0x8030940c

branch_0x80309408:
    stw     r4, R13Off_m0x5d68(r13)
branch_0x8030940c:
    li      r31, 0x1
    lwz     r4, R13Off_m0x5d64(r13)
    lis     r3, finfo__Q27JAInter9StreamLib@ha
    stw     r31, R13Off_m0x5d44(r13)
    lis     r7, __LoadFin__Q27JAInter9StreamLibFlP11DVDFileInfo@ha
    lwz     r5, R13Off_m0x5d68(r13)
    lwz     r6, R13Off_m0x5d6c(r13)
    addi    r3, r3, finfo__Q27JAInter9StreamLib@l
    addi    r7, r7, __LoadFin__Q27JAInter9StreamLibFlP11DVDFileInfo@l
    li      r8, 0x2
    bl      DVDReadAsyncPrio
    lwz     r3, R13Off_m0x5d6c(r13)
    lwz     r4, R13Off_m0x5d68(r13)
    lwz     r0, R13Off_m0x5d70(r13)
    add     r3, r3, r4
    stw     r31, R13Off_m0x5d04(r13)
    cmplw   r0, r4
    stw     r3, R13Off_m0x5d6c(r13)
    bge-    branch_0x80309464
    li      r0, 0x0
    stw     r0, R13Off_m0x5d70(r13)
    b       branch_0x8030946c

branch_0x80309464:
    subf    r0, r4, r0
    stw     r0, R13Off_m0x5d70(r13)
branch_0x8030946c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl setVolume__Q27JAInter9StreamLibFf
setVolume__Q27JAInter9StreamLibFf: # 0x80309480
    li      r0, 0x1
    stfs    f1, -0x5d28(r13)
    stb     r0, R13Off_m0x5d1c(r13)
    blr


.globl setPitch__Q27JAInter9StreamLibFf
setPitch__Q27JAInter9StreamLibFf: # 0x80309490
    li      r0, 0x1
    stfs    f1, -0x5d24(r13)
    stb     r0, R13Off_m0x5d1a(r13)
    blr


.globl setPan__Q27JAInter9StreamLibFf
setPan__Q27JAInter9StreamLibFf: # 0x803094a0
    li      r0, 0x1
    stfs    f1, -0x5d20(r13)
    stb     r0, R13Off_m0x5d1b(r13)
    blr


.globl stop__Q27JAInter9StreamLibFv
stop__Q27JAInter9StreamLibFv: # 0x803094b0
    li      r0, 0x1
    stb     r0, R13Off_m0x5d3c(r13)
    stb     r0, R13Off_m0x5d3b(r13)
    blr


.globl setPauseFlag__Q27JAInter9StreamLibFUc
setPauseFlag__Q27JAInter9StreamLibFUc: # 0x803094c0
    lwz     r4, R13Off_m0x5d14(r13)
    clrlwi  r0, r3, 24
    or      r0, r4, r0
    stw     r0, R13Off_m0x5d14(r13)
    blr


.globl clearPauseFlag__Q27JAInter9StreamLibFUc
clearPauseFlag__Q27JAInter9StreamLibFUc: # 0x803094d4
    clrlwi  r0, r3, 24
    lwz     r3, R13Off_m0x5d14(r13)
    xori     r0, r0, 0xff
    and     r0, r3, r0
    stw     r0, R13Off_m0x5d14(r13)
    blr


.globl setPrepareFlag__Q27JAInter9StreamLibFUc
setPrepareFlag__Q27JAInter9StreamLibFUc: # 0x803094ec
    stb     r3, R13Off_m0x5d38(r13)
    blr


.globl setOutputMode__Q27JAInter9StreamLibFUl
setOutputMode__Q27JAInter9StreamLibFUl: # 0x803094f4
    stw     r3, R13Off_m0x74d8(r13)
    blr


.globl getPlayingFlag__Q27JAInter9StreamLibFv
getPlayingFlag__Q27JAInter9StreamLibFv: # 0x803094fc
    lbz     r3, R13Off_m0x5d39(r13)
    blr


.globl start__Q27JAInter9StreamLibFPcUlPv
start__Q27JAInter9StreamLibFPcUlPv: # 0x80309504
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    lwz     r0, R13Off_m0x5d00(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80309564
    lis     r3, Filename__Q27JAInter9StreamLib@ha
    addi    r3, r3, Filename__Q27JAInter9StreamLib@l
    addi    r4, r6, 0x0
    bl      strcpy
    lwz     r4, R13Off_m0x5d00(r13)
    lis     r3, callBack__Q27JAInter9StreamLibFPv@ha
    stw     r30, R13Off_m0x5cfc(r13)
    addi    r3, r3, callBack__Q27JAInter9StreamLibFPv@l
    addi    r0, r4, 0x1
    stw     r31, R13Off_m0x5cf8(r13)
    li      r4, 0x0
    stw     r0, R13Off_m0x5d00(r13)
    bl      registerSubframeCallback__Q28JASystem6KernelFPFPv_lPv
branch_0x80309564:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __start__Q27JAInter9StreamLibFv
__start__Q27JAInter9StreamLibFv: # 0x8030957c
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    lis     r5, finfo__Q27JAInter9StreamLib@ha
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, finfo__Q27JAInter9StreamLib@l
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    lbz     r0, R13Off_m0x5d3a(r13)
    lwz     r3, R13Off_m0x5cfc(r13)
    cmplwi  r0, 0x0
    stw     r4, R13Off_m0x5d00(r13)
    stw     r3, R13Off_m0x5d10(r13)
    beq-    branch_0x803095dc
    lwz     r3, R13Off_m0x5d58(r13)
    bl      forceStop__Q28JASystem11TDSPChannelFv
    addi    r3, r13, R13Off_m0x5d58
    lwz     r3, 0x4(r3)
    bl      forceStop__Q28JASystem11TDSPChannelFv
    lbz     r3, R13Off_m0x5d3a(r13)
    addi    r0, r3, 0x1
    stb     r0, R13Off_m0x5d3a(r13)
branch_0x803095dc:
    addi    r3, r31, 0x5c
    addi    r4, r31, 0x0
    bl      DVDOpen
    lwz     r0, R13Off_m0x5cf8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80309610
    lwz     r4, R13Off_m0x5d64(r13)
    addi    r3, r31, 0x0
    li      r5, 0x20
    li      r6, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    b       branch_0x80309798

branch_0x80309610:
    li      r0, 0x2
    mtctr   r0
    li      r3, 0x0
branch_0x8030961c:
    lwz     r0, R13Off_m0x5cf8(r13)
    addi    r9, r3, 0x1
    lwz     r10, R13Off_m0x5d64(r13)
    addi    r8, r3, 0x2
    lbzx    r0, r3, r0
    addi    r7, r3, 0x3
    stbx    r0, r10, r3
    addi    r6, r3, 0x4
    addi    r5, r3, 0x5
    lwz     r11, R13Off_m0x5cf8(r13)
    addi    r4, r3, 0x6
    lwz     r10, R13Off_m0x5d64(r13)
    addi    r0, r3, 0x7
    addi    r11, r11, 0x1
    lbzx    r11, r3, r11
    stbx    r11, r10, r9
    lwz     r10, R13Off_m0x5cf8(r13)
    lwz     r9, R13Off_m0x5d64(r13)
    addi    r10, r10, 0x2
    lbzx    r10, r3, r10
    stbx    r10, r9, r8
    lwz     r9, R13Off_m0x5cf8(r13)
    lwz     r8, R13Off_m0x5d64(r13)
    addi    r9, r9, 0x3
    lbzx    r9, r3, r9
    stbx    r9, r8, r7
    addi    r9, r3, 0x9
    lwz     r8, R13Off_m0x5cf8(r13)
    lwz     r7, R13Off_m0x5d64(r13)
    addi    r8, r8, 0x4
    lbzx    r8, r3, r8
    stbx    r8, r7, r6
    addi    r8, r3, 0xa
    lwz     r7, R13Off_m0x5cf8(r13)
    lwz     r6, R13Off_m0x5d64(r13)
    addi    r7, r7, 0x5
    lbzx    r7, r3, r7
    stbx    r7, r6, r5
    addi    r7, r3, 0xb
    lwz     r6, R13Off_m0x5cf8(r13)
    lwz     r5, R13Off_m0x5d64(r13)
    addi    r6, r6, 0x6
    lbzx    r6, r3, r6
    stbx    r6, r5, r4
    addi    r6, r3, 0xc
    lwz     r5, R13Off_m0x5cf8(r13)
    lwz     r4, R13Off_m0x5d64(r13)
    addi    r5, r5, 0x7
    lbzx    r5, r3, r5
    stbx    r5, r4, r0
    addi    r5, r3, 0xd
    addi    r3, r3, 0x8
    lwz     r0, R13Off_m0x5cf8(r13)
    addi    r4, r3, 0x6
    lwz     r10, R13Off_m0x5d64(r13)
    lbzx    r0, r3, r0
    stbx    r0, r10, r3
    addi    r0, r3, 0x7
    lwz     r11, R13Off_m0x5cf8(r13)
    lwz     r10, R13Off_m0x5d64(r13)
    addi    r11, r11, 0x1
    lbzx    r11, r3, r11
    stbx    r11, r10, r9
    lwz     r10, R13Off_m0x5cf8(r13)
    lwz     r9, R13Off_m0x5d64(r13)
    addi    r10, r10, 0x2
    lbzx    r10, r3, r10
    stbx    r10, r9, r8
    lwz     r9, R13Off_m0x5cf8(r13)
    lwz     r8, R13Off_m0x5d64(r13)
    addi    r9, r9, 0x3
    lbzx    r9, r3, r9
    stbx    r9, r8, r7
    lwz     r8, R13Off_m0x5cf8(r13)
    lwz     r7, R13Off_m0x5d64(r13)
    addi    r8, r8, 0x4
    lbzx    r8, r3, r8
    stbx    r8, r7, r6
    lwz     r7, R13Off_m0x5cf8(r13)
    lwz     r6, R13Off_m0x5d64(r13)
    addi    r7, r7, 0x5
    lbzx    r7, r3, r7
    stbx    r7, r6, r5
    lwz     r6, R13Off_m0x5cf8(r13)
    lwz     r5, R13Off_m0x5d64(r13)
    addi    r6, r6, 0x6
    lbzx    r6, r3, r6
    stbx    r6, r5, r4
    lwz     r5, R13Off_m0x5cf8(r13)
    lwz     r4, R13Off_m0x5d64(r13)
    addi    r5, r5, 0x7
    lbzx    r5, r3, r5
    addi    r3, r3, 0x8
    stbx    r5, r4, r0
    bdnz+      branch_0x8030961c
branch_0x80309798:
    li      r0, 0x20
    lwz     r4, R13Off_m0x5d64(r13)
    stw     r0, R13Off_m0x5d6c(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x3c(r31)
    stw     r0, 0x40(r31)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x44(r31)
    stw     r0, 0x48(r31)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x4c(r31)
    stw     r0, 0x50(r31)
    lwz     r3, 0x18(r4)
    lwz     r0, 0x1c(r4)
    stw     r3, 0x54(r31)
    stw     r0, 0x58(r31)
    lwz     r3, 0x3c(r31)
    lwz     r0, R13Off_m0x5d10(r13)
    stw     r3, R13Off_m0x5d70(r13)
    cmplwi  r0, 0x0
    lwz     r0, 0x40(r31)
    stw     r0, R13Off_m0x5d4c(r13)
    beq-    branch_0x80309808
    li      r0, 0x0
    stw     r0, 0x4c(r31)
branch_0x80309808:
    lwz     r0, R13Off_m0x74e0(r13)
    li      r30, 0x0
    lfs     f1, 0x574(r2)
    mulli   r0, r0, 0x1400
    lfs     f0, 0x578(r2)
    stb     r30, R13Off_m0x5d3c(r13)
    stb     r30, R13Off_m0x5d3b(r13)
    stb     r30, R13Off_m0x5d39(r13)
    stb     r30, R13Off_m0x5d38(r13)
    stfs    f1, -0x5d34(r13)
    stfs    f1, -0x5d30(r13)
    stfs    f0, -0x5d2c(r13)
    stw     r30, R13Off_m0x5d48(r13)
    stw     r30, R13Off_m0x5d40(r13)
    stw     r30, R13Off_m0x5d18(r13)
    stw     r30, R13Off_m0x5d44(r13)
    stw     r30, R13Off_m0x5d50(r13)
    stw     r30, R13Off_m0x5d0c(r13)
    stw     r0, R13Off_m0x74dc(r13)
    bl      pauseDvdT__Q28JASystem3DvdFv
    bl      LoadADPCM__Q27JAInter9StreamLibFv
    li      r28, 0x0
    addi    r31, r30, 0x0
branch_0x80309864:
    addi    r29, r13, R13Off_m0x5d58
    add     r29, r29, r31
    lwz     r3, 0x0(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x8030988c
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030988c
    mr      r4, r29
    bl      free__Q28JASystem11TDSPChannelFPQ28JASystem11TDSPChannelUl
branch_0x8030988c:
    addi    r28, r28, 0x1
    stw     r30, 0x0(r29)
    cmplwi  r28, 0x2
    addi    r31, r31, 0x4
    blt+    branch_0x80309864
    li      r0, 0x1
    stb     r0, R13Off_m0x5d37(r13)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl callBack__Q27JAInter9StreamLibFPv
callBack__Q27JAInter9StreamLibFPv: # 0x803098c8
    mflr    r0
    lis     r3, finfo__Q27JAInter9StreamLib@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stmw    r22, 0x78(sp)
    addi    r31, r3, finfo__Q27JAInter9StreamLib@l
    li      r29, 0x0
    lwz     r0, R13Off_m0x5d00(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80309910
    lwz     r0, R13Off_m0x5d04(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8030990c
    li      r3, 0x0
    b       branch_0x8030a180

branch_0x8030990c:
    bl      __start__Q27JAInter9StreamLibFv
branch_0x80309910:
    lwz     r0, R13Off_m0x5d00(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80309970
    lbz     r0, R13Off_m0x5d1c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80309938
    lfs     f0, -0x5d28(r13)
    li      r0, 0x0
    stb     r0, R13Off_m0x5d1c(r13)
    stfs    f0, -0x5d34(r13)
branch_0x80309938:
    lbz     r0, R13Off_m0x5d1a(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80309954
    lfs     f0, -0x5d24(r13)
    li      r0, 0x0
    stb     r0, R13Off_m0x5d1a(r13)
    stfs    f0, -0x5d30(r13)
branch_0x80309954:
    lbz     r0, R13Off_m0x5d1b(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80309970
    lfs     f0, -0x5d20(r13)
    li      r0, 0x0
    stb     r0, R13Off_m0x5d1b(r13)
    stfs    f0, -0x5d2c(r13)
branch_0x80309970:
    lwz     r0, R13Off_m0x5d58(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x803099cc
    li      r3, 0x0
    addi    r4, r13, R13Off_m0x5d58
    bl      alloc__Q28JASystem11TDSPChannelFUlUl
    addi    r24, r13, R13Off_m0x5d58
    stw     r3, R13Off_m0x5d58(r13)
    addi    r24, r24, 0x4
    addi    r4, r24, 0x0
    li      r3, 0x0
    bl      alloc__Q28JASystem11TDSPChannelFUlUl
    stw     r3, 0x0(r24)
    lwz     r3, R13Off_m0x5d58(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x803099cc
    lwz     r0, 0x0(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x803099cc
    li      r0, 0x7f
    stb     r0, 0x3(r3)
    lwz     r3, 0x0(r24)
    stb     r0, 0x3(r3)
branch_0x803099cc:
    lwz     r0, R13Off_m0x5d58(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x803099e8
    addi    r30, r13, R13Off_m0x5d58
    lwzu    r0, 0x4(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80309a20
branch_0x803099e8:
    lbz     r0, R13Off_m0x5cec(r13)
    extsb.  r0, r0
    bne-    branch_0x803099fc
    li      r0, 0x1
    stb     r0, R13Off_m0x5cec(r13)
branch_0x803099fc:
    li      r0, -0x1
    li      r3, 0x0
    stw     r0, R13Off_m0x5cf0(r13)
    li      r0, 0x2
    stb     r3, R13Off_m0x5d3a(r13)
    stb     r0, R13Off_m0x5d39(r13)
    bl      unpauseDvdT__Q28JASystem3DvdFv
    li      r3, -0x1
    b       branch_0x8030a180

branch_0x80309a20:
    lbz     r0, R13Off_m0x5cdc(r13)
    extsb.  r0, r0
    bne-    branch_0x80309a3c
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, R13Off_m0x5ce0(r13)
    stb     r0, R13Off_m0x5cdc(r13)
branch_0x80309a3c:
    bl      DVDGetDriveStatus
    cmpwi   r3, 0x5
    beq-    branch_0x80309a58
    bge-    branch_0x80309b0c
    cmpwi   r3, 0x0
    beq-    branch_0x80309aac
    b       branch_0x80309b0c

branch_0x80309a58:
    lwz     r3, R13Off_m0x5d58(r13)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    li      r4, 0x1
    bl      setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc
    lwz     r3, 0x0(r30)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    li      r4, 0x1
    bl      setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc
    li      r0, 0x1
    lwz     r3, R13Off_m0x5d58(r13)
    stw     r0, R13Off_m0x5d14(r13)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    lwz     r3, 0x0(r30)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    b       branch_0x80309b0c

branch_0x80309aac:
    bl      DVDGetDriveStatus
    lwz     r0, R13Off_m0x5ce0(r13)
    cmpw    r0, r3
    beq-    branch_0x80309b0c
    lwz     r3, R13Off_m0x5d58(r13)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    li      r4, 0x0
    bl      setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc
    lwz     r3, 0x0(r30)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    li      r4, 0x0
    bl      setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc
    lwz     r3, R13Off_m0x5d58(r13)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    lwz     r3, 0x0(r30)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    li      r0, 0x0
    stw     r0, R13Off_m0x5d14(r13)
branch_0x80309b0c:
    bl      DVDGetDriveStatus
    lwz     r0, R13Off_m0x5d14(r13)
    stw     r3, R13Off_m0x5ce0(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80309b28
    li      r3, 0x0
    b       branch_0x8030a180

branch_0x80309b28:
    lwz     r0, R13Off_m0x5d40(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80309c68
    lwz     r3, R13Off_m0x5d58(r13)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    lhz     r0, 0x2(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80309bb0
    lwz     r0, R13Off_m0x5d44(r13)
    cmplwi  r0, 0x2
    beq-    branch_0x80309ba8
    lwz     r3, R13Off_m0x5d58(r13)
    addi    r4, r13, R13Off_m0x5d58
    bl      free__Q28JASystem11TDSPChannelFPQ28JASystem11TDSPChannelUl
    lwz     r3, 0x0(r30)
    mr      r4, r30
    bl      free__Q28JASystem11TDSPChannelFPQ28JASystem11TDSPChannelUl
    lbz     r0, R13Off_m0x5cec(r13)
    extsb.  r0, r0
    bne-    branch_0x80309b84
    li      r0, 0x1
    stb     r0, R13Off_m0x5cec(r13)
branch_0x80309b84:
    li      r0, -0x1
    li      r3, 0x0
    stw     r0, R13Off_m0x5cf0(r13)
    li      r0, 0x2
    stb     r3, R13Off_m0x5d3a(r13)
    stb     r0, R13Off_m0x5d39(r13)
    bl      unpauseDvdT__Q28JASystem3DvdFv
    li      r3, -0x1
    b       branch_0x8030a180

branch_0x80309ba8:
    li      r3, 0x0
    b       branch_0x8030a180

branch_0x80309bb0:
    lwz     r5, 0x74(r3)
    lwz     r0, R13Off_m0x5d4c(r13)
    lhz     r4, 0x4a(r31)
    subf    r5, r5, r0
    lbz     r0, R13Off_m0x5cec(r13)
    mullw   r5, r5, r4
    lhz     r4, 0x44(r31)
    divwu   r6, r5, r4
    extsb.  r0, r0
    bne-    branch_0x80309be0
    li      r0, 0x1
    stb     r0, R13Off_m0x5cec(r13)
branch_0x80309be0:
    lwz     r5, R13Off_m0x5d40(r13)
    lis     r4, unk_cccccccd@ha
    lbz     r0, R13Off_m0x5cd4(r13)
    addi    r4, r4, unk_cccccccd@l
    addi    r5, r5, 0x1
    stw     r6, R13Off_m0x5cf0(r13)
    extsb.  r0, r0
    lwz     r0, R13Off_m0x74dc(r13)
    stw     r5, R13Off_m0x5d40(r13)
    lwz     r3, 0x6c(r3)
    srwi    r3, r3, 16
    subf    r0, r3, r0
    mulhwu  r0, r4, r0
    srwi    r5, r0, 12
    bne-    branch_0x80309c2c
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, R13Off_m0x5cd8(r13)
    stb     r0, R13Off_m0x5cd4(r13)
branch_0x80309c2c:
    lwz     r0, R13Off_m0x5cd8(r13)
    cmplw   r0, r5
    beq-    branch_0x80309c3c
    stw     r5, R13Off_m0x5cd8(r13)
branch_0x80309c3c:
    lwz     r4, R13Off_m0x5d50(r13)
    lwz     r3, R13Off_m0x74e0(r13)
    addi    r4, r4, 0x1
    divwu   r0, r4, r3
    mullw   r0, r0, r3
    subf    r0, r0, r4
    cmplw   r5, r0
    beq-    branch_0x80309c64
    li      r28, 0x1
    b       branch_0x80309c68

branch_0x80309c64:
    li      r28, 0x0
branch_0x80309c68:
    cmpwi   r28, 0x1
    beq-    branch_0x80309c7c
    lwz     r0, R13Off_m0x5d40(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80309e4c
branch_0x80309c7c:
    lwz     r0, R13Off_m0x5d44(r13)
    cmplwi  r0, 0x2
    beq-    branch_0x80309c90
    cmplwi  r0, 0x4
    bne-    branch_0x80309e4c
branch_0x80309c90:
    cmplwi  r0, 0x2
    bne-    branch_0x80309cd4
    lhz     r0, 0x46(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x80309ccc
    bge-    branch_0x80309cb4
    cmpwi   r0, 0x2
    bge-    branch_0x80309cc0
    b       branch_0x80309ccc

branch_0x80309cb4:
    cmpwi   r0, 0x5
    bge-    branch_0x80309ccc
    b       branch_0x80309cc8

branch_0x80309cc0:
    bl      __DecodePCM__Q27JAInter9StreamLibFv
    b       branch_0x80309ccc

branch_0x80309cc8:
    bl      __DecodeADPCM__Q27JAInter9StreamLibFv
branch_0x80309ccc:
    li      r0, 0x0
    stw     r0, R13Off_m0x5d44(r13)
branch_0x80309cd4:
    lwz     r5, R13Off_m0x5d40(r13)
    cmplwi  r5, 0x0
    bne-    branch_0x80309e4c
    lwz     r3, R13Off_m0x74e0(r13)
    lwz     r4, R13Off_m0x5d50(r13)
    addi    r0, r3, -0x2
    cmplw   r4, r0
    bne-    branch_0x80309e4c
    lbz     r0, R13Off_m0x5d38(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80309d18
    li      r3, 0x2
    li      r0, 0x4
    stb     r3, R13Off_m0x5d38(r13)
    li      r3, 0x0
    stw     r0, R13Off_m0x5d44(r13)
    b       branch_0x8030a180

branch_0x80309d18:
    addi    r0, r5, 0x1
    li      r4, 0x2
    stw     r0, R13Off_m0x5d40(r13)
    li      r0, 0x1
    lis     r3, unk_10624dd3@h
    stb     r4, R13Off_m0x5d38(r13)
    addi    r28, r3, unk_10624dd3@l
    stb     r0, R13Off_m0x5d39(r13)
    li      r25, 0x0
    li      r24, 0x0
branch_0x80309d40:
    addi    r26, r13, R13Off_m0x5d58
    add     r26, r26, r24
    lwz     r3, 0x0(r26)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    lhz     r0, 0x44(r31)
    mr      r27, r3
    lwz     r3, R13Off_m0x5d60(r13)
    slwi    r4, r0, 12
    lwz     r0, R13Off_m0x74dc(r13)
    mulhw   r5, r28, r4
    lwzx    r4, r3, r24
    lwz     r3, 0x0(r26)
    lwz     r4, 0x0(r4)
    lwz     r6, R13Off_m0x5d4c(r13)
    srawi   r5, r5, 11
    srwi    r7, r5, 31
    add     r5, r5, r7
    clrlwi  r29, r5, 16
    clrlwi  r5, r0, 16
    bl      Play_DirectPCM__Q27JAInter9StreamLibFPQ28JASystem11TDSPChannelPsUsUl
    lwz     r0, R13Off_m0x74d8(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x80309dac
    li      r23, 0x7fff
    li      r22, 0x0
    b       branch_0x80309db4

branch_0x80309dac:
    li      r23, 0x5a7e
    li      r22, 0x5a7e
branch_0x80309db4:
    lwz     r3, 0x0(r26)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    addi    r5, r23, 0x0
    clrlwi  r4, r25, 24
    li      r6, 0x0
    bl      setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
    lwz     r3, 0x0(r26)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    addi    r5, r22, 0x0
    subfic  r4, r25, 0x1
    li      r6, 0x0
    bl      setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
    lwz     r3, 0x0(r26)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    mr      r4, r29
    bl      setPitch__Q38JASystem12DSPInterface9DSPBufferFUs
    lwz     r0, 0x4c(r31)
    li      r29, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x80309e18
    li      r0, -0x1
    stw     r0, 0x74(r27)
branch_0x80309e18:
    lwz     r3, 0x0(r26)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    addi    r25, r25, 0x1
    cmplwi  r25, 0x2
    addi    r24, r24, 0x4
    blt+    branch_0x80309d40
    lwz     r0, R13Off_m0x5d44(r13)
    cmplwi  r0, 0x3
    beq-    branch_0x80309e4c
    li      r0, 0x0
    stw     r0, R13Off_m0x5d44(r13)
branch_0x80309e4c:
    lbz     r0, R13Off_m0x5d3c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80309e84
    lbz     r0, R13Off_m0x5d3b(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80309e84
    li      r0, 0x0
    lwz     r3, R13Off_m0x5d58(r13)
    stb     r0, R13Off_m0x5d3b(r13)
    bl      forceStop__Q28JASystem11TDSPChannelFv
    lwz     r3, 0x0(r30)
    bl      forceStop__Q28JASystem11TDSPChannelFv
    li      r0, 0x3
    stw     r0, R13Off_m0x5d44(r13)
branch_0x80309e84:
    clrlwi. r0, r29, 24
    bne-    branch_0x8030a0f4
    lfs     f30, 0x574(r2)
    lwz     r0, R13Off_m0x74d8(r13)
    fmr     f31, f30
    cmplwi  r0, 0x1
    bne-    branch_0x80309f14
    lfs     f1, -0x5d2c(r13)
    lfs     f0, 0x578(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80309ec0
    bl      sinfT__Q28JASystem4CalcFf
    lfs     f0, 0x57c(r2)
    fmuls   f31, f0, f1
    b       branch_0x80309ed4

branch_0x80309ec0:
    fsubs   f1, f30, f1
    bl      sinfT__Q28JASystem4CalcFf
    lfs     f0, 0x57c(r2)
    lfs     f31, 0x574(r2)
    fmuls   f30, f0, f1
branch_0x80309ed4:
    lwz     r3, R13Off_m0x5d58(r13)
    li      r22, 0x7fff
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    bl      setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
    lwz     r3, 0x0(r30)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
    b       branch_0x80309f80

branch_0x80309f14:
    lfs     f1, 0x580(r2)
    li      r22, 0x5a7e
    lfs     f0, -0x5d34(r13)
    lwz     r3, R13Off_m0x5d58(r13)
    fmuls   f0, f1, f0
    lbz     r3, 0x0(r3)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r24, 0x74(sp)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    addi    r5, r24, 0x0
    li      r4, 0x1
    li      r6, 0x0
    bl      setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
    lfs     f1, 0x580(r2)
    lfs     f0, -0x5d34(r13)
    lwz     r3, 0x0(r30)
    fmuls   f0, f1, f0
    lbz     r3, 0x0(r3)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r24, 0x6c(sp)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    addi    r5, r24, 0x0
    li      r4, 0x0
    li      r6, 0x0
    bl      setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
branch_0x80309f80:
    clrlwi  r24, r22, 16
    lwz     r3, R13Off_m0x5d58(r13)
    stw     r24, 0x6c(sp)
    lis     r28, 0x4330
    lfd     f1, 0x588(r2)
    stw     r28, 0x68(sp)
    lfs     f2, -0x5d34(r13)
    lfd     f0, 0x68(sp)
    lbz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f0, f30
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r25, 0x74(sp)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    addi    r5, r25, 0x0
    li      r4, 0x0
    li      r6, 0x0
    bl      setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
    stw     r24, 0x64(sp)
    lwz     r3, 0x0(r30)
    stw     r28, 0x60(sp)
    lfd     f1, 0x588(r2)
    lfd     f0, 0x60(sp)
    lfs     f2, -0x5d34(r13)
    fsubs   f0, f0, f1
    lbz     r3, 0x0(r3)
    fmuls   f0, f0, f31
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r24, 0x5c(sp)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    addi    r5, r24, 0x0
    li      r4, 0x1
    li      r6, 0x0
    bl      setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
    lhz     r0, 0x44(r31)
    lis     r4, unk_10624dd3@h
    lwz     r3, R13Off_m0x5d58(r13)
    addi    r24, r4, unk_10624dd3@l
    slwi    r0, r0, 12
    mulhw   r0, r24, r0
    lfd     f1, 0x590(r2)
    lfs     f2, -0x5d30(r13)
    lbz     r3, 0x0(r3)
    srawi   r0, r0, 11
    srwi    r4, r0, 31
    add     r0, r0, r4
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    addi    r26, r31, 0x44
    stw     r28, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r25, 0x4c(sp)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    mr      r4, r25
    bl      setPitch__Q38JASystem12DSPInterface9DSPBufferFUs
    lhz     r0, 0x0(r26)
    lwz     r3, 0x0(r30)
    slwi    r0, r0, 12
    lfd     f1, 0x590(r2)
    mulhw   r0, r24, r0
    lfs     f2, -0x5d30(r13)
    lbz     r3, 0x0(r3)
    srawi   r0, r0, 11
    srwi    r4, r0, 31
    add     r0, r0, r4
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r28, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r24, 0x3c(sp)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    mr      r4, r24
    bl      setPitch__Q38JASystem12DSPInterface9DSPBufferFUs
    lwz     r3, R13Off_m0x5d58(r13)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    lwz     r3, 0x0(r30)
    lbz     r3, 0x0(r3)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
branch_0x8030a0f4:
    lwz     r0, R13Off_m0x5d44(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8030a17c
    lwz     r0, R13Off_m0x5d70(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8030a160
    lwz     r0, 0x4c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8030a154
    li      r0, 0x1
    stw     r0, R13Off_m0x5d18(r13)
    lwz     r3, 0x50(r31)
    clrlwi  r0, r3, 25
    subf    r0, r0, r3
    srwi    r0, r0, 4
    mulli   r3, r0, 0x12
    addi    r0, r3, 0x20
    stw     r0, R13Off_m0x5d6c(r13)
    lwz     r3, R13Off_m0x5d6c(r13)
    lwz     r0, 0x3c(r31)
    addi    r3, r3, -0x20
    subf    r0, r3, r0
    stw     r0, R13Off_m0x5d70(r13)
    b       branch_0x8030a17c

branch_0x8030a154:
    li      r0, 0x3
    stw     r0, R13Off_m0x5d44(r13)
    b       branch_0x8030a17c

branch_0x8030a160:
    lbz     r0, R13Off_m0x5d3c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8030a178
    li      r0, 0x3
    stw     r0, R13Off_m0x5d44(r13)
    b       branch_0x8030a17c

branch_0x8030a178:
    bl      LoadADPCM__Q27JAInter9StreamLibFv
branch_0x8030a17c:
    li      r3, 0x0
branch_0x8030a180:
    lmw     r22, 0x78(sp)
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    addi    sp, sp, 0xb0
    blr


.globl __sinit_JAIGFrameStream_cpp
__sinit_JAIGFrameStream_cpp: # 0x8030a19c
    mflr    r0
    lis     r3, streamHeap__Q27JAInter9StreamLib@h
    stw     r0, 0x4(sp)
    addi    r3, r3, streamHeap__Q27JAInter9StreamLib@l
    stwu    sp, -0x8(sp)
    bl      __ct__Q38JASystem6Kernel10TSolidHeapFv
    lis     r4, __dt__Q38JASystem6Kernel10TSolidHeapFv@ha
    lis     r5, unk_803fd7e8@ha
    addi    r4, r4, __dt__Q38JASystem6Kernel10TSolidHeapFv@l
    addi    r5, r5, unk_803fd7e8@l
    bl      __register_global_object
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__Q38JASystem6Kernel10TSolidHeapFv
__dt__Q38JASystem6Kernel10TSolidHeapFv: # 0x8030a1d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8030a200
    extsh.  r0, r4
    ble-    branch_0x8030a200
    mr      r3, r31
    bl      __dl__FPv
branch_0x8030a200:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

