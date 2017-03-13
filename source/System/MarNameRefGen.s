
.globl getNameRef__14TMarNameRefGenCFPCc
getNameRef__14TMarNameRefGenCFPCc: # 0x8029d0dc
    mflr    r0
    lis     r5, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stw     r31, 0x174(sp)
    addi    r31, r5, 0x3168
    stw     r30, 0x170(sp)
    addi    r30, r4, 0x0
    addi    r4, r31, 0x12c
    stw     r29, 0x16c(sp)
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d13c
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d134
    addi    r3, r29, 0x0
    addi    r4, r31, 0x138
    bl      __ct__19TMBindShadowManagerFPCc
branch_0x8029d134:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d13c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x150
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d174
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d16c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x15c
    bl      __ct__12TLightCommonFPCc
branch_0x8029d16c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d174:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x16c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d1b8
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d1b0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x178
    bl      __ct__12TLightCommonFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x5858
    stw     r0, 0x0(r29)
branch_0x8029d1b0:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d1b8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x188
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d1f0
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d1e8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x19c
    bl      __ct__17TEffectObjManagerFPCc
branch_0x8029d1e8:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d1f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1b0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d228
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d220
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1bc
    bl      __ct__14TEffectObjBaseFPCc
branch_0x8029d220:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d228:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1cc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d280
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d278
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1d8
    bl      __ct__Q26JDrama8TNameRefFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6028
    lis     r3, 0x803e
    stw     r0, 0x0(r29)
    subi    r0, r3, 0x6004
    stw     r0, 0x0(r29)
    li      r0, 0x0
    stw     r0, 0xc(r29)
branch_0x8029d278:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d280:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1e8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d2ec
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d2e4
    stw     r29, 0x158(sp)
    mr      r3, r29
    addi    r4, r31, 0x1d8
    bl      __ct__Q26JDrama8TNameRefFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6028
    stw     r0, 0x0(r29)
    lis     r3, 0x803e
    subi    r4, r3, 0x5b38
    lwz     r30, 0x158(sp)
    li      r0, 0x0
    li      r3, 0x100
    stw     r4, 0x0(r30)
    stw     r0, 0xc(r30)
    bl      __nwa__FUl
    stw     r3, 0xc(r30)
branch_0x8029d2e4:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d2ec:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      getNameRef_BossEnemy__14TMarNameRefGenCFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029d304
    b       branch_0x8029eddc

branch_0x8029d304:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      getNameRef_Enemy__14TMarNameRefGenCFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029d31c
    b       branch_0x8029eddc

branch_0x8029d31c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1f4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d354
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d34c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x200
    bl      __ct__10TLiveActorFPCc
branch_0x8029d34c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d354:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x218
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d38c
    li      r3, 0x38
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d384
    addi    r3, r29, 0x0
    addi    r4, r31, 0x224
    bl      __ct__12TLiveManagerFPCc
branch_0x8029d384:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d38c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x240
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d3f0
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d3e8
    stw     r29, 0x90(sp)
    addi    r4, r31, 0x250
    lwz     r3, 0x90(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x90(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0x5b60
    stw     r0, 0x0(r29)
branch_0x8029d3e8:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d3f0:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      getNameRef_NPC__14TMarNameRefGenCFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029d408
    b       branch_0x8029eddc

branch_0x8029d408:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x25c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d46c
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d464
    stw     r29, 0x8c(sp)
    addi    r4, r31, 0x250
    lwz     r3, 0x8c(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x8c(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0x4f54
    stw     r0, 0x0(r29)
branch_0x8029d464:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d46c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x268
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d4a4
    li      r3, 0x44
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d49c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x274
    bl      __ct__10TGeneratorFPCc
branch_0x8029d49c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d4a4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x284
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d4dc
    li      r3, 0x7c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d4d4
    addi    r3, r29, 0x0
    addi    r4, r31, 0x298
    bl      __ct__17TOneShotGeneratorFPCc
branch_0x8029d4d4:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d4dc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2ac
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d514
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d50c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x2b8
    bl      __ct__13TAreaCylinderFPCc
branch_0x8029d50c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d514:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d54c
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d544
    addi    r3, r29, 0x0
    addi    r4, r31, 0x2b8
    bl      __ct__13TAreaCylinderFPCc
branch_0x8029d544:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d54c:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x520
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d584
    li      r3, 0x344
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d57c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x2d8
    bl      __ct__8TTalk2D2FPCc
branch_0x8029d57c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d584:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2e4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d5c0
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d5b8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x2f0
    li      r5, 0x2
    bl      __ct__Q26JDrama9TSmJ3DScnFPCcl
branch_0x8029d5b8:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d5c0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2fc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d624
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d61c
    stw     r29, 0x88(sp)
    addi    r4, r31, 0x250
    lwz     r3, 0x88(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x88(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0x4f78
    stw     r0, 0x0(r29)
branch_0x8029d61c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d624:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x30c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d6c8
    li      r3, 0x5e4c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d6c0
    stw     r29, 0x84(sp)
    addi    r4, r31, 0x320
    stw     r29, 0x110(sp)
    lwz     r3, 0x84(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x84(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r31, 0x110(sp)
    lis     r3, 0x803e
    subi    r0, r3, 0x1614
    lis     r3, 0x8002
    stw     r0, 0x0(r31)
    addi    r30, r3, 0x10dc
    addi    r4, r30, 0x0
    addi    r3, r31, 0x814
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x100
    bl      __construct_array
    addi    r4, r30, 0x0
    addi    r3, r31, 0x1414
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x100
    bl      __construct_array
branch_0x8029d6c0:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d6c8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x338
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d760
    li      r3, 0x64c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d758
    stw     r29, 0x80(sp)
    addi    r4, r31, 0x250
    stw     r29, 0x148(sp)
    lwz     r3, 0x80(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x80(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    lwz     r30, 0x148(sp)
    subi    r0, r3, 0x2d18
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x118
    bl      initiate__10JSUPtrListFv
    addi    r3, r30, 0x124
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x802a
    subi    r4, r3, 0x6e8
    addi    r3, r30, 0x130
    li      r5, 0x0
    li      r6, 0x14
    li      r7, 0x40
    bl      __construct_array
branch_0x8029d758:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d760:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x348
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d798
    li      r3, 0x3fc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d790
    addi    r3, r29, 0x0
    addi    r4, r31, 0x358
    bl      __ct__15CPolarSubCameraFPCc
branch_0x8029d790:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d798:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x368
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d7d0
    li      r3, 0xa4
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d7c8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x378
    bl      __ct__13TMirrorCameraFPCc
branch_0x8029d7c8:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d7d0:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x518
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d80c

    li      r3, MarioActor_Size
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d7fc
    mr      r3, r29
    bl      __ct__6TMarioFv
branch_0x8029d7fc:

    stw     r29, MarioActor(r13)
    mr      r3, r29
    stw     r29, MarioHitActor(r13)
    b       branch_0x8029eddc

branch_0x8029d80c:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x510
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d858
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d848
    addi    r3, r29, 0x0
    addi    r4, r31, 0x384
    bl      __ct__12TLightCommonFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x588c
    stw     r0, 0x0(r29)
branch_0x8029d848:
    lwz     r4, LightCommon(r13)
    mr      r3, r29
    stw     r29, 0x10(r4)
    b       branch_0x8029eddc

branch_0x8029d858:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x394
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d890
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d888
    addi    r3, r29, 0x0
    addi    r4, r31, 0x3a8
    bl      __ct__19TMirrorModelManagerFPCc
branch_0x8029d888:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d890:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3bc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d8d0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d8c8
    mr      r3, r29
    bl      __ct__Q26JDrama11TDrawBufObjFv
    lis     r3, 0x803c
    addi    r0, r3, 0x1978
    stw     r0, 0x0(r29)
branch_0x8029d8c8:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d8d0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d934
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d92c
    stw     r29, 0x7c(sp)
    addi    r4, r31, 0x3dc
    lwz     r3, 0x7c(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x7c(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0x59c8
    stw     r0, 0x0(r29)
branch_0x8029d92c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d934:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3ec
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029d9a0
    li      r3, 0x38
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029d998
    addi    r3, sp, 0x140
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0x140(sp)
    addi    r3, r29, 0x0
    lfs     f1, -0x508(rtoc)
    addi    r4, sp, 0x108
    stw     r0, 0x108(sp)
    addi    r5, r31, 0x3f8
    bl      __ct__9TSMSFaderFQ28JUtility6TColorfPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x111c
    stw     r0, 0x0(r29)
branch_0x8029d998:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029d9a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x404
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029da28
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029da20
    addi    r3, sp, 0x138
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0x138(sp)
    addi    r3, r29, 0x0
    lfs     f1, -0x508(rtoc)
    addi    r4, sp, 0x78
    stw     r0, 0x78(sp)
    addi    r5, r31, 0x410
    bl      __ct__9TSMSFaderFQ28JUtility6TColorfPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x111c
    lis     r3, 0x803c
    stw     r0, 0x0(r29)
    addi    r0, r3, 0x10f0
    stw     r0, 0x0(r29)
    li      r3, 0x0
    li      r0, 0x1
    sth     r3, 0x38(r29)
    stw     r0, 0x20(r29)
branch_0x8029da20:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029da28:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x420
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029da94
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029da8c
    stw     r29, 0x74(sp)
    addi    r4, r31, 0x42c
    lwz     r3, 0x74(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r30, 0x74(sp)
    addi    r4, sp, 0x24
    addi    r3, r30, 0x10
    bl      __ct__Q27JGadget26TList_pointer_P9THitActor_FRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803e
    subi    r0, r3, 0x5b90
    lis     r3, 0x803e
    stw     r0, 0x0(r30)
    subi    r0, r3, 0x5bbc
    stw     r0, 0x0(r29)
    li      r0, 0x0
    stw     r0, 0x20(r29)
branch_0x8029da8c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029da94:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x43c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029dacc
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029dac4
    addi    r3, r29, 0x0
    addi    r4, r31, 0x43c
    bl      __ct__9THitActorFPCc
branch_0x8029dac4:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029dacc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x448
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029db04
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029dafc
    addi    r3, r29, 0x0
    addi    r4, r31, 0x454
    bl      __ct__9TStrategyFPCc
branch_0x8029dafc:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029db04:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      getNameRef_Map__14TMarNameRefGenCFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029db1c
    b       branch_0x8029eddc

branch_0x8029db1c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x460
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029db54
    li      r3, 0x578
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029db4c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x46c
    bl      __ct__11TGCConsole2FPCc
branch_0x8029db4c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029db54:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x47c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029db8c
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029db84
    addi    r3, r29, 0x0
    addi    r4, r31, 0x488
    bl      __ct__10THelpActorFPCc
branch_0x8029db84:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029db8c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x498
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029dbc4
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029dbbc
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4a4
    bl      __ct__16TSwitchHelpActorFPCc
branch_0x8029dbbc:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029dbc4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4bc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029dbfc
    li      r3, 0x2bc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029dbf4
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4c8
    bl      __ct__11TConsoleStrFPCc
branch_0x8029dbf4:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029dbfc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4d8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029dc34
    li      r3, 0x11c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029dc2c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4e4
    bl      __ct__11TPauseMenu2FPCc
branch_0x8029dc2c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029dc34:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4f4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029dc70
    li      r3, 0x320
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029dc68
    addi    r3, r29, 0x0
    addi    r4, r31, 0x500
    li      r5, 0x0
    bl      __ct__9TCardSaveFPCcb
branch_0x8029dc68:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029dc70:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x50c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029dca8
    li      r3, 0x778
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029dca0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x518
    bl      __ct__9TCardLoadFPCc
branch_0x8029dca0:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029dca8:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x504
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029dce0
    li      r3, 0x6f8
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029dcd8
    addi    r3, r29, 0x0
    subi    r4, rtoc, 0x4fc
    bl      __ct__6TGuideFPCc
branch_0x8029dcd8:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029dce0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x524
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029dd3c
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029dd34
    li      r5, 0x0
    stb     r5, 0x130(sp)
    li      r0, 0x50
    addi    r4, sp, 0x12c
    stb     r5, 0x131(sp)
    mr      r3, r29
    stb     r5, 0x132(sp)
    addi    r5, r31, 0x530
    stb     r0, 0x133(sp)
    lwz     r0, 0x130(sp)
    stw     r0, 0x12c(sp)
    bl      __ct__9TSunGlassFQ28JUtility6TColorPCc
branch_0x8029dd34:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029dd3c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x53c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029ddd8
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029ddd0
    stw     r29, 0xec(sp)
    addi    r3, sp, 0xf4
    li      r4, 0x87
    li      r5, 0x87
    li      r6, 0x87
    li      r7, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0xf4(sp)
    addi    r4, sp, 0xf0
    lwz     r3, 0xec(sp)
    addi    r5, r31, 0x548
    stw     r0, 0xf0(sp)
    bl      __ct__9TSunGlassFQ28JUtility6TColorPCc
    lis     r3, 0x803c
    lwz     r30, 0xec(sp)
    addi    r0, r3, 0x10a0
    stw     r0, 0x0(r30)
    addi    r3, sp, 0xf8
    li      r4, 0x87
    li      r5, 0x87
    li      r6, 0x87
    li      r7, 0x0
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r3, 0xf8(sp)
    li      r0, 0x0
    stw     r3, 0x14(r30)
    sth     r0, 0x1a(r30)
    stb     r0, 0x28(r30)
branch_0x8029ddd0:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029ddd8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x554
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029de18
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029de0c
    addi    r3, r29, 0x0
    addi    r5, r31, 0x560
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
branch_0x8029de0c:
    stw     r29, CubeManager0(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029de18:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x578
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029de58
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029de4c
    addi    r3, r29, 0x0
    addi    r5, r31, 0x584
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
branch_0x8029de4c:
    stw     r29, CubeManager1(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029de58:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x598
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029de98
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029de8c
    addi    r3, r29, 0x0
    addi    r5, r31, 0x5a4
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
branch_0x8029de8c:
    stw     r29, CubeManager2(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029de98:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5c0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029ded8
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029decc
    addi    r3, r29, 0x0
    addi    r5, r31, 0x5cc
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
branch_0x8029decc:
    stw     r29, CubeManager3(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029ded8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5e4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029df18
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029df0c
    addi    r3, r29, 0x0
    addi    r5, r31, 0x5f0
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
branch_0x8029df0c:
    stw     r29, CubeManager4(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029df18:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x604
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029df78
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029df6c
    addi    r3, r29, 0x0
    addi    r5, r31, 0x610
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
    lis     r3, 0x803e
    subi    r0, r3, 0xdd0
    stw     r0, 0x0(r29)
    li      r0, -0x1
    lis     r3, 0x803e
    stw     r0, 0x1c(r29)
    subi    r0, r3, 0xdf4
    stw     r0, 0x0(r29)
branch_0x8029df6c:
    stw     r29, CubeManager5(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029df78:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x628
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029dfd8
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029dfcc
    addi    r3, r29, 0x0
    addi    r5, r31, 0x634
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
    lis     r3, 0x803e
    subi    r0, r3, 0xdd0
    stw     r0, 0x0(r29)
    li      r0, -0x1
    lis     r3, 0x803e
    stw     r0, 0x1c(r29)
    subi    r0, r3, 0xe18
    stw     r0, 0x0(r29)
branch_0x8029dfcc:
    stw     r29, CubeManager6(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029dfd8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x64c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e038
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e02c
    addi    r3, r29, 0x0
    addi    r5, r31, 0x658
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
    lis     r3, 0x803e
    subi    r0, r3, 0xdd0
    stw     r0, 0x0(r29)
    li      r0, -0x1
    lis     r3, 0x803e
    stw     r0, 0x1c(r29)
    subi    r0, r3, 0xe18
    stw     r0, 0x0(r29)
branch_0x8029e02c:
    stw     r29, CubeManager7(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e038:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x670
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e098
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e08c
    addi    r3, r29, 0x0
    addi    r5, r31, 0x67c
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
    lis     r3, 0x803e
    subi    r0, r3, 0xdd0
    stw     r0, 0x0(r29)
    li      r0, -0x1
    lis     r3, 0x803e
    stw     r0, 0x1c(r29)
    subi    r0, r3, 0xe18
    stw     r0, 0x0(r29)
branch_0x8029e08c:
    stw     r29, CubeManager8(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e098:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x694
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e0d8
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e0cc
    addi    r3, r29, 0x0
    addi    r5, r31, 0x6a4
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
branch_0x8029e0cc:
    stw     r29, CubeManager9(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e0d8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e118
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e10c
    addi    r3, r29, 0x0
    addi    r5, r31, 0x6d8
    subi    r4, rtoc, 0x4f4
    bl      __ct__16TCubeManagerBaseFPCcPCc
branch_0x8029e10c:
    stw     r29, CubeManager10(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e118:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      getNameRef_MapObj__14TMarNameRefGenCFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029e130
    b       branch_0x8029eddc

branch_0x8029e130:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6fc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e174
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e16c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x714
    bl      __ct__13TMapEventSinkFPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x18cc
    stw     r0, 0x0(r29)
branch_0x8029e16c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e174:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x728
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e1c4
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e1bc
    addi    r3, r29, 0x0
    addi    r4, r31, 0x748
    bl      __ct__13TMapEventSinkFPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x18cc
    lis     r3, 0x803c
    stw     r0, 0x0(r29)
    addi    r0, r3, 0x1878
    stw     r0, 0x0(r29)
branch_0x8029e1bc:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e1c4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x764
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e214
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e20c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x77c
    bl      __ct__13TMapEventSinkFPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x17d0
    stw     r0, 0x0(r29)
    li      r0, 0x0
    stw     r0, 0x64(r29)
    stw     r0, 0x68(r29)
branch_0x8029e20c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e214:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x794
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e24c
    li      r3, 0x84
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e244
    addi    r3, r29, 0x0
    addi    r4, r31, 0x7a8
    bl      __ct__19TMapEventSirenaSinkFPCc
branch_0x8029e244:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e24c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x7b4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e2b8
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e2b0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x7c8
    bl      __ct__13TMapEventSinkFPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x18cc
    lis     r3, 0x803c
    stw     r0, 0x0(r29)
    addi    r0, r3, 0x1878
    lis     r3, 0x803c
    stw     r0, 0x0(r29)
    addi    r0, r3, 0x1824
    stw     r0, 0x0(r29)
    li      r0, 0x0
    stw     r0, 0x64(r29)
    stw     r0, 0x68(r29)
    stw     r0, 0x7c(r29)
branch_0x8029e2b0:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e2b8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x7e8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e2f0
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e2e8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x800
    bl      __ct__22TDolpicEventBiancoGateFPCc
branch_0x8029e2e8:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e2f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x81c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e328
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e320
    addi    r3, r29, 0x0
    addi    r4, r31, 0x834
    bl      __ct__26TDolpicEventRiccoMammaGateFPCc
branch_0x8029e320:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e328:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x854
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e360
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e358
    addi    r3, r29, 0x0
    addi    r4, r31, 0x834
    bl      __ct__26TDolpicEventRiccoMammaGateFPCc
branch_0x8029e358:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e360:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x86c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e398
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e390
    addi    r3, r29, 0x0
    subi    r4, rtoc, 0x4f0
    bl      __ct__19TMareEventBumpyWallFPCc
branch_0x8029e390:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e398:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x880
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e3d0
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e3c8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x894
    bl      __ct__18TMareEventWallRockFPCc
branch_0x8029e3c8:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e3d0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8b0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e408
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e400
    addi    r3, r29, 0x0
    addi    r4, r31, 0x8c8
    bl      __ct__20TStageEnemyInfoTableFPCc
branch_0x8029e400:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e408:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8e0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e45c
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e454
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x8f0
    stw     r3, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r29)
    addi    r0, r4, 0x4240
    stw     r0, 0x0(r29)
branch_0x8029e454:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e45c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x904
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e4c4
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e4bc
    lis     r3, 0x803e
    stw     r29, 0xdc(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x910
    lwz     r30, 0xdc(sp)
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    addi    r3, r30, 0xc
    addi    r4, sp, 0x6c
    bl      __ct__Q27JGadget68TVector_15TStageEventInfo_Q27JGadget29TAllocator_15TStageEventInfo__FRCQ27JGadget29TAllocator_15TStageEventInfo_
    lis     r3, 0x803e
    subi    r0, r3, 0xe38
    stw     r0, 0x0(r30)
branch_0x8029e4bc:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e4c4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x920
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e518
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e510
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x930
    stw     r3, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803e
    sth     r3, 0x8(r29)
    subi    r0, r4, 0xb88
    stw     r0, 0x0(r29)
branch_0x8029e510:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e518:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x944
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e584
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e578
    lis     r3, 0x803e
    stw     r29, 0xd4(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x910
    lwz     r30, 0xd4(sp)
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    addi    r3, r30, 0xc
    addi    r4, sp, 0x68
    bl      __ct__Q27JGadget66TVector_14TCameraMapTool_Q27JGadget28TAllocator_14TCameraMapTool__FRCQ27JGadget28TAllocator_14TCameraMapTool_
    lis     r3, 0x803e
    subi    r0, r3, 0xe58
    stw     r0, 0x0(r30)
branch_0x8029e578:
    stw     r29, OffsetR13_70c0(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e584:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x958
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e5ec
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e5e4
    lis     r3, 0x803e
    stw     r29, 0xd0(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x970
    lwz     r30, 0xd0(sp)
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    addi    r3, r30, 0xc
    addi    r4, sp, 0x64
    bl      __ct__Q27JGadget20TVector_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803b
    subi    r0, r3, 0x2d9c
    stw     r0, 0x0(r30)
branch_0x8029e5e4:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e5ec:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x984
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e69c
    li      r3, 0x38
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e694
    lis     r3, 0x803e
    stw     r29, 0xcc(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x994
    lwz     r30, 0xcc(sp)
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, 0x803b
    subi    r0, r3, 0x2d18
    stw     r0, 0x0(r30)
    addi    r3, r30, 0xc
    lfs     f1, -0x4e8(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8029f28c
    lfs     f1, -0x4e8(rtoc)
    addi    r3, r30, 0x18
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8029f28c
    lfs     f1, -0x4e4(rtoc)
    addi    r3, r30, 0x24
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8029f28c
    li      r0, 0x80
    sth     r0, 0x30(r30)
    li      r3, 0x2
    li      r0, 0x0
    sth     r3, 0x32(r30)
    stw     r0, 0x34(r30)
branch_0x8029e694:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e69c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9a8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e6e8
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e6e0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x9b8
    bl      __ct__16TCubeGeneralInfoFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x2d38
    stw     r0, 0x0(r29)
    li      r0, 0x0
    stw     r0, 0x38(r29)
branch_0x8029e6e0:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e6e8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9cc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e750
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e748
    lis     r3, 0x803e
    stw     r29, 0xc8(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x970
    lwz     r30, 0xc8(sp)
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    addi    r3, r30, 0xc
    addi    r4, sp, 0x60
    bl      __ct__Q27JGadget20TVector_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803b
    subi    r0, r3, 0x2d9c
    stw     r0, 0x0(r30)
branch_0x8029e748:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e750:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9e4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e7a8
    li      r3, 0x44
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e7a0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x9f4
    bl      __ct__16TCubeGeneralInfoFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x2d58
    stw     r0, 0x0(r29)
    li      r0, 0x1
    stw     r0, 0x38(r29)
    lfs     f0, -0x4e8(rtoc)
    stfs    f0, 0x3c(r29)
    stfs    f0, 0x40(r29)
branch_0x8029e7a0:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e7a8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa08
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e810
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e808
    lis     r3, 0x803e
    stw     r29, 0xc4(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x910
    lwz     r30, 0xc4(sp)
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    addi    r3, r30, 0xc
    addi    r4, sp, 0x5c
    bl      __ct__Q27JGadget78TVector_20TScenarioArchiveName_Q27JGadget34TAllocator_20TScenarioArchiveName__FRCQ27JGadget34TAllocator_20TScenarioArchiveName_
    lis     r3, 0x803e
    subi    r0, r3, 0xe78
    stw     r0, 0x0(r30)
branch_0x8029e808:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e810:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa24
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e878
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e870
    lis     r3, 0x803e
    stw     r29, 0xc0(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x970
    lwz     r30, 0xc0(sp)
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    addi    r3, r30, 0xc
    addi    r4, sp, 0x58
    bl      __ct__Q27JGadget20TVector_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803e
    subi    r0, r3, 0xe98
    stw     r0, 0x0(r30)
branch_0x8029e870:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e878:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa40
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e8e4
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e8dc
    stw     r29, 0x54(sp)
    addi    r4, r31, 0x250
    lwz     r3, 0x54(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x54(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0xc80
    stw     r0, 0x0(r29)
    li      r0, 0x0
    stw     r0, 0x10(r29)
branch_0x8029e8dc:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e8e4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa4c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e958
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e94c
    stw     r29, 0x50(sp)
    subi    r4, rtoc, 0x4f4
    lwz     r3, 0x50(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x50(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0x2b8
    stw     r0, 0x0(r29)
    li      r0, 0x0
    stw     r0, 0x10(r29)
    stb     r0, 0x14(r29)
branch_0x8029e94c:
    stw     r29, OffsetR13_5fa0(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e958:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa58
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029e9c4
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029e9b8
    lis     r3, 0x803e
    stw     r29, 0xb8(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x910
    lwz     r30, 0xb8(sp)
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    addi    r3, r30, 0xc
    addi    r4, sp, 0x4c
    bl      __ct__Q27JGadget74TVector_18TStagePositionInfo_Q27JGadget32TAllocator_18TStagePositionInfo__FRCQ27JGadget32TAllocator_18TStagePositionInfo_
    lis     r3, 0x803e
    subi    r0, r3, 0xeb8
    stw     r0, 0x0(r30)
branch_0x8029e9b8:
    stw     r29, OffsetR13_6000(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029e9c4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa68
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029ea68
    li      r3, 0xd4
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029ea60
    stw     r29, 0x48(sp)
    addi    r4, r31, 0xa7c
    stw     r29, 0xb4(sp)
    lwz     r3, 0x48(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x48(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r30, 0xb4(sp)
    lis     r3, 0x803e
    subi    r0, r3, 0x14c8
    lis     r3, 0x8002
    stw     r0, 0x0(r30)
    addi    r31, r3, 0x10dc
    addi    r4, r31, 0x0
    addi    r3, r30, 0x10
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x8
    bl      __construct_array
    addi    r4, r31, 0x0
    addi    r3, r30, 0x70
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x8
    bl      __construct_array
branch_0x8029ea60:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029ea68:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa90
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029eadc
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029ead4
    stw     r29, 0x44(sp)
    addi    r4, r31, 0x250
    stw     r29, 0x114(sp)
    lwz     r3, 0x44(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x44(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r31, 0x114(sp)
    addi    r3, r31, 0x10
    bl      Initialize___Q27JGadget19TSingleNodeLinkListFv
    lis     r3, 0x803e
    subi    r0, r3, 0xd38
    stw     r0, 0x0(r31)
branch_0x8029ead4:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029eadc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa9c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029eb40
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029eb38
    stw     r29, 0x40(sp)
    addi    r4, r31, 0xaac
    lwz     r3, 0x40(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x40(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0x10e0
    stw     r0, 0x0(r29)
branch_0x8029eb38:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029eb40:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xac0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029eba4
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029eb9c
    stw     r29, 0x3c(sp)
    addi    r4, r31, 0xacc
    lwz     r3, 0x3c(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x3c(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0x10bc
    stw     r0, 0x0(r29)
branch_0x8029eb9c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029eba4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xad8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029ec08
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029ec00
    stw     r29, 0x38(sp)
    addi    r4, r31, 0xaec
    lwz     r3, 0x38(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x38(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0x1074
    stw     r0, 0x0(r29)
branch_0x8029ec00:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029ec08:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb00
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029ec6c
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029ec64
    stw     r29, 0x34(sp)
    addi    r4, r31, 0xb0c
    lwz     r3, 0x34(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x34(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0x1098
    stw     r0, 0x0(r29)
branch_0x8029ec64:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029ec6c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb1c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029ecd0
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029ecc8
    stw     r29, 0x30(sp)
    addi    r4, r31, 0xb2c
    lwz     r3, 0x30(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x30(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0xc34
    stw     r0, 0x0(r29)
branch_0x8029ecc8:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029ecd0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb3c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029ed34
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029ed2c
    stw     r29, 0x2c(sp)
    addi    r4, r31, 0xb48
    lwz     r3, 0x2c(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x2c(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0xc58
    stw     r0, 0x0(r29)
branch_0x8029ed2c:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029ed34:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb58
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029ed98
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029ed90
    stw     r29, 0x28(sp)
    addi    r4, r31, 0xb64
    lwz     r3, 0x28(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x28(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    subi    r0, r3, 0x1050
    stw     r0, 0x0(r29)
branch_0x8029ed90:
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029ed98:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb74
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8029edd0
    li      r3, 0x100
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8029edc4
    mr      r3, r29
    bl      __ct__10TConductorFv
branch_0x8029edc4:
    stw     r29, OffsetR13_70b0(r13)
    mr      r3, r29
    b       branch_0x8029eddc

branch_0x8029edd0:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      getNameRef__Q26JDrama11TNameRefGenCFPCc
branch_0x8029eddc:
    lwz     r0, 0x17c(sp)
    lwz     r31, 0x174(sp)
    lwz     r30, 0x170(sp)
    mtlr    r0
    lwz     r29, 0x16c(sp)
    addi    sp, sp, 0x178
    blr


.globl __dt__18TStagePositionInfoFv
__dt__18TStagePositionInfoFv: # 0x8029edf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8029ee40
    lis     r3, 0x803e
    subi    r0, r3, 0xb08
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x8029ee40
    mr      r3, r30
    bl      __dl__FPv
branch_0x8029ee40:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl copy__Q23std32__copy_18TStagePositionInfo_0_0_FP18TStagePositionInfoP18TStagePositionInfoP18TStagePositionInfo
copy__Q23std32__copy_18TStagePositionInfo_0_0_FP18TStagePositionInfoP18TStagePositionInfoP18TStagePositionInfo: # 0x8029ee5c
    addi    r6, r4, 0x17
    subf    r6, r3, r6
    li      r0, 0x18
    divwu   r6, r6, r0
    cmplw   r3, r4
    bge-    branch_0x8029f00c
    srwi.   r0, r6, 3
    mtctr   r0
    beq-    branch_0x8029efd4
branch_0x8029ee80:
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r5)
    lhz     r0, 0x8(r3)
    sth     r0, 0x8(r5)
    lwz     r4, 0xc(r3)
    lwz     r0, 0x10(r3)
    stw     r4, 0xc(r5)
    stw     r0, 0x10(r5)
    lwz     r0, 0x14(r3)
    stw     r0, 0x14(r5)
    lwz     r0, 0x1c(r3)
    stw     r0, 0x1c(r5)
    lhz     r0, 0x20(r3)
    sth     r0, 0x20(r5)
    lwz     r4, 0x24(r3)
    lwz     r0, 0x28(r3)
    stw     r4, 0x24(r5)
    stw     r0, 0x28(r5)
    lwz     r0, 0x2c(r3)
    stw     r0, 0x2c(r5)
    lwz     r0, 0x34(r3)
    stw     r0, 0x34(r5)
    lhz     r0, 0x38(r3)
    sth     r0, 0x38(r5)
    lwz     r4, 0x3c(r3)
    lwz     r0, 0x40(r3)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    lwz     r0, 0x44(r3)
    stw     r0, 0x44(r5)
    lwz     r0, 0x4c(r3)
    stw     r0, 0x4c(r5)
    lhz     r0, 0x50(r3)
    sth     r0, 0x50(r5)
    lwz     r4, 0x54(r3)
    lwz     r0, 0x58(r3)
    stw     r4, 0x54(r5)
    stw     r0, 0x58(r5)
    lwz     r0, 0x5c(r3)
    stw     r0, 0x5c(r5)
    lwz     r0, 0x64(r3)
    stw     r0, 0x64(r5)
    lhz     r0, 0x68(r3)
    sth     r0, 0x68(r5)
    lwz     r4, 0x6c(r3)
    lwz     r0, 0x70(r3)
    stw     r4, 0x6c(r5)
    stw     r0, 0x70(r5)
    lwz     r0, 0x74(r3)
    stw     r0, 0x74(r5)
    lwz     r0, 0x7c(r3)
    stw     r0, 0x7c(r5)
    lhz     r0, 0x80(r3)
    sth     r0, 0x80(r5)
    lwz     r4, 0x84(r3)
    lwz     r0, 0x88(r3)
    stw     r4, 0x84(r5)
    stw     r0, 0x88(r5)
    lwz     r0, 0x8c(r3)
    stw     r0, 0x8c(r5)
    lwz     r0, 0x94(r3)
    stw     r0, 0x94(r5)
    lhz     r0, 0x98(r3)
    sth     r0, 0x98(r5)
    lwz     r4, 0x9c(r3)
    lwz     r0, 0xa0(r3)
    stw     r4, 0x9c(r5)
    stw     r0, 0xa0(r5)
    lwz     r0, 0xa4(r3)
    stw     r0, 0xa4(r5)
    lwz     r0, 0xac(r3)
    stw     r0, 0xac(r5)
    lhz     r0, 0xb0(r3)
    sth     r0, 0xb0(r5)
    lwz     r4, 0xb4(r3)
    lwz     r0, 0xb8(r3)
    stw     r4, 0xb4(r5)
    stw     r0, 0xb8(r5)
    lwz     r0, 0xbc(r3)
    addi    r3, r3, 0xc0
    stw     r0, 0xbc(r5)
    addi    r5, r5, 0xc0
    bdnz+      branch_0x8029ee80
    andi.   r6, r6, 0x7
    beq-    branch_0x8029f00c
branch_0x8029efd4:
    mtctr   r6
branch_0x8029efd8:
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r5)
    lhz     r0, 0x8(r3)
    sth     r0, 0x8(r5)
    lwz     r4, 0xc(r3)
    lwz     r0, 0x10(r3)
    stw     r4, 0xc(r5)
    stw     r0, 0x10(r5)
    lwz     r0, 0x14(r3)
    addi    r3, r3, 0x18
    stw     r0, 0x14(r5)
    addi    r5, r5, 0x18
    bdnz+      branch_0x8029efd8
branch_0x8029f00c:
    mr      r3, r5
    blr


.globl __ct__Q27JGadget74TVector_18TStagePositionInfo_Q27JGadget32TAllocator_18TStagePositionInfo__FRCQ27JGadget32TAllocator_18TStagePositionInfo_
__ct__Q27JGadget74TVector_18TStagePositionInfo_Q27JGadget32TAllocator_18TStagePositionInfo__FRCQ27JGadget32TAllocator_18TStagePositionInfo_: # 0x8029f014
    lbz     r0, 0x0(r4)
    li      r4, 0x0
    stb     r0, 0x0(r3)
    stw     r4, 0x4(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r4, 0xc(r3)
    lfs     f0, -0x4e0(rtoc)
    stfs    f0, 0x10(r3)
    stw     r4, 0x14(r3)
    blr


.globl __dt__20TScenarioArchiveNameFv
__dt__20TScenarioArchiveNameFv: # 0x8029f040
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8029f088
    lis     r3, 0x803e
    subi    r0, r3, 0xba8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x8029f088
    mr      r3, r30
    bl      __dl__FPv
branch_0x8029f088:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl copy__Q23std34__copy_20TScenarioArchiveName_0_0_FP20TScenarioArchiveNameP20TScenarioArchiveNameP20TScenarioArchiveName
copy__Q23std34__copy_20TScenarioArchiveName_0_0_FP20TScenarioArchiveNameP20TScenarioArchiveNameP20TScenarioArchiveName: # 0x8029f0a4
    addi    r6, r4, 0xf
    subf    r6, r3, r6
    cmplw   r3, r4
    srwi    r6, r6, 4
    bge-    branch_0x8029f1c0
    srwi.   r0, r6, 3
    mtctr   r0
    beq-    branch_0x8029f198
branch_0x8029f0c4:
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r5)
    lhz     r0, 0x8(r3)
    sth     r0, 0x8(r5)
    lwz     r0, 0xc(r3)
    stw     r0, 0xc(r5)
    lwz     r0, 0x14(r3)
    stw     r0, 0x14(r5)
    lhz     r0, 0x18(r3)
    sth     r0, 0x18(r5)
    lwz     r0, 0x1c(r3)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x24(r3)
    stw     r0, 0x24(r5)
    lhz     r0, 0x28(r3)
    sth     r0, 0x28(r5)
    lwz     r0, 0x2c(r3)
    stw     r0, 0x2c(r5)
    lwz     r0, 0x34(r3)
    stw     r0, 0x34(r5)
    lhz     r0, 0x38(r3)
    sth     r0, 0x38(r5)
    lwz     r0, 0x3c(r3)
    stw     r0, 0x3c(r5)
    lwz     r0, 0x44(r3)
    stw     r0, 0x44(r5)
    lhz     r0, 0x48(r3)
    sth     r0, 0x48(r5)
    lwz     r0, 0x4c(r3)
    stw     r0, 0x4c(r5)
    lwz     r0, 0x54(r3)
    stw     r0, 0x54(r5)
    lhz     r0, 0x58(r3)
    sth     r0, 0x58(r5)
    lwz     r0, 0x5c(r3)
    stw     r0, 0x5c(r5)
    lwz     r0, 0x64(r3)
    stw     r0, 0x64(r5)
    lhz     r0, 0x68(r3)
    sth     r0, 0x68(r5)
    lwz     r0, 0x6c(r3)
    stw     r0, 0x6c(r5)
    lwz     r0, 0x74(r3)
    stw     r0, 0x74(r5)
    lhz     r0, 0x78(r3)
    sth     r0, 0x78(r5)
    lwz     r0, 0x7c(r3)
    addi    r3, r3, 0x80
    stw     r0, 0x7c(r5)
    addi    r5, r5, 0x80
    bdnz+      branch_0x8029f0c4
    andi.   r6, r6, 0x7
    beq-    branch_0x8029f1c0
branch_0x8029f198:
    mtctr   r6
branch_0x8029f19c:
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r5)
    lhz     r0, 0x8(r3)
    sth     r0, 0x8(r5)
    lwz     r0, 0xc(r3)
    addi    r3, r3, 0x10
    stw     r0, 0xc(r5)
    addi    r5, r5, 0x10
    bdnz+      branch_0x8029f19c
branch_0x8029f1c0:
    mr      r3, r5
    blr


.globl __ct__Q27JGadget78TVector_20TScenarioArchiveName_Q27JGadget34TAllocator_20TScenarioArchiveName__FRCQ27JGadget34TAllocator_20TScenarioArchiveName_
__ct__Q27JGadget78TVector_20TScenarioArchiveName_Q27JGadget34TAllocator_20TScenarioArchiveName__FRCQ27JGadget34TAllocator_20TScenarioArchiveName_: # 0x8029f1c8
    lbz     r0, 0x0(r4)
    li      r4, 0x0
    stb     r0, 0x0(r3)
    stw     r4, 0x4(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r4, 0xc(r3)
    lfs     f0, -0x4e0(rtoc)
    stfs    f0, 0x10(r3)
    stw     r4, 0x14(r3)
    blr


.globl __ct__16TCubeGeneralInfoFPCc
__ct__16TCubeGeneralInfoFPCc: # 0x8029f1f4
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x2d18
    stw     r0, 0x0(r31)
    li      r5, 0x80
    li      r4, 0x2
    lfs     f0, -0x4e8(rtoc)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stfs    f0, 0xc(r31)
    stfs    f0, 0x10(r31)
    stfs    f0, 0x14(r31)
    stfs    f0, 0x18(r31)
    stfs    f0, 0x1c(r31)
    stfs    f0, 0x20(r31)
    lfs     f0, -0x4e4(rtoc)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    sth     r5, 0x30(r31)
    sth     r4, 0x32(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8029f28c
set_f___Q29JGeometry8TVec3_f_Ffff_8029f28c: # 0x8029f28c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl copy__Q23std28__copy_14TCameraMapTool_0_0_FP14TCameraMapToolP14TCameraMapToolP14TCameraMapTool
copy__Q23std28__copy_14TCameraMapTool_0_0_FP14TCameraMapToolP14TCameraMapToolP14TCameraMapTool: # 0x8029f29c
    addi    r6, r4, 0x2f
    subf    r6, r3, r6
    li      r0, 0x30
    divwu   r6, r6, r0
    cmplw   r3, r4
    bge-    branch_0x8029f49c
    srwi.   r0, r6, 2
    mtctr   r0
    beq-    branch_0x8029f434
branch_0x8029f2c0:
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r5)
    lhz     r0, 0x8(r3)
    sth     r0, 0x8(r5)
    lwz     r4, 0xc(r3)
    lwz     r0, 0x10(r3)
    stw     r4, 0xc(r5)
    stw     r0, 0x10(r5)
    lwz     r0, 0x14(r3)
    stw     r0, 0x14(r5)
    lwz     r4, 0x18(r3)
    lwz     r0, 0x1c(r3)
    stw     r4, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x20(r3)
    stw     r0, 0x20(r5)
    lwz     r0, 0x24(r3)
    stw     r0, 0x24(r5)
    lwz     r0, 0x28(r3)
    stw     r0, 0x28(r5)
    lwz     r0, 0x2c(r3)
    stw     r0, 0x2c(r5)
    lwz     r0, 0x34(r3)
    stw     r0, 0x34(r5)
    lhz     r0, 0x38(r3)
    sth     r0, 0x38(r5)
    lwz     r4, 0x3c(r3)
    lwz     r0, 0x40(r3)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    lwz     r0, 0x44(r3)
    stw     r0, 0x44(r5)
    lwz     r4, 0x48(r3)
    lwz     r0, 0x4c(r3)
    stw     r4, 0x48(r5)
    stw     r0, 0x4c(r5)
    lwz     r0, 0x50(r3)
    stw     r0, 0x50(r5)
    lwz     r0, 0x54(r3)
    stw     r0, 0x54(r5)
    lwz     r0, 0x58(r3)
    stw     r0, 0x58(r5)
    lwz     r0, 0x5c(r3)
    stw     r0, 0x5c(r5)
    lwz     r0, 0x64(r3)
    stw     r0, 0x64(r5)
    lhz     r0, 0x68(r3)
    sth     r0, 0x68(r5)
    lwz     r4, 0x6c(r3)
    lwz     r0, 0x70(r3)
    stw     r4, 0x6c(r5)
    stw     r0, 0x70(r5)
    lwz     r0, 0x74(r3)
    stw     r0, 0x74(r5)
    lwz     r4, 0x78(r3)
    lwz     r0, 0x7c(r3)
    stw     r4, 0x78(r5)
    stw     r0, 0x7c(r5)
    lwz     r0, 0x80(r3)
    stw     r0, 0x80(r5)
    lwz     r0, 0x84(r3)
    stw     r0, 0x84(r5)
    lwz     r0, 0x88(r3)
    stw     r0, 0x88(r5)
    lwz     r0, 0x8c(r3)
    stw     r0, 0x8c(r5)
    lwz     r0, 0x94(r3)
    stw     r0, 0x94(r5)
    lhz     r0, 0x98(r3)
    sth     r0, 0x98(r5)
    lwz     r4, 0x9c(r3)
    lwz     r0, 0xa0(r3)
    stw     r4, 0x9c(r5)
    stw     r0, 0xa0(r5)
    lwz     r0, 0xa4(r3)
    stw     r0, 0xa4(r5)
    lwz     r4, 0xa8(r3)
    lwz     r0, 0xac(r3)
    stw     r4, 0xa8(r5)
    stw     r0, 0xac(r5)
    lwz     r0, 0xb0(r3)
    stw     r0, 0xb0(r5)
    lwz     r0, 0xb4(r3)
    stw     r0, 0xb4(r5)
    lwz     r0, 0xb8(r3)
    stw     r0, 0xb8(r5)
    lwz     r0, 0xbc(r3)
    addi    r3, r3, 0xc0
    stw     r0, 0xbc(r5)
    addi    r5, r5, 0xc0
    bdnz+      branch_0x8029f2c0
    andi.   r6, r6, 0x3
    beq-    branch_0x8029f49c
branch_0x8029f434:
    mtctr   r6
branch_0x8029f438:
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r5)
    lhz     r0, 0x8(r3)
    sth     r0, 0x8(r5)
    lwz     r4, 0xc(r3)
    lwz     r0, 0x10(r3)
    stw     r4, 0xc(r5)
    stw     r0, 0x10(r5)
    lwz     r0, 0x14(r3)
    stw     r0, 0x14(r5)
    lwz     r4, 0x18(r3)
    lwz     r0, 0x1c(r3)
    stw     r4, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x20(r3)
    stw     r0, 0x20(r5)
    lwz     r0, 0x24(r3)
    stw     r0, 0x24(r5)
    lwz     r0, 0x28(r3)
    stw     r0, 0x28(r5)
    lwz     r0, 0x2c(r3)
    addi    r3, r3, 0x30
    stw     r0, 0x2c(r5)
    addi    r5, r5, 0x30
    bdnz+      branch_0x8029f438
branch_0x8029f49c:
    mr      r3, r5
    blr


.globl __ct__Q27JGadget66TVector_14TCameraMapTool_Q27JGadget28TAllocator_14TCameraMapTool__FRCQ27JGadget28TAllocator_14TCameraMapTool_
__ct__Q27JGadget66TVector_14TCameraMapTool_Q27JGadget28TAllocator_14TCameraMapTool__FRCQ27JGadget28TAllocator_14TCameraMapTool_: # 0x8029f4a4
    lbz     r0, 0x0(r4)
    li      r4, 0x0
    stb     r0, 0x0(r3)
    stw     r4, 0x4(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r4, 0xc(r3)
    lfs     f0, -0x4e0(rtoc)
    stfs    f0, 0x10(r3)
    stw     r4, 0x14(r3)
    blr


.globl __dt__15TStageEventInfoFv
__dt__15TStageEventInfoFv: # 0x8029f4d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8029f518
    lis     r3, 0x803e
    subi    r0, r3, 0xb88
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x8029f518
    mr      r3, r30
    bl      __dl__FPv
branch_0x8029f518:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl copy__Q23std29__copy_15TStageEventInfo_0_0_FP15TStageEventInfoP15TStageEventInfoP15TStageEventInfo
copy__Q23std29__copy_15TStageEventInfo_0_0_FP15TStageEventInfoP15TStageEventInfoP15TStageEventInfo: # 0x8029f534
    addi    r6, r4, 0x2b
    subf    r6, r3, r6
    li      r0, 0x2c
    divwu   r6, r6, r0
    cmplw   r3, r4
    bge-    branch_0x8029f70c
    srwi.   r0, r6, 2
    mtctr   r0
    beq-    branch_0x8029f6ac
branch_0x8029f558:
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r5)
    lhz     r0, 0x8(r3)
    sth     r0, 0x8(r5)
    lwz     r0, 0xc(r3)
    stw     r0, 0xc(r5)
    lwz     r0, 0x10(r3)
    stw     r0, 0x10(r5)
    lwz     r0, 0x14(r3)
    stw     r0, 0x14(r5)
    lwz     r0, 0x18(r3)
    stw     r0, 0x18(r5)
    lwz     r0, 0x1c(r3)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x20(r3)
    stw     r0, 0x20(r5)
    lwz     r0, 0x24(r3)
    stw     r0, 0x24(r5)
    lwz     r0, 0x28(r3)
    stw     r0, 0x28(r5)
    lwz     r0, 0x30(r3)
    stw     r0, 0x30(r5)
    lhz     r0, 0x34(r3)
    sth     r0, 0x34(r5)
    lwz     r0, 0x38(r3)
    stw     r0, 0x38(r5)
    lwz     r0, 0x3c(r3)
    stw     r0, 0x3c(r5)
    lwz     r0, 0x40(r3)
    stw     r0, 0x40(r5)
    lwz     r0, 0x44(r3)
    stw     r0, 0x44(r5)
    lwz     r0, 0x48(r3)
    stw     r0, 0x48(r5)
    lwz     r0, 0x4c(r3)
    stw     r0, 0x4c(r5)
    lwz     r0, 0x50(r3)
    stw     r0, 0x50(r5)
    lwz     r0, 0x54(r3)
    stw     r0, 0x54(r5)
    lwz     r0, 0x5c(r3)
    stw     r0, 0x5c(r5)
    lhz     r0, 0x60(r3)
    sth     r0, 0x60(r5)
    lwz     r0, 0x64(r3)
    stw     r0, 0x64(r5)
    lwz     r0, 0x68(r3)
    stw     r0, 0x68(r5)
    lwz     r0, 0x6c(r3)
    stw     r0, 0x6c(r5)
    lwz     r0, 0x70(r3)
    stw     r0, 0x70(r5)
    lwz     r0, 0x74(r3)
    stw     r0, 0x74(r5)
    lwz     r0, 0x78(r3)
    stw     r0, 0x78(r5)
    lwz     r0, 0x7c(r3)
    stw     r0, 0x7c(r5)
    lwz     r0, 0x80(r3)
    stw     r0, 0x80(r5)
    lwz     r0, 0x88(r3)
    stw     r0, 0x88(r5)
    lhz     r0, 0x8c(r3)
    sth     r0, 0x8c(r5)
    lwz     r0, 0x90(r3)
    stw     r0, 0x90(r5)
    lwz     r0, 0x94(r3)
    stw     r0, 0x94(r5)
    lwz     r0, 0x98(r3)
    stw     r0, 0x98(r5)
    lwz     r0, 0x9c(r3)
    stw     r0, 0x9c(r5)
    lwz     r0, 0xa0(r3)
    stw     r0, 0xa0(r5)
    lwz     r0, 0xa4(r3)
    stw     r0, 0xa4(r5)
    lwz     r0, 0xa8(r3)
    stw     r0, 0xa8(r5)
    lwz     r0, 0xac(r3)
    addi    r3, r3, 0xb0
    stw     r0, 0xac(r5)
    addi    r5, r5, 0xb0
    bdnz+      branch_0x8029f558
    andi.   r6, r6, 0x3
    beq-    branch_0x8029f70c
branch_0x8029f6ac:
    mtctr   r6
branch_0x8029f6b0:
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r5)
    lhz     r0, 0x8(r3)
    sth     r0, 0x8(r5)
    lwz     r0, 0xc(r3)
    stw     r0, 0xc(r5)
    lwz     r0, 0x10(r3)
    stw     r0, 0x10(r5)
    lwz     r0, 0x14(r3)
    stw     r0, 0x14(r5)
    lwz     r0, 0x18(r3)
    stw     r0, 0x18(r5)
    lwz     r0, 0x1c(r3)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x20(r3)
    stw     r0, 0x20(r5)
    lwz     r0, 0x24(r3)
    stw     r0, 0x24(r5)
    lwz     r0, 0x28(r3)
    addi    r3, r3, 0x2c
    stw     r0, 0x28(r5)
    addi    r5, r5, 0x2c
    bdnz+      branch_0x8029f6b0
branch_0x8029f70c:
    mr      r3, r5
    blr


.globl __ct__Q27JGadget68TVector_15TStageEventInfo_Q27JGadget29TAllocator_15TStageEventInfo__FRCQ27JGadget29TAllocator_15TStageEventInfo_
__ct__Q27JGadget68TVector_15TStageEventInfo_Q27JGadget29TAllocator_15TStageEventInfo__FRCQ27JGadget29TAllocator_15TStageEventInfo_: # 0x8029f714
    lbz     r0, 0x0(r4)
    li      r4, 0x0
    stb     r0, 0x0(r3)
    stw     r4, 0x4(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r4, 0xc(r3)
    lfs     f0, -0x4e0(rtoc)
    stfs    f0, 0x10(r3)
    stw     r4, 0x14(r3)
    blr


.globl __dt__19TCubeManagerMarioInFv
__dt__19TCubeManagerMarioInFv: # 0x8029f740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8029f7a8
    lis     r3, 0x803e
    subi    r0, r3, 0xdd0
    stw     r0, 0x0(r30)
    beq-    branch_0x8029f798
    lis     r3, 0x803b
    subi    r0, r3, 0x2dc0
    stw     r0, 0x0(r30)
    beq-    branch_0x8029f798
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8029f798:
    extsh.  r0, r31
    ble-    branch_0x8029f7a8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8029f7a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__9TSunGlassFQ28JUtility6TColorPCc
__ct__9TSunGlassFQ28JUtility6TColorPCc: # 0x8029f7c4
    mflr    r0
    lis     r6, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x0(r3)
    stw     r5, 0x4(r3)
    mr      r3, r5
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    li      r7, 0x0
    lis     r3, 0x803c
    sth     r7, 0xc(r30)
    addi    r0, r3, 0x10c8
    li      r5, 0x3
    stw     r0, 0x0(r30)
    li      r4, 0x3c
    li      r0, 0x64
    stw     r7, 0x10(r30)
    mr      r3, r30
    lwz     r6, 0x0(r31)
    stw     r6, 0x14(r30)
    stb     r7, 0x18(r30)
    stb     r5, 0x19(r30)
    sth     r7, 0x1a(r30)
    stb     r4, 0x1e(r30)
    stb     r7, 0x1f(r30)
    sth     r0, 0x20(r30)
    sth     r0, 0x22(r30)
    sth     r7, 0x24(r30)
    stb     r7, 0x26(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__Q27JGadget26TList_pointer_P9THitActor_FRCQ27JGadget14TAllocator_Pv_
__ct__Q27JGadget26TList_pointer_P9THitActor_FRCQ27JGadget14TAllocator_Pv_: # 0x8029f874
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q26JDrama11TDrawBufObjFv
__dt__Q26JDrama11TDrawBufObjFv: # 0x8029f8a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8029f8fc
    lis     r3, 0x803e
    addi    r0, r3, 0x1dd0
    stw     r0, 0x0(r30)
    beq-    branch_0x8029f8ec
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8029f8ec:
    extsh.  r0, r31
    ble-    branch_0x8029f8fc
    mr      r3, r30
    bl      __dl__FPv
branch_0x8029f8fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__12TWaterSplashFv
__ct__12TWaterSplashFv: # 0x8029f918
    blr


.globl searchF__53TNameRefAryT_18TStagePositionInfo_Q26JDrama8TNameRef_FUsPCc
searchF__53TNameRefAryT_18TStagePositionInfo_Q26JDrama8TNameRef_FUsPCc: # 0x8029f91c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x3c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029f954
    b       branch_0x8029f998

branch_0x8029f954:
    lwz     r31, 0x10(r28)
    b       branch_0x8029f988

branch_0x8029f95c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8029f984
    b       branch_0x8029f998

branch_0x8029f984:
    addi    r31, r31, 0x18
branch_0x8029f988:
    lwz     r0, 0x14(r28)
    cmplw   r31, r0
    bne+    branch_0x8029f95c
    li      r3, 0x0
branch_0x8029f998:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl loadAfter__53TNameRefAryT_18TStagePositionInfo_Q26JDrama8TNameRef_Fv
loadAfter__53TNameRefAryT_18TStagePositionInfo_Q26JDrama8TNameRef_Fv: # 0x8029f9b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r31, 0x10(r30)
    b       branch_0x8029f9f4

branch_0x8029f9dc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x18
branch_0x8029f9f4:
    lwz     r0, 0x14(r30)
    cmplw   r31, r0
    bne+    branch_0x8029f9dc
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl load__53TNameRefAryT_18TStagePositionInfo_Q26JDrama8TNameRef_FR20JSUMemoryInputStream
load__53TNameRefAryT_18TStagePositionInfo_Q26JDrama8TNameRef_FR20JSUMemoryInputStream: # 0x8029fa18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r22, 0x78(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, sp, 0x44
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lis     r3, 0x803e
    lwz     r30, 0x44(sp)
    addi    r0, r3, 0x20f0
    lis     r3, 0x803a
    stw     r0, 0x48(sp)
    addi    r3, r3, 0x3ce8
    stw     r3, 0x4c(sp)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803e
    sth     r3, 0x50(sp)
    subi    r0, r4, 0xb08
    stw     r0, 0x48(sp)
    addi    r31, r28, 0xc
    lwz     r4, 0x10(r28)
    cmplwi  r4, 0x0
    bne-    branch_0x8029fa8c
    li      r3, 0x0
    b       branch_0x8029faac

branch_0x8029fa8c:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2aab
    subi    r3, r3, 0x5555
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r3, r0, r3
branch_0x8029faac:
    cmplw   r30, r3
    ble-    branch_0x8029faec
    subf.   r0, r3, r30
    lwz     r4, 0x8(r31)
    beq-    branch_0x8029fb3c
    subf    r23, r3, r30
    addi    r3, r31, 0x0
    addi    r5, r23, 0x0
    bl      InsertRaw__Q27JGadget74TVector_18TStagePositionInfo_Q27JGadget32TAllocator_18TStagePositionInfo__FP18TStagePositionInfoUl
    lwz     r0, 0x8(r31)
    cmplw   r3, r0
    beq-    branch_0x8029fb3c
    addi    r4, r23, 0x0
    addi    r5, sp, 0x48
    bl      uninitialized_fill_n_P18TStagePositionInfo_Ul_18TStagePositionInfo___3stdFP18TStagePositionInfoUlRC18TStagePositionInfo
    b       branch_0x8029fb3c

branch_0x8029faec:
    cmplwi  r4, 0x0
    bne-    branch_0x8029fafc
    li      r0, 0x0
    b       branch_0x8029fb1c

branch_0x8029fafc:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2aab
    subi    r3, r3, 0x5555
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
branch_0x8029fb1c:
    cmplw   r30, r0
    beq-    branch_0x8029fb3c
    mulli   r0, r30, 0x18
    lwz     r4, 0x4(r31)
    lwz     r5, 0x8(r31)
    addi    r3, r31, 0x0
    add     r4, r4, r0
    bl      erase__Q27JGadget74TVector_18TStagePositionInfo_Q27JGadget32TAllocator_18TStagePositionInfo__FP18TStagePositionInfoP18TStagePositionInfo
branch_0x8029fb3c:
    lis     r3, 0x803e
    subi    r0, r3, 0xb08
    stw     r0, 0x48(sp)
    addi    r3, sp, 0x48
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    lis     r6, 0x803b
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r23, sp, 0x60
    subi    r24, r6, 0xf0c
    addi    r25, r5, 0x184
    addi    r26, r4, 0x160
    addi    r27, r3, 0x1c8
    li      r22, 0x0
    li      r31, 0x0
    b       branch_0x8029fbf4

branch_0x8029fb84:
    stw     r23, 0x40(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x40(sp)
    li      r5, 0x0
    stw     r24, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r25, 0x0(r3)
    stw     r26, 0x0(r3)
    stw     r27, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r29, 0x0
    addi    r4, r23, 0x0
    bl      getType__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    lwz     r0, 0x10(r28)
    addi    r4, r23, 0x0
    add     r3, r0, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    stw     r27, 0x60(sp)
    addi    r3, r23, 0x0
    li      r4, 0x0
    stw     r26, 0x60(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r22, r22, 0x1
    addi    r31, r31, 0x18
branch_0x8029fbf4:
    cmplw   r22, r30
    blt+    branch_0x8029fb84
    lmw     r22, 0x78(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl erase__Q27JGadget74TVector_18TStagePositionInfo_Q27JGadget32TAllocator_18TStagePositionInfo__FP18TStagePositionInfoP18TStagePositionInfo
erase__Q27JGadget74TVector_18TStagePositionInfo_Q27JGadget32TAllocator_18TStagePositionInfo__FP18TStagePositionInfoP18TStagePositionInfo: # 0x8029fc10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r28, r4, 0x0
    addi    r0, r28, 0x0
    addi    r27, r3, 0x0
    lwz     r4, 0x8(r3)
    addi    r3, r5, 0x0
    mr      r5, r0
    bl      copy__Q23std32__copy_18TStagePositionInfo_0_0_FP18TStagePositionInfoP18TStagePositionInfoP18TStagePositionInfo
    addi    r29, r3, 0x0
    lwz     r31, 0x8(r27)
    addi    r30, r29, 0x0
    b       branch_0x8029fc68

branch_0x8029fc4c:
    lwz     r12, 0x0(r30)
    mr      r3, r30
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x18
branch_0x8029fc68:
    cmplw   r30, r31
    bne+    branch_0x8029fc4c
    stw     r29, 0x8(r27)
    mr      r3, r28
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl uninitialized_fill_n_P18TStagePositionInfo_Ul_18TStagePositionInfo___3stdFP18TStagePositionInfoUlRC18TStagePositionInfo
uninitialized_fill_n_P18TStagePositionInfo_Ul_18TStagePositionInfo___3stdFP18TStagePositionInfoUlRC18TStagePositionInfo: # 0x8029fc8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    b       branch_0x8029fccc

branch_0x8029fcb4:
    cmplwi  r29, 0x0
    addi    r3, r29, 0x0
    beq-    branch_0x8029fcc8
    mr      r4, r31
    bl      __ct__18TStagePositionInfoFRC18TStagePositionInfo
branch_0x8029fcc8:
    addi    r29, r29, 0x18
branch_0x8029fccc:
    cmplwi  r30, 0x0
    subi    r30, r30, 0x1
    bne+    branch_0x8029fcb4
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__18TStagePositionInfoFRC18TStagePositionInfo
__ct__18TStagePositionInfoFRC18TStagePositionInfo: # 0x8029fcf4
    lis     r5, 0x803e
    addi    r0, r5, 0x20f0
    stw     r0, 0x0(r3)
    lis     r5, 0x803e
    subi    r0, r5, 0xb08
    lwz     r5, 0x4(r4)
    stw     r5, 0x4(r3)
    lhz     r5, 0x8(r4)
    sth     r5, 0x8(r3)
    stw     r0, 0x0(r3)
    lwz     r5, 0xc(r4)
    lwz     r0, 0x10(r4)
    stw     r5, 0xc(r3)
    stw     r0, 0x10(r3)
    lwz     r0, 0x14(r4)
    stw     r0, 0x14(r3)
    blr


.globl InsertRaw__Q27JGadget74TVector_18TStagePositionInfo_Q27JGadget32TAllocator_18TStagePositionInfo__FP18TStagePositionInfoUl
InsertRaw__Q27JGadget74TVector_18TStagePositionInfo_Q27JGadget32TAllocator_18TStagePositionInfo__FP18TStagePositionInfoUl: # 0x8029fd38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r24, 0x78(sp)
    mr.     r26, r5
    addi    r27, r4, 0x0
    addi    r31, r3, 0x0
    bne-    branch_0x8029fd60
    mr      r3, r27
    b       branch_0x802a01d4

branch_0x8029fd60:
    lwz     r4, 0x4(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x8029fd74
    li      r3, 0x0
    b       branch_0x8029fd94

branch_0x8029fd74:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2aab
    subi    r3, r3, 0x5555
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r3, r0, r3
branch_0x8029fd94:
    lwz     r0, 0xc(r31)
    add     r3, r26, r3
    cmplw   r3, r0
    bgt-    branch_0x802a005c
    mulli   r29, r26, 0x18
    lwz     r25, 0x8(r31)
    add     r0, r27, r29
    cmplw   r0, r25
    mr      r28, r0
    bge-    branch_0x8029ffe8
    subf    r26, r29, r25
    addi    r30, r26, 0x0
    addi    r24, r25, 0x0
    b       branch_0x8029fde8

branch_0x8029fdcc:
    cmplwi  r24, 0x0
    beq-    branch_0x8029fde0
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    bl      __ct__18TStagePositionInfoFRC18TStagePositionInfo
branch_0x8029fde0:
    addi    r24, r24, 0x18
    addi    r26, r26, 0x18
branch_0x8029fde8:
    cmplw   r26, r25
    bne+    branch_0x8029fdcc
    mr      r5, r30
    lwz     r6, 0x8(r31)
    addi    r3, r5, 0x17
    subf    r3, r27, r3
    li      r0, 0x18
    divwu   r3, r3, r0
    cmplw   r5, r27
    ble-    branch_0x8029ffa8
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x8029ff70
branch_0x8029fe1c:
    lwz     r0, -0x14(r5)
    stw     r0, -0x14(r6)
    lhz     r0, -0x10(r5)
    sth     r0, -0x10(r6)
    lwz     r4, -0xc(r5)
    lwz     r0, -0x8(r5)
    stw     r4, -0xc(r6)
    stw     r0, -0x8(r6)
    lwz     r0, -0x4(r5)
    stw     r0, -0x4(r6)
    lwz     r0, -0x2c(r5)
    stw     r0, -0x2c(r6)
    lhz     r0, -0x28(r5)
    sth     r0, -0x28(r6)
    lwz     r4, -0x24(r5)
    lwz     r0, -0x20(r5)
    stw     r4, -0x24(r6)
    stw     r0, -0x20(r6)
    lwz     r0, -0x1c(r5)
    stw     r0, -0x1c(r6)
    lwz     r0, -0x44(r5)
    stw     r0, -0x44(r6)
    lhz     r0, -0x40(r5)
    sth     r0, -0x40(r6)
    lwz     r4, -0x3c(r5)
    lwz     r0, -0x38(r5)
    stw     r4, -0x3c(r6)
    stw     r0, -0x38(r6)
    lwz     r0, -0x34(r5)
    stw     r0, -0x34(r6)
    lwz     r0, -0x5c(r5)
    stw     r0, -0x5c(r6)
    lhz     r0, -0x58(r5)
    sth     r0, -0x58(r6)
    lwz     r4, -0x54(r5)
    lwz     r0, -0x50(r5)
    stw     r4, -0x54(r6)
    stw     r0, -0x50(r6)
    lwz     r0, -0x4c(r5)
    stw     r0, -0x4c(r6)
    lwz     r0, -0x74(r5)
    stw     r0, -0x74(r6)
    lhz     r0, -0x70(r5)
    sth     r0, -0x70(r6)
    lwz     r4, -0x6c(r5)
    lwz     r0, -0x68(r5)
    stw     r4, -0x6c(r6)
    stw     r0, -0x68(r6)
    lwz     r0, -0x64(r5)
    stw     r0, -0x64(r6)
    lwz     r0, -0x8c(r5)
    stw     r0, -0x8c(r6)
    lhz     r0, -0x88(r5)
    sth     r0, -0x88(r6)
    lwz     r4, -0x84(r5)
    lwz     r0, -0x80(r5)
    stw     r4, -0x84(r6)
    stw     r0, -0x80(r6)
    lwz     r0, -0x7c(r5)
    stw     r0, -0x7c(r6)
    lwz     r0, -0xa4(r5)
    stw     r0, -0xa4(r6)
    lhz     r0, -0xa0(r5)
    sth     r0, -0xa0(r6)
    lwz     r4, -0x9c(r5)
    lwz     r0, -0x98(r5)
    stw     r4, -0x9c(r6)
    stw     r0, -0x98(r6)
    lwz     r0, -0x94(r5)
    stw     r0, -0x94(r6)
    lwz     r0, -0xbc(r5)
    stw     r0, -0xbc(r6)
    lhz     r0, -0xb8(r5)
    sth     r0, -0xb8(r6)
    lwz     r4, -0xb4(r5)
    lwz     r0, -0xb0(r5)
    stw     r4, -0xb4(r6)
    stw     r0, -0xb0(r6)
    lwz     r0, -0xac(r5)
    subi    r5, r5, 0xc0
    stw     r0, -0xac(r6)
    subi    r6, r6, 0xc0
    bdnz+      branch_0x8029fe1c
    andi.   r3, r3, 0x7
    beq-    branch_0x8029ffa8
branch_0x8029ff70:
    mtctr   r3
branch_0x8029ff74:
    lwz     r0, -0x14(r5)
    stw     r0, -0x14(r6)
    lhz     r0, -0x10(r5)
    sth     r0, -0x10(r6)
    lwz     r4, -0xc(r5)
    lwz     r0, -0x8(r5)
    stw     r4, -0xc(r6)
    stw     r0, -0x8(r6)
    lwz     r0, -0x4(r5)
    subi    r5, r5, 0x18
    stw     r0, -0x4(r6)
    subi    r6, r6, 0x18
    bdnz+      branch_0x8029ff74
branch_0x8029ffa8:
    mr      r24, r27
    b       branch_0x8029ffcc

branch_0x8029ffb0:
    lwz     r12, 0x0(r24)
    mr      r3, r24
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x18
branch_0x8029ffcc:
    cmplw   r24, r28
    bne+    branch_0x8029ffb0
    lwz     r0, 0x8(r31)
    addi    r3, r27, 0x0
    add     r0, r0, r29
    stw     r0, 0x8(r31)
    b       branch_0x802a01d4

branch_0x8029ffe8:
    addi    r24, r28, 0x0
    addi    r26, r27, 0x0
    b       branch_0x802a0010

branch_0x8029fff4:
    cmplwi  r24, 0x0
    beq-    branch_0x802a0008
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    bl      __ct__18TStagePositionInfoFRC18TStagePositionInfo
branch_0x802a0008:
    addi    r24, r24, 0x18
    addi    r26, r26, 0x18
branch_0x802a0010:
    cmplw   r26, r25
    bne+    branch_0x8029fff4
    lwz     r26, 0x8(r31)
    mr      r24, r27
    b       branch_0x802a0040

branch_0x802a0024:
    lwz     r12, 0x0(r24)
    mr      r3, r24
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x18
branch_0x802a0040:
    cmplw   r24, r26
    bne+    branch_0x802a0024
    lwz     r0, 0x8(r31)
    addi    r3, r27, 0x0
    add     r0, r0, r29
    stw     r0, 0x8(r31)
    b       branch_0x802a01d4

branch_0x802a005c:
    cmplwi  r4, 0x0
    bne-    branch_0x802a006c
    li      r3, 0x0
    b       branch_0x802a008c

branch_0x802a006c:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2aab
    subi    r3, r3, 0x5555
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r3, r0, r3
branch_0x802a008c:
    stw     r3, 0x74(sp)
    lis     r0, 0x4330
    lfd     f2, -0x4d8(rtoc)
    add     r28, r3, r26
    stw     r0, 0x70(sp)
    lfs     f0, 0x10(r31)
    lfd     f1, 0x70(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    bl      __cvt_fp2unsigned
    lwz     r0, 0x14(r31)
    add     r0, r0, r3
    cmplw   r28, r0
    ble-    branch_0x802a00c8
    b       branch_0x802a00cc

branch_0x802a00c8:
    mr      r28, r0
branch_0x802a00cc:
    mulli   r3, r28, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    bne-    branch_0x802a00e4
    lwz     r3, 0x8(r31)
    b       branch_0x802a01d4

branch_0x802a00e4:
    stw     r31, 0x60(sp)
    mr      r29, r30
    stw     r30, 0x64(sp)
    lwz     r25, 0x4(r31)
    b       branch_0x802a0114

branch_0x802a00f8:
    cmplwi  r29, 0x0
    beq-    branch_0x802a010c
    addi    r3, r29, 0x0
    addi    r4, r25, 0x0
    bl      __ct__18TStagePositionInfoFRC18TStagePositionInfo
branch_0x802a010c:
    addi    r29, r29, 0x18
    addi    r25, r25, 0x18
branch_0x802a0114:
    cmplw   r25, r27
    bne+    branch_0x802a00f8
    mulli   r0, r26, 0x18
    lwz     r24, 0x8(r31)
    addi    r25, r27, 0x0
    add     r27, r29, r0
    b       branch_0x802a014c

branch_0x802a0130:
    cmplwi  r27, 0x0
    beq-    branch_0x802a0144
    addi    r3, r27, 0x0
    addi    r4, r25, 0x0
    bl      __ct__18TStagePositionInfoFRC18TStagePositionInfo
branch_0x802a0144:
    addi    r27, r27, 0x18
    addi    r25, r25, 0x18
branch_0x802a014c:
    cmplw   r25, r24
    bne+    branch_0x802a0130
    lwz     r24, 0x8(r31)
    lwz     r25, 0x4(r31)
    b       branch_0x802a017c

branch_0x802a0160:
    lwz     r12, 0x0(r25)
    mr      r3, r25
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x18
branch_0x802a017c:
    cmplw   r25, r24
    bne+    branch_0x802a0160
    lwz     r0, 0x4(r31)
    lis     r3, 0x2aab
    subi    r4, r3, 0x5555
    stw     r0, 0x64(sp)
    lwz     r3, 0x4(r31)
    lwz     r0, 0x8(r31)
    subf    r0, r3, r0
    mulhw   r0, r4, r0
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    add     r0, r26, r0
    mulli   r0, r0, 0x18
    add     r0, r30, r0
    stw     r0, 0x8(r31)
    stw     r30, 0x4(r31)
    stw     r28, 0xc(r31)
    lwz     r3, 0x64(sp)
    bl      __dl__FPv
    mr      r3, r29
branch_0x802a01d4:
    lmw     r24, 0x78(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl searchF__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_FUsPCc
searchF__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_FUsPCc: # 0x802a01e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x40(sp)
    addi    r28, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802a0220
    b       branch_0x802a0264

branch_0x802a0220:
    lwz     r31, 0x10(r28)
    b       branch_0x802a0254

branch_0x802a0228:
    lwz     r3, 0x0(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802a0250
    b       branch_0x802a0264

branch_0x802a0250:
    addi    r31, r31, 0x4
branch_0x802a0254:
    lwz     r0, 0x14(r28)
    cmplw   r31, r0
    bne+    branch_0x802a0228
    li      r3, 0x0
branch_0x802a0264:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl loadAfter__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_Fv
loadAfter__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_Fv: # 0x802a0284
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r31, 0x10(r30)
    b       branch_0x802a02c0

branch_0x802a02a8:
    lwz     r3, 0x0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x4
branch_0x802a02c0:
    lwz     r0, 0x14(r30)
    cmplw   r31, r0
    bne+    branch_0x802a02a8
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl load__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_FR20JSUMemoryInputStream
load__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_FR20JSUMemoryInputStream: # 0x802a02e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r23, 0x3c(sp)
    addi    r23, r3, 0x0
    addi    r30, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r31, 0x1c(sp)
    addi    r24, r23, 0xc
    addi    r3, r24, 0x0
    addi    r4, r31, 0x0
    bl      reserve__Q27JGadget20TVector_pointer_voidFUl
    lis     r6, 0x803b
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r25, sp, 0x24
    subi    r26, r6, 0xf0c
    addi    r27, r5, 0x184
    addi    r28, r4, 0x160
    addi    r29, r3, 0x1c8
    li      r23, 0x0
    b       branch_0x802a03d8

branch_0x802a0350:
    stw     r25, 0x18(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x18(sp)
    li      r5, 0x0
    stw     r26, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r27, 0x0(r3)
    stw     r28, 0x0(r3)
    stw     r29, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    stw     r3, 0x20(sp)
    lwz     r0, 0x20(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802a03c0
    lwz     r4, 0x8(r24)
    addi    r3, r24, 0x0
    addi    r5, sp, 0x20
    bl      insert__Q27JGadget20TVector_pointer_voidFPPvRCPv
    lwz     r3, 0x20(sp)
    mr      r4, r25
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802a03c0:
    stw     r29, 0x24(sp)
    addi    r3, sp, 0x24
    li      r4, 0x0
    stw     r28, 0x24(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r23, r23, 0x1
branch_0x802a03d8:
    cmplw   r23, r31
    blt+    branch_0x802a0350
    lmw     r23, 0x3c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl perform__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_FUlPQ26JDrama9TGraphics
perform__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_FUlPQ26JDrama9TGraphics: # 0x802a03f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x80(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x7c(sp)
    addi    r29, r4, 0x0
    lwz     r4, 0x18(r3)
    addi    r3, sp, 0x54
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x54(sp)
    addi    r31, r31, 0x18
    stw     r0, 0x50(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0x70(sp)
    b       branch_0x802a0460

branch_0x802a043c:
    lwz     r3, 0x70(sp)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0x70(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
branch_0x802a0460:
    stw     r31, 0x4c(sp)
    lwz     r0, 0x70(sp)
    lwz     r3, 0x4c(sp)
    stw     r0, 0x58(sp)
    stw     r3, 0x48(sp)
    lwz     r3, 0x58(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x60(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x5c(sp)
    cmplw   r3, r0
    bne+    branch_0x802a043c
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl searchF__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_FUsPCc
searchF__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_FUsPCc: # 0x802a04b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x80(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x7c(sp)
    addi    r29, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802a04e4
    b       branch_0x802a057c

branch_0x802a04e4:
    lwz     r4, 0x18(r29)
    addi    r3, sp, 0x54
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x54(sp)
    addi    r29, r29, 0x18
    stw     r0, 0x50(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0x70(sp)
    b       branch_0x802a0544

branch_0x802a0508:
    lwz     r3, 0x70(sp)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802a0538
    b       branch_0x802a057c

branch_0x802a0538:
    lwz     r3, 0x70(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
branch_0x802a0544:
    stw     r29, 0x4c(sp)
    lwz     r0, 0x70(sp)
    lwz     r3, 0x4c(sp)
    stw     r0, 0x58(sp)
    stw     r3, 0x48(sp)
    lwz     r3, 0x58(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x60(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x5c(sp)
    cmplw   r3, r0
    bne+    branch_0x802a0508
    li      r3, 0x0
branch_0x802a057c:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl loadAfterSuper__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_Fv
loadAfterSuper__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_Fv: # 0x802a0598
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_Fv
loadAfter__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_Fv: # 0x802a05b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x18(r31)
    addi    r3, sp, 0x4c
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x4c(sp)
    addi    r31, r31, 0x18
    stw     r0, 0x48(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x68(sp)
    b       branch_0x802a0628

branch_0x802a0600:
    lwz     r3, 0x68(sp)
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x68(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
branch_0x802a0628:
    stw     r31, 0x44(sp)
    lwz     r0, 0x68(sp)
    lwz     r3, 0x44(sp)
    stw     r0, 0x50(sp)
    stw     r3, 0x40(sp)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x40(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x58(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x54(sp)
    cmplw   r3, r0
    bne+    branch_0x802a0600
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl loadSuper__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_FR20JSUMemoryInputStream
loadSuper__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_FR20JSUMemoryInputStream: # 0x802a0670
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_FR20JSUMemoryInputStream
load__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_FR20JSUMemoryInputStream: # 0x802a0690
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r22, 0x70(sp)
    mr      r22, r3
    mr      r26, r4
    lwz     r12, 0x0(r22)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r3, r26, 0x0
    addi    r4, sp, 0x50
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lis     r6, 0x803b
    lwz     r28, 0x50(sp)
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r29, r22, 0x10
    addi    r27, sp, 0x3c
    addi    r30, sp, 0x58
    subi    r31, r6, 0xf0c
    addi    r23, r5, 0x184
    addi    r24, r4, 0x160
    addi    r25, r3, 0x1c8
    li      r22, 0x0
    b       branch_0x802a07bc

branch_0x802a0700:
    stw     r30, 0x4c(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x4c(sp)
    li      r5, 0x0
    stw     r31, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r23, 0x0(r3)
    stw     r24, 0x0(r3)
    stw     r25, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r26, 0x0
    addi    r4, r30, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    stw     r3, 0x54(sp)
    lwz     r0, 0x54(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802a07a4
    addi    r3, sp, 0x2c
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2c(sp)
    addi    r3, sp, 0x48
    addi    r4, sp, 0x28
    stw     r0, 0x28(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x48(sp)
    addi    r4, r29, 0x0
    addi    r5, r27, 0x0
    stw     r0, 0x44(sp)
    addi    r3, sp, 0x38
    addi    r6, sp, 0x54
    lwz     r0, 0x44(sp)
    stw     r0, 0x3c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x54(sp)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802a07a4:
    stw     r25, 0x58(sp)
    addi    r3, sp, 0x58
    li      r4, 0x0
    stw     r24, 0x58(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r22, r22, 0x1
branch_0x802a07bc:
    cmpw    r22, r28
    blt+    branch_0x802a0700
    lmw     r22, 0x70(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl searchF__49TNameRefAryT_14TCameraMapTool_Q26JDrama8TNameRef_FUsPCc
searchF__49TNameRefAryT_14TCameraMapTool_Q26JDrama8TNameRef_FUsPCc: # 0x802a07d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x3c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802a0810
    b       branch_0x802a0854

branch_0x802a0810:
    lwz     r31, 0x10(r28)
    b       branch_0x802a0844

branch_0x802a0818:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802a0840
    b       branch_0x802a0854

branch_0x802a0840:
    addi    r31, r31, 0x30
branch_0x802a0844:
    lwz     r0, 0x14(r28)
    cmplw   r31, r0
    bne+    branch_0x802a0818
    li      r3, 0x0
branch_0x802a0854:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl loadAfter__49TNameRefAryT_14TCameraMapTool_Q26JDrama8TNameRef_Fv
loadAfter__49TNameRefAryT_14TCameraMapTool_Q26JDrama8TNameRef_Fv: # 0x802a0874
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r31, 0x10(r30)
    b       branch_0x802a08b0

branch_0x802a0898:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x30
branch_0x802a08b0:
    lwz     r0, 0x14(r30)
    cmplw   r31, r0
    bne+    branch_0x802a0898
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl load__49TNameRefAryT_14TCameraMapTool_Q26JDrama8TNameRef_FR20JSUMemoryInputStream
load__49TNameRefAryT_14TCameraMapTool_Q26JDrama8TNameRef_FR20JSUMemoryInputStream: # 0x802a08d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stmw    r22, 0x90(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, sp, 0x44
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lis     r3, 0x803e
    lwz     r30, 0x44(sp)
    addi    r0, r3, 0x20f0
    lis     r3, 0x803a
    stw     r0, 0x48(sp)
    addi    r3, r3, 0x3cfc
    stw     r3, 0x4c(sp)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x50(sp)
    subi    r0, r4, 0x2d78
    stw     r0, 0x48(sp)
    addi    r31, r28, 0xc
    lwz     r4, 0x10(r28)
    cmplwi  r4, 0x0
    bne-    branch_0x802a0948
    li      r3, 0x0
    b       branch_0x802a0968

branch_0x802a0948:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2aab
    subi    r3, r3, 0x5555
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r3, r0, r3
branch_0x802a0968:
    cmplw   r30, r3
    ble-    branch_0x802a09a8
    subf.   r0, r3, r30
    lwz     r4, 0x8(r31)
    beq-    branch_0x802a09f8
    subf    r23, r3, r30
    addi    r3, r31, 0x0
    addi    r5, r23, 0x0
    bl      InsertRaw__Q27JGadget66TVector_14TCameraMapTool_Q27JGadget28TAllocator_14TCameraMapTool__FP14TCameraMapToolUl
    lwz     r0, 0x8(r31)
    cmplw   r3, r0
    beq-    branch_0x802a09f8
    addi    r4, r23, 0x0
    addi    r5, sp, 0x48
    bl      uninitialized_fill_n_P14TCameraMapTool_Ul_14TCameraMapTool___3stdFP14TCameraMapToolUlRC14TCameraMapTool
    b       branch_0x802a09f8

branch_0x802a09a8:
    cmplwi  r4, 0x0
    bne-    branch_0x802a09b8
    li      r0, 0x0
    b       branch_0x802a09d8

branch_0x802a09b8:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2aab
    subi    r3, r3, 0x5555
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r0, r0, r3
branch_0x802a09d8:
    cmplw   r30, r0
    beq-    branch_0x802a09f8
    mulli   r0, r30, 0x30
    lwz     r4, 0x4(r31)
    lwz     r5, 0x8(r31)
    addi    r3, r31, 0x0
    add     r4, r4, r0
    bl      erase__Q27JGadget66TVector_14TCameraMapTool_Q27JGadget28TAllocator_14TCameraMapTool__FP14TCameraMapToolP14TCameraMapTool
branch_0x802a09f8:
    lis     r3, 0x803b
    subi    r0, r3, 0x2d78
    stw     r0, 0x48(sp)
    addi    r3, sp, 0x48
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    lis     r6, 0x803b
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r23, sp, 0x78
    subi    r24, r6, 0xf0c
    addi    r25, r5, 0x184
    addi    r26, r4, 0x160
    addi    r27, r3, 0x1c8
    li      r22, 0x0
    li      r31, 0x0
    b       branch_0x802a0ab0

branch_0x802a0a40:
    stw     r23, 0x40(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x40(sp)
    li      r5, 0x0
    stw     r24, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r25, 0x0(r3)
    stw     r26, 0x0(r3)
    stw     r27, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r29, 0x0
    addi    r4, r23, 0x0
    bl      getType__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    lwz     r0, 0x10(r28)
    addi    r4, r23, 0x0
    add     r3, r0, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    stw     r27, 0x78(sp)
    addi    r3, r23, 0x0
    li      r4, 0x0
    stw     r26, 0x78(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r22, r22, 0x1
    addi    r31, r31, 0x30
branch_0x802a0ab0:
    cmplw   r22, r30
    blt+    branch_0x802a0a40
    lmw     r22, 0x90(sp)
    lwz     r0, 0xbc(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl erase__Q27JGadget66TVector_14TCameraMapTool_Q27JGadget28TAllocator_14TCameraMapTool__FP14TCameraMapToolP14TCameraMapTool
erase__Q27JGadget66TVector_14TCameraMapTool_Q27JGadget28TAllocator_14TCameraMapTool__FP14TCameraMapToolP14TCameraMapTool: # 0x802a0acc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r28, r4, 0x0
    addi    r0, r28, 0x0
    addi    r27, r3, 0x0
    lwz     r4, 0x8(r3)
    addi    r3, r5, 0x0
    mr      r5, r0
    bl      copy__Q23std28__copy_14TCameraMapTool_0_0_FP14TCameraMapToolP14TCameraMapToolP14TCameraMapTool
    addi    r29, r3, 0x0
    lwz     r31, 0x8(r27)
    addi    r30, r29, 0x0
    b       branch_0x802a0b24

branch_0x802a0b08:
    lwz     r12, 0x0(r30)
    mr      r3, r30
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x30
branch_0x802a0b24:
    cmplw   r30, r31
    bne+    branch_0x802a0b08
    stw     r29, 0x8(r27)
    mr      r3, r28
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl uninitialized_fill_n_P14TCameraMapTool_Ul_14TCameraMapTool___3stdFP14TCameraMapToolUlRC14TCameraMapTool
uninitialized_fill_n_P14TCameraMapTool_Ul_14TCameraMapTool___3stdFP14TCameraMapToolUlRC14TCameraMapTool: # 0x802a0b48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    b       branch_0x802a0b88

branch_0x802a0b70:
    cmplwi  r29, 0x0
    addi    r3, r29, 0x0
    beq-    branch_0x802a0b84
    mr      r4, r31
    bl      __ct__14TCameraMapToolFRC14TCameraMapTool
branch_0x802a0b84:
    addi    r29, r29, 0x30
branch_0x802a0b88:
    cmplwi  r30, 0x0
    subi    r30, r30, 0x1
    bne+    branch_0x802a0b70
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__14TCameraMapToolFRC14TCameraMapTool
__ct__14TCameraMapToolFRC14TCameraMapTool: # 0x802a0bb0
    lis     r5, 0x803e
    addi    r0, r5, 0x20f0
    stw     r0, 0x0(r3)
    lis     r5, 0x803b
    subi    r0, r5, 0x2d78
    lwz     r5, 0x4(r4)
    stw     r5, 0x4(r3)
    lhz     r5, 0x8(r4)
    sth     r5, 0x8(r3)
    stw     r0, 0x0(r3)
    lwz     r5, 0xc(r4)
    lwz     r0, 0x10(r4)
    stw     r5, 0xc(r3)
    stw     r0, 0x10(r3)
    lwz     r0, 0x14(r4)
    stw     r0, 0x14(r3)
    lwz     r5, 0x18(r4)
    lwz     r0, 0x1c(r4)
    stw     r5, 0x18(r3)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x20(r4)
    stw     r0, 0x20(r3)
    lwz     r0, 0x24(r4)
    stw     r0, 0x24(r3)
    lwz     r0, 0x28(r4)
    stw     r0, 0x28(r3)
    lwz     r0, 0x2c(r4)
    stw     r0, 0x2c(r3)
    blr


.globl InsertRaw__Q27JGadget66TVector_14TCameraMapTool_Q27JGadget28TAllocator_14TCameraMapTool__FP14TCameraMapToolUl
InsertRaw__Q27JGadget66TVector_14TCameraMapTool_Q27JGadget28TAllocator_14TCameraMapTool__FP14TCameraMapToolUl: # 0x802a0c24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r24, 0x78(sp)
    mr.     r26, r5
    addi    r27, r4, 0x0
    addi    r31, r3, 0x0
    bne-    branch_0x802a0c4c
    mr      r3, r27
    b       branch_0x802a1110

branch_0x802a0c4c:
    lwz     r4, 0x4(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x802a0c60
    li      r3, 0x0
    b       branch_0x802a0c80

branch_0x802a0c60:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2aab
    subi    r3, r3, 0x5555
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r3, r0, r3
branch_0x802a0c80:
    lwz     r0, 0xc(r31)
    add     r3, r26, r3
    cmplw   r3, r0
    bgt-    branch_0x802a0f98
    mulli   r29, r26, 0x30
    lwz     r25, 0x8(r31)
    add     r0, r27, r29
    cmplw   r0, r25
    mr      r28, r0
    bge-    branch_0x802a0f24
    subf    r26, r29, r25
    addi    r30, r26, 0x0
    addi    r24, r25, 0x0
    b       branch_0x802a0cd4

branch_0x802a0cb8:
    cmplwi  r24, 0x0
    beq-    branch_0x802a0ccc
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    bl      __ct__14TCameraMapToolFRC14TCameraMapTool
branch_0x802a0ccc:
    addi    r24, r24, 0x30
    addi    r26, r26, 0x30
branch_0x802a0cd4:
    cmplw   r26, r25
    bne+    branch_0x802a0cb8
    mr      r5, r30
    lwz     r6, 0x8(r31)
    addi    r3, r5, 0x2f
    subf    r3, r27, r3
    li      r0, 0x30
    divwu   r3, r3, r0
    cmplw   r5, r27
    ble-    branch_0x802a0ee4
    srwi.   r0, r3, 2
    mtctr   r0
    beq-    branch_0x802a0e7c
branch_0x802a0d08:
    lwz     r0, -0x2c(r5)
    stw     r0, -0x2c(r6)
    lhz     r0, -0x28(r5)
    sth     r0, -0x28(r6)
    lwz     r4, -0x24(r5)
    lwz     r0, -0x20(r5)
    stw     r4, -0x24(r6)
    stw     r0, -0x20(r6)
    lwz     r0, -0x1c(r5)
    stw     r0, -0x1c(r6)
    lwz     r4, -0x18(r5)
    lwz     r0, -0x14(r5)
    stw     r4, -0x18(r6)
    stw     r0, -0x14(r6)
    lwz     r0, -0x10(r5)
    stw     r0, -0x10(r6)
    lwz     r0, -0xc(r5)
    stw     r0, -0xc(r6)
    lwz     r0, -0x8(r5)
    stw     r0, -0x8(r6)
    lwz     r0, -0x4(r5)
    stw     r0, -0x4(r6)
    lwz     r0, -0x5c(r5)
    stw     r0, -0x5c(r6)
    lhz     r0, -0x58(r5)
    sth     r0, -0x58(r6)
    lwz     r4, -0x54(r5)
    lwz     r0, -0x50(r5)
    stw     r4, -0x54(r6)
    stw     r0, -0x50(r6)
    lwz     r0, -0x4c(r5)
    stw     r0, -0x4c(r6)
    lwz     r4, -0x48(r5)
    lwz     r0, -0x44(r5)
    stw     r4, -0x48(r6)
    stw     r0, -0x44(r6)
    lwz     r0, -0x40(r5)
    stw     r0, -0x40(r6)
    lwz     r0, -0x3c(r5)
    stw     r0, -0x3c(r6)
    lwz     r0, -0x38(r5)
    stw     r0, -0x38(r6)
    lwz     r0, -0x34(r5)
    stw     r0, -0x34(r6)
    lwz     r0, -0x8c(r5)
    stw     r0, -0x8c(r6)
    lhz     r0, -0x88(r5)
    sth     r0, -0x88(r6)
    lwz     r4, -0x84(r5)
    lwz     r0, -0x80(r5)
    stw     r4, -0x84(r6)
    stw     r0, -0x80(r6)
    lwz     r0, -0x7c(r5)
    stw     r0, -0x7c(r6)
    lwz     r4, -0x78(r5)
    lwz     r0, -0x74(r5)
    stw     r4, -0x78(r6)
    stw     r0, -0x74(r6)
    lwz     r0, -0x70(r5)
    stw     r0, -0x70(r6)
    lwz     r0, -0x6c(r5)
    stw     r0, -0x6c(r6)
    lwz     r0, -0x68(r5)
    stw     r0, -0x68(r6)
    lwz     r0, -0x64(r5)
    stw     r0, -0x64(r6)
    lwz     r0, -0xbc(r5)
    stw     r0, -0xbc(r6)
    lhz     r0, -0xb8(r5)
    sth     r0, -0xb8(r6)
    lwz     r4, -0xb4(r5)
    lwz     r0, -0xb0(r5)
    stw     r4, -0xb4(r6)
    stw     r0, -0xb0(r6)
    lwz     r0, -0xac(r5)
    stw     r0, -0xac(r6)
    lwz     r4, -0xa8(r5)
    lwz     r0, -0xa4(r5)
    stw     r4, -0xa8(r6)
    stw     r0, -0xa4(r6)
    lwz     r0, -0xa0(r5)
    stw     r0, -0xa0(r6)
    lwz     r0, -0x9c(r5)
    stw     r0, -0x9c(r6)
    lwz     r0, -0x98(r5)
    stw     r0, -0x98(r6)
    lwz     r0, -0x94(r5)
    subi    r5, r5, 0xc0
    stw     r0, -0x94(r6)
    subi    r6, r6, 0xc0
    bdnz+      branch_0x802a0d08
    andi.   r3, r3, 0x3
    beq-    branch_0x802a0ee4
branch_0x802a0e7c:
    mtctr   r3
branch_0x802a0e80:
    lwz     r0, -0x2c(r5)
    stw     r0, -0x2c(r6)
    lhz     r0, -0x28(r5)
    sth     r0, -0x28(r6)
    lwz     r4, -0x24(r5)
    lwz     r0, -0x20(r5)
    stw     r4, -0x24(r6)
    stw     r0, -0x20(r6)
    lwz     r0, -0x1c(r5)
    stw     r0, -0x1c(r6)
    lwz     r4, -0x18(r5)
    lwz     r0, -0x14(r5)
    stw     r4, -0x18(r6)
    stw     r0, -0x14(r6)
    lwz     r0, -0x10(r5)
    stw     r0, -0x10(r6)
    lwz     r0, -0xc(r5)
    stw     r0, -0xc(r6)
    lwz     r0, -0x8(r5)
    stw     r0, -0x8(r6)
    lwz     r0, -0x4(r5)
    subi    r5, r5, 0x30
    stw     r0, -0x4(r6)
    subi    r6, r6, 0x30
    bdnz+      branch_0x802a0e80
branch_0x802a0ee4:
    mr      r24, r27
    b       branch_0x802a0f08

branch_0x802a0eec:
    lwz     r12, 0x0(r24)
    mr      r3, r24
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x30
branch_0x802a0f08:
    cmplw   r24, r28
    bne+    branch_0x802a0eec
    lwz     r0, 0x8(r31)
    addi    r3, r27, 0x0
    add     r0, r0, r29
    stw     r0, 0x8(r31)
    b       branch_0x802a1110

branch_0x802a0f24:
    addi    r24, r28, 0x0
    addi    r26, r27, 0x0
    b       branch_0x802a0f4c

branch_0x802a0f30:
    cmplwi  r24, 0x0
    beq-    branch_0x802a0f44
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    bl      __ct__14TCameraMapToolFRC14TCameraMapTool
branch_0x802a0f44:
    addi    r24, r24, 0x30
    addi    r26, r26, 0x30
branch_0x802a0f4c:
    cmplw   r26, r25
    bne+    branch_0x802a0f30
    lwz     r26, 0x8(r31)
    mr      r24, r27
    b       branch_0x802a0f7c

branch_0x802a0f60:
    lwz     r12, 0x0(r24)
    mr      r3, r24
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x30
branch_0x802a0f7c:
    cmplw   r24, r26
    bne+    branch_0x802a0f60
    lwz     r0, 0x8(r31)
    addi    r3, r27, 0x0
    add     r0, r0, r29
    stw     r0, 0x8(r31)
    b       branch_0x802a1110

branch_0x802a0f98:
    cmplwi  r4, 0x0
    bne-    branch_0x802a0fa8
    li      r3, 0x0
    b       branch_0x802a0fc8

branch_0x802a0fa8:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2aab
    subi    r3, r3, 0x5555
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r3, r0, r3
branch_0x802a0fc8:
    stw     r3, 0x74(sp)
    lis     r0, 0x4330
    lfd     f2, -0x4d8(rtoc)
    add     r28, r3, r26
    stw     r0, 0x70(sp)
    lfs     f0, 0x10(r31)
    lfd     f1, 0x70(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    bl      __cvt_fp2unsigned
    lwz     r0, 0x14(r31)
    add     r0, r0, r3
    cmplw   r28, r0
    ble-    branch_0x802a1004
    b       branch_0x802a1008

branch_0x802a1004:
    mr      r28, r0
branch_0x802a1008:
    mulli   r3, r28, 0x30
    bl      __nw__FUl
    mr.     r30, r3
    bne-    branch_0x802a1020
    lwz     r3, 0x8(r31)
    b       branch_0x802a1110

branch_0x802a1020:
    stw     r31, 0x60(sp)
    mr      r29, r30
    stw     r30, 0x64(sp)
    lwz     r25, 0x4(r31)
    b       branch_0x802a1050

branch_0x802a1034:
    cmplwi  r29, 0x0
    beq-    branch_0x802a1048
    addi    r3, r29, 0x0
    addi    r4, r25, 0x0
    bl      __ct__14TCameraMapToolFRC14TCameraMapTool
branch_0x802a1048:
    addi    r29, r29, 0x30
    addi    r25, r25, 0x30
branch_0x802a1050:
    cmplw   r25, r27
    bne+    branch_0x802a1034
    mulli   r0, r26, 0x30
    lwz     r24, 0x8(r31)
    addi    r25, r27, 0x0
    add     r27, r29, r0
    b       branch_0x802a1088

branch_0x802a106c:
    cmplwi  r27, 0x0
    beq-    branch_0x802a1080
    addi    r3, r27, 0x0
    addi    r4, r25, 0x0
    bl      __ct__14TCameraMapToolFRC14TCameraMapTool
branch_0x802a1080:
    addi    r27, r27, 0x30
    addi    r25, r25, 0x30
branch_0x802a1088:
    cmplw   r25, r24
    bne+    branch_0x802a106c
    lwz     r24, 0x8(r31)
    lwz     r25, 0x4(r31)
    b       branch_0x802a10b8

branch_0x802a109c:
    lwz     r12, 0x0(r25)
    mr      r3, r25
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x30
branch_0x802a10b8:
    cmplw   r25, r24
    bne+    branch_0x802a109c
    lwz     r0, 0x4(r31)
    lis     r3, 0x2aab
    subi    r4, r3, 0x5555
    stw     r0, 0x64(sp)
    lwz     r3, 0x4(r31)
    lwz     r0, 0x8(r31)
    subf    r0, r3, r0
    mulhw   r0, r4, r0
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r0, r0, r3
    add     r0, r26, r0
    mulli   r0, r0, 0x30
    add     r0, r30, r0
    stw     r0, 0x8(r31)
    stw     r30, 0x4(r31)
    stw     r28, 0xc(r31)
    lwz     r3, 0x64(sp)
    bl      __dl__FPv
    mr      r3, r29
branch_0x802a1110:
    lmw     r24, 0x78(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl searchF__93TNameRefPtrAryT_55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef__Q26JDrama8TNameRef_FUsPCc
searchF__93TNameRefPtrAryT_55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef__Q26JDrama8TNameRef_FUsPCc: # 0x802a1124
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x40(sp)
    addi    r28, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802a115c
    b       branch_0x802a11a0

branch_0x802a115c:
    lwz     r31, 0x10(r28)
    b       branch_0x802a1190

branch_0x802a1164:
    lwz     r3, 0x0(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802a118c
    b       branch_0x802a11a0

branch_0x802a118c:
    addi    r31, r31, 0x4
branch_0x802a1190:
    lwz     r0, 0x14(r28)
    cmplw   r31, r0
    bne+    branch_0x802a1164
    li      r3, 0x0
branch_0x802a11a0:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl loadAfter__93TNameRefPtrAryT_55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef__Q26JDrama8TNameRef_Fv
loadAfter__93TNameRefPtrAryT_55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef__Q26JDrama8TNameRef_Fv: # 0x802a11c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r31, 0x10(r30)
    b       branch_0x802a11fc

branch_0x802a11e4:
    lwz     r3, 0x0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x4
branch_0x802a11fc:
    lwz     r0, 0x14(r30)
    cmplw   r31, r0
    bne+    branch_0x802a11e4
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl load__93TNameRefPtrAryT_55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef__Q26JDrama8TNameRef_FR20JSUMemoryInputStream
load__93TNameRefPtrAryT_55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef__Q26JDrama8TNameRef_FR20JSUMemoryInputStream: # 0x802a1220
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r23, 0x3c(sp)
    addi    r23, r3, 0x0
    addi    r30, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r31, 0x1c(sp)
    addi    r24, r23, 0xc
    addi    r3, r24, 0x0
    addi    r4, r31, 0x0
    bl      reserve__Q27JGadget20TVector_pointer_voidFUl
    lis     r6, 0x803b
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r25, sp, 0x24
    subi    r26, r6, 0xf0c
    addi    r27, r5, 0x184
    addi    r28, r4, 0x160
    addi    r29, r3, 0x1c8
    li      r23, 0x0
    b       branch_0x802a1314

branch_0x802a128c:
    stw     r25, 0x18(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x18(sp)
    li      r5, 0x0
    stw     r26, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r27, 0x0(r3)
    stw     r28, 0x0(r3)
    stw     r29, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    stw     r3, 0x20(sp)
    lwz     r0, 0x20(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802a12fc
    lwz     r4, 0x8(r24)
    addi    r3, r24, 0x0
    addi    r5, sp, 0x20
    bl      insert__Q27JGadget20TVector_pointer_voidFPPvRCPv
    lwz     r3, 0x20(sp)
    mr      r4, r25
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802a12fc:
    stw     r29, 0x24(sp)
    addi    r3, sp, 0x24
    li      r4, 0x0
    stw     r28, 0x24(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r23, r23, 0x1
branch_0x802a1314:
    cmplw   r23, r31
    blt+    branch_0x802a128c
    lmw     r23, 0x3c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl searchF__55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef_FUsPCc
searchF__55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef_FUsPCc: # 0x802a1330
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x3c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802a1368
    b       branch_0x802a13ac

branch_0x802a1368:
    lwz     r31, 0x10(r28)
    b       branch_0x802a139c

branch_0x802a1370:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802a1398
    b       branch_0x802a13ac

branch_0x802a1398:
    addi    r31, r31, 0x10
branch_0x802a139c:
    lwz     r0, 0x14(r28)
    cmplw   r31, r0
    bne+    branch_0x802a1370
    li      r3, 0x0
branch_0x802a13ac:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl loadAfter__55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef_Fv
loadAfter__55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef_Fv: # 0x802a13cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r31, 0x10(r30)
    b       branch_0x802a1408

branch_0x802a13f0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x10
branch_0x802a1408:
    lwz     r0, 0x14(r30)
    cmplw   r31, r0
    bne+    branch_0x802a13f0
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl load__55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef_FR20JSUMemoryInputStream
load__55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef_FR20JSUMemoryInputStream: # 0x802a142c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r22, 0x70(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, sp, 0x44
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lis     r3, 0x803e
    lwz     r31, 0x44(sp)
    addi    r0, r3, 0x20f0
    lis     r3, 0x803a
    stw     r0, 0x48(sp)
    addi    r3, r3, 0x3d10
    stw     r3, 0x4c(sp)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803e
    sth     r3, 0x50(sp)
    subi    r0, r4, 0xba8
    stw     r0, 0x48(sp)
    addi    r23, r29, 0xc
    lwz     r4, 0x10(r29)
    cmplwi  r4, 0x0
    bne-    branch_0x802a14a0
    li      r3, 0x0
    b       branch_0x802a14b0

branch_0x802a14a0:
    lwz     r0, 0x8(r23)
    subf    r0, r4, r0
    srawi   r3, r0, 4
    addze   r3, r3
branch_0x802a14b0:
    cmplw   r31, r3
    ble-    branch_0x802a14f0
    subf.   r0, r3, r31
    lwz     r4, 0x8(r23)
    beq-    branch_0x802a1530
    subf    r24, r3, r31
    addi    r3, r23, 0x0
    addi    r5, r24, 0x0
    bl      InsertRaw__Q27JGadget78TVector_20TScenarioArchiveName_Q27JGadget34TAllocator_20TScenarioArchiveName__FP20TScenarioArchiveNameUl
    lwz     r0, 0x8(r23)
    cmplw   r3, r0
    beq-    branch_0x802a1530
    addi    r4, r24, 0x0
    addi    r5, sp, 0x48
    bl      uninitialized_fill_n_P20TScenarioArchiveName_Ul_20TScenarioArchiveName___3stdFP20TScenarioArchiveNameUlRC20TScenarioArchiveName
    b       branch_0x802a1530

branch_0x802a14f0:
    cmplwi  r4, 0x0
    bne-    branch_0x802a1500
    li      r0, 0x0
    b       branch_0x802a1510

branch_0x802a1500:
    lwz     r0, 0x8(r23)
    subf    r0, r4, r0
    srawi   r0, r0, 4
    addze   r0, r0
branch_0x802a1510:
    cmplw   r31, r0
    beq-    branch_0x802a1530
    lwz     r4, 0x4(r23)
    slwi    r0, r31, 4
    lwz     r5, 0x8(r23)
    addi    r3, r23, 0x0
    add     r4, r4, r0
    bl      erase__Q27JGadget78TVector_20TScenarioArchiveName_Q27JGadget34TAllocator_20TScenarioArchiveName__FP20TScenarioArchiveNameP20TScenarioArchiveName
branch_0x802a1530:
    lis     r3, 0x803e
    subi    r0, r3, 0xba8
    stw     r0, 0x48(sp)
    addi    r3, sp, 0x48
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    lis     r6, 0x803b
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r23, sp, 0x58
    subi    r24, r6, 0xf0c
    addi    r25, r5, 0x184
    addi    r26, r4, 0x160
    addi    r27, r3, 0x1c8
    li      r22, 0x0
    li      r28, 0x0
    b       branch_0x802a15e8

branch_0x802a1578:
    stw     r23, 0x40(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x40(sp)
    li      r5, 0x0
    stw     r24, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r25, 0x0(r3)
    stw     r26, 0x0(r3)
    stw     r27, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    bl      getType__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    lwz     r0, 0x10(r29)
    addi    r4, r23, 0x0
    add     r3, r0, r28
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    stw     r27, 0x58(sp)
    addi    r3, r23, 0x0
    li      r4, 0x0
    stw     r26, 0x58(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r22, r22, 0x1
    addi    r28, r28, 0x10
branch_0x802a15e8:
    cmplw   r22, r31
    blt+    branch_0x802a1578
    lmw     r22, 0x70(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl erase__Q27JGadget78TVector_20TScenarioArchiveName_Q27JGadget34TAllocator_20TScenarioArchiveName__FP20TScenarioArchiveNameP20TScenarioArchiveName
erase__Q27JGadget78TVector_20TScenarioArchiveName_Q27JGadget34TAllocator_20TScenarioArchiveName__FP20TScenarioArchiveNameP20TScenarioArchiveName: # 0x802a1604
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r28, r4, 0x0
    addi    r0, r28, 0x0
    addi    r27, r3, 0x0
    lwz     r4, 0x8(r3)
    addi    r3, r5, 0x0
    mr      r5, r0
    bl      copy__Q23std34__copy_20TScenarioArchiveName_0_0_FP20TScenarioArchiveNameP20TScenarioArchiveNameP20TScenarioArchiveName
    addi    r29, r3, 0x0
    lwz     r31, 0x8(r27)
    addi    r30, r29, 0x0
    b       branch_0x802a165c

branch_0x802a1640:
    lwz     r12, 0x0(r30)
    mr      r3, r30
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x10
branch_0x802a165c:
    cmplw   r30, r31
    bne+    branch_0x802a1640
    stw     r29, 0x8(r27)
    mr      r3, r28
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl uninitialized_fill_n_P20TScenarioArchiveName_Ul_20TScenarioArchiveName___3stdFP20TScenarioArchiveNameUlRC20TScenarioArchiveName
uninitialized_fill_n_P20TScenarioArchiveName_Ul_20TScenarioArchiveName___3stdFP20TScenarioArchiveNameUlRC20TScenarioArchiveName: # 0x802a1680
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    b       branch_0x802a16c0

branch_0x802a16a8:
    cmplwi  r29, 0x0
    addi    r3, r29, 0x0
    beq-    branch_0x802a16bc
    mr      r4, r31
    bl      __ct__20TScenarioArchiveNameFRC20TScenarioArchiveName
branch_0x802a16bc:
    addi    r29, r29, 0x10
branch_0x802a16c0:
    cmplwi  r30, 0x0
    subi    r30, r30, 0x1
    bne+    branch_0x802a16a8
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__20TScenarioArchiveNameFRC20TScenarioArchiveName
__ct__20TScenarioArchiveNameFRC20TScenarioArchiveName: # 0x802a16e8
    lis     r5, 0x803e
    addi    r0, r5, 0x20f0
    stw     r0, 0x0(r3)
    lis     r5, 0x803e
    subi    r0, r5, 0xba8
    lwz     r5, 0x4(r4)
    stw     r5, 0x4(r3)
    lhz     r5, 0x8(r4)
    sth     r5, 0x8(r3)
    stw     r0, 0x0(r3)
    lwz     r0, 0xc(r4)
    stw     r0, 0xc(r3)
    blr


.globl InsertRaw__Q27JGadget78TVector_20TScenarioArchiveName_Q27JGadget34TAllocator_20TScenarioArchiveName__FP20TScenarioArchiveNameUl
InsertRaw__Q27JGadget78TVector_20TScenarioArchiveName_Q27JGadget34TAllocator_20TScenarioArchiveName__FP20TScenarioArchiveNameUl: # 0x802a171c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r24, 0x78(sp)
    mr.     r26, r5
    addi    r27, r4, 0x0
    addi    r31, r3, 0x0
    bne-    branch_0x802a1744
    mr      r3, r27
    b       branch_0x802a1af4

branch_0x802a1744:
    lwz     r4, 0x4(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x802a1758
    li      r3, 0x0
    b       branch_0x802a1768

branch_0x802a1758:
    lwz     r0, 0x8(r31)
    subf    r0, r4, r0
    srawi   r3, r0, 4
    addze   r3, r3
branch_0x802a1768:
    lwz     r0, 0xc(r31)
    add     r3, r26, r3
    cmplw   r3, r0
    bgt-    branch_0x802a199c
    slwi    r29, r26, 4
    lwz     r25, 0x8(r31)
    add     r0, r27, r29
    cmplw   r0, r25
    mr      r28, r0
    bge-    branch_0x802a1928
    subf    r26, r29, r25
    addi    r30, r26, 0x0
    addi    r24, r25, 0x0
    b       branch_0x802a17bc

branch_0x802a17a0:
    cmplwi  r24, 0x0
    beq-    branch_0x802a17b4
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    bl      __ct__20TScenarioArchiveNameFRC20TScenarioArchiveName
branch_0x802a17b4:
    addi    r24, r24, 0x10
    addi    r26, r26, 0x10
branch_0x802a17bc:
    cmplw   r26, r25
    bne+    branch_0x802a17a0
    mr      r4, r30
    lwz     r5, 0x8(r31)
    addi    r3, r4, 0xf
    subf    r3, r27, r3
    cmplw   r4, r27
    srwi    r3, r3, 4
    ble-    branch_0x802a18e8
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x802a18c0
branch_0x802a17ec:
    lwz     r0, -0xc(r4)
    stw     r0, -0xc(r5)
    lhz     r0, -0x8(r4)
    sth     r0, -0x8(r5)
    lwz     r0, -0x4(r4)
    stw     r0, -0x4(r5)
    lwz     r0, -0x1c(r4)
    stw     r0, -0x1c(r5)
    lhz     r0, -0x18(r4)
    sth     r0, -0x18(r5)
    lwz     r0, -0x14(r4)
    stw     r0, -0x14(r5)
    lwz     r0, -0x2c(r4)
    stw     r0, -0x2c(r5)
    lhz     r0, -0x28(r4)
    sth     r0, -0x28(r5)
    lwz     r0, -0x24(r4)
    stw     r0, -0x24(r5)
    lwz     r0, -0x3c(r4)
    stw     r0, -0x3c(r5)
    lhz     r0, -0x38(r4)
    sth     r0, -0x38(r5)
    lwz     r0, -0x34(r4)
    stw     r0, -0x34(r5)
    lwz     r0, -0x4c(r4)
    stw     r0, -0x4c(r5)
    lhz     r0, -0x48(r4)
    sth     r0, -0x48(r5)
    lwz     r0, -0x44(r4)
    stw     r0, -0x44(r5)
    lwz     r0, -0x5c(r4)
    stw     r0, -0x5c(r5)
    lhz     r0, -0x58(r4)
    sth     r0, -0x58(r5)
    lwz     r0, -0x54(r4)
    stw     r0, -0x54(r5)
    lwz     r0, -0x6c(r4)
    stw     r0, -0x6c(r5)
    lhz     r0, -0x68(r4)
    sth     r0, -0x68(r5)
    lwz     r0, -0x64(r4)
    stw     r0, -0x64(r5)
    lwz     r0, -0x7c(r4)
    stw     r0, -0x7c(r5)
    lhz     r0, -0x78(r4)
    sth     r0, -0x78(r5)
    lwz     r0, -0x74(r4)
    subi    r4, r4, 0x80
    stw     r0, -0x74(r5)
    subi    r5, r5, 0x80
    bdnz+      branch_0x802a17ec
    andi.   r3, r3, 0x7
    beq-    branch_0x802a18e8
branch_0x802a18c0:
    mtctr   r3
branch_0x802a18c4:
    lwz     r0, -0xc(r4)
    stw     r0, -0xc(r5)
    lhz     r0, -0x8(r4)
    sth     r0, -0x8(r5)
    lwz     r0, -0x4(r4)
    subi    r4, r4, 0x10
    stw     r0, -0x4(r5)
    subi    r5, r5, 0x10
    bdnz+      branch_0x802a18c4
branch_0x802a18e8:
    mr      r24, r27
    b       branch_0x802a190c

branch_0x802a18f0:
    lwz     r12, 0x0(r24)
    mr      r3, r24
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x10
branch_0x802a190c:
    cmplw   r24, r28
    bne+    branch_0x802a18f0
    lwz     r0, 0x8(r31)
    addi    r3, r27, 0x0
    add     r0, r0, r29
    stw     r0, 0x8(r31)
    b       branch_0x802a1af4

branch_0x802a1928:
    addi    r24, r28, 0x0
    addi    r26, r27, 0x0
    b       branch_0x802a1950

branch_0x802a1934:
    cmplwi  r24, 0x0
    beq-    branch_0x802a1948
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    bl      __ct__20TScenarioArchiveNameFRC20TScenarioArchiveName
branch_0x802a1948:
    addi    r24, r24, 0x10
    addi    r26, r26, 0x10
branch_0x802a1950:
    cmplw   r26, r25
    bne+    branch_0x802a1934
    lwz     r26, 0x8(r31)
    mr      r24, r27
    b       branch_0x802a1980

branch_0x802a1964:
    lwz     r12, 0x0(r24)
    mr      r3, r24
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x10
branch_0x802a1980:
    cmplw   r24, r26
    bne+    branch_0x802a1964
    lwz     r0, 0x8(r31)
    addi    r3, r27, 0x0
    add     r0, r0, r29
    stw     r0, 0x8(r31)
    b       branch_0x802a1af4

branch_0x802a199c:
    cmplwi  r4, 0x0
    bne-    branch_0x802a19ac
    li      r3, 0x0
    b       branch_0x802a19bc

branch_0x802a19ac:
    lwz     r0, 0x8(r31)
    subf    r0, r4, r0
    srawi   r3, r0, 4
    addze   r3, r3
branch_0x802a19bc:
    stw     r3, 0x74(sp)
    lis     r0, 0x4330
    lfd     f2, -0x4d8(rtoc)
    add     r28, r3, r26
    stw     r0, 0x70(sp)
    lfs     f0, 0x10(r31)
    lfd     f1, 0x70(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    bl      __cvt_fp2unsigned
    lwz     r0, 0x14(r31)
    add     r0, r0, r3
    cmplw   r28, r0
    ble-    branch_0x802a19f8
    b       branch_0x802a19fc

branch_0x802a19f8:
    mr      r28, r0
branch_0x802a19fc:
    slwi    r3, r28, 4
    bl      __nw__FUl
    mr.     r30, r3
    bne-    branch_0x802a1a14
    lwz     r3, 0x8(r31)
    b       branch_0x802a1af4

branch_0x802a1a14:
    stw     r31, 0x60(sp)
    mr      r29, r30
    stw     r30, 0x64(sp)
    lwz     r25, 0x4(r31)
    b       branch_0x802a1a44

branch_0x802a1a28:
    cmplwi  r29, 0x0
    beq-    branch_0x802a1a3c
    addi    r3, r29, 0x0
    addi    r4, r25, 0x0
    bl      __ct__20TScenarioArchiveNameFRC20TScenarioArchiveName
branch_0x802a1a3c:
    addi    r29, r29, 0x10
    addi    r25, r25, 0x10
branch_0x802a1a44:
    cmplw   r25, r27
    bne+    branch_0x802a1a28
    slwi    r0, r26, 4
    lwz     r24, 0x8(r31)
    addi    r25, r27, 0x0
    add     r27, r29, r0
    b       branch_0x802a1a7c

branch_0x802a1a60:
    cmplwi  r27, 0x0
    beq-    branch_0x802a1a74
    addi    r3, r27, 0x0
    addi    r4, r25, 0x0
    bl      __ct__20TScenarioArchiveNameFRC20TScenarioArchiveName
branch_0x802a1a74:
    addi    r27, r27, 0x10
    addi    r25, r25, 0x10
branch_0x802a1a7c:
    cmplw   r25, r24
    bne+    branch_0x802a1a60
    lwz     r24, 0x8(r31)
    lwz     r25, 0x4(r31)
    b       branch_0x802a1aac

branch_0x802a1a90:
    lwz     r12, 0x0(r25)
    mr      r3, r25
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x10
branch_0x802a1aac:
    cmplw   r25, r24
    bne+    branch_0x802a1a90
    lwz     r0, 0x4(r31)
    stw     r0, 0x64(sp)
    lwz     r3, 0x4(r31)
    lwz     r0, 0x8(r31)
    subf    r0, r3, r0
    srawi   r0, r0, 4
    addze   r0, r0
    add     r0, r26, r0
    slwi    r0, r0, 4
    add     r0, r30, r0
    stw     r0, 0x8(r31)
    stw     r30, 0x4(r31)
    stw     r28, 0xc(r31)
    lwz     r3, 0x64(sp)
    bl      __dl__FPv
    mr      r3, r29
branch_0x802a1af4:
    lmw     r24, 0x78(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl __dt__53TNameRefAryT_18TStagePositionInfo_Q26JDrama8TNameRef_Fv
__dt__53TNameRefAryT_18TStagePositionInfo_Q26JDrama8TNameRef_Fv: # 0x802a1b08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a1b70
    lis     r3, 0x803e
    subi    r3, r3, 0xeb8
    addic.  r0, r30, 0xc
    stw     r3, 0x0(r30)
    beq-    branch_0x802a1b54
    lwz     r5, 0x14(r30)
    addi    r3, r30, 0xc
    lwz     r4, 0x10(r30)
    bl      erase__Q27JGadget74TVector_18TStagePositionInfo_Q27JGadget32TAllocator_18TStagePositionInfo__FP18TStagePositionInfoP18TStagePositionInfo
    lwz     r3, 0x10(r30)
    bl      __dl__FPv
branch_0x802a1b54:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x802a1b70
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a1b70:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__93TNameRefPtrAryT_55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef__Q26JDrama8TNameRef_Fv
__dt__93TNameRefPtrAryT_55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef__Q26JDrama8TNameRef_Fv: # 0x802a1b8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a1be8
    lis     r3, 0x803e
    subi    r3, r3, 0xe98
    addic.  r0, r30, 0xc
    stw     r3, 0x0(r30)
    beq-    branch_0x802a1bcc
    addi    r3, r30, 0xc
    li      r4, 0x0
    bl      __dt__Q27JGadget20TVector_pointer_voidFv
branch_0x802a1bcc:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x802a1be8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a1be8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef_Fv
__dt__55TNameRefAryT_20TScenarioArchiveName_Q26JDrama8TNameRef_Fv: # 0x802a1c04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a1c6c
    lis     r3, 0x803e
    subi    r3, r3, 0xe78
    addic.  r0, r30, 0xc
    stw     r3, 0x0(r30)
    beq-    branch_0x802a1c50
    lwz     r5, 0x14(r30)
    addi    r3, r30, 0xc
    lwz     r4, 0x10(r30)
    bl      erase__Q27JGadget78TVector_20TScenarioArchiveName_Q27JGadget34TAllocator_20TScenarioArchiveName__FP20TScenarioArchiveNameP20TScenarioArchiveName
    lwz     r3, 0x10(r30)
    bl      __dl__FPv
branch_0x802a1c50:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x802a1c6c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a1c6c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__49TNameRefAryT_14TCameraMapTool_Q26JDrama8TNameRef_Fv
__dt__49TNameRefAryT_14TCameraMapTool_Q26JDrama8TNameRef_Fv: # 0x802a1c88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a1cf0
    lis     r3, 0x803e
    subi    r3, r3, 0xe58
    addic.  r0, r30, 0xc
    stw     r3, 0x0(r30)
    beq-    branch_0x802a1cd4
    lwz     r5, 0x14(r30)
    addi    r3, r30, 0xc
    lwz     r4, 0x10(r30)
    bl      erase__Q27JGadget66TVector_14TCameraMapTool_Q27JGadget28TAllocator_14TCameraMapTool__FP14TCameraMapToolP14TCameraMapTool
    lwz     r3, 0x10(r30)
    bl      __dl__FPv
branch_0x802a1cd4:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x802a1cf0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a1cf0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__50TNameRefAryT_15TStageEventInfo_Q26JDrama8TNameRef_Fv
__dt__50TNameRefAryT_15TStageEventInfo_Q26JDrama8TNameRef_Fv: # 0x802a1d0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a1d74
    lis     r3, 0x803e
    subi    r3, r3, 0xe38
    addic.  r0, r30, 0xc
    stw     r3, 0x0(r30)
    beq-    branch_0x802a1d58
    lwz     r5, 0x14(r30)
    addi    r3, r30, 0xc
    lwz     r4, 0x10(r30)
    bl      erase__Q27JGadget68TVector_15TStageEventInfo_Q27JGadget29TAllocator_15TStageEventInfo__FP15TStageEventInfoP15TStageEventInfo
    lwz     r3, 0x10(r30)
    bl      __dl__FPv
branch_0x802a1d58:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x802a1d74
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a1d74:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl erase__Q27JGadget68TVector_15TStageEventInfo_Q27JGadget29TAllocator_15TStageEventInfo__FP15TStageEventInfoP15TStageEventInfo
erase__Q27JGadget68TVector_15TStageEventInfo_Q27JGadget29TAllocator_15TStageEventInfo__FP15TStageEventInfoP15TStageEventInfo: # 0x802a1d90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r28, r4, 0x0
    addi    r0, r28, 0x0
    addi    r27, r3, 0x0
    lwz     r4, 0x8(r3)
    addi    r3, r5, 0x0
    mr      r5, r0
    bl      copy__Q23std29__copy_15TStageEventInfo_0_0_FP15TStageEventInfoP15TStageEventInfoP15TStageEventInfo
    addi    r29, r3, 0x0
    lwz     r31, 0x8(r27)
    addi    r30, r29, 0x0
    b       branch_0x802a1de8

branch_0x802a1dcc:
    lwz     r12, 0x0(r30)
    mr      r3, r30
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x2c
branch_0x802a1de8:
    cmplw   r30, r31
    bne+    branch_0x802a1dcc
    stw     r29, 0x8(r27)
    mr      r3, r28
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__16TCubeManagerFastFv
__dt__16TCubeManagerFastFv: # 0x802a1e0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a1e84
    lis     r3, 0x803e
    subi    r0, r3, 0xe18
    stw     r0, 0x0(r30)
    beq-    branch_0x802a1e74
    lis     r3, 0x803e
    subi    r0, r3, 0xdd0
    stw     r0, 0x0(r30)
    beq-    branch_0x802a1e74
    lis     r3, 0x803b
    subi    r0, r3, 0x2dc0
    stw     r0, 0x0(r30)
    beq-    branch_0x802a1e74
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802a1e74:
    extsh.  r0, r31
    ble-    branch_0x802a1e84
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a1e84:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TCubeManagerAreaFv
__dt__16TCubeManagerAreaFv: # 0x802a1ea0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a1f18
    lis     r3, 0x803e
    subi    r0, r3, 0xdf4
    stw     r0, 0x0(r30)
    beq-    branch_0x802a1f08
    lis     r3, 0x803e
    subi    r0, r3, 0xdd0
    stw     r0, 0x0(r30)
    beq-    branch_0x802a1f08
    lis     r3, 0x803b
    subi    r0, r3, 0x2dc0
    stw     r0, 0x0(r30)
    beq-    branch_0x802a1f08
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802a1f08:
    extsh.  r0, r31
    ble-    branch_0x802a1f18
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a1f18:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl searchF__50TNameRefAryT_15TStageEventInfo_Q26JDrama8TNameRef_FUsPCc
searchF__50TNameRefAryT_15TStageEventInfo_Q26JDrama8TNameRef_FUsPCc: # 0x802a1f34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x3c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802a1f6c
    b       branch_0x802a1fb0

branch_0x802a1f6c:
    lwz     r31, 0x10(r28)
    b       branch_0x802a1fa0

branch_0x802a1f74:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802a1f9c
    b       branch_0x802a1fb0

branch_0x802a1f9c:
    addi    r31, r31, 0x2c
branch_0x802a1fa0:
    lwz     r0, 0x14(r28)
    cmplw   r31, r0
    bne+    branch_0x802a1f74
    li      r3, 0x0
branch_0x802a1fb0:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl loadAfter__50TNameRefAryT_15TStageEventInfo_Q26JDrama8TNameRef_Fv
loadAfter__50TNameRefAryT_15TStageEventInfo_Q26JDrama8TNameRef_Fv: # 0x802a1fd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r31, 0x10(r30)
    b       branch_0x802a200c

branch_0x802a1ff4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x2c
branch_0x802a200c:
    lwz     r0, 0x14(r30)
    cmplw   r31, r0
    bne+    branch_0x802a1ff4
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl load__50TNameRefAryT_15TStageEventInfo_Q26JDrama8TNameRef_FR20JSUMemoryInputStream
load__50TNameRefAryT_15TStageEventInfo_Q26JDrama8TNameRef_FR20JSUMemoryInputStream: # 0x802a2030
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r22, 0x88(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, sp, 0x44
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lis     r3, 0x803e
    lwz     r30, 0x44(sp)
    addi    r0, r3, 0x20f0
    lis     r3, 0x803a
    stw     r0, 0x48(sp)
    addi    r3, r3, 0x3a98
    stw     r3, 0x4c(sp)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803e
    sth     r3, 0x50(sp)
    subi    r0, r4, 0xb88
    stw     r0, 0x48(sp)
    addi    r31, r28, 0xc
    lwz     r4, 0x10(r28)
    cmplwi  r4, 0x0
    bne-    branch_0x802a20a4
    li      r3, 0x0
    b       branch_0x802a20c4

branch_0x802a20a4:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2e8c
    subi    r3, r3, 0x5d17
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r3, r0, r3
branch_0x802a20c4:
    cmplw   r30, r3
    ble-    branch_0x802a2104
    subf.   r0, r3, r30
    lwz     r4, 0x8(r31)
    beq-    branch_0x802a2154
    subf    r23, r3, r30
    addi    r3, r31, 0x0
    addi    r5, r23, 0x0
    bl      InsertRaw__Q27JGadget68TVector_15TStageEventInfo_Q27JGadget29TAllocator_15TStageEventInfo__FP15TStageEventInfoUl
    lwz     r0, 0x8(r31)
    cmplw   r3, r0
    beq-    branch_0x802a2154
    addi    r4, r23, 0x0
    addi    r5, sp, 0x48
    bl      uninitialized_fill_n_P15TStageEventInfo_Ul_15TStageEventInfo___3stdFP15TStageEventInfoUlRC15TStageEventInfo
    b       branch_0x802a2154

branch_0x802a2104:
    cmplwi  r4, 0x0
    bne-    branch_0x802a2114
    li      r0, 0x0
    b       branch_0x802a2134

branch_0x802a2114:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2e8c
    subi    r3, r3, 0x5d17
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r0, r0, r3
branch_0x802a2134:
    cmplw   r30, r0
    beq-    branch_0x802a2154
    mulli   r0, r30, 0x2c
    lwz     r4, 0x4(r31)
    lwz     r5, 0x8(r31)
    addi    r3, r31, 0x0
    add     r4, r4, r0
    bl      erase__Q27JGadget68TVector_15TStageEventInfo_Q27JGadget29TAllocator_15TStageEventInfo__FP15TStageEventInfoP15TStageEventInfo
branch_0x802a2154:
    lis     r3, 0x803e
    subi    r0, r3, 0xb88
    stw     r0, 0x48(sp)
    addi    r3, sp, 0x48
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    lis     r6, 0x803b
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r23, sp, 0x74
    subi    r24, r6, 0xf0c
    addi    r25, r5, 0x184
    addi    r26, r4, 0x160
    addi    r27, r3, 0x1c8
    li      r22, 0x0
    li      r31, 0x0
    b       branch_0x802a220c

branch_0x802a219c:
    stw     r23, 0x40(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x40(sp)
    li      r5, 0x0
    stw     r24, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r25, 0x0(r3)
    stw     r26, 0x0(r3)
    stw     r27, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r29, 0x0
    addi    r4, r23, 0x0
    bl      getType__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    lwz     r0, 0x10(r28)
    addi    r4, r23, 0x0
    add     r3, r0, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    stw     r27, 0x74(sp)
    addi    r3, r23, 0x0
    li      r4, 0x0
    stw     r26, 0x74(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r22, r22, 0x1
    addi    r31, r31, 0x2c
branch_0x802a220c:
    cmplw   r22, r30
    blt+    branch_0x802a219c
    lmw     r22, 0x88(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl uninitialized_fill_n_P15TStageEventInfo_Ul_15TStageEventInfo___3stdFP15TStageEventInfoUlRC15TStageEventInfo
uninitialized_fill_n_P15TStageEventInfo_Ul_15TStageEventInfo___3stdFP15TStageEventInfoUlRC15TStageEventInfo: # 0x802a2228
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    b       branch_0x802a2268

branch_0x802a2250:
    cmplwi  r29, 0x0
    addi    r3, r29, 0x0
    beq-    branch_0x802a2264
    mr      r4, r31
    bl      __ct__15TStageEventInfoFRC15TStageEventInfo
branch_0x802a2264:
    addi    r29, r29, 0x2c
branch_0x802a2268:
    cmplwi  r30, 0x0
    subi    r30, r30, 0x1
    bne+    branch_0x802a2250
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__15TStageEventInfoFRC15TStageEventInfo
__ct__15TStageEventInfoFRC15TStageEventInfo: # 0x802a2290
    lis     r5, 0x803e
    addi    r0, r5, 0x20f0
    stw     r0, 0x0(r3)
    lis     r5, 0x803e
    subi    r0, r5, 0xb88
    lwz     r5, 0x4(r4)
    stw     r5, 0x4(r3)
    lhz     r5, 0x8(r4)
    sth     r5, 0x8(r3)
    stw     r0, 0x0(r3)
    lwz     r0, 0xc(r4)
    stw     r0, 0xc(r3)
    lwz     r0, 0x10(r4)
    stw     r0, 0x10(r3)
    lwz     r0, 0x14(r4)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r3)
    lwz     r0, 0x1c(r4)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x20(r4)
    stw     r0, 0x20(r3)
    lwz     r0, 0x24(r4)
    stw     r0, 0x24(r3)
    lwz     r0, 0x28(r4)
    stw     r0, 0x28(r3)
    blr


.globl InsertRaw__Q27JGadget68TVector_15TStageEventInfo_Q27JGadget29TAllocator_15TStageEventInfo__FP15TStageEventInfoUl
InsertRaw__Q27JGadget68TVector_15TStageEventInfo_Q27JGadget29TAllocator_15TStageEventInfo__FP15TStageEventInfoUl: # 0x802a22fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r24, 0x78(sp)
    mr.     r26, r5
    addi    r27, r4, 0x0
    addi    r31, r3, 0x0
    bne-    branch_0x802a2324
    mr      r3, r27
    b       branch_0x802a2608

branch_0x802a2324:
    lwz     r4, 0x4(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x802a2338
    li      r3, 0x0
    b       branch_0x802a2358

branch_0x802a2338:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2e8c
    subi    r3, r3, 0x5d17
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r3, r0, r3
branch_0x802a2358:
    lwz     r0, 0xc(r31)
    add     r3, r26, r3
    cmplw   r3, r0
    bgt-    branch_0x802a2490
    mulli   r29, r26, 0x2c
    lwz     r25, 0x8(r31)
    add     r0, r27, r29
    cmplw   r0, r25
    mr      r28, r0
    bge-    branch_0x802a241c
    subf    r26, r29, r25
    addi    r30, r26, 0x0
    addi    r24, r25, 0x0
    b       branch_0x802a23ac

branch_0x802a2390:
    cmplwi  r24, 0x0
    beq-    branch_0x802a23a4
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    bl      __ct__15TStageEventInfoFRC15TStageEventInfo
branch_0x802a23a4:
    addi    r24, r24, 0x2c
    addi    r26, r26, 0x2c
branch_0x802a23ac:
    cmplw   r26, r25
    bne+    branch_0x802a2390
    lwz     r25, 0x8(r31)
    mr      r24, r30
    b       branch_0x802a23d4

branch_0x802a23c0:
    subi    r25, r25, 0x2c
    subi    r24, r24, 0x2c
    addi    r3, r25, 0x0
    addi    r4, r24, 0x0
    bl      __as__15TStageEventInfoFRC15TStageEventInfo
branch_0x802a23d4:
    cmplw   r24, r27
    bgt+    branch_0x802a23c0
    mr      r24, r27
    b       branch_0x802a2400

branch_0x802a23e4:
    lwz     r12, 0x0(r24)
    mr      r3, r24
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x2c
branch_0x802a2400:
    cmplw   r24, r28
    bne+    branch_0x802a23e4
    lwz     r0, 0x8(r31)
    addi    r3, r27, 0x0
    add     r0, r0, r29
    stw     r0, 0x8(r31)
    b       branch_0x802a2608

branch_0x802a241c:
    addi    r24, r28, 0x0
    addi    r26, r27, 0x0
    b       branch_0x802a2444

branch_0x802a2428:
    cmplwi  r24, 0x0
    beq-    branch_0x802a243c
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    bl      __ct__15TStageEventInfoFRC15TStageEventInfo
branch_0x802a243c:
    addi    r24, r24, 0x2c
    addi    r26, r26, 0x2c
branch_0x802a2444:
    cmplw   r26, r25
    bne+    branch_0x802a2428
    lwz     r26, 0x8(r31)
    mr      r24, r27
    b       branch_0x802a2474

branch_0x802a2458:
    lwz     r12, 0x0(r24)
    mr      r3, r24
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x2c
branch_0x802a2474:
    cmplw   r24, r26
    bne+    branch_0x802a2458
    lwz     r0, 0x8(r31)
    addi    r3, r27, 0x0
    add     r0, r0, r29
    stw     r0, 0x8(r31)
    b       branch_0x802a2608

branch_0x802a2490:
    cmplwi  r4, 0x0
    bne-    branch_0x802a24a0
    li      r3, 0x0
    b       branch_0x802a24c0

branch_0x802a24a0:
    lwz     r0, 0x8(r31)
    lis     r3, 0x2e8c
    subi    r3, r3, 0x5d17
    subf    r0, r4, r0
    mulhw   r0, r3, r0
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r3, r0, r3
branch_0x802a24c0:
    stw     r3, 0x74(sp)
    lis     r0, 0x4330
    lfd     f2, -0x4d8(rtoc)
    add     r28, r3, r26
    stw     r0, 0x70(sp)
    lfs     f0, 0x10(r31)
    lfd     f1, 0x70(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    bl      __cvt_fp2unsigned
    lwz     r0, 0x14(r31)
    add     r0, r0, r3
    cmplw   r28, r0
    ble-    branch_0x802a24fc
    b       branch_0x802a2500

branch_0x802a24fc:
    mr      r28, r0
branch_0x802a2500:
    mulli   r3, r28, 0x2c
    bl      __nw__FUl
    mr.     r30, r3
    bne-    branch_0x802a2518
    lwz     r3, 0x8(r31)
    b       branch_0x802a2608

branch_0x802a2518:
    stw     r31, 0x60(sp)
    mr      r29, r30
    stw     r30, 0x64(sp)
    lwz     r25, 0x4(r31)
    b       branch_0x802a2548

branch_0x802a252c:
    cmplwi  r29, 0x0
    beq-    branch_0x802a2540
    addi    r3, r29, 0x0
    addi    r4, r25, 0x0
    bl      __ct__15TStageEventInfoFRC15TStageEventInfo
branch_0x802a2540:
    addi    r29, r29, 0x2c
    addi    r25, r25, 0x2c
branch_0x802a2548:
    cmplw   r25, r27
    bne+    branch_0x802a252c
    mulli   r0, r26, 0x2c
    lwz     r24, 0x8(r31)
    addi    r25, r27, 0x0
    add     r27, r29, r0
    b       branch_0x802a2580

branch_0x802a2564:
    cmplwi  r27, 0x0
    beq-    branch_0x802a2578
    addi    r3, r27, 0x0
    addi    r4, r25, 0x0
    bl      __ct__15TStageEventInfoFRC15TStageEventInfo
branch_0x802a2578:
    addi    r27, r27, 0x2c
    addi    r25, r25, 0x2c
branch_0x802a2580:
    cmplw   r25, r24
    bne+    branch_0x802a2564
    lwz     r24, 0x8(r31)
    lwz     r25, 0x4(r31)
    b       branch_0x802a25b0

branch_0x802a2594:
    lwz     r12, 0x0(r25)
    mr      r3, r25
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x2c
branch_0x802a25b0:
    cmplw   r25, r24
    bne+    branch_0x802a2594
    lwz     r0, 0x4(r31)
    lis     r3, 0x2e8c
    subi    r4, r3, 0x5d17
    stw     r0, 0x64(sp)
    lwz     r3, 0x4(r31)
    lwz     r0, 0x8(r31)
    subf    r0, r3, r0
    mulhw   r0, r4, r0
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r0, r0, r3
    add     r0, r26, r0
    mulli   r0, r0, 0x2c
    add     r0, r30, r0
    stw     r0, 0x8(r31)
    stw     r30, 0x4(r31)
    stw     r28, 0xc(r31)
    lwz     r3, 0x64(sp)
    bl      __dl__FPv
    mr      r3, r29
branch_0x802a2608:
    lmw     r24, 0x78(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl __as__15TStageEventInfoFRC15TStageEventInfo
__as__15TStageEventInfoFRC15TStageEventInfo: # 0x802a261c
    lwz     r0, 0x4(r4)
    stw     r0, 0x4(r3)
    lhz     r0, 0x8(r4)
    sth     r0, 0x8(r3)
    lwz     r0, 0xc(r4)
    stw     r0, 0xc(r3)
    lwz     r0, 0x10(r4)
    stw     r0, 0x10(r3)
    lwz     r0, 0x14(r4)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r3)
    lwz     r0, 0x1c(r4)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x20(r4)
    stw     r0, 0x20(r3)
    lwz     r0, 0x24(r4)
    stw     r0, 0x24(r3)
    lwz     r0, 0x28(r4)
    stw     r0, 0x28(r3)
    blr


.globl __sinit_MarNameRefGen_cpp
__sinit_MarNameRefGen_cpp: # 0x802a2670
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x3588
    lbz     r0, OffsetR13_7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802a26b8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_7204(r13)
branch_0x802a26b8:
    lbz     r0, OffsetR13_7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802a26e8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_7203(r13)
branch_0x802a26e8:
    lbz     r0, OffsetR13_7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802a2718
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_7202(r13)
branch_0x802a2718:
    lbz     r0, OffsetR13_7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802a2748
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_7201(r13)
branch_0x802a2748:
    lbz     r0, OffsetR13_7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802a2778
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_7200(r13)
branch_0x802a2778:
    lbz     r0, OffsetR13_71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802a27a8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_71ff(r13)
branch_0x802a27a8:
    lbz     r0, OffsetR13_71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802a27d8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_71fe(r13)
branch_0x802a27d8:
    lbz     r0, OffsetR13_71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802a2808
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_71fd(r13)
branch_0x802a2808:
    lbz     r0, OffsetR13_71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802a2838
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_71fc(r13)
branch_0x802a2838:
    lbz     r0, OffsetR13_71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802a2868
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_71fb(r13)
branch_0x802a2868:
    lbz     r0, OffsetR13_71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802a2898
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_71fa(r13)
branch_0x802a2898:
    lbz     r0, OffsetR13_71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802a28c8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_71f9(r13)
branch_0x802a28c8:
    lbz     r0, OffsetR13_71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802a28f8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_71f8(r13)
branch_0x802a28f8:
    lbz     r0, OffsetR13_71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802a2928
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_71f7(r13)
branch_0x802a2928:
    lbz     r0, OffsetR13_71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802a2958
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, OffsetR13_71f6(r13)
branch_0x802a2958:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

