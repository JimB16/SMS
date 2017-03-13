
.globl __dt__14TPictureTelesaFv
__dt__14TPictureTelesaFv: # 0x801c8194
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c8214
    lis     r3, 0x803d
    subi    r3, r3, 0x2e50
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c8204
    lis     r3, 0x803d
    addi    r3, r3, 0x733c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c8204
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801c8204:
    extsh.  r0, r31
    ble-    branch_0x801c8214
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c8214:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getObjAppearPos__23TWaterHitPictureHideObjCFv
getObjAppearPos__23TWaterHitPictureHideObjCFv: # 0x801c8230
    addi    r3, r3, 0x10
    blr


.globl control__14TPictureTelesaFv
control__14TPictureTelesaFv: # 0x801c8238
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__23TWaterHitPictureHideObjFv
    lbz     r0, 0x174(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c8270
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801c8270
    li      r0, 0x0
    stb     r0, 0x174(r31)
branch_0x801c8270:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchActor__14TPictureTelesaFP9THitActor
touchActor__14TPictureTelesaFP9THitActor: # 0x801c8284
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      touchActor__23TWaterHitPictureHideObjFP9THitActor
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x1a2
    bne-    branch_0x801c82bc
    li      r0, 0x1
    b       branch_0x801c82c0

branch_0x801c82bc:
    li      r0, 0x0
branch_0x801c82c0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c83d0
    lbz     r0, 0x174(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x801c83d0
    lhz     r0, 0xfc(r30)
    cmplwi  r0, 0x3
    bne-    branch_0x801c82e8
    li      r0, 0x1
    b       branch_0x801c82ec

branch_0x801c82e8:
    li      r0, 0x0
branch_0x801c82ec:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c83d0
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801c8308
    li      r0, 0x1
    b       branch_0x801c830c

branch_0x801c8308:
    li      r0, 0x0
branch_0x801c830c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801c83d0
    lfs     f3, 0x10(r31)
    lfs     f2, 0x10(r30)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x14(r30)
    fsubs   f2, f3, f2
    lfs     f3, 0x18(r31)
    fsubs   f1, f1, f0
    lfs     f0, 0x18(r30)
    fmuls   f2, f2, f2
    fsubs   f3, f3, f0
    lfs     f0, -0x29b0(rtoc)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801c8360
    b       branch_0x801c8384

branch_0x801c8360:
    frsqrte f3, f4
    lfs     f2, -0x29ac(rtoc)
    lfs     f0, -0x29a8(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801c8384:
    lfs     f0, -0x29a4(rtoc)
    fcmpo   cr0, f4, f0
    bge-    branch_0x801c83d0
    li      r0, 0x3c
    stw     r0, 0x104(r30)
    li      r4, 0x28d5
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c83c8
    addi    r4, r30, 0x10
    li      r3, 0x28d5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c83c8:
    li      r0, 0x1
    stb     r0, 0x174(r30)
branch_0x801c83d0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl afterFinishedAnim__14TPictureTelesaFv
afterFinishedAnim__14TPictureTelesaFv: # 0x801c83e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      afterFinishedAnim__23TWaterHitPictureHideObjFv
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x1a2
    bne-    branch_0x801c8418
    li      r0, 0x1
    b       branch_0x801c841c

branch_0x801c8418:
    li      r0, 0x0
branch_0x801c841c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c847c
    lwz     r3, gpMSound(r13)
    li      r4, 0x484d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c844c
    li      r3, 0x484d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801c844c:
    lwz     r3, gpMSound(r13)
    li      r4, 0x28d9
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c847c
    addi    r4, r31, 0x10
    li      r3, 0x28d9
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c847c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl control__13TPanelRevolveFv
control__13TPanelRevolveFv: # 0x801c8490
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801c84bc
    bge-    branch_0x801c84e8
    b       branch_0x801c84e8

branch_0x801c84bc:
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c84e8
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x801c84e8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchPlayer__13TPanelRevolveFP9THitActor
touchPlayer__13TPanelRevolveFP9THitActor: # 0x801c84fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      marioHipAttack__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c8588
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801c8530
    li      r0, 0x1
    b       branch_0x801c8534

branch_0x801c8530:
    li      r0, 0x0
branch_0x801c8534:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c8588
    lwz     r3, gpMSound(r13)
    li      r4, 0x385d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c856c
    addi    r4, r31, 0x10
    li      r3, 0x385d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c856c:
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
branch_0x801c8588:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl receiveMessage__13TPanelRevolveFP9THitActorUl
receiveMessage__13TPanelRevolveFP9THitActorUl: # 0x801c859c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801c85c4
    li      r0, 0x1
    b       branch_0x801c85c8

branch_0x801c85c4:
    li      r0, 0x0
branch_0x801c85c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c861c
    lwz     r3, gpMSound(r13)
    li      r4, 0x385d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c8600
    addi    r4, r31, 0x10
    li      r3, 0x385d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c8600:
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
branch_0x801c861c:
    lwz     r0, 0x2c(sp)
    li      r3, 0x1
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl control__13TChestRevolveFv
control__13TChestRevolveFv: # 0x801c8634
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801c8660
    bge-    branch_0x801c8684
    b       branch_0x801c8684

branch_0x801c8660:
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c8684
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setUpMapCollision__11TMapObjBaseFUs
branch_0x801c8684:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchWater__13TChestRevolveFP9THitActor
touchWater__13TChestRevolveFP9THitActor: # 0x801c8698
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801c86c0
    li      r0, 0x1
    b       branch_0x801c86c4

branch_0x801c86c0:
    li      r0, 0x0
branch_0x801c86c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c86ec
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setUpMapCollision__11TMapObjBaseFUs
branch_0x801c86ec:
    lwz     r0, 0x24(sp)
    li      r3, 0x1
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__14TWarpAreaActorFPCc
__ct__14TWarpAreaActorFPCc: # 0x801c8704
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x2a0c
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, -0x1
    stw     r3, 0x20(r31)
    mr      r3, r31
    sth     r0, 0x68(r31)
    sth     r0, 0x6a(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__14TWarpAreaActorFR20JSUMemoryInputStream
load__14TWarpAreaActorFR20JSUMemoryInputStream: # 0x801c8754
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x10(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    extsh   r0, r0
    sth     r0, 0x68(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x10(sp)
    lis     r4, 0x4000
    addi    r3, r30, 0x0
    extsh   r0, r0
    sth     r0, 0x6a(r30)
    addi    r4, r4, 0x19d
    li      r5, 0x1
    lfs     f3, -0x29b0(rtoc)
    lis     r6, 0x8000
    lfs     f2, -0x29a0(rtoc)
    lfs     f1, 0x24(r30)
    fmr     f4, f3
    lfs     f0, 0x28(r30)
    fmuls   f1, f2, f1
    fmuls   f2, f2, f0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    addi    r4, r30, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r3, -0x70b0(r13)
    bl      registerOtherObj__10TConductorFPQ26JDrama8TViewObj
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl perform__14TWarpAreaActorFUlPQ26JDrama9TGraphics
perform__14TWarpAreaActorFUlPQ26JDrama9TGraphics: # 0x801c8810
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    clrlwi. r0, r31, 31
    beq-    branch_0x801c8894
    lhz     r0, 0x48(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801c8894
    lwz     r3, -0x60a0(r13)
    lfs     f0, -0x29b0(rtoc)
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c886c
    lha     r4, 0x68(r30)
    cmpwi   r4, -0x1
    beq-    branch_0x801c886c
    lwz     r3, gpMap(r13)
    bl      changeModel__4TMapCFs
branch_0x801c886c:
    lwz     r3, -0x60a0(r13)
    lfs     f0, -0x29b0(rtoc)
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c8894
    lha     r4, 0x6a(r30)
    cmpwi   r4, -0x1
    beq-    branch_0x801c8894
    lwz     r3, gpMap(r13)
    bl      changeModel__4TMapCFs
branch_0x801c8894:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl getSDLModelFlag__17TSirenaCasinoRoofCFv
getSDLModelFlag__17TSirenaCasinoRoofCFv: # 0x801c88ac
    li      r3, 0x0
    blr


.globl perform__17TSirenaCasinoRoofFUlPQ26JDrama9TGraphics
perform__17TSirenaCasinoRoofFUlPQ26JDrama9TGraphics: # 0x801c88b4
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x801c88e8
    lwz     r3, 0x138(r29)
    bl      update__9TMultiBtkFv
branch_0x801c88e8:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl initMapObj__17TSirenaCasinoRoofFv
initMapObj__17TSirenaCasinoRoofFv: # 0x801c8914
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    mr      r28, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x74(r28)
    bl      offMakeDL__6MActorFv
    lwz     r4, 0x78(r28)
    li      r3, 0x10
    lwz     r30, 0xc(r4)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801c8970
    mr      r3, r28
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x4(r3)
    addi    r3, r29, 0x0
    li      r4, 0x3
    bl      __ct__9TMultiBtkFiP12J3DModelData
branch_0x801c8970:
    stw     r29, 0x138(r28)
    li      r29, 0x0
    li      r31, 0x0
branch_0x801c897c:
    lwz     r3, 0x38(r30)
    lwz     r0, 0x0(r3)
    cmpw    r29, r0
    bge-    branch_0x801c8998
    lwz     r3, 0xc(r3)
    lwzx    r5, r3, r31
    b       branch_0x801c899c

branch_0x801c8998:
    li      r5, 0x0
branch_0x801c899c:
    lwz     r3, 0x138(r28)
    mr      r4, r29
    bl      setNthData__9TMultiBtkFiP19J3DAnmTextureSRTKey
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r31, r31, 0x4
    ble+    branch_0x801c897c
    lis     r4, 0x8039
    lwz     r3, 0x74(r28)
    addi    r4, r4, 0x1694
    bl      setBrk__6MActorFPCc
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl getSDLModelFlag__15TSirenabossWallCFv
getSDLModelFlag__15TSirenabossWallCFv: # 0x801c89e8
    li      r3, 0x0
    blr


.globl drawObject__15TSirenabossWallFPQ26JDrama9TGraphics
drawObject__15TSirenabossWallFPQ26JDrama9TGraphics: # 0x801c89f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__15TSirenabossWallFUlPQ26JDrama9TGraphics
perform__15TSirenabossWallFUlPQ26JDrama9TGraphics: # 0x801c8a24
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x801c8a58
    lwz     r3, 0x138(r29)
    bl      update__9TMultiBtkFv
branch_0x801c8a58:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl initMapObj__15TSirenabossWallFv
initMapObj__15TSirenabossWallFv: # 0x801c8a84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    mr      r28, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x74(r28)
    bl      offMakeDL__6MActorFv
    lwz     r4, 0x78(r28)
    li      r3, 0x10
    lwz     r30, 0xc(r4)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801c8ae0
    mr      r3, r28
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x4(r3)
    addi    r3, r29, 0x0
    li      r4, 0x3
    bl      __ct__9TMultiBtkFiP12J3DModelData
branch_0x801c8ae0:
    stw     r29, 0x138(r28)
    li      r29, 0x0
    li      r31, 0x0
branch_0x801c8aec:
    lwz     r3, 0x38(r30)
    lwz     r0, 0x0(r3)
    cmpw    r29, r0
    bge-    branch_0x801c8b08
    lwz     r3, 0xc(r3)
    lwzx    r5, r3, r31
    b       branch_0x801c8b0c

branch_0x801c8b08:
    li      r5, 0x0
branch_0x801c8b0c:
    lwz     r3, 0x138(r28)
    mr      r4, r29
    bl      setNthData__9TMultiBtkFiP19J3DAnmTextureSRTKey
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r31, r31, 0x4
    ble+    branch_0x801c8aec
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl calcRootMatrix__11TSakuCasinoFv
calcRootMatrix__11TSakuCasinoFv: # 0x801c8b48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    mr      r29, r3
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x38(r29)
    addi    r30, sp, 0xc
    lfs     f2, -0x299c(rtoc)
    mr      r31, r3
    lfs     f1, 0x34(r29)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r29)
    fmuls   f1, f2, f1
    lfs     f7, 0x14(r29)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f6, 0x140(r29)
    fctiwz  f5, f2
    lfs     f3, 0x18(r29)
    fctiwz  f0, f0
    stfd    f5, 0x50(sp)
    fadds   f2, f7, f6
    lfs     f1, 0x10(r29)
    mr      r3, r30
    stfd    f4, 0x48(sp)
    lwz     r4, 0x54(sp)
    stfd    f0, 0x40(sp)
    lwz     r5, 0x4c(sp)
    lwz     r6, 0x44(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    addi    r3, r30, 0x0
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x24(r29)
    lwz     r0, 0x28(r29)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r31)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x140(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lwz     r3, 0x144(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x801c8c34
    lbz     r0, 0x16d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801c8c34
    li      r0, 0x1
    stb     r0, 0x13c(r29)
    lwz     r3, 0x138(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801c8c34:
    lbz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801c8c60
    lfs     f1, 0x140(r29)
    lfs     f0, -0x2998(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x140(r29)
    lfs     f1, 0x28(r29)
    lfs     f0, -0x2994(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r29)
branch_0x801c8c60:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl loadAfter__11TSakuCasinoFv
loadAfter__11TSakuCasinoFv: # 0x801c8c7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      loadAfter__11TMapObjBaseFv
    lwz     r4, -0x5db8(r13)
    subi    r3, rtoc, 0x2990
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x2990
    mtlr    r12
    blrl
    stw     r3, 0x144(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl initMapObj__11TSakuCasinoFv
initMapObj__11TSakuCasinoFv: # 0x801c8ce0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x58(sp)
    lfs     f0, -0x29b0(rtoc)
    stfs    f0, 0x140(r3)
    stb     r0, 0x13c(r31)
    bl      initMapObj__11TMapObjBaseFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lfs     f2, -0x299c(rtoc)
    addi    r3, sp, 0xc
    lfs     f1, 0x34(r31)
    lfs     f0, 0x38(r31)
    lfs     f3, 0x30(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    lfs     f6, -0x2988(rtoc)
    fmuls   f3, f2, f3
    fctiwz  f2, f1
    fctiwz  f0, f0
    fctiwz  f4, f3
    lfs     f5, 0x140(r31)
    stfd    f2, 0x48(sp)
    lfs     f2, 0x14(r31)
    stfd    f4, 0x50(sp)
    fmadds  f2, f6, f5, f2
    lfs     f3, 0x18(r31)
    stfd    f0, 0x40(sp)
    lfs     f1, 0x10(r31)
    lwz     r4, 0x54(sp)
    lwz     r5, 0x4c(sp)
    lwz     r6, 0x44(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801c8d8c
    mr      r3, r30
    bl      __ct__17TMapCollisionWarpFv
branch_0x801c8d8c:
    stw     r30, 0x138(r31)
    lis     r3, 0x8039
    addi    r4, r3, 0x16a4
    lwz     r3, 0x138(r31)
    mr      r6, r31
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r31, 0x138(r31)
    addi    r3, sp, 0xc
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __ct__11TSakuCasinoFPCc
__ct__11TSakuCasinoFPCc: # 0x801c8df0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x26a0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    stb     r0, 0x13c(r31)
    lfs     f0, -0x29b0(rtoc)
    stfs    f0, 0x140(r31)
    stw     r0, 0x144(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchWater__7TClosetFP9THitActor
touchWater__7TClosetFP9THitActor: # 0x801c8e4c
    stwu    sp, -0x20(sp)
    lbz     r0, 0x16c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801c8e64
    li      r3, 0x0
    b       branch_0x801c8fa4

branch_0x801c8e64:
    lfs     f2, 0x10(r3)
    lfs     f1, 0x10(r4)
    lfs     f0, -0x2984(rtoc)
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c8fa0
    lfs     f1, -0x2980(rtoc)
    lfs     f0, 0x140(r3)
    lfs     f2, 0x18(r3)
    fmuls   f3, f1, f0
    lfs     f1, 0x18(r4)
    fsubs   f0, f2, f3
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c8ebc
    lfs     f1, 0x34(r3)
    li      r4, 0x0
    lfs     f0, -0x29b0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c8f20
    li      r4, 0x3
    b       branch_0x801c8f20

branch_0x801c8ebc:
    fcmpo   cr0, f1, f2
    bge-    branch_0x801c8ee0
    lfs     f1, 0x34(r3)
    li      r4, 0x1
    lfs     f0, -0x29b0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c8f20
    li      r4, 0x2
    b       branch_0x801c8f20

branch_0x801c8ee0:
    fadds   f0, f2, f3
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c8f08
    lfs     f1, 0x34(r3)
    li      r4, 0x2
    lfs     f0, -0x29b0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c8f20
    li      r4, 0x1
    b       branch_0x801c8f20

branch_0x801c8f08:
    lfs     f1, 0x34(r3)
    li      r4, 0x3
    lfs     f0, -0x29b0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c8f20
    li      r4, 0x0
branch_0x801c8f20:
    li      r0, 0x1
    sth     r0, 0x164(r3)
    lis     r5, 0x4330
    slwi    r6, r4, 2
    lha     r0, 0x164(r3)
    lwz     r4, 0x138(r3)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x2978(rtoc)
    stw     r0, 0x1c(sp)
    lfs     f3, 0x154(r3)
    stw     r5, 0x18(sp)
    lfsx    f0, r4, r6
    lfd     f1, 0x18(sp)
    fsubs   f1, f1, f2
    fmadds  f0, f3, f1, f0
    stfsx   f0, r4, r6
    lwz     r4, 0x138(r3)
    lfs     f1, 0x158(r3)
    lfsx    f0, r4, r6
    fabs    f0, f0
    fcmpo   cr0, f0, f1
    ble-    branch_0x801c8f98
    lha     r0, 0x164(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    stfsx   f0, r4, r6
branch_0x801c8f98:
    li      r3, 0x1
    b       branch_0x801c8fa4

branch_0x801c8fa0:
    li      r3, 0x0
branch_0x801c8fa4:
    addi    sp, sp, 0x20
    blr


.globl calcRootMatrix__7TClosetFv
calcRootMatrix__7TClosetFv: # 0x801c8fac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    mr      r29, r3
    stw     r29, -0x6298(r13)
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x38(r29)
    addi    r30, sp, 0x14
    lfs     f2, -0x299c(rtoc)
    mr      r31, r3
    lfs     f1, 0x34(r29)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r29)
    fmuls   f1, f2, f1
    lfs     f7, 0x14(r29)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f6, 0x14c(r29)
    fctiwz  f5, f2
    lfs     f3, 0x18(r29)
    fctiwz  f0, f0
    stfd    f5, 0x58(sp)
    fadds   f2, f7, f6
    lfs     f1, 0x10(r29)
    mr      r3, r30
    stfd    f4, 0x50(sp)
    lwz     r4, 0x5c(sp)
    stfd    f0, 0x48(sp)
    lwz     r5, 0x54(sp)
    lwz     r6, 0x4c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    addi    r3, r30, 0x0
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x24(r29)
    lwz     r0, 0x28(r29)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r31)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x14c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lbz     r0, 0x16c(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801c90bc
    lis     r4, 0x8039
    lwz     r3, 0x74(r29)
    addi    r4, r4, 0x16b8
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x801c90bc
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801c90bc
    lwz     r3, 0x168(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801c90bc:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl moveObject__7TClosetFv
moveObject__7TClosetFv: # 0x801c90d8
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stfd    f29, 0x58(sp)
    stfd    f28, 0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x40(sp)
    addi    r28, r4, 0x1590
    bl      moveObject__10TLiveActorFv
    lbz     r0, 0x16c(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801c916c
    lwz     r3, 0x74(r29)
    addi    r4, r28, 0x128
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    bne-    branch_0x801c916c
    lbz     r3, 0x16d(r29)
    addi    r0, r3, 0x1
    stb     r0, 0x16d(r29)
    lbz     r0, 0x16d(r29)
    cmplwi  r0, 0x3c
    bne-    branch_0x801c9434
    lwz     r3, 0x74(r29)
    addi    r4, r28, 0x128
    bl      setBck__6MActorFPCc
    addi    r3, r29, 0x0
    addi    r4, r28, 0x134
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x801c9434

branch_0x801c916c:
    lis     r3, 0xb60b
    lfs     f29, -0x29b0(rtoc)
    lfs     f30, -0x296c(rtoc)
    addi    r31, r3, 0x60b7
    lfs     f31, -0x2970(rtoc)
    li      r30, 0x0
    li      r28, 0x0
    b       branch_0x801c9428

branch_0x801c918c:
    lwz     r3, 0x138(r29)
    lfsx    f2, r3, r28
    fcmpu   cr0, f29, f2
    beq-    branch_0x801c9420
    fabs    f1, f2
    lfs     f0, 0x160(r29)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c928c
    lwz     r3, 0x13c(r29)
    lfsx    f0, r3, r28
    fadds   f0, f0, f2
    stfsx   f0, r3, r28
    lwz     r0, 0x138(r29)
    add     r3, r0, r28
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f1, f29
    ble-    branch_0x801c91e0
    lfs     f0, 0x15c(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    b       branch_0x801c91ec

branch_0x801c91e0:
    lfs     f0, 0x15c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
branch_0x801c91ec:
    lwz     r0, 0x13c(r29)
    li      r4, 0x0
    add     r3, r0, r28
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x801c9214
    fsubs   f0, f0, f31
    li      r4, 0x1
    stfs    f0, 0x0(r3)
branch_0x801c9214:
    lwz     r0, 0x13c(r29)
    add     r3, r0, r28
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f29
    cror    2, 0, 2
    bne-    branch_0x801c9238
    fadds   f0, f0, f31
    li      r4, 0x1
    stfs    f0, 0x0(r3)
branch_0x801c9238:
    clrlwi. r0, r4, 24
    beq-    branch_0x801c9420
    lwz     r5, 0x138(r29)
    li      r4, 0x389c
    lwz     r3, gpMSound(r13)
    lfsx    f0, r5, r28
    fabs    f28, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c9420
    fmr     f1, f28
    addi    r4, r29, 0x10
    li      r3, 0x389c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801c9420

branch_0x801c928c:
    lwz     r3, 0x13c(r29)
    li      r4, 0x0
    lfsx    f0, r3, r28
    fadds   f0, f0, f2
    stfsx   f0, r3, r28
    lwz     r0, 0x13c(r29)
    add     r3, r0, r28
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x801c92c4
    fsubs   f0, f0, f31
    li      r4, 0x1
    stfs    f0, 0x0(r3)
branch_0x801c92c4:
    lwz     r0, 0x13c(r29)
    add     r3, r0, r28
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f29
    cror    2, 0, 2
    bne-    branch_0x801c92e8
    fadds   f0, f0, f31
    li      r4, 0x1
    stfs    f0, 0x0(r3)
branch_0x801c92e8:
    clrlwi. r0, r4, 24
    beq-    branch_0x801c9338
    lwz     r5, 0x138(r29)
    li      r4, 0x389c
    lwz     r3, gpMSound(r13)
    lfsx    f0, r5, r28
    fabs    f28, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c9338
    fmr     f1, f28
    addi    r4, r29, 0x10
    li      r3, 0x389c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801c9338:
    lwz     r3, 0x13c(r29)
    lfsx    f0, r3, r28
    fabs    f0, f0
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r4, 0x3c(sp)
    mulhw   r0, r31, r4
    add     r0, r0, r4
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xb4
    subf.   r0, r0, r4
    bne-    branch_0x801c9420
    lwz     r3, 0x138(r29)
    stfsx   f29, r3, r28
    lwz     r5, 0x13c(r29)
    lfsx    f0, r5, r28
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    beq-    branch_0x801c9398
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x801c9420
branch_0x801c9398:
    lwz     r0, 0x148(r29)
    li      r6, 0x0
    li      r3, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x801c93f0
branch_0x801c93b0:
    cmpw    r30, r6
    beq-    branch_0x801c93e4
    lwz     r4, 0x138(r29)
    lfsx    f0, r4, r3
    fcmpu   cr0, f29, f0
    bne-    branch_0x801c9434
    lfsx    f0, r5, r3
    fcmpo   cr0, f0, f30
    cror    2, 1, 2
    bne-    branch_0x801c93e4
    fcmpo   cr0, f0, f31
    bge-    branch_0x801c93e4
    b       branch_0x801c9434

branch_0x801c93e4:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x801c93b0
branch_0x801c93f0:
    li      r0, 0x1
    stb     r0, 0x16c(r29)
    li      r4, 0x484d
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c9420
    li      r3, 0x484d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801c9420:
    addi    r30, r30, 0x1
    addi    r28, r28, 0x4
branch_0x801c9428:
    lwz     r0, 0x148(r29)
    cmpw    r30, r0
    blt+    branch_0x801c918c
branch_0x801c9434:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lfd     f29, 0x58(sp)
    lfd     f28, 0x50(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x70
    blr


.globl initMapObj__7TClosetFv
initMapObj__7TClosetFv: # 0x801c9464
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x4
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x68(sp)
    li      r30, 0x0
    stw     r29, 0x64(sp)
    stw     r0, 0x148(r3)
    lfs     f0, -0x29b0(rtoc)
    stfs    f0, 0x14c(r3)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x150(r3)
    lfs     f0, -0x2968(rtoc)
    stfs    f0, 0x154(r3)
    lfs     f0, -0x2964(rtoc)
    stfs    f0, 0x158(r3)
    lfs     f0, -0x2960(rtoc)
    stfs    f0, 0x15c(r3)
    lfs     f0, -0x29ac(rtoc)
    stfs    f0, 0x160(r3)
    sth     r30, 0x164(r3)
    stb     r30, 0x16c(r3)
    stb     r30, 0x16d(r3)
    lwz     r0, 0x148(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x138(r31)
    lwz     r0, 0x148(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x13c(r31)
    li      r4, 0x0
    lfs     f1, -0x29b0(rtoc)
    lfs     f0, -0x296c(rtoc)
    b       branch_0x801c9510

branch_0x801c94f8:
    lwz     r3, 0x138(r31)
    addi    r4, r4, 0x1
    stfsx   f1, r3, r30
    lwz     r3, 0x13c(r31)
    stfsx   f0, r3, r30
    addi    r30, r30, 0x4
branch_0x801c9510:
    lwz     r0, 0x148(r31)
    cmpw    r4, r0
    blt+    branch_0x801c94f8
    mr      r3, r31
    bl      initMapObj__11TMapObjBaseFv
    lis     r3, 0x801d
    subi    r30, r3, 0x4058
    li      r29, 0x1
    b       branch_0x801c9548

branch_0x801c9534:
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    addi    r29, r29, 0x1
branch_0x801c9548:
    lwz     r0, 0x148(r31)
    cmpw    r29, r0
    ble+    branch_0x801c9534
    lfs     f1, -0x295c(rtoc)
    mr      r3, r31
    lfs     f0, 0x58(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x140(r31)
    lfs     f0, 0x5c(r31)
    stfs    f0, 0x144(r31)
    bl      getModel__10TLiveActorCFv
    lfs     f2, -0x299c(rtoc)
    addi    r3, sp, 0x14
    lfs     f1, 0x34(r31)
    lfs     f0, 0x38(r31)
    lfs     f3, 0x30(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    lfs     f6, -0x2988(rtoc)
    fmuls   f3, f2, f3
    fctiwz  f2, f1
    fctiwz  f0, f0
    fctiwz  f4, f3
    lfs     f5, 0x14c(r31)
    stfd    f2, 0x50(sp)
    lfs     f2, 0x14(r31)
    stfd    f4, 0x58(sp)
    fmadds  f2, f6, f5, f2
    lfs     f3, 0x18(r31)
    stfd    f0, 0x48(sp)
    lfs     f1, 0x10(r31)
    lwz     r4, 0x5c(sp)
    lwz     r5, 0x54(sp)
    lwz     r6, 0x4c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801c95ec
    mr      r3, r29
    bl      __ct__17TMapCollisionWarpFv
branch_0x801c95ec:
    stw     r29, 0x168(r31)
    lis     r3, 0x8039
    addi    r4, r3, 0x16e4
    lwz     r3, 0x168(r31)
    mr      r6, r31
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r30, 0x168(r31)
    addi    r3, sp, 0x14
    addi    r4, r30, 0x20
    bl      PSMTXCopy
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl __ct__7TClosetFPCc
__ct__7TClosetFPCc: # 0x801c965c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x7da4
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    subi    r4, r3, 0x253c
    li      r6, 0x0
    stw     r6, 0x138(r31)
    li      r5, 0x1
    addi    r0, r4, 0x24
    stw     r6, 0x13c(r31)
    mr      r3, r31
    stw     r6, 0x148(r31)
    lfs     f0, -0x29b0(rtoc)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x150(r31)
    lfs     f0, -0x2998(rtoc)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x2958(rtoc)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x2960(rtoc)
    stfs    f0, 0x15c(r31)
    lfs     f0, -0x2954(rtoc)
    stfs    f0, 0x160(r31)
    sth     r5, 0x164(r31)
    stw     r6, -0x6298(r13)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r6, 0x168(r31)
    stb     r6, 0x16c(r31)
    stb     r6, 0x16d(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchWater__8TDonchouFP9THitActor
touchWater__8TDonchouFP9THitActor: # 0x801c9708
    lfs     f2, 0x18(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, -0x2984(rtoc)
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c972c
    li      r3, 0x1
    blr

branch_0x801c972c:
    li      r3, 0x0
    blr


.globl calcRootMatrix__8TDonchouFv
calcRootMatrix__8TDonchouFv: # 0x801c9734
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    stw     r30, 0xb0(sp)
    stw     r29, 0xac(sp)
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x38(r31)
    addi    r29, sp, 0x5c
    lfs     f2, -0x299c(rtoc)
    mr      r30, r3
    lfs     f1, 0x34(r31)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r31)
    fmuls   f1, f2, f1
    lfs     f7, 0x14(r31)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f6, 0x140(r31)
    fctiwz  f5, f2
    lfs     f3, 0x18(r31)
    fctiwz  f0, f0
    stfd    f5, 0xa0(sp)
    fadds   f2, f7, f6
    lfs     f1, 0x10(r31)
    mr      r3, r29
    stfd    f4, 0x98(sp)
    lwz     r4, 0xa4(sp)
    stfd    f0, 0x90(sp)
    lwz     r5, 0x9c(sp)
    lwz     r6, 0x94(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    addi    r3, r29, 0x0
    addi    r4, r30, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r3, 0x14(r30)
    stw     r0, 0x18(r30)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r30)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x140(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x78(sp)
    lwz     r3, 0x144(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801c981c
    lbz     r0, 0x194(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801c981c
    lwz     r3, 0x148(r31)
    lbz     r0, 0x194(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801c981c
    li      r0, 0x1
    stb     r0, 0x13c(r31)
branch_0x801c981c:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c998c
    lwz     r4, gpMarDirector(r13)
    li      r3, 0x1
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x1
    beq-    branch_0x801c9848
    cmplwi  r0, 0x2
    beq-    branch_0x801c9848
    li      r3, 0x0
branch_0x801c9848:
    clrlwi. r0, r3, 24
    bne-    branch_0x801c985c
    lwz     r3, 0x14c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x14c(r31)
branch_0x801c985c:
    lwz     r0, 0x14c(r31)
    cmpwi   r0, 0x14
    ble-    branch_0x801c9948
    lwz     r3, 0x74(r31)
    subi    r4, rtoc, 0x2950
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x801c98b0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801c998c
    lwz     r3, 0x138(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    b       branch_0x801c998c

branch_0x801c98b0:
    lwz     r3, gpMSound(r13)
    li      r4, 0x4857
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c98e0
    addi    r4, r31, 0x10
    li      r3, 0x4857
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c98e0:
    lwz     r3, 0x74(r31)
    subi    r4, rtoc, 0x2950
    bl      setBck__6MActorFPCc
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x58(sp)
    addi    r0, sp, 0x58
    lis     r4, 0x8039
    stw     r0, 0x8(sp)
    addi    r4, r4, 0x16f4
    addi    r5, r31, 0x10
    lfs     f1, -0x29b0(rtoc)
    li      r6, -0x1
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x29ac(rtoc)
    lfs     f0, 0xc(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xc(r3)
    b       branch_0x801c998c

branch_0x801c9948:
    lwz     r4, gpMarDirector(r13)
    li      r3, 0x1
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x1
    beq-    branch_0x801c9968
    cmplwi  r0, 0x2
    beq-    branch_0x801c9968
    li      r3, 0x0
branch_0x801c9968:
    clrlwi. r0, r3, 24
    bne-    branch_0x801c998c
    lwz     r3, MarioActor(r13)
    lwz     r3, 0x4fc(r3)
    bl      onNeutralMarioKey__13TMarioGamePadFv
    lwz     r3, MarioActor(r13)
    li      r0, 0x5
    lwz     r3, 0x4fc(r3)
    stw     r0, 0xe8(r3)
branch_0x801c998c:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    addi    sp, sp, 0xb8
    blr


.globl loadAfter__8TDonchouFv
loadAfter__8TDonchouFv: # 0x801c99a8
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r4, 0x1590
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    bl      loadAfter__11TMapObjBaseFv
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r0, 0xe(r3)
    cmplwi  r0, 0xe
    bne-    branch_0x801c9a54
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c9a54
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x174
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x174
    mtlr    r12
    blrl
    stw     r3, 0x144(r29)
    addi    r3, r31, 0x180
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x180
    mtlr    r12
    blrl
    stw     r3, 0x148(r29)
branch_0x801c9a54:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl initMapObj__8TDonchouFv
initMapObj__8TDonchouFv: # 0x801c9a70
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x58(sp)
    lfs     f0, -0x29b0(rtoc)
    stfs    f0, 0x140(r3)
    stb     r0, 0x13c(r31)
    stw     r0, 0x148(r31)
    stw     r0, 0x144(r31)
    bl      initMapObj__11TMapObjBaseFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lfs     f2, -0x299c(rtoc)
    addi    r3, sp, 0xc
    lfs     f1, 0x34(r31)
    lfs     f0, 0x38(r31)
    lfs     f3, 0x30(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    lfs     f6, -0x2988(rtoc)
    fmuls   f3, f2, f3
    fctiwz  f2, f1
    fctiwz  f0, f0
    fctiwz  f4, f3
    lfs     f5, 0x140(r31)
    stfd    f2, 0x48(sp)
    lfs     f2, 0x14(r31)
    stfd    f4, 0x50(sp)
    fmadds  f2, f6, f5, f2
    lfs     f3, 0x18(r31)
    stfd    f0, 0x40(sp)
    lfs     f1, 0x10(r31)
    lwz     r4, 0x54(sp)
    lwz     r5, 0x4c(sp)
    lwz     r6, 0x44(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801c9b24
    mr      r3, r30
    bl      __ct__17TMapCollisionWarpFv
branch_0x801c9b24:
    stw     r30, 0x138(r31)
    lis     r3, 0x8039
    addi    r4, r3, 0x1720
    lwz     r3, 0x138(r31)
    mr      r6, r31
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r31, 0x138(r31)
    addi    r3, sp, 0xc
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __ct__8TDonchouFPCc
__ct__8TDonchouFPCc: # 0x801c9b88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x23cc
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    stb     r0, 0x13c(r31)
    lfs     f0, -0x29b0(rtoc)
    stfs    f0, 0x140(r31)
    stw     r0, 0x14c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchWater__16TCasinoPanelGateFP9THitActor
touchWater__16TCasinoPanelGateFP9THitActor: # 0x801c9be4
    stwu    sp, -0x20(sp)
    lbz     r0, 0x16d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801c9bfc
    li      r3, 0x1
    b       branch_0x801c9e60

branch_0x801c9bfc:
    lfs     f2, 0x18(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, -0x2984(rtoc)
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c9e5c
    li      r0, 0x1
    sth     r0, 0x164(r3)
    lfs     f0, -0x29a8(rtoc)
    lfs     f4, 0x144(r3)
    lfs     f5, 0x14(r3)
    lfs     f6, 0x14(r4)
    fmadds  f0, f0, f4, f5
    fcmpo   cr0, f6, f0
    ble-    branch_0x801c9ca0
    lfs     f1, 0x10(r3)
    lfs     f3, 0x140(r3)
    lfs     f2, 0x10(r4)
    fsubs   f0, f1, f3
    fcmpo   cr0, f2, f0
    bge-    branch_0x801c9c5c
    li      r4, 0xc
    b       branch_0x801c9c84

branch_0x801c9c5c:
    fcmpo   cr0, f2, f1
    bge-    branch_0x801c9c6c
    li      r4, 0xd
    b       branch_0x801c9c84

branch_0x801c9c6c:
    fadds   f0, f1, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x801c9c80
    li      r4, 0xf
    b       branch_0x801c9c84

branch_0x801c9c80:
    li      r4, 0xe
branch_0x801c9c84:
    lfs     f0, -0x2948(rtoc)
    fmadds  f0, f0, f4, f5
    fcmpo   cr0, f6, f0
    bge-    branch_0x801c9de4
    li      r0, -0x1
    sth     r0, 0x164(r3)
    b       branch_0x801c9de4

branch_0x801c9ca0:
    lfs     f0, -0x2988(rtoc)
    fmadds  f0, f0, f4, f5
    fcmpo   cr0, f6, f0
    ble-    branch_0x801c9d14
    lfs     f1, 0x10(r3)
    lfs     f3, 0x140(r3)
    lfs     f2, 0x10(r4)
    fsubs   f0, f1, f3
    fcmpo   cr0, f2, f0
    bge-    branch_0x801c9cd0
    li      r4, 0x8
    b       branch_0x801c9cf8

branch_0x801c9cd0:
    fcmpo   cr0, f2, f1
    bge-    branch_0x801c9ce0
    li      r4, 0x9
    b       branch_0x801c9cf8

branch_0x801c9ce0:
    fadds   f0, f1, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x801c9cf4
    li      r4, 0xb
    b       branch_0x801c9cf8

branch_0x801c9cf4:
    li      r4, 0xa
branch_0x801c9cf8:
    lfs     f0, -0x2968(rtoc)
    fmadds  f0, f0, f4, f5
    fcmpo   cr0, f6, f0
    bge-    branch_0x801c9de4
    li      r0, -0x1
    sth     r0, 0x164(r3)
    b       branch_0x801c9de4

branch_0x801c9d14:
    fadds   f0, f5, f4
    fcmpo   cr0, f6, f0
    ble-    branch_0x801c9d84
    lfs     f1, 0x10(r3)
    lfs     f3, 0x140(r3)
    lfs     f2, 0x10(r4)
    fsubs   f0, f1, f3
    fcmpo   cr0, f2, f0
    bge-    branch_0x801c9d40
    li      r4, 0x4
    b       branch_0x801c9d68

branch_0x801c9d40:
    fcmpo   cr0, f2, f1
    bge-    branch_0x801c9d50
    li      r4, 0x5
    b       branch_0x801c9d68

branch_0x801c9d50:
    fadds   f0, f1, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x801c9d64
    li      r4, 0x7
    b       branch_0x801c9d68

branch_0x801c9d64:
    li      r4, 0x6
branch_0x801c9d68:
    lfs     f0, -0x2944(rtoc)
    fmadds  f0, f0, f4, f5
    fcmpo   cr0, f6, f0
    bge-    branch_0x801c9de4
    li      r0, -0x1
    sth     r0, 0x164(r3)
    b       branch_0x801c9de4

branch_0x801c9d84:
    lfs     f1, 0x10(r3)
    lfs     f3, 0x140(r3)
    lfs     f2, 0x10(r4)
    fsubs   f0, f1, f3
    fcmpo   cr0, f2, f0
    bge-    branch_0x801c9da4
    li      r4, 0x0
    b       branch_0x801c9dcc

branch_0x801c9da4:
    fcmpo   cr0, f2, f1
    bge-    branch_0x801c9db4
    li      r4, 0x1
    b       branch_0x801c9dcc

branch_0x801c9db4:
    fadds   f0, f1, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x801c9dc8
    li      r4, 0x3
    b       branch_0x801c9dcc

branch_0x801c9dc8:
    li      r4, 0x2
branch_0x801c9dcc:
    lfs     f0, -0x29ac(rtoc)
    fmadds  f0, f0, f4, f5
    fcmpo   cr0, f6, f0
    bge-    branch_0x801c9de4
    li      r0, -0x1
    sth     r0, 0x164(r3)
branch_0x801c9de4:
    lha     r0, 0x164(r3)
    lis     r5, 0x4330
    lfd     f2, -0x2978(rtoc)
    slwi    r6, r4, 2
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    lwz     r4, 0x138(r3)
    stw     r5, 0x18(sp)
    lfs     f3, 0x154(r3)
    lfd     f1, 0x18(sp)
    lfsx    f0, r4, r6
    fsubs   f1, f1, f2
    fmadds  f0, f3, f1, f0
    stfsx   f0, r4, r6
    lwz     r4, 0x138(r3)
    lfs     f1, 0x158(r3)
    lfsx    f0, r4, r6
    fabs    f0, f0
    fcmpo   cr0, f0, f1
    ble-    branch_0x801c9e54
    lha     r0, 0x164(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    stfsx   f0, r4, r6
branch_0x801c9e54:
    li      r3, 0x1
    b       branch_0x801c9e60

branch_0x801c9e5c:
    li      r3, 0x0
branch_0x801c9e60:
    addi    sp, sp, 0x20
    blr


.globl calcRootMatrix__16TCasinoPanelGateFv
calcRootMatrix__16TCasinoPanelGateFv: # 0x801c9e68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    stw     r30, -0x6298(r13)
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x38(r30)
    mr      r31, r3
    lfs     f2, -0x299c(rtoc)
    addi    r3, r31, 0x20
    lfs     f1, 0x34(r30)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r30)
    fmuls   f1, f2, f1
    lfs     f7, 0x14(r30)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f6, 0x14c(r30)
    fctiwz  f5, f2
    lfs     f3, 0x18(r30)
    fctiwz  f0, f0
    stfd    f5, 0x28(sp)
    fadds   f2, f7, f6
    lfs     f1, 0x10(r30)
    stfd    f4, 0x20(sp)
    lwz     r4, 0x2c(sp)
    stfd    f0, 0x18(sp)
    lwz     r5, 0x24(sp)
    lwz     r6, 0x1c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r31)
    lfs     f1, -0x295c(rtoc)
    lfs     f0, 0x58(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x140(r30)
    lfs     f0, 0x5c(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r30)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl moveObject__16TCasinoPanelGateFv
moveObject__16TCasinoPanelGateFv: # 0x801c9f34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stfd    f28, 0x70(sp)
    stmw    r27, 0x5c(sp)
    mr      r29, r3
    bl      moveObject__10TLiveActorFv
    lfs     f1, 0x150(r29)
    lfs     f0, 0x14c(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r29)
    lbz     r0, 0x16d(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801ca05c
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r27, r3
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x2978(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x2964(rtoc)
    stw     r3, 0x54(sp)
    lfs     f3, 0x10(r27)
    stw     r0, 0x50(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    bge-    branch_0x801c9fe4
    lwz     r3, gpMSound(r13)
    li      r4, 0x4058
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c9fe4
    li      r3, 0x4058
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801c9fe4:
    lbz     r0, 0x16c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801ca324
    lha     r4, 0x8(r27)
    lis     r0, 0x4330
    lfd     f2, -0x2978(rtoc)
    addi    r3, r27, 0x0
    xoris   r4, r4, 0x8000
    stw     r4, 0x54(sp)
    lfs     f0, -0x2988(rtoc)
    stw     r0, 0x50(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fsubs   f1, f1, f0
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x801ca324
    li      r0, 0x1
    stb     r0, 0x16c(r29)
    li      r4, 0x484d
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ca324
    li      r3, 0x484d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x801ca324

branch_0x801ca05c:
    lis     r3, 0xb60b
    lfs     f29, -0x296c(rtoc)
    lfs     f30, -0x2970(rtoc)
    addi    r27, r3, 0x60b7
    lfs     f31, -0x29b0(rtoc)
    li      r31, 0x1
    li      r30, 0x0
    li      r28, 0x0
    b       branch_0x801ca2b8

branch_0x801ca080:
    lwz     r3, 0x138(r29)
    lfsx    f2, r3, r28
    fcmpu   cr0, f31, f2
    bne-    branch_0x801ca0a8
    lwz     r3, 0x13c(r29)
    lfsx    f0, r3, r28
    fcmpo   cr0, f0, f29
    bge-    branch_0x801ca2b0
    li      r31, 0x0
    b       branch_0x801ca2b0

branch_0x801ca0a8:
    fabs    f1, f2
    lfs     f0, 0x160(r29)
    li      r31, 0x0
    fcmpo   cr0, f1, f0
    ble-    branch_0x801ca19c
    lwz     r3, 0x13c(r29)
    lfsx    f0, r3, r28
    fadds   f0, f0, f2
    stfsx   f0, r3, r28
    lwz     r0, 0x138(r29)
    add     r3, r0, r28
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f1, f31
    ble-    branch_0x801ca0f0
    lfs     f0, 0x15c(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    b       branch_0x801ca0fc

branch_0x801ca0f0:
    lfs     f0, 0x15c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
branch_0x801ca0fc:
    lwz     r0, 0x13c(r29)
    li      r4, 0x0
    add     r3, r0, r28
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f30
    cror    2, 1, 2
    bne-    branch_0x801ca124
    fsubs   f0, f0, f30
    li      r4, 0x1
    stfs    f0, 0x0(r3)
branch_0x801ca124:
    lwz     r0, 0x13c(r29)
    add     r3, r0, r28
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x801ca148
    fadds   f0, f0, f30
    li      r4, 0x1
    stfs    f0, 0x0(r3)
branch_0x801ca148:
    clrlwi. r0, r4, 24
    beq-    branch_0x801ca2b0
    lwz     r5, 0x138(r29)
    li      r4, 0x389e
    lwz     r3, gpMSound(r13)
    lfsx    f0, r5, r28
    fabs    f28, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ca2b0
    fmr     f1, f28
    addi    r4, r29, 0x10
    li      r3, 0x389e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801ca2b0

branch_0x801ca19c:
    lwz     r3, 0x13c(r29)
    li      r4, 0x0
    lfsx    f0, r3, r28
    fadds   f0, f0, f2
    stfsx   f0, r3, r28
    lwz     r0, 0x13c(r29)
    add     r3, r0, r28
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f30
    cror    2, 1, 2
    bne-    branch_0x801ca1d4
    fsubs   f0, f0, f30
    li      r4, 0x1
    stfs    f0, 0x0(r3)
branch_0x801ca1d4:
    lwz     r0, 0x13c(r29)
    add     r3, r0, r28
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x801ca1f8
    fadds   f0, f0, f30
    li      r4, 0x1
    stfs    f0, 0x0(r3)
branch_0x801ca1f8:
    clrlwi. r0, r4, 24
    beq-    branch_0x801ca248
    lwz     r5, 0x138(r29)
    li      r4, 0x389e
    lwz     r3, gpMSound(r13)
    lfsx    f0, r5, r28
    fabs    f28, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ca248
    fmr     f1, f28
    addi    r4, r29, 0x10
    li      r3, 0x389e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801ca248:
    lwz     r5, 0x13c(r29)
    lfsx    f0, r5, r28
    fabs    f0, f0
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r4, 0x54(sp)
    mulhw   r0, r27, r4
    add     r0, r0, r4
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xb4
    subf.   r0, r0, r4
    bne-    branch_0x801ca2b0
    add     r3, r5, r28
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f29
    blt-    branch_0x801ca29c
    fcmpo   cr0, f0, f30
    cror    2, 1, 2
    bne-    branch_0x801ca2a4
branch_0x801ca29c:
    stfs    f31, 0x0(r3)
    b       branch_0x801ca2a8

branch_0x801ca2a4:
    stfs    f29, 0x0(r3)
branch_0x801ca2a8:
    lwz     r3, 0x138(r29)
    stfsx   f31, r3, r28
branch_0x801ca2b0:
    addi    r30, r30, 0x1
    addi    r28, r28, 0x4
branch_0x801ca2b8:
    lwz     r0, 0x148(r29)
    cmpw    r30, r0
    blt+    branch_0x801ca080
    clrlwi. r0, r31, 24
    beq-    branch_0x801ca324
    li      r0, 0x1
    stb     r0, 0x16d(r29)
    subi    r4, rtoc, 0x2990
    lwz     r3, 0x74(r29)
    bl      setBck__6MActorFPCc
    lis     r3, 0x8001
    addi    r3, r3, 0x25
    bl      startBGM__5MSBgmFUl
    lwz     r3, gpMSound(r13)
    li      r4, 0x4849
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ca31c
    addi    r4, r29, 0x10
    li      r3, 0x4849
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ca31c:
    mr      r3, r29
    bl      removeMapCollision__11TMapObjBaseFv
branch_0x801ca324:
    lmw     r27, 0x5c(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    addi    sp, sp, 0x90
    blr


.globl initMapObj__16TCasinoPanelGateFv
initMapObj__16TCasinoPanelGateFv: # 0x801ca348
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x10
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    stw     r0, 0x148(r3)
    lfs     f0, -0x2940(rtoc)
    stfs    f0, 0x14c(r3)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x150(r3)
    lfs     f0, -0x293c(rtoc)
    stfs    f0, 0x154(r3)
    lfs     f0, -0x2938(rtoc)
    stfs    f0, 0x158(r3)
    lfs     f0, -0x2954(rtoc)
    stfs    f0, 0x15c(r3)
    lfs     f0, -0x2998(rtoc)
    stfs    f0, 0x160(r3)
    sth     r31, 0x164(r3)
    lwz     r0, 0x148(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x138(r29)
    lwz     r0, 0x148(r29)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x13c(r29)
    li      r4, 0x0
    lfs     f0, -0x29b0(rtoc)
    b       branch_0x801ca3e8

branch_0x801ca3d0:
    lwz     r3, 0x138(r29)
    addi    r4, r4, 0x1
    stfsx   f0, r3, r31
    lwz     r3, 0x13c(r29)
    stfsx   f0, r3, r31
    addi    r31, r31, 0x4
branch_0x801ca3e8:
    lwz     r0, 0x148(r29)
    cmpw    r4, r0
    blt+    branch_0x801ca3d0
    mr      r3, r29
    bl      initMapObj__11TMapObjBaseFv
    lis     r3, 0x801d
    subi    r31, r3, 0x4058
    li      r30, 0x1
    b       branch_0x801ca41c

branch_0x801ca40c:
    lwz     r3, 0x74(r29)
    mr      r5, r31
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    addi    r30, r30, 0x1
branch_0x801ca41c:
    lwz     r0, 0x148(r29)
    clrlwi  r4, r30, 16
    cmpw    r4, r0
    ble+    branch_0x801ca40c
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__16TCasinoPanelGateFPCc
__ct__16TCasinoPanelGateFPCc: # 0x801ca448
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x7da4
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    subi    r4, r3, 0x2268
    li      r6, 0x0
    stw     r6, 0x138(r31)
    li      r5, 0x1
    addi    r0, r4, 0x24
    stw     r6, 0x13c(r31)
    mr      r3, r31
    stw     r6, 0x148(r31)
    lfs     f0, -0x29b0(rtoc)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x150(r31)
    lfs     f0, -0x2998(rtoc)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x2958(rtoc)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x2960(rtoc)
    stfs    f0, 0x15c(r31)
    lfs     f0, -0x2954(rtoc)
    stfs    f0, 0x160(r31)
    sth     r5, 0x164(r31)
    stw     r6, -0x6298(r13)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r6, 0x168(r31)
    stb     r6, 0x16c(r31)
    stb     r6, 0x16d(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getResultFromAng__13TItemSlotDrumFf
getResultFromAng__13TItemSlotDrumFf: # 0x801ca4f4
    lfs     f0, -0x2934(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ca508
    li      r3, 0x0
    blr

branch_0x801ca508:
    lfs     f0, -0x2930(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ca51c
    li      r3, 0x1
    blr

branch_0x801ca51c:
    lfs     f0, -0x292c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ca530
    li      r3, 0x2
    blr

branch_0x801ca530:
    li      r3, 0x3
    blr


.globl getForcastResult__13TItemSlotDrumFi
getForcastResult__13TItemSlotDrumFi: # 0x801ca538
    stwu    sp, -0x28(sp)
    slwi    r0, r4, 2
    li      r6, 0x0
    lwz     r5, 0x13c(r3)
    lwz     r4, 0x138(r3)
    lfsx    f4, r5, r0
    lfsx    f5, r4, r0
    lfs     f2, -0x2970(rtoc)
    lfs     f1, -0x29b0(rtoc)
branch_0x801ca55c:
    fabs    f3, f5
    lfs     f0, 0x160(r3)
    fcmpo   cr0, f3, f0
    ble-    branch_0x801ca5b0
    fcmpo   cr0, f5, f1
    fadds   f4, f4, f5
    ble-    branch_0x801ca584
    lfs     f0, 0x15c(r3)
    fsubs   f5, f5, f0
    b       branch_0x801ca58c

branch_0x801ca584:
    lfs     f0, 0x15c(r3)
    fadds   f5, f5, f0
branch_0x801ca58c:
    fcmpo   cr0, f4, f2
    cror    2, 1, 2
    bne-    branch_0x801ca59c
    fsubs   f4, f4, f2
branch_0x801ca59c:
    fcmpo   cr0, f4, f1
    cror    2, 0, 2
    bne-    branch_0x801ca640
    fadds   f4, f4, f2
    b       branch_0x801ca640

branch_0x801ca5b0:
    fadds   f4, f4, f5
    fcmpo   cr0, f4, f2
    cror    2, 1, 2
    bne-    branch_0x801ca5c4
    fsubs   f4, f4, f2
branch_0x801ca5c4:
    fcmpo   cr0, f4, f1
    cror    2, 0, 2
    bne-    branch_0x801ca5d4
    fadds   f4, f4, f2
branch_0x801ca5d4:
    fabs    f0, f4
    lwz     r5, 0x168(r3)
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r4, 0x24(sp)
    divw    r0, r4, r5
    mullw   r0, r0, r5
    subf.   r0, r0, r4
    bne-    branch_0x801ca640
    xoris   r0, r5, 0x8000
    lfd     f1, -0x2978(rtoc)
    stw     r0, 0x24(sp)
    lis     r3, 0x4330
    stw     r3, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f4, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    mullw   r0, r5, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r3, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f4, f0, f1
    b       branch_0x801ca64c

branch_0x801ca640:
    addi    r6, r6, 0x1
    cmpwi   r6, 0x2710
    ble+    branch_0x801ca55c
branch_0x801ca64c:
    lfs     f0, -0x2934(rtoc)
    fcmpo   cr0, f4, f0
    bge-    branch_0x801ca660
    li      r3, 0x0
    b       branch_0x801ca68c

branch_0x801ca660:
    lfs     f0, -0x2930(rtoc)
    fcmpo   cr0, f4, f0
    bge-    branch_0x801ca674
    li      r3, 0x1
    b       branch_0x801ca68c

branch_0x801ca674:
    lfs     f0, -0x292c(rtoc)
    fcmpo   cr0, f4, f0
    bge-    branch_0x801ca688
    li      r3, 0x2
    b       branch_0x801ca68c

branch_0x801ca688:
    li      r3, 0x3
branch_0x801ca68c:
    addi    sp, sp, 0x28
    blr


.globl generateItem__13TItemSlotDrumFv
generateItem__13TItemSlotDrumFv: # 0x801ca694
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x180(sp)
    stfd    f31, 0x178(sp)
    stfd    f30, 0x170(sp)
    stfd    f29, 0x168(sp)
    stfd    f28, 0x160(sp)
    stfd    f27, 0x158(sp)
    stfd    f26, 0x150(sp)
    stfd    f25, 0x148(sp)
    stfd    f24, 0x140(sp)
    stfd    f23, 0x138(sp)
    stfd    f22, 0x130(sp)
    stfd    f21, 0x128(sp)
    stfd    f20, 0x120(sp)
    stfd    f19, 0x118(sp)
    stmw    r25, 0xfc(sp)
    mr      r29, r3
    lwz     r4, 0x13c(r3)
    lfs     f1, 0x0(r4)
    bl      getResultFromAng__13TItemSlotDrumFf
    addi    r25, r3, 0x0
    li      r26, 0x1
    li      r30, 0x4
branch_0x801ca6f4:
    lwz     r4, 0x13c(r29)
    mr      r3, r29
    lfsx    f1, r4, r30
    bl      getResultFromAng__13TItemSlotDrumFf
    cmpw    r25, r3
    beq-    branch_0x801ca714
    li      r25, -0x1
    b       branch_0x801ca724

branch_0x801ca714:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x801ca6f4
branch_0x801ca724:
    cmpwi   r25, 0x0
    bne-    branch_0x801ca744
    lis     r3, 0x8001
    addi    r3, r3, 0x25
    bl      startBGM__5MSBgmFUl
    li      r0, 0x1
    stb     r0, 0x194(r29)
    b       branch_0x801cab38

branch_0x801ca744:
    lwz     r4, 0x13c(r29)
    mr      r3, r29
    lfs     f1, 0x0(r4)
    bl      getResultFromAng__13TItemSlotDrumFf
    addi    r25, r3, 0x0
    li      r26, 0x1
    li      r30, 0x4
branch_0x801ca760:
    lwz     r4, 0x13c(r29)
    mr      r3, r29
    lfsx    f1, r4, r30
    bl      getResultFromAng__13TItemSlotDrumFf
    cmpw    r25, r3
    beq-    branch_0x801ca780
    li      r25, -0x1
    b       branch_0x801ca790

branch_0x801ca780:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x801ca760
branch_0x801ca790:
    cmpwi   r25, 0x1
    bne-    branch_0x801ca890
    lis     r4, 0x8039
    lwz     r3, -0x70b0(r13)
    addi    r5, r4, 0x1730
    addi    r4, r29, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r25, r3
    beq-    branch_0x801cab38
    lfs     f1, -0x299c(rtoc)
    addi    r4, sp, 0xac
    lfs     f0, 0x34(r29)
    addi    r3, sp, 0xb8
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r8, -0x5ea8(r13)
    lwz     r6, -0x5ea4(r13)
    mr      r5, r4
    fctiwz  f0, f0
    stfd    f0, 0xf0(sp)
    lwz     r7, 0xf4(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f1
    stfs    f3, 0xb8(sp)
    lfs     f2, -0x29b0(rtoc)
    stfs    f2, 0xbc(sp)
    stfs    f1, 0xc0(sp)
    stfs    f2, 0xc4(sp)
    stfs    f2, 0xc8(sp)
    lfs     f1, -0x2998(rtoc)
    stfs    f1, 0xcc(sp)
    stfs    f2, 0xd0(sp)
    stfs    f2, 0xd4(sp)
    stfs    f0, 0xd8(sp)
    stfs    f2, 0xdc(sp)
    stfs    f3, 0xe0(sp)
    stfs    f2, 0xe4(sp)
    stfs    f2, 0xac(sp)
    lfs     f0, -0x2928(rtoc)
    stfs    f0, 0xb0(sp)
    lfs     f0, -0x2924(rtoc)
    stfs    f0, 0xb4(sp)
    bl      PSMTXMultVec
    lfs     f1, 0x10(r25)
    mr      r3, r25
    lfs     f0, 0xac(sp)
    mr      r4, r29
    fadds   f0, f1, f0
    stfs    f0, 0x10(r25)
    lfs     f1, 0x14(r25)
    lfs     f0, 0xb0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r25)
    lfs     f1, 0x18(r25)
    lfs     f0, 0xb4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r25)
    bl      initItemAttacker__7TTelesaFP9THitActor
    b       branch_0x801cab38

branch_0x801ca890:
    lwz     r4, 0x13c(r29)
    mr      r3, r29
    lfs     f1, 0x0(r4)
    bl      getResultFromAng__13TItemSlotDrumFf
    addi    r25, r3, 0x0
    li      r26, 0x1
    li      r30, 0x4
branch_0x801ca8ac:
    lwz     r4, 0x13c(r29)
    mr      r3, r29
    lfsx    f1, r4, r30
    bl      getResultFromAng__13TItemSlotDrumFf
    cmpw    r25, r3
    beq-    branch_0x801ca8cc
    li      r25, -0x1
    b       branch_0x801ca8dc

branch_0x801ca8cc:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x801ca8ac
branch_0x801ca8dc:
    cmpwi   r25, -0x1
    beq-    branch_0x801cab08
    lwz     r4, 0x13c(r29)
    mr      r3, r29
    lfs     f21, -0x29b0(rtoc)
    li      r31, 0x1
    lfs     f1, 0x0(r4)
    bl      getResultFromAng__13TItemSlotDrumFf
    addi    r25, r3, 0x0
    li      r26, 0x1
    li      r30, 0x4
branch_0x801ca908:
    lwz     r4, 0x13c(r29)
    mr      r3, r29
    lfsx    f1, r4, r30
    bl      getResultFromAng__13TItemSlotDrumFf
    cmpw    r25, r3
    beq-    branch_0x801ca928
    li      r25, -0x1
    b       branch_0x801ca938

branch_0x801ca928:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x801ca908
branch_0x801ca938:
    cmpwi   r25, 0x2
    bne-    branch_0x801ca948
    li      r31, 0x3
    lfs     f21, -0x2920(rtoc)
branch_0x801ca948:
    lfs     f29, -0x291c(rtoc)
    addi    r25, sp, 0x7c
    lfs     f30, -0x2958(rtoc)
    li      r30, 0x0
    lfs     f31, -0x2918(rtoc)
    lfs     f23, -0x299c(rtoc)
    lis     r26, 0x4330
    lfd     f24, -0x2978(rtoc)
    lis     r27, 0x2000
    lfs     f25, -0x29b0(rtoc)
    lfs     f26, -0x2998(rtoc)
    lfs     f27, -0x2928(rtoc)
    lfs     f28, -0x29a4(rtoc)
    lfs     f20, -0x2914(rtoc)
    b       branch_0x801caafc

branch_0x801ca984:
    xoris   r0, r30, 0x8000
    lfs     f0, 0x34(r29)
    stw     r0, 0xf4(sp)
    addi    r4, sp, 0x70
    fsubs   f0, f0, f21
    lwz     r0, -0x5eac(r13)
    stw     r26, 0xf0(sp)
    lwz     r8, -0x5ea8(r13)
    mr      r3, r25
    lfd     f1, 0xf0(sp)
    mr      r5, r4
    lwz     r6, -0x5ea4(r13)
    fsubs   f1, f1, f24
    fmadds  f0, f21, f1, f0
    fmuls   f0, f23, f0
    fctiwz  f0, f0
    stfd    f0, 0xe8(sp)
    lwz     r7, 0xec(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    lfsx    f2, r6, r0
    fneg    f0, f1
    stfs    f2, 0x7c(sp)
    stfs    f25, 0x80(sp)
    stfs    f1, 0x84(sp)
    stfs    f25, 0x88(sp)
    stfs    f25, 0x8c(sp)
    stfs    f26, 0x90(sp)
    stfs    f25, 0x94(sp)
    stfs    f25, 0x98(sp)
    stfs    f0, 0x9c(sp)
    stfs    f25, 0xa0(sp)
    stfs    f2, 0xa4(sp)
    stfs    f25, 0xa8(sp)
    stfs    f25, 0x70(sp)
    stfs    f27, 0x74(sp)
    stfs    f28, 0x78(sp)
    bl      PSMTXMultVec
    lfs     f3, 0x10(r29)
    addi    r4, r27, 0xe
    lfs     f1, 0x70(sp)
    li      r5, 0x0
    lfs     f2, 0x18(r29)
    lfs     f0, 0x78(sp)
    fadds   f1, f3, f1
    lwz     r3, gpItemManager(r13)
    fadds   f3, f2, f0
    lfs     f2, 0x14(r29)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr.     r28, r3
    beq-    branch_0x801caaf8
    lfs     f1, 0x10(r28)
    addi    r3, sp, 0x70
    lfs     f0, 0x70(sp)
    mr      r4, r3
    fadds   f0, f1, f0
    stfs    f0, 0x10(r28)
    lfs     f1, 0x14(r28)
    lfs     f0, 0x74(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r28)
    lfs     f1, 0x18(r28)
    lfs     f0, 0x78(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r28)
    bl      MsVECNormalize__FP3VecP3Vec
    stfs    f29, 0x68(sp)
    stfs    f30, 0x6c(sp)
    lfs     f2, 0x78(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x68(sp)
    fmuls   f22, f31, f2
    fsubs   f19, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x70(sp)
    stw     r0, 0xec(sp)
    fmuls   f0, f31, f0
    lfs     f1, 0x68(sp)
    stw     r26, 0xe8(sp)
    lfd     f2, 0xe8(sp)
    stfs    f0, 0xac(r28)
    fsubs   f0, f2, f24
    fmuls   f0, f20, f0
    fmuls   f0, f19, f0
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r28)
    stfs    f22, 0xb4(r28)
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r28)
branch_0x801caaf8:
    addi    r30, r30, 0x1
branch_0x801caafc:
    cmpw    r30, r31
    blt+    branch_0x801ca984
    b       branch_0x801cab38

branch_0x801cab08:
    lwz     r3, gpMSound(r13)
    li      r4, 0x483d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cab38
    addi    r4, r29, 0x10
    li      r3, 0x483d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cab38:
    lmw     r25, 0xfc(sp)
    lwz     r0, 0x184(sp)
    lfd     f31, 0x178(sp)
    lfd     f30, 0x170(sp)
    mtlr    r0
    lfd     f29, 0x168(sp)
    lfd     f28, 0x160(sp)
    lfd     f27, 0x158(sp)
    lfd     f26, 0x150(sp)
    lfd     f25, 0x148(sp)
    lfd     f24, 0x140(sp)
    lfd     f23, 0x138(sp)
    lfd     f22, 0x130(sp)
    lfd     f21, 0x128(sp)
    lfd     f20, 0x120(sp)
    lfd     f19, 0x118(sp)
    addi    sp, sp, 0x180
    blr


.globl touchWater__13TItemSlotDrumFP9THitActor
touchWater__13TItemSlotDrumFP9THitActor: # 0x801cab80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stfd    f30, 0x78(sp)
    stfd    f29, 0x70(sp)
    stfd    f28, 0x68(sp)
    stfd    f27, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    stw     r28, 0x50(sp)
    lbz     r0, 0x194(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801cabcc
    lbz     r0, 0x1a2(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801cabd4
branch_0x801cabcc:
    li      r3, 0x1
    b       branch_0x801cacdc

branch_0x801cabd4:
    li      r0, 0x64
    stw     r0, 0x2c(sp)
    li      r0, 0x96
    stw     r0, 0x30(sp)
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    subf    r30, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f31, -0x2978(rtoc)
    stw     r0, 0x4c(sp)
    xoris   r0, r30, 0x8000
    lis     r29, 0x4330
    lfs     f28, -0x2914(rtoc)
    stw     r29, 0x48(sp)
    lwz     r3, 0x2c(sp)
    li      r28, 0x0
    stw     r0, 0x44(sp)
    li      r30, 0x0
    lfd     f0, 0x48(sp)
    stw     r29, 0x40(sp)
    fsubs   f1, f0, f31
    lfd     f0, 0x40(sp)
    fmuls   f1, f28, f1
    fsubs   f0, f0, f31
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    add     r0, r3, r0
    stw     r0, 0x1a4(r31)
    lfs     f29, -0x29ac(rtoc)
    lfs     f30, -0x2910(rtoc)
    b       branch_0x801cacc4

branch_0x801cac5c:
    add     r3, r31, r28
    li      r0, 0x1
    stb     r0, 0x19f(r3)
    li      r0, 0x0
    stb     r0, 0x19c(r3)
    stfs    f29, 0x24(sp)
    stfs    f30, 0x28(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x24(sp)
    fsubs   f27, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x24(sp)
    stw     r0, 0x3c(sp)
    addi    r28, r28, 0x1
    lfs     f2, 0x158(r31)
    stw     r29, 0x38(sp)
    lwz     r3, 0x138(r31)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f31
    fmuls   f0, f28, f0
    fmuls   f0, f27, f0
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfsx   f0, r3, r30
    addi    r30, r30, 0x4
branch_0x801cacc4:
    lwz     r0, 0x148(r31)
    cmpw    r28, r0
    blt+    branch_0x801cac5c
    li      r0, 0x0
    stb     r0, 0x1a2(r31)
    li      r3, 0x1
branch_0x801cacdc:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    mtlr    r0
    lfd     f29, 0x70(sp)
    lfd     f28, 0x68(sp)
    lfd     f27, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x88
    blr


.globl calcRootMatrix__13TItemSlotDrumFv
calcRootMatrix__13TItemSlotDrumFv: # 0x801cad10
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    stw     r30, -0x6298(r13)
    lfs     f1, -0x29b0(rtoc)
    lwz     r3, 0x138(r3)
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801cad48
    li      r0, 0x1
branch_0x801cad48:
    lwz     r3, 0x138(r30)
    lfs     f0, 0x4(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801cad5c
    li      r0, 0x1
branch_0x801cad5c:
    lwz     r3, 0x138(r30)
    lfs     f0, 0x8(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801cad70
    li      r0, 0x1
branch_0x801cad70:
    clrlwi. r0, r0, 24
    beq-    branch_0x801cada8
    lwz     r3, gpMSound(r13)
    li      r4, 0x308d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cada8
    addi    r4, r30, 0x10
    li      r3, 0x308d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cada8:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x38(r30)
    mr      r31, r3
    lfs     f2, -0x299c(rtoc)
    addi    r3, r31, 0x20
    lfs     f1, 0x34(r30)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r30)
    fmuls   f1, f2, f1
    lfs     f7, 0x14(r30)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f6, 0x14c(r30)
    fctiwz  f5, f2
    lfs     f3, 0x18(r30)
    fctiwz  f0, f0
    stfd    f5, 0x28(sp)
    fsubs   f2, f7, f6
    lfs     f1, 0x10(r30)
    stfd    f4, 0x20(sp)
    lwz     r4, 0x2c(sp)
    stfd    f0, 0x18(sp)
    lwz     r5, 0x24(sp)
    lwz     r6, 0x1c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl moveObject__13TItemSlotDrumFv
moveObject__13TItemSlotDrumFv: # 0x801cae40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stfd    f28, 0xb8(sp)
    stfd    f27, 0xb0(sp)
    stfd    f26, 0xa8(sp)
    stfd    f25, 0xa0(sp)
    stmw    r24, 0x80(sp)
    mr      r29, r3
    bl      moveObject__10TLiveActorFv
    lfs     f1, 0x150(r29)
    lfs     f0, 0x14c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r29)
    lwz     r3, 0x1a4(r29)
    cmpwi   r3, 0x0
    ble-    branch_0x801cafd8
    addi    r0, r3, 0x1
    stw     r0, 0x1a4(r29)
    lwz     r0, 0x1a4(r29)
    cmpwi   r0, 0xa0
    ble-    branch_0x801cafd8
    li      r28, 0x0
    stw     r28, 0x1a4(r29)
    li      r0, 0x2
    stw     r28, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r3, 0x54(sp)
    lwz     r0, 0x58(sp)
    subf    r30, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2978(rtoc)
    stw     r0, 0x7c(sp)
    lis     r27, 0x4330
    xoris   r0, r30, 0x8000
    lfs     f1, -0x2914(rtoc)
    stw     r27, 0x78(sp)
    lwz     r3, 0x54(sp)
    li      r4, 0x1
    stw     r0, 0x74(sp)
    lfd     f0, 0x78(sp)
    stw     r27, 0x70(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x70(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    add     r3, r3, r0
    add     r3, r3, r29
    stb     r4, 0x19c(r3)
    lfs     f1, -0x29b0(rtoc)
    lfs     f0, -0x29a0(rtoc)
    stfs    f1, 0x48(sp)
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x48(sp)
    fsubs   f26, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2978(rtoc)
    stw     r0, 0x64(sp)
    lfs     f0, -0x2914(rtoc)
    stw     r27, 0x60(sp)
    lfs     f1, 0x48(sp)
    lfd     f2, 0x60(sp)
    lfs     f4, 0x1a8(r29)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f26, f0
    fadds   f1, f1, f0
    fcmpo   cr0, f1, f4
    bge-    branch_0x801caf90
    lfs     f0, -0x2958(rtoc)
    fcmpo   cr0, f4, f0
    ble-    branch_0x801caf90
    stw     r28, 0x198(r29)
    b       branch_0x801cafc8

branch_0x801caf90:
    lfs     f0, -0x290c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cafa8
    li      r0, 0x2
    stw     r0, 0x198(r29)
    b       branch_0x801cafc8

branch_0x801cafa8:
    lfs     f0, -0x2908(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cafc0
    li      r0, 0x3
    stw     r0, 0x198(r29)
    b       branch_0x801cafc8

branch_0x801cafc0:
    li      r0, 0x1
    stw     r0, 0x198(r29)
branch_0x801cafc8:
    lfs     f1, 0x1a8(r29)
    lfs     f0, -0x2988(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x1a8(r29)
branch_0x801cafd8:
    lfs     f26, -0x29b0(rtoc)
    li      r30, 0x0
    lfs     f27, -0x2998(rtoc)
    li      r28, 0x0
    lfd     f28, -0x2978(rtoc)
    lfs     f29, -0x2914(rtoc)
    li      r27, 0x0
    lfs     f30, -0x2904(rtoc)
    lis     r31, 0x4330
    lfs     f31, -0x2970(rtoc)
    b       branch_0x801cb370

branch_0x801cb004:
    add     r25, r29, r30
    addi    r26, r25, 0x19c
    lbz     r0, 0x19c(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x801cb03c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      getForcastResult__13TItemSlotDrumFi
    lwz     r0, 0x198(r29)
    cmpw    r0, r3
    bne-    branch_0x801cb03c
    li      r0, 0x0
    stb     r0, 0x0(r26)
    stb     r0, 0x19f(r25)
branch_0x801cb03c:
    lwz     r3, 0x138(r29)
    lfsx    f2, r3, r27
    fcmpu   cr0, f26, f2
    beq-    branch_0x801cb364
    fabs    f1, f2
    lfs     f0, 0x160(r29)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801cb0ec
    lwz     r3, 0x13c(r29)
    lfsx    f0, r3, r27
    fadds   f0, f0, f2
    stfsx   f0, r3, r27
    lbz     r0, 0x19f(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x801cb0a8
    lwz     r0, 0x138(r29)
    add     r3, r0, r27
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f1, f26
    ble-    branch_0x801cb09c
    lfs     f0, 0x15c(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    b       branch_0x801cb0a8

branch_0x801cb09c:
    lfs     f0, 0x15c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
branch_0x801cb0a8:
    lwz     r0, 0x13c(r29)
    add     r3, r0, r27
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x801cb0c8
    fsubs   f0, f0, f31
    stfs    f0, 0x0(r3)
branch_0x801cb0c8:
    lwz     r0, 0x13c(r29)
    add     r3, r0, r27
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f26
    cror    2, 0, 2
    bne-    branch_0x801cb364
    fadds   f0, f0, f31
    stfs    f0, 0x0(r3)
    b       branch_0x801cb364

branch_0x801cb0ec:
    lwz     r3, 0x13c(r29)
    lfsx    f0, r3, r27
    fadds   f0, f0, f2
    stfsx   f0, r3, r27
    lwz     r0, 0x13c(r29)
    add     r3, r0, r27
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x801cb11c
    fsubs   f0, f0, f31
    stfs    f0, 0x0(r3)
branch_0x801cb11c:
    lwz     r0, 0x13c(r29)
    add     r3, r0, r27
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f26
    cror    2, 0, 2
    bne-    branch_0x801cb13c
    fadds   f0, f0, f31
    stfs    f0, 0x0(r3)
branch_0x801cb13c:
    lbz     r0, 0x19f(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x801cb364
    lwz     r4, 0x13c(r29)
    lwz     r5, 0x168(r29)
    lfsx    f0, r4, r27
    fabs    f0, f0
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r3, 0x64(sp)
    divw    r0, r3, r5
    mullw   r0, r0, r5
    subf.   r0, r0, r3
    bne-    branch_0x801cb364
    xoris   r0, r5, 0x8000
    stw     r0, 0x64(sp)
    add     r3, r4, r27
    lfs     f1, 0x0(r3)
    li      r4, 0x292c
    stw     r31, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f28
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    mullw   r0, r5, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x74(sp)
    stw     r31, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f28
    stfs    f0, 0x0(r3)
    lwz     r3, 0x138(r29)
    stfsx   f26, r3, r27
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cb1f4
    addi    r4, r29, 0x10
    li      r3, 0x292c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cb1f4:
    lwz     r3, 0x138(r29)
    li      r0, 0x1
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f26, f0
    beq-    branch_0x801cb20c
    li      r0, 0x0
branch_0x801cb20c:
    lwz     r3, 0x138(r29)
    lfs     f0, 0x4(r3)
    fcmpu   cr0, f26, f0
    beq-    branch_0x801cb220
    li      r0, 0x0
branch_0x801cb220:
    lwz     r3, 0x138(r29)
    lfs     f0, 0x8(r3)
    fcmpu   cr0, f26, f0
    beq-    branch_0x801cb234
    li      r0, 0x0
branch_0x801cb234:
    clrlwi. r0, r0, 24
    beq-    branch_0x801cb24c
    li      r0, 0x1
    stb     r0, 0x1a2(r29)
    mr      r3, r29
    bl      generateItem__13TItemSlotDrumFv
branch_0x801cb24c:
    li      r24, 0x0
    b       branch_0x801cb2c8

branch_0x801cb254:
    add     r25, r29, r24
    addi    r26, r25, 0x19f
    lbz     r0, 0x19f(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x801cb2c4
    stfs    f26, 0x3c(sp)
    stfs    f27, 0x40(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x3c(sp)
    fsubs   f25, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x3c(sp)
    stw     r0, 0x64(sp)
    stw     r31, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f29, f0
    fmuls   f0, f25, f0
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    bne-    branch_0x801cb2bc
    li      r0, 0x1
    stb     r0, 0x19c(r25)
    b       branch_0x801cb2c4

branch_0x801cb2bc:
    li      r0, 0x0
    stb     r0, 0x0(r26)
branch_0x801cb2c4:
    addi    r24, r24, 0x1
branch_0x801cb2c8:
    lwz     r0, 0x148(r29)
    cmpw    r24, r0
    blt+    branch_0x801cb254
    lwz     r0, 0x168(r29)
    lwz     r3, 0x13c(r29)
    xoris   r0, r0, 0x8000
    stw     r0, 0x64(sp)
    lfsx    f1, r3, r27
    stw     r31, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f28
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cb348
    add     r5, r29, r28
    li      r3, 0xff
    sth     r3, 0x170(r5)
    li      r0, 0x46
    li      r4, 0x4849
    sth     r3, 0x172(r5)
    sth     r0, 0x174(r5)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cb364
    addi    r4, r29, 0x10
    li      r3, 0x4849
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801cb364

branch_0x801cb348:
    add     r4, r29, r28
    li      r0, 0x78
    sth     r0, 0x170(r4)
    li      r3, 0xe6
    li      r0, 0xff
    sth     r3, 0x172(r4)
    sth     r0, 0x174(r4)
branch_0x801cb364:
    addi    r30, r30, 0x1
    addi    r28, r28, 0x8
    addi    r27, r27, 0x4
branch_0x801cb370:
    lwz     r0, 0x148(r29)
    cmpw    r30, r0
    blt+    branch_0x801cb004
    lmw     r24, 0x80(sp)
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    lfd     f29, 0xc0(sp)
    lfd     f28, 0xb8(sp)
    lfd     f27, 0xb0(sp)
    lfd     f26, 0xa8(sp)
    lfd     f25, 0xa0(sp)
    addi    sp, sp, 0xd8
    blr


.globl loadAfter__13TItemSlotDrumFv
loadAfter__13TItemSlotDrumFv: # 0x801cb3ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stfd    f30, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    stw     r28, 0x30(sp)
    bl      loadAfter__11TMapObjBaseFv
    lfs     f30, -0x2998(rtoc)
    addi    r31, sp, 0xc
    lfs     f31, -0x29b0(rtoc)
    addi    r30, sp, 0x18
    addi    r29, sp, 0x24
    li      r28, 0x0
branch_0x801cb3ec:
    stfs    f30, 0xc(sp)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    stfs    f31, 0x18(sp)
    addi    r6, r31, 0x0
    subi    r3, rtoc, 0x2900
    stfs    f31, 0x24(sp)
    stfs    f30, 0x10(sp)
    stfs    f31, 0x1c(sp)
    stfs    f31, 0x28(sp)
    stfs    f30, 0x14(sp)
    stfs    f31, 0x20(sp)
    stfs    f31, 0x2c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r28, r28, 0x1
    cmpwi   r28, 0x6
    blt+    branch_0x801cb3ec
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    mtlr    r0
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x50
    blr


.globl __ct__13TItemSlotDrumFPCc
__ct__13TItemSlotDrumFPCc: # 0x801cb458
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      __ct__17TSirenaRollMapObjFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1f84
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    li      r5, 0x0
    subi    r3, r3, 0x20f8
    stb     r5, 0x194(r31)
    addi    r4, r3, 0x24
    li      r0, 0x1
    stw     r3, 0x0(r31)
    mr      r3, r31
    stw     r4, 0x20(r31)
    stw     r5, 0x198(r31)
    stw     r5, 0x1a4(r31)
    lfs     f0, -0x291c(rtoc)
    stfs    f0, 0x1a8(r31)
    stb     r5, 0x19c(r31)
    stb     r0, 0x19f(r31)
    stb     r5, 0x19d(r31)
    stb     r0, 0x1a0(r31)
    stb     r5, 0x19e(r31)
    stb     r0, 0x1a1(r31)
    stb     r0, 0x1a2(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__9TSlotDrumFv
__dt__9TSlotDrumFv: # 0x801cb4e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cb568
    lis     r3, 0x803d
    subi    r3, r3, 0x1f84
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cb558
    lis     r3, 0x803b
    addi    r3, r3, 0x7da4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cb558
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cb558:
    extsh.  r0, r31
    ble-    branch_0x801cb568
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cb568:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl touchWater__9TSlotDrumFP9THitActor
touchWater__9TSlotDrumFP9THitActor: # 0x801cb584
    stwu    sp, -0x20(sp)
    lbz     r0, 0x194(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801cb59c
    li      r3, 0x1
    b       branch_0x801cb6a4

branch_0x801cb59c:
    lfs     f2, 0x10(r3)
    lfs     f1, 0x10(r4)
    lfs     f0, -0x28f8(rtoc)
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cb6a0
    lfs     f1, -0x28f4(rtoc)
    lfs     f0, 0x140(r3)
    lfs     f2, 0x18(r3)
    fmuls   f1, f1, f0
    lfs     f3, 0x18(r4)
    fsubs   f0, f2, f1
    fcmpo   cr0, f3, f0
    bge-    branch_0x801cb5f4
    lfs     f1, 0x34(r3)
    li      r4, 0x2
    lfs     f0, -0x29b0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cb620
    li      r4, 0x0
    b       branch_0x801cb620

branch_0x801cb5f4:
    fadds   f0, f2, f1
    fcmpo   cr0, f3, f0
    ble-    branch_0x801cb61c
    lfs     f1, 0x34(r3)
    li      r4, 0x0
    lfs     f0, -0x29b0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cb620
    li      r4, 0x2
    b       branch_0x801cb620

branch_0x801cb61c:
    li      r4, 0x1
branch_0x801cb620:
    li      r0, 0x1
    sth     r0, 0x164(r3)
    lis     r5, 0x4330
    slwi    r6, r4, 2
    lha     r0, 0x164(r3)
    lwz     r4, 0x138(r3)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x2978(rtoc)
    stw     r0, 0x1c(sp)
    lfs     f3, 0x154(r3)
    stw     r5, 0x18(sp)
    lfsx    f0, r4, r6
    lfd     f1, 0x18(sp)
    fsubs   f1, f1, f2
    fmadds  f0, f3, f1, f0
    stfsx   f0, r4, r6
    lwz     r4, 0x138(r3)
    lfs     f1, 0x158(r3)
    lfsx    f0, r4, r6
    fabs    f0, f0
    fcmpo   cr0, f0, f1
    ble-    branch_0x801cb698
    lha     r0, 0x164(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    stfsx   f0, r4, r6
branch_0x801cb698:
    li      r3, 0x1
    b       branch_0x801cb6a4

branch_0x801cb6a0:
    li      r3, 0x0
branch_0x801cb6a4:
    addi    sp, sp, 0x20
    blr


.globl calcRootMatrix__9TSlotDrumFv
calcRootMatrix__9TSlotDrumFv: # 0x801cb6ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    stw     r30, -0x6298(r13)
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x38(r30)
    mr      r31, r3
    lfs     f2, -0x299c(rtoc)
    addi    r3, r31, 0x20
    lfs     f1, 0x34(r30)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r30)
    fmuls   f1, f2, f1
    lfs     f7, 0x14(r30)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f6, 0x14c(r30)
    fctiwz  f5, f2
    lfs     f3, 0x18(r30)
    fctiwz  f0, f0
    stfd    f5, 0x20(sp)
    fsubs   f2, f7, f6
    lfs     f1, 0x10(r30)
    stfd    f4, 0x18(sp)
    lwz     r4, 0x24(sp)
    stfd    f0, 0x10(sp)
    lwz     r5, 0x1c(sp)
    lwz     r6, 0x14(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl moveObject__9TSlotDrumFv
moveObject__9TSlotDrumFv: # 0x801cb75c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stmw    r25, 0x5c(sp)
    mr      r29, r3
    bl      moveObject__10TLiveActorFv
    lfs     f1, 0x150(r29)
    li      r30, 0x0
    lfs     f0, 0x14c(r29)
    li      r28, 0x0
    li      r27, 0x0
    fadds   f0, f1, f0
    lis     r25, 0x4330
    lis     r26, 0x8001
    stfs    f0, 0x14(r29)
    lfs     f29, -0x29b0(rtoc)
    lfd     f30, -0x2978(rtoc)
    lfs     f31, -0x2970(rtoc)
    b       branch_0x801cbbfc

branch_0x801cb7b4:
    lwz     r3, 0x138(r29)
    lfsx    f0, r3, r27
    fcmpu   cr0, f29, f0
    beq-    branch_0x801cbbf0
    addi    r31, r27, 0x188
    fabs    f1, f0
    add     r31, r29, r31
    lfs     f0, 0x0(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x0(r31)
    lwz     r0, 0x168(r29)
    lfs     f1, 0x0(r31)
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    stw     r25, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f30
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801cb8c4
    cmpwi   r30, 0x1
    stfs    f29, 0x0(r31)
    beq-    branch_0x801cb860
    bge-    branch_0x801cb820
    cmpwi   r30, 0x0
    bge-    branch_0x801cb82c
    b       branch_0x801cb8c4

branch_0x801cb820:
    cmpwi   r30, 0x3
    bge-    branch_0x801cb8c4
    b       branch_0x801cb894

branch_0x801cb82c:
    lwz     r3, gpMSound(r13)
    li      r4, 0x388e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cb8c4
    addi    r4, r29, 0x10
    li      r3, 0x388e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801cb8c4

branch_0x801cb860:
    lwz     r3, gpMSound(r13)
    li      r4, 0x3890
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cb8c4
    addi    r4, r29, 0x10
    li      r3, 0x3890
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801cb8c4

branch_0x801cb894:
    lwz     r3, gpMSound(r13)
    li      r4, 0x388f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cb8c4
    addi    r4, r29, 0x10
    li      r3, 0x388f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cb8c4:
    lwz     r3, 0x138(r29)
    lfs     f0, 0x160(r29)
    lfsx    f1, r3, r27
    fabs    f2, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x801cb960
    lwz     r3, 0x13c(r29)
    lfsx    f0, r3, r27
    fadds   f0, f0, f1
    stfsx   f0, r3, r27
    lwz     r0, 0x138(r29)
    add     r3, r0, r27
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f1, f29
    ble-    branch_0x801cb910
    lfs     f0, 0x15c(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    b       branch_0x801cb91c

branch_0x801cb910:
    lfs     f0, 0x15c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
branch_0x801cb91c:
    lwz     r0, 0x13c(r29)
    add     r3, r0, r27
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x801cb93c
    fsubs   f0, f0, f31
    stfs    f0, 0x0(r3)
branch_0x801cb93c:
    lwz     r0, 0x13c(r29)
    add     r3, r0, r27
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f29
    cror    2, 0, 2
    bne-    branch_0x801cbbf0
    fadds   f0, f0, f31
    stfs    f0, 0x0(r3)
    b       branch_0x801cbbf0

branch_0x801cb960:
    lwz     r3, 0x13c(r29)
    lfsx    f0, r3, r27
    fadds   f0, f0, f1
    stfsx   f0, r3, r27
    lwz     r0, 0x13c(r29)
    add     r3, r0, r27
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x801cb990
    fsubs   f0, f0, f31
    stfs    f0, 0x0(r3)
branch_0x801cb990:
    lwz     r0, 0x13c(r29)
    add     r3, r0, r27
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f29
    cror    2, 0, 2
    bne-    branch_0x801cb9b0
    fadds   f0, f0, f31
    stfs    f0, 0x0(r3)
branch_0x801cb9b0:
    lwz     r4, 0x13c(r29)
    lwz     r3, 0x168(r29)
    lfsx    f0, r4, r27
    fabs    f0, f0
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r4, 0x54(sp)
    divw    r0, r4, r3
    mullw   r0, r0, r3
    subf.   r0, r0, r4
    bne-    branch_0x801cbbf0
    lwz     r3, 0x138(r29)
    stfsx   f29, r3, r27
    lfs     f0, 0x0(r31)
    fcmpu   cr0, f29, f0
    beq-    branch_0x801cbab0
    cmpwi   r30, 0x1
    beq-    branch_0x801cba48
    bge-    branch_0x801cba08
    cmpwi   r30, 0x0
    bge-    branch_0x801cba14
    b       branch_0x801cbaac

branch_0x801cba08:
    cmpwi   r30, 0x3
    bge-    branch_0x801cbaac
    b       branch_0x801cba7c

branch_0x801cba14:
    lwz     r3, gpMSound(r13)
    li      r4, 0x388e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cbaac
    addi    r4, r29, 0x10
    li      r3, 0x388e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801cbaac

branch_0x801cba48:
    lwz     r3, gpMSound(r13)
    li      r4, 0x3890
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cbaac
    addi    r4, r29, 0x10
    li      r3, 0x3890
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801cbaac

branch_0x801cba7c:
    lwz     r3, gpMSound(r13)
    li      r4, 0x388f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cbaac
    addi    r4, r29, 0x10
    li      r3, 0x388f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cbaac:
    stfs    f29, 0x0(r31)
branch_0x801cbab0:
    lwz     r0, 0x168(r29)
    lwz     r3, 0x13c(r29)
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    lfsx    f1, r3, r27
    stw     r25, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f30
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cbb24
    add     r5, r29, r28
    li      r3, 0xff
    sth     r3, 0x170(r5)
    li      r0, 0x46
    li      r4, 0x4849
    sth     r3, 0x172(r5)
    sth     r0, 0x174(r5)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cbb40
    addi    r4, r29, 0x10
    li      r3, 0x4849
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801cbb40

branch_0x801cbb24:
    add     r4, r29, r28
    li      r0, 0x78
    sth     r0, 0x170(r4)
    li      r3, 0xe6
    li      r0, 0xff
    sth     r3, 0x172(r4)
    sth     r0, 0x174(r4)
branch_0x801cbb40:
    lwz     r4, 0x168(r29)
    lwz     r5, 0x13c(r29)
    xoris   r0, r4, 0x8000
    stw     r0, 0x54(sp)
    lfsx    f1, r5, r27
    stw     r25, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f30
    fcmpo   cr0, f1, f0
    blt-    branch_0x801cbb74
    fcmpo   cr0, f1, f31
    cror    2, 1, 2
    bne-    branch_0x801cbbf0
branch_0x801cbb74:
    lwz     r3, 0x148(r29)
    xoris   r0, r4, 0x8000
    li      r6, 0x0
    cmpwi   r3, 0x0
    mtctr   r3
    li      r3, 0x0
    ble-    branch_0x801cbbe0
branch_0x801cbb90:
    cmpw    r30, r6
    beq-    branch_0x801cbbd4
    lwz     r4, 0x138(r29)
    lfsx    f0, r4, r3
    fcmpu   cr0, f29, f0
    bne-    branch_0x801cbc08
    stw     r0, 0x54(sp)
    lfsx    f1, r5, r3
    stw     r25, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f30
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801cbbd4
    fcmpo   cr0, f1, f31
    bge-    branch_0x801cbbd4
    b       branch_0x801cbc08

branch_0x801cbbd4:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x801cbb90
branch_0x801cbbe0:
    addi    r3, r26, 0x25
    bl      startBGM__5MSBgmFUl
    li      r0, 0x1
    stb     r0, 0x194(r29)
branch_0x801cbbf0:
    addi    r30, r30, 0x1
    addi    r28, r28, 0x8
    addi    r27, r27, 0x4
branch_0x801cbbfc:
    lwz     r0, 0x148(r29)
    cmpw    r30, r0
    blt+    branch_0x801cb7b4
branch_0x801cbc08:
    lmw     r25, 0x5c(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    addi    sp, sp, 0x90
    blr


.globl initNeonMatColor__9TSlotDrumFv
initNeonMatColor__9TSlotDrumFv: # 0x801cbc28
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x1688
    stwu    sp, -0x58(sp)
    stmw    r25, 0x3c(sp)
    mr      r30, r3
    addi    r27, sp, 0x28
    li      r31, 0x0
    li      r29, 0x0
    li      r28, 0x0
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x30(sp)
branch_0x801cbc6c:
    add     r25, r30, r28
    li      r0, 0x78
    sth     r0, 0x170(r25)
    li      r3, 0xe6
    li      r0, 0xff
    sth     r3, 0x172(r25)
    mr      r3, r30
    sth     r0, 0x174(r25)
    sth     r0, 0x176(r25)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    lwz     r4, 0x74(r30)
    lwz     r3, 0xb4(r3)
    lwz     r26, 0x4(r4)
    lwzx    r4, r27, r29
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r4, r3, 16
    addi    r3, r26, 0x0
    addi    r6, r25, 0x170
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    addi    r31, r31, 0x1
    cmpwi   r31, 0x3
    addi    r29, r29, 0x4
    addi    r28, r28, 0x8
    blt+    branch_0x801cbc6c
    lmw     r25, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl initMapObj__9TSlotDrumFv
initMapObj__9TSlotDrumFv: # 0x801cbce8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x3
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x38(sp)
    li      r30, 0x0
    stw     r29, 0x34(sp)
    stw     r0, 0x148(r3)
    li      r0, 0x5a
    lfs     f0, -0x28f0(rtoc)
    stfs    f0, 0x14c(r3)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x150(r3)
    stb     r30, 0x194(r3)
    lfs     f0, -0x2988(rtoc)
    stfs    f0, 0x154(r3)
    lfs     f0, -0x2958(rtoc)
    stfs    f0, 0x158(r3)
    lfs     f0, -0x2960(rtoc)
    stfs    f0, 0x15c(r3)
    lfs     f0, -0x29ac(rtoc)
    stfs    f0, 0x160(r3)
    sth     r30, 0x164(r3)
    stw     r0, 0x168(r3)
    lwz     r0, 0x148(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x138(r31)
    lwz     r0, 0x148(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x13c(r31)
    li      r5, 0x0
    lis     r4, 0x4330
    lfs     f3, -0x29b0(rtoc)
    lfs     f2, -0x28ec(rtoc)
    lfd     f1, -0x2978(rtoc)
    b       branch_0x801cbdc4

branch_0x801cbd88:
    addi    r0, r5, 0x1
    lwz     r3, 0x138(r31)
    xoris   r0, r0, 0x8000
    stw     r0, 0x2c(sp)
    addi    r0, r30, 0x188
    addi    r5, r5, 0x1
    stw     r4, 0x28(sp)
    lfd     f0, 0x28(sp)
    stfsx   f3, r3, r30
    fsubs   f0, f0, f1
    lwz     r3, 0x13c(r31)
    fmuls   f0, f2, f0
    stfsx   f0, r3, r30
    addi    r30, r30, 0x4
    stfsx   f3, r31, r0
branch_0x801cbdc4:
    lwz     r0, 0x148(r31)
    cmpw    r5, r0
    blt+    branch_0x801cbd88
    mr      r3, r31
    bl      initMapObj__11TMapObjBaseFv
    li      r30, 0x0
    b       branch_0x801cbde4

branch_0x801cbde0:
    addi    r30, r30, 0x1
branch_0x801cbde4:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r30, 24
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x801cbde0
    lis     r3, 0x801d
    subi    r30, r3, 0x4058
    li      r29, 0x1
    b       branch_0x801cbe24

branch_0x801cbe10:
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    addi    r29, r29, 0x1
branch_0x801cbe24:
    lwz     r0, 0x148(r31)
    cmpw    r29, r0
    ble+    branch_0x801cbe10
    lfs     f1, 0x58(r31)
    mr      r3, r31
    lfs     f0, -0x29a8(rtoc)
    fdivs   f0, f1, f0
    stfs    f0, 0x140(r31)
    lfs     f0, 0x5c(r31)
    stfs    f0, 0x144(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x170(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl __ct__9TSlotDrumFPCc
__ct__9TSlotDrumFPCc: # 0x801cbe78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x7da4
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    subi    r4, r3, 0x1f84
    li      r6, 0x0
    stw     r6, 0x138(r31)
    li      r5, 0x1
    addi    r0, r4, 0x24
    stw     r6, 0x13c(r31)
    mr      r3, r31
    stw     r6, 0x148(r31)
    lfs     f0, -0x29b0(rtoc)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x150(r31)
    lfs     f0, -0x2998(rtoc)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x2958(rtoc)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x2960(rtoc)
    stfs    f0, 0x15c(r31)
    lfs     f0, -0x2954(rtoc)
    stfs    f0, 0x160(r31)
    sth     r5, 0x164(r31)
    stw     r6, -0x6298(r13)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stb     r6, 0x194(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__17TSirenaRollMapObjFPCc
__ct__17TSirenaRollMapObjFPCc: # 0x801cbf1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x7da4
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r4, 0x138(r31)
    stw     r4, 0x13c(r31)
    stw     r4, 0x148(r31)
    lfs     f0, -0x29b0(rtoc)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x150(r31)
    lfs     f0, -0x2998(rtoc)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x2958(rtoc)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x2960(rtoc)
    stfs    f0, 0x15c(r31)
    lfs     f0, -0x2954(rtoc)
    stfs    f0, 0x160(r31)
    sth     r0, 0x164(r31)
    stw     r4, -0x6298(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl partsRollCallback__FP7J3DNodei
partsRollCallback__FP7J3DNodei: # 0x801cbfa8
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    bne-    branch_0x801cc0e4
    lwz     r0, -0x6298(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x801cbfe0
    li      r3, 0x1
    b       branch_0x801cc0e8

branch_0x801cbfe0:
    lhz     r31, 0x18(r3)
    mr      r3, r0
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mulli   r0, r31, 0x30
    lfs     f1, -0x29b0(rtoc)
    lwz     r3, -0x6298(r13)
    stfs    f1, 0x58(sp)
    subi    r31, r31, 0x1
    mr      r4, r31
    stfs    f1, 0x68(sp)
    add     r30, r5, r0
    stfs    f1, 0x78(sp)
    lfs     f3, 0x2c(r3)
    lfs     f2, 0x28(r3)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f1, 0x54(sp)
    stfs    f1, 0x5c(sp)
    stfs    f2, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f1, 0x6c(sp)
    stfs    f1, 0x70(sp)
    stfs    f3, 0x74(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x6298(r13)
    fmr     f30, f1
    mr      r4, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x6298(r13)
    fmr     f31, f1
    mr      r4, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    fmr     f2, f31
    addi    r3, sp, 0x1c
    fmr     f3, f30
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, r30, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0x1c
    bl      PSMTXConcat
    addi    r3, r30, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0x4c
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r31, r3, 0x4788
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0x1c
    bl      PSMTXConcat
    addi    r5, r31, 0x0
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4c
    bl      PSMTXConcat
branch_0x801cc0e4:
    li      r3, 0x1
branch_0x801cc0e8:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    addi    sp, sp, 0x98
    blr


.globl switchStop__9TRouletteFv
switchStop__9TRouletteFv: # 0x801cc108
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r3, 0x150(r3)
    lbz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801cc210
    lwz     r31, MarioHitActorPos(r13)
    bl      SMS_GetMarioGrLevel__Fv
    lfs     f2, -0x2920(rtoc)
    lfs     f0, 0x4(r31)
    fadds   f1, f2, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x801cc1a8
    lfs     f1, -0x29b0(rtoc)
    lfs     f0, 0x13c(r30)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801cc1a8
    lwz     r3, 0x150(r30)
    li      r0, 0x0
    li      r4, 0x2924
    stb     r0, 0x6c(r3)
    stfs    f1, 0x13c(r30)
    sth     r0, 0x148(r30)
    sth     r0, 0x14a(r30)
    sth     r0, 0x14c(r30)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cc1a8
    addi    r4, r30, 0x10
    li      r3, 0x2924
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cc1a8:
    lwz     r3, 0x150(r30)
    lbzu    r0, 0x6c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801cc210
    lbz     r0, 0x141(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801cc210
    li      r0, 0x0
    stb     r0, 0x0(r3)
    li      r4, 0x2924
    sth     r0, 0x148(r30)
    sth     r0, 0x14a(r30)
    sth     r0, 0x14c(r30)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cc208
    addi    r4, r30, 0x10
    li      r3, 0x2924
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cc208:
    li      r0, 0x1
    stb     r0, 0x140(r30)
branch_0x801cc210:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl setRollSp__9TRouletteFf
setRollSp__9TRouletteFf: # 0x801cc228
    stfs    f1, 0x13c(r3)
    li      r4, 0x0
    li      r0, 0xff
    sth     r4, 0x148(r3)
    sth     r4, 0x14a(r3)
    sth     r0, 0x14c(r3)
    lwz     r3, 0x150(r3)
    stb     r4, 0x6c(r3)
    blr


.globl calcRootMatrix__9TRouletteFv
calcRootMatrix__9TRouletteFv: # 0x801cc24c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x38(r30)
    mr      r31, r3
    lfs     f2, -0x299c(rtoc)
    addi    r3, r31, 0x20
    lfs     f1, 0x34(r30)
    fmuls   f0, f2, f0
    lfs     f4, 0x30(r30)
    fmuls   f1, f2, f1
    lfs     f3, 0x18(r30)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f1, 0x10(r30)
    fctiwz  f5, f2
    lfs     f2, 0x14(r30)
    fctiwz  f0, f0
    stfd    f4, 0x18(sp)
    stfd    f5, 0x20(sp)
    lwz     r5, 0x1c(sp)
    stfd    f0, 0x10(sp)
    lwz     r4, 0x24(sp)
    lwz     r6, 0x14(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl moveObject__9TRouletteFv
moveObject__9TRouletteFv: # 0x801cc2f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    bl      moveObject__10TLiveActorFv
    lbz     r0, 0x142(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801cc324
    lfs     f1, 0x34(r31)
    lfs     f0, 0x13c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
branch_0x801cc324:
    lbz     r0, 0x141(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801cc398
    lbz     r0, 0x140(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801cc398
    lwz     r3, MarioActor(r13)
    lwz     r3, 0x4fc(r3)
    bl      onNeutralMarioKey__13TMarioGamePadFv
    lwz     r3, MarioActor(r13)
    li      r0, 0x5
    li      r4, 0x2125
    lwz     r3, 0x4fc(r3)
    stw     r0, 0xe8(r3)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cc388
    addi    r4, r31, 0x10
    li      r3, 0x2125
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cc388:
    lfs     f1, 0x14(r31)
    lfs     f0, -0x2998(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x801cc398:
    lwz     r4, 0x74(r31)
    lwz     r3, 0x150(r31)
    lwz     r4, 0x4(r4)
    lfs     f1, 0x14(r31)
    addi    r5, r3, 0x10
    lwz     r3, 0x58(r4)
    lfs     f0, -0x29a0(rtoc)
    addi    r3, r3, 0x30
    lfs     f2, 0x2c(r3)
    fsubs   f1, f1, f0
    lfs     f0, 0xc(r3)
    stfs    f0, 0x0(r5)
    stfs    f1, 0x4(r5)
    stfs    f2, 0x8(r5)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl perform__9TRouletteFUlPQ26JDrama9TGraphics
perform__9TRouletteFUlPQ26JDrama9TGraphics: # 0x801cc3e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lwz     r3, 0x150(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl initMapObj__9TRouletteFv
initMapObj__9TRouletteFv: # 0x801cc444
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r4, 0x1590
    stw     r30, 0x98(sp)
    mr      r30, r3
    stw     r29, 0x94(sp)
    lfs     f0, -0x28e8(rtoc)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    bl      initMapObj__11TMapObjBaseFv
    li      r29, 0x0
    b       branch_0x801cc4c8

branch_0x801cc484:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    mr      r4, r29
    lwz     r3, 0xb4(r3)
    bl      getName__10JUTNameTabCFUs
    subi    r4, rtoc, 0x28e4
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801cc4c4
    lwz     r3, 0x74(r30)
    addi    r4, r29, 0x0
    addi    r6, r30, 0x148
    lwz     r3, 0x4(r3)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
branch_0x801cc4c4:
    addi    r29, r29, 0x1
branch_0x801cc4c8:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r29, 16
    lhz     r0, 0x24(r3)
    cmplw   r4, r0
    blt+    branch_0x801cc484
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801cc520
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1b4
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1ca8
    stw     r3, 0x0(r29)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r29)
    stw     r30, 0x68(r29)
    stb     r0, 0x6c(r29)
branch_0x801cc520:
    stw     r29, 0x150(r30)
    addi    r3, r31, 0x1c8
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x1c8
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x5c
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x5c(sp)
    addi    r3, sp, 0x7c
    addi    r4, sp, 0x58
    stw     r0, 0x58(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x7c(sp)
    addi    r5, sp, 0x68
    addi    r4, r31, 0x0
    stw     r0, 0x78(sp)
    addi    r3, sp, 0x64
    addi    r6, r30, 0x150
    lwz     r0, 0x78(sp)
    stw     r0, 0x68(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lis     r3, 0x803f
    lfs     f1, -0x28e8(rtoc)
    subi    r3, r3, 0x6900
    lfs     f2, -0x29a0(rtoc)
    lbz     r0, 0xe(r3)
    cmplwi  r0, 0xe
    bne-    branch_0x801cc5bc
    lfs     f1, -0x28dc(rtoc)
    lfs     f2, -0x28d8(rtoc)
branch_0x801cc5bc:
    fmr     f3, f1
    lis     r4, 0x4000
    fmr     f4, f2
    lwz     r3, 0x150(r30)
    addi    r4, r4, 0x19a
    li      r5, 0x2
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x150(r30)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl __ct__9TRouletteFPCc
__ct__9TRouletteFPCc: # 0x801cc608
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1e10
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803f
    stw     r0, 0x20(r31)
    subi    r3, r3, 0x6900
    li      r0, 0x0
    lfs     f0, -0x28e8(rtoc)
    li      r4, 0xff
    addi    r5, r3, 0xe
    stfs    f0, 0x138(r31)
    lfs     f0, -0x29b0(rtoc)
    stfs    f0, 0x13c(r31)
    stb     r0, 0x140(r31)
    stb     r0, 0x141(r31)
    stb     r0, 0x142(r31)
    lfs     f0, -0x2954(rtoc)
    stfs    f0, 0x144(r31)
    stw     r0, 0x150(r31)
    sth     r0, 0x148(r31)
    sth     r0, 0x14a(r31)
    sth     r0, 0x14c(r31)
    sth     r4, 0x14e(r31)
    lbz     r0, 0xe(r3)
    cmplwi  r0, 0xe
    bne-    branch_0x801cc6a8
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801cc6a8
    li      r0, 0x1
    stb     r0, 0x141(r31)
    sth     r4, 0x14c(r31)
branch_0x801cc6a8:
    lbz     r0, 0x0(r5)
    cmplwi  r0, 0x38
    bne-    branch_0x801cc6c4
    li      r0, 0xff
    sth     r0, 0x14c(r31)
    li      r0, 0x1
    stb     r0, 0x142(r31)
branch_0x801cc6c4:
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl perform__11TRouletteSwFUlPQ26JDrama9TGraphics
perform__11TRouletteSwFUlPQ26JDrama9TGraphics: # 0x801cc6dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r3, 0x68(r31)
    bl      switchStop__9TRouletteFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl receiveMessage__11TRouletteSwFP9THitActorUl
receiveMessage__11TRouletteSwFP9THitActorUl: # 0x801cc710
    cmplwi  r5, 0x1
    bne-    branch_0x801cc728
    li      r0, 0x1
    stb     r0, 0x6c(r3)
    li      r3, 0x1
    blr

branch_0x801cc728:
    li      r3, 0x0
    blr


.globl __dt__13TPanelRevolveFv
__dt__13TPanelRevolveFv: # 0x801cc730
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cc798
    lis     r3, 0x803d
    subi    r3, r3, 0x2cd4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cc788
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cc788:
    extsh.  r0, r31
    ble-    branch_0x801cc798
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cc798:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TChestRevolveFv
__dt__13TChestRevolveFv: # 0x801cc7b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cc81c
    lis     r3, 0x803d
    subi    r3, r3, 0x2b70
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cc80c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cc80c:
    extsh.  r0, r31
    ble-    branch_0x801cc81c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cc81c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TWarpAreaActorFv
__dt__14TWarpAreaActorFv: # 0x801cc838
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cc8a0
    lis     r3, 0x803d
    subi    r3, r3, 0x2a0c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cc890
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801cc890:
    extsh.  r0, r31
    ble-    branch_0x801cc8a0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cc8a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TSirenaCasinoRoofFv
__dt__17TSirenaCasinoRoofFv: # 0x801cc8bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cc924
    lis     r3, 0x803d
    subi    r3, r3, 0x2968
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cc914
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cc914:
    extsh.  r0, r31
    ble-    branch_0x801cc924
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cc924:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TSirenabossWallFv
__dt__15TSirenabossWallFv: # 0x801cc940
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cc9a8
    lis     r3, 0x803d
    subi    r3, r3, 0x2804
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cc998
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cc998:
    extsh.  r0, r31
    ble-    branch_0x801cc9a8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cc9a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TSakuCasinoFv
__dt__11TSakuCasinoFv: # 0x801cc9c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cca2c
    lis     r3, 0x803d
    subi    r3, r3, 0x26a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cca1c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cca1c:
    extsh.  r0, r31
    ble-    branch_0x801cca2c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cca2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__7TClosetFv
__dt__7TClosetFv: # 0x801cca48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ccac8
    lis     r3, 0x803d
    subi    r3, r3, 0x253c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ccab8
    lis     r3, 0x803b
    addi    r3, r3, 0x7da4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ccab8
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801ccab8:
    extsh.  r0, r31
    ble-    branch_0x801ccac8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ccac8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getRollAngY__7TClosetCFi
getRollAngY__7TClosetCFi: # 0x801ccae4
    lwz     r3, 0x13c(r3)
    slwi    r0, r4, 2
    lfsx    f1, r3, r0
    blr


.globl __dt__8TDonchouFv
__dt__8TDonchouFv: # 0x801ccaf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ccb5c
    lis     r3, 0x803d
    subi    r3, r3, 0x23cc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ccb4c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801ccb4c:
    extsh.  r0, r31
    ble-    branch_0x801ccb5c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ccb5c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TCasinoPanelGateFv
__dt__16TCasinoPanelGateFv: # 0x801ccb78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ccbf8
    lis     r3, 0x803d
    subi    r3, r3, 0x2268
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ccbe8
    lis     r3, 0x803b
    addi    r3, r3, 0x7da4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ccbe8
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801ccbe8:
    extsh.  r0, r31
    ble-    branch_0x801ccbf8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ccbf8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getRollAngX__16TCasinoPanelGateCFi
getRollAngX__16TCasinoPanelGateCFi: # 0x801ccc14
    lwz     r3, 0x13c(r3)
    slwi    r0, r4, 2
    lfsx    f1, r3, r0
    blr


.globl __dt__13TItemSlotDrumFv
__dt__13TItemSlotDrumFv: # 0x801ccc24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ccca4
    lis     r3, 0x803d
    subi    r3, r3, 0x20f8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ccc94
    lis     r3, 0x803d
    subi    r3, r3, 0x1f84
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ccc94
    lis     r3, 0x803b
    addi    r3, r3, 0x7da4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801ccc94:
    extsh.  r0, r31
    ble-    branch_0x801ccca4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ccca4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TRouletteFv
__dt__9TRouletteFv: # 0x801cccc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ccd28
    lis     r3, 0x803d
    subi    r3, r3, 0x1e10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ccd18
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801ccd18:
    extsh.  r0, r31
    ble-    branch_0x801ccd28
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ccd28:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TRouletteSwFv
__dt__11TRouletteSwFv: # 0x801ccd44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ccdac
    lis     r3, 0x803d
    subi    r3, r3, 0x1ca8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ccd9c
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801ccd9c:
    extsh.  r0, r31
    ble-    branch_0x801ccdac
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ccdac:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjSirena_cpp
__sinit_MapObjSirena_cpp: # 0x801ccdc8
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x6858
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801cce10
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801cce10:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801cce40
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801cce40:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801cce70
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801cce70:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801ccea0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801ccea0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801cced0
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801cced0:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801ccf00
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801ccf00:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801ccf30
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801ccf30:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801ccf60
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801ccf60:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801ccf90
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801ccf90:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801ccfc0
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801ccfc0:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801ccff0
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801ccff0:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801cd020
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801cd020:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801cd050
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801cd050:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801cd080
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801cd080:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801cd0b0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801cd0b0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TRouletteSwFv
_32___dt__11TRouletteSwFv: # 0x801cd0c4
    subi    r3, r3, 0x20
    b       __dt__11TRouletteSwFv


.globl _32___dt__9TRouletteFv
_32___dt__9TRouletteFv: # 0x801cd0cc
    subi    r3, r3, 0x20
    b       __dt__9TRouletteFv


.globl _32___dt__9TSlotDrumFv
_32___dt__9TSlotDrumFv: # 0x801cd0d4
    subi    r3, r3, 0x20
    b       __dt__9TSlotDrumFv


.globl _32___dt__13TItemSlotDrumFv
_32___dt__13TItemSlotDrumFv: # 0x801cd0dc
    subi    r3, r3, 0x20
    b       __dt__13TItemSlotDrumFv


.globl _32___dt__16TCasinoPanelGateFv
_32___dt__16TCasinoPanelGateFv: # 0x801cd0e4
    subi    r3, r3, 0x20
    b       __dt__16TCasinoPanelGateFv


.globl _32___dt__8TDonchouFv
_32___dt__8TDonchouFv: # 0x801cd0ec
    subi    r3, r3, 0x20
    b       __dt__8TDonchouFv


.globl _32___dt__7TClosetFv
_32___dt__7TClosetFv: # 0x801cd0f4
    subi    r3, r3, 0x20
    b       __dt__7TClosetFv


.globl _32___dt__11TSakuCasinoFv
_32___dt__11TSakuCasinoFv: # 0x801cd0fc
    subi    r3, r3, 0x20
    b       __dt__11TSakuCasinoFv


.globl _32___dt__15TSirenabossWallFv
_32___dt__15TSirenabossWallFv: # 0x801cd104
    subi    r3, r3, 0x20
    b       __dt__15TSirenabossWallFv


.globl _32___dt__17TSirenaCasinoRoofFv
_32___dt__17TSirenaCasinoRoofFv: # 0x801cd10c
    subi    r3, r3, 0x20
    b       __dt__17TSirenaCasinoRoofFv


.globl _32___dt__14TWarpAreaActorFv
_32___dt__14TWarpAreaActorFv: # 0x801cd114
    subi    r3, r3, 0x20
    b       __dt__14TWarpAreaActorFv


.globl _32___dt__13TChestRevolveFv
_32___dt__13TChestRevolveFv: # 0x801cd11c
    subi    r3, r3, 0x20
    b       __dt__13TChestRevolveFv


.globl _32___dt__13TPanelRevolveFv
_32___dt__13TPanelRevolveFv: # 0x801cd124
    subi    r3, r3, 0x20
    b       __dt__13TPanelRevolveFv


.globl _32___dt__14TPictureTelesaFv
_32___dt__14TPictureTelesaFv: # 0x801cd12c
    subi    r3, r3, 0x20
    b       __dt__14TPictureTelesaFv

