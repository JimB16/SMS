
.globl __dt__20TLimitKoopaJrManagerFv
__dt__20TLimitKoopaJrManagerFv: # 0x8013d13c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013d184
    lis     r3, __vvt__20TLimitKoopaJrManager@ha
    addi    r0, r3, __vvt__20TLimitKoopaJrManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8013d184
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013d184:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createEnemyInstance__20TLimitKoopaJrManagerFv
createEnemyInstance__20TLimitKoopaJrManagerFv: # 0x8013d1a0
    li      r3, 0x0
    blr


.globl loadAfter__20TLimitKoopaJrManagerFv
loadAfter__20TLimitKoopaJrManagerFv: # 0x8013d1a8
    blr


.globl load__20TLimitKoopaJrManagerFR20JSUMemoryInputStream
load__20TLimitKoopaJrManagerFR20JSUMemoryInputStream: # 0x8013d1ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x184
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8013d1e8
    lis     r3, unk_8038768c@h
    addi    r4, r3, unk_8038768c@l
    addi    r3, r30, 0x0
    bl      __ct__19TLimitKoopaJrParamsFPCc
branch_0x8013d1e8:
    stw     r30, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__20TLimitKoopaJrManagerFv
createModelData__20TLimitKoopaJrManagerFv: # 0x8013d204
    mflr    r0
    lis     r4, entry_3047@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3047@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__20TLimitKoopaJrManagerFPCc
__ct__20TLimitKoopaJrManagerFPCc: # 0x8013d238
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__20TLimitKoopaJrManager@ha
    addi    r0, r3, __vvt__20TLimitKoopaJrManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveLimitKoopaJrYahooCFP24TSpineBase_10TLiveActor_
execute__23TNerveLimitKoopaJrYahooCFP24TSpineBase_10TLiveActor_: # 0x8013d274
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8013d2d8
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8013d2cc
    li      r4, 0x0
    b       branch_0x8013d2d0

branch_0x8013d2cc:
    lwz     r4, 0xc(r3)
branch_0x8013d2d0:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8013d2d8:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8013d370
    lbz     r0, R13Off_m0x6448(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d334
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveLimitKoopaJrWait@ha
    stw     r0, R13Off_m0x6444(r13)
    addi    r0, r3, __vvt__22TNerveLimitKoopaJrWait@l
    lis     r4, __dt__22TNerveLimitKoopaJrWaitFv@ha
    stw     r0, R13Off_m0x6444(r13)
    lis     r3, unk_803f3c5c@h
    addi    r5, r3, unk_803f3c5c@l
    addi    r4, r4, __dt__22TNerveLimitKoopaJrWaitFv@l
    addi    r3, r13, R13Off_m0x6444
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6448(r13)
branch_0x8013d334:
    addi    r4, r13, R13Off_m0x6444
    cmplwi  r4, 0x0
    beq-    branch_0x8013d368
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8013d368
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8013d368:
    li      r3, 0x1
    b       branch_0x8013d374

branch_0x8013d370:
    li      r3, 0x0
branch_0x8013d374:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__22TNerveLimitKoopaJrWaitFv
__dt__22TNerveLimitKoopaJrWaitFv: # 0x8013d38c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013d3d0
    lis     r3, __vvt__22TNerveLimitKoopaJrWait@ha
    addi    r0, r3, __vvt__22TNerveLimitKoopaJrWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013d3c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013d3c0:
    extsh.  r0, r4
    ble-    branch_0x8013d3d0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013d3d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23TNerveLimitKoopaJrYahooFv
__dt__23TNerveLimitKoopaJrYahooFv: # 0x8013d3e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013d42c
    lis     r3, __vvt__23TNerveLimitKoopaJrYahoo@ha
    addi    r0, r3, __vvt__23TNerveLimitKoopaJrYahoo@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013d41c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013d41c:
    extsh.  r0, r4
    ble-    branch_0x8013d42c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013d42c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveLimitKoopaJrLaunchCFP24TSpineBase_10TLiveActor_
execute__24TNerveLimitKoopaJrLaunchCFP24TSpineBase_10TLiveActor_: # 0x8013d444
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8013d4c4
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8013d49c
    li      r4, 0x0
    b       branch_0x8013d4a0

branch_0x8013d49c:
    lwz     r4, 0x4(r3)
branch_0x8013d4a0:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x16c(r3)
    stw     r0, 0x15c(r30)
branch_0x8013d4c4:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8013d55c
    lbz     r0, R13Off_m0x6448(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d520
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveLimitKoopaJrWait@ha
    stw     r0, R13Off_m0x6444(r13)
    addi    r0, r3, __vvt__22TNerveLimitKoopaJrWait@l
    lis     r4, __dt__22TNerveLimitKoopaJrWaitFv@ha
    stw     r0, R13Off_m0x6444(r13)
    lis     r3, unk_803f3c5c@h
    addi    r5, r3, unk_803f3c5c@l
    addi    r4, r4, __dt__22TNerveLimitKoopaJrWaitFv@l
    addi    r3, r13, R13Off_m0x6444
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6448(r13)
branch_0x8013d520:
    addi    r4, r13, R13Off_m0x6444
    cmplwi  r4, 0x0
    beq-    branch_0x8013d554
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8013d554
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8013d554:
    li      r3, 0x1
    b       branch_0x8013d560

branch_0x8013d55c:
    li      r3, 0x0
branch_0x8013d560:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __dt__24TNerveLimitKoopaJrLaunchFv
__dt__24TNerveLimitKoopaJrLaunchFv: # 0x8013d578
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013d5bc
    lis     r3, __vvt__24TNerveLimitKoopaJrLaunch@ha
    addi    r0, r3, __vvt__24TNerveLimitKoopaJrLaunch@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013d5ac
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013d5ac:
    extsh.  r0, r4
    ble-    branch_0x8013d5bc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013d5bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveLimitKoopaJrWaitCFP24TSpineBase_10TLiveActor_
execute__22TNerveLimitKoopaJrWaitCFP24TSpineBase_10TLiveActor_: # 0x8013d5d4
    mflr    r0
    lis     r3, unk_803f3c50@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r3, unk_803f3c50@l
    stw     r30, 0xa8(sp)
    stw     r29, 0xa4(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8013d644
    lwz     r3, 0x74(r30)
    li      r4, 0x2
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8013d638
    li      r4, 0x0
    b       branch_0x8013d63c

branch_0x8013d638:
    lwz     r4, 0x8(r3)
branch_0x8013d63c:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8013d644:
    addi    r3, sp, 0x58
    bl      __ct__14TDirectionCalcFv
    lwz     r3, 0x150(r30)
    addi    r4, sp, 0x68
    lwz     r6, R13Off_m0x60b4(r13)
    lfs     f1, 0x10(r3)
    addi    r5, r3, 0x10
    lfs     f0, 0x0(r6)
    addi    r3, sp, 0x58
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x4(r6)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f2, 0x8(r5)
    lfs     f1, 0x8(r6)
    lfs     f0, -0x4d08(r2)
    fsubs   f1, f2, f1
    stfs    f1, 0x64(sp)
    stfs    f0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    lwz     r5, 0x60(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x64(sp)
    stw     r5, 0x6c(sp)
    stw     r0, 0x70(sp)
    bl      makeDirection__14TDirectionCalcFQ29JGeometry8TVec3_f_
    lfs     f1, 0x58(sp)
    addi    r3, r30, 0x170
    bl      absDirection__14TDirectionCalcFf
    lfs     f0, -0x4d04(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013d6d8
    li      r0, 0x0
    b       branch_0x8013d6dc

branch_0x8013d6d8:
    li      r0, 0x1
branch_0x8013d6dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8013d760
    lbz     r0, R13Off_m0x6450(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d724
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveLimitKoopaJrRun@ha
    stw     r0, R13Off_m0x644c(r13)
    addi    r0, r3, __vvt__21TNerveLimitKoopaJrRun@l
    lis     r3, __dt__21TNerveLimitKoopaJrRunFv@ha
    stw     r0, R13Off_m0x644c(r13)
    addi    r4, r3, __dt__21TNerveLimitKoopaJrRunFv@l
    addi    r3, r13, R13Off_m0x644c
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6450(r13)
branch_0x8013d724:
    addi    r4, r13, R13Off_m0x644c
    cmplwi  r4, 0x0
    beq-    branch_0x8013d758
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8013d758
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8013d758:
    li      r3, 0x1
    b       branch_0x8013d92c

branch_0x8013d760:
    bl      SMS_IsMarioStatusTypeJumping__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8013d7e8
    lbz     r0, R13Off_m0x6438(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d7ac
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveLimitKoopaJrYahoo@ha
    stw     r0, R13Off_m0x6434(r13)
    addi    r0, r3, __vvt__23TNerveLimitKoopaJrYahoo@l
    lis     r3, __dt__23TNerveLimitKoopaJrYahooFv@ha
    stw     r0, R13Off_m0x6434(r13)
    addi    r4, r3, __dt__23TNerveLimitKoopaJrYahooFv@l
    addi    r3, r13, R13Off_m0x6434
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6438(r13)
branch_0x8013d7ac:
    addi    r4, r13, R13Off_m0x6434
    cmplwi  r4, 0x0
    beq-    branch_0x8013d7e0
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8013d7e0
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8013d7e0:
    li      r3, 0x1
    b       branch_0x8013d92c

branch_0x8013d7e8:
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x8013d870
    lbz     r0, R13Off_m0x6440(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d834
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveLimitKoopaJrLaunch@ha
    stw     r0, R13Off_m0x643c(r13)
    addi    r0, r3, __vvt__24TNerveLimitKoopaJrLaunch@l
    lis     r3, __dt__24TNerveLimitKoopaJrLaunchFv@ha
    stw     r0, R13Off_m0x643c(r13)
    addi    r4, r3, __dt__24TNerveLimitKoopaJrLaunchFv@l
    addi    r3, r13, R13Off_m0x643c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6440(r13)
branch_0x8013d834:
    addi    r4, r13, R13Off_m0x643c
    cmplwi  r4, 0x0
    beq-    branch_0x8013d868
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8013d868
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8013d868:
    li      r3, 0x1
    b       branch_0x8013d92c

branch_0x8013d870:
    lwz     r5, R13Off_m0x60b4(r13)
    addi    r3, sp, 0x80
    lfs     f0, 0x10(r30)
    mr      r4, r3
    lfs     f1, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f2, 0x8(r5)
    lfs     f1, 0x18(r30)
    lfs     f0, -0x4d08(r2)
    fsubs   f1, f2, f1
    stfs    f1, 0x7c(sp)
    stfs    f0, 0x78(sp)
    lwz     r0, 0x74(sp)
    lwz     r5, 0x78(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x7c(sp)
    stw     r5, 0x84(sp)
    lfs     f1, -0x4d00(r2)
    stw     r0, 0x88(sp)
    bl      setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0x80(sp)
    addi    r4, sp, 0x48
    lwz     r5, 0x84(sp)
    addi    r3, sp, 0x44
    stw     r0, 0x48(sp)
    lwz     r0, 0x88(sp)
    stw     r5, 0x4c(sp)
    stw     r0, 0x50(sp)
    bl      __ct__14TDirectionCalcFQ29JGeometry8TVec3_f_
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xcc(r3)
    bl      d2r__14TDirectionCalcFf
    fmr     f2, f1
    lfs     f1, 0x44(sp)
    addi    r3, r30, 0x178
    bl      calcTurnDirection__14TDirectionCalcFff
    stfs    f1, 0x178(r30)
    li      r3, 0x0
branch_0x8013d92c:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl __dt__21TNerveLimitKoopaJrRunFv
__dt__21TNerveLimitKoopaJrRunFv: # 0x8013d948
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013d98c
    lis     r3, __vvt__21TNerveLimitKoopaJrRun@ha
    addi    r0, r3, __vvt__21TNerveLimitKoopaJrRun@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013d97c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013d97c:
    extsh.  r0, r4
    ble-    branch_0x8013d98c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013d98c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveLimitKoopaJrRunCFP24TSpineBase_10TLiveActor_
execute__21TNerveLimitKoopaJrRunCFP24TSpineBase_10TLiveActor_: # 0x8013d9a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    stw     r30, 0x58(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8013da08
    lwz     r3, 0x74(r30)
    li      r4, 0x2
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8013d9fc
    li      r4, 0x0
    b       branch_0x8013da00

branch_0x8013d9fc:
    lwz     r4, 0x8(r3)
branch_0x8013da00:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8013da08:
    addi    r3, sp, 0x30
    bl      __ct__14TDirectionCalcFv
    lwz     r3, 0x150(r30)
    addi    r4, sp, 0x40
    lwz     r6, R13Off_m0x60b4(r13)
    lfs     f1, 0x10(r3)
    addi    r5, r3, 0x10
    lfs     f0, 0x0(r6)
    addi    r3, sp, 0x30
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x4(r6)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f2, 0x8(r5)
    lfs     f1, 0x8(r6)
    lfs     f0, -0x4d08(r2)
    fsubs   f1, f2, f1
    stfs    f1, 0x3c(sp)
    stfs    f0, 0x38(sp)
    lwz     r0, 0x34(sp)
    lwz     r5, 0x38(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x3c(sp)
    stw     r5, 0x44(sp)
    stw     r0, 0x48(sp)
    bl      makeDirection__14TDirectionCalcFQ29JGeometry8TVec3_f_
    lfs     f1, 0x30(sp)
    addi    r3, r30, 0x170
    bl      absDirection__14TDirectionCalcFf
    lfs     f0, -0x4d04(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013da9c
    li      r0, 0x0
    b       branch_0x8013daa0

branch_0x8013da9c:
    li      r0, 0x1
branch_0x8013daa0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8013db28
    lbz     r0, R13Off_m0x6448(r13)
    extsb.  r0, r0
    bne-    branch_0x8013daec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveLimitKoopaJrWait@ha
    stw     r0, R13Off_m0x6444(r13)
    addi    r0, r3, __vvt__22TNerveLimitKoopaJrWait@l
    lis     r4, __dt__22TNerveLimitKoopaJrWaitFv@ha
    stw     r0, R13Off_m0x6444(r13)
    lis     r3, unk_803f3c5c@h
    addi    r5, r3, unk_803f3c5c@l
    addi    r4, r4, __dt__22TNerveLimitKoopaJrWaitFv@l
    addi    r3, r13, R13Off_m0x6444
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6448(r13)
branch_0x8013daec:
    addi    r4, r13, R13Off_m0x6444
    cmplwi  r4, 0x0
    beq-    branch_0x8013db20
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8013db20
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8013db20:
    li      r3, 0x1
    b       branch_0x8013db34

branch_0x8013db28:
    mr      r3, r30
    bl      moveRun__13TLimitKoopaJrFv
    li      r3, 0x0
branch_0x8013db34:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl moveRun__13TLimitKoopaJrFv
moveRun__13TLimitKoopaJrFv: # 0x8013db4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stfd    f30, 0x108(sp)
    stfd    f29, 0x100(sp)
    stw     r31, 0xfc(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xf4(r3)
    addi    r3, sp, 0x84
    lfs     f1, -0x4cf4(r2)
    fmuls   f29, f1, f0
    bl      __ct__14TDirectionCalcFv
    lwz     r3, 0x150(r31)
    addi    r4, sp, 0x94
    lwz     r6, R13Off_m0x60b4(r13)
    lfs     f1, 0x10(r3)
    addi    r5, r3, 0x10
    lfs     f0, 0x0(r6)
    addi    r3, sp, 0x84
    fsubs   f0, f1, f0
    stfs    f0, 0x88(sp)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x4(r6)
    fsubs   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f2, 0x8(r5)
    lfs     f1, 0x8(r6)
    lfs     f0, -0x4d08(r2)
    fsubs   f1, f2, f1
    stfs    f1, 0x90(sp)
    stfs    f0, 0x8c(sp)
    lwz     r0, 0x88(sp)
    lwz     r5, 0x8c(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x90(sp)
    stw     r5, 0x98(sp)
    stw     r0, 0x9c(sp)
    bl      makeDirection__14TDirectionCalcFQ29JGeometry8TVec3_f_
    fmr     f2, f29
    lfs     f1, 0x84(sp)
    addi    r3, r31, 0x170
    bl      calcTurnDirection__14TDirectionCalcFff
    addi    r3, sp, 0xf0
    bl      __ct__14TDirectionCalcFf
    addi    r3, sp, 0xf0
    lfs     f1, 0x170(r31)
    bl      sub__14TDirectionCalcFf
    lfs     f0, 0xf0(sp)
    mr      r3, r31
    fmr     f31, f1
    stfs    f0, 0x170(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x108(r3)
    addi    r3, sp, 0xb4
    addi    r4, r31, 0x170
    stfs    f0, 0x174(r31)
    bl      calcDirectionVector__14TDirectionCalcFv
    lwz     r0, 0xb4(sp)
    mr      r3, r31
    lwz     r4, 0xb8(sp)
    stw     r0, 0xe4(sp)
    lwz     r0, 0xbc(sp)
    stw     r4, 0xe8(sp)
    stw     r0, 0xec(sp)
    lfs     f1, 0x174(r31)
    lfs     f0, 0xe4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xec(sp)
    lwz     r4, 0x150(r31)
    lfsu    f1, 0x10(r4)
    lfs     f0, 0xe4(sp)
    lfs     f30, 0xe8(sp)
    lfs     f2, 0x4(r4)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r4)
    lfs     f29, 0xec(sp)
    fadds   f2, f2, f30
    stfs    f0, 0x10(r31)
    fadds   f0, f1, f29
    stfs    f2, 0x14(r31)
    stfs    f0, 0x18(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x11c(r3)
    stfs    f0, 0x14(r31)
    lfs     f1, 0xe4(sp)
    lfs     f0, -0x4cfc(r2)
    fmuls   f1, f1, f1
    fmadds  f1, f30, f30, f1
    fmadds  f1, f29, f29, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013dd14
    lfs     f0, -0x4d08(r2)
    stfs    f0, 0xec(sp)
    stfs    f0, 0xe8(sp)
    stfs    f0, 0xe4(sp)
    b       branch_0x8013dd44

branch_0x8013dd14:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4d00(r2)
    lfs     f0, 0xe4(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xec(sp)
branch_0x8013dd44:
    lfs     f4, -0x4d08(r2)
    lfs     f0, 0xe8(sp)
    lfs     f2, 0xec(sp)
    fmuls   f5, f4, f0
    lfs     f3, -0x4d00(r2)
    fmuls   f0, f4, f2
    lfs     f1, 0xe4(sp)
    fmsubs  f2, f3, f2, f5
    fmsubs  f0, f4, f1, f0
    stfs    f2, 0xc0(sp)
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xe4(sp)
    fnmsubs  f0, f3, f0, f5
    stfs    f0, 0xc8(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xc8(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x4cfc(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013ddbc
    stfs    f4, 0xc8(sp)
    stfs    f4, 0xc4(sp)
    stfs    f4, 0xc0(sp)
    b       branch_0x8013ddec

branch_0x8013ddbc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4d00(r2)
    lfs     f0, 0xc0(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc8(sp)
branch_0x8013ddec:
    lfs     f0, -0x4d08(r2)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8013de1c
    lfs     f0, 0xc0(sp)
    fneg    f0, f0
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fneg    f0, f0
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fneg    f0, f0
    stfs    f0, 0xc8(sp)
branch_0x8013de1c:
    lwz     r0, 0xc0(sp)
    addi    r3, sp, 0xa8
    lwz     r5, 0xc4(sp)
    mr      r4, r3
    stw     r0, 0xa8(sp)
    lwz     r0, 0xc8(sp)
    stw     r5, 0xac(sp)
    lfs     f31, -0x4d00(r2)
    stw     r0, 0xb0(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x4cfc(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013de68
    lfs     f0, -0x4d08(r2)
    stfs    f0, 0xb0(sp)
    stfs    f0, 0xac(sp)
    stfs    f0, 0xa8(sp)
    b       branch_0x8013de7c

branch_0x8013de68:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0xa8
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8013de7c:
    lwz     r0, 0xa8(sp)
    addi    r4, sp, 0x70
    lwz     r5, 0xac(sp)
    addi    r3, sp, 0x6c
    stw     r0, 0x70(sp)
    lwz     r0, 0xb0(sp)
    stw     r5, 0x74(sp)
    stw     r0, 0x78(sp)
    bl      __ct__14TDirectionCalcFQ29JGeometry8TVec3_f_
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xcc(r3)
    bl      d2r__14TDirectionCalcFf
    fmr     f2, f1
    lfs     f1, 0x6c(sp)
    addi    r3, r31, 0x178
    bl      calcTurnDirection__14TDirectionCalcFff
    stfs    f1, 0x178(r31)
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lfd     f30, 0x108(sp)
    mtlr    r0
    lfd     f29, 0x100(sp)
    lwz     r31, 0xfc(sp)
    addi    sp, sp, 0x118
    blr


.globl receiveMessage__13TLimitKoopaJrFP9THitActorUl
receiveMessage__13TLimitKoopaJrFP9THitActorUl: # 0x8013def0
    cmplwi  r5, 0xf
    bne-    branch_0x8013df00
    li      r3, 0x1
    blr

branch_0x8013df00:
    li      r3, 0x0
    blr


.globl getBasNameTable__13TLimitKoopaJrCFv
getBasNameTable__13TLimitKoopaJrCFv: # 0x8013df08
    lis     r3, koopajr_bastable_803bfda0@ha
    addi    r3, r3, koopajr_bastable_803bfda0@l
    blr


.globl calcRootMatrix__13TLimitKoopaJrFv
calcRootMatrix__13TLimitKoopaJrFv: # 0x8013df14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    lfs     f0, -0x4cf8(r2)
    lfs     f1, 0x178(r3)
    fmuls   f30, f0, f1
    fmr     f1, f30
    bl      sinf
    fmr     f31, f1
    fmr     f1, f30
    bl      cosf
    lfs     f0, -0x4d08(r2)
    addi    r3, sp, 0x14
    addi    r4, sp, 0x44
    stfs    f0, 0x44(sp)
    stfs    f31, 0x48(sp)
    stfs    f0, 0x4c(sp)
    stfs    f1, 0x50(sp)
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x10(r30)
    addi    r3, r30, 0x0
    addi    r31, sp, 0x14
    stfs    f0, 0x20(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x30(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x40(sp)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
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
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl bind__13TLimitKoopaJrFv
bind__13TLimitKoopaJrFv: # 0x8013dfe8
    blr


.globl perform__13TLimitKoopaJrFUlPQ26JDrama9TGraphics
perform__13TLimitKoopaJrFUlPQ26JDrama9TGraphics: # 0x8013dfec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    lwz     r0, 0x154(r3)
    lis     r3, unk_803874f0@h
    addi    r28, r3, unk_803874f0@l
    cmplwi  r0, 0x0
    bne-    branch_0x8013e054
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r28, 0x1b4
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x1b4
    mtlr    r12
    blrl
    lwz     r3, 0x18(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x154(r29)
branch_0x8013e054:
    lwz     r0, 0x150(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8013e090
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r28, 0x1c8
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x1c8
    mtlr    r12
    blrl
    stw     r3, 0x150(r29)
branch_0x8013e090:
    clrlwi. r0, r30, 31
    beq-    branch_0x8013e164
    addi    r4, r29, 0x158
    lwz     r3, 0x158(r29)
    cmpwi   r3, 0x0
    ble-    branch_0x8013e0b0
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x8013e0b0:
    addi    r4, r29, 0x15c
    lwz     r3, 0x15c(r29)
    cmpwi   r3, 0x0
    ble-    branch_0x8013e0c8
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x8013e0c8:
    lbz     r0, R13Off_m0x6448(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e10c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveLimitKoopaJrWait@ha
    stw     r0, R13Off_m0x6444(r13)
    addi    r0, r3, __vvt__22TNerveLimitKoopaJrWait@l
    lis     r4, __dt__22TNerveLimitKoopaJrWaitFv@ha
    stw     r0, R13Off_m0x6444(r13)
    lis     r3, unk_803f3c5c@h
    addi    r5, r3, unk_803f3c5c@l
    addi    r4, r4, __dt__22TNerveLimitKoopaJrWaitFv@l
    addi    r3, r13, R13Off_m0x6444
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6448(r13)
branch_0x8013e10c:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x6444
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8013e164
    lbz     r0, R13Off_m0x6450(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e164
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveLimitKoopaJrRun@ha
    stw     r0, R13Off_m0x644c(r13)
    addi    r0, r3, __vvt__21TNerveLimitKoopaJrRun@l
    lis     r4, __dt__21TNerveLimitKoopaJrRunFv@ha
    stw     r0, R13Off_m0x644c(r13)
    lis     r3, unk_803f3c50@h
    addi    r5, r3, unk_803f3c50@l
    addi    r4, r4, __dt__21TNerveLimitKoopaJrRunFv@l
    addi    r3, r13, R13Off_m0x644c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6450(r13)
branch_0x8013e164:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl reset__13TLimitKoopaJrFv
reset__13TLimitKoopaJrFv: # 0x8013e188
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      reset__11TSpineEnemyFv
    lwz     r4, 0x8c(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x8(r4)
    stw     r0, 0x158(r31)
    stw     r0, 0x15c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x16c(r3)
    stw     r0, 0x15c(r31)
    lfs     f1, -0x4d08(r2)
    stfs    f1, 0x160(r31)
    stfs    f1, 0x164(r31)
    stfs    f1, 0x168(r31)
    lfs     f0, -0x4d00(r2)
    stfs    f0, 0x16c(r31)
    stfs    f1, 0x178(r31)
    stfs    f1, 0x170(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl init__13TLimitKoopaJrFP12TLiveManager
init__13TLimitKoopaJrFP12TLiveManager: # 0x8013e204
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    stw     r4, 0x70(r3)
    mr      r4, r31
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8013e250
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8013e250:
    stw     r30, 0x78(r31)
    lis     r3, unk_80387660@h
    addi    r4, r3, unk_80387660@l
    lwz     r3, 0x78(r31)
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    li      r4, 0x1
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x144(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x4d08(r2)
    lis     r4, 0x800
    lfs     f3, 0x130(r3)
    fmr     f4, f31
    fmr     f2, f1
    addi    r3, r31, 0x0
    addi    r4, r4, 0x2e
    li      r5, 0x1
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lbz     r0, R13Off_m0x6450(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e324
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveLimitKoopaJrRun@ha
    stw     r0, R13Off_m0x644c(r13)
    addi    r0, r3, __vvt__21TNerveLimitKoopaJrRun@l
    lis     r4, __dt__21TNerveLimitKoopaJrRunFv@ha
    stw     r0, R13Off_m0x644c(r13)
    lis     r3, unk_803f3c50@h
    addi    r5, r3, unk_803f3c50@l
    addi    r4, r4, __dt__21TNerveLimitKoopaJrRunFv@l
    addi    r3, r13, R13Off_m0x644c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6450(r13)
branch_0x8013e324:
    lwz     r4, 0x8c(r31)
    li      r30, 0x0
    addi    r0, r13, R13Off_m0x644c
    stw     r30, 0x8(r4)
    mr      r3, r31
    stw     r30, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r30, 0x1c(r4)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x158(r3)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r4, 0x8c(r31)
    stw     r30, 0x8(r4)
    stw     r30, 0x158(r31)
    stw     r30, 0x15c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x16c(r3)
    mr      r3, r31
    stw     r0, 0x15c(r31)
    lfs     f1, -0x4d08(r2)
    stfs    f1, 0x160(r31)
    stfs    f1, 0x164(r31)
    stfs    f1, 0x168(r31)
    lfs     f0, -0x4d00(r2)
    stfs    f0, 0x16c(r31)
    stfs    f1, 0x178(r31)
    stfs    f1, 0x170(r31)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x4(r3)
    b       branch_0x8013e3e0

branch_0x8013e3c4:
    lwz     r3, 0x30(r4)
    clrlslwi  r0, r30, 16, 2
    addi    r30, r30, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x8013e3e0:
    lhz     r0, 0x2c(r4)
    clrlwi  r3, r30, 16
    cmplw   r3, r0
    blt+    branch_0x8013e3c4
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x78
    blr


.globl __ct__13TLimitKoopaJrFPCc
__ct__13TLimitKoopaJrFPCc: # 0x8013e40c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__13TLimitKoopaJr@ha
    addi    r3, r3, __vvt__13TLimitKoopaJr@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    addi    r3, r31, 0x170
    stw     r0, 0x150(r31)
    bl      __ct__14TDirectionCalcFv
    addi    r3, r31, 0x178
    bl      __ct__14TDirectionCalcFv
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__19TLimitKoopaJrParamsFPCc
__ct__19TLimitKoopaJrParamsFPCc: # 0x8013e488
    mflr    r0
    lis     r5, unk_803874f0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r5, unk_803874f0@l
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x1d4
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x1d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0xa8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x4d00(r2)
    addi    r3, r30, 0x1e4
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x1e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x1f8
    lfs     f0, -0x4d00(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x1f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x204
    lfs     f0, -0x4cf0(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x204
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x21c
    lfs     f0, -0x4cec(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x21c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x22c
    lfs     f0, -0x4ce8(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x22c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x23c
    lfs     f0, -0x4d08(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x23c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x24c
    lfs     f0, -0x4ce4(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x24c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x25c
    lfs     f0, -0x4ce0(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x25c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x26c
    lfs     f0, -0x4cdc(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x26c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r29, r3, __vvt__10TParamT_l_@l
    stw     r29, 0x15c(r31)
    li      r0, 0x4b0
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x16c(r31)
    addi    r28, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x280
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x280
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    li      r0, 0x168
    addi    r3, r31, 0x0
    stw     r0, 0x180(r31)
    stw     r28, 0x170(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lfs     f0, -0x7ba8(r13)
    mr      r3, r31
    stfs    f0, 0xb8(r31)
    lfs     f0, -0x7ba4(r13)
    stfs    f0, 0xcc(r31)
    lfs     f0, -0x7ba0(r13)
    stfs    f0, 0xe0(r31)
    lfs     f0, -0x7b9c(r13)
    stfs    f0, 0xf4(r31)
    lfs     f0, -0x7b98(r13)
    stfs    f0, 0x108(r31)
    lfs     f0, -0x7b94(r13)
    stfs    f0, 0x11c(r31)
    lfs     f0, -0x7b90(r13)
    stfs    f0, 0x130(r31)
    lfs     f0, -0x7b8c(r13)
    stfs    f0, 0x144(r31)
    lfs     f0, -0x7b88(r13)
    stfs    f0, 0x158(r31)
    lwz     r0, R13Off_m0x7b84(r13)
    stw     r0, 0x180(r31)
    lwz     r0, R13Off_m0x7b80(r13)
    stw     r0, 0x16c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__13TLimitKoopaJrFv
__dt__13TLimitKoopaJrFv: # 0x8013e740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013e790
    lis     r3, __vvt__13TLimitKoopaJr@ha
    addi    r3, r3, __vvt__13TLimitKoopaJr@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8013e790
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013e790:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_limitkoopajr_cpp
__sinit_limitkoopajr_cpp: # 0x8013e7ac
    mflr    r0
    lis     r3, unk_803f3c50@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f3c50@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e7f4
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8013e7f4:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e824
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8013e824:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e854
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8013e854:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e884
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8013e884:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e8b4
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8013e8b4:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e8e4
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8013e8e4:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e914
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8013e914:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e944
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8013e944:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e974
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8013e974:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e9a4
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8013e9a4:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8013e9d4
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8013e9d4:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8013ea04
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8013ea04:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8013ea34
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8013ea34:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8013ea64
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8013ea64:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8013ea94
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8013ea94:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8013eaa8
unk_8013eaa8: # 0x8013eaa8
    addi    r3, r3, -0x20
    b       __dt__13TLimitKoopaJrFv

