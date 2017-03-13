
.globl __dt__22TCommonLauncherManagerFv
__dt__22TCommonLauncherManagerFv: # 0x800a291c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800a2974
    lis     r3, 0x803b
    addi    r0, r3, 0x5bd0
    stw     r0, 0x0(r30)
    beq-    branch_0x800a2964
    lis     r3, 0x803b
    addi    r0, r3, 0x5d50
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800a2964:
    extsh.  r0, r31
    ble-    branch_0x800a2974
    mr      r3, r30
    bl      __dl__FPv
branch_0x800a2974:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__22TCommonLauncherManagerFR20JSUMemoryInputStream
load__22TCommonLauncherManagerFR20JSUMemoryInputStream: # 0x800a2990
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__22TCommonLauncherManagerFv
createModelData__22TCommonLauncherManagerFv: # 0x800a29b0
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x2ad8
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__22TCommonLauncherManagerFPCc
__ct__22TCommonLauncherManagerFPCc: # 0x800a29e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x5d50
    lis     r3, 0x803b
    stw     r0, 0x0(r31)
    addi    r0, r3, 0x5bd0
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16TLauncherManagerFv
__dt__16TLauncherManagerFv: # 0x800a2a2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800a2a74
    lis     r3, 0x803b
    addi    r0, r3, 0x5d50
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800a2a74
    mr      r3, r30
    bl      __dl__FPv
branch_0x800a2a74:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__15TCommonLauncherFUlPQ26JDrama9TGraphics
perform__15TCommonLauncherFUlPQ26JDrama9TGraphics: # 0x800a2a90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r4, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x800a2b34
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a2b34
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x12d
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r30, r3
    beq-    branch_0x800a2b34
    addi    r3, r30, 0x0
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
    lfs     f0, 0x24(r31)
    stfs    f0, 0x154(r30)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x158(r30)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x15c(r30)
    lfs     f0, 0x24(r31)
    stfs    f0, 0x174(r30)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x178(r30)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x17c(r30)
branch_0x800a2b34:
    clrlwi. r4, r29, 31
    beq-    branch_0x800a2b80
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x800a2b80
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x5
    bge-    branch_0x800a2b80
    lwz     r3, 0x160(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x160(r31)
    lwz     r0, 0x160(r31)
    cmpwi   r0, 0x4b0
    ble-    branch_0x800a2b80
    li      r0, 0x0
    stw     r0, 0x160(r31)
    lbz     r3, 0x13c(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x13c(r31)
branch_0x800a2b80:
    cmplwi  r4, 0x0
    beq-    branch_0x800a2be0
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x800a2bd4

branch_0x800a2b94:
    lwz     r3, 0x44(r31)
    lwzx    r3, r3, r30
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800a2bb4
    li      r0, 0x1
    b       branch_0x800a2bb8

branch_0x800a2bb4:
    li      r0, 0x0
branch_0x800a2bb8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800a2bcc
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800a2bcc:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x800a2bd4:
    lhz     r0, 0x48(r31)
    cmpw    r29, r0
    blt+    branch_0x800a2b94
branch_0x800a2be0:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl getBasNameTable__15TCommonLauncherCFv
getBasNameTable__15TCommonLauncherCFv: # 0x800a2bfc
    lis     r3, 0x803b
    addi    r3, r3, 0x5bc0
    blr


.globl stateDie__15TCommonLauncherFv
stateDie__15TCommonLauncherFv: # 0x800a2c08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r3
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800a2c44
    lwz     r3, 0x74(r29)
    li      r4, 0x2
    bl      setBckFromIndex__6MActorFi
    mr      r3, r29
    bl      setCurAnmSound__10TLiveActorFv
branch_0x800a2c44:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800a2de0
    lwz     r3, 0x74(r29)
    li      r4, 0x2
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a2de0
    lwz     r5, 0x74(r29)
    li      r4, 0xd0
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r5)
    li      r7, 0x0
    lwz     r31, 0x58(r5)
    mr      r5, r31
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r30, r3
    beq-    branch_0x800a2cd8
    addi    r3, r30, 0x0
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
    lfs     f0, 0x24(r29)
    stfs    f0, 0x154(r30)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x158(r30)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x15c(r30)
    lfs     f0, 0x24(r29)
    stfs    f0, 0x174(r30)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x178(r30)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x17c(r30)
branch_0x800a2cd8:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x0
    li      r4, 0xe4
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800a2d28
    lfs     f0, 0x24(r29)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r29)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x17c(r3)
branch_0x800a2d28:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x0
    li      r4, 0xe6
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800a2d78
    lfs     f0, 0x24(r29)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r29)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x17c(r3)
branch_0x800a2d78:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r29)
    addi    r3, r29, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800a2dc0
    li      r0, 0x0
    stw     r0, 0x15c(r29)
    b       branch_0x800a2dc8

branch_0x800a2dc0:
    lwz     r0, 0xb8(r3)
    stw     r0, 0x15c(r29)
branch_0x800a2dc8:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x2
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800a2de0:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl stateLaunch__15TCommonLauncherFv
stateLaunch__15TCommonLauncherFv: # 0x800a2dfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800a2e34
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
branch_0x800a2e34:
    lwz     r0, 0x158(r31)
    cmpwi   r0, 0x3e
    bne-    branch_0x800a2f4c
    lwz     r4, 0x164(r31)
    lwz     r3, -0x70b0(r13)
    bl      getManagerByName__10TConductorFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x800a2e5c
    li      r3, 0x0
    b       branch_0x800a2e80

branch_0x800a2e5c:
    bl      getFarOutEnemy__13TEnemyManagerFv
    cmplwi  r3, 0x0
    bne-    branch_0x800a2e70
    li      r3, 0x0
    b       branch_0x800a2e80

branch_0x800a2e70:
    lwz     r5, 0x124(r31)
    lwz     r4, 0x124(r3)
    lwz     r0, 0x0(r5)
    stw     r0, 0x0(r4)
branch_0x800a2e80:
    cmplwi  r3, 0x0
    addi    r30, r3, 0x0
    beq-    branch_0x800a2f4c
    lwz     r3, 0x30(r31)
    lwz     r0, 0x34(r31)
    lfs     f1, -0x6500(rtoc)
    stw     r3, 0x6c(sp)
    lfs     f0, -0x64fc(rtoc)
    stw     r0, 0x70(sp)
    lwz     r0, 0x38(r31)
    stw     r0, 0x74(sp)
    lfs     f2, 0x6c(sp)
    fsubs   f2, f2, f1
    b       branch_0x800a2ebc

branch_0x800a2eb8:
    fsubs   f2, f2, f0
branch_0x800a2ebc:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800a2eb8
    lfs     f1, -0x64fc(rtoc)
    lfs     f0, -0x64f8(rtoc)
    b       branch_0x800a2ed8

branch_0x800a2ed4:
    fadds   f2, f2, f1
branch_0x800a2ed8:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800a2ed4
    stfs    f2, 0x6c(sp)
    addi    r3, sp, 0x30
    lfs     f1, 0x6c(sp)
    lfs     f2, 0x70(sp)
    lfs     f3, 0x74(sp)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f1, -0x64f8(rtoc)
    addi    r4, sp, 0x60
    lfs     f0, -0x64f4(rtoc)
    mr      r5, r4
    stfs    f1, 0x60(sp)
    addi    r3, sp, 0x30
    stfs    f0, 0x64(sp)
    stfs    f1, 0x68(sp)
    stfs    f1, 0x6c(sp)
    stfs    f1, 0x70(sp)
    stfs    f1, 0x74(sp)
    bl      PSMTXMultVec
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x10
    addi    r5, sp, 0x6c
    lwz     r12, 0x104(r12)
    addi    r6, r30, 0x24
    addi    r7, sp, 0x60
    mtlr    r12
    blrl
branch_0x800a2f4c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800a2f84
    lwz     r0, 0x168(r31)
    addi    r3, r31, 0x0
    li      r4, 0x2
    stw     r0, 0x15c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800a2f84:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl stateNormal__15TCommonLauncherFv
stateNormal__15TCommonLauncherFv: # 0x800a2f9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800a2fd0
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
branch_0x800a2fd0:
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x800a2fe4
    subi    r0, r3, 0x1
    stw     r0, 0x15c(r31)
branch_0x800a2fe4:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x800a3030
    lwz     r0, 0x168(r31)
    stw     r0, 0x15c(r31)
    lwz     r3, -0x70b0(r13)
    lwz     r4, 0x164(r31)
    bl      getManagerByName__10TConductorFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x800a3030
    bl      getFarOutEnemy__13TEnemyManagerFv
    cmplwi  r3, 0x0
    beq-    branch_0x800a3030
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800a3030:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stateHitByWater__15TCommonLauncherFv
stateHitByWater__15TCommonLauncherFv: # 0x800a3044
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800a308c
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lbz     r3, 0x13c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800a308c
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r31)
branch_0x800a308c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800a30e4
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800a30cc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    b       branch_0x800a30e4

branch_0x800a30cc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800a30e4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl stateInitial__15TCommonLauncherFv
stateInitial__15TCommonLauncherFv: # 0x800a30f8
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__15TCommonLauncherFR20JSUMemoryInputStream
load__15TCommonLauncherFR20JSUMemoryInputStream: # 0x800a3128
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x164(r30)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x168
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__15TCommonLauncherFP12TLiveManager
init__15TCommonLauncherFP12TLiveManager: # 0x800a317c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    stw     r29, 0xa4(sp)
    stw     r28, 0xa0(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x8038
    subi    r30, r3, 0x2c28
    lwz     r29, 0x8(sp)
    stw     r4, 0x70(r29)
    mr      r4, r29
    lwz     r3, 0x70(r29)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800a31d8
    lwz     r4, 0x70(r29)
    addi    r3, r28, 0x0
    li      r5, 0x2
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800a31d8:
    lwz     r31, 0x8(sp)
    addi    r4, r30, 0x138
    li      r5, 0x0
    stw     r28, 0x78(r31)
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lbz     r0, -0x72c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3238
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x72bc(r13)
    subi    r0, r3, 0x4904
    lis     r4, 0x8000
    stw     r0, -0x72bc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x14b0
    addi    r4, r4, 0x7170
    subi    r3, r13, 0x72bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x72c0(r13)
branch_0x800a3238:
    lwz     r31, 0x8(sp)
    li      r3, 0x0
    subi    r0, r13, 0x72bc
    lwz     r4, 0x8c(r31)
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r29, 0x168(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x64e0(rtoc)
    stw     r0, 0x9c(sp)
    lis     r3, 0x4330
    xoris   r0, r29, 0x8000
    lfs     f1, -0x64f0(rtoc)
    stw     r3, 0x98(sp)
    li      r4, 0x1
    stw     r0, 0x94(sp)
    lfd     f0, 0x98(sp)
    stw     r3, 0x90(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x90(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r0, 0x15c(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lfs     f1, -0x64ec(rtoc)
    lis     r4, 0x1000
    lfs     f2, -0x64e8(rtoc)
    mr      r3, r31
    fmr     f3, f1
    fmr     f4, f2
    addi    r4, r4, 0x14
    li      r5, 0x1
    lis     r6, 0x8100
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    addi    r3, r30, 0x168
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x168
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0x50
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x50(sp)
    addi    r3, sp, 0x78
    addi    r4, sp, 0x4c
    stw     r0, 0x4c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x78(sp)
    addi    r5, sp, 0x60
    addi    r4, r29, 0x0
    stw     r0, 0x74(sp)
    addi    r3, sp, 0x5c
    addi    r6, sp, 0x8
    lwz     r0, 0x74(sp)
    stw     r0, 0x60(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xf0(r31)
    addi    r3, r30, 0x174
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r29, r3
    beq-    branch_0x800a33a4
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r5, r29, 0x0
    addi    r4, r30, 0x198
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x800a33a4:
    lwz     r3, 0x8(sp)
    bl      initAnmSound__10TLiveActorFv
    lwz     r30, 0x8(sp)
    lwz     r3, 0x74(r30)
    bl      offMakeDL__6MActorFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800a33f0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r4, 0x7c(r3)
    b       branch_0x800a33f4

branch_0x800a33f0:
    li      r4, 0x1
branch_0x800a33f4:
    lwz     r3, 0x8(sp)
    li      r0, 0x5
    stb     r4, 0x13c(r3)
    addi    r4, r3, 0x30
    stb     r0, 0x13c(r3)
    lfs     f2, -0x6500(rtoc)
    lfs     f1, 0x30(r3)
    lfs     f0, -0x64fc(rtoc)
    fadds   f2, f2, f1
    b       branch_0x800a3420

branch_0x800a341c:
    fsubs   f2, f2, f0
branch_0x800a3420:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800a341c
    lfs     f1, -0x64fc(rtoc)
    lfs     f0, -0x64f8(rtoc)
    b       branch_0x800a343c

branch_0x800a3438:
    fadds   f2, f2, f1
branch_0x800a343c:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800a3438
    stfs    f2, 0x0(r4)
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    lwz     r28, 0xa0(sp)
    addi    sp, sp, 0xb0
    blr


.globl __ct__15TCommonLauncherFPCc
__ct__15TCommonLauncherFPCc: # 0x800a3468
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x5da4
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r31)
    li      r0, 0x2
    addi    r5, r3, 0x5c24
    stw     r0, 0x150(r31)
    li      r6, 0x0
    addi    r4, r5, 0x24
    stw     r6, 0x154(r31)
    li      r0, 0x78
    addi    r3, r31, 0x0
    stw     r6, 0x158(r31)
    stw     r6, 0x15c(r31)
    stw     r6, 0x160(r31)
    stw     r5, 0x0(r31)
    stw     r4, 0x20(r31)
    stw     r6, 0x164(r31)
    stw     r0, 0x168(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__9TLauncherFv
__dt__9TLauncherFv: # 0x800a34e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800a3538
    lis     r3, 0x803b
    addi    r3, r3, 0x5da4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800a3538
    mr      r3, r30
    bl      __dl__FPv
branch_0x800a3538:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__16TLauncherManagerFR20JSUMemoryInputStream
load__16TLauncherManagerFR20JSUMemoryInputStream: # 0x800a3554
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    subi    r31, r5, 0x2c28
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    li      r3, 0xbc
    stw     r28, 0x10(sp)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800a35e4
    addi    r3, r28, 0x0
    addi    r4, r31, 0x1a8
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r31, 0x1bc
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0xa8
    addi    r6, r31, 0x1bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x42ac
    stw     r0, 0xa8(r28)
    li      r0, 0xb4
    lis     r3, 0x803b
    stw     r0, 0xb8(r28)
    subi    r0, r3, 0x42b8
    addi    r3, r28, 0x0
    stw     r0, 0xa8(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
branch_0x800a35e4:
    stw     r28, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__16TLauncherManagerFPCc
__ct__16TLauncherManagerFPCc: # 0x800a3614
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x5d50
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stateDie__9TLauncherFv
stateDie__9TLauncherFv: # 0x800a3650
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0xc
    ble-    branch_0x800a36cc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800a36ac
    li      r0, 0x0
    stw     r0, 0x15c(r31)
    b       branch_0x800a36b4

branch_0x800a36ac:
    lwz     r0, 0xb8(r3)
    stw     r0, 0x15c(r31)
branch_0x800a36b4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800a36cc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl stateLaunch__9TLauncherFv
stateLaunch__9TLauncherFv: # 0x800a36e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0xc
    ble-    branch_0x800a3748
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800a3728
    li      r0, 0x0
    stw     r0, 0x15c(r31)
    b       branch_0x800a3730

branch_0x800a3728:
    lwz     r0, 0xb8(r3)
    stw     r0, 0x15c(r31)
branch_0x800a3730:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800a3748:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl stateNormal__9TLauncherFv
stateNormal__9TLauncherFv: # 0x800a375c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x15c(r3)
    subi    r0, r4, 0x1
    stw     r0, 0x15c(r3)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x800a3794
    lwz     r12, 0x0(r3)
    li      r4, 0x3
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800a3794:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stateHitByWater__9TLauncherFv
stateHitByWater__9TLauncherFv: # 0x800a37a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800a37d0
    lbz     r4, 0x13c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x800a37d0
    subi    r0, r4, 0x1
    stb     r0, 0x13c(r3)
branch_0x800a37d0:
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0xc
    ble-    branch_0x800a3814
    lbz     r0, 0x13c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800a3800
    lwz     r12, 0x0(r3)
    li      r4, 0x4
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    b       branch_0x800a3814

branch_0x800a3800:
    lwz     r12, 0x0(r3)
    li      r4, 0x2
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800a3814:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stateInitial__9TLauncherFv
stateInitial__9TLauncherFv: # 0x800a3824
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0xc
    ble-    branch_0x800a3850
    lwz     r12, 0x0(r3)
    li      r4, 0x2
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800a3850:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl changeState__9TLauncherFi
changeState__9TLauncherFi: # 0x800a3860
    stw     r4, 0x154(r3)
    blr


.globl getProperEnemy__9TLauncherFPCc
getProperEnemy__9TLauncherFPCc: # 0x800a3868
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r3, -0x70b0(r13)
    bl      getManagerByName__10TConductorFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x800a3894
    li      r3, 0x0
    b       branch_0x800a38b8

branch_0x800a3894:
    bl      getFarOutEnemy__13TEnemyManagerFv
    cmplwi  r3, 0x0
    bne-    branch_0x800a38a8
    li      r3, 0x0
    b       branch_0x800a38b8

branch_0x800a38a8:
    lwz     r5, 0x124(r31)
    lwz     r4, 0x124(r3)
    lwz     r0, 0x0(r5)
    stw     r0, 0x0(r4)
branch_0x800a38b8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl resetLaunchTimer__9TLauncherFv
resetLaunchTimer__9TLauncherFv: # 0x800a38cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800a3904
    li      r0, 0x0
    stw     r0, 0x15c(r31)
    b       branch_0x800a390c

branch_0x800a3904:
    lwz     r0, 0xb8(r3)
    stw     r0, 0x15c(r31)
branch_0x800a390c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl control__9TLauncherFv
control__9TLauncherFv: # 0x800a3920
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x800a397c
    bge-    branch_0x800a3954
    cmpwi   r0, 0x0
    beq-    branch_0x800a3964
    bge-    branch_0x800a3994
    b       branch_0x800a39d8

branch_0x800a3954:
    cmpwi   r0, 0x4
    beq-    branch_0x800a39c4
    bge-    branch_0x800a39d8
    b       branch_0x800a39ac

branch_0x800a3964:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    b       branch_0x800a39d8

branch_0x800a397c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x120(r12)
    mtlr    r12
    blrl
    b       branch_0x800a39d8

branch_0x800a3994:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x11c(r12)
    mtlr    r12
    blrl
    b       branch_0x800a39d8

branch_0x800a39ac:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x124(r12)
    mtlr    r12
    blrl
    b       branch_0x800a39d8

branch_0x800a39c4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x128(r12)
    mtlr    r12
    blrl
branch_0x800a39d8:
    lwz     r0, 0x150(r31)
    lwz     r3, 0x154(r31)
    cmpw    r0, r3
    beq-    branch_0x800a39f8
    stw     r3, 0x150(r31)
    li      r0, 0x0
    stw     r0, 0x158(r31)
    b       branch_0x800a3a04

branch_0x800a39f8:
    lwz     r3, 0x158(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x158(r31)
branch_0x800a3a04:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl bind__9TLauncherFv
bind__9TLauncherFv: # 0x800a3a18
    blr


.globl receiveMessage__9TLauncherFP9THitActorUl
receiveMessage__9TLauncherFP9THitActorUl: # 0x800a3a1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x800a3a4c
    li      r3, 0x0
    b       branch_0x800a3aec

branch_0x800a3a4c:
    lwz     r0, 0x150(r30)
    cmpwi   r0, 0x4
    bne-    branch_0x800a3a60
    li      r3, 0x0
    b       branch_0x800a3aec

branch_0x800a3a60:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x800a3ae8
    cmplwi  r5, 0xf
    bne-    branch_0x800a3ae8
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    addi    r5, r31, 0x10
    lfs     f1, -0x64f8(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r0, 0x150(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x800a3ac8
    li      r3, 0x1
    b       branch_0x800a3aec

branch_0x800a3ac8:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x1
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800a3aec

branch_0x800a3ae8:
    li      r3, 0x0
branch_0x800a3aec:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl init__9TLauncherFP12TLiveManager
init__9TLauncherFP12TLiveManager: # 0x800a3b04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    bl      init__11TSpineEnemyFP12TLiveManager
    lbz     r0, -0x72c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3b64
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x72bc(r13)
    subi    r0, r3, 0x4904
    lis     r4, 0x8000
    stw     r0, -0x72bc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x14b0
    addi    r4, r4, 0x7170
    subi    r3, r13, 0x72bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x72c0(r13)
branch_0x800a3b64:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    subi    r0, r13, 0x72bc
    stw     r4, 0x8(r5)
    mr      r3, r31
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800a3bf4
    lwz     r30, 0xb8(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x64e0(rtoc)
    stw     r0, 0x3c(sp)
    lis     r3, 0x4330
    xoris   r0, r30, 0x8000
    lfs     f1, -0x64f0(rtoc)
    stw     r3, 0x38(sp)
    stw     r0, 0x34(sp)
    lfd     f0, 0x38(sp)
    stw     r3, 0x30(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x30(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x15c(r31)
branch_0x800a3bf4:
    lis     r3, 0x1000
    addi    r0, r3, 0x14
    stw     r0, 0x4c(r31)
    mr      r3, r31
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x100
    stw     r0, 0x64(r31)
    lfs     f0, -0x64f8(rtoc)
    stfs    f0, 0x50(r31)
    stfs    f0, 0x54(r31)
    lfs     f0, -0x64e8(rtoc)
    stfs    f0, 0x58(r31)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __ct__9TLauncherFPCc
__ct__9TLauncherFPCc: # 0x800a3c50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x5da4
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x2
    stw     r0, 0x20(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r4, 0x150(r31)
    stw     r0, 0x154(r31)
    stw     r0, 0x158(r31)
    stw     r0, 0x15c(r31)
    stw     r0, 0x160(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15TCommonLauncherFv
__dt__15TCommonLauncherFv: # 0x800a3cb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800a3d18
    lis     r3, 0x803b
    addi    r3, r3, 0x5c24
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800a3d08
    lis     r3, 0x803b
    addi    r3, r3, 0x5da4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800a3d08:
    extsh.  r0, r31
    ble-    branch_0x800a3d18
    mr      r3, r30
    bl      __dl__FPv
branch_0x800a3d18:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_launcher_cpp
__sinit_launcher_cpp: # 0x800a3d34
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x14b0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3d7c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800a3d7c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3dac
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800a3dac:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3ddc
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800a3ddc:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3e0c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800a3e0c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3e3c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800a3e3c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3e6c
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800a3e6c:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3e9c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800a3e9c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3ecc
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800a3ecc:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3efc
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800a3efc:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3f2c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800a3f2c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3f5c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800a3f5c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3f8c
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800a3f8c:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3fbc
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800a3fbc:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800a3fec
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800a3fec:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800a401c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800a401c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__9TLauncherFv
_32___dt__9TLauncherFv: # 0x800a4030
    subi    r3, r3, 0x20
    b       __dt__9TLauncherFv


.globl _32___dt__15TCommonLauncherFv
_32___dt__15TCommonLauncherFv: # 0x800a4038
    subi    r3, r3, 0x20
    b       __dt__15TCommonLauncherFv

