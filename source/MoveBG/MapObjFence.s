
.globl __dt__10TRailFenceFv
__dt__10TRailFenceFv: # 0x801ecbc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ecc44
    lis     r3, __vvt__10TRailFence@h
    addi    r3, r3, __vvt__10TRailFence@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ecc34
    lis     r3, __vvt__6TFence@h
    addi    r3, r3, __vvt__6TFence@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ecc34
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801ecc34:
    extsh.  r0, r31
    ble-    branch_0x801ecc44
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ecc44:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__10TRailFenceFPCc
__ct__10TRailFenceFPCc: # 0x801ecc60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    mr      r3, r31
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__6TFence@h
    addi    r3, r3, __vvt__6TFence@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__10TRailFence@h
    stw     r0, 0x20(r31)
    li      r0, 0x0
    addi    r4, r3, __vvt__10TRailFence@l
    stb     r0, 0x138(r31)
    addi    r0, r4, 0x24
    li      r3, 0x18
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801eccc8
    mr      r3, r31
    bl      __ct__12TGraphTracerFv
branch_0x801eccc8:
    lwz     r3, 0x8(sp)
    stw     r31, 0x13c(r3)
    lfs     f0, -0x2220(r2)
    stfs    f0, 0x140(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__10TRailFenceFR20JSUMemoryInputStream
load__10TRailFenceFR20JSUMemoryInputStream: # 0x801eccec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x58(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x14
    li      r5, 0x40
    bl      readString__14JSUInputStreamFPcUs
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r4, sp, 0x14
    bl      getGraphByName__10TConductorFPCc
    mr.     r31, r3
    beq-    branch_0x801ecd64
    mr      r3, r31
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x801ecd64
    lwz     r5, 0x13c(r30)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    stw     r31, 0x0(r5)
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x13c(r30)
    bl      setTo__12TGraphTracerFi
branch_0x801ecd64:
    lfs     f0, -0x221c(r2)
    stfs    f0, 0x140(r30)
    lfs     f0, -0x2218(r2)
    stfs    f0, 0xcc(r30)
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl initMapCollisionData__10TRailFenceFv
initMapCollisionData__10TRailFenceFv: # 0x801ecd8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      initMapCollisionData__11TMapObjBaseFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl control__10TRailFenceFv
control__10TRailFenceFv: # 0x801ecdac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x801ecdfc
    bge-    branch_0x801ecde4
    cmpwi   r0, 0x1
    beq-    branch_0x801ecf54
    bge-    branch_0x801ecdf0
    b       branch_0x801ecf54

branch_0x801ecde4:
    cmpwi   r0, 0x5
    bge-    branch_0x801ecf54
    b       branch_0x801ece60

branch_0x801ecdf0:
    mr      r3, r31
    bl      goOnRail__10TRailFenceFv
    b       branch_0x801ecf54

branch_0x801ecdfc:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801ece10
    li      r0, 0x1
    b       branch_0x801ece14

branch_0x801ece10:
    li      r0, 0x0
branch_0x801ece14:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ecf54
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3821
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ece54
    addi    r4, r31, 0x10
    li      r3, 0x3821
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ece54:
    li      r0, 0x4
    sth     r0, 0xfc(r31)
    b       branch_0x801ecf54

branch_0x801ece60:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x38(sp)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x34(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, 0xcc(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x2214(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801eceac
    stfs    f0, 0xb0(r31)
branch_0x801eceac:
    lfs     f1, 0x110(r31)
    lfs     f0, -0x7848(r13)
    lfs     f2, 0x14(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x801ecf54
    lfs     f0, 0x10c(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    stfs    f0, 0x10(r31)
    lfs     f0, 0x110(r31)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x114(r31)
    stfs    f0, 0x18(r31)
    bl      setUpMapCollision__11TMapObjBaseFUs
    lwz     r3, 0x13c(r31)
    addi    r4, r31, 0x10
    li      r5, -0x1
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x13c(r31)
    bl      setTo__12TGraphTracerFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
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
    lwz     r0, 0xf8(r31)
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r31)
branch_0x801ecf54:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl goOnRail__10TRailFenceFv
goOnRail__10TRailFenceFv: # 0x801ecf68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    lwz     r3, 0x13c(r3)
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x801ed16c
    lwz     r5, 0x4(r3)
    addi    r3, sp, 0x5c
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0x5c(sp)
    lwz     r3, 0x60(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0x74(sp)
    stw     r0, 0x78(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x70(sp)
    lfs     f3, 0x78(sp)
    lfs     f0, 0x74(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x2210(r2)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ed0d8
    lwz     r30, 0x13c(r31)
    lwz     r3, 0x0(r30)
    lwz     r4, 0x4(r30)
    lwz     r3, 0x0(r3)
    slwi    r0, r4, 4
    lwzx    r3, r3, r0
    lha     r0, 0x6(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801ed090
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x801ed090
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3863
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ed070
    addi    r4, r31, 0x10
    li      r3, 0x3863
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ed070:
    lwz     r0, R13Off_m0x7844(r13)
    addi    r3, r31, 0x0
    li      r4, 0x1
    stw     r0, 0x104(r31)
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    b       branch_0x801ed16c

branch_0x801ed090:
    lwz     r5, 0x8(r30)
    li      r6, -0x1
    lwz     r3, 0x0(r30)
    bl      getShortestNextIndex__9TGraphWebCFiiUl
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      moveTo__12TGraphTracerFi
    lwz     r5, 0x13c(r31)
    addi    r3, sp, 0x50
    lwz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    bl      indexToPoint__9TGraphWebCFi
    lfs     f1, 0x50(sp)
    lfs     f0, 0x54(sp)
    stfs    f1, 0x70(sp)
    stfs    f0, 0x74(sp)
    lfs     f0, 0x58(sp)
    stfs    f0, 0x78(sp)
branch_0x801ed0d8:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3065
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ed108
    addi    r4, r31, 0x10
    li      r3, 0x3065
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ed108:
    addi    r3, sp, 0x70
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f1, 0x140(r31)
    lfs     f0, 0x70(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x70(sp)
    lfs     f0, 0x74(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x74(sp)
    lfs     f0, 0x78(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
    lfs     f1, 0x94(r31)
    lfs     f0, 0x70(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r31)
    lfs     f1, 0x98(r31)
    lfs     f0, 0x74(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0x78(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
branch_0x801ed16c:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl receiveMessage__10TRailFenceFP9THitActorUl
receiveMessage__10TRailFenceFP9THitActorUl: # 0x801ed184
    mflr    r0
    cmplwi  r5, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x801ed1f8
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3864
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ed1d0
    addi    r4, r31, 0x10
    li      r3, 0x3864
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ed1d0:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setUpMapCollision__11TMapObjBaseFUs
    lwz     r4, 0xf8(r31)
    li      r0, 0x2
    li      r3, 0x1
    rlwinm  r4, r4, 0, 24, 22
    stw     r4, 0xf8(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801ed1fc

branch_0x801ed1f8:
    li      r3, 0x0
branch_0x801ed1fc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl changeStatusToWait__12TFenceWaterHFv
changeStatusToWait__12TFenceWaterHFv: # 0x801ed210
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x8(sp)
    lfs     f0, -0x2220(r2)
    stfs    f0, 0x140(r3)
    stfs    f0, 0x13c(r3)
    sth     r0, 0xfc(r3)
    bl      setUpMapCollision__11TMapObjBaseFUs
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl changeStatusToGo__12TFenceWaterHFv
changeStatusToGo__12TFenceWaterHFv: # 0x801ed248
    mflr    r0
    li      r4, 0x3838
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lwz     r0, R13Off_m0x6044(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ed290
    addi    r4, r31, 0x10
    li      r3, 0x3838
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ed290:
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setUpMapCollision__11TMapObjBaseFUs
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl control__12TFenceWaterHFv
control__12TFenceWaterHFv: # 0x801ed2b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stfd    f30, 0xe8(sp)
    stfd    f29, 0xe0(sp)
    stfd    f28, 0xd8(sp)
    stfd    f27, 0xd0(sp)
    stfd    f26, 0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    mr      r30, r3
    bl      control__11TMapObjBaseFv
    mr      r3, r30
    bl      controlRotation__11TFenceWaterFv
    lfs     f2, 0x140(r30)
    lfs     f1, 0x120(r30)
    lfs     f0, -0x220c(r2)
    fadds   f2, f2, f1
    b       branch_0x801ed30c

branch_0x801ed308:
    fsubs   f2, f2, f0
branch_0x801ed30c:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801ed308
    lfs     f0, -0x220c(r2)
    lfs     f1, -0x2220(r2)
    b       branch_0x801ed328

branch_0x801ed324:
    fadds   f2, f2, f0
branch_0x801ed328:
    fcmpo   cr0, f2, f1
    blt+    branch_0x801ed324
    stfs    f2, 0x38(r30)
    stfs    f1, 0xbc(sp)
    stfs    f1, 0xac(sp)
    stfs    f1, 0x9c(sp)
    stfs    f1, 0xa8(sp)
    stfs    f1, 0x98(sp)
    stfs    f1, 0xb4(sp)
    stfs    f1, 0x94(sp)
    stfs    f1, 0xb0(sp)
    stfs    f1, 0xa0(sp)
    lfs     f0, -0x2208(r2)
    stfs    f0, 0xb8(sp)
    stfs    f0, 0xa4(sp)
    stfs    f0, 0x90(sp)
    lfs     f2, -0x2204(r2)
    lfs     f0, 0x34(r30)
    fmuls   f27, f2, f0
    bl      sinf
    fmr     f31, f1
    fmr     f1, f27
    bl      sinf
    fmr     f30, f1
    lfs     f1, -0x2220(r2)
    bl      sinf
    fmr     f29, f1
    lfs     f1, -0x2220(r2)
    bl      cosf
    fmr     f28, f1
    fmr     f1, f27
    bl      cosf
    fmr     f27, f1
    lfs     f1, -0x2220(r2)
    bl      cosf
    fmuls   f2, f27, f1
    fmuls   f0, f27, f29
    fmuls   f3, f31, f30
    stfs    f2, 0x90(sp)
    fmuls   f5, f28, f29
    fneg    f2, f30
    stfs    f0, 0xa0(sp)
    fmuls   f6, f28, f1
    stfs    f2, 0xb0(sp)
    fmsubs  f0, f3, f1, f5
    fmuls   f2, f31, f29
    fmadds  f4, f3, f29, f6
    stfs    f0, 0x94(sp)
    fmuls   f3, f31, f27
    fmuls   f0, f31, f1
    stfs    f4, 0xa4(sp)
    fmadds  f2, f6, f30, f2
    stfs    f3, 0xb4(sp)
    fmsubs  f1, f5, f30, f0
    fmuls   f0, f28, f27
    stfs    f2, 0x98(sp)
    stfs    f1, 0xa8(sp)
    stfs    f0, 0xb8(sp)
    lfs     f1, -0x2220(r2)
    stfs    f1, 0x8c(sp)
    stfs    f1, 0x7c(sp)
    stfs    f1, 0x6c(sp)
    stfs    f1, 0x78(sp)
    stfs    f1, 0x68(sp)
    stfs    f1, 0x84(sp)
    stfs    f1, 0x64(sp)
    stfs    f1, 0x80(sp)
    stfs    f1, 0x70(sp)
    lfs     f0, -0x2208(r2)
    stfs    f0, 0x88(sp)
    stfs    f0, 0x74(sp)
    stfs    f0, 0x60(sp)
    lfs     f2, -0x2204(r2)
    lfs     f0, 0x38(r30)
    fmuls   f26, f2, f0
    bl      sinf
    fmr     f27, f1
    lfs     f1, -0x2220(r2)
    bl      sinf
    fmr     f28, f1
    fmr     f1, f26
    bl      sinf
    fmr     f29, f1
    lfs     f1, -0x2220(r2)
    bl      cosf
    fmr     f30, f1
    lfs     f1, -0x2220(r2)
    bl      cosf
    fmr     f31, f1
    fmr     f1, f26
    bl      cosf
    fmuls   f2, f31, f1
    addi    r3, sp, 0x90
    fmuls   f0, f31, f29
    mr      r5, r3
    fmuls   f3, f27, f28
    stfs    f2, 0x60(sp)
    fmuls   f5, f30, f29
    fmuls   f6, f30, f1
    addi    r4, sp, 0x60
    fneg    f2, f28
    stfs    f0, 0x70(sp)
    fmsubs  f0, f3, f1, f5
    stfs    f2, 0x80(sp)
    fmuls   f2, f27, f29
    fmadds  f4, f3, f29, f6
    stfs    f0, 0x64(sp)
    fmuls   f0, f27, f1
    fmuls   f3, f27, f31
    stfs    f4, 0x74(sp)
    fmadds  f2, f6, f28, f2
    fmsubs  f1, f5, f28, f0
    stfs    f3, 0x84(sp)
    fmuls   f0, f30, f31
    stfs    f2, 0x68(sp)
    stfs    f1, 0x78(sp)
    stfs    f0, 0x88(sp)
    bl      PSMTXConcat
    lfs     f2, 0x18(r30)
    mr      r3, r30
    lfs     f1, 0x14(r30)
    addi    r31, sp, 0x90
    lfs     f0, 0x10(r30)
    stfs    f0, 0x9c(sp)
    stfs    f1, 0xac(sp)
    stfs    f2, 0xbc(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    mr      r3, r31
    bl      PSMTXCopy
    lfs     f0, 0x10(r30)
    lwz     r3, 0x144(r30)
    stfs    f0, 0x10(r3)
    lfs     f1, 0x14(r30)
    lfs     f0, -0x2200(r2)
    lwz     r3, 0x144(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    lfd     f30, 0xe8(sp)
    lfd     f29, 0xe0(sp)
    lfd     f28, 0xd8(sp)
    lfd     f27, 0xd0(sp)
    lfd     f26, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    addi    sp, sp, 0xf8
    mtlr    r0
    blr


.globl initMapObj__11TFenceWaterFv
initMapObj__11TFenceWaterFv: # 0x801ed580
    mflr    r0
    lis     r4, unk_803935f0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    addi    r30, r4, unk_803935f0@l
    addi    r4, r2, R2Off_m0x21fc
    stw     r29, 0x6c(sp)
    lwz     r3, 0xf4(r3)
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801ed5c0
    li      r0, 0x1
    stb     r0, 0x138(r31)
branch_0x801ed5c0:
    mr      r3, r31
    bl      initMapObj__11TMapObjBaseFv
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801ed5e4
    addi    r3, r29, 0x0
    addi    r4, r30, 0x12c
    bl      __ct__16TMapObjMessengerFPCc
branch_0x801ed5e4:
    stw     r29, 0x144(r31)
    li      r5, 0x1
    li      r6, 0x0
    lwz     r3, 0x144(r31)
    stw     r31, 0x68(r3)
    lfs     f1, -0x2220(r2)
    lwz     r4, 0x4c(r31)
    fmr     f2, f1
    lwz     r3, 0x144(r31)
    lfs     f3, -0x21f4(r2)
    lfs     f4, -0x21f0(r2)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, 0x144(r31)
    addi    r3, r30, 0x148
    lwz     r0, 0x64(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    lfs     f2, 0x14(r31)
    lfs     f1, -0x2200(r2)
    lwz     r4, 0x144(r31)
    lfs     f3, 0x18(r31)
    fsubs   f1, f2, f1
    lfs     f0, 0x10(r31)
    stfsu   f0, 0x10(r4)
    stfs    f1, 0x4(r4)
    stfs    f3, 0x8(r4)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x148
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r3, sp, 0x38
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x38(sp)
    addi    r3, sp, 0x54
    addi    r4, sp, 0x34
    stw     r0, 0x34(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x54(sp)
    addi    r5, sp, 0x44
    addi    r4, r30, 0x0
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x40
    addi    r6, r31, 0x144
    lwz     r0, 0x50(sp)
    stw     r0, 0x44(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl initMapCollisionData__11TFenceWaterFv
initMapCollisionData__11TFenceWaterFv: # 0x801ed6d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      initMapCollisionData__11TMapObjBaseFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl control__11TFenceWaterFv
control__11TFenceWaterFv: # 0x801ed6f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    mr      r3, r31
    bl      controlRotation__11TFenceWaterFv
    lfs     f2, 0x140(r31)
    lfs     f1, 0x11c(r31)
    lfs     f0, -0x220c(r2)
    fadds   f2, f2, f1
    b       branch_0x801ed730

branch_0x801ed72c:
    fsubs   f2, f2, f0
branch_0x801ed730:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801ed72c
    lfs     f1, -0x220c(r2)
    lfs     f0, -0x2220(r2)
    b       branch_0x801ed74c

branch_0x801ed748:
    fadds   f2, f2, f1
branch_0x801ed74c:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801ed748
    stfs    f2, 0x34(r31)
    lfs     f2, -0x21e8(r2)
    lfs     f0, 0x34(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f1, f2, f0
    lwz     r5, R13Off_m0x5ea4(r13)
    lfs     f3, -0x21ec(r2)
    lfs     f0, 0x10(r31)
    fctiwz  f1, f1
    lwz     r3, 0x144(r31)
    stfd    f1, 0x38(sp)
    lwz     r4, 0x3c(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f0, 0x34(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f1, f2, f0
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f0, 0x18(r31)
    lwz     r3, 0x144(r31)
    fctiwz  f1, f1
    stfd    f1, 0x30(sp)
    lwz     r4, 0x34(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fnmsubs  f0, f3, f1, f0
    stfs    f0, 0x18(r3)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl controlRotation__11TFenceWaterFv
controlRotation__11TFenceWaterFv: # 0x801ed7ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x801ed870
    bge-    branch_0x801ed820
    cmpwi   r0, 0x1
    beq-    branch_0x801ed90c
    bge-    branch_0x801ed82c
    b       branch_0x801ed90c

branch_0x801ed820:
    cmpwi   r0, 0x5
    bge-    branch_0x801ed90c
    b       branch_0x801ed8d4

branch_0x801ed82c:
    lfs     f1, 0x140(r31)
    lfs     f0, 0x13c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x140(r31)
    lfs     f1, 0x140(r31)
    lfs     f0, -0x21e4(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801ed90c
    stfs    f0, 0x140(r31)
    li      r0, 0x3
    lfs     f0, -0x2220(r2)
    stfs    f0, 0x13c(r31)
    sth     r0, 0xfc(r31)
    lwz     r0, R13Off_m0x784c(r13)
    stw     r0, 0x104(r31)
    b       branch_0x801ed90c

branch_0x801ed870:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801ed884
    li      r0, 0x1
    b       branch_0x801ed888

branch_0x801ed884:
    li      r0, 0x0
branch_0x801ed888:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ed90c
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3839
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ed8c0
    addi    r4, r31, 0x10
    li      r3, 0x3839
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ed8c0:
    lfs     f0, -0x7850(r13)
    li      r0, 0x4
    stfs    f0, 0x13c(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801ed90c

branch_0x801ed8d4:
    lfs     f1, 0x140(r31)
    lfs     f0, 0x13c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x140(r31)
    lfs     f1, 0x140(r31)
    lfs     f0, -0x2220(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801ed90c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
branch_0x801ed90c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl changeStatusToWait__11TFenceWaterFv
changeStatusToWait__11TFenceWaterFv: # 0x801ed920
    lfs     f0, -0x2220(r2)
    li      r0, 0x1
    stfs    f0, 0x140(r3)
    stfs    f0, 0x13c(r3)
    sth     r0, 0xfc(r3)
    blr


.globl changeStatusToGo__11TFenceWaterFv
changeStatusToGo__11TFenceWaterFv: # 0x801ed938
    mflr    r0
    li      r4, 0x3838
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lwz     r0, R13Off_m0x6044(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ed980
    addi    r4, r31, 0x10
    li      r3, 0x3838
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ed980:
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl receiveMessage__11TFenceWaterFP9THitActorUl
receiveMessage__11TFenceWaterFP9THitActorUl: # 0x801ed99c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x801ed9bc
    li      r0, 0x1
    b       branch_0x801ed9c0

branch_0x801ed9bc:
    li      r0, 0x0
branch_0x801ed9c0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801eda00
    cmplwi  r5, 0xf
    bne-    branch_0x801eda00
    lfs     f0, -0x7854(r13)
    stfs    f0, 0x13c(r3)
    lfs     f1, 0x13c(r3)
    lfs     f0, -0x2220(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801ed9f8
    lwz     r12, 0x0(r3)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
branch_0x801ed9f8:
    li      r3, 0x1
    b       branch_0x801eda04

branch_0x801eda00:
    li      r3, 0x0
branch_0x801eda04:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl draw__11TFenceWaterCFv
draw__11TFenceWaterCFv: # 0x801eda14
    blr


.globl initMapObj__20TRevolvingFenceInnerFv
initMapObj__20TRevolvingFenceInnerFv: # 0x801eda18
    mflr    r0
    addi    r4, r2, R2Off_m0x21fc
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    mr      r30, r3
    lwz     r3, 0xf4(r3)
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801eda4c
    li      r0, 0x1
    stb     r0, 0x138(r30)
branch_0x801eda4c:
    mr      r3, r30
    bl      initMapObj__11TMapObjBaseFv
    lfs     f1, 0x30(r30)
    lfs     f0, -0x2208(r2)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801eda84
    lfs     f1, 0x38(r30)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801eda84
    li      r0, 0x1
    stb     r0, 0x140(r30)
    b       branch_0x801eda8c

branch_0x801eda84:
    li      r0, 0x0
    stb     r0, 0x140(r30)
branch_0x801eda8c:
    lwz     r31, 0xec(r30)
    addi    r3, sp, 0x1c
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x10(r30)
    lfs     f2, 0x14(r30)
    lfs     f3, 0x18(r30)
    lfs     f4, 0x30(r30)
    lfs     f5, 0x34(r30)
    lfs     f6, 0x38(r30)
    lfs     f7, 0x24(r30)
    lfs     f8, 0x28(r30)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r31, 0x8(r31)
    addi    r3, sp, 0x1c
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl initMapCollisionData__20TRevolvingFenceInnerFv
initMapCollisionData__20TRevolvingFenceInnerFv: # 0x801edafc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x18(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801edb38
    addi    r3, r30, 0x0
    addi    r6, r31, 0x0
    li      r4, 0x1
    addi    r5, r2, R2Off_m0x21e0
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x801edb38:
    stw     r30, 0xec(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, -0x21d8(r2)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801edb7c
    lfs     f1, 0x38(r31)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801edb7c
    lis     r4, unk_80393750@h
    lwz     r3, 0xec(r31)
    addi    r4, r4, unk_80393750@l
    li      r5, 0x1
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    b       branch_0x801edb94

branch_0x801edb7c:
    lis     r4, unk_8039376c@h
    lwz     r3, 0xec(r31)
    addi    r4, r4, unk_8039376c@l
    li      r5, 0x1
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
branch_0x801edb94:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl control__20TRevolvingFenceInnerFv
control__20TRevolvingFenceInnerFv: # 0x801edbac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lbz     r0, 0x140(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801edbdc
    mr      r3, r31
    bl      controlWall__20TRevolvingFenceInnerFv
    b       branch_0x801edbe4

branch_0x801edbdc:
    mr      r3, r31
    bl      controlGroundRoof__20TRevolvingFenceInnerFv
branch_0x801edbe4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setGroundCollision__20TRevolvingFenceInnerFv
setGroundCollision__20TRevolvingFenceInnerFv: # 0x801edbf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r3
    bl      SMS_GetYoshi__Fv
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801edc28
    li      r0, 0x0
    b       branch_0x801edc2c

branch_0x801edc28:
    li      r0, 0x1
branch_0x801edc2c:
    cmpwi   r0, 0x0
    beq-    branch_0x801edce0
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x10(r30)
    lfs     f1, 0xbc(r30)
    lfs     f0, 0x20(r3)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801edce0
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x10(r30)
    lfs     f1, 0xbc(r30)
    lfs     f0, 0x20(r3)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801edce0
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x18(r30)
    lfs     f1, 0xbc(r30)
    lfs     f0, 0x28(r3)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801edce0
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x18(r30)
    lfs     f1, 0xbc(r30)
    lfs     f0, 0x28(r3)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801edce0
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r31, sp, 0x38
    addi    r3, r31, 0x0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lwz     r3, 0xec(r30)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801edce0
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x801edce0:
    mr      r3, r30
    bl      setGroundCollision__11TMapObjBaseFv
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl controlGroundRoof__20TRevolvingFenceInnerFv
controlGroundRoof__20TRevolvingFenceInnerFv: # 0x801edd00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x801edd98
    bge-    branch_0x801edd30
    cmpwi   r0, 0x3
    bge-    branch_0x801edd3c
    b       branch_0x801eddf0

branch_0x801edd30:
    cmpwi   r0, 0x6
    beq-    branch_0x801edd98
    bge-    branch_0x801eddf0
branch_0x801edd3c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801eddf0
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    lfs     f1, -0x2220(r2)
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2220(r2)
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r0, 0xf8(r31)
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r31)
    b       branch_0x801eddf0

branch_0x801edd98:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801eddf0
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    lfs     f1, -0x2220(r2)
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2220(r2)
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r0, 0xf8(r31)
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r31)
branch_0x801eddf0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl controlWall__20TRevolvingFenceInnerFv
controlWall__20TRevolvingFenceInnerFv: # 0x801ede04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r3
    lhz     r0, 0xfc(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x801edee0
    bge-    branch_0x801ede38
    cmpwi   r0, 0x3
    bge-    branch_0x801ede48
    b       branch_0x801ee0ac

branch_0x801ede38:
    cmpwi   r0, 0x6
    beq-    branch_0x801ee018
    bge-    branch_0x801ee0ac
    b       branch_0x801edf7c

branch_0x801ede48:
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x7858(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x13c(r30)
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x21d4(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801ede84
    stfs    f0, 0x13c(r30)
    li      r0, 0x2
    lfs     f1, 0x13c(r30)
    lfs     f0, 0x11c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    sth     r0, 0xfc(r30)
branch_0x801ede84:
    lfs     f1, 0x13c(r30)
    lfs     f0, 0x11c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lfs     f1, 0x34(r30)
    lfs     f2, -0x2220(r2)
    lfs     f3, -0x220c(r2)
    bl      MsWrap_f___Ffff_801ee140
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    lfs     f1, 0x34(r30)
    mr      r3, r31
    bl      MsMtxSetRotY__FPA4_ff
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x108(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    b       branch_0x801ee0ac

branch_0x801edee0:
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x7858(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x13c(r30)
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x220c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801edf20
    lfs     f0, -0x2220(r2)
    li      r0, 0x1
    stfs    f0, 0x13c(r30)
    lfs     f1, 0x13c(r30)
    lfs     f0, 0x11c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    sth     r0, 0xfc(r30)
branch_0x801edf20:
    lfs     f1, 0x13c(r30)
    lfs     f0, 0x11c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lfs     f1, 0x34(r30)
    lfs     f2, -0x2220(r2)
    lfs     f3, -0x220c(r2)
    bl      MsWrap_f___Ffff_801ee140
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    lfs     f1, 0x34(r30)
    mr      r3, r31
    bl      MsMtxSetRotY__FPA4_ff
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x108(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    b       branch_0x801ee0ac

branch_0x801edf7c:
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x7858(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x13c(r30)
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x21d0(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801edfbc
    lfs     f0, -0x21d4(r2)
    li      r0, 0x2
    stfs    f0, 0x13c(r30)
    lfs     f1, 0x13c(r30)
    lfs     f0, 0x11c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    sth     r0, 0xfc(r30)
branch_0x801edfbc:
    lfs     f1, 0x13c(r30)
    lfs     f0, 0x11c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lfs     f1, 0x34(r30)
    lfs     f2, -0x2220(r2)
    lfs     f3, -0x220c(r2)
    bl      MsWrap_f___Ffff_801ee140
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    lfs     f1, 0x34(r30)
    mr      r3, r31
    bl      MsMtxSetRotY__FPA4_ff
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x108(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    b       branch_0x801ee0ac

branch_0x801ee018:
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x7858(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x13c(r30)
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x2220(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ee054
    stfs    f0, 0x13c(r30)
    li      r0, 0x1
    lfs     f1, 0x13c(r30)
    lfs     f0, 0x11c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    sth     r0, 0xfc(r30)
branch_0x801ee054:
    lfs     f1, 0x13c(r30)
    lfs     f0, 0x11c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lfs     f1, 0x34(r30)
    lfs     f2, -0x2220(r2)
    lfs     f3, -0x220c(r2)
    bl      MsWrap_f___Ffff_801ee140
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    lfs     f1, 0x34(r30)
    mr      r3, r31
    bl      MsMtxSetRotY__FPA4_ff
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x108(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
branch_0x801ee0ac:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl MsMtxSetRotY__FPA4_ff
MsMtxSetRotY__FPA4_ff: # 0x801ee0c4
    stwu    sp, -0x20(sp)
    lfs     f0, -0x21e8(r2)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f0, f1
    lwz     r6, R13Off_m0x5ea8(r13)
    lwz     r4, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r5, 0x1c(sp)
    addi    sp, sp, 0x20
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f3, r4, r0
    fneg    f0, f1
    stfs    f3, 0x0(r3)
    lfs     f2, -0x2220(r2)
    stfs    f2, 0x4(r3)
    stfs    f1, 0x8(r3)
    stfs    f2, 0xc(r3)
    stfs    f2, 0x10(r3)
    lfs     f1, -0x2208(r2)
    stfs    f1, 0x14(r3)
    stfs    f2, 0x18(r3)
    stfs    f2, 0x1c(r3)
    stfs    f0, 0x20(r3)
    stfs    f2, 0x24(r3)
    stfs    f3, 0x28(r3)
    stfs    f2, 0x2c(r3)
    blr


.globl MsWrap_f___Ffff_801ee140
MsWrap_f___Ffff_801ee140: # 0x801ee140
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x801ee17c
    fmr     f1, f2
    blr

branch_0x801ee154:
    b       branch_0x801ee15c

branch_0x801ee158:
    fsubs   f1, f1, f0
branch_0x801ee15c:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x801ee158
    b       branch_0x801ee170

branch_0x801ee16c:
    fadds   f1, f1, f0
branch_0x801ee170:
    fcmpo   cr0, f1, f2
    blt+    branch_0x801ee16c
    blr

branch_0x801ee17c:
    fsubs   f0, f3, f2
    b       branch_0x801ee15c

branch_0x801ee184:
    blr


.globl receiveMessage__20TRevolvingFenceInnerFP9THitActorUl
receiveMessage__20TRevolvingFenceInnerFP9THitActorUl: # 0x801ee188
    mflr    r0
    cmplwi  r5, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x801ee2a4
    lbz     r0, 0x140(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801ee2a4
    lhz     r3, 0xfc(r31)
    cmplwi  r3, 0x1
    bne-    branch_0x801ee1c4
    li      r0, 0x1
    b       branch_0x801ee1c8

branch_0x801ee1c4:
    li      r0, 0x0
branch_0x801ee1c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ee22c
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3824
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ee200
    addi    r4, r31, 0x10
    li      r3, 0x3824
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ee200:
    li      r0, 0x3
    lis     r3, unk_80393788@h
    sth     r0, 0xfc(r31)
    addi    r4, r3, unk_80393788@l
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    lwz     r0, 0xf8(r31)
    li      r3, 0x1
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r31)
    b       branch_0x801ee410

branch_0x801ee22c:
    cmplwi  r3, 0x2
    bne-    branch_0x801ee23c
    li      r0, 0x1
    b       branch_0x801ee240

branch_0x801ee23c:
    li      r0, 0x0
branch_0x801ee240:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ee2a4
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3825
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ee278
    addi    r4, r31, 0x10
    li      r3, 0x3825
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ee278:
    li      r0, 0x4
    lis     r3, unk_803937a8@h
    sth     r0, 0xfc(r31)
    addi    r4, r3, unk_803937a8@l
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    lwz     r0, 0xf8(r31)
    li      r3, 0x1
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r31)
    b       branch_0x801ee410

branch_0x801ee2a4:
    cmplwi  r5, 0x3
    bne-    branch_0x801ee40c
    lbz     r0, 0x140(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801ee40c
    lwz     r4, R13Off_m0x60b4(r13)
    mr      r3, r31
    bl      getRotYFromAxisZ__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x21cc(r2)
    lfs     f2, -0x21d4(r2)
    fdivs   f3, f1, f0
    lfs     f1, 0x11c(r31)
    lfs     f0, -0x220c(r2)
    fmadds  f1, f2, f3, f1
    fmr     f3, f1
    b       branch_0x801ee2e8

branch_0x801ee2e4:
    fsubs   f3, f3, f0
branch_0x801ee2e8:
    fcmpo   cr0, f3, f2
    cror    2, 1, 2
    beq+    branch_0x801ee2e4
    lfs     f1, -0x220c(r2)
    lfs     f0, -0x21d0(r2)
    b       branch_0x801ee304

branch_0x801ee300:
    fadds   f3, f3, f1
branch_0x801ee304:
    fcmpo   cr0, f3, f0
    blt+    branch_0x801ee300
    fcmpo   cr0, f0, f3
    bge-    branch_0x801ee320
    lfs     f0, -0x21e4(r2)
    fcmpo   cr0, f3, f0
    blt-    branch_0x801ee338
branch_0x801ee320:
    lfs     f0, -0x2220(r2)
    fcmpo   cr0, f0, f3
    bge-    branch_0x801ee3a0
    lfs     f0, -0x21c8(r2)
    fcmpo   cr0, f3, f0
    bge-    branch_0x801ee3a0
branch_0x801ee338:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3824
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ee368
    addi    r4, r31, 0x10
    li      r3, 0x3824
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ee368:
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801ee37c
    li      r0, 0x1
    b       branch_0x801ee380

branch_0x801ee37c:
    li      r0, 0x0
branch_0x801ee380:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ee394
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    b       branch_0x801ee404

branch_0x801ee394:
    li      r0, 0x4
    sth     r0, 0xfc(r31)
    b       branch_0x801ee404

branch_0x801ee3a0:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3825
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ee3d0
    addi    r4, r31, 0x10
    li      r3, 0x3825
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ee3d0:
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801ee3e4
    li      r0, 0x1
    b       branch_0x801ee3e8

branch_0x801ee3e4:
    li      r0, 0x0
branch_0x801ee3e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ee3fc
    li      r0, 0x5
    sth     r0, 0xfc(r31)
    b       branch_0x801ee404

branch_0x801ee3fc:
    li      r0, 0x6
    sth     r0, 0xfc(r31)
branch_0x801ee404:
    li      r3, 0x1
    b       branch_0x801ee410

branch_0x801ee40c:
    li      r3, 0x0
branch_0x801ee410:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl initMapCollisionData__20TRevolvingFenceOuterFv
initMapCollisionData__20TRevolvingFenceOuterFv: # 0x801ee424
    mflr    r0
    lis     r4, unk_803935f0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r4, unk_803935f0@l
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    addi    r29, r3, 0x0
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801ee46c
    addi    r3, r30, 0x0
    addi    r6, r29, 0x0
    li      r4, 0x1
    addi    r5, r2, R2Off_m0x21e0
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x801ee46c:
    stw     r30, 0xec(r29)
    lfs     f1, 0x30(r29)
    lfs     f0, -0x2208(r2)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ee4ac
    lfs     f1, 0x38(r29)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ee4ac
    lwz     r3, 0xec(r29)
    addi    r4, r31, 0x1d4
    li      r5, 0x0
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    b       branch_0x801ee4c0

branch_0x801ee4ac:
    lwz     r3, 0xec(r29)
    addi    r4, r31, 0x1f0
    li      r5, 0x0
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
branch_0x801ee4c0:
    lwz     r30, 0xec(r29)
    addi    r3, sp, 0x1c
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x10(r29)
    lfs     f2, 0x14(r29)
    lfs     f3, 0x18(r29)
    lfs     f4, 0x30(r29)
    lfs     f5, 0x34(r29)
    lfs     f6, 0x38(r29)
    lfs     f7, 0x24(r29)
    lfs     f8, 0x28(r29)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r30, 0x8(r30)
    addi    r3, sp, 0x1c
    addi    r4, r30, 0x20
    bl      PSMTXCopy
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x138(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801ee54c
    lfs     f0, -0x2208(r2)
    addi    r6, sp, 0x58
    addi    r3, r31, 0x20c
    stfs    f0, 0x58(sp)
    addi    r4, r29, 0x10
    addi    r5, r29, 0x30
    stfs    f0, 0x5c(sp)
    stfs    f0, 0x60(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    b       branch_0x801ee570

branch_0x801ee54c:
    lfs     f0, -0x2208(r2)
    addi    r6, sp, 0x4c
    addi    r3, r31, 0x228
    stfs    f0, 0x4c(sp)
    addi    r4, r29, 0x10
    addi    r5, r29, 0x30
    stfs    f0, 0x50(sp)
    stfs    f0, 0x54(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x801ee570:
    stw     r3, 0x13c(r29)
    lwz     r3, 0x13c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl receiveMessage__20TRevolvingFenceOuterFP9THitActorUl
receiveMessage__20TRevolvingFenceOuterFP9THitActorUl: # 0x801ee5a4
    mflr    r0
    cmplwi  r5, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x801ee5e8
    lis     r3, unk_8039382c@h
    addi    r4, r3, unk_8039382c@l
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    lis     r4, unk_80393848@h
    lwz     r3, 0x13c(r31)
    addi    r4, r4, unk_80393848@l
    bl      startBck__11TMapObjBaseFPCc
    li      r3, 0x1
    b       branch_0x801ee5ec

branch_0x801ee5e8:
    li      r3, 0x0
branch_0x801ee5ec:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initMapObj__6TFenceFv
initMapObj__6TFenceFv: # 0x801ee600
    mflr    r0
    addi    r4, r2, R2Off_m0x21fc
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0xf4(r3)
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801ee630
    li      r0, 0x1
    stb     r0, 0x138(r31)
branch_0x801ee630:
    mr      r3, r31
    bl      initMapObj__11TMapObjBaseFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapCollisionData__6TFenceFv
initMapCollisionData__6TFenceFv: # 0x801ee64c
    mflr    r0
    lis     r4, unk_803935f0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, unk_803935f0@l
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    li      r3, 0x18
    stw     r29, 0x5c(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801ee694
    addi    r3, r29, 0x0
    addi    r6, r30, 0x0
    li      r4, 0x1
    addi    r5, r2, R2Off_m0x21e0
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x801ee694:
    stw     r29, 0xec(r30)
    addi    r4, r31, 0x274
    lwz     r3, 0xf4(r30)
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x801ee700
    lfs     f1, 0x30(r30)
    lfs     f0, -0x2208(r2)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ee6e8
    lfs     f1, 0x38(r30)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ee6e8
    lwz     r3, 0xec(r30)
    addi    r4, r31, 0x280
    li      r5, 0x0
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    b       branch_0x801ee750

branch_0x801ee6e8:
    lwz     r3, 0xec(r30)
    addi    r4, r31, 0x294
    li      r5, 0x0
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    b       branch_0x801ee750

branch_0x801ee700:
    lfs     f1, 0x30(r30)
    lfs     f0, -0x2208(r2)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ee73c
    lfs     f1, 0x38(r30)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ee73c
    lwz     r3, 0xec(r30)
    addi    r4, r31, 0x2a4
    li      r5, 0x0
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    b       branch_0x801ee750

branch_0x801ee73c:
    lwz     r3, 0xec(r30)
    addi    r4, r31, 0x2b8
    li      r5, 0x0
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
branch_0x801ee750:
    lwz     r31, 0xec(r30)
    addi    r3, sp, 0x24
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x10(r30)
    lfs     f2, 0x14(r30)
    lfs     f3, 0x18(r30)
    lfs     f4, 0x30(r30)
    lfs     f5, 0x34(r30)
    lfs     f6, 0x38(r30)
    lfs     f7, 0x24(r30)
    lfs     f8, 0x28(r30)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r31, 0x8(r31)
    addi    r3, sp, 0x24
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl receiveMessage__6TFenceFP9THitActorUl
receiveMessage__6TFenceFP9THitActorUl: # 0x801ee7c4
    mflr    r0
    cmplwi  r5, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x801ee7ec
    lis     r4, unk_803938bc@h
    addi    r4, r4, unk_803938bc@l
    bl      startBck__11TMapObjBaseFPCc
    li      r3, 0x1
    b       branch_0x801ee7f0

branch_0x801ee7ec:
    li      r3, 0x0
branch_0x801ee7f0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__12TFenceWaterHFv
__dt__12TFenceWaterHFv: # 0x801ee800
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ee880
    lis     r3, __vvt__12TFenceWaterH@h
    addi    r3, r3, __vvt__12TFenceWaterH@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ee870
    lis     r3, __vvt__11TFenceWater@h
    addi    r3, r3, __vvt__11TFenceWater@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ee870
    lis     r3, __vvt__6TFence@h
    addi    r3, r3, __vvt__6TFence@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801ee870:
    extsh.  r0, r31
    ble-    branch_0x801ee880
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ee880:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TFenceWaterFv
__dt__11TFenceWaterFv: # 0x801ee89c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ee91c
    lis     r3, __vvt__11TFenceWater@h
    addi    r3, r3, __vvt__11TFenceWater@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ee90c
    lis     r3, __vvt__6TFence@h
    addi    r3, r3, __vvt__6TFence@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ee90c
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801ee90c:
    extsh.  r0, r31
    ble-    branch_0x801ee91c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ee91c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__20TRevolvingFenceInnerFv
__dt__20TRevolvingFenceInnerFv: # 0x801ee938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ee9b8
    lis     r3, __vvt__20TRevolvingFenceInner@h
    addi    r3, r3, __vvt__20TRevolvingFenceInner@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ee9a8
    lis     r3, __vvt__6TFence@h
    addi    r3, r3, __vvt__6TFence@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ee9a8
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801ee9a8:
    extsh.  r0, r31
    ble-    branch_0x801ee9b8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ee9b8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__20TRevolvingFenceOuterFv
__dt__20TRevolvingFenceOuterFv: # 0x801ee9d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801eea54
    lis     r3, __vvt__20TRevolvingFenceOuter@h
    addi    r3, r3, __vvt__20TRevolvingFenceOuter@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801eea44
    lis     r3, __vvt__6TFence@h
    addi    r3, r3, __vvt__6TFence@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801eea44
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801eea44:
    extsh.  r0, r31
    ble-    branch_0x801eea54
    mr      r3, r30
    bl      __dl__FPv
branch_0x801eea54:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjFence_cpp
__sinit_MapObjFence_cpp: # 0x801eea70
    mflr    r0
    lis     r3, unk_803fa590@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fa590@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801eeab8
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801eeab8:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801eeae8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801eeae8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801eeb18
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801eeb18:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801eeb48
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801eeb48:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801eeb78
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801eeb78:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801eeba8
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801eeba8:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801eebd8
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801eebd8:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801eec08
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801eec08:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801eec38
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801eec38:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801eec68
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801eec68:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801eec98
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801eec98:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801eecc8
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801eecc8:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801eecf8
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801eecf8:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801eed28
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801eed28:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801eed58
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801eed58:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801eed6c
unk_801eed6c: # 0x801eed6c
    addi    r3, r3, -0x20
    b       __dt__6TFenceFv


.globl unk_801eed74
unk_801eed74: # 0x801eed74
    addi    r3, r3, -0x20
    b       __dt__20TRevolvingFenceOuterFv


.globl unk_801eed7c
unk_801eed7c: # 0x801eed7c
    addi    r3, r3, -0x20
    b       __dt__20TRevolvingFenceInnerFv


.globl unk_801eed84
unk_801eed84: # 0x801eed84
    addi    r3, r3, -0x20
    b       __dt__11TFenceWaterFv


.globl unk_801eed8c
unk_801eed8c: # 0x801eed8c
    addi    r3, r3, -0x20
    b       __dt__12TFenceWaterHFv


.globl unk_801eed94
unk_801eed94: # 0x801eed94
    addi    r3, r3, -0x20
    b       __dt__10TRailFenceFv

