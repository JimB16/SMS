
.globl __dt__20TNerveAmenboHitWaterFv
__dt__20TNerveAmenboHitWaterFv: # 0x8012b8cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012b910
    lis     r3, __vvt__20TNerveAmenboHitWater@ha
    addi    r0, r3, __vvt__20TNerveAmenboHitWater@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8012b900
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8012b900:
    extsh.  r0, r4
    ble-    branch_0x8012b910
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012b910:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveAmenboHitWaterCFP24TSpineBase_10TLiveActor_
execute__20TNerveAmenboHitWaterCFP24TSpineBase_10TLiveActor_: # 0x8012b928
    mflr    r0
    lis     r3, unk_803860e8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r3, unk_803860e8@l
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8012ba0c
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1b0
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    bne-    branch_0x8012b990
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1c0
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8012b9c4
branch_0x8012b990:
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1c0
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5020(r2)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x8012ba0c

branch_0x8012b9c4:
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1d4
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    bne-    branch_0x8012ba0c
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1d4
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5020(r2)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x8012ba0c:
    lfs     f0, -0x501c(r2)
    addi    r3, r30, 0x0
    li      r4, 0x0
    stfs    f0, 0x48(sp)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    lwz     r5, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r5, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x50(sp)
    stw     r0, 0xb4(r30)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8012bb9c
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1d4
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8012ba94
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1c0
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5020(r2)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x8012bb9c

branch_0x8012ba94:
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1c0
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8012bb04
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x384(r3)
    lwz     r0, 0x20(r29)
    cmpw    r3, r0
    bge-    branch_0x8012bb04
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1b0
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5020(r2)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x8012bb9c

branch_0x8012bb04:
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1b0
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8012bb9c
    lbz     r0, R13Off_m0x6548(r13)
    extsb.  r0, r0
    bne-    branch_0x8012bb60
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveAmenboSearch@ha
    stw     r0, R13Off_m0x6544(r13)
    addi    r0, r3, __vvt__18TNerveAmenboSearch@l
    lis     r4, __dt__18TNerveAmenboSearchFv@ha
    stw     r0, R13Off_m0x6544(r13)
    lis     r3, unk_803f3670@h
    addi    r5, r3, unk_803f3670@l
    addi    r4, r4, __dt__18TNerveAmenboSearchFv@l
    addi    r3, r13, R13Off_m0x6544
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6548(r13)
branch_0x8012bb60:
    addi    r4, r13, R13Off_m0x6544
    cmplwi  r4, 0x0
    beq-    branch_0x8012bb94
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8012bb94
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8012bb94:
    li      r3, 0x1
    b       branch_0x8012bba0

branch_0x8012bb9c:
    li      r3, 0x0
branch_0x8012bba0:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x70
    blr


.globl __dt__18TNerveAmenboSearchFv
__dt__18TNerveAmenboSearchFv: # 0x8012bbc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012bc04
    lis     r3, __vvt__18TNerveAmenboSearch@ha
    addi    r0, r3, __vvt__18TNerveAmenboSearch@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8012bbf4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8012bbf4:
    extsh.  r0, r4
    ble-    branch_0x8012bc04
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012bc04:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveAmenboWalkCFP24TSpineBase_10TLiveActor_
execute__16TNerveAmenboWalkCFP24TSpineBase_10TLiveActor_: # 0x8012bc1c
    mflr    r0
    lis     r3, unk_803860e8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r3, unk_803860e8@l
    stw     r30, 0x88(sp)
    stw     r29, 0x84(sp)
    mr      r29, r4
    stw     r28, 0x80(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8012bd2c
    lfs     f6, 0x1b4(r30)
    lfs     f0, 0x1bc(r30)
    lfs     f5, 0x1b0(r30)
    fmuls   f1, f0, f6
    lfs     f2, 0x1b8(r30)
    lfs     f4, -0x5018(r2)
    fmuls   f0, f0, f5
    fmuls   f3, f5, f2
    fmuls   f1, f4, f1
    fmuls   f2, f6, f2
    fmuls   f0, f4, f0
    fmadds  f3, f4, f3, f1
    fmuls   f1, f5, f5
    fmsubs  f0, f4, f2, f0
    stfs    f3, 0x74(sp)
    fmuls   f2, f6, f6
    stfs    f0, 0x78(sp)
    lfs     f0, -0x5020(r2)
    fnmsubs  f0, f4, f1, f0
    fnmsubs  f0, f4, f2, f0
    stfs    f0, 0x7c(sp)
    lbz     r0, 0x1a0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8012bcd4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r3, r3, 0x2e8
    b       branch_0x8012bcec

branch_0x8012bcd4:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r3, r3, 0x2d4
branch_0x8012bcec:
    lfs     f1, 0x10(r3)
    lfs     f0, 0x74(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x74(sp)
    lfs     f0, 0x78(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(sp)
    lwz     r3, 0x74(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x7c(sp)
    stw     r0, 0xb4(r30)
branch_0x8012bd2c:
    lwz     r4, 0xac(r30)
    mr      r3, r30
    lwz     r0, 0xb0(r30)
    li      r28, 0x0
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x64(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x30c(r3)
    mr      r3, r30
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x5c(sp)
    lfs     f0, 0x60(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x60(sp)
    lfs     f0, 0x64(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x64(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x5c(sp)
    lfs     f1, 0x64(sp)
    fmuls   f2, f0, f0
    lfs     f0, 0x320(r3)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8012bdd0
    lfs     f0, -0x501c(r2)
    li      r28, 0x1
    stfs    f0, 0x64(sp)
    stfs    f0, 0x60(sp)
    stfs    f0, 0x5c(sp)
branch_0x8012bdd0:
    lwz     r4, 0x5c(sp)
    clrlwi. r0, r28, 24
    lwz     r3, 0x60(sp)
    stw     r4, 0xac(r30)
    stw     r3, 0xb0(r30)
    lwz     r0, 0x64(sp)
    stw     r0, 0xb4(r30)
    beq-    branch_0x8012be70
    lbz     r0, R13Off_m0x6548(r13)
    extsb.  r0, r0
    bne-    branch_0x8012be34
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveAmenboSearch@ha
    stw     r0, R13Off_m0x6544(r13)
    addi    r0, r3, __vvt__18TNerveAmenboSearch@l
    lis     r4, __dt__18TNerveAmenboSearchFv@ha
    stw     r0, R13Off_m0x6544(r13)
    lis     r3, unk_803f3670@h
    addi    r5, r3, unk_803f3670@l
    addi    r4, r4, __dt__18TNerveAmenboSearchFv@l
    addi    r3, r13, R13Off_m0x6544
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6548(r13)
branch_0x8012be34:
    addi    r4, r13, R13Off_m0x6544
    cmplwi  r4, 0x0
    beq-    branch_0x8012be68
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8012be68
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8012be68:
    li      r3, 0x1
    b       branch_0x8012bf50

branch_0x8012be70:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8012bf4c
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1e8
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8012bed0
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1fc
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5020(r2)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x8012bf4c

branch_0x8012bed0:
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1fc
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8012bf1c
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x210
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5020(r2)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x8012bf4c

branch_0x8012bf1c:
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1e8
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5020(r2)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x8012bf4c:
    li      r3, 0x0
branch_0x8012bf50:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lwz     r31, 0x8c(sp)
    mtlr    r0
    lwz     r30, 0x88(sp)
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x98
    blr


.globl __dt__16TNerveAmenboWalkFv
__dt__16TNerveAmenboWalkFv: # 0x8012bf74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012bfb8
    lis     r3, __vvt__16TNerveAmenboWalk@ha
    addi    r0, r3, __vvt__16TNerveAmenboWalk@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8012bfa8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8012bfa8:
    extsh.  r0, r4
    ble-    branch_0x8012bfb8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012bfb8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveAmenboPreAttackCFP24TSpineBase_10TLiveActor_
execute__21TNerveAmenboPreAttackCFP24TSpineBase_10TLiveActor_: # 0x8012bfd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    stw     r30, 0x38(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8012c030
    lis     r4, unk_803862a8@h
    lwz     r3, 0x74(r30)
    addi    r4, r4, unk_803862a8@l
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5018(r2)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x8012c030:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x398(r3)
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    bge-    branch_0x8012c130
    lbz     r0, 0x1a0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8012c068
    lfs     f31, -0x5014(r2)
    b       branch_0x8012c06c

branch_0x8012c068:
    lfs     f31, -0x5020(r2)
branch_0x8012c06c:
    lis     r4, unk_8038630c@h
    lwz     r3, 0x74(r30)
    addi    r4, r4, unk_8038630c@l
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f31, f31, f1
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x5010(r2)
    stfs    f0, 0x10(r3)
    lbz     r0, R13Off_m0x6530(r13)
    extsb.  r0, r0
    bne-    branch_0x8012c0f4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveAmenboWalk@ha
    stw     r0, R13Off_m0x652c(r13)
    addi    r0, r3, __vvt__16TNerveAmenboWalk@l
    lis     r4, __dt__16TNerveAmenboWalkFv@ha
    stw     r0, R13Off_m0x652c(r13)
    lis     r3, unk_803f3694@h
    addi    r5, r3, unk_803f3694@l
    addi    r4, r4, __dt__16TNerveAmenboWalkFv@l
    addi    r3, r13, R13Off_m0x652c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6530(r13)
branch_0x8012c0f4:
    addi    r4, r13, R13Off_m0x652c
    cmplwi  r4, 0x0
    beq-    branch_0x8012c128
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8012c128
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8012c128:
    li      r3, 0x1
    b       branch_0x8012c134

branch_0x8012c130:
    li      r3, 0x0
branch_0x8012c134:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl __dt__21TNerveAmenboPreAttackFv
__dt__21TNerveAmenboPreAttackFv: # 0x8012c150
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012c194
    lis     r3, __vvt__21TNerveAmenboPreAttack@ha
    addi    r0, r3, __vvt__21TNerveAmenboPreAttack@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8012c184
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8012c184:
    extsh.  r0, r4
    ble-    branch_0x8012c194
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012c194:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveAmenboTurnCFP24TSpineBase_10TLiveActor_
execute__16TNerveAmenboTurnCFP24TSpineBase_10TLiveActor_: # 0x8012c1ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8012c220
    lbz     r0, 0x1a0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8012c1ec
    lfs     f31, -0x5014(r2)
    b       branch_0x8012c1f0

branch_0x8012c1ec:
    lfs     f31, -0x5020(r2)
branch_0x8012c1f0:
    lis     r4, unk_8038630c@h
    lwz     r3, 0x74(r30)
    addi    r4, r4, unk_8038630c@l
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f31, f31, f1
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x8012c220:
    lwz     r3, 0xac(r30)
    li      r4, 0x0
    lwz     r0, 0xb0(r30)
    lfs     f1, -0x500c(r2)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x4c(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x4c(sp)
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x4c(sp)
    stw     r0, 0xb4(r30)
    lwz     r3, 0x74(r30)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5008(r2)
    lfs     f0, 0x10(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x1e0(r30)
    lfs     f1, -0x5020(r2)
    lfs     f0, 0x1e0(r30)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8012c2ac
    stfs    f1, 0x1e0(r30)
branch_0x8012c2ac:
    lfs     f1, 0x1e0(r30)
    addi    r3, r30, 0x1b0
    lfs     f0, 0x1c0(r30)
    addi    r4, r30, 0x1d0
    stfs    f0, 0x1b0(r30)
    lfs     f0, 0x1c4(r30)
    stfs    f0, 0x1b4(r30)
    lfs     f0, 0x1c8(r30)
    stfs    f0, 0x1b8(r30)
    lfs     f0, 0x1cc(r30)
    stfs    f0, 0x1bc(r30)
    bl      slerp__Q29JGeometry9TQuat4_f_FRCQ29JGeometry9TQuat4_f_f
    addi    r3, r30, 0x1b0
    lfs     f31, -0x5020(r2)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x5004(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8012c314
    lfs     f0, -0x501c(r2)
    stfs    f0, 0x1bc(r30)
    stfs    f0, 0x1b8(r30)
    stfs    f0, 0x1b4(r30)
    stfs    f0, 0x1b0(r30)
    b       branch_0x8012c328

branch_0x8012c314:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, r30, 0x1b0
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x8012c328:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5010(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8012c44c
    lbz     r0, 0x1a0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8012c3cc
    lbz     r0, R13Off_m0x6538(r13)
    extsb.  r0, r0
    bne-    branch_0x8012c394
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveAmenboPreAttack@ha
    stw     r0, R13Off_m0x6534(r13)
    addi    r0, r3, __vvt__21TNerveAmenboPreAttack@l
    lis     r4, __dt__21TNerveAmenboPreAttackFv@ha
    stw     r0, R13Off_m0x6534(r13)
    lis     r3, unk_803f3688@h
    addi    r5, r3, unk_803f3688@l
    addi    r4, r4, __dt__21TNerveAmenboPreAttackFv@l
    addi    r3, r13, R13Off_m0x6534
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6538(r13)
branch_0x8012c394:
    addi    r4, r13, R13Off_m0x6534
    cmplwi  r4, 0x0
    beq-    branch_0x8012c444
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8012c444
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
    b       branch_0x8012c444

branch_0x8012c3cc:
    lbz     r0, R13Off_m0x6530(r13)
    extsb.  r0, r0
    bne-    branch_0x8012c410
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveAmenboWalk@ha
    stw     r0, R13Off_m0x652c(r13)
    addi    r0, r3, __vvt__16TNerveAmenboWalk@l
    lis     r4, __dt__16TNerveAmenboWalkFv@ha
    stw     r0, R13Off_m0x652c(r13)
    lis     r3, unk_803f3694@h
    addi    r5, r3, unk_803f3694@l
    addi    r4, r4, __dt__16TNerveAmenboWalkFv@l
    addi    r3, r13, R13Off_m0x652c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6530(r13)
branch_0x8012c410:
    addi    r4, r13, R13Off_m0x652c
    cmplwi  r4, 0x0
    beq-    branch_0x8012c444
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8012c444
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8012c444:
    li      r3, 0x1
    b       branch_0x8012c450

branch_0x8012c44c:
    li      r3, 0x0
branch_0x8012c450:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl __dt__16TNerveAmenboTurnFv
__dt__16TNerveAmenboTurnFv: # 0x8012c46c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012c4b0
    lis     r3, __vvt__16TNerveAmenboTurn@ha
    addi    r0, r3, __vvt__16TNerveAmenboTurn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8012c4a0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8012c4a0:
    extsh.  r0, r4
    ble-    branch_0x8012c4b0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012c4b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveAmenboSearchCFP24TSpineBase_10TLiveActor_
execute__18TNerveAmenboSearchCFP24TSpineBase_10TLiveActor_: # 0x8012c4c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stw     r31, 0x10c(sp)
    stw     r30, 0x108(sp)
    mr      r30, r4
    stw     r29, 0x104(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8012c884
    li      r0, 0x0
    stb     r0, 0x1a0(r31)
    addi    r3, sp, 0xcc
    addi    r4, r31, 0x10
    lfs     f0, 0x194(r31)
    stfs    f0, 0xcc(sp)
    lfs     f0, 0x198(r31)
    stfs    f0, 0xd0(sp)
    lfs     f0, 0x19c(r31)
    stfs    f0, 0xd4(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x501c(r2)
    mr      r3, r31
    stfs    f0, 0xd0(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xcc(sp)
    lfs     f0, 0xd0(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0xd4(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x370(r3)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fmuls   f1, f3, f3
    fadds   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x8012c60c
    addi    r3, sp, 0xcc
    lfs     f31, -0x5020(r2)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x5004(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8012c5a4
    lfs     f0, -0x501c(r2)
    stfs    f0, 0xd4(sp)
    stfs    f0, 0xd0(sp)
    stfs    f0, 0xcc(sp)
    b       branch_0x8012c5b8

branch_0x8012c5a4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0xcc
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8012c5b8:
    lfs     f1, -0x501c(r2)
    addi    r3, sp, 0xac
    lfs     f3, -0x5020(r2)
    fmr     f2, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8012ca88
    lfs     f1, -0x5020(r2)
    addi    r4, sp, 0xac
    addi    r3, r31, 0x1d0
    addi    r5, sp, 0xcc
    bl      setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x1b0(r31)
    lwz     r0, 0x1b4(r31)
    stw     r3, 0x1c0(r31)
    stw     r0, 0x1c4(r31)
    lwz     r3, 0x1b8(r31)
    lwz     r0, 0x1bc(r31)
    stw     r3, 0x1c8(r31)
    stw     r0, 0x1cc(r31)
    lfs     f0, -0x501c(r2)
    stfs    f0, 0x1e0(r31)
    b       branch_0x8012c804

branch_0x8012c60c:
    mr      r3, r31
    bl      isFindOutMario__7TAmenboCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8012c6c8
    lwz     r6, R13Off_m0x60b4(r13)
    addi    r3, sp, 0xa0
    addi    r4, r31, 0x10
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xa8(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x501c(r2)
    addi    r3, sp, 0xa0
    lfs     f1, -0x5020(r2)
    mr      r4, r3
    stfs    f0, 0xa4(sp)
    bl      setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f
    lfs     f1, -0x501c(r2)
    addi    r3, sp, 0x6c
    lfs     f3, -0x5020(r2)
    fmr     f2, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8012ca88
    lfs     f1, -0x5020(r2)
    addi    r4, sp, 0x6c
    addi    r3, r31, 0x1d0
    addi    r5, sp, 0xa0
    bl      setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
    mr      r3, r31
    bl      getQuat__7TAmenboCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x1c0
    bl      __as__Q29JGeometry8TVec4_f_FRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x501c(r2)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stfs    f0, 0x1e0(r31)
    stb     r0, 0x1a0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x334(r3)
    stw     r0, 0x1a8(r31)
    b       branch_0x8012c804

branch_0x8012c6c8:
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, -0x501c(r2)
    stw     r0, 0xfc(sp)
    lis     r0, 0x4330
    lfd     f5, -0x4ff0(r2)
    fmr     f3, f1
    stw     r0, 0xf8(sp)
    lfs     f0, -0x4ffc(r2)
    addi    r3, sp, 0xe8
    lfd     f4, 0xf8(sp)
    lfs     f2, -0x5020(r2)
    fsubs   f4, f4, f5
    fmuls   f31, f0, f4
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8012ca88
    lfs     f1, -0x4ff8(r2)
    lfs     f0, -0x4ff4(r2)
    fsubs   f1, f1, f31
    lfs     f2, -0x5000(r2)
    fmuls   f0, f1, f0
    fmuls   f31, f2, f0
    fmr     f1, f31
    bl      sinf
    lfs     f0, 0xe8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xd8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xdc(sp)
    lfs     f0, 0xf0(sp)
    fmuls   f0, f0, f1
    fmr     f1, f31
    stfs    f0, 0xe0(sp)
    bl      cosf
    stfs    f1, 0xe4(sp)
    addi    r3, r31, 0x1d0
    lwz     r4, 0x1b0(r31)
    lwz     r0, 0x1b4(r31)
    stw     r4, 0x1c0(r31)
    stw     r0, 0x1c4(r31)
    lwz     r4, 0x1b8(r31)
    lwz     r0, 0x1bc(r31)
    stw     r4, 0x1c8(r31)
    stw     r0, 0x1cc(r31)
    lfs     f0, 0xd8(sp)
    stfs    f0, 0x1d0(r31)
    lfs     f0, 0xdc(sp)
    stfs    f0, 0x1d4(r31)
    lfs     f0, 0xe0(sp)
    stfs    f0, 0x1d8(r31)
    lfs     f0, 0xe4(sp)
    stfs    f0, 0x1dc(r31)
    lfs     f5, 0x1b8(r31)
    lfs     f4, 0x1dc(r31)
    lfs     f8, 0x1b4(r31)
    lfs     f10, 0x1b0(r31)
    fmuls   f1, f4, f5
    lfs     f9, 0x1d0(r31)
    fmuls   f2, f4, f8
    fmuls   f3, f4, f10
    lfs     f6, 0x1bc(r31)
    fmuls   f0, f9, f10
    lfs     f7, 0x1d8(r31)
    lfs     f11, 0x1d4(r31)
    fmadds  f3, f9, f6, f3
    fmsubs  f0, f4, f6, f0
    fmadds  f2, f11, f6, f2
    fmadds  f1, f7, f6, f1
    fmadds  f4, f11, f5, f3
    fmadds  f2, f7, f10, f2
    fmadds  f3, f9, f8, f1
    fnmsubs  f0, f11, f8, f0
    fnmsubs  f1, f7, f8, f4
    fnmsubs  f2, f9, f5, f2
    fnmsubs  f3, f11, f10, f3
    fnmsubs  f4, f7, f5, f0
    bl      set_f___Q29JGeometry8TVec4_f_Fffff_8012ca48
    lfs     f0, -0x501c(r2)
    stfs    f0, 0x1e0(r31)
branch_0x8012c804:
    lbz     r0, R13Off_m0x6540(r13)
    extsb.  r0, r0
    bne-    branch_0x8012c848
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveAmenboTurn@ha
    stw     r0, R13Off_m0x653c(r13)
    addi    r0, r3, __vvt__16TNerveAmenboTurn@l
    lis     r4, __dt__16TNerveAmenboTurnFv@ha
    stw     r0, R13Off_m0x653c(r13)
    lis     r3, unk_803f367c@h
    addi    r5, r3, unk_803f367c@l
    addi    r4, r4, __dt__16TNerveAmenboTurnFv@l
    addi    r3, r13, R13Off_m0x653c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6540(r13)
branch_0x8012c848:
    addi    r4, r13, R13Off_m0x653c
    cmplwi  r4, 0x0
    beq-    branch_0x8012c87c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8012c87c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8012c87c:
    li      r3, 0x1
    b       branch_0x8012ca28

branch_0x8012c884:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8012ca24
    lwz     r6, R13Off_m0x60b4(r13)
    addi    r3, sp, 0xbc
    addi    r4, r3, 0x0
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0xbc(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xc4(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f0, -0x501c(r2)
    stfs    f0, 0xc0(sp)
    lfs     f31, -0x5020(r2)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x5004(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8012c920
    lfs     f0, -0x501c(r2)
    stfs    f0, 0xc4(sp)
    stfs    f0, 0xc0(sp)
    stfs    f0, 0xbc(sp)
    b       branch_0x8012c934

branch_0x8012c920:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0xbc
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8012c934:
    lfs     f1, -0x501c(r2)
    addi    r3, sp, 0x8c
    lfs     f3, -0x5020(r2)
    fmr     f2, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8012ca88
    lfs     f1, -0x5020(r2)
    addi    r4, sp, 0x8c
    addi    r3, r31, 0x1d0
    addi    r5, sp, 0xbc
    bl      setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
    lwz     r4, 0x1b0(r31)
    li      r29, 0x1
    lwz     r0, 0x1b4(r31)
    mr      r3, r31
    stw     r4, 0x1c0(r31)
    stw     r0, 0x1c4(r31)
    lwz     r4, 0x1b8(r31)
    lwz     r0, 0x1bc(r31)
    stw     r4, 0x1c8(r31)
    stw     r0, 0x1cc(r31)
    lfs     f0, -0x501c(r2)
    stfs    f0, 0x1e0(r31)
    stb     r29, 0x1a0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x334(r3)
    stw     r0, 0x1a8(r31)
    lbz     r0, R13Off_m0x6540(r13)
    extsb.  r0, r0
    bne-    branch_0x8012c9e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveAmenboTurn@ha
    stw     r0, R13Off_m0x653c(r13)
    addi    r0, r3, __vvt__16TNerveAmenboTurn@l
    lis     r4, __dt__16TNerveAmenboTurnFv@ha
    stw     r0, R13Off_m0x653c(r13)
    lis     r3, unk_803f367c@h
    addi    r5, r3, unk_803f367c@l
    addi    r4, r4, __dt__16TNerveAmenboTurnFv@l
    addi    r3, r13, R13Off_m0x653c
    bl      __register_global_object
    stb     r29, R13Off_m0x6540(r13)
branch_0x8012c9e8:
    addi    r4, r13, R13Off_m0x653c
    cmplwi  r4, 0x0
    beq-    branch_0x8012ca1c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8012ca1c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8012ca1c:
    li      r3, 0x1
    b       branch_0x8012ca28

branch_0x8012ca24:
    li      r3, 0x0
branch_0x8012ca28:
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lwz     r31, 0x10c(sp)
    mtlr    r0
    lwz     r30, 0x108(sp)
    lwz     r29, 0x104(sp)
    addi    sp, sp, 0x118
    blr


.globl set_f___Q29JGeometry8TVec4_f_Fffff_8012ca48
set_f___Q29JGeometry8TVec4_f_Fffff_8012ca48: # 0x8012ca48
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    stfs    f4, 0xc(r3)
    blr


.globl __as__Q29JGeometry8TVec4_f_FRCQ29JGeometry8TVec4_f_
__as__Q29JGeometry8TVec4_f_FRCQ29JGeometry8TVec4_f_: # 0x8012ca5c
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r5, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r5, 0x8(r3)
    stw     r0, 0xc(r3)
    blr


.globl getQuat__7TAmenboCFv
getQuat__7TAmenboCFv: # 0x8012ca80
    addi    r3, r3, 0x1b0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8012ca88
set_f___Q29JGeometry8TVec3_f_Ffff_8012ca88: # 0x8012ca88
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl getBasNameTable__7TAmenboCFv
getBasNameTable__7TAmenboCFv: # 0x8012ca98
    lis     r3, amenbo_bastable@ha
    addi    r3, r3, amenbo_bastable@l
    blr


.globl createModelData__14TAmenboManagerFv
createModelData__14TAmenboManagerFv: # 0x8012caa4
    mflr    r0
    lis     r4, entry_2529@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_2529@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__14TAmenboManagerFR20JSUMemoryInputStream
load__14TAmenboManagerFR20JSUMemoryInputStream: # 0x8012cad8
    mflr    r0
    lis     r5, unk_803860e8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r23, 0x1c(sp)
    addi    r24, r3, 0x0
    addi    r23, r4, 0x0
    addi    r30, r5, unk_803860e8@l
    li      r3, 0x39c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8012cd00
    stw     r27, 0x10(sp)
    addi    r4, r30, 0x230
    lwz     r3, 0x10(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r2, R2Off_m0x4fe8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r2, R2Off_m0x4fe8
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x2d4(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x4fe0(r2)
    addi    r3, r30, 0x244
    stfs    f0, 0x2e4(r31)
    stw     r28, 0x2d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2e8
    addi    r6, r30, 0x244
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e8(r31)
    addi    r3, r30, 0x254
    lfs     f0, -0x4fdc(r2)
    stfs    f0, 0x2f8(r31)
    stw     r28, 0x2e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2fc
    addi    r6, r30, 0x254
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fc(r31)
    addi    r3, r30, 0x260
    lfs     f0, -0x4fd8(r2)
    stfs    f0, 0x30c(r31)
    stw     r28, 0x2fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x310
    addi    r6, r30, 0x260
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x310(r31)
    addi    r3, r30, 0x26c
    lfs     f0, -0x5020(r2)
    stfs    f0, 0x320(r31)
    stw     r28, 0x310(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x324
    addi    r6, r30, 0x26c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r26, r3, __vvt__10TParamT_l_@l
    stw     r26, 0x324(r31)
    li      r0, 0xf0
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x334(r31)
    addi    r25, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x284
    stw     r25, 0x324(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x338
    addi    r6, r30, 0x284
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x338(r31)
    addi    r3, r30, 0x294
    lfs     f0, -0x4fd4(r2)
    stfs    f0, 0x348(r31)
    stw     r28, 0x338(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x34c
    addi    r6, r30, 0x294
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34c(r31)
    addi    r3, r30, 0x2a4
    lfs     f0, -0x4fd0(r2)
    stfs    f0, 0x35c(r31)
    stw     r28, 0x34c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x360
    addi    r6, r30, 0x2a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x360(r31)
    addi    r3, r30, 0x2b4
    lfs     f0, -0x4fcc(r2)
    stfs    f0, 0x370(r31)
    stw     r28, 0x360(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x374
    addi    r6, r30, 0x2b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x374(r31)
    li      r0, 0x258
    addi    r3, r30, 0x2c4
    stw     r0, 0x384(r31)
    stw     r25, 0x374(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x388
    addi    r6, r30, 0x2c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x388(r31)
    li      r0, 0x5a
    mr      r3, r31
    stw     r0, 0x398(r31)
    stw     r25, 0x388(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x8012cd00:
    stw     r27, 0x38(r24)
    addi    r3, r24, 0x0
    addi    r4, r23, 0x0
    lwz     r0, R13Off_m0x7c88(r13)
    stw     r0, 0x194(r27)
    lwz     r0, R13Off_m0x7c84(r13)
    stw     r0, 0x1a8(r27)
    lwz     r0, R13Off_m0x7c80(r13)
    stw     r0, 0x16c(r27)
    lwz     r0, R13Off_m0x7c7c(r13)
    stw     r0, 0x180(r27)
    lfs     f0, -0x7c78(r13)
    stfs    f0, 0x40(r27)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r23, 0x1c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__14TAmenboManagerFPCc
__ct__14TAmenboManagerFPCc: # 0x8012cd4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__14TAmenboManager@ha
    addi    r0, r3, __vvt__14TAmenboManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl deactivateJumpBase__7TAmenboFv
deactivateJumpBase__7TAmenboFv: # 0x8012cd88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x1e4(r3)
    lhz     r0, 0x5c(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8012cdb4
    li      r0, 0x1
    b       branch_0x8012cdb8

branch_0x8012cdb4:
    li      r0, 0x0
branch_0x8012cdb8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8012cdc8
    li      r0, 0x0
    b       branch_0x8012cdcc

branch_0x8012cdc8:
    li      r0, 0x1
branch_0x8012cdcc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8012ce14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r31)
    lfs     f0, -0x4fc8(r2)
    stfs    f0, 0x58(r31)
    lfs     f0, -0x4fc4(r2)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x8012ce14:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isFindOutMario__7TAmenboCFv
isFindOutMario__7TAmenboCFv: # 0x8012ce28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r4, R13Off_m0x6094(r13)
    lwz     r4, 0x0(r4)
    rlwinm. r0, r4, 0, 15, 15
    beq-    branch_0x8012ce58
    li      r0, 0x1
    b       branch_0x8012ce5c

branch_0x8012ce58:
    li      r0, 0x0
branch_0x8012ce5c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8012cec8
    lwz     r3, R13Off_m0x608c(r13)
    lwz     r3, 0x0(r3)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8012ce90
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8012ce90
    cmplwi  r3, 0x4104
    bne-    branch_0x8012ce98
branch_0x8012ce90:
    li      r0, 0x1
    b       branch_0x8012ce9c

branch_0x8012ce98:
    li      r0, 0x0
branch_0x8012ce9c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8012cec8
    rlwinm. r0, r4, 0, 14, 14
    beq-    branch_0x8012ceb4
    li      r0, 0x1
    b       branch_0x8012ceb8

branch_0x8012ceb4:
    li      r0, 0x0
branch_0x8012ceb8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8012cec8
    li      r3, 0x0
    b       branch_0x8012cf94

branch_0x8012cec8:
    lwz     r5, R13Off_m0x60b4(r13)
    mr      r3, r31
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x348(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x40(sp)
    lfs     f0, 0x35c(r3)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8012cf90
    lfs     f1, -0x501c(r2)
    fmuls   f0, f31, f31
    stfs    f1, 0x40(sp)
    lfs     f2, 0x3c(sp)
    lfs     f1, 0x40(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x44(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8012cf90
    li      r3, 0x1
    b       branch_0x8012cf94

branch_0x8012cf90:
    li      r3, 0x0
branch_0x8012cf94:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl changeByJuice__7TAmenboFv
changeByJuice__7TAmenboFv: # 0x8012cfac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      changeByJuice__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8012cfd4
    li      r3, 0x0
    b       branch_0x8012cfe8

branch_0x8012cfd4:
    lwz     r4, 0x1e8(r31)
    li      r3, 0x1
    lhz     r0, 0x1a(r4)
    ori     r0, r0, 0x1
    sth     r0, 0x1a(r4)
branch_0x8012cfe8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setDeadAnm__7TAmenboFv
setDeadAnm__7TAmenboFv: # 0x8012cffc
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    li      r4, 0x1
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x501c(r2)
    stfs    f0, 0x10(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl attackToMario__7TAmenboFv
attackToMario__7TAmenboFv: # 0x8012d04c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8012d078
    b       branch_0x8012d07c

branch_0x8012d078:
    lwz     r30, 0x1c(r3)
branch_0x8012d07c:
    lbz     r0, R13Off_m0x6528(r13)
    extsb.  r0, r0
    bne-    branch_0x8012d0c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveAmenboHitWater@ha
    stw     r0, R13Off_m0x6524(r13)
    addi    r0, r3, __vvt__20TNerveAmenboHitWater@l
    lis     r4, __dt__20TNerveAmenboHitWaterFv@ha
    stw     r0, R13Off_m0x6524(r13)
    lis     r3, unk_803f36a0@h
    addi    r5, r3, unk_803f36a0@l
    addi    r4, r4, __dt__20TNerveAmenboHitWaterFv@l
    addi    r3, r13, R13Off_m0x6524
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6528(r13)
branch_0x8012d0c0:
    addi    r0, r13, R13Off_m0x6524
    cmplw   r30, r0
    beq-    branch_0x8012d0d4
    li      r0, 0x1
    b       branch_0x8012d0fc

branch_0x8012d0d4:
    lis     r4, unk_80386298@h
    lwz     r3, 0x74(r31)
    addi    r4, r4, unk_80386298@l
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8012d0f8
    li      r0, 0x1
    b       branch_0x8012d0fc

branch_0x8012d0f8:
    li      r0, 0x0
branch_0x8012d0fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8012d118
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
branch_0x8012d118:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl doKeepDistance__7TAmenboFv
doKeepDistance__7TAmenboFv: # 0x8012d130
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x8012d15c
    b       branch_0x8012d160

branch_0x8012d15c:
    lwz     r31, 0x1c(r3)
branch_0x8012d160:
    lbz     r0, R13Off_m0x6528(r13)
    extsb.  r0, r0
    bne-    branch_0x8012d1a4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveAmenboHitWater@ha
    stw     r0, R13Off_m0x6524(r13)
    addi    r0, r3, __vvt__20TNerveAmenboHitWater@l
    lis     r4, __dt__20TNerveAmenboHitWaterFv@ha
    stw     r0, R13Off_m0x6524(r13)
    lis     r3, unk_803f36a0@h
    addi    r5, r3, unk_803f36a0@l
    addi    r4, r4, __dt__20TNerveAmenboHitWaterFv@l
    addi    r3, r13, R13Off_m0x6524
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6528(r13)
branch_0x8012d1a4:
    addi    r0, r13, R13Off_m0x6524
    cmplw   r31, r0
    beq-    branch_0x8012d1b8
    li      r0, 0x1
    b       branch_0x8012d1e0

branch_0x8012d1b8:
    lis     r4, unk_80386298@h
    lwz     r3, 0x74(r30)
    addi    r4, r4, unk_80386298@l
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8012d1dc
    li      r0, 0x1
    b       branch_0x8012d1e0

branch_0x8012d1dc:
    li      r0, 0x0
branch_0x8012d1e0:
    clrlwi  r0, r0, 24
    lwz     r31, 0x24(sp)
    cntlzw  r0, r0
    lwz     r30, 0x20(sp)
    srwi    r3, r0, 5
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl isCollidMove__7TAmenboFP9THitActor
isCollidMove__7TAmenboFP9THitActor: # 0x8012d204
    subf    r3, r4, r3
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    blr


.globl forceKill__7TAmenboFv
forceKill__7TAmenboFv: # 0x8012d214
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r0, 0x1ac(r3)
    cmpwi   r0, 0x258
    blt-    branch_0x8012d27c
    lwz     r3, 0x8c(r30)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x8012d24c
    b       branch_0x8012d250

branch_0x8012d24c:
    lwz     r31, 0x1c(r3)
branch_0x8012d250:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r31, r3
    beq-    branch_0x8012d27c
    lwz     r0, 0xf0(r30)
    addi    r3, r30, 0x0
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8012d27c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl calcRootMatrix__7TAmenboFv
calcRootMatrix__7TAmenboFv: # 0x8012d294
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stmw    r27, 0x74(sp)
    mr      r27, r3
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8012d2c0
    li      r0, 0x1
    b       branch_0x8012d2c4

branch_0x8012d2c0:
    li      r0, 0x0
branch_0x8012d2c4:
    cmpwi   r0, 0x0
    beq-    branch_0x8012d2d8
    mr      r3, r27
    bl      calcRootMatrix__11TSpineEnemyFv
    b       branch_0x8012d3dc

branch_0x8012d2d8:
    addi    r3, sp, 0x40
    addi    r4, r27, 0x1b0
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x10(r27)
    mr      r3, r27
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x14(r27)
    stfs    f0, 0x5c(sp)
    lfs     f0, 0x18(r27)
    stfs    f0, 0x6c(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r27)
    addi    r31, sp, 0x40
    lwz     r0, 0x28(r27)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r27)
    stw     r0, 0x1c(r3)
    mr      r3, r27
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    mr      r3, r27
    bl      getModel__10TLiveActorCFv
    lfs     f1, 0x3c(r3)
    li      r29, 0x0
    lfs     f0, 0xc0(r27)
    mr      r31, r29
    fadds   f0, f1, f0
    stfs    f0, 0x3c(r3)
    lfs     f31, -0x5014(r2)
branch_0x8012d35c:
    addi    r30, r31, 0x1ec
    add     r30, r27, r30
    lwz     r28, 0x0(r30)
    mr      r3, r27
    bl      getModel__10TLiveActorCFv
    mulli   r0, r28, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    addi    r5, r30, 0x4
    lfs     f1, 0x1c(r3)
    mr      r7, r30
    lfs     f0, 0xc(r3)
    li      r4, 0x18e
    stfs    f0, 0x4(r30)
    li      r6, 0x1
    stfs    f1, 0x8(r30)
    stfs    f2, 0xc(r30)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8012d3cc
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x8012d3cc:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x4
    addi    r31, r31, 0x10
    blt+    branch_0x8012d35c
branch_0x8012d3dc:
    lmw     r27, 0x74(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl behaveToWater__7TAmenboFP9THitActor
behaveToWater__7TAmenboFP9THitActor: # 0x8012d3f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0x1a4(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x8012d4ac
    lwz     r0, 0x68(r4)
    lwz     r3, R13Off_m0x6088(r13)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r0, 0x414(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8012d4ac
    li      r0, 0x2d
    stw     r0, 0x1a4(r31)
    li      r0, 0x0
    lwz     r3, 0x8c(r31)
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x6528(r13)
    extsb.  r0, r0
    bne-    branch_0x8012d488
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveAmenboHitWater@ha
    stw     r0, R13Off_m0x6524(r13)
    addi    r0, r3, __vvt__20TNerveAmenboHitWater@l
    lis     r4, __dt__20TNerveAmenboHitWaterFv@ha
    stw     r0, R13Off_m0x6524(r13)
    lis     r3, unk_803f36a0@h
    addi    r5, r3, unk_803f36a0@l
    addi    r4, r4, __dt__20TNerveAmenboHitWaterFv@l
    addi    r3, r13, R13Off_m0x6524
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6528(r13)
branch_0x8012d488:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6524
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8012d4a0
    stw     r0, 0x1c(r4)
branch_0x8012d4a0:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8012d4ac:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl receiveMessage__7TAmenboFP9THitActorUl
receiveMessage__7TAmenboFP9THitActorUl: # 0x8012d4c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8012d4e0
    li      r3, 0x0
    b       branch_0x8012d500

branch_0x8012d4e0:
    cmpwi   r5, 0x2
    bge-    branch_0x8012d4fc
    cmpwi   r5, 0x0
    bge-    branch_0x8012d4f4
    b       branch_0x8012d4fc

branch_0x8012d4f4:
    li      r3, 0x0
    b       branch_0x8012d500

branch_0x8012d4fc:
    bl      receiveMessage__11TSmallEnemyFP9THitActorUl
branch_0x8012d500:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isSetUp__17TMapCollisionBaseCFv
isSetUp__17TMapCollisionBaseCFv: # 0x8012d510
    lhz     r0, 0x5c(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8012d524
    li      r0, 0x1
    b       branch_0x8012d528

branch_0x8012d524:
    li      r0, 0x0
branch_0x8012d528:
    clrlwi. r0, r0, 24
    beq-    branch_0x8012d538
    li      r3, 0x0
    blr

branch_0x8012d538:
    li      r3, 0x1
    blr


.globl perform__7TAmenboFUlPQ26JDrama9TGraphics
perform__7TAmenboFUlPQ26JDrama9TGraphics: # 0x8012d540
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8012d5b4
    lwz     r3, R13Off_m0x6318(r13)
    addi    r4, r30, 0x10
    bl      isInMirror__19TMirrorModelManagerCFRQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x8012d5b4
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x8012d5a4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r30)
    bl      calc__6MActorFv
branch_0x8012d5a4:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x8012d5b4
    lwz     r3, 0x74(r30)
    bl      viewCalc__6MActorFv
branch_0x8012d5b4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl control__7TAmenboFv
control__7TAmenboFv: # 0x8012d5cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    lwz     r0, 0x1a4(r3)
    lis     r3, unk_803f3670@h
    addi    r30, r3, unk_803f3670@l
    cmpwi   r0, 0x0
    ble-    branch_0x8012d608
    lwz     r3, 0x1a4(r31)
    addi    r0, r3, -0x1
    stw     r0, 0x1a4(r31)
branch_0x8012d608:
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8012d620
    lwz     r3, 0x1a8(r31)
    addi    r0, r3, -0x1
    stw     r0, 0x1a8(r31)
branch_0x8012d620:
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8012d634
    b       branch_0x8012d638

branch_0x8012d634:
    lwz     r29, 0x1c(r3)
branch_0x8012d638:
    lbz     r0, R13Off_m0x6528(r13)
    extsb.  r0, r0
    bne-    branch_0x8012d674
    addi    r3, r13, R13Off_m0x6524
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__20TNerveAmenboHitWater@ha
    addi    r0, r3, __vvt__20TNerveAmenboHitWater@l
    lis     r3, __dt__20TNerveAmenboHitWaterFv@ha
    stw     r0, R13Off_m0x6524(r13)
    addi    r4, r3, __dt__20TNerveAmenboHitWaterFv@l
    addi    r3, r13, R13Off_m0x6524
    addi    r5, r30, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6528(r13)
branch_0x8012d674:
    addi    r0, r13, R13Off_m0x6524
    cmplw   r29, r0
    bne-    branch_0x8012d700
    lis     r4, unk_80386298@h
    lwz     r3, 0x74(r31)
    addi    r4, r4, unk_80386298@l
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    bne-    branch_0x8012d700
    lwz     r3, 0x1e4(r31)
    bl      isSetUp__17TMapCollisionBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8012d6b4
    mr      r3, r31
    bl      deactivateJumpBase__7TAmenboFv
branch_0x8012d6b4:
    lwz     r3, 0x1e4(r31)
    addi    r4, r31, 0x10
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x2
    stw     r0, 0x64(r31)
    lfs     f0, -0x4fc0(r2)
    stfs    f0, 0x58(r31)
    lfs     f0, -0x4fbc(r2)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    b       branch_0x8012d754

branch_0x8012d700:
    lwz     r3, 0x1e4(r31)
    bl      isSetUp__17TMapCollisionBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8012d754
    lwz     r3, 0x1e4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r31)
    lfs     f0, -0x4fc8(r2)
    stfs    f0, 0x58(r31)
    lfs     f0, -0x4fc4(r2)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x8012d754:
    bl      SMS_AskJumpIntoWaterEffectExist__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8012d99c
    lfs     f0, 0x194(r31)
    addi    r3, sp, 0x60
    addi    r4, r31, 0x10
    stfs    f0, 0x60(sp)
    lfs     f0, 0x198(r31)
    stfs    f0, 0x64(sp)
    lfs     f0, 0x19c(r31)
    stfs    f0, 0x68(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x501c(r2)
    mr      r3, r31
    stfs    f0, 0x64(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x60(sp)
    lfs     f0, 0x64(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x68(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x370(r3)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fmuls   f1, f3, f3
    fadds   f0, f2, f0
    fcmpo   cr0, f1, f0
    blt-    branch_0x8012d99c
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8012d99c
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8012d7f0
    b       branch_0x8012d7f4

branch_0x8012d7f0:
    lwz     r29, 0x1c(r3)
branch_0x8012d7f4:
    lbz     r0, R13Off_m0x6528(r13)
    extsb.  r0, r0
    bne-    branch_0x8012d830
    addi    r3, r13, R13Off_m0x6524
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__20TNerveAmenboHitWater@ha
    addi    r0, r3, __vvt__20TNerveAmenboHitWater@l
    lis     r3, __dt__20TNerveAmenboHitWaterFv@ha
    stw     r0, R13Off_m0x6524(r13)
    addi    r4, r3, __dt__20TNerveAmenboHitWaterFv@l
    addi    r3, r13, R13Off_m0x6524
    addi    r5, r30, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6528(r13)
branch_0x8012d830:
    addi    r0, r13, R13Off_m0x6524
    cmplw   r29, r0
    beq-    branch_0x8012d99c
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8012d850
    b       branch_0x8012d854

branch_0x8012d850:
    lwz     r29, 0x1c(r3)
branch_0x8012d854:
    bl      theNerve__22TNerveSmallEnemyChangeFv
    cmplw   r29, r3
    beq-    branch_0x8012d99c
    lwz     r6, R13Off_m0x60b4(r13)
    addi    r3, sp, 0x54
    addi    r4, r31, 0x10
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x5c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x501c(r2)
    addi    r3, sp, 0x54
    lfs     f1, -0x5020(r2)
    mr      r4, r3
    stfs    f0, 0x58(sp)
    bl      setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f
    lfs     f1, -0x501c(r2)
    addi    r3, sp, 0x2c
    lfs     f3, -0x5020(r2)
    fmr     f2, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8012ca88
    lfs     f1, -0x5020(r2)
    addi    r4, sp, 0x2c
    addi    r3, r31, 0x1d0
    addi    r5, sp, 0x54
    bl      setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
    mr      r3, r31
    bl      getQuat__7TAmenboCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x1c0
    bl      __as__Q29JGeometry8TVec4_f_FRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x501c(r2)
    li      r29, 0x1
    addi    r3, r31, 0x0
    stfs    f0, 0x1e0(r31)
    stb     r29, 0x1a0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x334(r3)
    li      r0, 0x0
    stw     r3, 0x1a8(r31)
    lwz     r3, 0x8c(r31)
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x6540(r13)
    extsb.  r0, r0
    bne-    branch_0x8012d94c
    addi    r3, r13, R13Off_m0x653c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__16TNerveAmenboTurn@ha
    addi    r0, r3, __vvt__16TNerveAmenboTurn@l
    lis     r3, __dt__16TNerveAmenboTurnFv@ha
    stw     r0, R13Off_m0x653c(r13)
    addi    r4, r3, __dt__16TNerveAmenboTurnFv@l
    addi    r3, r13, R13Off_m0x653c
    addi    r5, r30, 0xc
    bl      __register_global_object
    stb     r29, R13Off_m0x6540(r13)
branch_0x8012d94c:
    lwz     r5, 0x8c(r31)
    addi    r4, r13, R13Off_m0x653c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8012d964
    stw     r0, 0x1c(r5)
branch_0x8012d964:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    addi    r3, sp, 0x6c
    stw     r4, 0x14(r5)
    lfs     f1, -0x501c(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8012ca88
    lwz     r3, 0x6c(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x74(sp)
    stw     r0, 0xb4(r31)
branch_0x8012d99c:
    mr      r3, r31
    bl      control__10TLiveActorFv
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl bind__7TAmenboFv
bind__7TAmenboFv: # 0x8012d9c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x8012dc80
    lwz     r4, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x14(r30)
    addi    r31, sp, 0x3c
    stw     r4, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x3c(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0xc0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x94(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x98(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x9c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0xac(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0xb0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0xb4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r30)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lfs     f0, 0xb0(r30)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8012daa4
    stfs    f1, 0xb0(r30)
branch_0x8012daa4:
    lfs     f1, 0x38(sp)
    addi    r4, r30, 0xc4
    lfs     f0, 0xc0(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x34(sp)
    lfs     f3, 0x3c(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r30)
    lfs     f1, 0xc8(r30)
    lfs     f0, -0x5020(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r30)
    lfs     f1, -0x4fb8(r2)
    lfs     f0, 0xc8(r30)
    lfs     f2, 0x38(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8012dc08
    lwz     r3, 0xc4(r30)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8012db0c
    li      r0, 0x1
    b       branch_0x8012db10

branch_0x8012db0c:
    li      r0, 0x0
branch_0x8012db10:
    clrlwi. r0, r0, 24
    beq-    branch_0x8012db2c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8012db2c:
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r30)
    lwz     r3, 0xc4(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8012db68
    cmplwi  r3, 0x101
    beq-    branch_0x8012db68
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8012db68
    cmplwi  r3, 0x4104
    bne-    branch_0x8012db70
branch_0x8012db68:
    li      r0, 0x1
    b       branch_0x8012db74

branch_0x8012db70:
    li      r0, 0x0
branch_0x8012db74:
    clrlwi. r0, r0, 24
    bne-    branch_0x8012dbcc
    cmplwi  r3, 0x102
    beq-    branch_0x8012db8c
    cmplwi  r3, 0x103
    bne-    branch_0x8012db94
branch_0x8012db8c:
    li      r0, 0x1
    b       branch_0x8012db98

branch_0x8012db94:
    li      r0, 0x0
branch_0x8012db98:
    clrlwi. r0, r0, 24
    bne-    branch_0x8012dbcc
    cmplwi  r3, 0x104
    beq-    branch_0x8012dbb8
    cmplwi  r3, 0x105
    beq-    branch_0x8012dbb8
    cmplwi  r3, 0x4104
    bne-    branch_0x8012dbc0
branch_0x8012dbb8:
    li      r0, 0x1
    b       branch_0x8012dbc4

branch_0x8012dbc0:
    li      r0, 0x0
branch_0x8012dbc4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8012dbe0
branch_0x8012dbcc:
    lfs     f0, -0x501c(r2)
    li      r0, 0x0
    stfs    f0, 0xb0(r30)
    stw     r0, 0x1ac(r30)
    b       branch_0x8012dbfc

branch_0x8012dbe0:
    lfs     f0, -0x501c(r2)
    stfs    f0, 0xb4(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xac(r30)
    lwz     r3, 0x1ac(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1ac(r30)
branch_0x8012dbfc:
    lfs     f0, 0xc8(r30)
    stfs    f0, 0x38(sp)
    b       branch_0x8012dc14

branch_0x8012dc08:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x8012dc14:
    lfs     f1, 0x38(sp)
    mr      r5, r31
    lfs     f0, 0xc0(r30)
    addi    r4, sp, 0x34
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f1, f1, f0
    lfs     f2, 0x14c(r30)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lfs     f1, 0x38(sp)
    addi    r3, sp, 0x10
    lfs     f0, 0xc0(r30)
    addi    r4, r30, 0x10
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lwz     r0, 0x34(sp)
    lwz     r5, 0x38(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x3c(sp)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x18(sp)
    stw     r0, 0x9c(r30)
branch_0x8012dc80:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl kill__7TAmenboFv
kill__7TAmenboFv: # 0x8012dc98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x1e8(r3)
    lhz     r0, 0x1a(r4)
    ori     r0, r0, 0x1
    sth     r0, 0x1a(r4)
    bl      kill__11TSmallEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__7TAmenboFv
reset__7TAmenboFv: # 0x8012dcc8
    blr


.globl init__7TAmenboFP12TLiveManager
init__7TAmenboFP12TLiveManager: # 0x8012dccc
    mflr    r0
    lis     r5, unk_803860e8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    mr      r30, r3
    addi    r31, r5, unk_803860e8@l
    stw     r4, 0x70(r3)
    addi    r4, r30, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8012dd18
    lwz     r4, 0x70(r30)
    addi    r3, r27, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8012dd18:
    stw     r27, 0x78(r30)
    addi    r4, r31, 0x184
    li      r5, 0x0
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    lbz     r0, R13Off_m0x6530(r13)
    extsb.  r0, r0
    bne-    branch_0x8012dd74
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveAmenboWalk@ha
    stw     r0, R13Off_m0x652c(r13)
    addi    r0, r3, __vvt__16TNerveAmenboWalk@l
    lis     r4, __dt__16TNerveAmenboWalkFv@ha
    stw     r0, R13Off_m0x652c(r13)
    lis     r3, unk_803f3694@h
    addi    r5, r3, unk_803f3694@l
    addi    r4, r4, __dt__16TNerveAmenboWalkFv@l
    addi    r3, r13, R13Off_m0x652c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6530(r13)
branch_0x8012dd74:
    lwz     r8, 0x8c(r30)
    li      r7, 0x0
    lis     r4, unk_1000002d@h
    stw     r7, 0x8(r8)
    addi    r0, r13, R13Off_m0x652c
    addi    r3, r30, 0x0
    stw     r7, 0x20(r8)
    addi    r4, r4, unk_1000002d@l
    li      r5, 0x2
    stw     r0, 0x14(r8)
    lis     r6, 0x9800
    stw     r0, 0x18(r8)
    stw     r7, 0x1c(r8)
    lfs     f1, -0x4fb4(r2)
    lfs     f2, -0x4fbc(r2)
    lfs     f3, -0x4fc8(r2)
    lfs     f4, -0x4fc4(r2)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    addi    r3, r30, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x40(r3)
    li      r3, 0x68
    stfs    f0, 0x14c(r30)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8012ddfc
    mr      r3, r27
    bl      __ct__17TMapCollisionWarpFv
branch_0x8012ddfc:
    stw     r27, 0x1e4(r30)
    lis     r5, unk_00008000@ha
    addi    r4, r31, 0x2f8
    lwz     r3, 0x1e4(r30)
    addi    r5, r5, unk_00008000@l
    li      r6, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r28, r3, 0x18e
    lbz     r0, 0x18e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8012de54
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x2d4
    li      r5, 0x18e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x8012de54:
    mr      r3, r30
    bl      initAnmSound__10TLiveActorFv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8012de78
    addi    r3, r27, 0x0
    addi    r4, r31, 0x318
    bl      __ct__12TMirrorActorFPCc
branch_0x8012de78:
    stw     r27, 0x1e8(r30)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    mr      r4, r3
    lwz     r3, 0x1e8(r30)
    li      r5, 0x18
    bl      init__12TMirrorActorFP8J3DModelUs
    lfs     f0, 0x10(r30)
    li      r28, 0x0
    li      r27, 0x0
    stfs    f0, 0x194(r30)
    li      r29, 0x0
    lfs     f0, 0x14(r30)
    stfs    f0, 0x198(r30)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x19c(r30)
    lfs     f0, -0x501c(r2)
    stfs    f0, 0x1b0(r30)
    stfs    f0, 0x1b4(r30)
    stfs    f0, 0x1b8(r30)
    lfs     f0, -0x5020(r2)
    stfs    f0, 0x1bc(r30)
    stb     r28, 0x1a0(r30)
    stw     r28, 0x1a4(r30)
    stw     r28, 0x1a8(r30)
    stw     r28, 0x1ac(r30)
branch_0x8012dee0:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x4(r3)
    add     r3, r31, r28
    lwz     r4, 0x174(r3)
    lwz     r3, 0xb0(r5)
    bl      getIndex__10JUTNameTabCFPCc
    addi    r27, r27, 0x1
    addi    r0, r29, 0x1ec
    cmpwi   r27, 0x4
    stwx    r3, r30, r0
    addi    r29, r29, 0x10
    addi    r28, r28, 0x4
    blt+    branch_0x8012dee0
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __ct__7TAmenboFPCc
__ct__7TAmenboFPCc: # 0x8012df2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, __vvt__7TAmenbo@ha
    lwz     r31, 0x8(sp)
    addi    r3, r3, __vvt__7TAmenbo@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __ct__Q27TAmenbo13EffectOnJointFv@ha
    stw     r0, 0x20(r31)
    addi    r4, r3, __ct__Q27TAmenbo13EffectOnJointFv@l
    addi    r3, r31, 0x1ec
    li      r5, 0x0
    li      r6, 0x10
    li      r7, 0x4
    bl      __construct_array
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__Q27TAmenbo13EffectOnJointFv
__ct__Q27TAmenbo13EffectOnJointFv: # 0x8012dfa0
    blr


.globl __dt__7TAmenboFv
__dt__7TAmenboFv: # 0x8012dfa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8012e00c
    lis     r3, __vvt__7TAmenbo@ha
    addi    r3, r3, __vvt__7TAmenbo@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8012dffc
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8012dffc:
    extsh.  r0, r31
    ble-    branch_0x8012e00c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8012e00c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TAmenboManagerFv
__dt__14TAmenboManagerFv: # 0x8012e028
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8012e080
    lis     r3, __vvt__14TAmenboManager@ha
    addi    r0, r3, __vvt__14TAmenboManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8012e070
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8012e070:
    extsh.  r0, r31
    ble-    branch_0x8012e080
    mr      r3, r30
    bl      __dl__FPv
branch_0x8012e080:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl unk_8012e09c
unk_8012e09c: # 0x8012e09c
    addi    r3, r3, -0x20
    b       __dt__7TAmenboFv

