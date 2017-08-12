
.globl isInAreaSize__15TPollutionLayerCFffff
isInAreaSize__15TPollutionLayerCFffff: # 0x801a0cf0
    lfs     f0, 0x38(r3)
    fsubs   f0, f0, f4
    fcmpo   cr0, f1, f0
    blt-    branch_0x801a0d30
    lfs     f0, 0x3c(r3)
    fadds   f0, f0, f4
    fcmpo   cr0, f0, f1
    blt-    branch_0x801a0d30
    lfs     f0, 0x40(r3)
    fsubs   f0, f0, f4
    fcmpo   cr0, f3, f0
    blt-    branch_0x801a0d30
    lfs     f0, 0x44(r3)
    fadds   f0, f0, f4
    fcmpo   cr0, f0, f3
    bge-    branch_0x801a0d38
branch_0x801a0d30:
    li      r3, 0x0
    blr

branch_0x801a0d38:
    li      r3, 0x1
    blr


.globl __ct__15TPollutionLayerFv
__ct__15TPollutionLayerFv: # 0x801a0d40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      __ct__11TJointModelFv
    lis     r3, __vvt__15TPollutionLayer@h
    addi    r0, r3, __vvt__15TPollutionLayer@l
    stw     r0, 0x0(r30)
    li      r31, 0x0
    addi    r3, r30, 0x5c
    sth     r31, 0x30(r30)
    sth     r31, 0x32(r30)
    stw     r31, 0x34(r30)
    lfs     f0, -0x4104(r2)
    stfs    f0, 0x38(r30)
    stfs    f0, 0x3c(r30)
    stfs    f0, 0x40(r30)
    stfs    f0, 0x44(r30)
    stw     r31, 0x48(r30)
    stw     r31, 0x4c(r30)
    stb     r31, 0x50(r30)
    stw     r31, 0x54(r30)
    stw     r31, 0x58(r30)
    bl      __ct__13TPollutionPosFv
    stw     r31, 0x80(r30)
    li      r0, 0x8
    li      r5, 0x1
    stb     r0, 0x84(r30)
    li      r4, 0x3e8
    li      r0, 0x64
    stb     r31, 0x85(r30)
    mr      r3, r30
    stw     r31, 0x8c(r30)
    stw     r31, 0x90(r30)
    stw     r31, 0x94(r30)
    stw     r31, 0x98(r30)
    stw     r5, 0x9c(r30)
    stw     r4, 0xa0(r30)
    stw     r0, 0xa4(r30)
    stw     r31, 0xa8(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initJointModel__15TPollutionLayerFP18TJointModelManagerPCcP13MActorAnmData
initJointModel__15TPollutionLayerFP18TJointModelManagerPCcP13MActorAnmData: # 0x801a0e00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x3c(sp)
    bl      initJointModel__11TJointModelFP18TJointModelManagerPCcP13MActorAnmData
    lwz     r0, 0x4(r30)
    mr      r3, r30
    lwz     r4, 0x20(r30)
    lwz     r12, 0x0(r30)
    mulli   r0, r0, 0x2c
    lwz     r4, 0x6c(r4)
    lwz     r12, 0x40(r12)
    add     r29, r4, r0
    mtlr    r12
    addi    r4, r29, 0x0
    blrl
    lfs     f1, 0x8(r29)
    mr      r4, r30
    lfs     f2, 0xc(r29)
    addi    r3, r30, 0x5c
    lwz     r5, 0x28(r29)
    lhz     r6, 0x20(r29)
    lhz     r7, 0x22(r29)
    bl      init__13TPollutionPosFP15TPollutionLayerffPUcii
    lwz     r0, 0x24(r29)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    stw     r0, 0x88(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
    stw     r3, 0x58(r30)
    li      r0, 0x2
    addi    r3, r30, 0x0
    lwz     r5, 0x58(r30)
    mr      r4, r31
    stb     r0, 0x1(r5)
    lwz     r5, 0x58(r30)
    lwz     r0, 0x1c(r5)
    add     r0, r5, r0
    stw     r0, 0x54(r30)
    bl      initTexImage__15TPollutionLayerFPCc
    lhz     r0, 0x30(r30)
    cmpwi   r0, 0x4
    bne-    branch_0x801a0efc
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0x6f
    lbz     r0, 0x6f(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a0efc
    lis     r4, unk_8038a3b8@ha
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r4, unk_8038a3b8@l
    li      r5, 0x6f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801a0efc:
    lwz     r3, 0x2c(r30)
    addi    r4, r31, 0x0
    li      r5, 0x4
    bl      checkAnmFileExist__6MActorFPCci
    clrlwi. r0, r3, 24
    beq-    branch_0x801a0f20
    lwz     r3, 0x2c(r30)
    mr      r4, r31
    bl      setBtk__6MActorFPCc
branch_0x801a0f20:
    lwz     r3, 0x2c(r30)
    addi    r4, r31, 0x0
    li      r5, 0x2
    bl      checkAnmFileExist__6MActorFPCci
    clrlwi. r0, r3, 24
    beq-    branch_0x801a0f44
    lwz     r3, 0x2c(r30)
    mr      r4, r31
    bl      setBpk__6MActorFPCc
branch_0x801a0f44:
    lwz     r3, 0x2c(r30)
    addi    r4, r31, 0x0
    li      r5, 0x5
    bl      checkAnmFileExist__6MActorFPCci
    clrlwi. r0, r3, 24
    beq-    branch_0x801a0f68
    lwz     r3, 0x2c(r30)
    mr      r4, r31
    bl      setBrk__6MActorFPCc
branch_0x801a0f68:
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x801a0f8c

branch_0x801a0f74:
    lwz     r3, 0x14(r30)
    mr      r4, r30
    lwzx    r3, r3, r31
    bl      initAreaInfo__13TPollutionObjFP15TPollutionLayer
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x801a0f8c:
    lwz     r0, 0x10(r30)
    cmpw    r29, r0
    blt+    branch_0x801a0f74
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl initLayerInfo__15TPollutionLayerFPC19TPollutionLayerInfo
initLayerInfo__15TPollutionLayerFPC19TPollutionLayerInfo: # 0x801a0fb4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x2
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x28(sp)
    lhz     r5, 0x0(r4)
    sth     r5, 0x30(r3)
    lhz     r3, 0x2(r4)
    sth     r3, 0x32(r31)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x38(r31)
    lfs     f0, 0x14(r4)
    stfs    f0, 0x40(r31)
    lfs     f0, 0x18(r4)
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x44(r31)
    stw     r0, 0x48(r31)
    lhz     r0, 0x30(r31)
    cmpwi   r0, 0x7
    bne-    branch_0x801a1024
    li      r0, 0xc8
    stb     r0, 0x50(r31)
    li      r0, 0xa0
    stb     r0, 0x85(r31)
    b       branch_0x801a1054

branch_0x801a1024:
    cmpwi   r0, 0x1
    beq-    branch_0x801a1034
    cmpwi   r0, 0x4
    bne-    branch_0x801a1044
branch_0x801a1034:
    li      r0, 0x80
    stb     r0, 0x50(r31)
    stb     r0, 0x85(r31)
    b       branch_0x801a1054

branch_0x801a1044:
    li      r0, 0x1e
    stb     r0, 0x50(r31)
    li      r0, 0x32
    stb     r0, 0x85(r31)
branch_0x801a1054:
    li      r0, 0x1e
    stw     r0, 0x94(r31)
    lwz     r30, 0x94(r31)
    mulli   r3, r30, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__Q29JGeometry8TVec3_f_Fv@h
    addi    r4, r4, __ct__Q29JGeometry8TVec3_f_Fv@l
    addi    r7, r30, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x98(r31)
    li      r4, 0x0
    lwz     r0, 0x94(r31)
    lwz     r3, 0x98(r31)
    mulli   r5, r0, 0xc
    bl      memset
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl initTexImage__15TPollutionLayerFPCc
initTexImage__15TPollutionLayerFPCc: # 0x801a10b4
    mflr    r0
    lis     r5, unk_8038a3e0@ha
    stw     r0, 0x4(sp)
    addi    r6, r4, 0x0
    crxor   6, 6, 6
    addi    r5, r5, unk_8038a3e0@l
    stwu    sp, -0x1d8(sp)
    li      r4, 0x100
    stmw    r25, 0x1bc(sp)
    addi    r25, r3, 0x0
    addi    r3, sp, 0xb8
    bl      snprintf
    addi    r3, sp, 0xb8
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x80(r25)
    li      r4, 0x0
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x9
    bne-    branch_0x801a1108
    li      r4, 0x1
branch_0x801a1108:
    clrlwi  r31, r4, 24
    li      r27, 0x0
    b       branch_0x801a1258

branch_0x801a1114:
    srawi   r29, r27, 2
    clrlslwi  r28, r27, 30, 3
    li      r26, 0x0
    b       branch_0x801a1248

branch_0x801a1124:
    lwz     r3, 0x60(r25)
    cmplwi  r31, 0x0
    lwz     r5, 0x80(r25)
    addi    r4, r3, -0x1
    subf    r0, r27, r4
    mullw   r0, r6, r0
    add     r3, r0, r26
    addi    r0, r3, 0x436
    lbzx    r30, r5, r0
    beq-    branch_0x801a1170
    cmpwi   r26, 0x0
    ble-    branch_0x801a1214
    addi    r0, r6, -0x1
    cmpw    r26, r0
    bge-    branch_0x801a1214
    cmpwi   r27, 0x0
    ble-    branch_0x801a1214
    cmpw    r27, r4
    bge-    branch_0x801a1214
branch_0x801a1170:
    cmplwi  r30, 0x0
    beq-    branch_0x801a1214
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r25, 0x5c
    bl      isProhibit__13TPollutionPosCFii
    clrlwi. r0, r3, 24
    bne-    branch_0x801a1214
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r25, 0x5c
    bl      getEdgeDegree__13TPollutionPosCFii
    cmpwi   r3, 0x0
    beq-    branch_0x801a11e4
    lbz     r0, R13Off_m0x7a9c(r13)
    srawi   r5, r26, 3
    lwz     r4, 0x64(r25)
    clrlwi  r6, r26, 29
    mullw   r7, r3, r0
    lwz     r3, 0x54(r25)
    addi    r0, r4, -0x3
    slw     r0, r29, r0
    add     r0, r5, r0
    slwi    r0, r0, 5
    add     r0, r0, r6
    subf    r4, r7, r30
    add     r0, r0, r3
    stbx    r4, r28, r0
    b       branch_0x801a1244

branch_0x801a11e4:
    lwz     r3, 0x64(r25)
    srawi   r4, r26, 3
    clrlwi  r5, r26, 29
    lwz     r6, 0x54(r25)
    addi    r0, r3, -0x3
    slw     r0, r29, r0
    add     r0, r4, r0
    slwi    r0, r0, 5
    add     r0, r0, r5
    add     r0, r0, r6
    stbx    r30, r28, r0
    b       branch_0x801a1244

branch_0x801a1214:
    lwz     r3, 0x64(r25)
    srawi   r4, r26, 3
    clrlwi  r5, r26, 29
    lwz     r6, 0x54(r25)
    addi    r0, r3, -0x3
    slw     r0, r29, r0
    add     r0, r4, r0
    slwi    r0, r0, 5
    add     r0, r0, r5
    add     r0, r0, r6
    li      r3, 0x0
    stbx    r3, r28, r0
branch_0x801a1244:
    addi    r26, r26, 0x1
branch_0x801a1248:
    lwz     r6, 0x5c(r25)
    cmpw    r26, r6
    blt+    branch_0x801a1124
    addi    r27, r27, 0x1
branch_0x801a1258:
    lwz     r4, 0x60(r25)
    cmpw    r27, r4
    blt+    branch_0x801a1114
    lwz     r0, 0x5c(r25)
    lwz     r3, 0x54(r25)
    mullw   r4, r0, r4
    bl      DCStoreRange
    lmw     r25, 0x1bc(sp)
    lwz     r0, 0x1dc(sp)
    addi    sp, sp, 0x1d8
    mtlr    r0
    blr


.globl perform__15TPollutionLayerFUlPQ26JDrama9TGraphics
perform__15TPollutionLayerFUlPQ26JDrama9TGraphics: # 0x801a1288
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x801a12bc
    mr      r3, r29
    bl      action__15TPollutionLayerFv
branch_0x801a12bc:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TJointModelFUlPQ26JDrama9TGraphics
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl isPolluted__15TPollutionLayerCFfff
isPolluted__15TPollutionLayerCFfff: # 0x801a12e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmr     f31, f3
    stfd    f30, 0x48(sp)
    fmr     f30, f2
    stfd    f29, 0x40(sp)
    fmr     f29, f1
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x801a133c
    li      r3, 0x0
    b       branch_0x801a1418

branch_0x801a133c:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x6
    bne-    branch_0x801a136c
    lfs     f0, -0x4100(r2)
    fcmpo   cr0, f30, f0
    ble-    branch_0x801a136c
    li      r3, 0x0
    b       branch_0x801a1418

branch_0x801a136c:
    mr      r3, r29
    fmr     f1, f29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    mr      r0, r3
    fmr     f1, f31
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r31, r0
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    fmr     f1, f30
    addi    r30, r3, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    addi    r3, r29, 0x5c
    bl      isSame__13TPollutionPosCFiif
    clrlwi. r0, r3, 24
    bne-    branch_0x801a13cc
    li      r3, 0x0
    b       branch_0x801a1418

branch_0x801a13cc:
    lwz     r3, 0x64(r29)
    srawi   r5, r31, 3
    srawi   r4, r30, 2
    lwz     r6, 0x54(r29)
    addi    r3, r3, -0x3
    slw     r3, r4, r3
    lbz     r0, 0x50(r29)
    add     r3, r5, r3
    clrlwi  r4, r31, 29
    slwi    r3, r3, 5
    add     r3, r3, r4
    clrlslwi  r4, r30, 30, 3
    add     r3, r3, r6
    lbzx    r3, r4, r3
    cmplw   r3, r0
    ble-    branch_0x801a1414
    li      r3, 0x1
    b       branch_0x801a1418

branch_0x801a1414:
    li      r3, 0x0
branch_0x801a1418:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lfd     f29, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x58
    blr


.globl stamp__15TPollutionLayerFUsffff
stamp__15TPollutionLayerFUsffff: # 0x801a1440
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    fmr     f31, f4
    stfd    f30, 0x60(sp)
    fmr     f30, f3
    stfd    f29, 0x58(sp)
    fmr     f29, f2
    stfd    f28, 0x50(sp)
    fmr     f28, f1
    stmw    r27, 0x3c(sp)
    mr      r27, r3
    mr      r28, r4
    lwz     r12, 0x0(r27)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a1568
    addi    r3, r27, 0x5c
    fmr     f1, f29
    bl      worldToDepth__13TPollutionPosCFf
    extsh   r29, r3
    fmr     f1, f30
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    clrlwi  r30, r3, 16
    fmr     f1, f28
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    fmr     f1, f31
    addi    r0, r27, 0x5c
    clrlwi  r31, r3, 16
    mr      r3, r0
    bl      worldToTexSize__13TPollutionPosCFf
    lwz     r4, R13Off_m0x62f0(r13)
    clrlwi  r0, r28, 16
    clrlwi  r5, r3, 16
    lwz     r6, 0x4(r27)
    addi    r3, r4, 0x70
    mulli   r0, r0, 0x14
    lwz     r3, 0x1c(r3)
    clrlwi  r4, r6, 24
    addi    r6, r31, 0x0
    addi    r7, r30, 0x0
    addi    r8, r29, 0x0
    add     r3, r3, r0
    bl      pushTask__18TPollutionTexStampFUcUsUsUss
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x6
    beq-    branch_0x801a1568
    lwz     r3, R13Off_m0x62f0(r13)
    addi    r4, r28, 0x0
    addi    r3, r3, 0x70
    bl      stampIsCleanType__22TPollutionCounterLayerCFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x801a1568
    fmr     f1, f28
    mr      r3, r27
    fmr     f2, f29
    fmr     f3, f30
    fmr     f4, f31
    bl      cleaned__15TPollutionLayerFffff
branch_0x801a1568:
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lfd     f29, 0x58(sp)
    lfd     f28, 0x50(sp)
    addi    sp, sp, 0x70
    blr


.globl cleaned__15TPollutionLayerFffff
cleaned__15TPollutionLayerFffff: # 0x801a158c
    mflr    r0
    lis     r4, pos_2426@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    fmr     f31, f4
    stfd    f30, 0x80(sp)
    fmr     f30, f3
    stfd    f29, 0x78(sp)
    fmr     f29, f2
    stfd    f28, 0x70(sp)
    fmr     f28, f1
    stw     r31, 0x6c(sp)
    addi    r31, r4, pos_2426@l
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    mr      r29, r3
    lbz     r0, R13Off_m0x62e4(r13)
    extsb.  r0, r0
    bne-    branch_0x801a15e8
    li      r0, 0x1
    stw     r0, R13Off_m0x62e8(r13)
    stb     r0, R13Off_m0x62e4(r13)
branch_0x801a15e8:
    lwz     r3, R13Off_m0x62e8(r13)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x62e8(r13)
    lwz     r0, R13Off_m0x62e8(r13)
    cmpwi   r0, 0x5
    ble-    branch_0x801a1920
    lbz     r0, R13Off_m0x62e3(r13)
    li      r3, 0x0
    stw     r3, R13Off_m0x62e8(r13)
    extsb.  r0, r0
    bne-    branch_0x801a1638
    lis     r3, __ct__Q29JGeometry8TVec3_f_Fv@h
    addi    r4, r3, __ct__Q29JGeometry8TVec3_f_Fv@l
    addi    r3, r31, 0x0
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0xa
    bl      __construct_array
    li      r0, 0x1
    stb     r0, R13Off_m0x62e3(r13)
branch_0x801a1638:
    lbz     r0, R13Off_m0x62dc(r13)
    extsb.  r0, r0
    bne-    branch_0x801a1654
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, R13Off_m0x62e0(r13)
    stb     r0, R13Off_m0x62dc(r13)
branch_0x801a1654:
    lwz     r0, R13Off_m0x62e0(r13)
    mulli   r0, r0, 0xc
    add     r3, r31, r0
    stfs    f28, 0x0(r3)
    stfs    f29, 0x4(r3)
    stfs    f30, 0x8(r3)
    lbz     r0, R13Off_m0x62d4(r13)
    extsb.  r0, r0
    bne-    branch_0x801a1688
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, R13Off_m0x62d8(r13)
    stb     r0, R13Off_m0x62d4(r13)
branch_0x801a1688:
    lbz     r0, R13Off_m0x62cc(r13)
    extsb.  r0, r0
    bne-    branch_0x801a16a4
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, R13Off_m0x62d0(r13)
    stb     r0, R13Off_m0x62cc(r13)
branch_0x801a16a4:
    lwz     r5, R13Off_m0x62d8(r13)
    lis     r4, x_offset_table_2432@h
    lwz     r0, R13Off_m0x62e0(r13)
    lis     r3, 0x803c
    slwi    r5, r5, 2
    addi    r4, r4, x_offset_table_2432@l
    lfd     f2, -0x40f8(r2)
    add     r4, r4, r5
    lfs     f3, -0x40fc(r2)
    lwz     r4, 0x0(r4)
    mulli   r5, r0, 0xc
    xoris   r0, r4, 0x8000
    stw     r0, 0x5c(sp)
    lis     r4, 0x4330
    add     r7, r31, r5
    stw     r4, 0x58(sp)
    addi    r30, r31, 0x8
    lfs     f0, 0x0(r7)
    addi    r0, r3, 0x2138
    lfd     f1, 0x58(sp)
    add     r6, r30, r5
    fsubs   f1, f1, f2
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x0(r7)
    lwz     r3, R13Off_m0x62d0(r13)
    lfs     f0, 0x0(r6)
    slwi    r3, r3, 2
    add     r3, r0, r3
    lwz     r0, 0x0(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    stw     r4, 0x50(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x0(r6)
    lwz     r4, R13Off_m0x62d8(r13)
    lwz     r3, R13Off_m0x62d0(r13)
    addi    r0, r4, 0x1
    stw     r0, R13Off_m0x62d8(r13)
    addi    r0, r3, 0x3
    lwz     r3, R13Off_m0x62d8(r13)
    stw     r0, R13Off_m0x62d0(r13)
    cmpwi   r3, 0xa
    blt-    branch_0x801a1760
    addi    r0, r3, -0xa
    stw     r0, R13Off_m0x62d8(r13)
branch_0x801a1760:
    lwz     r3, R13Off_m0x62d0(r13)
    cmpwi   r3, 0xa
    blt-    branch_0x801a1774
    addi    r0, r3, -0xa
    stw     r0, R13Off_m0x62d0(r13)
branch_0x801a1774:
    mr      r3, r29
    lfs     f1, 0x0(r7)
    lwz     r12, 0x0(r29)
    add     r4, r31, r5
    lfs     f2, 0x4(r4)
    lwz     r12, 0x50(r12)
    lfs     f3, 0x0(r6)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a1920
    mr      r3, r29
    lwz     r0, R13Off_m0x62e0(r13)
    lwz     r12, 0x0(r29)
    mulli   r0, r0, 0xc
    lwz     r12, 0x3c(r12)
    mtlr    r12
    lfsx    f1, r30, r0
    blrl
    mr      r30, r3
    lwz     r0, R13Off_m0x62e0(r13)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mulli   r0, r0, 0xc
    lwz     r12, 0x38(r12)
    lfsx    f1, r31, r0
    mtlr    r12
    blrl
    lwz     r4, 0x64(r29)
    srawi   r6, r3, 3
    srawi   r5, r30, 2
    lwz     r7, 0x54(r29)
    addi    r0, r4, -0x3
    slw     r0, r5, r0
    add     r0, r6, r0
    clrlwi  r3, r3, 29
    slwi    r0, r0, 5
    add     r0, r0, r3
    clrlslwi  r3, r30, 30, 3
    add     r0, r0, r7
    lbzx    r0, r3, r0
    cmplwi  r0, 0x64
    ble-    branch_0x801a1920
    lwz     r0, 0xa8(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x801a1834
    lwz     r0, R13Off_m0x7aa0(r13)
    stw     r0, 0xa8(r29)
branch_0x801a1834:
    lwz     r0, R13Off_m0x62e0(r13)
    fmr     f1, f31
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x6809
    mulli   r0, r0, 0xc
    add     r5, r31, r0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lbz     r0, R13Off_m0x62c4(r13)
    extsb.  r0, r0
    bne-    branch_0x801a187c
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, R13Off_m0x62c8(r13)
    stb     r0, R13Off_m0x62c4(r13)
branch_0x801a187c:
    lwz     r0, R13Off_m0x62c8(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x801a18dc
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x801a18bc
    lwz     r0, R13Off_m0x62e0(r13)
    mr      r7, r29
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x6a
    mulli   r0, r0, 0xc
    add     r5, r31, r0
    li      r6, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x801a18dc

branch_0x801a18bc:
    lwz     r0, R13Off_m0x62e0(r13)
    mr      r7, r29
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x1db
    mulli   r0, r0, 0xc
    add     r5, r31, r0
    li      r6, 0x2
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801a18dc:
    lwz     r3, R13Off_m0x62c8(r13)
    lwz     r0, R13Off_m0x7a90(r13)
    addi    r3, r3, 0x1
    stw     r3, R13Off_m0x62c8(r13)
    lwz     r3, R13Off_m0x62c8(r13)
    cmpw    r3, r0
    ble-    branch_0x801a1900
    li      r0, 0x0
    stw     r0, R13Off_m0x62c8(r13)
branch_0x801a1900:
    lwz     r3, R13Off_m0x62e0(r13)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x62e0(r13)
    lwz     r0, R13Off_m0x62e0(r13)
    cmpwi   r0, 0xa
    ble-    branch_0x801a1920
    li      r0, 0x0
    stw     r0, R13Off_m0x62e0(r13)
branch_0x801a1920:
    fmr     f1, f28
    mr      r3, r29
    fmr     f2, f29
    fmr     f3, f30
    bl      appearItem__15TPollutionLayerFfff
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x90
    blr


.globl appearItem__15TPollutionLayerFfff
appearItem__15TPollutionLayerFfff: # 0x801a1960
    blr


.globl stampModel__15TPollutionLayerFP8J3DModel
stampModel__15TPollutionLayerFP8J3DModel: # 0x801a1964
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x38(r3)
    lfs     f1, 0x2c(r4)
    lfs     f2, 0x4c(r4)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801a19cc
    lfs     f0, 0x40(r3)
    fcmpo   cr0, f2, f0
    blt-    branch_0x801a19cc
    lfs     f0, 0x3c(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq-    branch_0x801a19cc
    lfs     f0, 0x44(r3)
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x801a19b4
    b       branch_0x801a19cc

branch_0x801a19b4:
    lwz     r6, R13Off_m0x62f0(r13)
    mr      r5, r4
    lwz     r0, 0x4(r3)
    addi    r3, r6, 0x70
    clrlwi  r4, r0, 24
    bl      pushModelStampTask__22TPollutionCounterLayerFUcP8J3DModel
branch_0x801a19cc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__23TPollutionLayerWallBaseFv
__ct__23TPollutionLayerWallBaseFv: # 0x801a19dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__15TPollutionLayerFv
    lis     r3, __vvt__23TPollutionLayerWallBase@h
    addi    r0, r3, __vvt__23TPollutionLayerWallBase@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lfs     f0, -0x4104(r2)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initLayerInfo__24TPollutionLayerWallPlusXFPC19TPollutionLayerInfo
initLayerInfo__24TPollutionLayerWallPlusXFPC19TPollutionLayerInfo: # 0x801a1a24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initLayerInfo__15TPollutionLayerFPC19TPollutionLayerInfo
    lfs     f0, 0x40(r31)
    li      r0, 0x14
    stfs    f0, 0xac(r31)
    lfs     f0, 0x44(r31)
    stfs    f0, 0xb0(r31)
    lfs     f0, 0x38(r31)
    stfs    f0, 0x40(r31)
    lfs     f0, 0x3c(r31)
    stfs    f0, 0x44(r31)
    stw     r0, 0x48(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stamp__24TPollutionLayerWallPlusXFUsffff
stamp__24TPollutionLayerWallPlusXFUsffff: # 0x801a1a78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    fmr     f31, f4
    stfd    f30, 0x58(sp)
    fmr     f30, f3
    stfd    f29, 0x50(sp)
    fmr     f29, f2
    stfd    f28, 0x48(sp)
    fmr     f28, f1
    stmw    r26, 0x30(sp)
    mr      r26, r3
    mr      r27, r4
    lwz     r12, 0x0(r26)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a1b54
    fmr     f1, f28
    addi    r28, r26, 0x5c
    addi    r3, r28, 0x0
    bl      worldToDepth__13TPollutionPosCFf
    extsh   r29, r3
    fmr     f1, f29
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    clrlwi  r30, r3, 16
    fmr     f1, f30
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    fmr     f1, f31
    clrlwi  r31, r3, 16
    addi    r3, r28, 0x0
    bl      worldToTexSize__13TPollutionPosCFf
    lwz     r4, R13Off_m0x62f0(r13)
    clrlwi  r0, r27, 16
    clrlwi  r5, r3, 16
    lwz     r6, 0x4(r26)
    addi    r3, r4, 0x70
    mulli   r0, r0, 0x14
    lwz     r3, 0x1c(r3)
    clrlwi  r4, r6, 24
    addi    r6, r31, 0x0
    addi    r7, r30, 0x0
    addi    r8, r29, 0x0
    add     r3, r3, r0
    bl      pushTask__18TPollutionTexStampFUcUsUsUss
branch_0x801a1b54:
    lmw     r26, 0x30(sp)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lfd     f29, 0x50(sp)
    lfd     f28, 0x48(sp)
    addi    sp, sp, 0x68
    blr


.globl getTexPosS__24TPollutionLayerWallPlusXCFf
getTexPosS__24TPollutionLayerWallPlusXCFf: # 0x801a1b78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x44(r3)
    addi    r3, r3, 0x5c
    fsubs   f1, f0, f1
    bl      worldToTexSize__13TPollutionPosCFf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initLayerInfo__24TPollutionLayerWallPlusZFPC19TPollutionLayerInfo
initLayerInfo__24TPollutionLayerWallPlusZFPC19TPollutionLayerInfo: # 0x801a1ba4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initLayerInfo__15TPollutionLayerFPC19TPollutionLayerInfo
    lfs     f0, 0x40(r31)
    li      r0, 0x14
    stfs    f0, 0xac(r31)
    lfs     f0, 0x44(r31)
    stfs    f0, 0xb0(r31)
    stw     r0, 0x48(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stamp__24TPollutionLayerWallPlusZFUsffff
stamp__24TPollutionLayerWallPlusZFUsffff: # 0x801a1be8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    fmr     f31, f4
    stfd    f30, 0x58(sp)
    fmr     f30, f3
    stfd    f29, 0x50(sp)
    fmr     f29, f2
    stfd    f28, 0x48(sp)
    fmr     f28, f1
    stmw    r26, 0x30(sp)
    mr      r26, r3
    mr      r27, r4
    lwz     r12, 0x0(r26)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a1cc4
    fmr     f1, f30
    addi    r28, r26, 0x5c
    addi    r3, r28, 0x0
    bl      worldToDepth__13TPollutionPosCFf
    extsh   r29, r3
    fmr     f1, f29
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    clrlwi  r30, r3, 16
    fmr     f1, f28
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    fmr     f1, f31
    clrlwi  r31, r3, 16
    addi    r3, r28, 0x0
    bl      worldToTexSize__13TPollutionPosCFf
    lwz     r4, R13Off_m0x62f0(r13)
    clrlwi  r0, r27, 16
    clrlwi  r5, r3, 16
    lwz     r6, 0x4(r26)
    addi    r3, r4, 0x70
    mulli   r0, r0, 0x14
    lwz     r3, 0x1c(r3)
    clrlwi  r4, r6, 24
    addi    r6, r31, 0x0
    addi    r7, r30, 0x0
    addi    r8, r29, 0x0
    add     r3, r3, r0
    bl      pushTask__18TPollutionTexStampFUcUsUsUss
branch_0x801a1cc4:
    lmw     r26, 0x30(sp)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lfd     f29, 0x50(sp)
    lfd     f28, 0x48(sp)
    addi    sp, sp, 0x68
    blr


.globl initJointModel__19TPollutionLayerWaveFP18TJointModelManagerPCcP13MActorAnmData
initJointModel__19TPollutionLayerWaveFP18TJointModelManagerPCcP13MActorAnmData: # 0x801a1ce8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r3
    stw     r4, 0x20(r3)
    lwz     r0, 0x4(r29)
    lwz     r4, 0x20(r29)
    lwz     r12, 0x0(r29)
    mulli   r0, r0, 0x2c
    lwz     r4, 0x6c(r4)
    lwz     r12, 0x40(r12)
    add     r31, r4, r0
    mtlr    r12
    addi    r4, r31, 0x0
    blrl
    lfs     f1, 0x8(r31)
    mr      r4, r29
    lfs     f2, 0xc(r31)
    addi    r3, r29, 0x5c
    lwz     r5, 0x28(r31)
    lhz     r6, 0x20(r31)
    lhz     r7, 0x22(r31)
    bl      init__13TPollutionPosFP15TPollutionLayerffPUcii
    lwz     r0, 0x24(r31)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    stw     r0, 0x88(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
    stw     r3, 0x58(r29)
    li      r0, 0x2
    addi    r3, r29, 0x0
    lwz     r5, 0x58(r29)
    mr      r4, r30
    stb     r0, 0x1(r5)
    lwz     r5, 0x58(r29)
    lwz     r0, 0x1c(r5)
    add     r0, r5, r0
    stw     r0, 0x54(r29)
    bl      initTexImage__15TPollutionLayerFPCc
    lhz     r0, 0x30(r29)
    cmpwi   r0, 0x4
    bne-    branch_0x801a1de0
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r31, r3, 0x6f
    lbz     r0, 0x6f(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a1de0
    lis     r4, unk_8038a3b8@ha
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r4, unk_8038a3b8@l
    li      r5, 0x6f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801a1de0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl getTexResource__19TPollutionLayerWaveFPCc
getTexResource__19TPollutionLayerWaveFPCc: # 0x801a1dfc
    mflr    r0
    lis     r3, unk_8038a3fc@ha
    stw     r0, 0x4(sp)
    addi    r6, r4, 0x0
    crxor   6, 6, 6
    addi    r5, r3, unk_8038a3fc@l
    stwu    sp, -0x110(sp)
    li      r4, 0x100
    addi    r3, sp, 0x10
    bl      snprintf
    addi    r3, sp, 0x10
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r0, 0x114(sp)
    addi    sp, sp, 0x110
    mtlr    r0
    blr


.globl perform__19TPollutionLayerWaveFUlPQ26JDrama9TGraphics
perform__19TPollutionLayerWaveFUlPQ26JDrama9TGraphics: # 0x801a1e3c
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x801a1e68
    mr      r3, r31
    bl      initGX__19TPollutionLayerWaveCFv
    mr      r3, r31
    bl      draw__19TPollutionLayerWaveCFv
branch_0x801a1e68:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl draw__19TPollutionLayerWaveCFv
draw__19TPollutionLayerWaveCFv: # 0x801a1e7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stfd    f28, 0x78(sp)
    stfd    f27, 0x70(sp)
    stfd    f26, 0x68(sp)
    stw     r31, 0x64(sp)
    lis     r31, 0xcc01
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    mr      r29, r3
    lfs     f1, 0x3c(r3)
    lfs     f0, 0x38(r3)
    lfs     f4, 0x40(r3)
    fsubs   f3, f1, f0
    lfs     f2, -0x7a98(r13)
    lfs     f0, 0x44(r3)
    fmr     f28, f4
    lfs     f1, -0x4100(r2)
    fdivs   f2, f3, f2
    lfs     f31, -0x40f0(r2)
    fsubs   f0, f0, f4
    fctiwz  f2, f2
    fdivs   f30, f1, f3
    stfd    f2, 0x50(sp)
    lwz     r0, 0x54(sp)
    clrlslwi  r30, r0, 16, 1
    fdivs   f29, f1, f0
    b       branch_0x801a1fb8

branch_0x801a1efc:
    clrlwi  r5, r30, 16
    li      r3, 0x98
    li      r4, 0x0
    bl      GXBegin
    lfs     f27, 0x38(r29)
    b       branch_0x801a1fa0

branch_0x801a1f14:
    fmr     f1, f27
    lwz     r3, R13Off_m0x626c(r13)
    fmr     f2, f28
    fadds   f26, f28, f3
    bl      getWaveHeight__11TMapObjWaveCFff
    fsubs   f0, f1, f31
    stfs    f27, -0x8000(r31)
    fmr     f1, f27
    lwz     r3, R13Off_m0x626c(r13)
    fmr     f2, f26
    stfs    f0, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    lfs     f0, 0x38(r29)
    lfs     f3, 0x40(r29)
    fsubs   f0, f27, f0
    fsubs   f3, f28, f3
    fmuls   f0, f30, f0
    fmuls   f3, f29, f3
    stfs    f0, -0x8000(r31)
    stfs    f3, -0x8000(r31)
    bl      getWaveHeight__11TMapObjWaveCFff
    fsubs   f1, f1, f31
    stfs    f27, -0x8000(r31)
    lfs     f0, -0x7a98(r13)
    stfs    f1, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    lfs     f1, 0x38(r29)
    lfs     f2, 0x40(r29)
    fsubs   f1, f27, f1
    fsubs   f2, f26, f2
    fadds   f27, f27, f0
    fmuls   f0, f30, f1
    fmuls   f1, f29, f2
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
branch_0x801a1fa0:
    lfs     f0, 0x3c(r29)
    lfs     f3, -0x7a98(r13)
    fsubs   f0, f0, f3
    fcmpo   cr0, f27, f0
    blt+    branch_0x801a1f14
    fadds   f28, f28, f3
branch_0x801a1fb8:
    lfs     f1, 0x44(r29)
    lfs     f0, -0x7a98(r13)
    fsubs   f0, f1, f0
    fcmpo   cr0, f28, f0
    blt+    branch_0x801a1efc
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lfd     f28, 0x78(sp)
    lfd     f27, 0x70(sp)
    lfd     f26, 0x68(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x98
    blr


.globl initGX__19TPollutionLayerWaveCFv
initGX__19TPollutionLayerWaveCFv: # 0x801a2000
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    bl      ReInitializeGX
    lis     r3, j3dSys@h
    addi    r3, r3, j3dSys@l
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r3, R2Off_m0x4108(r2)
    addi    r4, sp, 0x14
    lbz     r0, R13Off_m0x7a94(r13)
    stw     r3, 0x10(sp)
    li      r3, 0x4
    stb     r0, 0x13(sp)
    lwz     r0, 0x10(sp)
    stw     r0, 0x14(sp)
    bl      GXSetChanMatColor
    lwz     r4, 0x58(r31)
    li      r31, 0x0
    addi    r3, sp, 0x18
    stw     r31, 0x40(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r31, 0x68(sp)
    addi    r3, sp, 0x18
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x4
    li      r6, 0x5
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetZCompLoc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    addi    r3, sp, 0x18
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl getPlaneType__24TPollutionLayerWallPlusXCFv
getPlaneType__24TPollutionLayerWallPlusXCFv: # 0x801a2220
    li      r3, 0x2
    blr


.globl getPlaneType__24TPollutionLayerWallPlusZCFv
getPlaneType__24TPollutionLayerWallPlusZCFv: # 0x801a2228
    li      r3, 0x4
    blr


.globl getPlaneType__19TPollutionLayerWaveCFv
getPlaneType__19TPollutionLayerWaveCFv: # 0x801a2230
    li      r3, 0x6
    blr


.globl __sinit_PollutionLayer_cpp
__sinit_PollutionLayer_cpp: # 0x801a2238
    mflr    r0
    lis     r3, pos_2426@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, pos_2426@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2280
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801a2280:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801a22b0
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801a22b0:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801a22e0
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801a22e0:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2310
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801a2310:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2340
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801a2340:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2370
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801a2370:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801a23a0
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801a23a0:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801a23d0
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801a23d0:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2400
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801a2400:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2430
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801a2430:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2460
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801a2460:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2490
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801a2490:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801a24c0
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801a24c0:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801a24f0
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801a24f0:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801a2520
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801a2520:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

