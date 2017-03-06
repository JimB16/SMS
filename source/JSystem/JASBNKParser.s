
.globl createBasicBank__Q28JASystem9BNKParserFPv
createBasicBank__Q28JASystem9BNKParserFPv: # 0x8030f26c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stfd    f30, 0xf8(sp)
    stfd    f29, 0xf0(sp)
    stfd    f28, 0xe8(sp)
    stmw    r14, 0xa0(sp)
    mr      r14, r3
    bl      getCurrentHeap__Q28JASystem5TBankFv
    mr      r23, r3
    lwz     r12, 0x0(r23)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x8c(sp)
    addi    r29, r14, 0x0
    addi    r4, r23, 0x0
    li      r3, 0x10
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    mr.     r14, r3
    beq-    branch_0x8030f2d4
    mr      r3, r14
    bl      __ct__Q28JASystem10TBasicBankFv
    mr      r14, r3
branch_0x8030f2d4:
    cmplwi  r14, 0x0
    bne-    branch_0x8030f2e4
    li      r3, 0x0
    b       branch_0x8030f978

branch_0x8030f2e4:
    addi    r3, r14, 0x0
    li      r4, 0x100
    bl      setInstCount__Q28JASystem10TBasicBankFUl
    li      r0, 0x0
    lfs     f28, 0x630(rtoc)
    lis     r4, 0x803e
    lfs     f29, 0x634(rtoc)
    lis     r3, 0x803e
    stw     r0, 0x94(sp)
    lis     r5, 0x803e
    addi    r17, r4, 0x2700
    addi    r16, r3, 0x2738
    addi    r15, r5, 0x2728
    li      r18, 0x0
branch_0x8030f31c:
    lwz     r3, 0x94(sp)
    addi    r0, r3, 0x24
    lwzx    r4, r29, r0
    mr      r3, r29
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TInst___FPCvUl
    mr.     r26, r3
    beq-    branch_0x8030f6dc
    addi    r4, r23, 0x0
    li      r3, 0x24
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    mr.     r5, r3
    beq-    branch_0x8030f35c
    mr      r3, r5
    bl      __ct__Q28JASystem10TBasicInstFv
    mr      r5, r3
branch_0x8030f35c:
    lfs     f0, 0x8(r26)
    addi    r19, r5, 0x0
    addi    r3, r19, 0x0
    stfs    f0, 0x4(r5)
    li      r4, 0x2
    lfs     f0, 0xc(r26)
    stfs    f0, 0x8(r5)
    bl      setOscCount__Q28JASystem10TBasicInstFUl
    li      r28, 0x0
    li      r27, 0x0
    li      r30, 0x0
branch_0x8030f388:
    addi    r0, r30, 0x10
    lwzx    r4, r26, r0
    mr      r3, r29
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser4TOsc___FPCvUl
    mr.     r24, r3
    addi    r21, r24, 0x0
    beq-    branch_0x8030f4bc
    addi    r3, r14, 0x0
    addi    r4, r29, 0x0
    addi    r5, r21, 0x0
    bl      findOscPtr__Q28JASystem9BNKParserFPQ28JASystem10TBasicBankPQ38JASystem9BNKParser7THeaderPQ38JASystem9BNKParser4TOsc
    mr.     r25, r3
    bne-    branch_0x8030f4a8
    addi    r4, r23, 0x0
    li      r3, 0x18
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    lbz     r0, 0x0(r24)
    mr      r25, r3
    stb     r0, 0x0(r3)
    mr      r3, r29
    lfs     f0, 0x4(r24)
    stfs    f0, 0x4(r25)
    lwz     r4, 0x8(r21)
    bl      JSUConvertOffsetToPtr_s___FPCvUl
    mr.     r22, r3
    beq-    branch_0x8030f434
    mr      r3, r22
    bl      getOscTableEndPtr__Q28JASystem9BNKParserFPs
    subf    r0, r22, r3
    srawi   r0, r0, 1
    addze   r0, r0
    slwi    r20, r0, 1
    addi    r3, r20, 0x0
    addi    r4, r23, 0x0
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x8(r25)
    addi    r3, r22, 0x0
    addi    r5, r20, 0x0
    lwz     r4, 0x8(r25)
    bl      bcopy__Q28JASystem4CalcFPCvPvUl
    b       branch_0x8030f43c

branch_0x8030f434:
    li      r0, 0x0
    stw     r0, 0x8(r25)
branch_0x8030f43c:
    mr      r3, r29
    lwz     r4, 0xc(r21)
    bl      JSUConvertOffsetToPtr_s___FPCvUl
    mr.     r22, r3
    beq-    branch_0x8030f490
    mr      r3, r22
    bl      getOscTableEndPtr__Q28JASystem9BNKParserFPs
    subf    r0, r22, r3
    srawi   r0, r0, 1
    addze   r0, r0
    slwi    r21, r0, 1
    addi    r3, r21, 0x0
    addi    r4, r23, 0x0
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0xc(r25)
    addi    r3, r22, 0x0
    addi    r5, r21, 0x0
    lwz     r4, 0xc(r25)
    bl      bcopy__Q28JASystem4CalcFPCvPvUl
    b       branch_0x8030f498

branch_0x8030f490:
    li      r0, 0x0
    stw     r0, 0xc(r25)
branch_0x8030f498:
    lfs     f0, 0x10(r24)
    stfs    f0, 0x10(r25)
    lfs     f0, 0x14(r24)
    stfs    f0, 0x14(r25)
branch_0x8030f4a8:
    addi    r3, r19, 0x0
    addi    r4, r28, 0x0
    addi    r5, r25, 0x0
    bl      setOsc__Q28JASystem10TBasicInstFiPQ38JASystem11TOscillator4Osc_
    addi    r28, r28, 0x1
branch_0x8030f4bc:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x8030f388
    addi    r3, r19, 0x0
    li      r4, 0x4
    bl      setEffectCount__Q28JASystem10TBasicInstFUl
    li      r21, 0x0
    li      r20, 0x0
branch_0x8030f4e0:
    addi    r0, r20, 0x18
    lwzx    r4, r26, r0
    mr      r3, r29
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TRand___FPCvUl
    mr.     r22, r3
    beq-    branch_0x8030f554
    addi    r4, r23, 0x0
    li      r3, 0x10
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    mr.     r24, r3
    beq-    branch_0x8030f528
    stw     r17, 0x0(r24)
    li      r0, 0x0
    stb     r0, 0x4(r24)
    stw     r15, 0x0(r24)
    stfs    f28, 0x8(r24)
    stfs    f29, 0xc(r24)
branch_0x8030f528:
    lbz     r4, 0x0(r22)
    mr      r3, r24
    bl      setTarget__Q28JASystem11TInstEffectFi
    lfs     f0, 0x4(r22)
    addi    r3, r19, 0x0
    addi    r4, r21, 0x0
    stfs    f0, 0x8(r24)
    mr      r5, r24
    lfs     f0, 0x8(r22)
    stfs    f0, 0xc(r24)
    bl      setEffect__Q28JASystem10TBasicInstFiPQ28JASystem11TInstEffect
branch_0x8030f554:
    addi    r21, r21, 0x1
    cmpwi   r21, 0x2
    addi    r20, r20, 0x4
    blt+    branch_0x8030f4e0
    li      r21, 0x0
    li      r25, 0x0
branch_0x8030f56c:
    addi    r0, r25, 0x20
    lwzx    r4, r26, r0
    mr      r3, r29
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser6TSense___FPCvUl
    mr.     r24, r3
    beq-    branch_0x8030f5f4
    addi    r4, r23, 0x0
    li      r3, 0x14
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x8030f5c0
    stw     r17, 0x0(r3)
    li      r4, 0x0
    li      r0, 0x3c
    stb     r4, 0x4(r3)
    stw     r16, 0x0(r3)
    stb     r4, 0x8(r3)
    stb     r0, 0x9(r3)
    stfs    f28, 0xc(r3)
    stfs    f28, 0x10(r3)
branch_0x8030f5c0:
    mr      r22, r3
    lbz     r4, 0x0(r24)
    bl      setTarget__Q28JASystem11TInstEffectFi
    lbz     r4, 0x1(r24)
    mr      r3, r22
    lbz     r5, 0x2(r24)
    lfs     f1, 0x4(r24)
    lfs     f2, 0x8(r24)
    bl      setParams__Q28JASystem10TInstSenseFiiff
    addi    r3, r19, 0x0
    addi    r5, r22, 0x0
    addi    r4, r21, 0x2
    bl      setEffect__Q28JASystem10TBasicInstFiPQ28JASystem11TInstEffect
branch_0x8030f5f4:
    addi    r21, r21, 0x1
    cmpwi   r21, 0x2
    addi    r25, r25, 0x4
    blt+    branch_0x8030f56c
    mr      r3, r19
    lwz     r4, 0x28(r26)
    bl      setKeyRegionCount__Q28JASystem10TBasicInstFUl
    li      r21, 0x0
    li      r20, 0x0
    b       branch_0x8030f6c0

branch_0x8030f61c:
    addi    r3, r19, 0x0
    addi    r4, r21, 0x0
    bl      getKeyRegion__Q28JASystem10TBasicInstFi
    addi    r0, r20, 0x2c
    lwzx    r4, r26, r0
    addi    r24, r3, 0x0
    addi    r3, r29, 0x0
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser7TKeymap___FPCvUl
    mr      r27, r3
    lbz     r0, 0x0(r3)
    mr      r3, r24
    stw     r0, 0x0(r24)
    lwz     r4, 0x4(r27)
    bl      setVeloRegionCount__Q38JASystem10TBasicInst7TKeymapFUl
    li      r30, 0x0
    li      r28, 0x0
    b       branch_0x8030f6ac

branch_0x8030f660:
    addi    r3, r24, 0x0
    addi    r4, r30, 0x0
    bl      getVeloRegion__Q38JASystem10TBasicInst7TKeymapFi
    addi    r0, r28, 0x8
    lwzx    r4, r27, r0
    addi    r31, r3, 0x0
    addi    r3, r29, 0x0
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TVmap___FPCvUl
    lbz     r0, 0x0(r3)
    addi    r30, r30, 0x1
    addi    r28, r28, 0x4
    stw     r0, 0x0(r31)
    lwz     r0, 0x4(r3)
    clrlwi  r0, r0, 16
    stw     r0, 0x4(r31)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x8(r31)
    lfs     f0, 0xc(r3)
    stfs    f0, 0xc(r31)
branch_0x8030f6ac:
    lwz     r0, 0x4(r27)
    cmplw   r30, r0
    blt+    branch_0x8030f660
    addi    r21, r21, 0x1
    addi    r20, r20, 0x4
branch_0x8030f6c0:
    lwz     r0, 0x28(r26)
    cmplw   r21, r0
    blt+    branch_0x8030f61c
    addi    r3, r14, 0x0
    addi    r4, r18, 0x0
    addi    r5, r19, 0x0
    bl      setInst__Q28JASystem10TBasicBankFiPQ28JASystem5TInst
branch_0x8030f6dc:
    lwz     r3, 0x94(sp)
    addi    r18, r18, 0x1
    cmpwi   r18, 0x80
    addi    r3, r3, 0x4
    stw     r3, 0x94(sp)
    blt+    branch_0x8030f31c
    li      r0, 0x0
    lfs     f30, 0x630(rtoc)
    stw     r0, 0x88(sp)
    li      r0, 0x0
    lis     r4, 0x803e
    lfs     f31, 0x634(rtoc)
    lis     r3, 0x803e
    lfd     f28, 0x640(rtoc)
    addi    r22, r4, 0x2700
    lfs     f29, 0x638(rtoc)
    addi    r21, r3, 0x2728
    stw     r0, 0x90(sp)
    lis     r15, 0x4330
branch_0x8030f728:
    lwz     r3, 0x90(sp)
    addi    r0, r3, 0x3b4
    lwzx    r4, r29, r0
    mr      r3, r29
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TPerc___FPCvUl
    mr.     r19, r3
    beq-    branch_0x8030f928
    addi    r4, r23, 0x0
    li      r3, 0x1004
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x8030f760
    bl      __ct__Q28JASystem8TDrumSetFv
branch_0x8030f760:
    addi    r16, r3, 0x0
    li      r20, 0x0
    li      r17, 0x0
    li      r18, 0x0
branch_0x8030f770:
    addi    r0, r18, 0x88
    lwzx    r4, r19, r0
    mr      r3, r29
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TPmap___FPCvUl
    mr.     r28, r3
    beq-    branch_0x8030f900
    addi    r3, r16, 0x0
    addi    r4, r20, 0x0
    bl      getPerc__Q28JASystem8TDrumSetFi
    lfs     f0, 0x0(r28)
    mr      r24, r3
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x4(r3)
    lwz     r3, 0x0(r19)
    addis   r0, r3, 0xafbb
    cmplwi  r0, 0x5232
    bne-    branch_0x8030f7f0
    addi    r0, r20, 0x288
    lbzx    r4, r19, r0
    addi    r0, r17, 0x308
    addi    r3, r24, 0x0
    extsb   r4, r4
    xoris   r4, r4, 0x8000
    stw     r4, 0x9c(sp)
    stw     r15, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f28
    fdivs   f0, f0, f29
    stfs    f0, 0x8(r24)
    lhzx    r4, r19, r0
    bl      setRelease__Q38JASystem8TDrumSet5TPercFUl
branch_0x8030f7f0:
    addi    r3, r24, 0x0
    li      r4, 0x2
    bl      setEffectCount__Q38JASystem8TDrumSet5TPercFUl
    li      r26, 0x0
    li      r27, 0x0
    li      r25, 0x0
branch_0x8030f808:
    addi    r0, r25, 0x8
    lwzx    r4, r28, r0
    mr      r3, r29
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TRand___FPCvUl
    mr.     r30, r3
    beq-    branch_0x8030f880
    addi    r4, r23, 0x0
    li      r3, 0x10
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    mr.     r31, r3
    beq-    branch_0x8030f850
    stw     r22, 0x0(r31)
    li      r0, 0x0
    stb     r0, 0x4(r31)
    stw     r21, 0x0(r31)
    stfs    f30, 0x8(r31)
    stfs    f31, 0xc(r31)
branch_0x8030f850:
    lbz     r4, 0x0(r30)
    mr      r3, r31
    bl      setTarget__Q28JASystem11TInstEffectFi
    lfs     f0, 0x4(r30)
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    stfs    f0, 0x8(r31)
    mr      r5, r31
    lfs     f0, 0x8(r30)
    stfs    f0, 0xc(r31)
    bl      setEffect__Q38JASystem8TDrumSet5TPercFiPQ28JASystem11TInstEffect
    addi    r26, r26, 0x1
branch_0x8030f880:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    addi    r25, r25, 0x4
    blt+    branch_0x8030f808
    mr      r3, r24
    lwz     r4, 0x10(r28)
    bl      setVeloRegionCount__Q38JASystem8TDrumSet5TPercFUl
    li      r30, 0x0
    li      r27, 0x0
    b       branch_0x8030f8f4

branch_0x8030f8a8:
    addi    r3, r24, 0x0
    addi    r4, r30, 0x0
    bl      getVeloRegion__Q38JASystem8TDrumSet5TPercFi
    addi    r0, r27, 0x14
    lwzx    r4, r28, r0
    addi    r31, r3, 0x0
    addi    r3, r29, 0x0
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TVmap___FPCvUl
    lbz     r0, 0x0(r3)
    addi    r30, r30, 0x1
    addi    r27, r27, 0x4
    stw     r0, 0x0(r31)
    lwz     r0, 0x4(r3)
    clrlwi  r0, r0, 16
    stw     r0, 0x4(r31)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x8(r31)
    lfs     f0, 0xc(r3)
    stfs    f0, 0xc(r31)
branch_0x8030f8f4:
    lwz     r0, 0x10(r28)
    cmplw   r30, r0
    blt+    branch_0x8030f8a8
branch_0x8030f900:
    addi    r20, r20, 0x1
    cmpwi   r20, 0x80
    addi    r17, r17, 0x2
    addi    r18, r18, 0x4
    blt+    branch_0x8030f770
    lwz     r4, 0x88(sp)
    addi    r3, r14, 0x0
    addi    r5, r16, 0x0
    addi    r4, r4, 0xe4
    bl      setInst__Q28JASystem10TBasicBankFiPQ28JASystem5TInst
branch_0x8030f928:
    lwz     r3, 0x88(sp)
    addi    r3, r3, 0x1
    stw     r3, 0x88(sp)
    lwz     r3, 0x90(sp)
    lwz     r0, 0x88(sp)
    addi    r3, r3, 0x4
    cmpwi   r0, 0xc
    stw     r3, 0x90(sp)
    blt+    branch_0x8030f728
    mr      r3, r23
    lwz     r12, 0x0(r23)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x8c(sp)
    lwz     r4, -0x5ca0(r13)
    subf    r0, r3, r0
    add     r0, r4, r0
    stw     r0, -0x5ca0(r13)
    addi    r3, r14, 0x0
branch_0x8030f978:
    lmw     r14, 0xa0(sp)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lfd     f30, 0xf8(sp)
    mtlr    r0
    lfd     f29, 0xf0(sp)
    lfd     f28, 0xe8(sp)
    addi    sp, sp, 0x108
    blr


.globl __ct__Q28JASystem8TDrumSetFv
__ct__Q28JASystem8TDrumSetFv: # 0x8030f99c
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x2670
    lis     r4, 0x8031
    stwu    sp, -0x18(sp)
    subi    r4, r4, 0x1b0
    li      r6, 0x20
    stw     r31, 0x14(sp)
    li      r7, 0x80
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    lwz     r31, 0x8(sp)
    stw     r0, 0x0(r31)
    addi    r0, r3, 0x2710
    lis     r3, 0x8031
    stw     r0, 0x0(r31)
    subi    r5, r3, 0x17c
    addi    r3, r31, 0x4
    bl      __construct_array
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl findOscPtr__Q28JASystem9BNKParserFPQ28JASystem10TBasicBankPQ38JASystem9BNKParser7THeaderPQ38JASystem9BNKParser4TOsc
findOscPtr__Q28JASystem9BNKParserFPQ28JASystem10TBasicBankPQ38JASystem9BNKParser7THeaderPQ38JASystem9BNKParser4TOsc: # 0x8030fa04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stmw    r23, 0x5c(sp)
    mr      r24, r4
    mr      r23, r3
    addi    r25, r5, 0x0
    addi    r28, r24, 0x20
    li      r27, 0x0
    li      r31, 0x0
    lfs     f29, 0x630(rtoc)
    lfs     f30, 0x648(rtoc)
    lfs     f31, 0x634(rtoc)
branch_0x8030fa44:
    addi    r0, r31, 0x4
    lwzx    r4, r28, r0
    mr      r3, r24
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TInst___FPCvUl
    mr.     r29, r3
    beq-    branch_0x8030fb2c
    li      r26, 0x0
    li      r30, 0x0
branch_0x8030fa64:
    addi    r0, r30, 0x10
    lwzx    r4, r29, r0
    mr      r3, r24
    bl      JSUConvertOffsetToPtr_Q38JASystem9BNKParser4TOsc___FPCvUl
    cmplw   r3, r25
    bne-    branch_0x8030fb1c
    mr      r3, r23
    lwz     r12, 0x0(r23)
    mr      r4, r27
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8030fb1c
    li      r0, 0x0
    stb     r0, 0x14(sp)
    addi    r6, sp, 0x14
    li      r4, 0x3c
    stw     r0, 0x18(sp)
    li      r5, 0x7f
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    stfs    f29, 0x24(sp)
    stfs    f29, 0x28(sp)
    stfs    f29, 0x2c(sp)
    stfs    f29, 0x30(sp)
    stfs    f30, 0x34(sp)
    stfs    f31, 0x38(sp)
    stfs    f31, 0x3c(sp)
    stfs    f30, 0x40(sp)
    stfs    f31, 0x44(sp)
    stfs    f31, 0x48(sp)
    stb     r0, 0x4c(sp)
    sth     r0, 0x4e(sp)
    stw     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x20(sp)
    cmplw   r26, r0
    bge-    branch_0x8030fb1c
    lwz     r3, 0x1c(sp)
    lwzx    r3, r3, r30
    b       branch_0x8030fb40

branch_0x8030fb1c:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x8030fa64
branch_0x8030fb2c:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x80
    addi    r31, r31, 0x4
    blt+    branch_0x8030fa44
    li      r3, 0x0
branch_0x8030fb40:
    lmw     r23, 0x5c(sp)
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    addi    sp, sp, 0x98
    blr


.globl getOscTableEndPtr__Q28JASystem9BNKParserFPs
getOscTableEndPtr__Q28JASystem9BNKParserFPs: # 0x8030fb60
    lha     r0, 0x0(r3)
    addi    r3, r3, 0x6
    cmpwi   r0, 0xa
    ble+    getOscTableEndPtr__Q28JASystem9BNKParserFPs
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TPmap___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TPmap___FPCvUl: # 0x8030fb74
    cmplwi  r4, 0x0
    bne-    branch_0x8030fb84
    li      r3, 0x0
    blr

branch_0x8030fb84:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TPerc___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TPerc___FPCvUl: # 0x8030fb8c
    cmplwi  r4, 0x0
    bne-    branch_0x8030fb9c
    li      r3, 0x0
    blr

branch_0x8030fb9c:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TVmap___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TVmap___FPCvUl: # 0x8030fba4
    cmplwi  r4, 0x0
    bne-    branch_0x8030fbb4
    li      r3, 0x0
    blr

branch_0x8030fbb4:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem9BNKParser7TKeymap___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem9BNKParser7TKeymap___FPCvUl: # 0x8030fbbc
    cmplwi  r4, 0x0
    bne-    branch_0x8030fbcc
    li      r3, 0x0
    blr

branch_0x8030fbcc:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem9BNKParser6TSense___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem9BNKParser6TSense___FPCvUl: # 0x8030fbd4
    cmplwi  r4, 0x0
    bne-    branch_0x8030fbe4
    li      r3, 0x0
    blr

branch_0x8030fbe4:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TRand___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TRand___FPCvUl: # 0x8030fbec
    cmplwi  r4, 0x0
    bne-    branch_0x8030fbfc
    li      r3, 0x0
    blr

branch_0x8030fbfc:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_s___FPCvUl
JSUConvertOffsetToPtr_s___FPCvUl: # 0x8030fc04
    cmplwi  r4, 0x0
    bne-    branch_0x8030fc14
    li      r3, 0x0
    blr

branch_0x8030fc14:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem9BNKParser4TOsc___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem9BNKParser4TOsc___FPCvUl: # 0x8030fc1c
    cmplwi  r4, 0x0
    bne-    branch_0x8030fc2c
    li      r3, 0x0
    blr

branch_0x8030fc2c:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TInst___FPCvUl
JSUConvertOffsetToPtr_Q38JASystem9BNKParser5TInst___FPCvUl: # 0x8030fc34
    cmplwi  r4, 0x0
    bne-    branch_0x8030fc44
    li      r3, 0x0
    blr

branch_0x8030fc44:
    add     r3, r3, r4
    blr

