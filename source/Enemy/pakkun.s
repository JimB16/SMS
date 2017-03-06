
.globl __dt__22TNerveStayPakkunAppearFv
__dt__22TNerveStayPakkunAppearFv: # 0x80065c3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80065c80
    lis     r3, 0x803b
    addi    r0, r3, 0x1db0
    stw     r0, 0x0(r31)
    beq-    branch_0x80065c70
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80065c70:
    extsh.  r0, r4
    ble-    branch_0x80065c80
    mr      r3, r31
    bl      __dl__FPv
branch_0x80065c80:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveStayPakkunAppearCFP24TSpineBase_10TLiveActor_
execute__22TNerveStayPakkunAppearCFP24TSpineBase_10TLiveActor_: # 0x80065c98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    stw     r30, 0x38(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80065d0c
    lwz     r0, 0xf0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x7
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x64(r30)
    li      r0, 0x1
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r30)
    stb     r0, 0x1b1(r30)
    lwz     r3, 0x194(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80065d0c:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x6ca8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80065d9c
    lfs     f0, -0x6ca4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80065d9c
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80065d9c
    lwz     r3, -0x62f0(r13)
    lfs     f1, 0x10(r30)
    lfs     f2, 0x14(r30)
    lfs     f3, 0x18(r30)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    beq-    branch_0x80065d9c
    lwz     r3, -0x6070(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x12d
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80065d9c
    lfs     f0, -0x6ca0(rtoc)
    li      r4, 0x6
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x80065d9c:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80065e30
    lbz     r0, -0x6ee0(r13)
    extsb.  r0, r0
    bne-    branch_0x80065df4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6edc(r13)
    addi    r0, r3, 0x1e10
    lis     r4, 0x8006
    stw     r0, -0x6edc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x86c
    addi    r4, r4, 0x5e4c
    subi    r3, r13, 0x6edc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ee0(r13)
branch_0x80065df4:
    subi    r4, r13, 0x6edc
    cmplwi  r4, 0x0
    beq-    branch_0x80065e28
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80065e28
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80065e28:
    li      r3, 0x1
    b       branch_0x80065e34

branch_0x80065e30:
    li      r3, 0x0
branch_0x80065e34:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__16TNervePakkunStayFv
__dt__16TNervePakkunStayFv: # 0x80065e4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80065e90
    lis     r3, 0x803b
    addi    r0, r3, 0x1e10
    stw     r0, 0x0(r31)
    beq-    branch_0x80065e80
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80065e80:
    extsh.  r0, r4
    ble-    branch_0x80065e90
    mr      r3, r31
    bl      __dl__FPv
branch_0x80065e90:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveStayPakkunHideCFP24TSpineBase_10TLiveActor_
execute__20TNerveStayPakkunHideCFP24TSpineBase_10TLiveActor_: # 0x80065ea8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r4
    lwz     r4, 0x20(r4)
    lwz     r31, 0x0(r30)
    cmpwi   r4, 0x0
    bne-    branch_0x80065f2c
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80065ef0
    li      r0, 0x1
    b       branch_0x80065ef4

branch_0x80065ef0:
    li      r0, 0x0
branch_0x80065ef4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80065f14
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80065f14:
    lwz     r3, 0x194(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x80066078

branch_0x80065f2c:
    lbz     r0, 0x1bc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80065f50
    lwz     r3, 0x1a0(r31)
    lwz     r0, 0x3c0(r3)
    cmpw    r4, r0
    ble-    branch_0x80065f50
    li      r0, 0x0
    stb     r0, 0x1bc(r31)
branch_0x80065f50:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80066078
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lbz     r0, 0x1bc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80066078
    lwz     r3, -0x62f0(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    beq-    branch_0x80066078
    mr      r3, r31
    lfs     f1, -0x6c9c(rtoc)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80066078
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80065ff0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x80065ff4

branch_0x80065ff0:
    li      r0, 0x1
branch_0x80065ff4:
    stb     r0, 0x13c(r31)
    lbz     r0, -0x6eb0(r13)
    extsb.  r0, r0
    bne-    branch_0x8006603c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6eac(r13)
    addi    r0, r3, 0x1db0
    lis     r4, 0x8006
    stw     r0, -0x6eac(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x8b4
    addi    r4, r4, 0x5c3c
    subi    r3, r13, 0x6eac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6eb0(r13)
branch_0x8006603c:
    subi    r4, r13, 0x6eac
    cmplwi  r4, 0x0
    beq-    branch_0x80066070
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80066070
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80066070:
    li      r3, 0x1
    b       branch_0x80066140

branch_0x80066078:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x6c98(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80066120
    lfs     f0, -0x6c94(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80066120
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x80066120
    lwz     r3, -0x62f0(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x800660f8
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x13e
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x13f
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x80066120

branch_0x800660f8:
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x12d
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80066120
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x80066120:
    lfs     f1, -0x6ca8(rtoc)
    mr      r3, r31
    lfs     f2, -0x6c90(rtoc)
    lfs     f0, 0x144(r31)
    fmr     f3, f1
    fmuls   f2, f2, f0
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x80066140:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __dt__20TNerveStayPakkunHideFv
__dt__20TNerveStayPakkunHideFv: # 0x80066158
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006619c
    lis     r3, 0x803b
    addi    r0, r3, 0x1dc0
    stw     r0, 0x0(r31)
    beq-    branch_0x8006618c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8006618c:
    extsh.  r0, r4
    ble-    branch_0x8006619c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006619c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNervePakkunFreezeCFP24TSpineBase_10TLiveActor_
execute__18TNervePakkunFreezeCFP24TSpineBase_10TLiveActor_: # 0x800661b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800661ec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800661ec:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800662d4
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x6
    bne-    branch_0x80066214
    li      r0, 0x1
    b       branch_0x80066218

branch_0x80066214:
    li      r0, 0x0
branch_0x80066218:
    clrlwi. r0, r0, 24
    beq-    branch_0x80066258
    lbz     r3, 0x165(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80066234
    li      r0, 0x0
    stb     r0, 0x165(r31)
branch_0x80066234:
    cmplwi  r3, 0x0
    beq-    branch_0x800662d4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800662d4

branch_0x80066258:
    lbz     r3, 0x165(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8006626c
    li      r0, 0x0
    stb     r0, 0x165(r31)
branch_0x8006626c:
    cmplwi  r3, 0x0
    beq-    branch_0x80066290
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800662d4

branch_0x80066290:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x800662a4
    li      r0, 0x1
    b       branch_0x800662a8

branch_0x800662a4:
    li      r0, 0x0
branch_0x800662a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800662cc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800662d4

branch_0x800662cc:
    li      r3, 0x1
    b       branch_0x800662d8

branch_0x800662d4:
    li      r3, 0x0
branch_0x800662d8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__18TNervePakkunFreezeFv
__dt__18TNervePakkunFreezeFv: # 0x800662ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80066330
    lis     r3, 0x803b
    addi    r0, r3, 0x1dd0
    stw     r0, 0x0(r31)
    beq-    branch_0x80066320
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80066320:
    extsh.  r0, r4
    ble-    branch_0x80066330
    mr      r3, r31
    bl      __dl__FPv
branch_0x80066330:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNervePakkunShootCFP24TSpineBase_10TLiveActor_
execute__17TNervePakkunShootCFP24TSpineBase_10TLiveActor_: # 0x80066348
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80066380
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80066380:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6c8c(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800663b0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a8(r12)
    mtlr    r12
    blrl
branch_0x800663b0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6c88(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800663e0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
branch_0x800663e0:
    lfs     f1, -0x6ca8(rtoc)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80066490
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x6ca8(rtoc)
    stw     r3, 0x20(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    beq-    branch_0x80066440
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x24(sp)
    stfs    f1, 0x28(sp)
    stfs    f2, 0x2c(sp)
branch_0x80066440:
    lwz     r4, 0x20(sp)
    li      r0, 0x0
    li      r3, 0x1
    stw     r4, 0xf4(r31)
    lwz     r5, 0x24(sp)
    lwz     r4, 0x28(sp)
    stw     r5, 0xf8(r31)
    stw     r4, 0xfc(r31)
    lwz     r4, 0x2c(sp)
    stw     r4, 0x100(r31)
    lwz     r4, 0x20(sp)
    stw     r4, 0x104(r31)
    lwz     r5, 0x24(sp)
    lwz     r4, 0x28(sp)
    stw     r5, 0x108(r31)
    stw     r4, 0x10c(r31)
    lwz     r4, 0x2c(sp)
    stw     r4, 0x110(r31)
    stw     r0, 0x118(r31)
    b       branch_0x80066494

branch_0x80066490:
    li      r3, 0x0
branch_0x80066494:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__17TNervePakkunShootFv
__dt__17TNervePakkunShootFv: # 0x800664a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800664ec
    lis     r3, 0x803b
    addi    r0, r3, 0x1de0
    stw     r0, 0x0(r31)
    beq-    branch_0x800664dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800664dc:
    extsh.  r0, r4
    ble-    branch_0x800664ec
    mr      r3, r31
    bl      __dl__FPv
branch_0x800664ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNervePakkunHideCFP24TSpineBase_10TLiveActor_
execute__16TNervePakkunHideCFP24TSpineBase_10TLiveActor_: # 0x80066504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80066544
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80066544:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80066570
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
branch_0x80066570:
    lwz     r4, 0x194(r31)
    lwz     r0, 0x150(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80066588
    li      r0, 0x1
    b       branch_0x8006658c

branch_0x80066588:
    li      r0, 0x0
branch_0x8006658c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80066650
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r31)
    lwz     r3, 0x194(r31)
    lfs     f0, 0xc8(r3)
    stfs    f0, 0x14(r31)
    lbz     r0, -0x6ed8(r13)
    extsb.  r0, r0
    bne-    branch_0x800665fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ed4(r13)
    addi    r0, r3, 0x1e00
    lis     r4, 0x8006
    stw     r0, -0x6ed4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x878
    addi    r4, r4, 0x666c
    subi    r3, r13, 0x6ed4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ed8(r13)
branch_0x800665fc:
    subi    r4, r13, 0x6ed4
    cmplwi  r4, 0x0
    beq-    branch_0x80066630
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80066630
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80066630:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x80066654

branch_0x80066650:
    li      r3, 0x0
branch_0x80066654:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl __dt__18TNervePakkunAppearFv
__dt__18TNervePakkunAppearFv: # 0x8006666c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800666b0
    lis     r3, 0x803b
    addi    r0, r3, 0x1e00
    stw     r0, 0x0(r31)
    beq-    branch_0x800666a0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800666a0:
    extsh.  r0, r4
    ble-    branch_0x800666b0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800666b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16TNervePakkunHideFv
__dt__16TNervePakkunHideFv: # 0x800666c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006670c
    lis     r3, 0x803b
    addi    r0, r3, 0x1df0
    stw     r0, 0x0(r31)
    beq-    branch_0x800666fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800666fc:
    extsh.  r0, r4
    ble-    branch_0x8006670c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006670c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNervePakkunAppearCFP24TSpineBase_10TLiveActor_
execute__18TNervePakkunAppearCFP24TSpineBase_10TLiveActor_: # 0x80066724
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80066770
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
branch_0x80066770:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6c84(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8006681c
    lbz     r0, -0x6ee0(r13)
    extsb.  r0, r0
    bne-    branch_0x800667e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6edc(r13)
    addi    r0, r3, 0x1e10
    lis     r4, 0x8006
    stw     r0, -0x6edc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x86c
    addi    r4, r4, 0x5e4c
    subi    r3, r13, 0x6edc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ee0(r13)
branch_0x800667e0:
    subi    r4, r13, 0x6edc
    cmplwi  r4, 0x0
    beq-    branch_0x80066814
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80066814
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80066814:
    li      r3, 0x1
    b       branch_0x80066820

branch_0x8006681c:
    li      r3, 0x0
branch_0x80066820:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl execute__16TNervePakkunStayCFP24TSpineBase_10TLiveActor_
execute__16TNervePakkunStayCFP24TSpineBase_10TLiveActor_: # 0x80066838
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x2d0(sp)
    stfd    f31, 0x2c8(sp)
    stfd    f30, 0x2c0(sp)
    stfd    f29, 0x2b8(sp)
    stmw    r27, 0x2a4(sp)
    mr      r28, r4
    addi    r31, r3, 0x860
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80066884
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x160(r12)
    mtlr    r12
    blrl
branch_0x80066884:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x194(r30)
    lwz     r5, 0x1a0(r30)
    lwz     r0, 0x150(r4)
    lwz     r29, 0x248(r3)
    cmpwi   r0, 0x0
    lwz     r27, 0x2e4(r5)
    bne-    branch_0x800668bc
    li      r0, 0x1
    b       branch_0x800668c0

branch_0x800668bc:
    li      r0, 0x0
branch_0x800668c0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80067168
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80067168
    lwz     r0, 0x20(r28)
    cmpw    r0, r27
    bge-    branch_0x800668fc
    cmpw    r0, r29
    bge-    branch_0x800668fc
    lbz     r0, 0x1b1(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80067168
branch_0x800668fc:
    lwz     r3, 0x104(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80066910
    addi    r4, r3, 0x10
    b       branch_0x80066914

branch_0x80066910:
    addi    r4, r30, 0x108
branch_0x80066914:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x23c(sp)
    stw     r0, 0x240(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x244(sp)
    lfs     f1, 0x23c(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x23c(sp)
    lfs     f1, 0x240(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x240(sp)
    lfs     f1, 0x244(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x244(sp)
    lfs     f1, 0x23c(sp)
    lfs     f0, 0x240(sp)
    lfs     f2, 0x244(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lbz     r0, 0x199(r30)
    lwz     r3, 0x1a0(r30)
    cmplwi  r0, 0x0
    lfs     f31, -0x6c80(rtoc)
    lfs     f0, 0x2f8(r3)
    beq-    branch_0x8006699c
    lfs     f31, -0x6c90(rtoc)
branch_0x8006699c:
    lwz     r4, -0x60b4(r13)
    fmuls   f0, f0, f31
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    fcmpo   cr0, f1, f0
    stw     r3, 0x280(sp)
    stw     r0, 0x284(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x288(sp)
    blt-    branch_0x800669d0
    lbz     r0, 0x199(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80066cd0
branch_0x800669d0:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x60b4(r13)
    lfs     f0, 0xe0(r3)
    lfs     f2, 0x4(r4)
    lfs     f1, 0x14(r30)
    fmuls   f0, f0, f31
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80067168
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f30, 0xcc(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f29, 0x108(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xf4(r3)
    fmuls   f1, f30, f31
    fmuls   f2, f29, f31
    mr      r3, r30
    fmuls   f3, f0, f31
    addi    r4, sp, 0x280
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x80067168
    lbz     r0, -0x6ee0(r13)
    extsb.  r0, r0
    bne-    branch_0x80066ab0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6edc(r13)
    addi    r0, r3, 0x1e10
    lis     r3, 0x8006
    stw     r0, -0x6edc(r13)
    addi    r4, r3, 0x5e4c
    subi    r3, r13, 0x6edc
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ee0(r13)
branch_0x80066ab0:
    subi    r4, r13, 0x6edc
    cmplwi  r4, 0x0
    beq-    branch_0x80066ae4
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x80066ae4
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x80066ae4:
    lbz     r0, -0x6ec8(r13)
    extsb.  r0, r0
    bne-    branch_0x80066b24
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ec4(r13)
    addi    r0, r3, 0x1de0
    lis     r3, 0x8006
    stw     r0, -0x6ec4(r13)
    addi    r4, r3, 0x64a8
    subi    r3, r13, 0x6ec4
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ec8(r13)
branch_0x80066b24:
    subi    r4, r13, 0x6ec4
    cmplwi  r4, 0x0
    beq-    branch_0x80066b58
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x80066b58
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x80066b58:
    li      r3, 0x0
    stb     r3, 0x1b1(r30)
    lbz     r0, 0x1b0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80066b78
    lbz     r0, 0x199(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80066bbc
branch_0x80066b78:
    lwz     r5, -0x60b4(r13)
    mr      r3, r30
    lfs     f0, 0x10(r30)
    addi    r4, sp, 0x268
    lfs     f1, 0x0(r5)
    lfs     f3, 0x4(r5)
    lfs     f2, 0x14(r30)
    fsubs   f0, f1, f0
    lfs     f4, 0x8(r5)
    lfs     f1, 0x18(r30)
    fsubs   f2, f3, f2
    stfs    f0, 0x268(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x26c(sp)
    stfs    f0, 0x270(sp)
    bl      onShootLiner__7TPakkunFRQ29JGeometry8TVec3_f_
    b       branch_0x80066cc8

branch_0x80066bbc:
    stb     r3, 0x1b0(r30)
    addi    r3, r30, 0x104
    lwz     r4, 0x104(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x80066bd8
    addi    r6, r4, 0x10
    b       branch_0x80066bdc

branch_0x80066bd8:
    addi    r6, r3, 0x4
branch_0x80066bdc:
    lwz     r3, 0x0(r6)
    li      r7, 0x0
    lwz     r0, 0x4(r6)
    mr      r4, r30
    addi    r5, sp, 0x274
    stw     r3, 0x274(sp)
    addi    r3, sp, 0x208
    stw     r0, 0x278(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x27c(sp)
    stw     r7, 0x1f8(sp)
    lwz     r6, 0x274(sp)
    lwz     r0, 0x278(sp)
    stw     r6, 0x1fc(sp)
    stw     r0, 0x200(sp)
    lwz     r0, 0x27c(sp)
    stw     r0, 0x204(sp)
    lwz     r0, 0x1f8(sp)
    stw     r0, 0xf4(r30)
    lwz     r6, 0x1fc(sp)
    lwz     r0, 0x200(sp)
    stw     r6, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0x204(sp)
    stw     r0, 0x100(r30)
    lwz     r0, 0x1f8(sp)
    stw     r0, 0x104(r30)
    lwz     r6, 0x1fc(sp)
    lwz     r0, 0x200(sp)
    stw     r6, 0x108(r30)
    stw     r0, 0x10c(r30)
    lwz     r0, 0x204(sp)
    stw     r0, 0x110(r30)
    stw     r7, 0x118(r30)
    lwz     r7, 0x1a0(r30)
    lfs     f1, 0x348(r7)
    lfs     f2, 0x334(r7)
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x208(sp)
    li      r0, 0x1
    lwz     r4, 0x20c(sp)
    stw     r3, 0x1ec(sp)
    lwz     r3, 0x210(sp)
    stw     r4, 0x1f0(sp)
    stw     r3, 0x1f4(sp)
    stb     r0, 0x198(r30)
    lwz     r4, 0x194(r30)
    lwz     r3, 0x1ec(sp)
    lwz     r0, 0x1f0(sp)
    stw     r3, 0xac(r4)
    stw     r0, 0xb0(r4)
    lwz     r0, 0x1f4(sp)
    stw     r0, 0xb4(r4)
    lwz     r3, 0x194(r30)
    lfs     f0, -0x7f1c(r13)
    stfsu   f0, 0x30(r3)
    lfs     f0, -0x6ca8(rtoc)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
branch_0x80066cc8:
    li      r3, 0x1
    b       branch_0x800672cc

branch_0x80066cd0:
    lwz     r0, 0x20(r28)
    cmpw    r0, r29
    blt-    branch_0x80067168
    lbz     r0, -0x6ed0(r13)
    extsb.  r0, r0
    bne-    branch_0x80066d1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ecc(r13)
    addi    r0, r3, 0x1df0
    lis     r3, 0x8006
    stw     r0, -0x6ecc(r13)
    addi    r4, r3, 0x66c8
    subi    r3, r13, 0x6ecc
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ed0(r13)
branch_0x80066d1c:
    subi    r4, r13, 0x6ecc
    cmplwi  r4, 0x0
    beq-    branch_0x80066d50
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x80066d50
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x80066d50:
    lbz     r0, -0x6ec8(r13)
    extsb.  r0, r0
    bne-    branch_0x80066d90
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ec4(r13)
    addi    r0, r3, 0x1de0
    lis     r3, 0x8006
    stw     r0, -0x6ec4(r13)
    addi    r4, r3, 0x64a8
    subi    r3, r13, 0x6ec4
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ec8(r13)
branch_0x80066d90:
    subi    r4, r13, 0x6ec4
    cmplwi  r4, 0x0
    beq-    branch_0x80066dc4
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x80066dc4
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x80066dc4:
    lfs     f1, -0x6ca8(rtoc)
    lfs     f0, -0x6c7c(rtoc)
    stfs    f1, 0x260(sp)
    stfs    f0, 0x264(sp)
    lfs     f1, 0x264(sp)
    lfs     f0, 0x260(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r4, 0x104(r30)
    stw     r0, 0x29c(sp)
    lis     r0, 0x4330
    lfd     f3, -0x6c70(rtoc)
    cmplwi  r4, 0x0
    stw     r0, 0x298(sp)
    lfs     f0, -0x6c78(rtoc)
    addi    r3, r30, 0x104
    lfd     f2, 0x298(sp)
    lfs     f1, 0x260(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x290(sp)
    lwz     r27, 0x294(sp)
    beq-    branch_0x80066e38
    addi    r4, r4, 0x10
    b       branch_0x80066e3c

branch_0x80066e38:
    addi    r4, r3, 0x4
branch_0x80066e3c:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x274(sp)
    stw     r0, 0x278(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x27c(sp)
    lwz     r3, 0x104(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80066e68
    addi    r4, r3, 0x10
    b       branch_0x80066e6c

branch_0x80066e68:
    addi    r4, r30, 0x108
branch_0x80066e6c:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1d4(sp)
    stw     r0, 0x1d8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1dc(sp)
    lfs     f1, 0x1d4(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1d4(sp)
    lfs     f1, 0x1d8(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1d8(sp)
    lfs     f1, 0x1dc(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1dc(sp)
    lfs     f1, 0x1d4(sp)
    lfs     f0, 0x1d8(sp)
    lfs     f2, 0x1dc(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r5, 0x1a0(r30)
    lfs     f0, 0x370(r5)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80067050
    lwz     r3, -0x60b4(r13)
    lfs     f0, 0x10(r30)
    lfs     f1, 0x0(r3)
    lfs     f3, 0x8(r3)
    fsubs   f0, f1, f0
    lfs     f1, 0x18(r30)
    lfs     f2, -0x6ca8(rtoc)
    fsubs   f1, f3, f1
    stfs    f0, 0x274(sp)
    stfs    f2, 0x278(sp)
    stfs    f1, 0x27c(sp)
    lfs     f1, 0x274(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80066f44
    lfs     f0, 0x278(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x80066f44
    lfs     f0, 0x27c(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x80066f44
    lfs     f0, -0x6c80(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x274(sp)
branch_0x80066f44:
    addi    r3, sp, 0x274
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x1a0(r30)
    li      r7, 0x0
    lfs     f1, 0x274(sp)
    mr      r4, r30
    lfs     f2, 0x384(r3)
    lfs     f0, 0x10(r30)
    addi    r3, sp, 0x1bc
    addi    r5, sp, 0x274
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x274(sp)
    lfs     f1, 0x27c(sp)
    lfs     f0, 0x18(r30)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x27c(sp)
    stw     r7, 0x1ac(sp)
    lwz     r6, 0x274(sp)
    lwz     r0, 0x278(sp)
    stw     r6, 0x1b0(sp)
    stw     r0, 0x1b4(sp)
    lwz     r0, 0x27c(sp)
    stw     r0, 0x1b8(sp)
    lwz     r0, 0x1ac(sp)
    stw     r0, 0xf4(r30)
    lwz     r6, 0x1b0(sp)
    lwz     r0, 0x1b4(sp)
    stw     r6, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0x1b8(sp)
    stw     r0, 0x100(r30)
    lwz     r0, 0x1ac(sp)
    stw     r0, 0x104(r30)
    lwz     r6, 0x1b0(sp)
    lwz     r0, 0x1b4(sp)
    stw     r6, 0x108(r30)
    stw     r0, 0x10c(r30)
    lwz     r0, 0x1b8(sp)
    stw     r0, 0x110(r30)
    stw     r7, 0x118(r30)
    lwz     r7, 0x1a0(r30)
    lfs     f1, 0x348(r7)
    lfs     f2, 0x334(r7)
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x1bc(sp)
    li      r0, 0x1
    lwz     r4, 0x1c0(sp)
    stw     r3, 0x1a0(sp)
    lwz     r3, 0x1c4(sp)
    stw     r4, 0x1a4(sp)
    stw     r3, 0x1a8(sp)
    stb     r0, 0x198(r30)
    lwz     r4, 0x194(r30)
    lwz     r3, 0x1a0(sp)
    lwz     r0, 0x1a4(sp)
    stw     r3, 0xac(r4)
    stw     r0, 0xb0(r4)
    lwz     r0, 0x1a8(sp)
    stw     r0, 0xb4(r4)
    lwz     r3, 0x194(r30)
    lfs     f0, -0x7f1c(r13)
    stfsu   f0, 0x30(r3)
    lfs     f0, -0x6ca8(rtoc)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    b       branch_0x80067160

branch_0x80067050:
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r27, 16
    lfs     f2, 0x35c(r5)
    li      r7, 0x0
    sraw    r0, r3, r0
    lwz     r4, -0x5ea4(r13)
    slwi    r0, r0, 2
    lfs     f0, 0x274(sp)
    addi    r3, sp, 0x190
    lfsx    f1, r4, r0
    lwz     r6, -0x5ea8(r13)
    mr      r4, r30
    fmadds  f0, f2, f1, f0
    addi    r5, sp, 0x274
    stfs    f0, 0x274(sp)
    lfsx    f1, r6, r0
    lfs     f0, 0x27c(sp)
    stw     r7, 0x180(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x27c(sp)
    lwz     r6, 0x274(sp)
    lwz     r0, 0x278(sp)
    stw     r6, 0x184(sp)
    stw     r0, 0x188(sp)
    lwz     r0, 0x27c(sp)
    stw     r0, 0x18c(sp)
    lwz     r0, 0x180(sp)
    stw     r0, 0xf4(r30)
    lwz     r6, 0x184(sp)
    lwz     r0, 0x188(sp)
    stw     r6, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0x18c(sp)
    stw     r0, 0x100(r30)
    lwz     r0, 0x180(sp)
    stw     r0, 0x104(r30)
    lwz     r6, 0x184(sp)
    lwz     r0, 0x188(sp)
    stw     r6, 0x108(r30)
    stw     r0, 0x10c(r30)
    lwz     r0, 0x18c(sp)
    stw     r0, 0x110(r30)
    stw     r7, 0x118(r30)
    lwz     r7, 0x1a0(r30)
    lfs     f1, 0x348(r7)
    lfs     f2, 0x334(r7)
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x190(sp)
    li      r0, 0x1
    lwz     r4, 0x194(sp)
    stw     r3, 0x174(sp)
    lwz     r3, 0x198(sp)
    stw     r4, 0x178(sp)
    stw     r3, 0x17c(sp)
    stb     r0, 0x198(r30)
    lwz     r4, 0x194(r30)
    lwz     r3, 0x174(sp)
    lwz     r0, 0x178(sp)
    stw     r3, 0xac(r4)
    stw     r0, 0xb0(r4)
    lwz     r0, 0x17c(sp)
    stw     r0, 0xb4(r4)
    lwz     r3, 0x194(r30)
    lfs     f0, -0x7f1c(r13)
    stfsu   f0, 0x30(r3)
    lfs     f0, -0x6ca8(rtoc)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
branch_0x80067160:
    li      r3, 0x1
    b       branch_0x800672cc

branch_0x80067168:
    lfs     f1, -0x6ca8(rtoc)
    mr      r3, r30
    lfs     f2, 0x144(r30)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    lbz     r0, 0x199(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800672c8
    mr      r3, r30
    lfs     f1, -0x6c80(rtoc)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x800672c8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x104(r30)
    lfs     f29, 0x11c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x800671d4
    addi    r4, r4, 0x10
    b       branch_0x800671d8

branch_0x800671d4:
    addi    r4, r30, 0x108
branch_0x800671d8:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x164(sp)
    stw     r0, 0x168(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x16c(sp)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x164(sp)
    lfs     f1, 0x168(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x168(sp)
    lfs     f1, 0x16c(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x16c(sp)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x168(sp)
    lfs     f2, 0x16c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f29
    ble-    branch_0x800672c8
    lbz     r0, -0x6eb8(r13)
    extsb.  r0, r0
    bne-    branch_0x8006728c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6eb4(r13)
    addi    r0, r3, 0x1dc0
    lis     r3, 0x8006
    stw     r0, -0x6eb4(r13)
    addi    r4, r3, 0x6158
    subi    r3, r13, 0x6eb4
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6eb8(r13)
branch_0x8006728c:
    subi    r4, r13, 0x6eb4
    cmplwi  r4, 0x0
    beq-    branch_0x800672c0
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x800672c0
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x800672c0:
    li      r3, 0x1
    b       branch_0x800672cc

branch_0x800672c8:
    li      r3, 0x0
branch_0x800672cc:
    lmw     r27, 0x2a4(sp)
    lwz     r0, 0x2d4(sp)
    lfd     f31, 0x2c8(sp)
    lfd     f30, 0x2c0(sp)
    mtlr    r0
    lfd     f29, 0x2b8(sp)
    addi    sp, sp, 0x2d0
    blr


.globl execute__20TNervePakkunGenerateCFP24TSpineBase_10TLiveActor_
execute__20TNervePakkunGenerateCFP24TSpineBase_10TLiveActor_: # 0x800672ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r4
    stw     r29, 0x74(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80067344
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r3, 0x194(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
branch_0x80067344:
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80067358
    li      r3, 0x0
    b       branch_0x800674cc

branch_0x80067358:
    lwz     r29, 0x194(r31)
    lwz     r0, 0x150(r29)
    cmpwi   r0, 0x1
    bne-    branch_0x80067370
    li      r0, 0x1
    b       branch_0x80067374

branch_0x80067370:
    li      r0, 0x0
branch_0x80067374:
    clrlwi. r0, r0, 24
    beq-    branch_0x800673e8
    mr      r3, r29
    bl      set__16TEnemyAttachmentFv
    lfs     f0, 0x164(r29)
    lis     r3, 0x6666
    addi    r0, r3, 0x6667
    stfs    f0, 0x2c(r29)
    stfs    f0, 0x28(r29)
    stfs    f0, 0x24(r29)
    lwz     r4, 0x20(r30)
    mulhw   r0, r0, r4
    srawi   r0, r0, 1
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x5
    subf.   r0, r0, r4
    bne-    branch_0x800673e8
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x1a0(r31)
    lfs     f0, 0x134(r31)
    lfs     f1, 0x3ac(r3)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x800673e8
    lwz     r3, 0x194(r31)
    li      r0, 0x2
    stw     r0, 0x150(r3)
branch_0x800673e8:
    lwz     r4, 0x194(r31)
    lwz     r0, 0x150(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80067400
    li      r0, 0x1
    b       branch_0x80067404

branch_0x80067400:
    li      r0, 0x0
branch_0x80067404:
    clrlwi. r0, r0, 24
    beq-    branch_0x800674c8
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r31)
    lwz     r3, 0x194(r31)
    lfs     f0, 0xc8(r3)
    stfs    f0, 0x14(r31)
    lbz     r0, -0x6ed8(r13)
    extsb.  r0, r0
    bne-    branch_0x80067474
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ed4(r13)
    addi    r0, r3, 0x1e00
    lis     r4, 0x8006
    stw     r0, -0x6ed4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x878
    addi    r4, r4, 0x666c
    subi    r3, r13, 0x6ed4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ed8(r13)
branch_0x80067474:
    subi    r4, r13, 0x6ed4
    cmplwi  r4, 0x0
    beq-    branch_0x800674a8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800674a8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800674a8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800674cc

branch_0x800674c8:
    li      r3, 0x0
branch_0x800674cc:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl __dt__20TNervePakkunGenerateFv
__dt__20TNervePakkunGenerateFv: # 0x800674e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006752c
    lis     r3, 0x803b
    addi    r0, r3, 0x1e20
    stw     r0, 0x0(r31)
    beq-    branch_0x8006751c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8006751c:
    extsh.  r0, r4
    ble-    branch_0x8006752c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006752c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getSaveParam__11TStayPakkunCFv
getSaveParam__11TStayPakkunCFv: # 0x80067544
    lwz     r3, 0x70(r3)
    lwz     r3, 0x60(r3)
    blr


.globl shoot__11TStayPakkunFv
shoot__11TStayPakkunFv: # 0x80067550
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x194(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x144(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl kill__11TStayPakkunFv
kill__11TStayPakkunFv: # 0x80067580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      kill__11TSmallEnemyFv
    lwz     r3, 0x194(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r30, 0x0
    li      r31, 0x0
branch_0x800675bc:
    lwz     r3, 0x19c(r29)
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    cmpwi   r30, 0x2
    addi    r31, r31, 0x4
    blt+    branch_0x800675bc
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl shootIn__11TStayPakkunFv
shootIn__11TStayPakkunFv: # 0x80067600
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    mr      r29, r3
    lwz     r3, 0x194(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x194(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x124(r12)
    mtlr    r12
    blrl
    lfs     f31, -0x6c60(rtoc)
    li      r30, 0x0
    li      r31, 0x0
branch_0x80067654:
    lwz     r3, 0x19c(r29)
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x19c(r29)
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x124(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x194(r29)
    cmpwi   r30, 0x0
    lfs     f2, -0x6c64(rtoc)
    lwz     r3, 0xac(r4)
    lwz     r0, 0xb0(r4)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0xb4(r4)
    stw     r0, 0x54(sp)
    beq-    branch_0x800676b0
    fmuls   f2, f2, f31
branch_0x800676b0:
    lfs     f1, -0x6ca8(rtoc)
    addi    r3, sp, 0x1c
    fmr     f3, f1
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x4c
    addi    r5, r4, 0x0
    addi    r3, sp, 0x1c
    bl      PSMTXMultVec
    lwz     r4, 0x19c(r29)
    addi    r30, r30, 0x1
    lwz     r3, 0x4c(sp)
    cmpwi   r30, 0x2
    lwzx    r4, r4, r31
    lwz     r0, 0x50(sp)
    addi    r31, r31, 0x4
    stw     r3, 0xac(r4)
    stw     r0, 0xb0(r4)
    lwz     r0, 0x54(sp)
    stw     r0, 0xb4(r4)
    blt+    branch_0x80067654
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x70
    blr


.globl isHitValid__11TStayPakkunFUl
isHitValid__11TStayPakkunFUl: # 0x80067720
    mflr    r0
    cmplwi  r4, 0xb
    stw     r0, 0x4(sp)
    lis     r4, 0x803f
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x860
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x5c(sp)
    bne-    branch_0x8006776c
    lwz     r0, 0xf0(r30)
    li      r3, 0x1
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r30)
    b       branch_0x80067914

branch_0x8006776c:
    lbz     r0, -0x6eb0(r13)
    extsb.  r0, r0
    bne-    branch_0x800677ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6eac(r13)
    addi    r0, r3, 0x1db0
    lis     r3, 0x8006
    stw     r0, -0x6eac(r13)
    addi    r4, r3, 0x5c3c
    subi    r3, r13, 0x6eac
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6eb0(r13)
branch_0x800677ac:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6eac
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80067910
    lbz     r0, -0x6eb8(r13)
    extsb.  r0, r0
    bne-    branch_0x80067800
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6eb4(r13)
    addi    r0, r3, 0x1dc0
    lis     r3, 0x8006
    stw     r0, -0x6eb4(r13)
    addi    r4, r3, 0x6158
    subi    r3, r13, 0x6eb4
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6eb8(r13)
branch_0x80067800:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x6eb4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x80067910
    lbz     r0, -0x6eb8(r13)
    extsb.  r0, r0
    bne-    branch_0x80067850
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6eb4(r13)
    addi    r0, r4, 0x1dc0
    lis     r4, 0x8006
    stw     r0, -0x6eb4(r13)
    addi    r4, r4, 0x6158
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6eb8(r13)
branch_0x80067850:
    lwz     r5, 0x8c(r30)
    subi    r4, r13, 0x6eb4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80067868
    stw     r0, 0x1c(r5)
branch_0x80067868:
    li      r31, 0x0
    stw     r31, 0x20(r5)
    li      r29, 0x1
    addi    r3, r30, 0x0
    stw     r4, 0x14(r5)
    stb     r29, 0x1bc(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r3, 0x234(r3)
    lis     r0, 0x4330
    lfd     f3, -0x6c58(rtoc)
    stw     r3, 0x54(sp)
    lfs     f0, -0x6c5c(rtoc)
    stw     r0, 0x50(sp)
    lwz     r3, -0x62f0(r13)
    lfd     f2, 0x50(sp)
    lfs     f1, 0x10(r30)
    fsubs   f4, f2, f3
    lfs     f2, 0xc8(r30)
    lfs     f3, 0x18(r30)
    fmuls   f4, f0, f4
    bl      clean__17TPollutionManagerFffff
    lwz     r3, 0x194(r30)
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800678dc
    b       branch_0x800678e0

branch_0x800678dc:
    mr      r29, r31
branch_0x800678e0:
    clrlwi. r0, r29, 24
    beq-    branch_0x800678f8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800678f8:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80067910:
    li      r3, 0x0
branch_0x80067914:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl setBehavior__11TStayPakkunFv
setBehavior__11TStayPakkunFv: # 0x80067930
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x80067958
    li      r0, 0x1
    b       branch_0x8006795c

branch_0x80067958:
    li      r0, 0x0
branch_0x8006795c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80067970
    lbz     r3, 0x13c(r31)
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r31)
branch_0x80067970:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800679a8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800679ac

branch_0x800679a8:
    li      r0, 0x1
branch_0x800679ac:
    lbz     r4, 0x13c(r31)
    clrlwi  r3, r0, 24
    lis     r0, 0x4330
    mulli   r4, r4, 0xff
    divw    r3, r4, r3
    stb     r3, 0x1b5(r31)
    lbz     r3, 0x1b5(r31)
    lfd     f2, -0x6c70(rtoc)
    subfic  r3, r3, 0xff
    lfs     f3, -0x7f20(r13)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x6c50(rtoc)
    stw     r3, 0x24(sp)
    lfs     f4, -0x6c80(rtoc)
    stw     r0, 0x20(sp)
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    fadds   f0, f4, f0
    stfs    f0, 0x1b8(r31)
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x2
    bge-    branch_0x80067a58
    lwz     r3, -0x6044(r13)
    li      r4, 0x287f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80067a3c
    addi    r4, r31, 0x10
    li      r3, 0x287f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80067a3c:
    li      r0, 0x1
    stb     r0, 0x13c(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80067a58:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl calcRootMatrix__11TStayPakkunFv
calcRootMatrix__11TStayPakkunFv: # 0x80067a6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    stw     r3, -0x6ef0(r13)
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl genRandomItem__11TStayPakkunFv
genRandomItem__11TStayPakkunFv: # 0x80067a90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    mr      r30, r3
    lwz     r5, 0x70(r3)
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r30)
    stw     r3, 0x1a4(r30)
    stw     r0, 0x1a8(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x1ac(r30)
    lfs     f1, 0x1a8(r30)
    lfs     f0, -0x6c84(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x1a8(r30)
    lwz     r4, 0x64(r5)
    lwz     r3, 0x1a4(r30)
    lwz     r0, 0x1a8(r30)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x1ac(r30)
    stw     r0, 0x78(r4)
    lwz     r3, -0x6088(r13)
    lwz     r4, 0x64(r5)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
    bl      SMS_GetMarioWaterGun__Fv
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r31, 0xcc(r3)
    bl      SMS_GetMarioWaterGun__Fv
    lwz     r0, 0x1c80(r3)
    slwi    r0, r0, 2
    cmpw    r0, r31
    bge-    branch_0x80067b40
    lis     r4, 0x2000
    lwz     r3, -0x62b0(r13)
    lfs     f1, 0x10(r30)
    addi    r4, r4, 0x2
    lfs     f2, 0x14(r30)
    li      r5, 0x1
    lfs     f3, 0x18(r30)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x80067b5c

branch_0x80067b40:
    li      r0, 0x3
    stw     r0, 0x18c(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
branch_0x80067b5c:
    lwz     r3, -0x6070(r13)
    addi    r5, r30, 0x1a4
    li      r4, 0xa1
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80067b98
    lfs     f0, -0x6ca0(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x80067b98:
    lwz     r3, -0x6070(r13)
    addi    r5, r30, 0x1a4
    li      r4, 0xa2
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80067bd4
    lfs     f0, -0x6ca0(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x80067bd4:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl setDeadAnm__11TStayPakkunFv
setDeadAnm__11TStayPakkunFv: # 0x80067bec
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__11TStayPakkunFv
reset__11TStayPakkunFv: # 0x80067c1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r31, -0x6ef0(r13)
    bl      reset__11TSmallEnemyFv
    li      r0, 0x1
    stb     r0, 0x1b1(r31)
    li      r3, 0x0
    li      r0, 0xff
    stb     r3, 0x1b5(r31)
    lfs     f0, -0x6c80(rtoc)
    stfs    f0, 0x1b8(r31)
    stb     r0, 0x1b5(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 21, 19
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__11TStayPakkunFP12TLiveManager
init__11TStayPakkunFP12TLiveManager: # 0x80067c84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stmw    r24, 0x20(sp)
    mr      r31, r3
    bl      init__7TPakkunFP12TLiveManager
    li      r3, 0x8
    bl      __nwa__FUl
    stw     r3, 0x19c(r31)
    lis     r3, 0x803b
    addi    r27, r3, 0x1fe0
    lis     r4, 0x8038
    lfs     f31, -0x6ca8(rtoc)
    lis     r3, 0x8038
    addi    r26, r27, 0x24
    subi    r28, r4, 0x65c0
    subi    r29, r3, 0x65b4
    li      r25, 0x0
    li      r30, 0x0
branch_0x80067cd4:
    li      r3, 0x174
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80067d04
    addi    r3, r24, 0x0
    addi    r4, r28, 0x0
    bl      __ct__16TEnemyAttachmentFPCc
    stw     r27, 0x0(r24)
    li      r0, 0x0
    stw     r26, 0x20(r24)
    stw     r0, 0x16c(r24)
    stfs    f31, 0x170(r24)
branch_0x80067d04:
    lwz     r3, 0x19c(r31)
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    stwx    r24, r3, r30
    lwz     r3, 0x19c(r31)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    cmpwi   r25, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x80067cd4
    lbz     r0, -0x6eb8(r13)
    extsb.  r0, r0
    bne-    branch_0x80067d80
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6eb4(r13)
    addi    r0, r3, 0x1dc0
    lis     r4, 0x8006
    stw     r0, -0x6eb4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x8a8
    addi    r4, r4, 0x6158
    subi    r3, r13, 0x6eb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6eb8(r13)
branch_0x80067d80:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6eb4
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lmw     r24, 0x20(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl load__11TStayPakkunFR20JSUMemoryInputStream
load__11TStayPakkunFR20JSUMemoryInputStream: # 0x80067db8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x6ca8(rtoc)
    addi    r3, sp, 0x1c
    lwz     r31, -0x60b8(r13)
    fmr     f2, f1
    fmr     f3, f1
    stw     r31, 0x18(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80067e8c
    cmplwi  r31, 0x0
    beq-    branch_0x80067e24
    lfs     f2, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x1c(sp)
    stfs    f1, 0x20(sp)
    stfs    f2, 0x24(sp)
branch_0x80067e24:
    lwz     r4, 0x18(sp)
    li      r3, 0x0
    li      r0, 0x1
    stw     r4, 0xf4(r30)
    lwz     r5, 0x1c(sp)
    lwz     r4, 0x20(sp)
    stw     r5, 0xf8(r30)
    stw     r4, 0xfc(r30)
    lwz     r4, 0x24(sp)
    stw     r4, 0x100(r30)
    lwz     r4, 0x18(sp)
    stw     r4, 0x104(r30)
    lwz     r5, 0x1c(sp)
    lwz     r4, 0x20(sp)
    stw     r5, 0x108(r30)
    stw     r4, 0x10c(r30)
    lwz     r4, 0x24(sp)
    stw     r4, 0x110(r30)
    stw     r3, 0x118(r30)
    stb     r0, 0x199(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80067e8c
set_f___Q29JGeometry8TVec3_f_Ffff_80067e8c: # 0x80067e8c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl forceKill__11TPakkunSeedFv
forceKill__11TPakkunSeedFv: # 0x80067e9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x104
    beq-    branch_0x80067ed0
    cmplwi  r0, 0x105
    beq-    branch_0x80067ed0
    cmplwi  r0, 0x4104
    bne-    branch_0x80067ed8
branch_0x80067ed0:
    li      r0, 0x1
    b       branch_0x80067edc

branch_0x80067ed8:
    li      r0, 0x0
branch_0x80067edc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80067f1c
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80067ef8
    li      r0, 0x1
    b       branch_0x80067efc

branch_0x80067ef8:
    li      r0, 0x0
branch_0x80067efc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80067f1c
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x18(r31)
    bl      isInArea__4TMapCFff
    clrlwi. r0, r3, 24
    bne-    branch_0x80067f70
branch_0x80067f1c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x16c(r31)
    lbz     r0, 0x199(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80067f70
    lwz     r3, 0x160(r31)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80067f70
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x160(r31)
    lwz     r0, 0xf0(r3)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r3)
branch_0x80067f70:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl set__11TPakkunSeedFv
set__11TPakkunSeedFv: # 0x80067f84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    bl      set__16TEnemyAttachmentFv
    lwz     r3, 0x160(r30)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80067fdc
    lfs     f0, 0x10(r3)
    stfs    f0, 0x10(r30)
    lwz     r3, 0x160(r30)
    lfs     f1, -0x6c94(rtoc)
    lfs     f0, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r3, 0x160(r30)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x18(r30)
    b       branch_0x80068014

branch_0x80067fdc:
    lbz     r31, -0x6ee8(r13)
    lwz     r3, 0x16c(r30)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r30)
    lfs     f1, 0x1c(r3)
    lfs     f0, -0x6c4c(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x18(r30)
branch_0x80068014:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl rebirth__11TPakkunSeedFv
rebirth__11TPakkunSeedFv: # 0x8006802c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    lwz     r3, 0x16c(r3)
    lbz     r0, 0x199(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800680f0
    li      r3, 0x0
    stw     r3, 0x150(r31)
    lis     r0, 0x4330
    stw     r3, 0x158(r31)
    lwz     r3, 0x64(r31)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    lwz     r5, 0x16c(r31)
    lfd     f3, -0x6c58(rtoc)
    lwz     r4, 0x70(r5)
    lfs     f4, -0x6c5c(rtoc)
    lwz     r3, 0x38(r4)
    lfs     f5, 0x158(r5)
    lbz     r3, 0x298(r3)
    lhz     r4, 0x58(r4)
    stw     r3, 0x6c(sp)
    lwz     r3, -0x62f0(r13)
    stw     r0, 0x68(sp)
    lfs     f1, 0x10(r31)
    lfd     f0, 0x68(sp)
    lfs     f2, 0x14(r31)
    fsubs   f0, f0, f3
    lfs     f3, 0x18(r31)
    fmuls   f0, f4, f0
    fmuls   f4, f0, f5
    bl      stamp__17TPollutionManagerFUsffff
    lwz     r3, -0x6044(r13)
    li      r4, 0x287e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80068238
    addi    r4, r31, 0x10
    li      r3, 0x287e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80068238

branch_0x800680f0:
    lwz     r3, 0x158(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x158(r31)
    lwz     r5, 0x16c(r31)
    lwz     r3, 0x158(r31)
    lwz     r4, 0x1a0(r5)
    lwz     r0, 0x398(r4)
    cmpw    r3, r0
    bgt-    branch_0x80068120
    lbz     r0, 0x1b1(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80068138
branch_0x80068120:
    li      r0, 0x0
    stw     r0, 0x150(r31)
    stw     r0, 0x158(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x80068138:
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x6c88(rtoc)
    lfs     f2, 0x14(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x80068168
    lfs     f0, -0x6ca8(rtoc)
    stfs    f0, 0xb0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    b       branch_0x80068238

branch_0x80068168:
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80068190
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80068190
    cmplwi  r3, 0x4104
    bne-    branch_0x80068198
branch_0x80068190:
    li      r0, 0x1
    b       branch_0x8006819c

branch_0x80068198:
    li      r0, 0x0
branch_0x8006819c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006820c
    lwz     r3, -0x6044(r13)
    li      r4, 0x287e
    lwz     r30, 0x16c(r31)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800681d8
    addi    r4, r31, 0x10
    li      r3, 0x287e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800681d8:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    lwz     r7, 0x194(r30)
    li      r4, 0x13e
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    lwz     r7, 0x194(r30)
    li      r4, 0x13f
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x80068238

branch_0x8006820c:
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    subi    r5, r4, 0x65a8
    addi    r4, r31, 0x10
    li      r6, 0x0
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x80068238
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    bl      generate__17TEffectColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x80068238:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl shoot__11TPakkunSeedFv
shoot__11TPakkunSeedFv: # 0x80068250
    lwz     r4, 0x16c(r3)
    lbz     r0, 0x198(r4)
    cmpwi   r0, 0x1
    beq-    branch_0x8006827c
    bge-    branch_0x80068284
    cmpwi   r0, 0x0
    bge-    branch_0x80068270
    b       branch_0x80068284

branch_0x80068270:
    li      r0, 0x3
    stw     r0, 0x150(r3)
    b       branch_0x80068284

branch_0x8006827c:
    li      r0, 0x4
    stw     r0, 0x150(r3)
branch_0x80068284:
    lfs     f0, -0x6c48(rtoc)
    li      r0, 0x0
    stfs    f0, 0x24(r3)
    stfs    f0, 0x28(r3)
    stfs    f0, 0x2c(r3)
    stb     r0, 0x168(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    blr


.globl appear__11TPakkunSeedFv
appear__11TPakkunSeedFv: # 0x800682ac
    li      r0, 0x1
    stw     r0, 0x150(r3)
    li      r0, 0x0
    lwz     r4, 0x16c(r3)
    stb     r0, 0x1b0(r4)
    lfs     f0, -0x6c68(rtoc)
    stfs    f0, 0x2c(r3)
    stfs    f0, 0x28(r3)
    stfs    f0, 0x24(r3)
    blr


.globl getNowGravity__11TPakkunSeedFv
getNowGravity__11TPakkunSeedFv: # 0x800682d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r3, 0x16c(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x150(r31)
    lfs     f1, 0x30c(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x80068310
    lfs     f1, 0x334(r3)
branch_0x80068310:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl behaveToHitGround__11TPakkunSeedFv
behaveToHitGround__11TPakkunSeedFv: # 0x80068324
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f1, 0xb0(r3)
    lfs     f0, -0x6c80(rtoc)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x80068388
    lwz     r4, 0xc4(r3)
    lhz     r4, 0x0(r4)
    cmplwi  r4, 0x100
    beq-    branch_0x80068374
    cmplwi  r4, 0x101
    beq-    branch_0x80068374
    subi    r0, r4, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80068374
    cmplwi  r4, 0x4104
    bne-    branch_0x8006837c
branch_0x80068374:
    li      r0, 0x1
    b       branch_0x80068380

branch_0x8006837c:
    li      r0, 0x0
branch_0x80068380:
    clrlwi. r0, r0, 24
    beq-    branch_0x800683c4
branch_0x80068388:
    li      r0, 0x1
    stb     r0, 0x168(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r3)
    lfs     f1, -0x6ca8(rtoc)
    stfs    f1, 0xac(r3)
    lfs     f0, -0x6c44(rtoc)
    stfs    f0, 0xb0(r3)
    stfs    f1, 0xb4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x11c(r12)
    mtlr    r12
    blrl
    b       branch_0x80068430

branch_0x800683c4:
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80068404
    lfs     f0, 0xac(r3)
    lfs     f1, -0x6c40(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(r3)
    lfs     f0, 0xb4(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(r3)
    lfs     f1, 0xb0(r3)
    lfs     f0, -0x6c48(rtoc)
    fabs    f1, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(r3)
    b       branch_0x80068430

branch_0x80068404:
    lfs     f0, 0xac(r3)
    lfs     f1, -0x6c3c(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(r3)
    lfs     f0, 0xb4(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(r3)
    lfs     f0, 0xb0(r3)
    fabs    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r3)
branch_0x80068430:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcRootMatrix__11TPakkunSeedFv
calcRootMatrix__11TPakkunSeedFv: # 0x80068440
    mflr    r0
    li      r4, 0x2169
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lwz     r0, -0x6044(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80068488
    addi    r4, r31, 0x10
    li      r3, 0x2169
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80068488:
    mr      r3, r31
    bl      calcRootMatrix__16TEnemyAttachmentFv
    stw     r31, -0x6eec(r13)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl behaveToHitWall__11TPakkunSeedFPC12TBGCheckData
behaveToHitWall__11TPakkunSeedFPC12TBGCheckData: # 0x800684a8
    lfs     f1, 0xb0(r3)
    lfs     f0, 0x38(r4)
    lfs     f2, 0xac(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r4)
    lfs     f4, 0xb4(r3)
    lfs     f3, 0x3c(r4)
    fmadds  f0, f2, f1, f0
    lfs     f5, -0x6ca0(rtoc)
    lfs     f1, 0x34(r4)
    fmadds  f2, f4, f3, f0
    lfs     f0, 0xac(r3)
    fmuls   f2, f5, f2
    fneg    f2, f2
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xac(r3)
    lfs     f1, 0x38(r4)
    lfs     f0, 0xb0(r3)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(r3)
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x8006850c
    lfs     f0, -0x6c38(rtoc)
    stfs    f0, 0xb0(r3)
branch_0x8006850c:
    lfs     f1, 0x3c(r4)
    li      r0, 0x1
    lfs     f0, 0xb4(r3)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb4(r3)
    lwz     r3, 0x16c(r3)
    stb     r0, 0x1b0(r3)
    blr


.globl behaveToHost__11TPakkunSeedFv
behaveToHost__11TPakkunSeedFv: # 0x8006852c
    lwz     r4, 0x16c(r3)
    lbz     r0, 0x199(r4)
    cmplwi  r0, 0x0
    bnelr-    

    lwz     r3, 0x160(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    blr


.globl moveObject__11TPakkunSeedFv
moveObject__11TPakkunSeedFv: # 0x80068550
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    bl      moveObject__16TEnemyAttachmentFv
    lbz     r0, 0x168(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800685fc
    lfs     f2, -0x6c34(rtoc)
    lfs     f1, 0x170(r31)
    lfs     f0, -0x6c30(rtoc)
    fadds   f2, f2, f1
    b       branch_0x8006858c

branch_0x80068588:
    fsubs   f2, f2, f0
branch_0x8006858c:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x80068588
    lfs     f1, -0x6c30(rtoc)
    lfs     f0, -0x6ca8(rtoc)
    b       branch_0x800685a8

branch_0x800685a4:
    fadds   f2, f2, f1
branch_0x800685a8:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800685a4
    stfs    f2, 0x170(r31)
    lfs     f1, -0x6c2c(rtoc)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x80068640
    lwz     r5, 0xac(r31)
    addi    r4, sp, 0x1c
    lwz     r0, 0xb0(r31)
    addi    r3, sp, 0x28
    stw     r5, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x24(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x28(sp)
    stfs    f0, 0x30(r31)
    b       branch_0x80068640

branch_0x800685fc:
    lfs     f2, -0x6c34(rtoc)
    lfs     f1, 0x170(r31)
    lfs     f0, -0x6c30(rtoc)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8006861c
    fmr     f1, f0
    b       branch_0x8006862c

branch_0x8006861c:
    lfs     f0, -0x6ca8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8006862c
    fmr     f1, f0
branch_0x8006862c:
    stfs    f1, 0x170(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, -0x6c40(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x30(r31)
branch_0x80068640:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl loadInit__11TPakkunSeedFP11TSpineEnemyPCc
loadInit__11TPakkunSeedFP11TSpineEnemyPCc: # 0x80068654
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    stw     r29, 0xa4(sp)
    addi    r29, r5, 0x0
    stw     r28, 0xa0(sp)
    stw     r3, 0x8(sp)
    li      r3, 0x18
    lwz     r30, 0x8(sp)
    stw     r4, 0x160(r30)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800686a4
    lwz     r4, 0x160(r30)
    addi    r3, r28, 0x0
    li      r5, 0x1
    lwz     r4, 0x70(r4)
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800686a4:
    lwz     r31, 0x8(sp)
    lis     r0, 0x1022
    addi    r4, r29, 0x0
    stw     r28, 0x78(r31)
    li      r5, 0x3
    lwz     r3, 0x78(r31)
    stw     r0, 0x14(r3)
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lis     r3, 0x8038
    subi    r30, r3, 0x658c
    lwz     r0, 0x160(r31)
    mr      r3, r30
    stw     r0, 0x16c(r31)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r3, sp, 0x64
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x64(sp)
    addi    r3, sp, 0x8c
    addi    r4, sp, 0x60
    stw     r0, 0x60(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x8c(sp)
    addi    r5, sp, 0x70
    addi    r4, r30, 0x0
    stw     r0, 0x88(sp)
    addi    r3, sp, 0x6c
    addi    r6, sp, 0x8
    lwz     r0, 0x88(sp)
    stw     r0, 0x70(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lfs     f1, -0x6c2c(rtoc)
    lis     r4, 0x1000
    addi    r3, r31, 0x0
    fmr     f2, f1
    addi    r4, r4, 0x6
    fmr     f3, f1
    li      r5, 0x1
    fmr     f4, f1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x64(r31)
    li      r0, 0x0
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r31)
    stw     r0, 0x150(r31)
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r31)
    lis     r3, 0x8007
    subi    r0, r3, 0x6314
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x0(r3)
    stw     r0, 0x8(r3)
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    lwz     r29, 0xa4(sp)
    lwz     r28, 0xa0(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl getBasNameTable__7TPakkunCFv
getBasNameTable__7TPakkunCFv: # 0x800687d4
    lis     r3, 0x803b
    addi    r3, r3, 0x1d70
    blr


.globl shoot__7TPakkunFv
shoot__7TPakkunFv: # 0x800687e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x194(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x144(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl shootIn__7TPakkunFv
shootIn__7TPakkunFv: # 0x80068810
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x194(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x194(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x124(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reset__7TPakkunFv
reset__7TPakkunFv: # 0x80068860
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r31, -0x6ef0(r13)
    bl      reset__11TSmallEnemyFv
    li      r0, 0x1
    stb     r0, 0x1b1(r31)
    li      r0, 0x0
    stb     r0, 0x1b5(r31)
    lfs     f0, -0x6c80(rtoc)
    stfs    f0, 0x1b8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMActorAndKeeper__7TPakkunFv
setMActorAndKeeper__7TPakkunFv: # 0x800688a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800688e0
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800688e0:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x65cc
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl behaveToWater__7TPakkunFP9THitActor
behaveToWater__7TPakkunFP9THitActor: # 0x80068914
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x160(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0x860
    lfs     f1, 0xc8(r30)
    lfs     f0, -0x7f18(r13)
    lfs     f2, 0x14(r4)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x80068b38
    li      r0, 0x1
    stb     r0, 0x165(r30)
    lbz     r3, 0x13c(r30)
    cmplwi  r3, 0x5
    ble-    branch_0x80068970
    subi    r0, r3, 0x4
    stb     r0, 0x13c(r30)
branch_0x80068970:
    lbz     r0, -0x6ec0(r13)
    extsb.  r0, r0
    bne-    branch_0x800689b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ebc(r13)
    addi    r0, r3, 0x1dd0
    lis     r3, 0x8006
    stw     r0, -0x6ebc(r13)
    addi    r4, r3, 0x62ec
    subi    r3, r13, 0x6ebc
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ec0(r13)
branch_0x800689b0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6ebc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80068b38
    lbz     r0, -0x6eb0(r13)
    extsb.  r0, r0
    bne-    branch_0x80068a04
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6eac(r13)
    addi    r0, r3, 0x1db0
    lis     r3, 0x8006
    stw     r0, -0x6eac(r13)
    addi    r4, r3, 0x5c3c
    subi    r3, r13, 0x6eac
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6eb0(r13)
branch_0x80068a04:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6eac
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80068b38
    lbz     r0, -0x6eb8(r13)
    extsb.  r0, r0
    bne-    branch_0x80068a58
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6eb4(r13)
    addi    r0, r3, 0x1dc0
    lis     r3, 0x8006
    stw     r0, -0x6eb4(r13)
    addi    r4, r3, 0x6158
    subi    r3, r13, 0x6eb4
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6eb8(r13)
branch_0x80068a58:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6eb4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80068b38
    lbz     r0, -0x6ec0(r13)
    extsb.  r0, r0
    bne-    branch_0x80068aac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ebc(r13)
    addi    r0, r3, 0x1dd0
    lis     r3, 0x8006
    stw     r0, -0x6ebc(r13)
    addi    r4, r3, 0x62ec
    subi    r3, r13, 0x6ebc
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ec0(r13)
branch_0x80068aac:
    subi    r6, r13, 0x6ebc
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x80068b04
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80068af8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80068af8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80068af8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80068b04:
    lwz     r3, 0x194(r30)
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80068b1c
    li      r0, 0x1
    b       branch_0x80068b20

branch_0x80068b1c:
    li      r0, 0x0
branch_0x80068b20:
    clrlwi. r0, r0, 24
    beq-    branch_0x80068b38
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80068b38:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl onShootLiner__7TPakkunFRQ29JGeometry8TVec3_f_
onShootLiner__7TPakkunFRQ29JGeometry8TVec3_f_: # 0x80068b50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    li      r4, 0x0
    stw     r30, 0x38(sp)
    mr      r30, r3
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r30)
    lfs     f2, -0x6c28(rtoc)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x34(sp)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x2c(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x34(sp)
    stw     r4, 0x1c(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x34(sp)
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r3, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x34(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0xf4(r30)
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0x28(sp)
    stw     r0, 0x100(r30)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x104(r30)
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x108(r30)
    stw     r0, 0x10c(r30)
    lwz     r0, 0x28(sp)
    stw     r0, 0x110(r30)
    stw     r4, 0x118(r30)
    stb     r4, 0x198(r30)
    lfs     f2, -0x6ca8(rtoc)
    lfs     f1, 0x0(r31)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80068c44
    lfs     f0, 0x4(r31)
    fcmpu   cr0, f2, f0
    bne-    branch_0x80068c44
    lfs     f0, 0x8(r31)
    fcmpu   cr0, f2, f0
    bne-    branch_0x80068c44
    lfs     f0, -0x6c80(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r31)
branch_0x80068c44:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x1a0(r30)
    lfs     f0, 0x0(r31)
    lfs     f1, 0x320(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, -0x6c38(rtoc)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
    lwz     r4, 0x194(r30)
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r3, 0xac(r4)
    stw     r0, 0xb0(r4)
    lwz     r0, 0x8(r31)
    stw     r0, 0xb4(r4)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl perform__7TPakkunFUlPQ26JDrama9TGraphics
perform__7TPakkunFUlPQ26JDrama9TGraphics: # 0x80068cac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x80068df8
    lwz     r3, 0x194(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r29)
    clrlwi. r0, r0, 31
    bne-    branch_0x80068df8
    clrlwi. r0, r30, 31
    beq-    branch_0x80068d64
    lbz     r0, 0x199(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80068d24
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r29)
branch_0x80068d24:
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r29)
    lfs     f2, 0x18(r29)
    bl      isInArea__4TMapCFff
    clrlwi. r0, r3, 24
    bne-    branch_0x80068d50
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80068d50:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
branch_0x80068d64:
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80068d84
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80068df8
    lwz     r3, 0x74(r29)
    bl      frameUpdate__6MActorFv
    b       branch_0x80068df8

branch_0x80068d84:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80068dbc
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xf4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r29)
    bl      calcAnm__6MActorFv
branch_0x80068dbc:
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80068df8
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x80068dd8
    lwz     r3, 0x74(r29)
    bl      viewCalc__6MActorFv
branch_0x80068dd8:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x80068df8
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r31
    lwz     r12, 0xd8(r12)
    mtlr    r12
    blrl
branch_0x80068df8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl setDeadAnm__7TPakkunFv
setDeadAnm__7TPakkunFv: # 0x80068e14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80068e40
    lwz     r12, 0x0(r3)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80068e40:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setFreezeAnm__7TPakkunFv
setFreezeAnm__7TPakkunFv: # 0x80068e50
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setWaitAnm__7TPakkunFv
setWaitAnm__7TPakkunFv: # 0x80068e80
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl kill__7TPakkunFv
kill__7TPakkunFv: # 0x80068eb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      kill__11TSmallEnemyFv
    lwz     r3, 0x194(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isInhibitedForceMove__7TPakkunFv
isInhibitedForceMove__7TPakkunFv: # 0x80068ef0
    li      r3, 0x1
    blr


.globl init__7TPakkunFP12TLiveManager
init__7TPakkunFP12TLiveManager: # 0x80068ef8
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    subi    r31, r5, 0x6788
    stw     r30, 0xb0(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xac(sp)
    bl      init__11TSmallEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x4
    stw     r0, 0x4c(r30)
    li      r0, 0x11
    addi    r3, r30, 0x0
    stw     r0, 0x150(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1a0(r30)
    lbz     r0, -0x6ee7(r13)
    extsb.  r0, r0
    bne-    branch_0x80068f90
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ee4(r13)
    addi    r0, r3, 0x1e20
    lis     r4, 0x8006
    stw     r0, -0x6ee4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x860
    addi    r4, r4, 0x74e8
    subi    r3, r13, 0x6ee4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ee7(r13)
branch_0x80068f90:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    subi    r0, r13, 0x6ee4
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x6ca8(rtoc)
    stw     r3, 0x98(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x9c(sp)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    beq-    branch_0x80068fe8
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x9c(sp)
    stfs    f1, 0xa0(sp)
    stfs    f2, 0xa4(sp)
branch_0x80068fe8:
    lwz     r3, 0x98(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r30)
    lwz     r4, 0x9c(sp)
    lwz     r3, 0xa0(sp)
    stw     r4, 0xf8(r30)
    stw     r3, 0xfc(r30)
    lwz     r3, 0xa4(sp)
    stw     r3, 0x100(r30)
    lwz     r3, 0x98(sp)
    stw     r3, 0x104(r30)
    lwz     r4, 0x9c(sp)
    lwz     r3, 0xa0(sp)
    stw     r4, 0x108(r30)
    stw     r3, 0x10c(r30)
    lwz     r3, 0xa4(sp)
    stw     r3, 0x110(r30)
    stw     r0, 0x118(r30)
    lha     r0, 0x7c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x80069090
    li      r29, 0x0
    b       branch_0x80069074

branch_0x80069044:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r29, 24
    lwz     r3, 0xb0(r3)
    bl      getName__10JUTNameTabCFUs
    addi    r4, r31, 0x214
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80069070
    stb     r29, -0x6ee8(r13)
branch_0x80069070:
    addi    r29, r29, 0x1
branch_0x80069074:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r29, 24
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x80069044
branch_0x80069090:
    li      r3, 0x174
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800690d0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1c8
    bl      __ct__16TEnemyAttachmentFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x1fe0
    stw     r3, 0x0(r29)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r29)
    stw     r0, 0x16c(r29)
    lfs     f0, -0x6ca8(rtoc)
    stfs    f0, 0x170(r29)
branch_0x800690d0:
    stw     r29, 0x194(r30)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x1d4
    lwz     r3, 0x194(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x148(r30)
    addi    r3, r31, 0x220
    lwz     r4, 0x194(r30)
    stfs    f0, 0x164(r4)
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x80069124
    lwz     r6, 0x74(r30)
    addi    r5, r3, 0x0
    addi    r4, r31, 0x244
    lwz     r3, 0x4(r6)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80069124:
    li      r29, 0x0
    b       branch_0x80069144

branch_0x8006912c:
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    addi    r6, r30, 0x1b2
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
    addi    r29, r29, 0x1
branch_0x80069144:
    lwz     r3, 0x74(r30)
    clrlwi  r5, r29, 16
    lwz     r4, 0x4(r3)
    lwz     r4, 0x4(r4)
    lhz     r0, 0x24(r4)
    cmplw   r5, r0
    blt+    branch_0x8006912c
    lis     r4, 0x8007
    subi    r5, r4, 0x6478
    li      r4, 0x1
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lis     r4, 0x8007
    lwz     r3, 0x74(r30)
    subi    r5, r4, 0x652c
    li      r4, 0x2
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    addi    sp, sp, 0xb8
    blr


.globl load__7TPakkunFR20JSUMemoryInputStream
load__7TPakkunFR20JSUMemoryInputStream: # 0x800691a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x6ca8(rtoc)
    stw     r3, 0x18(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    beq-    branch_0x80069204
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x1c(sp)
    stfs    f1, 0x20(sp)
    stfs    f2, 0x24(sp)
branch_0x80069204:
    lwz     r3, 0x18(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x1c(sp)
    lwz     r3, 0x20(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x24(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x18(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x1c(sp)
    lwz     r3, 0x20(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x24(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__7TPakkunFPCc
__ct__7TPakkunFPCc: # 0x80069260
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x2128
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x194(r31)
    stb     r0, 0x198(r31)
    stb     r0, 0x199(r31)
    stw     r0, 0x19c(r31)
    lfs     f0, -0x6c80(rtoc)
    stfs    f0, 0x1b8(r31)
    stb     r0, 0x1bc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl clipEnemies__14TPakkunManagerFPQ26JDrama9TGraphics
clipEnemies__14TPakkunManagerFPQ26JDrama9TGraphics: # 0x800692c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stmw    r25, 0x84(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    lwz     r3, 0x38(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80069300
    lwz     r3, -0x70b0(r13)
    lfs     f30, -0x6c24(rtoc)
    lfs     f31, 0x9c(r3)
    b       branch_0x80069308

branch_0x80069300:
    lfs     f31, 0x68(r3)
    lfs     f30, 0x54(r3)
branch_0x80069308:
    lwz     r3, -0x7118(r13)
    fmr     f4, f31
    lfs     f3, 0xe8(r28)
    lfs     f2, 0x4c(r3)
    lfs     f1, 0x48(r3)
    bl      SetViewFrustumClipCheckPerspective__Fffff
    fmuls   f31, f31, f31
    li      r31, 0x0
    li      r26, 0x0
    b       branch_0x80069488

branch_0x80069330:
    lwz     r3, 0x18(r27)
    lwzx    r3, r3, r26
    lbz     r0, 0x199(r3)
    addi    r30, r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x8006935c
    mr      r3, r30
    bl      updateSquareToMario__11TSpineEnemyFv
    lfs     f0, 0x134(r30)
    fcmpo   cr0, f0, f31
    blt-    branch_0x80069480
branch_0x8006935c:
    fmr     f1, f30
    addi    r3, r28, 0x0
    addi    r4, r30, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x80069384
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r30)
    b       branch_0x80069390

branch_0x80069384:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r30)
branch_0x80069390:
    lwz     r4, 0x194(r30)
    lwz     r0, 0x150(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800693a8
    li      r0, 0x1
    b       branch_0x800693ac

branch_0x800693a8:
    li      r0, 0x0
branch_0x800693ac:
    clrlwi. r0, r0, 24
    bne-    branch_0x800693f0
    fmr     f1, f30
    addi    r3, r28, 0x0
    addi    r4, r4, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x800693e0
    lwz     r3, 0x194(r30)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r3)
    b       branch_0x800693f0

branch_0x800693e0:
    lwz     r3, 0x194(r30)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r3)
branch_0x800693f0:
    lbz     r0, 0x199(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80069480
    li      r29, 0x0
    li      r25, 0x0
branch_0x80069404:
    lwz     r3, 0x19c(r30)
    lwzx    r4, r3, r25
    lwz     r0, 0x150(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80069420
    li      r0, 0x1
    b       branch_0x80069424

branch_0x80069420:
    li      r0, 0x0
branch_0x80069424:
    clrlwi. r0, r0, 24
    bne-    branch_0x80069470
    fmr     f1, f30
    addi    r3, r28, 0x0
    addi    r4, r4, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x8006945c
    lwz     r3, 0x19c(r30)
    lwzx    r3, r3, r25
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r3)
    b       branch_0x80069470

branch_0x8006945c:
    lwz     r3, 0x19c(r30)
    lwzx    r3, r3, r25
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r3)
branch_0x80069470:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r25, r25, 0x4
    blt+    branch_0x80069404
branch_0x80069480:
    addi    r31, r31, 0x1
    addi    r26, r26, 0x4
branch_0x80069488:
    lwz     r0, 0x14(r27)
    cmpw    r31, r0
    blt+    branch_0x80069330
    lmw     r25, 0x84(sp)
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    addi    sp, sp, 0xb0
    blr


.globl createEnemyInstance__14TPakkunManagerFv
createEnemyInstance__14TPakkunManagerFv: # 0x800694b0
    mflr    r0
    li      r3, 0x1c0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800694e0
    lis     r3, 0x8038
    subi    r4, r3, 0x6534
    addi    r3, r31, 0x0
    bl      __ct__7TPakkunFPCc
branch_0x800694e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__14TPakkunManagerFv
createModelData__14TPakkunManagerFv: # 0x800694f8
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x1d98
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__14TPakkunManagerFv
loadAfter__14TPakkunManagerFv: # 0x8006952c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      loadAfter__18TSmallEnemyManagerFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__14TPakkunManagerFR20JSUMemoryInputStream
load__14TPakkunManagerFR20JSUMemoryInputStream: # 0x8006954c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r23, 0x1c(sp)
    addi    r23, r3, 0x0
    subi    r30, r5, 0x6788
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x3c4
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800697c8
    stw     r24, 0x14(sp)
    addi    r4, r30, 0x260
    lwz     r3, 0x14(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r30, 0x274
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x14(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x274
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r26, r3, 0x42ac
    stw     r26, 0x2d4(r31)
    li      r0, 0x64
    lis     r3, 0x803b
    stw     r0, 0x2e4(r31)
    subi    r25, r3, 0x42b8
    addi    r3, r30, 0x284
    stw     r25, 0x2d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2e8
    addi    r6, r30, 0x284
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x2e8(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x6c20(rtoc)
    addi    r3, r30, 0x294
    stfs    f0, 0x2f8(r31)
    stw     r28, 0x2e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2fc
    addi    r6, r30, 0x294
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fc(r31)
    addi    r3, r30, 0x2a4
    lfs     f0, -0x6c1c(rtoc)
    stfs    f0, 0x30c(r31)
    stw     r28, 0x2fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x310
    addi    r6, r30, 0x2a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x310(r31)
    addi    r3, r30, 0x2b4
    lfs     f0, -0x6c34(rtoc)
    stfs    f0, 0x320(r31)
    stw     r28, 0x310(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x324
    addi    r6, r30, 0x2b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x324(r31)
    addi    r3, r30, 0x2c4
    lfs     f0, -0x6c1c(rtoc)
    stfs    f0, 0x334(r31)
    stw     r28, 0x324(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x338
    addi    r6, r30, 0x2c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x338(r31)
    addi    r3, r30, 0x2d4
    lfs     f0, -0x6c18(rtoc)
    stfs    f0, 0x348(r31)
    stw     r28, 0x338(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x34c
    addi    r6, r30, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34c(r31)
    addi    r3, r30, 0x2e4
    lfs     f0, -0x6c14(rtoc)
    stfs    f0, 0x35c(r31)
    stw     r28, 0x34c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x360
    addi    r6, r30, 0x2e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x360(r31)
    addi    r3, r30, 0x2f4
    lfs     f0, -0x6c20(rtoc)
    stfs    f0, 0x370(r31)
    stw     r28, 0x360(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x374
    addi    r6, r30, 0x2f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x374(r31)
    addi    r3, r30, 0x300
    lfs     f0, -0x6c10(rtoc)
    stfs    f0, 0x384(r31)
    stw     r28, 0x374(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x388
    addi    r6, r30, 0x300
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x388(r31)
    li      r27, 0x12c
    addi    r3, r30, 0x314
    stw     r27, 0x398(r31)
    stw     r25, 0x388(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x39c
    addi    r6, r30, 0x314
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x39c(r31)
    addi    r3, r30, 0x328
    lfs     f0, -0x6c24(rtoc)
    stfs    f0, 0x3ac(r31)
    stw     r28, 0x39c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b0
    addi    r6, r30, 0x328
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3b0(r31)
    mr      r3, r31
    stw     r27, 0x3c0(r31)
    stw     r25, 0x3b0(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x800697c8:
    stw     r24, 0x38(r23)
    li      r3, 0x3c4
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80069a28
    stw     r24, 0x10(sp)
    addi    r4, r30, 0x33c
    lwz     r3, 0x10(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r30, 0x274
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x274
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r26, r3, 0x42ac
    stw     r26, 0x2d4(r31)
    li      r0, 0x64
    lis     r3, 0x803b
    stw     r0, 0x2e4(r31)
    subi    r25, r3, 0x42b8
    addi    r3, r30, 0x284
    stw     r25, 0x2d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2e8
    addi    r6, r30, 0x284
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x2e8(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x6c20(rtoc)
    addi    r3, r30, 0x294
    stfs    f0, 0x2f8(r31)
    stw     r28, 0x2e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2fc
    addi    r6, r30, 0x294
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fc(r31)
    addi    r3, r30, 0x2a4
    lfs     f0, -0x6c1c(rtoc)
    stfs    f0, 0x30c(r31)
    stw     r28, 0x2fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x310
    addi    r6, r30, 0x2a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x310(r31)
    addi    r3, r30, 0x2b4
    lfs     f0, -0x6c34(rtoc)
    stfs    f0, 0x320(r31)
    stw     r28, 0x310(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x324
    addi    r6, r30, 0x2b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x324(r31)
    addi    r3, r30, 0x2c4
    lfs     f0, -0x6c1c(rtoc)
    stfs    f0, 0x334(r31)
    stw     r28, 0x324(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x338
    addi    r6, r30, 0x2c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x338(r31)
    addi    r3, r30, 0x2d4
    lfs     f0, -0x6c18(rtoc)
    stfs    f0, 0x348(r31)
    stw     r28, 0x338(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x34c
    addi    r6, r30, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34c(r31)
    addi    r3, r30, 0x2e4
    lfs     f0, -0x6c14(rtoc)
    stfs    f0, 0x35c(r31)
    stw     r28, 0x34c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x360
    addi    r6, r30, 0x2e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x360(r31)
    addi    r3, r30, 0x2f4
    lfs     f0, -0x6c20(rtoc)
    stfs    f0, 0x370(r31)
    stw     r28, 0x360(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x374
    addi    r6, r30, 0x2f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x374(r31)
    addi    r3, r30, 0x300
    lfs     f0, -0x6c10(rtoc)
    stfs    f0, 0x384(r31)
    stw     r28, 0x374(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x388
    addi    r6, r30, 0x300
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x388(r31)
    li      r27, 0x12c
    addi    r3, r30, 0x314
    stw     r27, 0x398(r31)
    stw     r25, 0x388(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x39c
    addi    r6, r30, 0x314
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x39c(r31)
    addi    r3, r30, 0x328
    lfs     f0, -0x6c24(rtoc)
    stfs    f0, 0x3ac(r31)
    stw     r28, 0x39c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b0
    addi    r6, r30, 0x328
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3b0(r31)
    mr      r3, r31
    stw     r27, 0x3c0(r31)
    stw     r25, 0x3b0(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x80069a28:
    stw     r24, 0x60(r23)
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80069a48
    addi    r3, r24, 0x0
    addi    r4, r30, 0x354
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x80069a48:
    stw     r24, 0x64(r23)
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80069a68
    addi    r3, r24, 0x0
    addi    r4, r30, 0x36c
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x80069a68:
    stw     r24, 0x68(r23)
    lmw     r23, 0x1c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__14TPakkunManagerFPCc
__ct__14TPakkunManagerFPCc: # 0x80069a80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x22d8
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x64(r31)
    stw     r0, 0x68(r31)
    stw     r0, -0x6ef0(r13)
    stw     r0, -0x6eec(r13)
    stw     r0, 0x5c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl PakkunRootCallback2__FP7J3DNodei
PakkunRootCallback2__FP7J3DNodei: # 0x80069ad4
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    bne-    branch_0x80069b74
    lwz     r6, -0x6ef0(r13)
    cmplwi  r6, 0x0
    bne-    branch_0x80069afc
    li      r3, 0x1
    b       branch_0x80069b78

branch_0x80069afc:
    lwz     r5, 0x74(r6)
    addi    r4, sp, 0x5c
    lhz     r0, 0x18(r3)
    lwz     r3, 0x4(r5)
    lfs     f1, -0x6ca8(rtoc)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    lfs     f0, -0x6c80(rtoc)
    stfs    f1, 0x68(sp)
    add     r3, r3, r0
    mr      r5, r3
    stfs    f1, 0x78(sp)
    stfs    f1, 0x88(sp)
    lfs     f2, 0x1b8(r6)
    fdivs   f0, f0, f2
    stfs    f0, 0x5c(sp)
    stfs    f1, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f1, 0x6c(sp)
    stfs    f0, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f1, 0x7c(sp)
    stfs    f1, 0x80(sp)
    stfs    f0, 0x84(sp)
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r5, r3, 0x4788
    addi    r3, r5, 0x0
    addi    r4, sp, 0x5c
    bl      PSMTXConcat
branch_0x80069b74:
    li      r3, 0x1
branch_0x80069b78:
    lwz     r0, 0x94(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl PakkunRootCallback__FP7J3DNodei
PakkunRootCallback__FP7J3DNodei: # 0x80069b88
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x80069ccc
    lwz     r31, -0x6ef0(r13)
    cmplwi  r31, 0x0
    beq-    branch_0x80069c08
    lwz     r12, 0x0(r31)
    mr      r3, r31
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80069bf0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x80069bf4

branch_0x80069bf0:
    li      r0, 0x1
branch_0x80069bf4:
    lwz     r4, -0x6ef0(r13)
    clrlwi  r0, r0, 24
    lbz     r3, 0x13c(r4)
    cmplw   r3, r0
    bne-    branch_0x80069c10
branch_0x80069c08:
    li      r3, 0x1
    b       branch_0x80069cd0

branch_0x80069c10:
    lwz     r3, 0x74(r4)
    lhz     r0, 0x18(r30)
    lwz     r3, 0x4(r3)
    lfs     f1, -0x6ca8(rtoc)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    lfs     f0, -0x6c80(rtoc)
    stfs    f1, 0x80(sp)
    add     r3, r3, r0
    stfs    f1, 0x90(sp)
    stfs    f1, 0xa0(sp)
    lfs     f31, 0x1b8(r4)
    fcmpo   cr0, f31, f0
    fmr     f1, f31
    fmr     f2, f31
    ble-    branch_0x80069c5c
    lfs     f0, -0x6ca0(rtoc)
    fmuls   f1, f1, f0
    fmuls   f2, f2, f0
branch_0x80069c5c:
    stfs    f31, 0x74(sp)
    mr      r5, r3
    lfs     f0, -0x6ca8(rtoc)
    addi    r4, sp, 0x74
    stfs    f0, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x84(sp)
    stfs    f1, 0x88(sp)
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x94(sp)
    stfs    f0, 0x98(sp)
    stfs    f2, 0x9c(sp)
    bl      PSMTXConcat
    stfs    f31, 0x74(sp)
    lis     r3, 0x8040
    lfs     f0, -0x6ca8(rtoc)
    addi    r5, r3, 0x4788
    mr      r3, r5
    stfs    f0, 0x78(sp)
    addi    r4, sp, 0x74
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x84(sp)
    stfs    f31, 0x88(sp)
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x94(sp)
    stfs    f0, 0x98(sp)
    stfs    f31, 0x9c(sp)
    bl      PSMTXConcat
branch_0x80069ccc:
    li      r3, 0x1
branch_0x80069cd0:
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lwz     r31, 0xac(sp)
    mtlr    r0
    lwz     r30, 0xa8(sp)
    addi    sp, sp, 0xb8
    blr


.globl PakkunSeedCallback__FP7J3DNodei
PakkunSeedCallback__FP7J3DNodei: # 0x80069cec
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    bne-    branch_0x80069de4
    lwz     r5, -0x6eec(r13)
    cmplwi  r5, 0x0
    beq-    branch_0x80069d2c
    lbz     r0, 0x168(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x80069d2c
    lwz     r4, 0x16c(r5)
    lbz     r0, 0x1b1(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80069d34
branch_0x80069d2c:
    li      r3, 0x1
    b       branch_0x80069de8

branch_0x80069d34:
    lfs     f0, 0x170(r5)
    addi    r31, sp, 0x5c
    lfs     f1, -0x6c0c(rtoc)
    mr      r4, r31
    lwz     r5, 0x74(r5)
    fmuls   f0, f1, f0
    lhz     r3, 0x18(r3)
    lwz     r5, 0x4(r5)
    lwz     r0, -0x5eac(r13)
    mulli   r3, r3, 0x30
    fctiwz  f0, f0
    lwz     r5, 0x58(r5)
    lwz     r8, -0x5ea8(r13)
    add     r3, r5, r3
    lwz     r6, -0x5ea4(r13)
    stfd    f0, 0x90(sp)
    mr      r5, r3
    lwz     r7, 0x94(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f2
    stfs    f3, 0x5c(sp)
    stfs    f0, 0x60(sp)
    lfs     f1, -0x6ca8(rtoc)
    stfs    f1, 0x64(sp)
    stfs    f1, 0x68(sp)
    stfs    f2, 0x6c(sp)
    stfs    f3, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f1, 0x7c(sp)
    stfs    f1, 0x80(sp)
    lfs     f0, -0x6c80(rtoc)
    stfs    f0, 0x84(sp)
    stfs    f1, 0x88(sp)
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r5, r3, 0x4788
    addi    r3, r5, 0x0
    addi    r4, r31, 0x0
    bl      PSMTXConcat
branch_0x80069de4:
    li      r3, 0x1
branch_0x80069de8:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl setAfterDeadEffect__11TStayPakkunFv
setAfterDeadEffect__11TStayPakkunFv: # 0x80069dfc
    blr


.globl isCollidMove__7TPakkunFP9THitActor
isCollidMove__7TPakkunFP9THitActor: # 0x80069e00
    li      r3, 0x0
    blr


.globl decHpByWater__7TPakkunFP9THitActor
decHpByWater__7TPakkunFP9THitActor: # 0x80069e08
    blr


.globl initAttacker__11TSmallEnemyFP9THitActor
initAttacker__11TSmallEnemyFP9THitActor: # 0x80069e0c
    li      r0, 0x1
    stb     r0, 0x184(r3)
    blr


.globl __dt__11TStayPakkunFv
__dt__11TStayPakkunFv: # 0x80069e18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80069e98
    lis     r3, 0x803b
    addi    r3, r3, 0x1e30
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80069e88
    lis     r3, 0x803b
    addi    r3, r3, 0x2128
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80069e88
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80069e88:
    extsh.  r0, r31
    ble-    branch_0x80069e98
    mr      r3, r30
    bl      __dl__FPv
branch_0x80069e98:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TPakkunSeedFv
__dt__11TPakkunSeedFv: # 0x80069eb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80069f1c
    lis     r3, 0x803b
    addi    r3, r3, 0x1fe0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80069f0c
    lis     r3, 0x803b
    subi    r3, r3, 0x1958
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80069f0c:
    extsh.  r0, r31
    ble-    branch_0x80069f1c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80069f1c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__7TPakkunFv
__dt__7TPakkunFv: # 0x80069f38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80069fa0
    lis     r3, 0x803b
    addi    r3, r3, 0x2128
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80069f90
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80069f90:
    extsh.  r0, r31
    ble-    branch_0x80069fa0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80069fa0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TPakkunManagerFv
__dt__14TPakkunManagerFv: # 0x80069fbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8006a014
    lis     r3, 0x803b
    addi    r0, r3, 0x22d8
    stw     r0, 0x0(r30)
    beq-    branch_0x8006a004
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8006a004:
    extsh.  r0, r31
    ble-    branch_0x8006a014
    mr      r3, r30
    bl      __dl__FPv
branch_0x8006a014:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_pakkun_cpp
__sinit_pakkun_cpp: # 0x8006a030
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x860
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a078
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8006a078:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a0a8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8006a0a8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a0d8
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8006a0d8:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a108
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8006a108:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a138
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8006a138:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a168
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8006a168:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a198
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8006a198:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a1c8
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8006a1c8:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a1f8
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8006a1f8:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a228
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8006a228:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a258
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8006a258:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a288
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8006a288:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a2b8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8006a2b8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a2e8
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8006a2e8:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a318
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8006a318:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__7TPakkunFv
_32___dt__7TPakkunFv: # 0x8006a32c
    subi    r3, r3, 0x20
    b       __dt__7TPakkunFv


.globl _32___dt__11TPakkunSeedFv
_32___dt__11TPakkunSeedFv: # 0x8006a334
    subi    r3, r3, 0x20
    b       __dt__11TPakkunSeedFv


.globl _32___dt__11TStayPakkunFv
_32___dt__11TStayPakkunFv: # 0x8006a33c
    subi    r3, r3, 0x20
    b       __dt__11TStayPakkunFv

