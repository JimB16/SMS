
.globl __dt__18TEnemyPolluteModelFv
__dt__18TEnemyPolluteModelFv: # 0x8003ccb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8003cd0c
    lis     r3, 0x803b
    subi    r0, r3, 0x19a8
    stw     r0, 0x0(r30)
    beq-    branch_0x8003ccfc
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8003ccfc:
    extsh.  r0, r31
    ble-    branch_0x8003cd0c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8003cd0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setAnm__18TEnemyPolluteModelFv
setAnm__18TEnemyPolluteModelFv: # 0x8003cd28
    blr


.globl perform__18TEnemyPolluteModelFUlPQ26JDrama9TGraphics
perform__18TEnemyPolluteModelFUlPQ26JDrama9TGraphics: # 0x8003cd2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x78(sp)
    mr      r30, r3
    lbz     r0, 0x5d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8003cdf8
    lbz     r0, 0x5c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8003cd64
    b       branch_0x8003cdf8

branch_0x8003cd64:
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x8003cddc
    lwz     r3, 0x10(r30)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8003cd94
    li      r0, 0x0
    stb     r0, 0x5d(r30)
    b       branch_0x8003cdf8

branch_0x8003cd94:
    lwz     r4, 0x10(r30)
    addi    r3, r30, 0x14
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r4, 0x10(r30)
    lwz     r3, 0x50(r30)
    lwz     r4, 0x18(r4)
    lwz     r0, 0x54(r30)
    lwz     r4, 0x4(r4)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x58(r30)
    stw     r0, 0x1c(r4)
    lwz     r3, 0x10(r30)
    lwz     r3, 0x18(r3)
    bl      calcAnm__6MActorFv
branch_0x8003cddc:
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x8003cdf8
    lwz     r4, 0x10(r30)
    lwz     r3, -0x62f0(r13)
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    bl      stampModel__17TPollutionManagerFP8J3DModel
branch_0x8003cdf8:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl __ct__18TEnemyPolluteModelFP10TLiveActoriP12SDLModelDataPCc
__ct__18TEnemyPolluteModelFP10TLiveActoriP12SDLModelDataPCc: # 0x8003ce10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x24(sp)
    mr      r29, r5
    stw     r28, 0x20(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r31, 0x8(sp)
    addi    r3, r7, 0x0
    stw     r0, 0x0(r31)
    stw     r7, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, 0x803b
    sth     r4, 0xc(r31)
    subi    r3, r3, 0x19a8
    li      r0, 0x1
    stw     r3, 0x0(r31)
    li      r3, 0x1c
    stb     r0, 0x5c(r31)
    stb     r4, 0x5d(r31)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8003ceb8
    lis     r3, 0x8037
    addi    r8, r3, 0x6ee8
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    li      r7, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x8003ceb8:
    lwz     r3, 0x8(sp)
    stw     r31, 0x10(r3)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl generatePolluteModel__25TEnemyPolluteModelManagerFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
generatePolluteModel__25TEnemyPolluteModelManagerFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x8003cee0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    addi    r30, r5, 0x0
    addi    r5, sp, 0x3c
    stw     r29, 0x74(sp)
    mr      r29, r4
    stw     r28, 0x70(sp)
    mr      r28, r3
    lwz     r0, 0x10(r28)
    lwz     r4, 0x18(r28)
    slwi    r0, r0, 2
    lwz     r3, -0x6328(r13)
    lwzx    r31, r4, r0
    addi    r4, r29, 0x0
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    lwz     r3, 0x3c(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8003cf4c
    li      r0, 0x1
    b       branch_0x8003cf50

branch_0x8003cf4c:
    li      r0, 0x0
branch_0x8003cf50:
    clrlwi. r0, r0, 24
    bne-    branch_0x8003d018
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8003d018
    lwz     r4, 0x0(r29)
    addi    r3, sp, 0x40
    lwz     r0, 0x4(r29)
    stw     r4, 0x44(r31)
    stw     r0, 0x48(r31)
    lwz     r0, 0x8(r29)
    stw     r0, 0x4c(r31)
    lwz     r4, 0x0(r30)
    lwz     r0, 0x4(r30)
    stw     r4, 0x50(r31)
    stw     r0, 0x54(r31)
    lwz     r0, 0x8(r30)
    stw     r0, 0x58(r31)
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lfs     f29, 0x8(r29)
    addi    r3, sp, 0x40
    lfs     f30, 0x4(r29)
    lfs     f31, 0x0(r29)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0x4c(sp)
    addi    r3, r31, 0x14
    stfs    f30, 0x5c(sp)
    stfs    f29, 0x6c(sp)
    lfs     f31, 0x8(r29)
    lfs     f30, 0x4(r29)
    lfs     f29, 0x0(r29)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f29, 0x20(r31)
    addi    r3, sp, 0x40
    stfs    f30, 0x30(r31)
    stfs    f31, 0x40(r31)
    lwz     r4, 0x10(r31)
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    li      r0, 0x1
    stb     r0, 0x5d(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stb     r0, 0x5c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
branch_0x8003d018:
    lwz     r3, 0x10(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x10(r28)
    lwz     r3, 0x10(r28)
    lwz     r0, 0x14(r28)
    cmpw    r3, r0
    blt-    branch_0x8003d03c
    li      r0, 0x0
    stw     r0, 0x10(r28)
branch_0x8003d03c:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x98
    blr


.globl perform__25TEnemyPolluteModelManagerFUlPQ26JDrama9TGraphics
perform__25TEnemyPolluteModelManagerFUlPQ26JDrama9TGraphics: # 0x8003d068
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stmw    r25, 0x3c(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    beq-    branch_0x8003d120
    lwz     r4, -0x7118(r13)
    lwz     r3, -0x70b0(r13)
    lfs     f3, 0xe8(r31)
    lfs     f4, 0x9c(r3)
    lfs     f2, 0x4c(r4)
    lfs     f1, 0x48(r4)
    lfs     f31, -0x7438(rtoc)
    bl      SetViewFrustumClipCheckPerspective__Fffff
    li      r28, 0x0
    addi    r26, r28, 0x0
    li      r25, 0x0
    li      r27, 0x1
    b       branch_0x8003d114

branch_0x8003d0c4:
    lwz     r3, 0x18(r29)
    lwzx    r4, r3, r28
    lbz     r0, 0x5d(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8003d10c
    fmr     f1, f31
    addi    r3, r31, 0x0
    addi    r4, r4, 0x44
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x8003d100
    lwz     r3, 0x18(r29)
    lwzx    r3, r3, r28
    stb     r26, 0x5c(r3)
    b       branch_0x8003d10c

branch_0x8003d100:
    lwz     r3, 0x18(r29)
    lwzx    r3, r3, r28
    stb     r27, 0x5c(r3)
branch_0x8003d10c:
    addi    r25, r25, 0x1
    addi    r28, r28, 0x4
branch_0x8003d114:
    lwz     r0, 0x14(r29)
    cmpw    r25, r0
    blt+    branch_0x8003d0c4
branch_0x8003d120:
    li      r25, 0x0
    li      r28, 0x0
    b       branch_0x8003d154

branch_0x8003d12c:
    lwz     r3, 0x18(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwzx    r3, r3, r28
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    addi    r28, r28, 0x4
branch_0x8003d154:
    lwz     r0, 0x14(r29)
    cmpw    r25, r0
    blt+    branch_0x8003d12c
    lmw     r25, 0x3c(sp)
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl init__25TEnemyPolluteModelManagerFP10TLiveActor
init__25TEnemyPolluteModelManagerFP10TLiveActor: # 0x8003d178
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x14(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x18(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__16TEnemyAttachmentFUlPQ26JDrama9TGraphics
perform__16TEnemyAttachmentFUlPQ26JDrama9TGraphics: # 0x8003d1b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8003d1f8
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x8003d2bc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x128(r12)
    mtlr    r12
    blrl
    b       branch_0x8003d2bc

branch_0x8003d1f8:
    lwz     r3, -0x6048(r13)
    li      r0, 0x1
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x8003d218
    cmplwi  r3, 0x4
    beq-    branch_0x8003d218
    li      r0, 0x0
branch_0x8003d218:
    clrlwi. r0, r0, 24
    bne-    branch_0x8003d25c
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x8003d238
    cmplwi  r3, 0x2
    beq-    branch_0x8003d238
    li      r0, 0x0
branch_0x8003d238:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003d25c
    lwz     r12, 0x0(r30)
    mr      r3, r30
    mr      r4, r31
    lwz     r12, 0xdc(r12)
    mtlr    r12
    blrl
    b       branch_0x8003d2bc

branch_0x8003d25c:
    clrlwi. r0, r31, 31
    beq-    branch_0x8003d278
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
branch_0x8003d278:
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x8003d29c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r30)
    bl      calcAnm__6MActorFv
branch_0x8003d29c:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x8003d2ac
    lwz     r3, 0x74(r30)
    bl      viewCalc__6MActorFv
branch_0x8003d2ac:
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x8003d2bc
    lwz     r3, 0x74(r30)
    bl      entry__6MActorFv
branch_0x8003d2bc:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl behaveToHost__16TEnemyAttachmentFv
behaveToHost__16TEnemyAttachmentFv: # 0x8003d2d4
    blr


.globl calcRootMatrix__16TEnemyAttachmentFv
calcRootMatrix__16TEnemyAttachmentFv: # 0x8003d2d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lfs     f2, -0x7434(rtoc)
    lfs     f0, 0x38(r3)
    lfs     f1, 0x34(r3)
    lfs     f3, 0x30(r3)
    fmuls   f0, f2, f0
    fmuls   f1, f2, f1
    lwz     r3, 0x74(r3)
    fmuls   f2, f2, f3
    fctiwz  f0, f0
    fctiwz  f4, f1
    fctiwz  f5, f2
    lwz     r3, 0x4(r3)
    stfd    f0, 0x40(sp)
    lfs     f3, 0x18(r31)
    stfd    f5, 0x50(sp)
    lfs     f2, 0x14(r31)
    addi    r3, r3, 0x20
    stfd    f4, 0x48(sp)
    lfs     f1, 0x10(r31)
    lwz     r4, 0x54(sp)
    lwz     r5, 0x4c(sp)
    lwz     r6, 0x44(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r4, 0x74(r31)
    lwz     r3, 0x24(r31)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x28(r31)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r4)
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl sendMessage__16TEnemyAttachmentFv
sendMessage__16TEnemyAttachmentFv: # 0x8003d37c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    b       branch_0x8003d408

branch_0x8003d3a4:
    lwz     r3, 0x44(r29)
    lwzx    r4, r3, r31
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8003d3c4
    li      r0, 0x1
    b       branch_0x8003d3c8

branch_0x8003d3c4:
    li      r0, 0x0
branch_0x8003d3c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003d3e0
    addi    r3, r29, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x8003d400

branch_0x8003d3e0:
    lwz     r0, 0x160(r29)
    cmplw   r4, r0
    beq-    branch_0x8003d400
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8003d400:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8003d408:
    lhz     r0, 0x48(r29)
    cmpw    r30, r0
    blt+    branch_0x8003d3a4
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl moveObject__16TEnemyAttachmentFv
moveObject__16TEnemyAttachmentFv: # 0x8003d430
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8003d47c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x124(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x138(r12)
    mtlr    r12
    blrl
    b       branch_0x8003d4b4

branch_0x8003d47c:
    mr      r3, r31
    bl      calcRideMomentum__10TLiveActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x120(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xcc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      calcRidePos__10TLiveActorFv
branch_0x8003d4b4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setBehavior__16TEnemyAttachmentFv
setBehavior__16TEnemyAttachmentFv: # 0x8003d4c8
    blr


.globl set__16TEnemyAttachmentFv
set__16TEnemyAttachmentFv: # 0x8003d4cc
    lwz     r5, 0x160(r3)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r5)
    stw     r0, 0x18(r3)
    lwz     r5, 0x160(r3)
    lwz     r4, 0x30(r5)
    lwz     r0, 0x34(r5)
    stw     r4, 0x30(r3)
    stw     r0, 0x34(r3)
    lwz     r0, 0x38(r5)
    stw     r0, 0x38(r3)
    blr


.globl kill__16TEnemyAttachmentFv
kill__16TEnemyAttachmentFv: # 0x8003d508
    li      r0, 0x0
    stw     r0, 0x150(r3)
    stw     r0, 0x158(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    blr


.globl rebirth__16TEnemyAttachmentFv
rebirth__16TEnemyAttachmentFv: # 0x8003d524
    li      r0, 0x0
    stw     r0, 0x150(r3)
    stw     r0, 0x158(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lfs     f0, -0x743c(rtoc)
    stfs    f0, 0xb0(r3)
    blr


.globl bind__16TEnemyAttachmentFv
bind__16TEnemyAttachmentFv: # 0x8003d548
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x64(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x64(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x13c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x140(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r31)
    lfs     f0, 0xb0(r31)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8003d61c
    stfs    f1, 0xb0(r31)
branch_0x8003d61c:
    lbz     r0, 0x168(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8003d65c
    lfs     f1, 0x60(sp)
    addi    r4, r31, 0xc4
    lfs     f0, 0xc0(r31)
    lwz     r3, -0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x5c(sp)
    lfs     f3, 0x64(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x7440(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r31)
branch_0x8003d65c:
    lfs     f31, 0x60(sp)
    lfs     f1, 0xb0(r31)
    lfs     f0, 0xc8(r31)
    fadds   f1, f31, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8003d690
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x12c(r12)
    mtlr    r12
    blrl
    b       branch_0x8003d69c

branch_0x8003d690:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x8003d69c:
    lfs     f1, 0xc0(r31)
    li      r5, 0x1
    lfs     f2, 0xbc(r31)
    li      r0, 0x0
    lfs     f0, 0x5c(sp)
    fadds   f3, f31, f1
    lfs     f1, -0x7430(rtoc)
    stfs    f0, 0x30(sp)
    addi    r4, sp, 0x30
    fmuls   f1, f1, f2
    stfs    f3, 0x34(sp)
    lwz     r3, -0x6328(r13)
    lfs     f0, 0x64(sp)
    stfs    f0, 0x38(sp)
    stfs    f1, 0x3c(sp)
    stw     r5, 0x40(sp)
    stw     r0, 0x48(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x8003d704
    lwz     r12, 0x0(r31)
    mr      r3, r31
    lwz     r4, 0x4c(sp)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
branch_0x8003d704:
    lwz     r5, 0x5c(sp)
    addi    r3, sp, 0x10
    lwz     r0, 0x60(sp)
    addi    r4, r31, 0x10
    stw     r5, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x64(sp)
    stw     r0, 0x18(r31)
    lwz     r0, 0x5c(sp)
    lwz     r5, 0x60(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x64(sp)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r4, 0x10(sp)
    mr      r3, r31
    lwz     r0, 0x14(sp)
    stw     r4, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x18(sp)
    stw     r0, 0x9c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x138(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x134(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x10(r31)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl getNowGravity__16TEnemyAttachmentFv
getNowGravity__16TEnemyAttachmentFv: # 0x8003d7c8
    lfs     f1, 0xcc(r3)
    blr


.globl recoverScale__16TEnemyAttachmentFv
recoverScale__16TEnemyAttachmentFv: # 0x8003d7d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x24(r3)
    lfs     f1, 0x164(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8003d800
    addi    r3, r3, 0x24
    lfs     f1, -0x7430(rtoc)
    mr      r4, r3
    bl      PSVECScale
    b       branch_0x8003d80c

branch_0x8003d800:
    stfs    f1, 0x2c(r3)
    stfs    f1, 0x28(r3)
    stfs    f1, 0x24(r3)
branch_0x8003d80c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl forceKill__16TEnemyAttachmentFv
forceKill__16TEnemyAttachmentFv: # 0x8003d81c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x104
    beq-    branch_0x8003d850
    cmplwi  r0, 0x105
    beq-    branch_0x8003d850
    cmplwi  r0, 0x4104
    bne-    branch_0x8003d858
branch_0x8003d850:
    li      r0, 0x1
    b       branch_0x8003d85c

branch_0x8003d858:
    li      r0, 0x0
branch_0x8003d85c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8003d87c
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x18(r31)
    bl      isInArea__4TMapCFff
    clrlwi. r0, r3, 24
    bne-    branch_0x8003d8c0
branch_0x8003d87c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x160(r31)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8003d8c0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x160(r31)
    lwz     r0, 0xf0(r3)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r3)
branch_0x8003d8c0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl behaveToHitWall__16TEnemyAttachmentFPC12TBGCheckData
behaveToHitWall__16TEnemyAttachmentFPC12TBGCheckData: # 0x8003d8d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x11c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl behaveToHitGround__16TEnemyAttachmentFv
behaveToHitGround__16TEnemyAttachmentFv: # 0x8003d900
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x8(sp)
    stb     r0, 0x168(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r3)
    lfs     f1, -0x743c(rtoc)
    stfs    f1, 0xac(r3)
    lfs     f0, -0x742c(rtoc)
    stfs    f0, 0xb0(r3)
    stfs    f1, 0xb4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x11c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadInit__16TEnemyAttachmentFP11TSpineEnemyPCc
loadInit__16TEnemyAttachmentFP11TSpineEnemyPCc: # 0x8003d954
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    mr      r30, r3
    stw     r29, 0x24(sp)
    stw     r4, 0x160(r3)
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8003d99c
    lwz     r4, 0x160(r30)
    addi    r3, r29, 0x0
    li      r5, 0x1
    lwz     r4, 0x70(r4)
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8003d99c:
    stw     r29, 0x78(r30)
    addi    r4, r31, 0x0
    li      r5, 0x3
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__16TEnemyAttachmentFPCc
__ct__16TEnemyAttachmentFPCc: # 0x8003d9d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x1958
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x154(r31)
    stw     r0, 0x158(r31)
    stw     r0, 0x160(r31)
    lfs     f0, -0x7440(rtoc)
    stfs    f0, 0x164(r31)
    stb     r0, 0x168(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__25TEnemyPolluteModelManagerFv
__dt__25TEnemyPolluteModelManagerFv: # 0x8003da30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8003da88
    lis     r3, 0x803b
    subi    r0, r3, 0x1980
    stw     r0, 0x0(r30)
    beq-    branch_0x8003da78
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8003da78:
    extsh.  r0, r31
    ble-    branch_0x8003da88
    mr      r3, r30
    bl      __dl__FPv
branch_0x8003da88:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TEnemyAttachmentFv
__dt__16TEnemyAttachmentFv: # 0x8003daa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8003daf4
    lis     r3, 0x803b
    subi    r3, r3, 0x1958
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8003daf4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8003daf4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl appear__16TEnemyAttachmentFv
appear__16TEnemyAttachmentFv: # 0x8003db10
    li      r0, 0x1
    stw     r0, 0x150(r3)
    lfs     f0, -0x7428(rtoc)
    stfs    f0, 0x2c(r3)
    stfs    f0, 0x28(r3)
    stfs    f0, 0x24(r3)
    blr


.globl receiveMessage__16TEnemyAttachmentFP9THitActorUl
receiveMessage__16TEnemyAttachmentFP9THitActorUl: # 0x8003db2c
    li      r3, 0x0
    blr


.globl _32___dt__16TEnemyAttachmentFv
_32___dt__16TEnemyAttachmentFv: # 0x8003db34
    subi    r3, r3, 0x20
    b       __dt__16TEnemyAttachmentFv

