
.globl __dt__20TNerveDebuTelesaWaitFv
__dt__20TNerveDebuTelesaWaitFv: # 0x80135ae8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80135b2c
    lis     r3, 0x803c
    subi    r0, r3, 0xe90
    stw     r0, 0x0(r31)
    beq-    branch_0x80135b1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80135b1c:
    extsh.  r0, r4
    ble-    branch_0x80135b2c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80135b2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveDebuTelesaWaitCFP24TSpineBase_10TLiveActor_
execute__20TNerveDebuTelesaWaitCFP24TSpineBase_10TLiveActor_: # 0x80135b44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80135b7c
    lis     r4, 0x8038
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x6d6c
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
branch_0x80135b7c:
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl clipEnemies__18TDebuTelesaManagerFPQ26JDrama9TGraphics
clipEnemies__18TDebuTelesaManagerFPQ26JDrama9TGraphics: # 0x80135b94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r26, 0x40(sp)
    mr      r27, r3
    mr      r28, r4
    lwz     r5, -0x7118(r13)
    lwz     r3, 0x38(r3)
    lfs     f2, 0x4c(r5)
    lfs     f1, 0x48(r5)
    lfs     f3, -0x4e80(rtoc)
    lfs     f4, 0x68(r3)
    bl      SetViewFrustumClipCheckPerspective__Fffff
    lwz     r31, 0x14(r27)
    li      r29, 0x0
    li      r26, 0x0
    b       branch_0x80135c60

branch_0x80135bd8:
    lwz     r3, 0x18(r27)
    lwzx    r30, r3, r26
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x38(sp)
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80135c24
    addi    r3, sp, 0x30
    bl      SMS_IsInOtherFastCube__FRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x80135c24
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r30)
    b       branch_0x80135c58

branch_0x80135c24:
    lfs     f1, 0x3c(r27)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x80135c4c
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r30)
    b       branch_0x80135c58

branch_0x80135c4c:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r30)
branch_0x80135c58:
    addi    r29, r29, 0x1
    addi    r26, r26, 0x4
branch_0x80135c60:
    cmpw    r29, r31
    blt+    branch_0x80135bd8
    lmw     r26, 0x40(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl createModelData__18TDebuTelesaManagerFv
createModelData__18TDebuTelesaManagerFv: # 0x80135c7c
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x6d54
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__18TDebuTelesaManagerFR20JSUMemoryInputStream
load__18TDebuTelesaManagerFR20JSUMemoryInputStream: # 0x80135cb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    li      r3, 0x2d4
    stw     r29, 0x1c(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80135d00
    stw     r29, 0x10(sp)
    lis     r3, 0x8038
    addi    r4, r3, 0x6d7c
    lwz     r3, 0x10(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    lwz     r3, 0x10(sp)
    lwz     r4, 0x0(r3)
    bl      load__7TParamsFPCc
branch_0x80135d00:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    lwz     r0, -0x7bcc(r13)
    stw     r0, 0x194(r29)
    lwz     r0, -0x7bc8(r13)
    stw     r0, 0x1a8(r29)
    lwz     r0, -0x7bc4(r13)
    stw     r0, 0x16c(r29)
    lwz     r0, -0x7bc0(r13)
    stw     r0, 0x180(r29)
    lfs     f0, -0x4e7c(rtoc)
    stfs    f0, 0x2cc(r29)
    stfs    f0, 0x2d0(r29)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r0, 0x0
    stw     r0, 0x5c(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__18TDebuTelesaManagerFPCc
__ct__18TDebuTelesaManagerFPCc: # 0x80135d60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0xe80
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setDeadAnm__11TDebuTelesaFv
setDeadAnm__11TDebuTelesaFv: # 0x80135d9c
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    li      r4, 0x1
    bl      init__12J3DFrameCtrlFs
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl doKeepDistance__11TDebuTelesaFv
doKeepDistance__11TDebuTelesaFv: # 0x80135dcc
    li      r3, 0x1
    blr


.globl isCollidMove__11TDebuTelesaFP9THitActor
isCollidMove__11TDebuTelesaFP9THitActor: # 0x80135dd4
    li      r3, 0x0
    blr


.globl attackToMario__11TDebuTelesaFv
attackToMario__11TDebuTelesaFv: # 0x80135ddc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl behaveToWater__11TDebuTelesaFP9THitActor
behaveToWater__11TDebuTelesaFP9THitActor: # 0x80135e08
    blr


.globl getBasNameTable__11TDebuTelesaCFv
getBasNameTable__11TDebuTelesaCFv: # 0x80135e0c
    subi    r3, r13, 0x7bd0
    blr


.globl receiveMessage__11TDebuTelesaFP9THitActorUl
receiveMessage__11TDebuTelesaFP9THitActorUl: # 0x80135e14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    cmpwi   r31, 0xb
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x80135e68
    bge-    branch_0x80135e58
    cmpwi   r31, 0x2
    bge-    branch_0x80135e98
    cmpwi   r31, 0x0
    bge-    branch_0x80135e60
    b       branch_0x80135e98

branch_0x80135e58:
    cmpwi   r31, 0xd
    bge-    branch_0x80135e98
branch_0x80135e60:
    li      r3, 0x0
    b       branch_0x80135ea8

branch_0x80135e68:
    lwz     r3, -0x6044(r13)
    li      r4, 0x2938
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80135e98
    addi    r4, r29, 0x10
    li      r3, 0x2938
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80135e98:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      receiveMessage__11TSmallEnemyFP9THitActorUl
branch_0x80135ea8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl kill__11TDebuTelesaFv
kill__11TDebuTelesaFv: # 0x80135ec4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      kill__11TSmallEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcRootMatrix__11TDebuTelesaFv
calcRootMatrix__11TDebuTelesaFv: # 0x80135ee4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    mr      r29, r3
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r0, 0x68(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80135f18
    li      r0, 0x1
    b       branch_0x80135f1c

branch_0x80135f18:
    li      r0, 0x0
branch_0x80135f1c:
    cmpwi   r0, 0x0
    bne-    branch_0x80135fd8
    lwz     r3, 0x8c(r29)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80135f38
    b       branch_0x80135f3c

branch_0x80135f38:
    lwz     r31, 0x1c(r3)
branch_0x80135f3c:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r31, r3
    beq-    branch_0x80135fd8
    lwz     r31, 0x19c(r29)
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    addi    r6, sp, 0x1c
    lfs     f1, 0x1c(r3)
    mr      r5, r29
    lfs     f0, 0xc(r3)
    addi    r4, r29, 0x1a0
    stfs    f0, 0x1a0(r29)
    li      r3, 0x124
    stfs    f1, 0x1a4(r29)
    stfs    f2, 0x1a8(r29)
    lfs     f0, -0x4e78(rtoc)
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x4e74(rtoc)
    addi    r3, r29, 0x0
    addi    r30, sp, 0x28
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    lwz     r31, 0x198(r29)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r3, 0x58(r3)
    add     r4, r3, r0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    li      r3, 0x187
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
branch_0x80135fd8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl reset__11TDebuTelesaFv
reset__11TDebuTelesaFv: # 0x80135ff4
    blr


.globl init__11TDebuTelesaFP12TLiveManager
init__11TDebuTelesaFP12TLiveManager: # 0x80135ff8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r4, 0x70(r3)
    mr      r4, r31
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x170(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x64d0(r13)
    extsb.  r0, r0
    bne-    branch_0x80136074
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64cc(r13)
    subi    r0, r3, 0xe90
    lis     r4, 0x8013
    stw     r0, -0x64cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3950
    addi    r4, r4, 0x5ae8
    subi    r3, r13, 0x64cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64d0(r13)
branch_0x80136074:
    lwz     r8, 0x8c(r31)
    li      r7, 0x0
    lis     r4, 0x1000
    stw     r7, 0x8(r8)
    subi    r0, r13, 0x64cc
    addi    r3, r31, 0x0
    stw     r7, 0x20(r8)
    addi    r4, r4, 0x33
    li      r5, 0x1
    stw     r0, 0x14(r8)
    lis     r6, 0x8000
    stw     r0, 0x18(r8)
    stw     r7, 0x1c(r8)
    lfs     f1, -0x4e70(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    bl      initAnmSound__10TLiveActorFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x4(r3)
    lis     r3, 0x8038
    addi    r4, r3, 0x6d94
    lwz     r3, 0xb0(r5)
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x198(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x4(r3)
    lis     r3, 0x8038
    addi    r4, r3, 0x6da0
    lwz     r3, 0xb0(r5)
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x19c(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __ct__11TDebuTelesaFPCc
__ct__11TDebuTelesaFPCc: # 0x80136124
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0xe28
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18TDebuTelesaManagerFv
__dt__18TDebuTelesaManagerFv: # 0x80136174
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801361cc
    lis     r3, 0x803c
    subi    r0, r3, 0xe80
    stw     r0, 0x0(r30)
    beq-    branch_0x801361bc
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x801361bc:
    extsh.  r0, r31
    ble-    branch_0x801361cc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801361cc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TDebuTelesaFv
__dt__11TDebuTelesaFv: # 0x801361e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80136250
    lis     r3, 0x803c
    subi    r3, r3, 0xe28
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80136240
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80136240:
    extsh.  r0, r31
    ble-    branch_0x80136250
    mr      r3, r30
    bl      __dl__FPv
branch_0x80136250:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl changeByJuice__11TDebuTelesaFv
changeByJuice__11TDebuTelesaFv: # 0x8013626c
    li      r3, 0x0
    blr


.globl __sinit_DebuTelesa_cpp
__sinit_DebuTelesa_cpp: # 0x80136274
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x3950
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801362bc
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801362bc:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801362ec
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801362ec:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8013631c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8013631c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8013634c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8013634c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8013637c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8013637c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801363ac
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801363ac:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801363dc
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801363dc:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8013640c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8013640c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8013643c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8013643c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8013646c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8013646c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8013649c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8013649c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801364cc
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801364cc:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801364fc
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801364fc:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8013652c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8013652c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8013655c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8013655c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TDebuTelesaFv
_32___dt__11TDebuTelesaFv: # 0x80136570
    subi    r3, r3, 0x20
    b       __dt__11TDebuTelesaFv

