
.globl perform__12TSharedPartsFUlPQ26JDrama9TGraphics
perform__12TSharedPartsFUlPQ26JDrama9TGraphics: # 0x8022416c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x48(sp)
    mr      r28, r3
    lwz     r3, 0x10(r3)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 29
    bne-    branch_0x80224210
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x802241e4
    lwz     r31, 0x14(r28)
    cmpwi   r31, -0x1
    bne-    branch_0x802241c4
    bl      getModel__10TLiveActorCFv
    addi    r3, r3, 0x20
    b       branch_0x802241d4

branch_0x802241c4:
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
branch_0x802241d4:
    lwz     r4, 0x18(r28)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x802241e4:
    rlwinm. r0, r29, 0, 22, 22
    beq-    branch_0x80224200
    lwz     r5, 0x10(r28)
    lwz     r3, 0x18(r28)
    lwz     r4, 0xc4(r5)
    addi    r5, r5, 0x10
    bl      setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
branch_0x80224200:
    lwz     r3, 0x18(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80224210:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl getConnectedMtx__12TSharedPartsCFv
getConnectedMtx__12TSharedPartsCFv: # 0x80224230
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r31, 0x14(r3)
    cmpwi   r31, -0x1
    bne-    branch_0x8022425c
    lwz     r3, 0x10(r3)
    bl      getModel__10TLiveActorCFv
    addi    r3, r3, 0x20
    b       branch_0x80224270

branch_0x8022425c:
    lwz     r3, 0x10(r3)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
branch_0x80224270:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__12TSharedPartsFPC10TLiveActoriP6MActorPCc
__ct__12TSharedPartsFPC10TLiveActoriP6MActorPCc: # 0x80224284
    mflr    r0
    lis     r8, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r8, 0x20f0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    mr      r29, r4
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    stw     r0, 0x0(r3)
    stw     r7, 0x4(r3)
    addi    r3, r7, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r28)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r28)
    li      r0, 0x0
    lis     r3, 0x803e
    sth     r0, 0xc(r28)
    subi    r0, r3, 0x5a58
    addi    r3, r28, 0x0
    stw     r0, 0x0(r28)
    stw     r29, 0x10(r28)
    stw     r30, 0x14(r28)
    stw     r31, 0x18(r28)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
__ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc: # 0x8022431c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r27, r4, 0x0
    mr      r28, r5
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r31, 0x8(sp)
    addi    r3, r8, 0x0
    stw     r0, 0x0(r31)
    stw     r8, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r31)
    subi    r0, r3, 0x5a58
    li      r3, 0xac
    stw     r0, 0x0(r31)
    stw     r27, 0x10(r31)
    stw     r28, 0x14(r31)
    stw     r4, 0x18(r31)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802243b0
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x802243b0:
    addi    r30, r27, 0x0
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802243dc
    lwz     r4, 0x8(sp)
    mr      r3, r27
    lwz     r4, 0x10(r4)
    lwz     r4, 0x78(r4)
    lwz     r4, 0xc(r4)
    bl      __ct__6MActorFP13MActorAnmData
branch_0x802243dc:
    lwz     r31, 0x8(sp)
    addi    r4, r30, 0x0
    li      r5, 0x0
    stw     r27, 0x18(r31)
    lwz     r3, 0x18(r31)
    bl      setModel__6MActorFP8J3DModelUl
    mr      r3, r31
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __ct__12TSharedPartsFPC10TLiveActoriPCcUlUlPCc
__ct__12TSharedPartsFPC10TLiveActoriPCcUlUlPCc: # 0x8022440c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r26, 0x38(sp)
    addi    r26, r4, 0x0
    mr      r27, r5
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r31, 0x8(sp)
    addi    r3, r9, 0x0
    stw     r0, 0x0(r31)
    stw     r9, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r31)
    subi    r0, r3, 0x5a58
    addi    r3, r28, 0x0
    stw     r0, 0x0(r31)
    stw     r26, 0x10(r31)
    stw     r27, 0x14(r31)
    stw     r4, 0x18(r31)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r29
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r31, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802244b0
    addi    r3, r26, 0x0
    addi    r4, r31, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x802244b0:
    addi    r31, r26, 0x0
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802244d8
    addi    r3, r26, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x802244d8:
    addi    r30, r26, 0x0
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80224504
    lwz     r4, 0x8(sp)
    mr      r3, r26
    lwz     r4, 0x10(r4)
    lwz     r4, 0x78(r4)
    lwz     r4, 0xc(r4)
    bl      __ct__6MActorFP13MActorAnmData
branch_0x80224504:
    lwz     r31, 0x8(sp)
    addi    r4, r30, 0x0
    li      r5, 0x0
    stw     r26, 0x18(r31)
    lwz     r3, 0x18(r31)
    bl      setModel__6MActorFP8J3DModelUl
    mr      r3, r31
    lmw     r26, 0x38(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr

