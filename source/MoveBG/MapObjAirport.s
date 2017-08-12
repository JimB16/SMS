
.globl __dt__17TAirportEventSinkFv
__dt__17TAirportEventSinkFv: # 0x801e5f64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e5fdc
    lis     r3, __vvt__17TAirportEventSink@h
    addi    r0, r3, __vvt__17TAirportEventSink@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801e5fcc
    lis     r3, __vvt__29TMapEventSinkInPollutionReset@h
    addi    r0, r3, __vvt__29TMapEventSinkInPollutionReset@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801e5fcc
    lis     r3, __vvt__24TMapEventSinkInPollution@h
    addi    r0, r3, __vvt__24TMapEventSinkInPollution@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801e5fcc
    lis     r3, __vvt__13TMapEventSink@h
    addi    r0, r3, __vvt__13TMapEventSink@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__9TMapEventFv
branch_0x801e5fcc:
    extsh.  r0, r31
    ble-    branch_0x801e5fdc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e5fdc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__17TAirportEventSinkFPCc
__ct__17TAirportEventSinkFPCc: # 0x801e5ff8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __ct__13TMapEventSinkFPCc
    lis     r3, __vvt__24TMapEventSinkInPollution@h
    addi    r0, r3, __vvt__24TMapEventSinkInPollution@l
    lis     r3, __vvt__29TMapEventSinkInPollutionReset@h
    stw     r0, 0x0(r31)
    addi    r0, r3, __vvt__29TMapEventSinkInPollutionReset@l
    lis     r3, __vvt__17TAirportEventSink@h
    stw     r0, 0x0(r31)
    addi    r0, r3, __vvt__17TAirportEventSink@l
    stw     r0, 0x0(r31)
    li      r3, 0x0
    li      r0, 0x168
    stw     r3, 0x64(r31)
    mr      r3, r31
    stw     r0, 0x68(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl loadAfter__17TAirportEventSinkFv
loadAfter__17TAirportEventSinkFv: # 0x801e605c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r3
    bl      loadAfter__29TMapEventSinkInPollutionResetFv
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_80392be8@h
    addi    r31, r3, unk_80392be8@l
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
    stw     r3, 0x6c(r29)
    li      r0, 0x2d0
    li      r3, 0x1e0
    stw     r0, 0x40(r29)
    li      r0, 0x3c
    stw     r3, 0x44(r29)
    stw     r0, 0x48(r29)
    lfs     f0, -0x2370(r2)
    stfs    f0, 0x38(r29)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl watch__17TAirportEventSinkFv
watch__17TAirportEventSinkFv: # 0x801e60f0
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    lwz     r3, 0x54(r3)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e61ac
    lwz     r3, 0x6c(r8)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x801e61ac
    li      r0, 0x0
    stw     r0, 0x28(r8)
    lis     r3, unk_80392c04@h
    addi    r4, r3, unk_80392c04@l
    lwz     r3, R13Off_m0x6048(r13)
    addi    r5, sp, 0x3c
    sth     r0, 0x3c(sp)
    li      r6, -0x1
    li      r7, 0x1
    stw     r5, 0x8(sp)
    li      r9, 0x0
    li      r10, 0x0
    lwz     r5, 0x6c(r8)
    li      r8, 0x0
    lfs     f1, -0x236c(r2)
    addi    r5, r5, 0x10
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r3, R13Off_m0x62f0(r13)
    li      r4, 0x484d
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lhz     r0, 0x32(r3)
    ori     r0, r0, 0x2
    sth     r0, 0x32(r3)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e61a4
    li      r3, 0x484d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801e61a4:
    li      r3, 0x1
    b       branch_0x801e61b0

branch_0x801e61ac:
    li      r3, 0x0
branch_0x801e61b0:
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl control__17TAirportEventSinkFv
control__17TAirportEventSinkFv: # 0x801e61c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x40(r3)
    lwz     r4, 0x4c(r31)
    addi    r0, r3, -0x12c
    cmpw    r4, r0
    bne-    branch_0x801e61f8
    lwz     r3, R13Off_m0x62f0(r13)
    li      r4, 0x0
    addi    r3, r3, 0x70
    bl      offLayer__22TPollutionCounterLayerFi
branch_0x801e61f8:
    lwz     r3, 0x4c(r31)
    lwz     r0, 0x48(r31)
    cmpw    r3, r0
    ble-    branch_0x801e6218
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x5
    lfs     f1, -0x2368(r2)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
branch_0x801e6218:
    mr      r3, r31
    bl      control__13TMapEventSinkFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl finishControl__17TAirportEventSinkFv
finishControl__17TAirportEventSinkFv: # 0x801e6234
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r5, R13Off_m0x62f0(r13)
    lwz     r4, 0x28(r3)
    addi    r31, r5, 0x70
    bl      getPollutionObj__13TMapEventSinkFi
    addi    r6, r3, 0x0
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      pushJointObjStampTask__22TPollutionCounterLayerFUcUcP13TPollutionObj
    lfs     f1, -0x236c(r2)
    lis     r4, unk_80392c18@h
    lis     r5, unk_80392c30@h
    lwz     r3, R13Off_m0x62b0(r13)
    fmr     f2, f1
    fmr     f3, f1
    addi    r4, r4, unk_80392c18@l
    addi    r5, r5, unk_80392c30@l
    bl      makeShineAppearWithDemoOffset__12TItemManagerFPCcPCcfff
    lwz     r3, R13Off_m0x62f0(r13)
    li      r4, 0x0
    addi    r3, r3, 0x70
    bl      offLayer__22TPollutionCounterLayerFi
    mr      r3, r30
    bl      finishControl__13TMapEventSinkFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __ct__14TAirportSwitchFPCc
__ct__14TAirportSwitchFPCc: # 0x801e62c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__14TAirportSwitch@h
    addi    r3, r3, __vvt__14TAirportSwitch@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x148(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__14TAirportSwitchFv
loadAfter__14TAirportSwitchFv: # 0x801e6310
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r3
    bl      loadAfter__14TMapObjGeneralFv
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_80392c48@h
    addi    r31, r3, unk_80392c48@l
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
    stw     r3, 0x148(r29)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl breaking__14TAirportSwitchFv
breaking__14TAirportSwitchFv: # 0x801e6384
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801e63b8
    lwz     r3, 0x148(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801e63b8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__5TPoolFv
__dt__5TPoolFv: # 0x801e63cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e6434
    lis     r3, __vvt__5TPool@h
    addi    r3, r3, __vvt__5TPool@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e6424
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e6424:
    extsh.  r0, r31
    ble-    branch_0x801e6434
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e6434:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TAirportSwitchFv
__dt__14TAirportSwitchFv: # 0x801e6450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e64d0
    lis     r3, __vvt__14TAirportSwitch@h
    addi    r3, r3, __vvt__14TAirportSwitch@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e64c0
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e64c0
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e64c0:
    extsh.  r0, r31
    ble-    branch_0x801e64d0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e64d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjAirport_cpp
__sinit_MapObjAirport_cpp: # 0x801e64ec
    mflr    r0
    lis     r3, unk_803fa068@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fa068@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801e6534
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801e6534:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801e6564
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801e6564:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801e6594
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801e6594:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801e65c4
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801e65c4:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801e65f4
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801e65f4:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801e6624
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801e6624:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801e6654
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801e6654:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801e6684
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801e6684:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801e66b4
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801e66b4:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801e66e4
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801e66e4:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801e6714
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801e6714:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801e6744
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801e6744:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801e6774
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801e6774:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801e67a4
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801e67a4:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801e67d4
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801e67d4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801e67e8
unk_801e67e8: # 0x801e67e8
    addi    r3, r3, -0x20
    b       __dt__14TAirportSwitchFv

