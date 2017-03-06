
.globl partsPerform__9TNpcPartsFUlPQ26JDrama9TGraphics
partsPerform__9TNpcPartsFUlPQ26JDrama9TGraphics: # 0x80212020
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stmw    r21, 0xcc(sp)
    addi    r25, r4, 0x0
    mr      r24, r3
    addi    r26, r5, 0x0
    rlwinm  r29, r25, 0, 30, 30
    li      r28, 0x0
    lwz     r6, 0x60(r3)
    lis     r3, 0x803a
    subi    r31, r3, 0x7710
    lwz     r4, 0xd0(r6)
    lwz     r0, 0x8(r4)
    mulli   r0, r0, 0x30
    add     r27, r24, r0
branch_0x80212060:
    lwz     r0, 0x0(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x802121ac
    lwz     r3, 0x60(r24)
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x802120fc
    lbz     r5, 0x1d8(r3)
    li      r4, 0x1
    rlwinm. r0, r5, 0, 29, 29
    beq-    branch_0x802120b8
    cmpwi   r28, 0x3
    beq-    branch_0x802120f4
    bge-    branch_0x802120a8
    cmpwi   r28, 0x1
    bge-    branch_0x802120b0
    b       branch_0x802120f4

branch_0x802120a8:
    cmpwi   r28, 0x5
    bge-    branch_0x802120f4
branch_0x802120b0:
    li      r4, 0x0
    b       branch_0x802120f4

branch_0x802120b8:
    clrlwi. r0, r5, 31
    beq-    branch_0x802120dc
    cmpwi   r28, 0x3
    bge-    branch_0x802120f4
    cmpwi   r28, 0x1
    bge-    branch_0x802120d4
    b       branch_0x802120f4

branch_0x802120d4:
    li      r4, 0x0
    b       branch_0x802120f4

branch_0x802120dc:
    cmpwi   r28, 0x7
    bge-    branch_0x802120f4
    cmpwi   r28, 0x4
    bge-    branch_0x802120f0
    b       branch_0x802120f4

branch_0x802120f0:
    li      r4, 0x0
branch_0x802120f4:
    clrlwi. r0, r4, 24
    beq-    branch_0x802121ac
branch_0x802120fc:
    cmplwi  r29, 0x0
    beq-    branch_0x80212190
    bl      isJellyFishMare__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80212190
    cmpwi   r28, 0xb
    bne-    branch_0x80212190
    lwz     r4, 0x0(r27)
    addi    r3, sp, 0x70
    lwz     r21, 0x18(r4)
    bl      SMS_GetLightPerspectiveForEffectMtx__FPA4_f
    lwz     r3, 0x4(r21)
    mr      r4, r31
    lwz     r30, 0x4(r3)
    lwz     r3, 0xb4(r30)
    bl      getIndex__10JUTNameTabCFPCc
    lhz     r21, 0x24(r30)
    addi    r23, r3, 0x0
    li      r22, 0x0
    b       branch_0x80212184

branch_0x8021214c:
    cmpw    r0, r23
    beq-    branch_0x80212180
    lwz     r3, 0x28(r30)
    clrlslwi  r0, r22, 16, 2
    li      r4, 0x0
    lwzx    r3, r3, r0
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x70
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
branch_0x80212180:
    addi    r22, r22, 0x1
branch_0x80212184:
    clrlwi  r0, r22, 16
    cmpw    r0, r21
    blt+    branch_0x8021214c
branch_0x80212190:
    lwz     r3, 0x0(r27)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x802121ac:
    addi    r28, r28, 0x1
    cmpwi   r28, 0xc
    addi    r27, r27, 0x4
    blt+    branch_0x80212060
    lmw     r21, 0xcc(sp)
    lwz     r0, 0xfc(sp)
    addi    sp, sp, 0xf8
    mtlr    r0
    blr


.globl partsFrameUpdate__9TNpcPartsFv
partsFrameUpdate__9TNpcPartsFv: # 0x802121d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    lwz     r4, 0x60(r3)
    lwz     r4, 0xd0(r4)
    lwz     r0, 0x8(r4)
    mulli   r0, r0, 0x30
    add     r30, r3, r0
branch_0x802121fc:
    lwz     r3, 0x0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80212210
    lwz     r3, 0x18(r3)
    bl      frameUpdate__6MActorFv
branch_0x80212210:
    addi    r31, r31, 0x1
    cmpwi   r31, 0xc
    addi    r30, r30, 0x4
    blt+    branch_0x802121fc
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl getPartsMActor__9TNpcPartsFii
getPartsMActor__9TNpcPartsFii: # 0x80212238
    mulli   r5, r5, 0x30
    slwi    r0, r4, 2
    add     r0, r5, r0
    lwzx    r4, r3, r0
    li      r3, 0x0
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r3, 0x18(r4)
    blr


.globl setPartsAnmFrame__9TNpcPartsFf
setPartsAnmFrame__9TNpcPartsFf: # 0x8021225c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    fmr     f31, f1
    stw     r31, 0x94(sp)
    mr      r31, r3
    lwz     r4, 0x60(r3)
    lis     r3, 0x400
    addi    r0, r3, 0x15
    lwz     r4, 0x4c(r4)
    cmpw    r4, r0
    beq-    branch_0x802122e8
    bge-    branch_0x802122a4
    addi    r0, r3, 0x10
    cmpw    r4, r0
    beq-    branch_0x802122b4
    b       branch_0x802123c8

branch_0x802122a4:
    addi    r0, r3, 0x18
    cmpw    r4, r0
    beq-    branch_0x80212338
    b       branch_0x802123c8

branch_0x802122b4:
    lwz     r4, 0x24(r31)
    li      r3, 0x0
    cmplwi  r4, 0x0
    beq-    branch_0x802122c8
    lwz     r3, 0x18(r4)
branch_0x802122c8:
    cmplwi  r3, 0x0
    beq-    branch_0x802123c8
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x802123c8
    stfs    f31, 0x10(r3)
    b       branch_0x802123c8

branch_0x802122e8:
    lwz     r3, 0x28(r31)
    li      r31, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x802122fc
    lwz     r31, 0x18(r3)
branch_0x802122fc:
    cmplwi  r31, 0x0
    beq-    branch_0x802123c8
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x8021231c
    stfs    f31, 0x10(r3)
branch_0x8021231c:
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x802123c8
    stfs    f31, 0x10(r3)
    b       branch_0x802123c8

branch_0x80212338:
    lwz     r4, 0x0(r31)
    li      r3, 0x0
    cmplwi  r4, 0x0
    beq-    branch_0x8021234c
    lwz     r3, 0x18(r4)
branch_0x8021234c:
    cmplwi  r3, 0x0
    beq-    branch_0x80212368
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80212368
    stfs    f31, 0x10(r3)
branch_0x80212368:
    lwz     r4, 0xc(r31)
    li      r3, 0x0
    cmplwi  r4, 0x0
    beq-    branch_0x8021237c
    lwz     r3, 0x18(r4)
branch_0x8021237c:
    cmplwi  r3, 0x0
    beq-    branch_0x80212398
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80212398
    stfs    f31, 0x10(r3)
branch_0x80212398:
    lwz     r4, 0x10(r31)
    li      r3, 0x0
    cmplwi  r4, 0x0
    beq-    branch_0x802123ac
    lwz     r3, 0x18(r4)
branch_0x802123ac:
    cmplwi  r3, 0x0
    beq-    branch_0x802123c8
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x802123c8
    stfs    f31, 0x10(r3)
branch_0x802123c8:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lwz     r31, 0x94(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl addJellyFishParts__9TNpcPartsFf
addJellyFishParts__9TNpcPartsFf: # 0x802123e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    fmr     f31, f1
    stmw    r27, 0x34(sp)
    mr      r31, r3
    addi    r29, r31, 0x2c
    lwz     r3, -0x61f8(r13)
    bl      getModelDataKeeper__11TObjManagerFv
    bl      getModelDataNum__16TModelDataKeeperCFv
    mr      r30, r3
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1a50(rtoc)
    stw     r0, 0x2c(sp)
    lis     r4, 0x4330
    xoris   r0, r30, 0x8000
    lfs     f1, -0x1a58(rtoc)
    stw     r4, 0x28(sp)
    lwz     r3, -0x61f8(r13)
    stw     r0, 0x24(sp)
    lfd     f0, 0x28(sp)
    stw     r4, 0x20(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x20(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r30, 0x1c(sp)
    bl      getModelDataKeeper__11TObjManagerFv
    mr      r4, r30
    bl      getNthData__16TModelDataKeeperCFi
    addi    r28, r3, 0x0
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80212494
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x80212494:
    addi    r28, r27, 0x0
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802124bc
    lwz     r3, -0x61f8(r13)
    bl      getMActorAnmData__11TObjManagerFv
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x802124bc:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802124f8
    lis     r3, 0x803a
    lwz     r4, 0x60(r31)
    subi    r7, r3, 0x7704
    addi    r3, r28, 0x0
    addi    r6, r27, 0x0
    li      r5, -0x1
    bl      __ct__12TSharedPartsFPC10TLiveActoriP6MActorPCc
branch_0x802124f8:
    stw     r28, 0x0(r29)
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    bl      setBrkFromIndex__6MActorFi
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0x10(r3)
    addi    r3, r27, 0x0
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0x10(r3)
    addi    r3, r27, 0x0
    li      r4, 0x3
    bl      setLightType__6MActorFi
    lmw     r27, 0x34(sp)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __ct__9TNpcPartsFUlPC13J3DGXColorS10P8TBaseNPC
__ct__9TNpcPartsFUlPC13J3DGXColorS10P8TBaseNPC: # 0x80212558
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f8(sp)
    stmw    r14, 0x1b0(sp)
    mr      r20, r3
    stw     r4, 0x1a0(sp)
    stw     r5, 0x1a4(sp)
    stw     r6, 0x60(r3)
    lwz     r3, 0x60(r3)
    lwz     r3, 0x4c(r3)
    addis   r3, r3, 0xfc00
    subi    r3, r3, 0x1
    bl      SMSGetNpcInitData__FUl
    li      r0, 0x3
    stw     r3, 0x1a8(sp)
    mtctr   r0
    addi    r3, r20, 0x0
    li      r0, 0x0
branch_0x802125a0:
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    addi    r3, r3, 0x20
    bdnz+      branch_0x802125a0
    lis     r3, 0x400
    addi    r0, r3, 0x18
    lis     r4, 0x803a
    stw     r0, 0x1ac(sp)
    subi    r16, r4, 0x7704
    addi    r15, r3, 0x15
    addi    r14, r3, 0x10
    li      r21, 0x0
    li      r18, 0x0
branch_0x802125ec:
    lwz     r0, 0x1a8(sp)
    add     r27, r0, r18
    lwz     r4, 0x4(r27)
    cmplwi  r4, 0x0
    beq-    branch_0x80212960
    li      r0, 0x1
    slw     r3, r0, r21
    lwz     r0, 0x1a0(sp)
    and.    r0, r0, r3
    beq-    branch_0x80212960
    lha     r3, 0x28(r4)
    li      r29, 0x0
    lbz     r0, 0x2a(r4)
    slwi    r4, r3, 1
    lwz     r3, 0x1a4(sp)
    cmplwi  r0, 0x0
    lhax    r23, r3, r4
    beq-    branch_0x80212640
    lwz     r3, 0x60(r20)
    bl      getPtrInitPollutionColor__8TBaseNPCCFv
    mr      r29, r3
branch_0x80212640:
    add     r17, r20, r18
    li      r22, 0x0
    li      r19, 0x0
    li      r28, 0x0
branch_0x80212650:
    lwz     r3, 0x60(r20)
    lwz     r3, 0x70(r3)
    lwz     r0, 0x28(r3)
    cmpw    r22, r0
    bge-    branch_0x80212960
    lwz     r0, 0x4(r27)
    add     r3, r0, r28
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    mr      r25, r0
    beq-    branch_0x8021294c
    lwz     r3, 0x0(r3)
    lwz     r4, -0x77b8(r13)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80212698
    li      r24, -0x1
    b       branch_0x802126c4

branch_0x80212698:
    lwz     r3, 0x60(r20)
    lwz     r4, 0x4(r27)
    lwz     r3, 0x78(r3)
    lwzx    r4, r4, r28
    lwz     r3, 0x8(r3)
    lwzx    r3, r3, r28
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    mr      r24, r3
branch_0x802126c4:
    lwz     r3, 0x60(r20)
    mr      r4, r25
    lwz     r3, 0x70(r3)
    bl      getPartsSDLModelData__11TNPCManagerCFPCc
    addi    r26, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80212704
    lwz     r4, 0x60(r20)
    addi    r3, r25, 0x0
    addi    r5, r24, 0x0
    addi    r6, r26, 0x0
    addi    r8, r16, 0x0
    li      r7, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x80212704:
    add     r24, r17, r19
    stw     r25, 0x0(r24)
    lwz     r3, 0x4(r27)
    lbz     r0, 0x2b(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8021272c
    lwz     r3, 0x0(r24)
    lwz     r3, 0x18(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_UnifyMaterial__FP8J3DModel
branch_0x8021272c:
    lwz     r3, 0x60(r20)
    lwz     r4, 0x4c(r3)
    cmpw    r4, r15
    beq-    branch_0x80212840
    bge-    branch_0x8021274c
    cmpw    r4, r14
    beq-    branch_0x80212810
    b       branch_0x8021287c

branch_0x8021274c:
    lwz     r0, 0x1ac(sp)
    cmpw    r4, r0
    beq-    branch_0x8021275c
    b       branch_0x8021287c

branch_0x8021275c:
    cmpwi   r22, 0x0
    bne-    branch_0x80212774
    cmpwi   r21, 0x3
    beq-    branch_0x802127bc
    cmpwi   r21, 0x4
    beq-    branch_0x802127bc
branch_0x80212774:
    lwz     r26, 0x0(r24)
    lwz     r4, 0x18(r26)
    lwz     r4, 0x4(r4)
    lwz     r30, 0x4(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r25, 0x4(r3)
    lwz     r4, -0x774c(r13)
    lwz     r3, 0xa8(r25)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0xac(r25)
    clrlslwi  r6, r3, 16, 5
    lwz     r4, -0x7750(r13)
    addi    r3, r30, 0x0
    lwz     r0, 0x4(r5)
    add     r5, r0, r6
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r3, 0x18(r26)
    bl      initDL__6MActorFv
branch_0x802127bc:
    cmpwi   r22, 0x0
    bne-    branch_0x8021287c
    cmpwi   r21, 0x3
    bge-    branch_0x802127d8
    cmpwi   r21, 0x0
    beq-    branch_0x802127e0
    b       branch_0x8021287c

branch_0x802127d8:
    cmpwi   r21, 0x5
    bge-    branch_0x8021287c
branch_0x802127e0:
    li      r4, -0x1
    cmpwi   r4, -0x1
    bne-    branch_0x802127f4
    lwz     r3, -0x6220(r13)
    lwz     r4, 0x1a8(r3)
branch_0x802127f4:
    lwz     r3, 0x0(r24)
    lwz     r3, 0x18(r3)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8021287c
    bl      initSimpleMotionBlend__12MActorAnmBckFi
    b       branch_0x8021287c

branch_0x80212810:
    cmpwi   r22, 0x0
    bne-    branch_0x8021287c
    cmpwi   r21, 0x9
    bne-    branch_0x8021287c
    li      r4, 0x14
    lwz     r3, 0x0(r24)
    lwz     r3, 0x18(r3)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8021287c
    bl      initSimpleMotionBlend__12MActorAnmBckFi
    b       branch_0x8021287c

branch_0x80212840:
    cmpwi   r22, 0x0
    bne-    branch_0x8021287c
    cmpwi   r21, 0xa
    bne-    branch_0x8021287c
    li      r4, -0x1
    cmpwi   r4, -0x1
    bne-    branch_0x80212864
    lwz     r3, -0x6220(r13)
    lwz     r4, 0x1a8(r3)
branch_0x80212864:
    lwz     r3, 0x0(r24)
    lwz     r3, 0x18(r3)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8021287c
    bl      initSimpleMotionBlend__12MActorAnmBckFi
branch_0x8021287c:
    add     r26, r19, r18
    add     r26, r20, r26
    li      r31, 0x0
    li      r30, 0x0
branch_0x8021288c:
    lwz     r0, 0x4(r27)
    add     r3, r0, r30
    addi    r0, r3, 0x10
    lwzx    r4, r28, r0
    cmplwi  r4, 0x0
    beq-    branch_0x802128b8
    lwz     r3, 0x0(r26)
    mr      r5, r23
    mr      r6, r29
    lwz     r3, 0x18(r3)
    bl      SMS_InitChangeNpcColor__FPC6MActorPC16TColorChangeInfosPC8_GXColor
branch_0x802128b8:
    addi    r31, r31, 0x1
    cmpwi   r31, 0x3
    addi    r30, r30, 0x8
    blt+    branch_0x8021288c
    cmplwi  r29, 0x0
    beq-    branch_0x8021293c
    lwz     r3, 0x0(r24)
    li      r31, 0x0
    lwz     r3, 0x18(r3)
    lwz     r30, 0x4(r3)
    lwz     r26, 0x4(r30)
    lhz     r25, 0x24(r26)
    b       branch_0x80212930

branch_0x802128ec:
    lwz     r3, 0x28(r26)
    clrlslwi  r0, r31, 16, 2
    lwz     r4, 0x84(r30)
    lwzx    r3, r3, r0
    lwz     r3, 0x4(r3)
    lhz     r0, 0x4(r3)
    mulli   r3, r0, 0x34
    addi    r0, r3, 0xc
    lwzx    r0, r4, r0
    cmplwi  r0, 0x0
    bne-    branch_0x8021292c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r6, r29, 0x0
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
branch_0x8021292c:
    addi    r31, r31, 0x1
branch_0x80212930:
    clrlwi  r0, r31, 16
    cmplw   r0, r25
    blt+    branch_0x802128ec
branch_0x8021293c:
    lwz     r3, 0x0(r24)
    li      r4, 0x1
    lwz     r3, 0x18(r3)
    bl      setLightType__6MActorFi
branch_0x8021294c:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x2
    addi    r19, r19, 0x30
    addi    r28, r28, 0x4
    blt+    branch_0x80212650
branch_0x80212960:
    addi    r21, r21, 0x1
    cmpwi   r21, 0xc
    addi    r18, r18, 0x4
    blt+    branch_0x802125ec
    mr      r3, r20
    lmw     r14, 0x1b0(sp)
    lwz     r0, 0x1fc(sp)
    addi    sp, sp, 0x1f8
    mtlr    r0
    blr

