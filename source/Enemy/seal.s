
.globl __dt__13TNerveSealDieFv
__dt__13TNerveSealDieFv: # 0x800fe508
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800fe54c
    lis     r3, __vvt__13TNerveSealDie@ha
    addi    r0, r3, __vvt__13TNerveSealDie@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800fe53c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800fe53c:
    extsh.  r0, r4
    ble-    branch_0x800fe54c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800fe54c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__13TNerveSealDieCFP24TSpineBase_10TLiveActor_
execute__13TNerveSealDieCFP24TSpineBase_10TLiveActor_: # 0x800fe564
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800fe648
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    lwz     r5, 0x74(r30)
    mr      r7, r30
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0xd1
    lwz     r5, 0x4(r5)
    li      r6, 0x0
    addi    r29, r5, 0x20
    addi    r5, r29, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800fe5f8
    lfs     f0, 0x24(r30)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x17c(r3)
branch_0x800fe5f8:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r29, 0x0
    addi    r7, r30, 0x1
    li      r4, 0xd2
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800fe648
    lfs     f0, 0x24(r30)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x17c(r3)
branch_0x800fe648:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x6010
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800fe678
    addi    r4, r30, 0x10
    li      r3, 0x6010
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800fe678:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800fe730
    lwz     r0, 0x64(r30)
    addi    r3, r30, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lbz     r0, R13Off_m0x6778(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe6f4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveSealSleep@ha
    stw     r0, R13Off_m0x6774(r13)
    addi    r0, r3, __vvt__15TNerveSealSleep@l
    lis     r4, __dt__15TNerveSealSleepFv@ha
    stw     r0, R13Off_m0x6774(r13)
    lis     r3, unk_803f2a10@h
    addi    r5, r3, unk_803f2a10@l
    addi    r4, r4, __dt__15TNerveSealSleepFv@l
    addi    r3, r13, R13Off_m0x6774
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6778(r13)
branch_0x800fe6f4:
    addi    r4, r13, R13Off_m0x6774
    cmplwi  r4, 0x0
    beq-    branch_0x800fe728
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800fe728
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800fe728:
    li      r3, 0x1
    b       branch_0x800fe734

branch_0x800fe730:
    li      r3, 0x0
branch_0x800fe734:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl __dt__15TNerveSealSleepFv
__dt__15TNerveSealSleepFv: # 0x800fe750
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800fe794
    lis     r3, __vvt__15TNerveSealSleep@ha
    addi    r0, r3, __vvt__15TNerveSealSleep@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800fe784
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800fe784:
    extsh.  r0, r4
    ble-    branch_0x800fe794
    mr      r3, r31
    bl      __dl__FPv
branch_0x800fe794:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__14TNerveSealWaitCFP24TSpineBase_10TLiveActor_
execute__14TNerveSealWaitCFP24TSpineBase_10TLiveActor_: # 0x800fe7ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800fe7e0
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
branch_0x800fe7e0:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800fe818
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fe818
    lwz     r3, 0x74(r30)
    li      r4, 0x2
    bl      setBckFromIndex__6MActorFi
branch_0x800fe818:
    lfs     f1, 0x134(r30)
    lfs     f0, -0x5710(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800fe8cc
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800fe8cc
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    lbz     r0, R13Off_m0x6778(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe890
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveSealSleep@ha
    stw     r0, R13Off_m0x6774(r13)
    addi    r0, r3, __vvt__15TNerveSealSleep@l
    lis     r4, __dt__15TNerveSealSleepFv@ha
    stw     r0, R13Off_m0x6774(r13)
    lis     r3, unk_803f2a10@h
    addi    r5, r3, unk_803f2a10@l
    addi    r4, r4, __dt__15TNerveSealSleepFv@l
    addi    r3, r13, R13Off_m0x6774
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6778(r13)
branch_0x800fe890:
    addi    r4, r13, R13Off_m0x6774
    cmplwi  r4, 0x0
    beq-    branch_0x800fe8c4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800fe8c4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800fe8c4:
    li      r3, 0x1
    b       branch_0x800fe8d0

branch_0x800fe8cc:
    li      r3, 0x0
branch_0x800fe8d0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __dt__14TNerveSealWaitFv
__dt__14TNerveSealWaitFv: # 0x800fe8e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800fe92c
    lis     r3, __vvt__14TNerveSealWait@ha
    addi    r0, r3, __vvt__14TNerveSealWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800fe91c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800fe91c:
    extsh.  r0, r4
    ble-    branch_0x800fe92c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800fe92c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__15TNerveSealSleepCFP24TSpineBase_10TLiveActor_
execute__15TNerveSealSleepCFP24TSpineBase_10TLiveActor_: # 0x800fe944
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800fe98c
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fe98c
    lwz     r3, 0x74(r30)
    li      r4, -0x1
    bl      setBckFromIndex__6MActorFi
branch_0x800fe98c:
    lfs     f1, 0x134(r30)
    lfs     f0, -0x570c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800fea1c
    lbz     r0, R13Off_m0x6770(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe9e0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveSealWait@ha
    stw     r0, R13Off_m0x676c(r13)
    addi    r0, r3, __vvt__14TNerveSealWait@l
    lis     r4, __dt__14TNerveSealWaitFv@ha
    stw     r0, R13Off_m0x676c(r13)
    lis     r3, unk_803f2a1c@h
    addi    r5, r3, unk_803f2a1c@l
    addi    r4, r4, __dt__14TNerveSealWaitFv@l
    addi    r3, r13, R13Off_m0x676c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6770(r13)
branch_0x800fe9e0:
    addi    r4, r13, R13Off_m0x676c
    cmplwi  r4, 0x0
    beq-    branch_0x800fea14
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800fea14
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800fea14:
    li      r3, 0x1
    b       branch_0x800fea58

branch_0x800fea1c:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800fea54
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fea54
    lwz     r3, 0x74(r30)
    li      r4, -0x1
    bl      setBckFromIndex__6MActorFi
branch_0x800fea54:
    li      r3, 0x0
branch_0x800fea58:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl load__12TSealManagerFR20JSUMemoryInputStream
load__12TSealManagerFR20JSUMemoryInputStream: # 0x800fea70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__12TSealManagerFv
createModelData__12TSealManagerFv: # 0x800fea90
    mflr    r0
    lis     r4, entry_2836@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_2836@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__12TSealManagerFPCc
__ct__12TSealManagerFPCc: # 0x800feac4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__12TSealManager@ha
    addi    r0, r3, __vvt__12TSealManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__5TSealFUlPQ26JDrama9TGraphics
perform__5TSealFUlPQ26JDrama9TGraphics: # 0x800feb00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    mr      r31, r3
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 30
    bne-    branch_0x800feb94
    clrlwi. r0, r27, 31
    beq-    branch_0x800feb94
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x800feb88

branch_0x800feb3c:
    lwz     r3, 0x44(r31)
    lwzx    r3, r3, r30
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800feb5c
    li      r0, 0x1
    b       branch_0x800feb60

branch_0x800feb5c:
    li      r0, 0x0
branch_0x800feb60:
    clrlwi. r0, r0, 24
    beq-    branch_0x800feb80
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x800feb80:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x800feb88:
    lhz     r0, 0x48(r31)
    cmpw    r29, r0
    blt+    branch_0x800feb3c
branch_0x800feb94:
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    clrlwi. r0, r27, 31
    beq-    branch_0x800febbc
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    li      r0, 0x0
    stw     r0, 0x150(r31)
branch_0x800febbc:
    rlwinm. r0, r27, 0, 30, 30
    beq-    branch_0x800fec10
    lwz     r0, 0xf0(r31)
    clrlwi. r0, r0, 30
    bne-    branch_0x800fec10
    lfs     f1, 0x134(r31)
    lfs     f0, -0x5710(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800fec10
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2154
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800fec10
    addi    r4, r31, 0x10
    li      r3, 0x2154
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800fec10:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl calcRootMatrix__5TSealFv
calcRootMatrix__5TSealFv: # 0x800fec24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x38(r30)
    mr      r31, r3
    lfs     f2, -0x5708(r2)
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


.globl receiveMessage__5TSealFP9THitActorUl
receiveMessage__5TSealFP9THitActorUl: # 0x800fecc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x38(sp)
    mr      r30, r4
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x800feeac
    cmplwi  r5, 0xf
    bne-    branch_0x800feeac
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x5704(r2)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r3, R13Off_m0x6088(r13)
    lbz     r0, 0x5d5f(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800feea4
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x5704(r2)
    li      r4, 0x6809
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lbz     r0, R13Off_m0x6768(r13)
    extsb.  r0, r0
    bne-    branch_0x800fedb0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveSealDie@ha
    stw     r0, R13Off_m0x6764(r13)
    addi    r0, r3, __vvt__13TNerveSealDie@l
    lis     r4, __dt__13TNerveSealDieFv@ha
    stw     r0, R13Off_m0x6764(r13)
    lis     r3, unk_803f2a28@h
    addi    r5, r3, unk_803f2a28@l
    addi    r4, r4, __dt__13TNerveSealDieFv@l
    addi    r3, r13, R13Off_m0x6764
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6768(r13)
branch_0x800fedb0:
    lwz     r4, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6764
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800fedc8
    b       branch_0x800fedcc

branch_0x800fedc8:
    lwz     r3, 0x1c(r4)
branch_0x800fedcc:
    cmplw   r3, r0
    beq-    branch_0x800fee90
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800fedf4
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800fedf4:
    lbz     r0, R13Off_m0x6768(r13)
    extsb.  r0, r0
    bne-    branch_0x800fee38
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveSealDie@ha
    stw     r0, R13Off_m0x6764(r13)
    addi    r0, r3, __vvt__13TNerveSealDie@l
    lis     r4, __dt__13TNerveSealDieFv@ha
    stw     r0, R13Off_m0x6764(r13)
    lis     r3, unk_803f2a28@h
    addi    r5, r3, unk_803f2a28@l
    addi    r4, r4, __dt__13TNerveSealDieFv@l
    addi    r3, r13, R13Off_m0x6764
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6768(r13)
branch_0x800fee38:
    addi    r5, r13, R13Off_m0x6764
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x800fee90
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800fee84
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x800fee84
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x800fee84:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x800fee90:
    lwz     r4, 0x150(r31)
    li      r3, 0x1
    addi    r0, r4, 0x1
    stw     r0, 0x150(r31)
    b       branch_0x800feeb0

branch_0x800feea4:
    li      r3, 0x1
    b       branch_0x800feeb0

branch_0x800feeac:
    li      r3, 0x0
branch_0x800feeb0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl init__5TSealFP12TLiveManager
init__5TSealFP12TLiveManager: # 0x800feec8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    stw     r30, 0xb8(sp)
    stw     r29, 0xb4(sp)
    stw     r28, 0xb0(sp)
    stw     r3, 0x10(sp)
    lis     r3, unk_803830a8@h
    addi    r31, r3, unk_803830a8@l
    lwz     r30, 0x10(sp)
    stw     r4, 0x70(r30)
    mr      r4, r30
    lwz     r3, 0x70(r30)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800fef24
    lwz     r4, 0x70(r30)
    addi    r3, r28, 0x0
    li      r5, 0x2
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800fef24:
    lwz     r29, 0x10(sp)
    addi    r4, r31, 0xf8
    li      r5, 0x0
    stw     r28, 0x78(r29)
    lwz     r3, 0x78(r29)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r29)
    lwz     r3, 0x74(r29)
    bl      offMakeDL__6MActorFv
    lfs     f1, -0x5700(r2)
    lis     r4, unk_10000024@h
    lfs     f0, 0x24(r29)
    addi    r3, r29, 0x0
    addi    r4, r4, unk_10000024@l
    fmuls   f1, f1, f0
    li      r5, 0x1
    lis     r6, 0x8100
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r29)
    addi    r3, r31, 0x128
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x128
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r3, sp, 0x50
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x50(sp)
    addi    r3, sp, 0xa8
    addi    r4, sp, 0x4c
    stw     r0, 0x4c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xa8(sp)
    addi    r5, sp, 0x60
    addi    r4, r30, 0x0
    stw     r0, 0xa4(sp)
    addi    r3, sp, 0x5c
    addi    r6, sp, 0x10
    lwz     r0, 0xa4(sp)
    stw     r0, 0x60(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, r29, 0x30
    lfs     f2, -0x56fc(r2)
    lfs     f1, 0x30(r29)
    lfs     f0, -0x56f8(r2)
    fadds   f2, f2, f1
    b       branch_0x800ff014

branch_0x800ff010:
    fsubs   f2, f2, f0
branch_0x800ff014:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800ff010
    lfs     f1, -0x56f8(r2)
    lfs     f0, -0x5704(r2)
    b       branch_0x800ff030

branch_0x800ff02c:
    fadds   f2, f2, f1
branch_0x800ff030:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800ff02c
    stfs    f2, 0x0(r3)
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800ff060
    lwz     r6, 0x10(sp)
    addi    r3, r28, 0x0
    addi    r5, r31, 0x134
    li      r4, 0x1
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x800ff060:
    lwz     r30, 0x10(sp)
    addi    r4, r31, 0x140
    li      r5, 0x2
    stw     r28, 0xec(r30)
    li      r6, 0x0
    lwz     r3, 0xec(r30)
    bl      init__20TMapCollisionManagerFPCcUsPCc
    lwz     r31, 0xec(r30)
    addi    r3, sp, 0x6c
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
    addi    r3, sp, 0x6c
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800ff10c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800ff110

branch_0x800ff10c:
    li      r0, 0x1
branch_0x800ff110:
    lwz     r3, 0x10(sp)
    stb     r0, 0x13c(r3)
    lbz     r0, R13Off_m0x6778(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff15c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveSealSleep@ha
    stw     r0, R13Off_m0x6774(r13)
    addi    r0, r3, __vvt__15TNerveSealSleep@l
    lis     r4, __dt__15TNerveSealSleepFv@ha
    stw     r0, R13Off_m0x6774(r13)
    lis     r3, unk_803f2a10@h
    addi    r5, r3, unk_803f2a10@l
    addi    r4, r4, __dt__15TNerveSealSleepFv@l
    addi    r3, r13, R13Off_m0x6774
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6778(r13)
branch_0x800ff15c:
    lwz     r4, 0x10(sp)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x6774
    lwz     r4, 0x8c(r4)
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl __ct__5TSealFPCc
__ct__5TSealFPCc: # 0x800ff1a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__5TSeal@ha
    addi    r3, r3, __vvt__5TSeal@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x150(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12TSealManagerFv
__dt__12TSealManagerFv: # 0x800ff1f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ff240
    lis     r3, __vvt__12TSealManager@ha
    addi    r0, r3, __vvt__12TSealManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800ff240
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ff240:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__5TSealFv
__dt__5TSealFv: # 0x800ff25c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ff2ac
    lis     r3, __vvt__5TSeal@ha
    addi    r3, r3, __vvt__5TSeal@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800ff2ac
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ff2ac:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_seal_cpp
__sinit_seal_cpp: # 0x800ff2c8
    mflr    r0
    lis     r3, unk_803f2a10@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f2a10@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff310
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x800ff310:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff340
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x800ff340:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff370
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x800ff370:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff3a0
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x800ff3a0:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff3d0
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x800ff3d0:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff400
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x800ff400:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff430
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x800ff430:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff460
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x800ff460:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff490
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x800ff490:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff4c0
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x800ff4c0:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff4f0
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x800ff4f0:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff520
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x800ff520:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff550
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x800ff550:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff580
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x800ff580:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800ff5b0
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x800ff5b0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_800ff5c4
unk_800ff5c4: # 0x800ff5c4
    addi    r3, r3, -0x20
    b       __dt__5TSealFv

