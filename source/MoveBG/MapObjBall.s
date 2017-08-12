
.globl __dt__14TBigWatermelonFv
__dt__14TBigWatermelonFv: # 0x801e05c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e0640
    lis     r3, __vvt__14TBigWatermelon@h
    addi    r3, r3, __vvt__14TBigWatermelon@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e0630
    lis     r3, __vvt__11TMapObjBall@h
    addi    r3, r3, __vvt__11TMapObjBall@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e0630
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801e0630:
    extsh.  r0, r31
    ble-    branch_0x801e0640
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e0640:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__14TBigWatermelonFPCc
__ct__14TBigWatermelonFPCc: # 0x801e065c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBallFPCc
    lis     r3, __vvt__14TBigWatermelon@h
    addi    r3, r3, __vvt__14TBigWatermelon@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x198(r31)
    stw     r0, 0x19c(r31)
    lfs     f0, -0x2428(r2)
    stfs    f0, 0x1a0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__11TMapObjBallFv
__dt__11TMapObjBallFv: # 0x801e06b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e0734
    lis     r3, __vvt__11TMapObjBall@h
    addi    r3, r3, __vvt__11TMapObjBall@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e0724
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e0724
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e0724:
    extsh.  r0, r31
    ble-    branch_0x801e0734
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e0734:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initMapObj__14TBigWatermelonFv
initMapObj__14TBigWatermelonFv: # 0x801e0750
    mflr    r0
    lis     r4, unk_803929b0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, unk_803929b0@l
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x14(sp)
    bl      initMapObj__11TMapObjBallFv
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0x5d
    lbz     r0, 0x5d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e07a8
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0xe0
    li      r5, 0x5d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801e07a8:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0x5e
    lbz     r0, 0x5e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e07d8
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x104
    li      r5, 0x5e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801e07d8:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0x5f
    lbz     r0, 0x5f(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e0808
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x128
    li      r5, 0x5f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801e0808:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0x6b
    lbz     r0, 0x6b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e0838
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x14c
    li      r5, 0x6b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801e0838:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0x6c
    lbz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e0868
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x174
    li      r5, 0x6c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801e0868:
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801e0884
    addi    r3, r29, 0x0
    addi    r4, r31, 0x19c
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x801e0884:
    stw     r29, 0x198(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl loadAfter__14TBigWatermelonFv
loadAfter__14TBigWatermelonFv: # 0x801e08a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    bl      loadAfter__14TMapObjGeneralFv
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_80392b5c@h
    addi    r31, r3, unk_80392b5c@l
    lwz     r30, 0x4(r4)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    lfs     f0, -0x2424(r2)
    stfs    f0, 0x10(r3)
    lfs     f0, -0x2420(r2)
    stfs    f0, 0x14(r3)
    lfs     f0, -0x241c(r2)
    stfs    f0, 0x18(r3)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl receiveMessage__14TBigWatermelonFP9THitActorUl
receiveMessage__14TBigWatermelonFP9THitActorUl: # 0x801e0920
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r4
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801e095c
    li      r0, 0x1
    b       branch_0x801e0960

branch_0x801e095c:
    li      r0, 0x0
branch_0x801e0960:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e097c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      boundByActor__11TMapObjBallFP9THitActor
    li      r3, 0x1
    b       branch_0x801e0a40

branch_0x801e097c:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      receiveMessage__14TMapObjGeneralFP9THitActorUl
    cmpwi   r3, 0x0
    beq-    branch_0x801e099c
    li      r3, 0x1
    b       branch_0x801e0a40

branch_0x801e099c:
    cmplwi  r31, 0x4
    bne-    branch_0x801e09d0
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x801e09d0
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801e0a40

branch_0x801e09d0:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801e09e8
    li      r0, 0x1
    b       branch_0x801e09ec

branch_0x801e09e8:
    li      r0, 0x0
branch_0x801e09ec:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e0a3c
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e0a0c
    li      r0, 0x1
    b       branch_0x801e0a10

branch_0x801e0a0c:
    li      r0, 0x0
branch_0x801e0a10:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e0a3c
    cmplwi  r31, 0x4
    beq-    branch_0x801e0a3c
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x1e8(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801e0a40

branch_0x801e0a3c:
    li      r3, 0x0
branch_0x801e0a40:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl checkWallCollision__14TBigWatermelonFPQ29JGeometry8TVec3_f_
checkWallCollision__14TBigWatermelonFPQ29JGeometry8TVec3_f_: # 0x801e0a5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      checkWallCollision__14TMapObjGeneralFPQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl startEvent__14TBigWatermelonFv
startEvent__14TBigWatermelonFv: # 0x801e0a7c
    mflr    r0
    lis     r4, unk_803929b0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stfd    f30, 0x78(sp)
    stfd    f29, 0x70(sp)
    stfd    f28, 0x68(sp)
    stfd    f27, 0x60(sp)
    stfd    f26, 0x58(sp)
    stmw    r27, 0x44(sp)
    mr      r31, r3
    addi    r28, r4, unk_803929b0@l
    addi    r4, r28, 0x1c8
    lwz     r3, 0x4(r3)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801e0b84
    lfs     f0, -0x2418(r2)
    addi    r3, r31, 0x0
    li      r4, 0x7
    stfs    f0, 0x10(r31)
    lfs     f0, -0x2414(r2)
    stfs    f0, 0x14(r31)
    lfs     f0, -0x2410(r2)
    stfs    f0, 0x18(r31)
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lfs     f0, -0x2428(r2)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xac(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x0
    lwz     r3, R13Off_m0x6048(r13)
    sth     r0, 0x24(sp)
    addi    r0, sp, 0x24
    addi    r4, r28, 0x1d8
    stw     r0, 0x8(sp)
    addi    r5, r31, 0x10
    li      r6, -0x1
    lfs     f1, -0x2428(r2)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lfs     f1, -0x2428(r2)
    addi    r4, r28, 0x1ac
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r5, r28, 0x1ec
    fmr     f2, f1
    fmr     f3, f1
    bl      makeShineAppearWithDemoOffset__12TItemManagerFPCcPCcfff
    li      r0, 0x17c
    stw     r0, 0x104(r31)
    li      r0, 0xd
    sth     r0, 0xfc(r31)
    b       branch_0x801e0c70

branch_0x801e0b84:
    lfd     f28, -0x2400(r2)
    li      r27, 0x0
    lfs     f29, -0x240c(r2)
    lis     r30, 0x4330
    lfs     f30, -0x2408(r2)
    lfs     f31, -0x2404(r2)
    lis     r28, unk_2000000e@h
branch_0x801e0ba0:
    lwz     r6, R13Off_m0x60b4(r13)
    addi    r4, r28, unk_2000000e@l
    lwz     r3, R13Off_m0x62b0(r13)
    li      r5, 0x1
    lfs     f1, 0x0(r6)
    lfs     f2, 0x4(r6)
    lfs     f3, 0x8(r6)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr.     r29, r3
    beq-    branch_0x801e0c50
    bl      rand
    xoris   r0, r3, 0x8000
    stw     r0, 0x3c(sp)
    stw     r30, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f28
    fmuls   f27, f29, f0
    bl      rand
    xoris   r0, r3, 0x8000
    stw     r0, 0x34(sp)
    stw     r30, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f28
    fmuls   f26, f29, f0
    bl      rand
    xoris   r0, r3, 0x8000
    fsubs   f0, f27, f31
    stw     r0, 0x2c(sp)
    fmadds  f1, f30, f26, f30
    li      r0, 0x3c0
    stw     r30, 0x28(sp)
    fmuls   f0, f30, f0
    lfd     f2, 0x28(sp)
    fsubs   f2, f2, f28
    fmuls   f2, f29, f2
    fsubs   f2, f2, f31
    fmuls   f2, f30, f2
    stfs    f2, 0xac(r29)
    stfs    f1, 0xb0(r29)
    stfs    f0, 0xb4(r29)
    lwz     r3, 0xf0(r29)
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r29)
    stw     r0, 0x14c(r29)
branch_0x801e0c50:
    addi    r27, r27, 0x1
    cmpwi   r27, 0xa
    blt+    branch_0x801e0ba0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e0c70:
    lmw     r27, 0x44(sp)
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    mtlr    r0
    lfd     f29, 0x70(sp)
    lfd     f28, 0x68(sp)
    lfd     f27, 0x60(sp)
    lfd     f26, 0x58(sp)
    addi    sp, sp, 0x88
    blr


.globl control__14TBigWatermelonFv
control__14TBigWatermelonFv: # 0x801e0c9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    bl      control__14TMapObjGeneralFv
    lwz     r3, 0x194(r31)
    cmpwi   r3, 0x0
    beq-    branch_0x801e0ccc
    addi    r0, r3, -0x1
    stw     r0, 0x194(r31)
branch_0x801e0ccc:
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x6
    bne-    branch_0x801e0ce0
    li      r0, 0x1
    b       branch_0x801e0ce4

branch_0x801e0ce0:
    li      r0, 0x0
branch_0x801e0ce4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e0d30
    lwz     r3, 0x68(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x38
    bl      PSMTXCopy
    lfs     f1, 0x54(sp)
    mr      r3, r31
    lfs     f0, 0x190(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x54(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r3, sp, 0x38
    bl      PSMTXCopy
    b       branch_0x801e0d9c

branch_0x801e0d30:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x23f8(r2)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x70(sp)
    lfs     f2, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f3, 0x70(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801e0d88
    lwz     r3, 0xc4(r31)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801e0d9c
branch_0x801e0d88:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1ec(r12)
    mtlr    r12
    blrl
branch_0x801e0d9c:
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0xa
    bge-    branch_0x801e0dc0
    cmpwi   r0, 0x2
    beq-    branch_0x801e0f14
    bge-    branch_0x801e0f14
    cmpwi   r0, 0x1
    bge-    branch_0x801e0dcc
    b       branch_0x801e0f14

branch_0x801e0dc0:
    cmpwi   r0, 0xd
    beq-    branch_0x801e0e88
    b       branch_0x801e0f14

branch_0x801e0dcc:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801e0de4
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x801e0de4:
    lfs     f1, -0x23f4(r2)
    lfs     f0, 0xc8(r31)
    lwz     r3, 0xc4(r31)
    fadds   f0, f1, f0
    lfs     f1, 0x14(r31)
    lwz     r3, 0x44(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801e0f14
    cmplwi  r3, 0x0
    beq-    branch_0x801e0f14
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0xcd
    bne-    branch_0x801e0e24
    li      r0, 0x1
    b       branch_0x801e0e28

branch_0x801e0e24:
    li      r0, 0x0
branch_0x801e0e28:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e0e50
    addis   r0, r4, 0xc000
    cmplwi  r0, 0xcd
    bne-    branch_0x801e0e44
    li      r0, 0x1
    b       branch_0x801e0e48

branch_0x801e0e44:
    li      r0, 0x0
branch_0x801e0e48:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e0f14
branch_0x801e0e50:
    lfs     f31, 0x1a0(r31)
    bl      SMS_GetSandRiseUpRatio__FPC10TLiveActor
    stfs    f1, 0x1a0(r31)
    lfs     f1, 0x1a0(r31)
    lfs     f0, -0x23f0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e0f14
    fcmpo   cr0, f1, f31
    ble-    branch_0x801e0f14
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x2408(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r31)
    b       branch_0x801e0f14

branch_0x801e0e88:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801e0e9c
    li      r0, 0x1
    b       branch_0x801e0ea0

branch_0x801e0e9c:
    li      r0, 0x0
branch_0x801e0ea0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e0ef0
    lfs     f0, -0x23ec(r2)
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    stfs    f0, 0x74(sp)
    addi    r7, sp, 0x74
    li      r4, 0x6b
    stfs    f0, 0x78(sp)
    li      r5, 0x0
    stfs    f0, 0x7c(sp)
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    addi    r7, sp, 0x74
    li      r4, 0x6c
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    li      r0, 0x1e
    stw     r0, 0x104(r31)
branch_0x801e0ef0:
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801e0f14
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e0f14:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl appearing__14TBigWatermelonFv
appearing__14TBigWatermelonFv: # 0x801e0f2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      appearing__14TMapObjGeneralFv
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x28(r30)
    mr      r3, r30
    lfs     f0, 0x128(r30)
    lfs     f2, 0xbc(r30)
    fdivs   f1, f1, f0
    lfs     f0, 0x14(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x24(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0x24(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x58(r30)
    bl      calcEntryRadius__9THitActorFv
    lhz     r0, 0xfc(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x801e0fd4
    li      r0, 0x1
    b       branch_0x801e0fd8

branch_0x801e0fd4:
    li      r0, 0x0
branch_0x801e0fd8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e1008
    lis     r3, unk_400000d0@h
    addi    r0, r3, unk_400000d0@l
    stw     r0, 0x4c(r30)
    mr      r3, r30
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x24(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x50(r30)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x801e1024

branch_0x801e1008:
    lis     r3, unk_400000db@h
    addi    r0, r3, unk_400000db@l
    stw     r0, 0x4c(r30)
    mr      r3, r30
    lfs     f0, -0x2428(r2)
    stfs    f0, 0x50(r30)
    bl      calcEntryRadius__9THitActorFv
branch_0x801e1024:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl kill__14TBigWatermelonFv
kill__14TBigWatermelonFv: # 0x801e103c
    mflr    r0
    li      r4, 0x5d
    stw     r0, 0x4(sp)
    li      r5, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    addi    r6, r31, 0x10
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    li      r4, 0x5e
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    li      r4, 0x5f
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    lfs     f0, -0x23ec(r2)
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    stfs    f0, 0x20(sp)
    addi    r7, sp, 0x20
    li      r4, 0x6b
    stfs    f0, 0x24(sp)
    li      r5, 0x0
    stfs    f0, 0x28(sp)
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    addi    r7, sp, 0x20
    li      r4, 0x6c
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r4, 0x198(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x78(r4)
    lwz     r3, R13Off_m0x6088(r13)
    lwz     r4, 0x198(r31)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x38a3
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e1120
    addi    r4, r31, 0x10
    li      r3, 0x38a3
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e1120:
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0xa
    bge-    branch_0x801e1180
    lis     r4, unk_2000000e@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_2000000e@l
    lfs     f2, 0x14(r31)
    li      r5, 0x1
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    cmplwi  r3, 0x0
    beq-    branch_0x801e1180
    lfs     f1, -0x2428(r2)
    stfs    f1, 0xac(r3)
    lfs     f0, -0x23e4(r2)
    stfs    f0, 0xb0(r3)
    stfs    f1, 0xb4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
    lwz     r3, 0x19c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x19c(r31)
branch_0x801e1180:
    mr      r3, r31
    bl      kill__14TMapObjGeneralFv
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl touchActor__14TBigWatermelonFP9THitActor
touchActor__14TBigWatermelonFP9THitActor: # 0x801e119c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x40(sp)
    mr      r30, r3
    lhz     r3, 0xfc(r3)
    cmplwi  r3, 0x2
    bne-    branch_0x801e11cc
    li      r0, 0x1
    b       branch_0x801e11d0

branch_0x801e11cc:
    li      r0, 0x0
branch_0x801e11d0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e147c
    cmplwi  r3, 0x1
    bne-    branch_0x801e11e8
    li      r0, 0x1
    b       branch_0x801e11ec

branch_0x801e11e8:
    li      r0, 0x0
branch_0x801e11ec:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1234
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f0, -0x2428(r2)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x38(sp)
    lfs     f1, 0x34(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801e1234
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x801e147c

branch_0x801e1234:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801e124c
    li      r0, 0x1
    b       branch_0x801e1250

branch_0x801e124c:
    li      r0, 0x0
branch_0x801e1250:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e12f4
    lfs     f3, 0x10(r30)
    lfs     f2, 0x10(r31)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x14(r31)
    fsubs   f2, f3, f2
    lfs     f3, 0x18(r30)
    fsubs   f1, f1, f0
    lfs     f0, 0x18(r31)
    fmuls   f2, f2, f2
    fsubs   f3, f3, f0
    lfs     f0, -0x2428(r2)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801e12a4
    b       branch_0x801e12c8

branch_0x801e12a4:
    frsqrte f3, f4
    lfs     f2, -0x2404(r2)
    lfs     f0, -0x23e0(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801e12c8:
    lfs     f1, -0x23dc(r2)
    lfs     f0, 0xbc(r30)
    fmuls   f0, f1, f0
    fcmpo   cr0, f4, f0
    bge-    branch_0x801e12f4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x801e147c

branch_0x801e12f4:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x15
    bne-    branch_0x801e130c
    li      r0, 0x1
    b       branch_0x801e1310

branch_0x801e130c:
    li      r0, 0x0
branch_0x801e1310:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e1360
    mr      r3, r31
    bl      isMoving__8TPoiHanaFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801e1360
    lwz     r3, 0x130(r30)
    lfs     f1, 0xb0(r30)
    lwz     r3, 0x20(r3)
    fabs    f2, f1
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f2, f0
    bge-    branch_0x801e147c
    lfs     f0, -0x23d8(r2)
    li      r0, 0xb
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r30)
    sth     r0, 0xfc(r30)
    b       branch_0x801e147c

branch_0x801e1360:
    lwz     r0, 0x194(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x801e147c
    lhz     r0, 0xfc(r30)
    cmplwi  r0, 0x6
    bne-    branch_0x801e1380
    li      r0, 0x1
    b       branch_0x801e1384

branch_0x801e1380:
    li      r0, 0x0
branch_0x801e1384:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e147c
    mr      r3, r31
    bl      isHideObj__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    bne-    branch_0x801e147c
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x83
    bne-    branch_0x801e13b4
    li      r0, 0x1
    b       branch_0x801e13b8

branch_0x801e13b4:
    li      r0, 0x0
branch_0x801e13b8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e147c
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xca
    bne-    branch_0x801e13d4
    li      r0, 0x1
    b       branch_0x801e13d8

branch_0x801e13d4:
    li      r0, 0x0
branch_0x801e13d8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e147c
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xcc
    bne-    branch_0x801e13f4
    li      r0, 0x1
    b       branch_0x801e13f8

branch_0x801e13f4:
    li      r0, 0x0
branch_0x801e13f8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e147c
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801e1414
    li      r0, 0x1
    b       branch_0x801e1418

branch_0x801e1414:
    li      r0, 0x0
branch_0x801e1418:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e1470
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e1438
    li      r0, 0x1
    b       branch_0x801e143c

branch_0x801e1438:
    li      r0, 0x0
branch_0x801e143c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1470
    lwz     r3, R13Off_m0x60a0(r13)
    lfs     f1, -0x2428(r2)
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801e1470
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1e8(r12)
    mtlr    r12
    blrl
    b       branch_0x801e147c

branch_0x801e1470:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      boundByActor__11TMapObjBallFP9THitActor
branch_0x801e147c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl touchGround__14TBigWatermelonFPQ29JGeometry8TVec3_f_
touchGround__14TBigWatermelonFPQ29JGeometry8TVec3_f_: # 0x801e1494
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      touchGround__11TMapObjBallFPQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl rebound__14TBigWatermelonFPQ29JGeometry8TVec3_f_
rebound__14TBigWatermelonFPQ29JGeometry8TVec3_f_: # 0x801e14b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0xc
    bne-    branch_0x801e14e8
    li      r0, 0x1
    b       branch_0x801e14ec

branch_0x801e14e8:
    li      r0, 0x0
branch_0x801e14ec:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e1524
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r0, 0x18(r31)
    stw     r0, 0x8(r30)
    b       branch_0x801e169c

branch_0x801e1524:
    lwz     r6, 0x130(r31)
    mr      r3, r31
    lwz     r4, 0xc4(r31)
    addi    r5, r31, 0xac
    lwz     r6, 0x20(r6)
    lwz     r6, 0x4(r6)
    lfs     f1, 0x4(r6)
    bl      calcReflectingVelocity__11TMapObjBaseCFPC12TBGCheckDatafPQ29JGeometry8TVec3_f_
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x4(r30)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e1570
    li      r0, 0x1
    b       branch_0x801e1574

branch_0x801e1570:
    li      r0, 0x0
branch_0x801e1574:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e1628
    lfs     f1, 0x28(r31)
    lfs     f0, -0x23d4(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801e15dc
    lwz     r5, 0xc4(r31)
    li      r4, 0x3889
    lwz     r3, R13Off_m0x6044(r13)
    lfs     f0, 0x38(r5)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e1674
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x3889
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801e1674

branch_0x801e15dc:
    lwz     r5, 0xc4(r31)
    li      r4, 0x388c
    lwz     r3, R13Off_m0x6044(r13)
    lfs     f0, 0x38(r5)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e1674
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x388c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801e1674

branch_0x801e1628:
    lwz     r4, 0x130(r31)
    lwz     r3, R13Off_m0x6044(r13)
    lwz     r4, 0x1c(r4)
    lwz     r4, 0x4(r4)
    lwz     r30, 0x10(r4)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e1674
    lfs     f1, -0x2428(r2)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    addi    r5, r31, 0xac
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801e1674:
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0xb
    bne-    branch_0x801e1688
    li      r0, 0x1
    b       branch_0x801e168c

branch_0x801e1688:
    li      r0, 0x0
branch_0x801e168c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e169c
    li      r0, 0xc
    sth     r0, 0xfc(r31)
branch_0x801e169c:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl touchWall__14TBigWatermelonFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord
touchWall__14TBigWatermelonFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord: # 0x801e16b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      touchWall__11TMapObjBallFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchWaterSurface__14TBigWatermelonFv
touchWaterSurface__14TBigWatermelonFv: # 0x801e16d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      emitColumnWater__11TMapObjBaseFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3875
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e1720
    addi    r4, r31, 0x10
    li      r3, 0x3875
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e1720:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl loadAfter__11TCoverFruitFv
loadAfter__11TCoverFruitFv: # 0x801e1748
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__11TMapObjBaseFv
    lis     r4, unk_0001038b@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_0001038b@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e178c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e178c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__11TCoverFruitFP9THitActorUl
receiveMessage__11TCoverFruitFP9THitActorUl: # 0x801e17a0
    mflr    r0
    addi    r7, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0xf800
    cmplwi  r0, 0x83
    bne-    branch_0x801e17c8
    li      r0, 0x1
    b       branch_0x801e17cc

branch_0x801e17c8:
    li      r0, 0x0
branch_0x801e17cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e17f4
    cmplwi  r5, 0x4
    bne-    branch_0x801e17f4
    lwz     r0, 0x64(r7)
    li      r3, 0x1
    ori     r0, r0, 0x1
    stw     r0, 0x64(r7)
    stw     r4, 0x68(r7)
    b       branch_0x801e1830

branch_0x801e17f4:
    cmplwi  r5, 0xb
    bne-    branch_0x801e182c
    mr      r3, r7
    lwz     r12, 0x0(r7)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lis     r4, unk_0001038b@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r5, r4, unk_0001038b@l
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    li      r3, 0x1
    b       branch_0x801e1830

branch_0x801e182c:
    li      r3, 0x0
branch_0x801e1830:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcRootMatrix__11TCoverFruitFv
calcRootMatrix__11TCoverFruitFv: # 0x801e1840
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stfd    f29, 0x58(sp)
    stfd    f28, 0x50(sp)
    stfd    f27, 0x48(sp)
    stfd    f26, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    lwz     r3, 0x68(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801e18c4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lfs     f2, 0x2c(r31)
    lfs     f1, 0x1c(r31)
    lfs     f0, 0xc(r31)
    stfs    f0, 0x10(r30)
    stfs    f1, 0x14(r30)
    stfs    f2, 0x18(r30)
    b       branch_0x801e1934

branch_0x801e18c4:
    lfs     f1, 0x14(r30)
    mr      r3, r30
    lfs     f0, 0x108(r30)
    lfs     f26, 0x38(r30)
    fsubs   f30, f1, f0
    lfs     f27, 0x34(r30)
    lfs     f28, 0x30(r30)
    lfs     f29, 0x18(r30)
    lfs     f31, 0x10(r30)
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x23d0(r2)
    fmr     f1, f31
    addi    r3, r3, 0x20
    fmuls   f3, f0, f28
    fmuls   f2, f0, f27
    fmuls   f0, f0, f26
    fctiwz  f3, f3
    fctiwz  f4, f2
    fctiwz  f0, f0
    stfd    f3, 0x30(sp)
    fmr     f2, f30
    fmr     f3, f29
    stfd    f4, 0x28(sp)
    lwz     r4, 0x34(sp)
    stfd    f0, 0x20(sp)
    lwz     r5, 0x2c(sp)
    lwz     r6, 0x24(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
branch_0x801e1934:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    lfd     f29, 0x58(sp)
    lfd     f28, 0x50(sp)
    lfd     f27, 0x48(sp)
    lfd     f26, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl __ct__12TRandomFruitFPCc
__ct__12TRandomFruitFPCc: # 0x801e1984
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    mr      r3, r31
    bl      __ct__11TMapObjBallFPCc
    lis     r3, __vvt__11TResetFruit@h
    addi    r3, r3, __vvt__11TResetFruit@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__12TRandomFruit@h
    stw     r0, 0x20(r31)
    addi    r6, r3, __vvt__12TRandomFruit@l
    li      r5, 0x0
    lfs     f0, -0x2428(r2)
    li      r7, 0xff
    addi    r0, r6, 0x24
    stfs    f0, 0x198(r31)
    addi    r3, r31, 0x1a8
    li      r4, 0x0
    stb     r5, 0x1a4(r31)
    li      r5, 0x20
    sth     r7, 0x19c(r31)
    sth     r7, 0x19e(r31)
    sth     r7, 0x1a0(r31)
    sth     r7, 0x1a2(r31)
    stw     r6, 0x0(r31)
    stw     r0, 0x20(r31)
    bl      memset
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__11TResetFruitFv
__dt__11TResetFruitFv: # 0x801e1a18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e1a98
    lis     r3, __vvt__11TResetFruit@h
    addi    r3, r3, __vvt__11TResetFruit@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e1a88
    lis     r3, __vvt__11TMapObjBall@h
    addi    r3, r3, __vvt__11TMapObjBall@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e1a88
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801e1a88:
    extsh.  r0, r31
    ble-    branch_0x801e1a98
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e1a98:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initMapObj__12TRandomFruitFv
initMapObj__12TRandomFruitFv: # 0x801e1ab4
    mflr    r0
    lis     r4, unk_803929b0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, unk_803929b0@l
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2400(r2)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x240c(r2)
    stw     r0, 0x18(sp)
    lfs     f0, -0x23d4(r2)
    lfd     f2, 0x18(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x801e1b70
    bge-    branch_0x801e1b2c
    cmpwi   r0, 0x0
    beq-    branch_0x801e1b40
    bge-    branch_0x801e1b58
    b       branch_0x801e1ba0

branch_0x801e1b2c:
    cmpwi   r0, 0x6
    bge-    branch_0x801e1ba0
    cmpwi   r0, 0x4
    bge-    branch_0x801e1ba0
    b       branch_0x801e1b88

branch_0x801e1b40:
    addi    r3, r30, 0x1a8
    crxor   6, 6, 6
    addi    r5, r31, 0x204
    li      r4, 0x20
    bl      snprintf
    b       branch_0x801e1bb4

branch_0x801e1b58:
    addi    r3, r30, 0x1a8
    crxor   6, 6, 6
    addi    r5, r31, 0x214
    li      r4, 0x20
    bl      snprintf
    b       branch_0x801e1bb4

branch_0x801e1b70:
    addi    r3, r30, 0x1a8
    crxor   6, 6, 6
    addi    r5, r31, 0x220
    li      r4, 0x20
    bl      snprintf
    b       branch_0x801e1bb4

branch_0x801e1b88:
    addi    r3, r30, 0x1a8
    crxor   6, 6, 6
    addi    r5, r31, 0x22c
    li      r4, 0x20
    bl      snprintf
    b       branch_0x801e1bb4

branch_0x801e1ba0:
    addi    r3, r30, 0x1a8
    crxor   6, 6, 6
    addi    r5, r31, 0x22c
    li      r4, 0x20
    bl      snprintf
branch_0x801e1bb4:
    addi    r0, r30, 0x1a8
    stw     r0, 0xf4(r30)
    mr      r3, r30
    bl      initMapObj__11TMapObjBallFv
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r6, r30, 0x19c
    li      r4, 0x0
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__11TResetFruitFPCc
__ct__11TResetFruitFPCc: # 0x801e1bf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBallFPCc
    lis     r3, __vvt__11TResetFruit@h
    addi    r3, r3, __vvt__11TResetFruit@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0xff
    addi    r3, r31, 0x0
    lfs     f0, -0x2428(r2)
    stfs    f0, 0x198(r31)
    stb     r4, 0x1a4(r31)
    sth     r0, 0x19c(r31)
    sth     r0, 0x19e(r31)
    sth     r0, 0x1a0(r31)
    sth     r0, 0x1a2(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__11TResetFruitFv
initMapObj__11TResetFruitFv: # 0x801e1c5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBallFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r6, r31, 0x19c
    li      r4, 0x0
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__11TResetFruitFP9THitActorUl
receiveMessage__11TResetFruitFP9THitActorUl: # 0x801e1ca0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r5, 0x0
    cmplwi  r31, 0xb
    stw     r30, 0x50(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x801e1ddc
    lhz     r3, 0xfc(r29)
    cmplwi  r3, 0x1
    bne-    branch_0x801e1ce0
    li      r0, 0x1
    b       branch_0x801e1ce4

branch_0x801e1ce0:
    li      r0, 0x0
branch_0x801e1ce4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1d24
    cmplwi  r3, 0x6
    bne-    branch_0x801e1cfc
    li      r0, 0x1
    b       branch_0x801e1d00

branch_0x801e1cfc:
    li      r0, 0x0
branch_0x801e1d00:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1d24
    cmplwi  r3, 0xb
    bne-    branch_0x801e1d18
    li      r0, 0x1
    b       branch_0x801e1d1c

branch_0x801e1d18:
    li      r0, 0x0
branch_0x801e1d1c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e1dd4
branch_0x801e1d24:
    li      r0, 0xb
    sth     r0, 0xfc(r29)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x789c(r13)
    li      r0, 0xa
    stw     r3, 0x104(r29)
    lwz     r3, 0xf8(r29)
    rlwinm  r3, r3, 0, 14, 12
    stw     r3, 0xf8(r29)
    sth     r0, 0xfc(r29)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x801e1dcc
    lbz     r0, 0x1a4(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801e1dcc
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e1dcc:
    li      r3, 0x1
    b       branch_0x801e2060

branch_0x801e1dd4:
    li      r3, 0x0
    b       branch_0x801e2060

branch_0x801e1ddc:
    cmplwi  r31, 0xd
    bne-    branch_0x801e1e00
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801e2060

branch_0x801e1e00:
    lhz     r3, 0xfc(r29)
    cmplwi  r3, 0x1
    bne-    branch_0x801e1e14
    li      r0, 0x1
    b       branch_0x801e1e18

branch_0x801e1e14:
    li      r0, 0x0
branch_0x801e1e18:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1e58
    cmplwi  r3, 0x6
    bne-    branch_0x801e1e30
    li      r0, 0x1
    b       branch_0x801e1e34

branch_0x801e1e30:
    li      r0, 0x0
branch_0x801e1e34:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1e58
    cmplwi  r3, 0xb
    bne-    branch_0x801e1e4c
    li      r0, 0x1
    b       branch_0x801e1e50

branch_0x801e1e4c:
    li      r0, 0x0
branch_0x801e1e50:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e205c
branch_0x801e1e58:
    cmplwi  r3, 0x2
    bne-    branch_0x801e1e68
    li      r0, 0x1
    b       branch_0x801e1e6c

branch_0x801e1e68:
    li      r0, 0x0
branch_0x801e1e6c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1f64
    cmplwi  r3, 0x3
    bne-    branch_0x801e1e84
    li      r0, 0x1
    b       branch_0x801e1e88

branch_0x801e1e84:
    li      r0, 0x0
branch_0x801e1e88:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1f64
    cmplwi  r3, 0xc
    bne-    branch_0x801e1ea0
    li      r0, 0x1
    b       branch_0x801e1ea4

branch_0x801e1ea0:
    li      r0, 0x0
branch_0x801e1ea4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1f64
    cmplwi  r3, 0xa
    bne-    branch_0x801e1ebc
    li      r0, 0x1
    b       branch_0x801e1ec0

branch_0x801e1ebc:
    li      r0, 0x0
branch_0x801e1ec0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1f64
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      touchActor__11TMapObjBallFP9THitActor
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 5, 5
    bne-    branch_0x801e1f64
    lhz     r0, 0xfc(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x801e1ef4
    li      r0, 0x1
    b       branch_0x801e1ef8

branch_0x801e1ef4:
    li      r0, 0x0
branch_0x801e1ef8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e1f64
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x801e1f64
    lwz     r0, 0x104(r29)
    cmpwi   r0, 0x0
    ble-    branch_0x801e1f20
    li      r0, 0x1
    b       branch_0x801e1f24

branch_0x801e1f20:
    li      r0, 0x0
branch_0x801e1f24:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e1f50
    lwz     r0, 0xf8(r29)
    addi    r3, r29, 0x0
    oris    r0, r0, 0x4
    stw     r0, 0xf8(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    stw     r3, 0x104(r29)
branch_0x801e1f50:
    lwz     r3, 0xf0(r29)
    li      r0, 0xb
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r29)
    sth     r0, 0xfc(r29)
branch_0x801e1f64:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      receiveMessage__14TMapObjGeneralFP9THitActorUl
    cmpwi   r3, 0x0
    beq-    branch_0x801e1f84
    li      r3, 0x1
    b       branch_0x801e2028

branch_0x801e1f84:
    cmplwi  r31, 0x4
    bne-    branch_0x801e1fb8
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x801e1fb8
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801e2028

branch_0x801e1fb8:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801e1fd0
    li      r0, 0x1
    b       branch_0x801e1fd4

branch_0x801e1fd0:
    li      r0, 0x0
branch_0x801e1fd4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e2024
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e1ff4
    li      r0, 0x1
    b       branch_0x801e1ff8

branch_0x801e1ff4:
    li      r0, 0x0
branch_0x801e1ff8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e2024
    cmplwi  r31, 0x4
    beq-    branch_0x801e2024
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x1e8(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801e2028

branch_0x801e2024:
    li      r3, 0x0
branch_0x801e2028:
    cmplwi  r31, 0x6
    bne-    branch_0x801e2060
    lhz     r0, 0xfc(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x801e2044
    li      r0, 0x1
    b       branch_0x801e2048

branch_0x801e2044:
    li      r0, 0x0
branch_0x801e2048:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e2060
    li      r0, 0xb
    sth     r0, 0xfc(r29)
    b       branch_0x801e2060

branch_0x801e205c:
    li      r3, 0x0
branch_0x801e2060:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl getLivingTime__11TResetFruitCFv
getLivingTime__11TResetFruitCFv: # 0x801e207c
    lwz     r3, R13Off_m0x78a8(r13)
    blr


.globl makeObjAppeared__11TResetFruitFv
makeObjAppeared__11TResetFruitFv: # 0x801e2084
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 5, 5
    beq-    branch_0x801e20b8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
branch_0x801e20b8:
    mr      r3, r31
    bl      makeObjAppeared__11TMapObjBaseFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1ec(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    lfs     f0, 0x10(r31)
    stfs    f0, 0xc(r4)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xbc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r4)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x2c(r4)
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x394
    bne-    branch_0x801e2118
    li      r0, 0x1
    b       branch_0x801e211c

branch_0x801e2118:
    li      r0, 0x0
branch_0x801e211c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e2144
    lfs     f2, 0x14(r4)
    lfs     f0, -0x2428(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x801e2144
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x1c(r4)
    fnmsubs  f0, f1, f2, f0
    stfs    f0, 0x1c(r4)
branch_0x801e2144:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x392
    bne-    branch_0x801e215c
    li      r0, 0x1
    b       branch_0x801e2160

branch_0x801e215c:
    li      r0, 0x0
branch_0x801e2160:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e2184
    lfs     f1, -0x23ec(r2)
    lfs     f0, 0x14(r4)
    lfs     f2, -0x23cc(r2)
    fsubs   f1, f1, f0
    lfs     f0, 0x1c(r4)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x1c(r4)
branch_0x801e2184:
    li      r0, 0x0
    stb     r0, 0xe8(r31)
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 5, 5
    beq-    branch_0x801e21a0
    li      r0, 0xb
    sth     r0, 0xfc(r31)
branch_0x801e21a0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl killByTimer__11TResetFruitFi
killByTimer__11TResetFruitFi: # 0x801e21b4
    stw     r4, 0x104(r3)
    li      r0, 0xb
    lwz     r4, 0xf8(r3)
    oris    r4, r4, 0x4
    stw     r4, 0xf8(r3)
    sth     r0, 0xfc(r3)
    blr


.globl perform__11TResetFruitFUlPQ26JDrama9TGraphics
perform__11TResetFruitFUlPQ26JDrama9TGraphics: # 0x801e21d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x68(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x64(sp)
    addi    r29, r3, 0x0
    lwz     r6, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r6)
    cmplwi  r0, 0x7
    bne-    branch_0x801e2388
    lhz     r0, 0xfc(r29)
    cmplwi  r0, 0x6
    bne-    branch_0x801e2218
    li      r0, 0x1
    b       branch_0x801e221c

branch_0x801e2218:
    li      r0, 0x0
branch_0x801e221c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e226c
    lwz     r3, 0xac(r29)
    lwz     r0, 0xb0(r29)
    lfs     f0, -0x23f8(r2)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0xb4(r29)
    stw     r0, 0x5c(sp)
    lfs     f2, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f3, 0x5c(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x801e2288
branch_0x801e226c:
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x801e2388
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 23, 21
    stw     r0, 0xf0(r29)
    b       branch_0x801e2388

branch_0x801e2288:
    lwz     r3, R13Off_m0x70dc(r13)
    addi    r4, r29, 0x10
    bl      isInAreaCube__16TCubeManagerAreaCFRC3Vec
    clrlwi. r0, r3, 24
    bne-    branch_0x801e2388
    lhz     r0, 0xfc(r29)
    cmplwi  r0, 0xb
    bne-    branch_0x801e22b0
    li      r0, 0x1
    b       branch_0x801e22b4

branch_0x801e22b0:
    li      r0, 0x0
branch_0x801e22b4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e2388
    lfs     f1, 0x10(r29)
    lfs     f0, 0x10c(r29)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801e22dc
    lfs     f1, 0x18(r29)
    lfs     f0, 0x114(r29)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801e2388
branch_0x801e22dc:
    li      r0, 0xb
    sth     r0, 0xfc(r29)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x789c(r13)
    li      r0, 0xa
    stw     r3, 0x104(r29)
    lwz     r3, 0xf8(r29)
    rlwinm  r3, r3, 0, 14, 12
    stw     r3, 0xf8(r29)
    sth     r0, 0xfc(r29)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x801e2398
    lbz     r0, 0x1a4(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801e2398
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    b       branch_0x801e2398

branch_0x801e2388:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__14TMapObjGeneralFUlPQ26JDrama9TGraphics
branch_0x801e2398:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl control__11TResetFruitFv
control__11TResetFruitFv: # 0x801e23b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stw     r31, 0xec(sp)
    stw     r30, 0xe8(sp)
    mr      r30, r3
    stw     r29, 0xe4(sp)
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0xd
    bgt-    branch_0x801e29c4
    lis     r3, unk_803d2818@h
    addi    r3, r3, unk_803d2818@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x801e23f8:
    lwz     r0, 0x64(r30)
    li      r31, 0x0
    li      r29, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    b       branch_0x801e252c

branch_0x801e2410:
    lhz     r5, 0xfc(r30)
    lwz     r3, 0x44(r30)
    cmplwi  r5, 0x2
    lwzx    r4, r3, r29
    bne-    branch_0x801e242c
    li      r0, 0x1
    b       branch_0x801e2430

branch_0x801e242c:
    li      r0, 0x0
branch_0x801e2430:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e2524
    cmplwi  r5, 0x3
    bne-    branch_0x801e2448
    li      r0, 0x1
    b       branch_0x801e244c

branch_0x801e2448:
    li      r0, 0x0
branch_0x801e244c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e2524
    cmplwi  r5, 0xc
    bne-    branch_0x801e2464
    li      r0, 0x1
    b       branch_0x801e2468

branch_0x801e2464:
    li      r0, 0x0
branch_0x801e2468:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e2524
    cmplwi  r5, 0xa
    bne-    branch_0x801e2480
    li      r0, 0x1
    b       branch_0x801e2484

branch_0x801e2480:
    li      r0, 0x0
branch_0x801e2484:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e2524
    mr      r3, r30
    bl      touchActor__11TMapObjBallFP9THitActor
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 5, 5
    bne-    branch_0x801e2524
    lhz     r0, 0xfc(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x801e24b4
    li      r0, 0x1
    b       branch_0x801e24b8

branch_0x801e24b4:
    li      r0, 0x0
branch_0x801e24b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e2524
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x801e2524
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801e24e0
    li      r0, 0x1
    b       branch_0x801e24e4

branch_0x801e24e0:
    li      r0, 0x0
branch_0x801e24e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e2510
    lwz     r0, 0xf8(r30)
    addi    r3, r30, 0x0
    oris    r0, r0, 0x4
    stw     r0, 0xf8(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    stw     r3, 0x104(r30)
branch_0x801e2510:
    lwz     r3, 0xf0(r30)
    li      r0, 0xb
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r30)
    sth     r0, 0xfc(r30)
branch_0x801e2524:
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
branch_0x801e252c:
    lhz     r0, 0x48(r30)
    cmpw    r31, r0
    blt+    branch_0x801e2410
    lwz     r3, 0xc4(r30)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801e29c4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1ec(r12)
    mtlr    r12
    blrl
    b       branch_0x801e29c4

branch_0x801e2560:
    lwz     r0, 0x64(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x801e2594
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801e2594
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
branch_0x801e2594:
    lwz     r3, 0xc4(r30)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801e2658
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801e25bc
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
branch_0x801e25bc:
    lfs     f1, -0x23f4(r2)
    lfs     f0, 0xc8(r30)
    lwz     r3, 0xc4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x14(r30)
    lwz     r3, 0x44(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801e2660
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0xcd
    bne-    branch_0x801e25f4
    li      r0, 0x1
    b       branch_0x801e25f8

branch_0x801e25f4:
    li      r0, 0x0
branch_0x801e25f8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e2620
    addis   r0, r4, 0xc000
    cmplwi  r0, 0xcd
    bne-    branch_0x801e2614
    li      r0, 0x1
    b       branch_0x801e2618

branch_0x801e2614:
    li      r0, 0x0
branch_0x801e2618:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e2660
branch_0x801e2620:
    lfs     f31, 0x198(r30)
    bl      SMS_GetSandRiseUpRatio__FPC10TLiveActor
    stfs    f1, 0x198(r30)
    lfs     f1, 0x198(r30)
    lfs     f0, -0x23f0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e2660
    fcmpo   cr0, f1, f31
    ble-    branch_0x801e2660
    lfs     f1, 0xb0(r30)
    lfs     f0, -0x2408(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r30)
    b       branch_0x801e2660

branch_0x801e2658:
    lfs     f0, -0x2428(r2)
    stfs    f0, 0x198(r30)
branch_0x801e2660:
    mr      r3, r30
    bl      control__11TMapObjBallFv
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 5, 5
    bne-    branch_0x801e29c4
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801e2688
    li      r0, 0x1
    b       branch_0x801e268c

branch_0x801e2688:
    li      r0, 0x0
branch_0x801e268c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e29c4
    lwz     r3, 0x68(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801e26c8
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x68(r30)
    li      r0, 0x0
    stw     r0, 0x6c(r3)
    stw     r0, 0x68(r30)
branch_0x801e26c8:
    lfs     f0, -0x2428(r2)
    li      r0, 0xc
    stfs    f0, 0xac(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xb4(r30)
    sth     r0, 0xfc(r30)
    b       branch_0x801e29c4

branch_0x801e26e4:
    mr      r3, r30
    bl      control__11TMapObjBallFv
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 5, 5
    bne-    branch_0x801e29c4
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801e270c
    li      r0, 0x1
    b       branch_0x801e2710

branch_0x801e270c:
    li      r0, 0x0
branch_0x801e2710:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e29c4
    lwz     r3, 0x68(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801e274c
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x68(r30)
    li      r0, 0x0
    stw     r0, 0x6c(r3)
    stw     r0, 0x68(r30)
branch_0x801e274c:
    lfs     f0, -0x2428(r2)
    li      r0, 0xc
    stfs    f0, 0xac(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xb4(r30)
    sth     r0, 0xfc(r30)
    b       branch_0x801e29c4

branch_0x801e2768:
    mr      r3, r30
    bl      control__14TMapObjGeneralFv
    lwz     r3, 0x194(r30)
    cmpwi   r3, 0x0
    beq-    branch_0x801e2784
    addi    r0, r3, -0x1
    stw     r0, 0x194(r30)
branch_0x801e2784:
    lhz     r0, 0xfc(r30)
    cmplwi  r0, 0x6
    bne-    branch_0x801e2798
    li      r0, 0x1
    b       branch_0x801e279c

branch_0x801e2798:
    li      r0, 0x0
branch_0x801e279c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e27e8
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x90
    bl      PSMTXCopy
    lfs     f1, 0xac(sp)
    mr      r3, r30
    lfs     f0, 0x190(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xac(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r3, sp, 0x90
    bl      PSMTXCopy
    b       branch_0x801e29c4

branch_0x801e27e8:
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f0, -0x23f8(r2)
    stw     r3, 0xc0(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0xc8(sp)
    lfs     f2, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f3, 0xc8(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801e2840
    lwz     r3, 0xc4(r30)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801e29c4
branch_0x801e2840:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1ec(r12)
    mtlr    r12
    blrl
    b       branch_0x801e29c4

branch_0x801e2858:
    lfs     f2, 0xbc(r30)
    mr      r3, r30
    lfs     f1, -0x2404(r2)
    addi    r6, r30, 0x10
    lfs     f0, 0x14(r30)
    li      r4, 0xe5
    fmadds  f0, f2, f1, f0
    li      r5, 0x0
    stfs    f0, 0x14(r30)
    lfs     f0, 0x124(r30)
    stfs    f0, 0x24(r30)
    lfs     f0, 0x128(r30)
    stfs    f0, 0x28(r30)
    lfs     f0, 0x12c(r30)
    stfs    f0, 0x2c(r30)
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x387d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e28c8
    addi    r4, r30, 0x10
    li      r3, 0x387d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e28c8:
    li      r0, 0xf0
    stw     r0, 0x104(r30)
    mr      r3, r30
    bl      sleep__11TMapObjBaseFv
    li      r0, 0xd
    sth     r0, 0xfc(r30)
    b       branch_0x801e29c4

branch_0x801e28e4:
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801e28f8
    li      r0, 0x1
    b       branch_0x801e28fc

branch_0x801e28f8:
    li      r0, 0x0
branch_0x801e28fc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e29c4
    li      r0, 0xff
    sth     r0, 0x19c(r30)
    mr      r3, r30
    sth     r0, 0x19e(r30)
    sth     r0, 0x1a0(r30)
    bl      awake__11TMapObjBaseFv
    li      r0, 0xb
    sth     r0, 0xfc(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x789c(r13)
    li      r0, 0xa
    stw     r3, 0x104(r30)
    lwz     r3, 0xf8(r30)
    rlwinm  r3, r3, 0, 14, 12
    stw     r3, 0xf8(r30)
    sth     r0, 0xfc(r30)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x801e29c4
    lbz     r0, 0x1a4(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801e29c4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e29c4:
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    lwz     r31, 0xec(sp)
    mtlr    r0
    lwz     r30, 0xe8(sp)
    lwz     r29, 0xe4(sp)
    addi    sp, sp, 0xf8
    blr


.globl appearing__11TResetFruitFv
appearing__11TResetFruitFv: # 0x801e29e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x20
    lfs     f1, -0x78a4(r13)
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXScale
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    addi    r3, sp, 0x20
    addi    r4, r31, 0x0
    addi    r5, r4, 0x0
    bl      concatOnlyRotFromLeft__11TMapObjBaseFPA4_fPA4_fPA4_f
    lfs     f1, 0x28(r30)
    lfs     f0, -0x78a4(r13)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r30)
    lfs     f1, 0xbc(r30)
    lfs     f0, 0x28(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f2, 0xbc(r30)
    lfs     f1, 0x28(r30)
    lfs     f0, 0x14(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f1, 0x28(r30)
    lfs     f0, 0x128(r30)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801e2acc
    lfs     f0, 0x124(r30)
    mr      r3, r30
    stfs    f0, 0x24(r30)
    lfs     f0, 0x128(r30)
    stfs    f0, 0x28(r30)
    lfs     f0, 0x12c(r30)
    stfs    f0, 0x2c(r30)
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r30)
    addi    r3, r30, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    sth     r0, 0xfc(r30)
branch_0x801e2acc:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl breaking__11TResetFruitFv
breaking__11TResetFruitFv: # 0x801e2ae4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    addi    r3, sp, 0x24
    lfs     f1, -0x23ec(r2)
    lfs     f2, -0x78a0(r13)
    fmr     f3, f1
    bl      PSMTXScale
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    addi    r3, sp, 0x24
    addi    r4, r31, 0x0
    addi    r5, r4, 0x0
    bl      concatOnlyRotFromLeft__11TMapObjBaseFPA4_fPA4_fPA4_f
    lfs     f1, 0x28(r30)
    lfs     f0, -0x78a0(r13)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r30)
    lfs     f2, 0xbc(r30)
    lfs     f1, 0x28(r30)
    lfs     f0, 0x14(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f1, 0x28(r30)
    lfs     f0, -0x23c8(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801e2be8
    lfs     f2, 0xbc(r30)
    mr      r3, r30
    lfs     f1, -0x2404(r2)
    addi    r6, r30, 0x10
    lfs     f0, 0x14(r30)
    li      r4, 0xe5
    fmadds  f0, f2, f1, f0
    li      r5, 0x0
    stfs    f0, 0x14(r30)
    lfs     f0, 0x124(r30)
    stfs    f0, 0x24(r30)
    lfs     f0, 0x128(r30)
    stfs    f0, 0x28(r30)
    lfs     f0, 0x12c(r30)
    stfs    f0, 0x2c(r30)
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x387d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e2bd0
    addi    r4, r30, 0x10
    li      r3, 0x387d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e2bd0:
    li      r0, 0xf0
    stw     r0, 0x104(r30)
    mr      r3, r30
    bl      sleep__11TMapObjBaseFv
    li      r0, 0xd
    sth     r0, 0xfc(r30)
branch_0x801e2be8:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl kicked__11TResetFruitFv
kicked__11TResetFruitFv: # 0x801e2c00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    mr      r31, r3
    stw     r30, 0xd8(sp)
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 6, 6
    bne-    branch_0x801e2e8c
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x6
    bne-    branch_0x801e2c38
    li      r0, 0x1
    b       branch_0x801e2c3c

branch_0x801e2c38:
    li      r0, 0x0
branch_0x801e2c3c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e2e8c
    lwz     r3, R13Off_m0x60a0(r13)
    lfs     f2, -0x2428(r2)
    lfs     f5, 0x0(r3)
    fcmpo   cr0, f5, f2
    bge-    branch_0x801e2c5c
    b       branch_0x801e2e8c

branch_0x801e2c5c:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x14(sp)
    lwz     r4, 0xc(sp)
    lwz     r3, 0x10(sp)
    stw     r4, 0xac(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lfs     f0, 0xb0(sp)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x801e2e8c
    lwz     r5, R13Off_m0x60b4(r13)
    lfs     f0, 0x10(r31)
    lfs     f1, 0x0(r5)
    stw     r4, 0xa0(sp)
    fsubs   f4, f1, f0
    stw     r3, 0xa4(sp)
    stw     r0, 0xa8(sp)
    lfs     f0, 0xa4(sp)
    lwz     r0, 0xf0(r31)
    fmuls   f0, f0, f2
    lfs     f1, 0xa0(sp)
    lfs     f3, 0x8(r5)
    rlwinm. r0, r0, 0, 24, 24
    lfs     f2, 0x18(r31)
    fsubs   f2, f3, f2
    lfs     f3, 0xa8(sp)
    fmadds  f0, f1, f4, f0
    fmadds  f1, f3, f2, f0
    beq-    branch_0x801e2cf0
    li      r0, 0x1
    b       branch_0x801e2cf4

branch_0x801e2cf0:
    li      r0, 0x0
branch_0x801e2cf4:
    cmpwi   r0, 0x0
    beq-    branch_0x801e2d08
    lfs     f0, -0x2428(r2)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x801e2e8c
branch_0x801e2d08:
    lwz     r4, 0xc(sp)
    lwz     r3, 0x10(sp)
    stw     r4, 0x94(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x98(sp)
    lfs     f1, -0x2428(r2)
    stw     r0, 0x9c(sp)
    lfs     f0, 0x98(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801e2d3c
    lfs     f0, 0x178(r31)
    stfs    f0, 0xb0(r31)
    b       branch_0x801e2d60

branch_0x801e2d3c:
    stw     r4, 0x88(sp)
    stw     r3, 0x8c(sp)
    stw     r0, 0x90(sp)
    lfs     f1, 0x160(r31)
    lfs     f0, 0x8c(sp)
    lfs     f2, 0x174(r31)
    fmuls   f0, f1, f0
    fmsubs  f0, f2, f5, f0
    stfs    f0, 0xb0(r31)
branch_0x801e2d60:
    lwz     r3, R13Off_m0x60a4(r13)
    lfs     f2, 0x170(r31)
    lfs     f1, 0x0(r3)
    lfs     f0, 0xac(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xac(r31)
    lwz     r3, R13Off_m0x609c(r13)
    lfs     f2, 0x170(r31)
    lfs     f1, 0x0(r3)
    lfs     f0, 0xb4(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb4(r31)
    lwz     r3, 0x130(r31)
    lfs     f0, 0xac(r31)
    lwz     r3, 0x20(r3)
    fabs    f0, f0
    lwz     r3, 0x4(r3)
    lfs     f1, 0xc(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801e2e2c
    lfs     f0, 0xb4(r31)
    fabs    f0, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x801e2e2c
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2400(r2)
    stw     r0, 0xd4(sp)
    lis     r30, 0x4330
    lfs     f2, -0x240c(r2)
    stw     r30, 0xd0(sp)
    lfs     f1, -0x23c4(r2)
    lfd     f3, 0xd0(sp)
    lfs     f0, -0x23ec(r2)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmsubs  f0, f1, f2, f0
    stfs    f0, 0xac(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2400(r2)
    stw     r0, 0xcc(sp)
    lfs     f2, -0x240c(r2)
    stw     r30, 0xc8(sp)
    lfs     f1, -0x23c4(r2)
    lfd     f3, 0xc8(sp)
    lfs     f0, -0x23ec(r2)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmsubs  f0, f1, f2, f0
    stfs    f0, 0xb4(r31)
branch_0x801e2e2c:
    li      r0, 0xa
    stw     r0, 0x194(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    bl      SMS_GetMarioHitActor__Fv
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x194f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e2e8c
    addi    r4, r31, 0x10
    li      r3, 0x194f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e2e8c:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    addi    sp, sp, 0xe0
    blr


.globl makeObjLiving__11TResetFruitFv
makeObjLiving__11TResetFruitFv: # 0x801e2ea4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x104(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x801e2ecc
    li      r0, 0x1
    b       branch_0x801e2ed0

branch_0x801e2ecc:
    li      r0, 0x0
branch_0x801e2ed0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e2efc
    lwz     r0, 0xf8(r31)
    addi    r3, r31, 0x0
    oris    r0, r0, 0x4
    stw     r0, 0xf8(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    stw     r3, 0x104(r31)
branch_0x801e2efc:
    lwz     r3, 0xf0(r31)
    li      r0, 0xb
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r31)
    sth     r0, 0xfc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchGround__11TResetFruitFPQ29JGeometry8TVec3_f_
touchGround__11TResetFruitFPQ29JGeometry8TVec3_f_: # 0x801e2f24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x800
    bne-    branch_0x801e2f58
    li      r0, 0x1
    b       branch_0x801e2f5c

branch_0x801e2f58:
    li      r0, 0x0
branch_0x801e2f5c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e3028
    li      r0, 0xb
    sth     r0, 0xfc(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x789c(r13)
    li      r0, 0xa
    stw     r3, 0x104(r30)
    lwz     r3, 0xf8(r30)
    rlwinm  r3, r3, 0, 14, 12
    stw     r3, 0xf8(r30)
    sth     r0, 0xfc(r30)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x801e300c
    lbz     r0, 0x1a4(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801e300c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e300c:
    lfs     f0, 0x10(r30)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x8(r31)
    b       branch_0x801e3034

branch_0x801e3028:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      touchGround__11TMapObjBallFPQ29JGeometry8TVec3_f_
branch_0x801e3034:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl touchActor__11TResetFruitFP9THitActor
touchActor__11TResetFruitFP9THitActor: # 0x801e304c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lhz     r3, 0xfc(r3)
    cmplwi  r3, 0x2
    bne-    branch_0x801e3074
    li      r0, 0x1
    b       branch_0x801e3078

branch_0x801e3074:
    li      r0, 0x0
branch_0x801e3078:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e316c
    cmplwi  r3, 0x3
    bne-    branch_0x801e3090
    li      r0, 0x1
    b       branch_0x801e3094

branch_0x801e3090:
    li      r0, 0x0
branch_0x801e3094:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e316c
    cmplwi  r3, 0xc
    bne-    branch_0x801e30ac
    li      r0, 0x1
    b       branch_0x801e30b0

branch_0x801e30ac:
    li      r0, 0x0
branch_0x801e30b0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e316c
    cmplwi  r3, 0xa
    bne-    branch_0x801e30c8
    li      r0, 0x1
    b       branch_0x801e30cc

branch_0x801e30c8:
    li      r0, 0x0
branch_0x801e30cc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e316c
    mr      r3, r31
    bl      touchActor__11TMapObjBallFP9THitActor
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 5, 5
    bne-    branch_0x801e316c
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801e30fc
    li      r0, 0x1
    b       branch_0x801e3100

branch_0x801e30fc:
    li      r0, 0x0
branch_0x801e3100:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e316c
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x801e316c
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801e3128
    li      r0, 0x1
    b       branch_0x801e312c

branch_0x801e3128:
    li      r0, 0x0
branch_0x801e312c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e3158
    lwz     r0, 0xf8(r31)
    addi    r3, r31, 0x0
    oris    r0, r0, 0x4
    stw     r0, 0xf8(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    stw     r3, 0x104(r31)
branch_0x801e3158:
    lwz     r3, 0xf0(r31)
    li      r0, 0xb
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r31)
    sth     r0, 0xfc(r31)
branch_0x801e316c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl touchWater__11TResetFruitFP9THitActor
touchWater__11TResetFruitFP9THitActor: # 0x801e3180
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lhz     r3, 0xfc(r3)
    cmplwi  r3, 0x6
    bne-    branch_0x801e31a8
    li      r0, 0x1
    b       branch_0x801e31ac

branch_0x801e31a8:
    li      r0, 0x0
branch_0x801e31ac:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e3260
    cmplwi  r3, 0x2
    bne-    branch_0x801e31c4
    li      r0, 0x1
    b       branch_0x801e31c8

branch_0x801e31c4:
    li      r0, 0x0
branch_0x801e31c8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e3260
    lwz     r5, 0xac(r31)
    mr      r3, r4
    lwz     r0, 0xb0(r31)
    stw     r5, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x24(sp)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x18(sp)
    lfs     f0, 0x28(sp)
    stfs    f0, 0x1c(sp)
    bl      getWaterSpeed__11TMapObjBaseFP9THitActor
    lfs     f1, 0x0(r3)
    lfs     f2, 0x17c(r31)
    lfs     f0, 0x14(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x18(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x1c(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x1c(sp)
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x1c(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x801e3260:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801e3274
    li      r0, 0x1
    b       branch_0x801e3278

branch_0x801e3274:
    li      r0, 0x0
branch_0x801e3278:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e32a4
    lwz     r0, 0xf8(r31)
    addi    r3, r31, 0x0
    oris    r0, r0, 0x4
    stw     r0, 0xf8(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    stw     r3, 0x104(r31)
branch_0x801e32a4:
    lwz     r4, 0xf0(r31)
    li      r0, 0xb
    li      r3, 0x1
    rlwinm  r4, r4, 0, 28, 26
    stw     r4, 0xf0(r31)
    sth     r0, 0xfc(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl touchWaterSurface__11TResetFruitFv
touchWaterSurface__11TResetFruitFv: # 0x801e32d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      emitColumnWater__11TMapObjBaseFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3875
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e3318
    addi    r4, r31, 0x10
    li      r3, 0x3875
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e3318:
    li      r0, 0xb
    sth     r0, 0xfc(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x789c(r13)
    li      r0, 0xa
    stw     r3, 0x104(r31)
    lwz     r3, 0xf8(r31)
    rlwinm  r3, r3, 0, 14, 12
    stw     r3, 0xf8(r31)
    sth     r0, 0xfc(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x801e33c0
    lbz     r0, 0x1a4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801e33c0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e33c0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl touchPollution__11TResetFruitFv
touchPollution__11TResetFruitFv: # 0x801e33d4
    mflr    r0
    li      r4, 0x8b
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    addi    r5, r31, 0x10
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3881
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e3430
    addi    r4, r31, 0x10
    li      r3, 0x3881
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e3430:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    li      r0, 0xb
    sth     r0, 0xfc(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x789c(r13)
    li      r0, 0xa
    stw     r3, 0x104(r31)
    lwz     r3, 0xf8(r31)
    rlwinm  r3, r3, 0, 14, 12
    stw     r3, 0xf8(r31)
    sth     r0, 0xfc(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x801e34ec
    lbz     r0, 0x1a4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801e34ec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e34ec:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl hold__11TResetFruitFP10TTakeActor
hold__11TResetFruitFP10TTakeActor: # 0x801e3500
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r4
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0xac(r3)
    lwz     r0, 0xb0(r30)
    stw     r3, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x40(sp)
    lfs     f2, 0x44(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x23cc(r2)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x801e3634
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x34(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x30(sp)
    lfs     f2, 0x34(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x23cc(r2)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x801e35c8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      hold__14TMapObjGeneralFP10TTakeActor
    lfs     f0, -0x2428(r2)
    stfs    f0, 0xb4(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xac(r30)
branch_0x801e35c8:
    lfs     f0, -0x2428(r2)
    stfs    f0, 0xb4(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xac(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 5, 5
    bne-    branch_0x801e3634
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801e3604
    li      r0, 0x1
    b       branch_0x801e3608

branch_0x801e3604:
    li      r0, 0x0
branch_0x801e3608:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e3634
    lwz     r0, 0xf8(r30)
    addi    r3, r30, 0x0
    oris    r0, r0, 0x4
    stw     r0, 0xf8(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    stw     r3, 0x104(r30)
branch_0x801e3634:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl thrown__11TResetFruitFv
thrown__11TResetFruitFv: # 0x801e364c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      thrown__14TMapObjGeneralFv
    li      r0, 0xb
    sth     r0, 0xfc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl makeObjWaitingToAppear__11TResetFruitFv
makeObjWaitingToAppear__11TResetFruitFv: # 0x801e3680
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0xb
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    sth     r0, 0xfc(r3)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x789c(r13)
    li      r0, 0xa
    stw     r3, 0x104(r31)
    lwz     r3, 0xf8(r31)
    rlwinm  r3, r3, 0, 14, 12
    stw     r3, 0xf8(r31)
    sth     r0, 0xfc(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x801e3738
    lbz     r0, 0x1a4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801e3738
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e3738:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl waitingToAppear__11TResetFruitFv
waitingToAppear__11TResetFruitFv: # 0x801e374c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    lwz     r4, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0x3
    bne-    branch_0x801e3794
    lbz     r0, 0x1a4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801e3794
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e3794:
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 5, 5
    bne-    branch_0x801e3870
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801e37b4
    li      r0, 0x1
    b       branch_0x801e37b8

branch_0x801e37b4:
    li      r0, 0x0
branch_0x801e37b8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e3870
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801e3870
    lwz     r0, 0xf8(r31)
    addi    r3, r31, 0x0
    oris    r0, r0, 0x4
    stw     r0, 0xf8(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x23c8(r2)
    addi    r3, sp, 0x3c
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXScale
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r30, 0x58(r3)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r5, r30, 0x0
    addi    r3, sp, 0x3c
    bl      concatOnlyRotFromLeft__11TMapObjBaseFPA4_fPA4_fPA4_f
    lfs     f0, -0x23c8(r2)
    li      r0, 0x2
    li      r4, 0x3802
    stfs    f0, 0x28(r31)
    lwz     r3, 0x64(r31)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    sth     r0, 0xfc(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e3870
    addi    r4, r31, 0x10
    li      r3, 0x3802
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e3870:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl checkGroundCollision__11TResetFruitFPQ29JGeometry8TVec3_f_
checkGroundCollision__11TResetFruitFPQ29JGeometry8TVec3_f_: # 0x801e3888
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    lwz     r5, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r5)
    cmplwi  r0, 0x7
    beq-    branch_0x801e38cc
    cmplwi  r0, 0x4
    beq-    branch_0x801e38cc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      checkGroundCollision__14TMapObjGeneralFPQ29JGeometry8TVec3_f_
    b       branch_0x801e3a08

branch_0x801e38cc:
    cmplwi  r0, 0x4
    bne-    branch_0x801e3948
    lfs     f1, -0x23f4(r2)
    addi    r4, r30, 0xc4
    lfs     f0, 0x4(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r31)
    lfs     f3, 0x8(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r30)
    lfs     f1, 0xc8(r30)
    lfs     f0, -0x23ec(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r30)
    lfs     f1, 0x4(r31)
    lfs     f0, 0xc8(r30)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801e3938
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x1c8(r12)
    mtlr    r12
    blrl
    b       branch_0x801e3a08

branch_0x801e3938:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    b       branch_0x801e3a08

branch_0x801e3948:
    lfs     f1, 0x4(r31)
    addi    r4, r30, 0xc4
    lfs     f0, 0xc0(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r31)
    lfs     f3, 0x8(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r30)
    lwz     r3, 0xc4(r30)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x801
    beq-    branch_0x801e3984
    cmplwi  r0, 0x203
    bne-    branch_0x801e398c
branch_0x801e3984:
    li      r0, 0x1
    b       branch_0x801e3990

branch_0x801e398c:
    li      r0, 0x0
branch_0x801e3990:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e39bc
    lfs     f1, 0xc8(r30)
    addi    r4, r30, 0xc4
    lfs     f0, -0x23f4(r2)
    lwz     r3, R13Off_m0x6328(r13)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r31)
    lfs     f3, 0x8(r31)
    bl      checkGroundExactY__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r30)
branch_0x801e39bc:
    lfs     f1, 0xc8(r30)
    lfs     f0, -0x23ec(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r30)
    lfs     f1, 0x4(r31)
    lfs     f0, 0xc8(r30)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801e39fc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x1c8(r12)
    mtlr    r12
    blrl
    b       branch_0x801e3a08

branch_0x801e39fc:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x801e3a08:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl __ct__11TMapObjBallFPCc
__ct__11TMapObjBallFPCc: # 0x801e3a20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__11TMapObjBall@h
    addi    r3, r3, __vvt__11TMapObjBall@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x2428(r2)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x150(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x168(r31)
    stfs    f0, 0x16c(r31)
    stfs    f0, 0x170(r31)
    stfs    f0, 0x174(r31)
    stfs    f0, 0x178(r31)
    stfs    f0, 0x17c(r31)
    stfs    f0, 0x180(r31)
    stfs    f0, 0x184(r31)
    stfs    f0, 0x188(r31)
    stfs    f0, 0x18c(r31)
    stfs    f0, 0x190(r31)
    stw     r0, 0x194(r31)
    stfs    f0, 0x12c(r31)
    stfs    f0, 0x128(r31)
    stfs    f0, 0x124(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__11TMapObjBallFv
initMapObj__11TMapObjBallFv: # 0x801e3ac8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__14TMapObjGeneralFv
    lfs     f0, 0x24(r31)
    lis     r3, unk_40000390@h
    addi    r0, r3, unk_40000390@l
    stfs    f0, 0x124(r31)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x128(r31)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x12c(r31)
    lwz     r4, 0x4c(r31)
    cmpw    r4, r0
    bge-    branch_0x801e3b2c
    addi    r0, r3, 0xd0
    cmpw    r4, r0
    beq-    branch_0x801e3b5c
    bge-    branch_0x801e3ec8
    addi    r0, r3, 0x64
    cmpw    r4, r0
    beq-    branch_0x801e3bec
    b       branch_0x801e3ec8

branch_0x801e3b2c:
    addi    r0, r3, 0x394
    cmpw    r4, r0
    beq-    branch_0x801e3dbc
    bge-    branch_0x801e3b4c
    addi    r0, r3, 0x393
    cmpw    r4, r0
    bge-    branch_0x801e3c8c
    b       branch_0x801e3d20

branch_0x801e3b4c:
    addi    r0, r3, 0x396
    cmpw    r4, r0
    bge-    branch_0x801e3ec8
    b       branch_0x801e3e30

branch_0x801e3b5c:
    lfs     f0, -0x23c0(r2)
    stfs    f0, 0x14c(r31)
    lfs     f1, -0x2428(r2)
    stfs    f1, 0x150(r31)
    stfs    f1, 0x154(r31)
    lfs     f0, -0x23bc(r2)
    stfs    f0, 0x158(r31)
    stfs    f1, 0x15c(r31)
    lfs     f0, -0x23b8(r2)
    stfs    f0, 0x160(r31)
    lfs     f0, -0x23b4(r2)
    stfs    f0, 0x164(r31)
    lfs     f1, -0x23b0(r2)
    stfs    f1, 0x168(r31)
    lfs     f0, -0x2404(r2)
    stfs    f0, 0x16c(r31)
    stfs    f0, 0x170(r31)
    lfs     f0, -0x23c8(r2)
    stfs    f0, 0x174(r31)
    lfs     f0, -0x23ac(r2)
    stfs    f0, 0x178(r31)
    lfs     f0, -0x23a8(r2)
    stfs    f0, 0x17c(r31)
    lfs     f0, -0x23a4(r2)
    stfs    f0, 0x180(r31)
    stfs    f1, 0x184(r31)
    stfs    f1, 0x188(r31)
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xbc(r31)
    lfs     f1, 0xbc(r31)
    lfs     f0, -0x23e0(r2)
    fdivs   f0, f1, f0
    stfs    f0, 0x18c(r31)
    b       branch_0x801e3ec8

branch_0x801e3bec:
    lfs     f0, -0x23dc(r2)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x23c4(r2)
    stfs    f0, 0x14c(r31)
    lfs     f1, -0x23a0(r2)
    stfs    f1, 0x150(r31)
    lfs     f0, -0x2428(r2)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x239c(r2)
    stfs    f0, 0x158(r31)
    stfs    f1, 0x15c(r31)
    lfs     f0, -0x2398(r2)
    stfs    f0, 0x160(r31)
    lfs     f0, -0x23b8(r2)
    stfs    f0, 0x170(r31)
    lfs     f0, -0x2394(r2)
    stfs    f0, 0x174(r31)
    lfs     f0, -0x2408(r2)
    stfs    f0, 0x178(r31)
    lfs     f0, -0x2404(r2)
    stfs    f0, 0x164(r31)
    stfs    f1, 0x168(r31)
    stfs    f0, 0x16c(r31)
    lfs     f0, -0x2390(r2)
    stfs    f0, 0x17c(r31)
    lfs     f0, -0x238c(r2)
    stfs    f0, 0x180(r31)
    lfs     f0, -0x23ec(r2)
    stfs    f0, 0x184(r31)
    lfs     f0, -0x23b0(r2)
    stfs    f0, 0x188(r31)
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xbc(r31)
    lfs     f1, 0xbc(r31)
    lfs     f0, -0x23e0(r2)
    fdivs   f0, f1, f0
    stfs    f0, 0x18c(r31)
    b       branch_0x801e3ec8

branch_0x801e3c8c:
    lfs     f0, -0x23dc(r2)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x23c8(r2)
    stfs    f0, 0x14c(r31)
    lfs     f1, -0x2388(r2)
    stfs    f1, 0x150(r31)
    lfs     f0, -0x2384(r2)
    stfs    f0, 0x154(r31)
    lfs     f2, -0x2404(r2)
    stfs    f2, 0x158(r31)
    stfs    f1, 0x15c(r31)
    lfs     f1, -0x23ec(r2)
    stfs    f1, 0x160(r31)
    lfs     f0, -0x23b8(r2)
    stfs    f0, 0x170(r31)
    lfs     f0, -0x2394(r2)
    stfs    f0, 0x174(r31)
    lfs     f0, -0x2408(r2)
    stfs    f0, 0x178(r31)
    lfs     f0, -0x23c4(r2)
    stfs    f0, 0x164(r31)
    lfs     f0, -0x23a0(r2)
    stfs    f0, 0x168(r31)
    lfs     f0, -0x23a4(r2)
    stfs    f0, 0x16c(r31)
    lfs     f0, -0x23f0(r2)
    stfs    f0, 0x17c(r31)
    stfs    f2, 0x180(r31)
    stfs    f1, 0x184(r31)
    lfs     f0, -0x23b0(r2)
    stfs    f0, 0x188(r31)
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xbc(r31)
    stfs    f1, 0x18c(r31)
    b       branch_0x801e3ec8

branch_0x801e3d20:
    lfs     f0, -0x2380(r2)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x23c8(r2)
    stfs    f0, 0x14c(r31)
    lfs     f0, -0x2388(r2)
    stfs    f0, 0x150(r31)
    lfs     f0, -0x2428(r2)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x2390(r2)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x238c(r2)
    stfs    f0, 0x15c(r31)
    lfs     f1, -0x2404(r2)
    stfs    f1, 0x160(r31)
    lfs     f0, -0x23b8(r2)
    stfs    f0, 0x170(r31)
    lfs     f0, -0x2394(r2)
    stfs    f0, 0x174(r31)
    lfs     f0, -0x2408(r2)
    stfs    f0, 0x178(r31)
    lfs     f0, -0x23c4(r2)
    stfs    f0, 0x164(r31)
    lfs     f0, -0x23a0(r2)
    stfs    f0, 0x168(r31)
    lfs     f0, -0x23a4(r2)
    stfs    f0, 0x16c(r31)
    lfs     f0, -0x23f0(r2)
    stfs    f0, 0x17c(r31)
    stfs    f1, 0x180(r31)
    lfs     f0, -0x23ec(r2)
    stfs    f0, 0x184(r31)
    lfs     f0, -0x23b0(r2)
    stfs    f0, 0x188(r31)
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xbc(r31)
    stfs    f1, 0x18c(r31)
    b       branch_0x801e3ec8

branch_0x801e3dbc:
    lfs     f0, -0x23c8(r2)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x2428(r2)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x150(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x170(r31)
    stfs    f0, 0x174(r31)
    stfs    f0, 0x178(r31)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x168(r31)
    stfs    f0, 0x16c(r31)
    lfs     f0, -0x23f0(r2)
    stfs    f0, 0x17c(r31)
    lfs     f0, -0x2404(r2)
    stfs    f0, 0x180(r31)
    lfs     f0, -0x23ec(r2)
    stfs    f0, 0x184(r31)
    lfs     f0, -0x23b0(r2)
    stfs    f0, 0x188(r31)
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xbc(r31)
    stfs    f1, 0x18c(r31)
    b       branch_0x801e3ec8

branch_0x801e3e30:
    lfs     f0, -0x2380(r2)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x23c8(r2)
    stfs    f0, 0x14c(r31)
    lfs     f0, -0x2388(r2)
    stfs    f0, 0x150(r31)
    lfs     f0, -0x2428(r2)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x2390(r2)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x238c(r2)
    stfs    f0, 0x15c(r31)
    lfs     f1, -0x2404(r2)
    stfs    f1, 0x160(r31)
    lfs     f0, -0x23b8(r2)
    stfs    f0, 0x170(r31)
    lfs     f0, -0x2394(r2)
    stfs    f0, 0x174(r31)
    lfs     f0, -0x2408(r2)
    stfs    f0, 0x178(r31)
    lfs     f0, -0x23c4(r2)
    stfs    f0, 0x164(r31)
    lfs     f0, -0x23a0(r2)
    stfs    f0, 0x168(r31)
    lfs     f0, -0x23a4(r2)
    stfs    f0, 0x16c(r31)
    lfs     f0, -0x23f0(r2)
    stfs    f0, 0x17c(r31)
    stfs    f1, 0x180(r31)
    lfs     f0, -0x23ec(r2)
    stfs    f0, 0x184(r31)
    lfs     f0, -0x23b0(r2)
    stfs    f0, 0x188(r31)
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xbc(r31)
    stfs    f1, 0x18c(r31)
branch_0x801e3ec8:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x393
    bne-    branch_0x801e3ee0
    li      r0, 0x1
    b       branch_0x801e3ee4

branch_0x801e3ee0:
    li      r0, 0x0
branch_0x801e3ee4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e3f04
    lfs     f1, -0x237c(r2)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xbc(r31)
    lfs     f0, 0xbc(r31)
    stfs    f0, 0x190(r31)
branch_0x801e3f04:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x390
    bne-    branch_0x801e3f1c
    li      r0, 0x1
    b       branch_0x801e3f20

branch_0x801e3f1c:
    li      r0, 0x0
branch_0x801e3f20:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e3f40
    lfs     f1, -0x2378(r2)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xbc(r31)
    lfs     f0, -0x2408(r2)
    stfs    f0, 0x190(r31)
branch_0x801e3f40:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x391
    bne-    branch_0x801e3f58
    li      r0, 0x1
    b       branch_0x801e3f5c

branch_0x801e3f58:
    li      r0, 0x0
branch_0x801e3f5c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e3f7c
    lfs     f1, -0x2378(r2)
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xbc(r31)
    lfs     f0, -0x2408(r2)
    stfs    f0, 0x190(r31)
branch_0x801e3f7c:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x392
    bne-    branch_0x801e3f94
    li      r0, 0x1
    b       branch_0x801e3f98

branch_0x801e3f94:
    li      r0, 0x0
branch_0x801e3f98:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e3fa8
    lfs     f0, -0x23cc(r2)
    stfs    f0, 0x190(r31)
branch_0x801e3fa8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__11TMapObjBallFP9THitActorUl
receiveMessage__11TMapObjBallFP9THitActorUl: # 0x801e3fbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      receiveMessage__14TMapObjGeneralFP9THitActorUl
    cmpwi   r3, 0x0
    beq-    branch_0x801e3ff4
    li      r3, 0x1
    b       branch_0x801e4098

branch_0x801e3ff4:
    cmplwi  r31, 0x4
    bne-    branch_0x801e4028
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x801e4028
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801e4098

branch_0x801e4028:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801e4040
    li      r0, 0x1
    b       branch_0x801e4044

branch_0x801e4040:
    li      r0, 0x0
branch_0x801e4044:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e4094
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e4064
    li      r0, 0x1
    b       branch_0x801e4068

branch_0x801e4064:
    li      r0, 0x0
branch_0x801e4068:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e4094
    cmplwi  r31, 0x4
    beq-    branch_0x801e4094
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x1e8(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801e4098

branch_0x801e4094:
    li      r3, 0x0
branch_0x801e4098:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl control__11TMapObjBallFv
control__11TMapObjBallFv: # 0x801e40b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    bl      control__14TMapObjGeneralFv
    lwz     r3, 0x194(r31)
    cmpwi   r3, 0x0
    beq-    branch_0x801e40e0
    addi    r0, r3, -0x1
    stw     r0, 0x194(r31)
branch_0x801e40e0:
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x6
    bne-    branch_0x801e40f4
    li      r0, 0x1
    b       branch_0x801e40f8

branch_0x801e40f4:
    li      r0, 0x0
branch_0x801e40f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e4144
    lwz     r3, 0x68(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x38
    bl      PSMTXCopy
    lfs     f1, 0x54(sp)
    mr      r3, r31
    lfs     f0, 0x190(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x54(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r3, sp, 0x38
    bl      PSMTXCopy
    b       branch_0x801e41b0

branch_0x801e4144:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x23f8(r2)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x34(sp)
    lfs     f2, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f3, 0x34(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801e419c
    lwz     r3, 0xc4(r31)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801e41b0
branch_0x801e419c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1ec(r12)
    mtlr    r12
    blrl
branch_0x801e41b0:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl makeObjAppeared__11TMapObjBallFv
makeObjAppeared__11TMapObjBallFv: # 0x801e41c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      makeObjAppeared__11TMapObjBaseFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1ec(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    lfs     f0, 0x10(r31)
    stfs    f0, 0xc(r4)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xbc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r4)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x2c(r4)
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x394
    bne-    branch_0x801e4234
    li      r0, 0x1
    b       branch_0x801e4238

branch_0x801e4234:
    li      r0, 0x0
branch_0x801e4238:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e4260
    lfs     f2, 0x14(r4)
    lfs     f0, -0x2428(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x801e4260
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x1c(r4)
    fnmsubs  f0, f1, f2, f0
    stfs    f0, 0x1c(r4)
branch_0x801e4260:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x392
    bne-    branch_0x801e4278
    li      r0, 0x1
    b       branch_0x801e427c

branch_0x801e4278:
    li      r0, 0x0
branch_0x801e427c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e42a0
    lfs     f1, -0x23ec(r2)
    lfs     f0, 0x14(r4)
    lfs     f2, -0x23cc(r2)
    fsubs   f1, f1, f0
    lfs     f0, 0x1c(r4)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x1c(r4)
branch_0x801e42a0:
    li      r0, 0x0
    stb     r0, 0xe8(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl makeObjDefault__11TMapObjBallFv
makeObjDefault__11TMapObjBallFv: # 0x801e42bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      makeObjDefault__11TMapObjBaseFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, 0x10(r31)
    stfs    f0, 0xc(r3)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xbc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x2c(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl checkWallCollision__11TMapObjBallFPQ29JGeometry8TVec3_f_
checkWallCollision__11TMapObjBallFPQ29JGeometry8TVec3_f_: # 0x801e4314
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x4
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r4
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    lfs     f0, 0x0(r4)
    addi    r4, sp, 0x34
    stfs    f0, 0x28(sp)
    lfs     f0, 0x4(r31)
    lfs     f1, 0xbc(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x2c(sp)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x30(sp)
    lwz     r5, 0x130(r3)
    lwz     r3, 0x28(sp)
    lwz     r5, 0x20(r5)
    lwz     r6, 0x2c(sp)
    lwz     r7, 0x8(r5)
    lwz     r5, 0x30(sp)
    stw     r3, 0x34(sp)
    lwz     r3, R13Off_m0x6328(r13)
    stw     r6, 0x38(sp)
    stw     r5, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stw     r0, 0x44(sp)
    stw     r7, 0x4c(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x801e43d0
    lwz     r0, 0x50(sp)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    stw     r0, 0x138(r30)
    addi    r5, sp, 0x34
    lfs     f0, 0x28(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x30(sp)
    stfs    f0, 0x8(r31)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1d0(r12)
    mtlr    r12
    blrl
    b       branch_0x801e43d8

branch_0x801e43d0:
    li      r0, 0x0
    stw     r0, 0x138(r30)
branch_0x801e43d8:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl calcCurrentMtx__11TMapObjBallFv
calcCurrentMtx__11TMapObjBallFv: # 0x801e43f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c0(sp)
    stfd    f31, 0x1b8(sp)
    stfd    f30, 0x1b0(sp)
    stw     r31, 0x1ac(sp)
    mr      r31, r3
    stw     r30, 0x1a8(sp)
    lfs     f2, -0x2428(r2)
    stfs    f2, 0x1a4(sp)
    stfs    f2, 0x194(sp)
    stfs    f2, 0x184(sp)
    stfs    f2, 0x190(sp)
    stfs    f2, 0x180(sp)
    stfs    f2, 0x19c(sp)
    stfs    f2, 0x17c(sp)
    stfs    f2, 0x198(sp)
    stfs    f2, 0x188(sp)
    lfs     f1, -0x23ec(r2)
    stfs    f1, 0x1a0(sp)
    stfs    f1, 0x18c(sp)
    stfs    f1, 0x178(sp)
    lwz     r3, 0xac(r3)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x120(sp)
    stw     r0, 0x124(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x128(sp)
    lwz     r3, 0x130(r31)
    lfs     f0, 0x120(sp)
    lwz     r3, 0x20(r3)
    fabs    f3, f0
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f3, f0
    bge-    branch_0x801e44d0
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x11c(sp)
    lwz     r3, 0x130(r31)
    lfs     f0, 0x11c(sp)
    lwz     r3, 0x20(r3)
    fabs    f3, f0
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f3, f0
    bge-    branch_0x801e44d0
    lwz     r3, 0xc4(r31)
    lfs     f0, 0x38(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801e44d0
    stfs    f2, 0xac(r31)
    stfs    f2, 0xb4(r31)
branch_0x801e44d0:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x108(sp)
    stw     r0, 0x10c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x110(sp)
    lwz     r3, 0x130(r31)
    lfs     f0, 0x108(sp)
    lwz     r3, 0x20(r3)
    fabs    f1, f0
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x801e4540
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0xfc(sp)
    stw     r0, 0x100(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x104(sp)
    lwz     r3, 0x130(r31)
    lfs     f0, 0x104(sp)
    lwz     r3, 0x20(r3)
    fabs    f1, f0
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e470c
branch_0x801e4540:
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    stw     r4, 0xe4(sp)
    addi    r4, sp, 0x16c
    stw     r0, 0xe8(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xec(sp)
    lwz     r5, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r5, 0xf0(sp)
    stw     r0, 0xf4(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xf8(sp)
    lfs     f3, 0x10(r31)
    lfs     f1, 0xf0(sp)
    lfs     f2, 0x18(r31)
    lfs     f0, 0xec(sp)
    fadds   f1, f3, f1
    fadds   f2, f2, f0
    bl      getVerticalVecToTargetXZ__11TMapObjBaseCFffPQ29JGeometry8TVec3_f_
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x2428(r2)
    stw     r3, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x14(sp)
    lwz     r4, 0xc(sp)
    lwz     r3, 0x10(sp)
    stw     r4, 0xcc(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0xd0(sp)
    stw     r4, 0xd8(sp)
    stw     r0, 0xd4(sp)
    stw     r3, 0xdc(sp)
    lfs     f1, 0xd4(sp)
    stw     r0, 0xe0(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0xd8(sp)
    fmadds  f4, f2, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801e45f4
    b       branch_0x801e4618

branch_0x801e45f4:
    frsqrte f3, f4
    lfs     f2, -0x2404(r2)
    lfs     f0, -0x23e0(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801e4618:
    lfs     f0, 0xbc(r31)
    addi    r3, sp, 0x16c
    lfs     f1, -0x23c4(r2)
    mr      r4, r3
    fdivs   f0, f4, f0
    lfs     f31, -0x23ec(r2)
    fmuls   f30, f1, f0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x23f8(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801e465c
    lfs     f0, -0x2428(r2)
    stfs    f0, 0xa4(sp)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0x9c(sp)
    b       branch_0x801e4670

branch_0x801e465c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x9c
    addi    r4, sp, 0x16c
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801e4670:
    fmr     f1, f30
    bl      sinf
    fmr     f31, f1
    fmr     f1, f30
    bl      cosf
    lfs     f0, -0x23ec(r2)
    lfs     f7, 0x9c(sp)
    fsubs   f6, f0, f1
    lfs     f4, 0xa0(sp)
    lfs     f5, 0xa4(sp)
    fmuls   f0, f7, f7
    fmuls   f2, f4, f4
    fmuls   f3, f6, f7
    fmadds  f0, f6, f0, f1
    fmuls   f8, f31, f5
    fmuls   f9, f4, f3
    fmuls   f11, f5, f3
    stfs    f0, 0x178(sp)
    fmuls   f10, f31, f4
    fsubs   f3, f9, f8
    fmuls   f0, f6, f4
    fadds   f4, f11, f10
    stfs    f3, 0x17c(sp)
    fadds   f3, f9, f8
    fmuls   f8, f5, f0
    fmuls   f7, f31, f7
    stfs    f4, 0x180(sp)
    fmadds  f2, f6, f2, f1
    fmuls   f0, f5, f5
    stfs    f3, 0x188(sp)
    fsubs   f4, f8, f7
    stfs    f2, 0x18c(sp)
    fsubs   f3, f11, f10
    fadds   f2, f8, f7
    stfs    f4, 0x190(sp)
    fmadds  f0, f6, f0, f1
    stfs    f3, 0x198(sp)
    stfs    f2, 0x19c(sp)
    stfs    f0, 0x1a0(sp)
branch_0x801e470c:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r30, sp, 0x12c
    addi    r3, r30, 0x0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lfs     f0, -0x2428(r2)
    addi    r3, sp, 0x178
    addi    r4, r30, 0x0
    stfs    f0, 0x138(sp)
    mr      r5, r3
    stfs    f0, 0x148(sp)
    stfs    f0, 0x158(sp)
    bl      PSMTXConcat
    lfs     f0, 0x10(r31)
    stfs    f0, 0x184(sp)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xbc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x194(sp)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x1a4(sp)
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x394
    bne-    branch_0x801e477c
    li      r0, 0x1
    b       branch_0x801e4780

branch_0x801e477c:
    li      r0, 0x0
branch_0x801e4780:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e47a8
    lfs     f2, 0x18c(sp)
    lfs     f0, -0x2428(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x801e47a8
    lfs     f1, -0x23e8(r2)
    lfs     f0, 0x194(sp)
    fnmsubs  f0, f1, f2, f0
    stfs    f0, 0x194(sp)
branch_0x801e47a8:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x392
    bne-    branch_0x801e47c0
    li      r0, 0x1
    b       branch_0x801e47c4

branch_0x801e47c0:
    li      r0, 0x0
branch_0x801e47c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e47e8
    lfs     f1, -0x23ec(r2)
    lfs     f0, 0x18c(sp)
    lfs     f2, -0x23cc(r2)
    fsubs   f1, f1, f0
    lfs     f0, 0x194(sp)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x194(sp)
branch_0x801e47e8:
    addi    r30, sp, 0x178
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    mr      r3, r30
    bl      PSMTXCopy
    lwz     r0, 0x1c4(sp)
    lfd     f31, 0x1b8(sp)
    lfd     f30, 0x1b0(sp)
    mtlr    r0
    lwz     r31, 0x1ac(sp)
    lwz     r30, 0x1a8(sp)
    addi    sp, sp, 0x1c0
    blr


.globl touchActor__11TMapObjBallFP9THitActor
touchActor__11TMapObjBallFP9THitActor: # 0x801e4820
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r0, 0x194(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801e495c
    lhz     r0, 0xfc(r30)
    cmplwi  r0, 0x6
    bne-    branch_0x801e485c
    li      r0, 0x1
    b       branch_0x801e4860

branch_0x801e485c:
    li      r0, 0x0
branch_0x801e4860:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e495c
    mr      r3, r31
    bl      isHideObj__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    bne-    branch_0x801e495c
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x83
    bne-    branch_0x801e4890
    li      r0, 0x1
    b       branch_0x801e4894

branch_0x801e4890:
    li      r0, 0x0
branch_0x801e4894:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e495c
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xca
    bne-    branch_0x801e48b0
    li      r0, 0x1
    b       branch_0x801e48b4

branch_0x801e48b0:
    li      r0, 0x0
branch_0x801e48b4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e495c
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xcc
    bne-    branch_0x801e48d0
    li      r0, 0x1
    b       branch_0x801e48d4

branch_0x801e48d0:
    li      r0, 0x0
branch_0x801e48d4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e48e0
    b       branch_0x801e495c

branch_0x801e48e0:
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801e48f4
    li      r0, 0x1
    b       branch_0x801e48f8

branch_0x801e48f4:
    li      r0, 0x0
branch_0x801e48f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e4950
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e4918
    li      r0, 0x1
    b       branch_0x801e491c

branch_0x801e4918:
    li      r0, 0x0
branch_0x801e491c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e4950
    lwz     r3, R13Off_m0x60a0(r13)
    lfs     f1, -0x2428(r2)
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801e4950
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1e8(r12)
    mtlr    r12
    blrl
    b       branch_0x801e495c

branch_0x801e4950:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      boundByActor__11TMapObjBallFP9THitActor
branch_0x801e495c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl boundByActor__11TMapObjBallFP9THitActor
boundByActor__11TMapObjBallFP9THitActor: # 0x801e4974
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stw     r31, 0x11c(sp)
    mr      r31, r4
    stw     r30, 0x118(sp)
    mr      r30, r3
    lfs     f1, 0x10(r3)
    lfs     f2, 0x10(r4)
    lfs     f4, 0x18(r4)
    fsubs   f1, f2, f1
    lfs     f3, 0x18(r3)
    lfs     f0, -0x2428(r2)
    fsubs   f2, f4, f3
    stfs    f1, 0x10c(sp)
    stfs    f0, 0x110(sp)
    stfs    f2, 0x114(sp)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e49d0
    li      r0, 0x1
    b       branch_0x801e49d4

branch_0x801e49d0:
    li      r0, 0x0
branch_0x801e49d4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e49ec
    lfs     f1, 0x50(r30)
    lfs     f0, 0x58(r31)
    fadds   f0, f1, f0
    b       branch_0x801e49f0

branch_0x801e49ec:
    lfs     f0, 0x58(r30)
branch_0x801e49f0:
    lfs     f4, 0x10c(sp)
    fmuls   f2, f0, f0
    lfs     f3, 0x114(sp)
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    blt-    branch_0x801e4eb0
    lfs     f0, -0x2428(r2)
    fcmpu   cr0, f0, f4
    beq-    branch_0x801e4a30
    fcmpu   cr0, f0, f3
    beq-    branch_0x801e4a30
    addi    r3, sp, 0x10c
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
branch_0x801e4a30:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801e4a48
    li      r0, 0x1
    b       branch_0x801e4a4c

branch_0x801e4a48:
    li      r0, 0x0
branch_0x801e4a4c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e4b80
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 6, 6
    bne-    branch_0x801e4d40
    lwz     r4, 0x130(r30)
    lwz     r3, R13Off_m0x60a4(r13)
    lwz     r4, 0x20(r4)
    lfs     f0, 0x0(r3)
    lwz     r3, 0x4(r4)
    fabs    f0, f0
    lfs     f1, 0xc(r3)
    fcmpo   cr0, f0, f1
    bgt-    branch_0x801e4a98
    lwz     r3, R13Off_m0x609c(r13)
    lfs     f0, 0x0(r3)
    fabs    f0, f0
    fcmpo   cr0, f0, f1
    ble-    branch_0x801e4b00
branch_0x801e4a98:
    lfs     f1, 0xb0(r30)
    lfs     f0, 0x150(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r30)
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e4ac0
    li      r0, 0x1
    b       branch_0x801e4ac4

branch_0x801e4ac0:
    li      r0, 0x0
branch_0x801e4ac4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e4b10
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x194f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e4b10
    addi    r4, r30, 0x10
    li      r3, 0x194f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801e4b10

branch_0x801e4b00:
    lfs     f1, 0xb0(r30)
    lfs     f0, 0x154(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r30)
branch_0x801e4b10:
    lfs     f1, 0x10c(sp)
    mr      r3, r31
    lfs     f0, 0x14c(r30)
    mr      r4, r30
    lwz     r5, R13Off_m0x60a4(r13)
    fmuls   f0, f1, f0
    lfs     f2, 0x148(r30)
    lfs     f1, 0x0(r5)
    li      r5, 0xe
    lfs     f3, 0xac(r30)
    fmsubs  f0, f2, f1, f0
    fadds   f0, f3, f0
    stfs    f0, 0xac(r30)
    lwz     r6, R13Off_m0x609c(r13)
    lfs     f1, 0x114(sp)
    lfs     f0, 0x14c(r30)
    lfs     f2, 0x148(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0x0(r6)
    lfs     f3, 0xb4(r30)
    fmsubs  f0, f2, f1, f0
    fadds   f0, f3, f0
    stfs    f0, 0xb4(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x801e4d40

branch_0x801e4b80:
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f3, 0x10c(sp)
    stw     r3, 0x1c(sp)
    lfs     f0, -0x2428(r2)
    stw     r0, 0x20(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x24(sp)
    lwz     r4, 0x1c(sp)
    lwz     r3, 0x20(sp)
    stw     r4, 0xfc(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x100(sp)
    stw     r0, 0x104(sp)
    lfs     f2, 0x100(sp)
    lfs     f1, 0x110(sp)
    lfs     f4, 0xfc(sp)
    fmuls   f1, f2, f1
    lfs     f5, 0x104(sp)
    lfs     f2, 0x114(sp)
    fmadds  f1, f4, f3, f1
    fmadds  f4, f5, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 1, 2
    bne-    branch_0x801e4d08
    stw     r4, 0xf0(sp)
    stw     r3, 0xf4(sp)
    stw     r0, 0xf8(sp)
    lwz     r3, 0x130(r30)
    lfs     f0, 0xf0(sp)
    lwz     r3, 0x20(r3)
    fabs    f1, f0
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e4d08
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    stw     r3, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0xec(sp)
    lwz     r3, 0x130(r30)
    lfs     f0, 0xec(sp)
    lwz     r3, 0x20(r3)
    fabs    f1, f0
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e4d08
    lfs     f0, 0x10c(sp)
    mr      r3, r31
    lfs     f3, -0x23ec(r2)
    mr      r4, r30
    lfs     f2, 0x16c(r30)
    fmuls   f1, f0, f4
    lfs     f0, 0xac(r30)
    fadds   f2, f3, f2
    li      r5, 0x10
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xac(r30)
    lfs     f1, 0xb0(r30)
    lfs     f0, 0x168(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r30)
    lfs     f0, 0x16c(r30)
    lfs     f1, 0x114(sp)
    fadds   f2, f3, f0
    lfs     f0, 0xb4(r30)
    fmuls   f1, f1, f4
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xb4(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e4cc8
    li      r0, 0x1
    b       branch_0x801e4ccc

branch_0x801e4cc8:
    li      r0, 0x0
branch_0x801e4ccc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e4d40
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3862
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e4d40
    addi    r4, r30, 0x10
    li      r3, 0x3862
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801e4d40

branch_0x801e4d08:
    lfs     f2, 0x10c(sp)
    lfs     f1, 0x164(r30)
    lfs     f0, 0xac(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xac(r30)
    lfs     f1, 0xb0(r30)
    lfs     f0, 0x168(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r30)
    lfs     f2, 0x114(sp)
    lfs     f1, 0x164(r30)
    lfs     f0, 0xb4(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xb4(r30)
branch_0x801e4d40:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801e4d58
    li      r0, 0x1
    b       branch_0x801e4d5c

branch_0x801e4d58:
    li      r0, 0x0
branch_0x801e4d5c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e4e90
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 6, 6
    bne-    branch_0x801e4e90
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f0, -0x2428(r2)
    stw     r3, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x18(sp)
    lwz     r5, 0x10(sp)
    lwz     r4, 0x14(sp)
    stw     r5, 0xd8(sp)
    lwz     r0, 0x18(sp)
    stw     r4, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lfs     f1, 0xdc(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801e4e90
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f3, -0x2374(r2)
    lfs     f2, 0x4(r3)
    lfs     f1, 0x14(r30)
    lfs     f0, 0xbc(r30)
    fadds   f2, f3, f2
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x801e4e90
    stw     r5, 0xcc(sp)
    stw     r4, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lfs     f0, 0xd0(sp)
    lfs     f1, 0x160(r30)
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
    lwz     r3, R13Off_m0x60a4(r13)
    lfs     f2, 0x158(r30)
    lfs     f1, 0x0(r3)
    lfs     f0, 0xac(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xac(r30)
    lwz     r3, R13Off_m0x60a0(r13)
    lfs     f2, 0x15c(r30)
    lfs     f1, 0x0(r3)
    lfs     f0, 0xb0(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(r30)
    lwz     r3, R13Off_m0x609c(r13)
    lfs     f2, 0x158(r30)
    lfs     f1, 0x0(r3)
    lfs     f0, 0xb4(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb4(r30)
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e4e54
    li      r0, 0x1
    b       branch_0x801e4e58

branch_0x801e4e54:
    li      r0, 0x0
branch_0x801e4e58:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e4e90
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x194f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e4e90
    addi    r4, r30, 0x10
    li      r3, 0x194f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e4e90:
    li      r0, 0xa
    stw     r0, 0x194(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x801e4eb0:
    lwz     r0, 0x124(sp)
    lwz     r31, 0x11c(sp)
    lwz     r30, 0x118(sp)
    mtlr    r0
    addi    sp, sp, 0x120
    blr


.globl touchWater__11TMapObjBallFP9THitActor
touchWater__11TMapObjBallFP9THitActor: # 0x801e4ec8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lhz     r3, 0xfc(r3)
    cmplwi  r3, 0x6
    bne-    branch_0x801e4ef0
    li      r0, 0x1
    b       branch_0x801e4ef4

branch_0x801e4ef0:
    li      r0, 0x0
branch_0x801e4ef4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e4f18
    cmplwi  r3, 0x2
    bne-    branch_0x801e4f0c
    li      r0, 0x1
    b       branch_0x801e4f10

branch_0x801e4f0c:
    li      r0, 0x0
branch_0x801e4f10:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e4f20
branch_0x801e4f18:
    li      r3, 0x1
    b       branch_0x801e4fb4

branch_0x801e4f20:
    lwz     r5, 0xac(r31)
    mr      r3, r4
    lwz     r0, 0xb0(r31)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x1c(sp)
    lfs     f1, 0x14(sp)
    lfs     f0, 0x18(sp)
    stfs    f1, 0x20(sp)
    stfs    f0, 0x24(sp)
    lfs     f0, 0x1c(sp)
    stfs    f0, 0x28(sp)
    bl      getWaterSpeed__11TMapObjBaseFP9THitActor
    lfs     f1, 0x0(r3)
    lfs     f2, 0x17c(r31)
    lfs     f0, 0x20(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x24(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x24(sp)
    lfs     f1, 0x8(r3)
    li      r3, 0x1
    lfs     f0, 0x28(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x28(sp)
    lwz     r4, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x28(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x801e4fb4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl kicked__11TMapObjBallFv
kicked__11TMapObjBallFv: # 0x801e4fc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    stw     r30, 0xb0(sp)
    lwz     r3, 0xac(r3)
    lwz     r0, 0xb0(r31)
    lfs     f1, -0x2428(r2)
    stw     r3, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x14(sp)
    lwz     r3, 0xc(sp)
    lwz     r4, 0x10(sp)
    stw     r3, 0x88(sp)
    lwz     r0, 0x14(sp)
    stw     r4, 0x8c(sp)
    stw     r0, 0x90(sp)
    lfs     f0, 0x8c(sp)
    fcmpo   cr0, f0, f1
    bgt-    branch_0x801e51cc
    stw     r3, 0x7c(sp)
    stw     r4, 0x80(sp)
    stw     r0, 0x84(sp)
    lfs     f0, 0x80(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801e5044
    lfs     f0, 0x178(r31)
    stfs    f0, 0xb0(r31)
    b       branch_0x801e5070

branch_0x801e5044:
    stw     r3, 0x70(sp)
    lwz     r3, R13Off_m0x60a0(r13)
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    lfs     f1, 0x160(r31)
    lfs     f0, 0x74(sp)
    lfs     f2, 0x174(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x0(r3)
    fmsubs  f0, f2, f1, f0
    stfs    f0, 0xb0(r31)
branch_0x801e5070:
    lwz     r3, R13Off_m0x60a4(r13)
    lfs     f2, 0x170(r31)
    lfs     f1, 0x0(r3)
    lfs     f0, 0xac(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xac(r31)
    lwz     r3, R13Off_m0x609c(r13)
    lfs     f2, 0x170(r31)
    lfs     f1, 0x0(r3)
    lfs     f0, 0xb4(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb4(r31)
    lwz     r3, 0x130(r31)
    lfs     f0, 0xac(r31)
    lwz     r3, 0x20(r3)
    fabs    f0, f0
    lwz     r3, 0x4(r3)
    lfs     f1, 0xc(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801e513c
    lfs     f0, 0xb4(r31)
    fabs    f0, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x801e513c
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2400(r2)
    stw     r0, 0xac(sp)
    lis     r30, 0x4330
    lfs     f2, -0x240c(r2)
    stw     r30, 0xa8(sp)
    lfs     f1, -0x23c4(r2)
    lfd     f3, 0xa8(sp)
    lfs     f0, -0x23ec(r2)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmsubs  f0, f1, f2, f0
    stfs    f0, 0xac(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2400(r2)
    stw     r0, 0xa4(sp)
    lfs     f2, -0x240c(r2)
    stw     r30, 0xa0(sp)
    lfs     f1, -0x23c4(r2)
    lfd     f3, 0xa0(sp)
    lfs     f0, -0x23ec(r2)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmsubs  f0, f1, f2, f0
    stfs    f0, 0xb4(r31)
branch_0x801e513c:
    li      r0, 0xa
    stw     r0, 0x194(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    bl      SMS_GetMarioHitActor__Fv
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e5190
    li      r0, 0x1
    b       branch_0x801e5194

branch_0x801e5190:
    li      r0, 0x0
branch_0x801e5194:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e51cc
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x194f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e51cc
    addi    r4, r31, 0x10
    li      r3, 0x194f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e51cc:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    addi    sp, sp, 0xb8
    blr


.globl hold__11TMapObjBallFP10TTakeActor
hold__11TMapObjBallFP10TTakeActor: # 0x801e51e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r3, 0xac(r3)
    lwz     r0, 0xb0(r30)
    stw     r3, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x24(sp)
    lfs     f2, 0x28(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x23cc(r2)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x801e5264
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      hold__14TMapObjGeneralFP10TTakeActor
    lfs     f0, -0x2428(r2)
    stfs    f0, 0xb4(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xac(r30)
branch_0x801e5264:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl put__11TMapObjBallFv
put__11TMapObjBallFv: # 0x801e527c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      put__14TMapObjGeneralFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1ec(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchGround__11TMapObjBallFPQ29JGeometry8TVec3_f_
touchGround__11TMapObjBallFPQ29JGeometry8TVec3_f_: # 0x801e52bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r4
    stw     r30, 0x70(sp)
    mr      r30, r3
    lwz     r3, 0xac(r3)
    lwz     r0, 0xb0(r30)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x68(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x64(sp)
    lfs     f2, 0x68(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fabs    f1, f1
    lfs     f0, -0x23f0(r2)
    fcmpo   cr0, f1, f0
    fmr     f31, f1
    ble-    branch_0x801e53e0
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e5344
    li      r0, 0x1
    b       branch_0x801e5348

branch_0x801e5344:
    li      r0, 0x0
branch_0x801e5348:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e53e0
    lfs     f1, 0x28(r30)
    lfs     f0, -0x23d4(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801e53a4
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x308a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e53e0
    fmr     f1, f31
    addi    r4, r30, 0x10
    li      r3, 0x308a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801e53e0

branch_0x801e53a4:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x308b
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e53e0
    fmr     f1, f31
    addi    r4, r30, 0x10
    li      r3, 0x308b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801e53e0:
    lwz     r3, 0xc4(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x801e5410
    cmplwi  r3, 0x101
    beq-    branch_0x801e5410
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x801e5410
    cmplwi  r3, 0x4104
    bne-    branch_0x801e5418
branch_0x801e5410:
    li      r0, 0x1
    b       branch_0x801e541c

branch_0x801e5418:
    li      r0, 0x0
branch_0x801e541c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e5454
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1e0(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x10(r30)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x8(r31)
    b       branch_0x801e5574

branch_0x801e5454:
    lwz     r3, R13Off_m0x62f0(r13)
    lfs     f1, 0x0(r31)
    lfs     f2, 0x4(r31)
    lfs     f3, 0x8(r31)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    beq-    branch_0x801e54a0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1e4(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x10(r30)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x8(r31)
    b       branch_0x801e5574

branch_0x801e54a0:
    lfs     f0, 0x188(r30)
    lfs     f1, 0xb0(r30)
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e54d4
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r30)
    lfs     f0, -0x2428(r2)
    stfs    f0, 0xb0(r30)
    lfs     f0, 0xc8(r30)
    stfs    f0, 0x4(r31)
    b       branch_0x801e54ec

branch_0x801e54d4:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x1dc(r12)
    mtlr    r12
    blrl
branch_0x801e54ec:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801e5500
    li      r0, 0x1
    b       branch_0x801e5504

branch_0x801e5500:
    li      r0, 0x0
branch_0x801e5504:
    cmpwi   r0, 0x0
    bne-    branch_0x801e553c
    lwz     r3, 0xc4(r30)
    lfs     f2, 0x180(r30)
    lfs     f1, 0x34(r3)
    lfs     f0, 0xac(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xac(r30)
    lwz     r3, 0xc4(r30)
    lfs     f2, 0x180(r30)
    lfs     f1, 0x3c(r3)
    lfs     f0, 0xb4(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb4(r30)
branch_0x801e553c:
    lwz     r3, 0x130(r30)
    lfs     f1, 0xac(r30)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x4(r3)
    lfs     f0, 0x10(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xac(r30)
    lwz     r3, 0x130(r30)
    lfs     f1, 0xb4(r30)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x4(r3)
    lfs     f0, 0x10(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r30)
branch_0x801e5574:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lwz     r31, 0x74(sp)
    mtlr    r0
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x80
    blr


.globl rebound__11TMapObjBallFPQ29JGeometry8TVec3_f_
rebound__11TMapObjBallFPQ29JGeometry8TVec3_f_: # 0x801e5590
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    mr      r30, r4
    lwz     r5, 0x130(r3)
    lwz     r4, 0xc4(r3)
    lwz     r6, 0x20(r5)
    addi    r5, r31, 0xac
    lwz     r6, 0x4(r6)
    lfs     f1, 0x4(r6)
    bl      calcReflectingVelocity__11TMapObjBaseCFPC12TBGCheckDatafPQ29JGeometry8TVec3_f_
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x4(r30)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e55f8
    li      r0, 0x1
    b       branch_0x801e55fc

branch_0x801e55f8:
    li      r0, 0x0
branch_0x801e55fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e56b0
    lfs     f1, 0x28(r31)
    lfs     f0, -0x23d4(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801e5664
    lwz     r5, 0xc4(r31)
    li      r4, 0x3889
    lwz     r3, R13Off_m0x6044(r13)
    lfs     f0, 0x38(r5)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e56fc
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x3889
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801e56fc

branch_0x801e5664:
    lwz     r5, 0xc4(r31)
    li      r4, 0x388c
    lwz     r3, R13Off_m0x6044(r13)
    lfs     f0, 0x38(r5)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e56fc
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x388c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801e56fc

branch_0x801e56b0:
    lwz     r4, 0x130(r31)
    lwz     r3, R13Off_m0x6044(r13)
    lwz     r4, 0x1c(r4)
    lwz     r4, 0x4(r4)
    lwz     r30, 0x10(r4)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e56fc
    lfs     f1, -0x2428(r2)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    addi    r5, r31, 0xac
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801e56fc:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl touchWaterSurface__11TMapObjBallFv
touchWaterSurface__11TMapObjBallFv: # 0x801e5718
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchPollution__11TMapObjBallFv
touchPollution__11TMapObjBallFv: # 0x801e5744
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchWall__11TMapObjBallFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord
touchWall__11TMapObjBallFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord: # 0x801e5770
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stfd    f30, 0x110(sp)
    stfd    f29, 0x108(sp)
    stfd    f28, 0x100(sp)
    stmw    r26, 0xe8(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801e57b0
    li      r0, 0x1
    b       branch_0x801e57b4

branch_0x801e57b0:
    li      r0, 0x0
branch_0x801e57b4:
    cmpwi   r0, 0x0
    bne-    branch_0x801e582c
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e57d4
    li      r0, 0x1
    b       branch_0x801e57d8

branch_0x801e57d4:
    li      r0, 0x0
branch_0x801e57d8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801e582c
    lwz     r3, 0xac(r28)
    lwz     r0, 0xb0(r28)
    stw     r3, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0xb4(r28)
    stw     r0, 0xd8(sp)
    lfs     f1, 0xd0(sp)
    lfs     f0, 0xd4(sp)
    lfs     f2, 0xd8(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x184(r28)
    lfs     f0, 0xb0(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(r28)
branch_0x801e582c:
    lfs     f31, -0x23ec(r2)
    li      r31, 0x0
    lfs     f29, -0x23d4(r2)
    li      r27, 0x0
    lfs     f30, -0x2428(r2)
    b       branch_0x801e5aa4

branch_0x801e5844:
    addi    r0, r27, 0x1c
    lwz     r3, 0xac(r28)
    lwzx    r5, r30, r0
    lwz     r0, 0xb0(r28)
    stw     r3, 0xc4(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0xb4(r28)
    stw     r0, 0xcc(sp)
    lfs     f0, 0xc8(sp)
    lfs     f2, 0x38(r5)
    lfs     f1, 0xc4(sp)
    fmuls   f0, f0, f2
    lfs     f4, 0x34(r5)
    lfs     f3, 0xcc(sp)
    lfs     f6, 0x3c(r5)
    fmadds  f0, f1, f4, f0
    fmadds  f7, f3, f6, f0
    fcmpo   cr0, f7, f30
    bge-    branch_0x801e5a9c
    lfs     f0, 0x4(r29)
    lfs     f1, 0x0(r29)
    fmuls   f0, f0, f2
    lfs     f5, 0x8(r29)
    lfs     f3, 0x40(r5)
    lfs     f2, 0xbc(r28)
    fmadds  f4, f1, f4, f0
    lfs     f1, 0x34(r5)
    lfs     f0, 0x0(r29)
    fmadds  f4, f5, f6, f4
    fadds   f3, f4, f3
    fsubs   f2, f2, f3
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x0(r29)
    lfs     f0, 0xbc(r28)
    lfs     f1, 0x3c(r5)
    fsubs   f2, f0, f3
    lfs     f0, 0x8(r29)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x8(r29)
    lwz     r3, 0x130(r28)
    lfs     f1, 0x34(r5)
    lwz     r3, 0x20(r3)
    lfs     f0, 0xac(r28)
    lwz     r3, 0x4(r3)
    lfs     f2, 0x8(r3)
    fadds   f2, f31, f2
    fneg    f2, f2
    fmuls   f2, f7, f2
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xac(r28)
    lfs     f1, 0x3c(r5)
    lfs     f0, 0xb4(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb4(r28)
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801e5934
    li      r0, 0x1
    b       branch_0x801e5938

branch_0x801e5934:
    li      r0, 0x0
branch_0x801e5938:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e5a50
    lfs     f0, 0x28(r28)
    fcmpo   cr0, f0, f29
    cror    2, 1, 2
    bne-    branch_0x801e59d0
    lwz     r3, 0xac(r28)
    lwz     r0, 0xb0(r28)
    stw     r3, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0xb4(r28)
    stw     r0, 0xc0(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0xbc(sp)
    lfs     f2, 0xc0(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fabs    f28, f1
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x308a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e5a9c
    fmr     f1, f28
    addi    r4, r28, 0x10
    li      r3, 0x308a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801e5a9c

branch_0x801e59d0:
    lwz     r3, 0xac(r28)
    lwz     r0, 0xb0(r28)
    stw     r3, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0xb4(r28)
    stw     r0, 0xb4(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0xb0(sp)
    lfs     f2, 0xb4(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fabs    f28, f1
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x308b
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e5a9c
    fmr     f1, f28
    addi    r4, r28, 0x10
    li      r3, 0x308b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801e5a9c

branch_0x801e5a50:
    lwz     r4, 0x130(r28)
    lwz     r3, R13Off_m0x6044(r13)
    lwz     r4, 0x1c(r4)
    lwz     r4, 0x4(r4)
    lwz     r26, 0x10(r4)
    mr      r4, r26
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e5a9c
    lfs     f1, -0x2428(r2)
    addi    r3, r26, 0x0
    addi    r4, r28, 0x10
    addi    r5, r28, 0xac
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801e5a9c:
    addi    r31, r31, 0x1
    addi    r27, r27, 0x4
branch_0x801e5aa4:
    lwz     r0, 0x14(r30)
    cmpw    r31, r0
    blt+    branch_0x801e5844
    lmw     r26, 0xe8(sp)
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lfd     f30, 0x110(sp)
    mtlr    r0
    lfd     f29, 0x108(sp)
    lfd     f28, 0x100(sp)
    addi    sp, sp, 0x120
    blr


.globl touchRoof__11TMapObjBallFPQ29JGeometry8TVec3_f_
touchRoof__11TMapObjBallFPQ29JGeometry8TVec3_f_: # 0x801e5ad4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x4(r4)
    lfs     f1, 0x140(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801e5af4
    stfs    f1, 0x4(r4)
branch_0x801e5af4:
    lwz     r6, 0x130(r3)
    addi    r5, r3, 0xac
    lwz     r4, 0x13c(r3)
    lwz     r6, 0x20(r6)
    lwz     r6, 0x4(r6)
    lfs     f1, 0x4(r6)
    bl      calcReflectingVelocity__11TMapObjBaseCFPC12TBGCheckDatafPQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__11TCoverFruitFv
__dt__11TCoverFruitFv: # 0x801e5b20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e5b88
    lis     r3, __vvt__11TCoverFruit@h
    addi    r3, r3, __vvt__11TCoverFruit@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e5b78
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e5b78:
    extsh.  r0, r31
    ble-    branch_0x801e5b88
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e5b88:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TRandomFruitFv
__dt__12TRandomFruitFv: # 0x801e5ba4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e5c24
    lis     r3, __vvt__12TRandomFruit@h
    addi    r3, r3, __vvt__12TRandomFruit@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e5c14
    lis     r3, __vvt__11TResetFruit@h
    addi    r3, r3, __vvt__11TResetFruit@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e5c14
    lis     r3, __vvt__11TMapObjBall@h
    addi    r3, r3, __vvt__11TMapObjBall@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__14TMapObjGeneralFv
branch_0x801e5c14:
    extsh.  r0, r31
    ble-    branch_0x801e5c24
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e5c24:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjBall_cpp
__sinit_MapObjBall_cpp: # 0x801e5c40
    mflr    r0
    lis     r3, unk_803f9fb0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f9fb0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5c88
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801e5c88:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5cb8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801e5cb8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5ce8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801e5ce8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5d18
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801e5d18:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5d48
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801e5d48:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5d78
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801e5d78:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5da8
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801e5da8:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5dd8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801e5dd8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5e08
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801e5e08:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5e38
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801e5e38:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5e68
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801e5e68:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5e98
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801e5e98:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5ec8
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801e5ec8:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5ef8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801e5ef8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801e5f28
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801e5f28:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801e5f3c
unk_801e5f3c: # 0x801e5f3c
    addi    r3, r3, -0x20
    b       __dt__11TMapObjBallFv


.globl unk_801e5f44
unk_801e5f44: # 0x801e5f44
    addi    r3, r3, -0x20
    b       __dt__11TResetFruitFv


.globl unk_801e5f4c
unk_801e5f4c: # 0x801e5f4c
    addi    r3, r3, -0x20
    b       __dt__12TRandomFruitFv


.globl unk_801e5f54
unk_801e5f54: # 0x801e5f54
    addi    r3, r3, -0x20
    b       __dt__11TCoverFruitFv


.globl unk_801e5f5c
unk_801e5f5c: # 0x801e5f5c
    addi    r3, r3, -0x20
    b       __dt__14TBigWatermelonFv

