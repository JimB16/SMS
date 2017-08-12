
.globl __dt__12TMarioEffectFv
__dt__12TMarioEffectFv: # 0x8027198c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802719f4
    lis     r3, __vvt__12TMarioEffect@ha
    addi    r3, r3, __vvt__12TMarioEffect@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x802719e4
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x802719e4:
    extsh.  r0, r31
    ble-    branch_0x802719f4
    mr      r3, r30
    bl      __dl__FPv
branch_0x802719f4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__12TMarioEffectFUlPQ26JDrama9TGraphics
perform__12TMarioEffectFUlPQ26JDrama9TGraphics: # 0x80271a10
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x80(sp)
    stmw    r25, 0x64(sp)
    addi    r30, r4, 0x0
    lis     r4, unk_8039fcb0@ha
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    addi    r28, r4, unk_8039fcb0@l
    beq-    branch_0x80271bc4
    lwz     r0, 0x7c(r29)
    cmpwi   r0, 0x1
    beq-    branch_0x80271ad4
    bge-    branch_0x80271a58
    cmpwi   r0, 0x0
    bge-    branch_0x80271a64
    b       branch_0x80271bc4

branch_0x80271a58:
    cmpwi   r0, 0x3
    bge-    branch_0x80271bc4
    b       branch_0x80271b90

branch_0x80271a64:
    lwz     r3, 0x68(r29)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80271a7c
    li      r0, 0x1
    b       branch_0x80271a80

branch_0x80271a7c:
    li      r0, 0x0
branch_0x80271a80:
    clrlwi. r0, r0, 24
    beq-    branch_0x80271bc4
    lwz     r3, 0x80(r29)
    addi    r4, r28, 0x114
    bl      setBck__6MActorFPCc
    lwz     r3, 0x80(r29)
    addi    r4, r28, 0x128
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x80(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0xaf0(r2)
    li      r4, 0x4
    stfs    f0, 0x10(r3)
    lwz     r3, 0x80(r29)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0xaf0(r2)
    li      r0, 0x1
    stfs    f0, 0x10(r3)
    stw     r0, 0x7c(r29)
    b       branch_0x80271bc4

branch_0x80271ad4:
    lwz     r3, 0x68(r29)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80271aec
    li      r0, 0x1
    b       branch_0x80271af0

branch_0x80271aec:
    li      r0, 0x0
branch_0x80271af0:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80271b64
    lwz     r3, 0x3e4(r3)
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    cmplwi  r3, 0x0
    beq-    branch_0x80271bc4
    lwz     r3, 0x68(r29)
    li      r4, 0x0
    lwz     r3, 0x3e4(r3)
    bl      getEmitMtx__9TWaterGunFi
    mr      r5, r3
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r29, 0x0
    li      r4, 0xfe
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x68(r29)
    li      r4, 0x0
    lwz     r3, 0x3e4(r3)
    bl      getEmitMtx__9TWaterGunFi
    mr      r5, r3
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r29, 0x0
    li      r4, 0xff
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    b       branch_0x80271bc4

branch_0x80271b64:
    lwz     r3, 0x80(r29)
    addi    r4, r28, 0x138
    bl      setBck__6MActorFPCc
    lwz     r3, 0x80(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0xaf0(r2)
    li      r0, 0x2
    stfs    f0, 0x10(r3)
    stw     r0, 0x7c(r29)
    b       branch_0x80271bc4

branch_0x80271b90:
    lwz     r3, 0x80(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lbz     r0, 0x5(r3)
    clrlwi. r0, r0, 30
    beq-    branch_0x80271bb0
    li      r0, 0x1
    b       branch_0x80271bb4

branch_0x80271bb0:
    li      r0, 0x0
branch_0x80271bb4:
    cmpwi   r0, 0x0
    beq-    branch_0x80271bc4
    li      r0, 0x0
    stw     r0, 0x7c(r29)
branch_0x80271bc4:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80271c20
    lwz     r0, 0x7c(r29)
    cmpwi   r0, 0x0
    beq-    branch_0x80271c20
    lwz     r3, 0x68(r29)
    li      r4, 0x0
    lwz     r3, 0x3e4(r3)
    bl      getEmitMtx__9TWaterGunFi
    cmplwi  r3, 0x0
    beq-    branch_0x80271c20
    lwz     r3, 0x68(r29)
    li      r4, 0x0
    lwz     r3, 0x3e4(r3)
    bl      getEmitMtx__9TWaterGunFi
    lwz     r4, 0x80(r29)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x80(r29)
    addi    r5, r31, 0x0
    li      r4, 0x2
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80271c20:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x80271c44
    lwz     r0, 0x7c(r29)
    cmpwi   r0, 0x0
    beq-    branch_0x80271c44
    lwz     r3, 0x80(r29)
    addi    r5, r31, 0x0
    li      r4, 0x4
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80271c44:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x80271c68
    lwz     r0, 0x7c(r29)
    cmpwi   r0, 0x0
    beq-    branch_0x80271c68
    lwz     r3, 0x80(r29)
    addi    r5, r31, 0x0
    li      r4, 0x200
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80271c68:
    li      r25, 0x0
    li      r28, 0x0
branch_0x80271c70:
    add     r3, r29, r28
    addi    r26, r3, 0x6c
    lwz     r0, 0x6c(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80271ccc
    addi    r27, r3, 0x74
    lwz     r3, 0x74(r3)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    lwz     r3, 0x0(r27)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lbz     r0, 0x5(r3)
    clrlwi. r0, r0, 30
    beq-    branch_0x80271cb8
    li      r0, 0x1
    b       branch_0x80271cbc

branch_0x80271cb8:
    li      r0, 0x0
branch_0x80271cbc:
    cmpwi   r0, 0x0
    beq-    branch_0x80271ccc
    li      r0, 0x0
    stw     r0, 0x0(r26)
branch_0x80271ccc:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x2
    addi    r28, r28, 0x4
    blt+    branch_0x80271c70
    lmw     r25, 0x64(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl setJumpIntoWaterEffectSmall__12TMarioEffectFv
setJumpIntoWaterEffectSmall__12TMarioEffectFv: # 0x80271cf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stw     r31, 0xe4(sp)
    stw     r30, 0xe0(sp)
    stw     r29, 0xdc(sp)
    li      r29, -0x1
    stw     r28, 0xd8(sp)
    mr      r28, r3
    lwz     r0, 0x6c(r3)
    lis     r3, unk_8039fcb0@ha
    addi    r31, r3, unk_8039fcb0@l
    cmpwi   r0, 0x0
    bne-    branch_0x80271d30
    li      r29, 0x0
branch_0x80271d30:
    lwz     r0, 0x70(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x80271d40
    li      r29, 0x1
branch_0x80271d40:
    cmpwi   r29, 0x0
    blt-    branch_0x80271e68
    lwz     r3, 0x68(r28)
    addi    r4, sp, 0xa4
    addi    r3, r3, 0x220
    bl      PSMTXCopy
    lfs     f1, -0xaec(r2)
    addi    r3, sp, 0x74
    lfs     f2, -0xae8(r2)
    fmr     f3, f1
    bl      PSMTXScale
    addi    r3, sp, 0xa4
    addi    r5, r3, 0x0
    addi    r4, sp, 0x74
    bl      PSMTXConcat
    slwi    r29, r29, 2
    add     r30, r28, r29
    lwzu    r3, 0x74(r30)
    addi    r4, r31, 0x14c
    bl      setBck__6MActorFPCc
    lwz     r3, 0x0(r30)
    addi    r4, r31, 0x14c
    bl      setBpk__6MActorFPCc
    lwz     r3, 0x0(r30)
    addi    r4, r31, 0x14c
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x0(r30)
    addi    r4, r31, 0x14c
    bl      setBrk__6MActorFPCc
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x0(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x0(r30)
    li      r4, 0x2
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x0(r30)
    li      r4, 0x4
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x0(r30)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    addi    r3, sp, 0xa4
    lwz     r4, 0x0(r30)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r4, 0x0(r30)
    li      r5, 0x0
    add     r3, r28, r29
    lwz     r4, 0x4(r4)
    li      r0, 0x1
    lwz     r4, 0x84(r4)
    stb     r5, 0x64(r4)
    lwz     r4, 0x0(r30)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x84(r4)
    stb     r5, 0x98(r4)
    lwz     r4, 0x0(r30)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x84(r4)
    stb     r5, 0x100(r4)
    stw     r0, 0x6c(r3)
branch_0x80271e68:
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lwz     r31, 0xe4(sp)
    mtlr    r0
    lwz     r30, 0xe0(sp)
    lwz     r29, 0xdc(sp)
    lwz     r28, 0xd8(sp)
    addi    sp, sp, 0xf0
    blr


.globl setJumpIntoWaterEffect__12TMarioEffectFv
setJumpIntoWaterEffect__12TMarioEffectFv: # 0x80271e8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x170(sp)
    stfd    f31, 0x168(sp)
    stfd    f30, 0x160(sp)
    stw     r31, 0x15c(sp)
    stw     r30, 0x158(sp)
    stw     r29, 0x154(sp)
    stw     r28, 0x150(sp)
    mr      r28, r3
    lwz     r4, 0x68(r3)
    lis     r3, unk_8039fcb0@ha
    lfs     f0, -0xaf0(r2)
    addi    r30, r3, unk_8039fcb0@l
    lfs     f1, 0xa8(r4)
    fcmpo   cr0, f1, f0
    fmr     f31, f1
    bge-    branch_0x80271ed8
    fneg    f31, f1
branch_0x80271ed8:
    lfs     f0, 0x22c4(r4)
    fcmpo   cr0, f31, f0
    blt-    branch_0x8027209c
    lfs     f2, 0xf0(r4)
    lfs     f1, 0xec(r4)
    lfs     f0, -0xae4(r2)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x8027209c
    lwz     r0, 0x6c(r28)
    li      r29, -0x1
    cmpwi   r0, 0x0
    bne-    branch_0x80271f10
    li      r29, 0x0
branch_0x80271f10:
    lwz     r0, 0x70(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x80271f20
    li      r29, 0x1
branch_0x80271f20:
    cmpwi   r29, 0x0
    blt-    branch_0x8027209c
    addi    r3, r4, 0x220
    addi    r4, sp, 0x11c
    bl      PSMTXCopy
    lwz     r3, 0x68(r28)
    lfs     f0, 0x22d8(r3)
    lfs     f2, 0x22ec(r3)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80271f4c
    lfs     f30, -0xaf0(r2)
branch_0x80271f4c:
    fcmpo   cr0, f31, f2
    ble-    branch_0x80271f58
    lfs     f30, -0xae0(r2)
branch_0x80271f58:
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x80271f7c
    fcmpo   cr0, f31, f2
    cror    2, 0, 2
    bne-    branch_0x80271f7c
    fsubs   f1, f31, f0
    fsubs   f0, f2, f0
    fdivs   f30, f1, f0
branch_0x80271f7c:
    lfs     f1, 0x2314(r3)
    slwi    r29, r29, 2
    lfs     f0, 0x2300(r3)
    add     r31, r28, r29
    addi    r4, r30, 0x14c
    fmadds  f0, f30, f1, f0
    stfs    f0, 0x11c(sp)
    stfs    f0, 0x130(sp)
    stfs    f0, 0x144(sp)
    lwzu    r3, 0x74(r31)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x0(r31)
    addi    r4, r30, 0x14c
    bl      setBpk__6MActorFPCc
    lwz     r3, 0x0(r31)
    addi    r4, r30, 0x14c
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x0(r31)
    addi    r4, r30, 0x14c
    bl      setBrk__6MActorFPCc
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x0(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x0(r31)
    li      r4, 0x2
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x0(r31)
    li      r4, 0x4
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x0(r31)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    addi    r3, sp, 0x11c
    lwz     r4, 0x0(r31)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r4, 0x0(r31)
    li      r0, 0x1
    add     r3, r28, r29
    lwz     r4, 0x4(r4)
    lwz     r4, 0x84(r4)
    stb     r0, 0x30(r4)
    lwz     r4, 0x0(r31)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x84(r4)
    stb     r0, 0x64(r4)
    lwz     r4, 0x0(r31)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x84(r4)
    stb     r0, 0x98(r4)
    lwz     r4, 0x0(r31)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x84(r4)
    stb     r0, 0xcc(r4)
    lwz     r4, 0x0(r31)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x84(r4)
    stb     r0, 0x100(r4)
    stw     r0, 0x6c(r3)
branch_0x8027209c:
    lwz     r0, 0x174(sp)
    lfd     f31, 0x168(sp)
    lfd     f30, 0x160(sp)
    mtlr    r0
    lwz     r31, 0x15c(sp)
    lwz     r30, 0x158(sp)
    lwz     r29, 0x154(sp)
    lwz     r28, 0x150(sp)
    addi    sp, sp, 0x170
    blr


.globl init__12TMarioEffectFP6TMario
init__12TMarioEffectFP6TMario: # 0x802720c4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stmw    r25, 0x14(sp)
    mr      r31, r3
    stw     r4, 0x68(r3)
    lis     r3, unk_8039fcb0@ha
    addi    r29, r3, unk_8039fcb0@l
    stw     r0, 0x6c(r31)
    li      r3, 0x4c
    stw     r0, 0x70(r31)
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8027210c
    mr      r3, r26
    bl      __ct__13MActorAnmDataFv
branch_0x8027210c:
    addi    r28, r26, 0x0
    addi    r3, r28, 0x0
    addi    r4, r29, 0x158
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    li      r27, 0x0
    li      r30, 0x0
branch_0x80272128:
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80272144
    addi    r3, r26, 0x0
    addi    r4, r28, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x80272144:
    addi    r27, r27, 0x1
    addi    r0, r30, 0x74
    cmpwi   r27, 0x2
    stwx    r26, r31, r0
    addi    r30, r30, 0x4
    blt+    branch_0x80272128
    addi    r3, r29, 0x16c
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r27, r3, 0x0
    lis     r28, unk_10040000@h
    li      r26, 0x0
    li      r30, 0x0
branch_0x80272174:
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802721a4
    addi    r3, r27, 0x0
    addi    r4, r28, unk_10040000@l
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x802721a4:
    addi    r0, r30, 0x74
    lwzx    r3, r31, r0
    addi    r4, r25, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    addi    r26, r26, 0x1
    cmpwi   r26, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x80272174
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802721e0
    mr      r3, r25
    bl      __ct__13MActorAnmDataFv
branch_0x802721e0:
    addi    r26, r25, 0x0
    addi    r3, r26, 0x0
    addi    r4, r29, 0x190
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    li      r0, 0x0
    stw     r0, 0x7c(r31)
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80272218
    addi    r3, r25, 0x0
    addi    r4, r26, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x80272218:
    stw     r25, 0x80(r31)
    addi    r3, r29, 0x1a4
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r26, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80272258
    addi    r3, r26, 0x0
    lis     r4, 0x1004
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80272258:
    lwz     r3, 0x80(r31)
    addi    r4, r25, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r3, 0x80(r31)
    addi    r4, r29, 0x114
    bl      setBck__6MActorFPCc
    lwz     r3, 0x80(r31)
    addi    r4, r29, 0x128
    bl      setBtk__6MActorFPCc
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x80(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x80(r31)
    li      r4, 0x4
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r4, r31
    lwz     r3, R13Off_m0x70b0(r13)
    bl      registerOtherObj__10TConductorFPQ26JDrama8TViewObj
    lmw     r25, 0x14(sp)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __sinit_MarioEffect_cpp
__sinit_MarioEffect_cpp: # 0x802722d4
    mflr    r0
    lis     r3, unk_803fc078@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fc078@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8027231c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8027231c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8027234c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8027234c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8027237c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8027237c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802723ac
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x802723ac:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802723dc
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x802723dc:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8027240c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8027240c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8027243c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8027243c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8027246c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8027246c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8027249c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8027249c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802724cc
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x802724cc:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802724fc
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x802724fc:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8027252c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8027252c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8027255c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8027255c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8027258c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8027258c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802725bc
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x802725bc:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_802725d0
unk_802725d0: # 0x802725d0
    addi    r3, r3, -0x20
    b       __dt__12TMarioEffectFv

