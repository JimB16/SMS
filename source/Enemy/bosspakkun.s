
.globl __dt__15TNerveBPCannonLFv
__dt__15TNerveBPCannonLFv: # 0x8008fb88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8008fbcc
    lis     r3, __vvt__15TNerveBPCannonL@h
    addi    r0, r3, __vvt__15TNerveBPCannonL@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8008fbbc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8008fbbc:
    extsh.  r0, r4
    ble-    branch_0x8008fbcc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8008fbcc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__15TNerveBPCannonLCFP24TSpineBase_10TLiveActor_
execute__15TNerveBPCannonLCFP24TSpineBase_10TLiveActor_: # 0x8008fbe4
    mflr    r0
    lis     r3, unk_8037b998@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    addi    r30, r3, unk_8037b998@l
    stw     r29, 0x2c(sp)
    stw     r28, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r4, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r28, 0x74(r4)
    mr      r29, r4
    bne-    branch_0x8008fc30
    addi    r3, r28, 0x0
    addi    r4, r30, 0x5c4
    bl      setBck__6MActorFPCc
branch_0x8008fc30:
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8008fcf8
    addi    r3, r28, 0x0
    addi    r4, r30, 0x5c4
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8008fc78
    addi    r3, r28, 0x0
    addi    r4, r30, 0x5dc
    bl      setBck__6MActorFPCc
    mr      r3, r29
    bl      launchPolDrop__11TBossPakkunFv
    b       branch_0x8008fcf8

branch_0x8008fc78:
    lbz     r0, R13Off_m0x6c5c(r13)
    extsb.  r0, r0
    bne-    branch_0x8008fcbc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPWaitL@h
    stw     r0, R13Off_m0x6c58(r13)
    addi    r0, r3, __vvt__13TNerveBPWaitL@l
    lis     r4, __dt__13TNerveBPWaitLFv@ha
    stw     r0, R13Off_m0x6c58(r13)
    lis     r3, unk_803f1184@h
    addi    r5, r3, unk_803f1184@l
    addi    r4, r4, __dt__13TNerveBPWaitLFv@l
    addi    r3, r13, R13Off_m0x6c58
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c5c(r13)
branch_0x8008fcbc:
    addi    r4, r13, R13Off_m0x6c58
    cmplwi  r4, 0x0
    beq-    branch_0x8008fcf0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8008fcf0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8008fcf0:
    li      r3, 0x1
    b       branch_0x8008fcfc

branch_0x8008fcf8:
    li      r3, 0x0
branch_0x8008fcfc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl __dt__13TNerveBPWaitLFv
__dt__13TNerveBPWaitLFv: # 0x8008fd1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8008fd60
    lis     r3, __vvt__13TNerveBPWaitL@h
    addi    r0, r3, __vvt__13TNerveBPWaitL@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8008fd50
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8008fd50:
    extsh.  r0, r4
    ble-    branch_0x8008fd60
    mr      r3, r31
    bl      __dl__FPv
branch_0x8008fd60:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__15TNerveBPCannonLFv
theNerve__15TNerveBPCannonLFv: # 0x8008fd78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6c54(r13)
    extsb.  r0, r0
    bne-    branch_0x8008fdc8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPCannonL@h
    stw     r0, R13Off_m0x6c50(r13)
    addi    r0, r3, __vvt__15TNerveBPCannonL@l
    lis     r4, __dt__15TNerveBPCannonLFv@ha
    stw     r0, R13Off_m0x6c50(r13)
    lis     r3, unk_803f1190@h
    addi    r5, r3, unk_803f1190@l
    addi    r4, r4, __dt__15TNerveBPCannonLFv@l
    addi    r3, r13, R13Off_m0x6c50
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c54(r13)
branch_0x8008fdc8:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6c50
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__13TNerveBPWaitLCFP24TSpineBase_10TLiveActor_
execute__13TNerveBPWaitLCFP24TSpineBase_10TLiveActor_: # 0x8008fddc
    mflr    r0
    lis     r3, unk_8037b998@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    mr      r30, r4
    addi    r29, r3, unk_8037b998@l
    lwz     r0, 0x20(r4)
    lwz     r4, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r31, 0x74(r4)
    mr      r26, r4
    bne-    branch_0x8008fe1c
    addi    r3, r31, 0x0
    addi    r4, r29, 0x5f0
    bl      setBck__6MActorFPCc
branch_0x8008fe1c:
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r30)
    lwz     r0, 0xb8(r3)
    cmpw    r4, r0
    blt-    branch_0x8008fff8
    lwz     r0, 0x188(r26)
    lwz     r28, R13Off_m0x60b4(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8008fe7c
    lwz     r27, R13Off_m0x70b0(r13)
    addi    r3, r29, 0x600
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x600
    mtlr    r12
    blrl
    stw     r3, 0x188(r26)
branch_0x8008fe7c:
    lwz     r3, 0x188(r26)
    cmplwi  r3, 0x0
    bne-    branch_0x8008fe90
    li      r3, 0x0
    b       branch_0x8008fe98

branch_0x8008fe90:
    mr      r4, r28
    bl      contain__20TAreaCylinderManagerFRCQ29JGeometry8TVec3_f_
branch_0x8008fe98:
    cmpwi   r3, 0x0
    beq-    branch_0x8008ff60
    lwz     r3, R13Off_m0x608c(r13)
    lwz     r3, 0x0(r3)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8008fecc
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8008fecc
    cmplwi  r3, 0x4104
    bne-    branch_0x8008fed4
branch_0x8008fecc:
    li      r0, 0x1
    b       branch_0x8008fed8

branch_0x8008fed4:
    li      r0, 0x0
branch_0x8008fed8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8008ff60
    lbz     r0, R13Off_m0x6c54(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ff24
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPCannonL@h
    stw     r0, R13Off_m0x6c50(r13)
    addi    r0, r3, __vvt__15TNerveBPCannonL@l
    lis     r4, __dt__15TNerveBPCannonLFv@ha
    stw     r0, R13Off_m0x6c50(r13)
    lis     r3, unk_803f1190@h
    addi    r5, r3, unk_803f1190@l
    addi    r4, r4, __dt__15TNerveBPCannonLFv@l
    addi    r3, r13, R13Off_m0x6c50
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c54(r13)
branch_0x8008ff24:
    addi    r4, r13, R13Off_m0x6c50
    cmplwi  r4, 0x0
    beq-    branch_0x8008ff58
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8008ff58
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8008ff58:
    li      r3, 0x1
    b       branch_0x8008fffc

branch_0x8008ff60:
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8008fff8
    lbz     r0, R13Off_m0x6c5c(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ffbc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPWaitL@h
    stw     r0, R13Off_m0x6c58(r13)
    addi    r0, r3, __vvt__13TNerveBPWaitL@l
    lis     r4, __dt__13TNerveBPWaitLFv@ha
    stw     r0, R13Off_m0x6c58(r13)
    lis     r3, unk_803f1184@h
    addi    r5, r3, unk_803f1184@l
    addi    r4, r4, __dt__13TNerveBPWaitLFv@l
    addi    r3, r13, R13Off_m0x6c58
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c5c(r13)
branch_0x8008ffbc:
    addi    r4, r13, R13Off_m0x6c58
    cmplwi  r4, 0x0
    beq-    branch_0x8008fff0
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8008fff0
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8008fff0:
    li      r3, 0x1
    b       branch_0x8008fffc

branch_0x8008fff8:
    li      r3, 0x0
branch_0x8008fffc:
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl theNerve__13TNerveBPWaitLFv
theNerve__13TNerveBPWaitLFv: # 0x80090010
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6c5c(r13)
    extsb.  r0, r0
    bne-    branch_0x80090060
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPWaitL@h
    stw     r0, R13Off_m0x6c58(r13)
    addi    r0, r3, __vvt__13TNerveBPWaitL@l
    lis     r4, __dt__13TNerveBPWaitLFv@ha
    stw     r0, R13Off_m0x6c58(r13)
    lis     r3, unk_803f1184@h
    addi    r5, r3, unk_803f1184@l
    addi    r4, r4, __dt__13TNerveBPWaitLFv@l
    addi    r3, r13, R13Off_m0x6c58
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c5c(r13)
branch_0x80090060:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6c58
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__18TNerveBPBreakSleepCFP24TSpineBase_10TLiveActor_
execute__18TNerveBPBreakSleepCFP24TSpineBase_10TLiveActor_: # 0x80090074
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800900b4
    addi    r3, r30, 0x0
    li      r4, 0xe
    bl      changeBck__11TBossPakkunFi
    li      r3, 0x7
    li      r4, 0xa
    bl      stopTrackBGMs__5MSBgmFUcUl
branch_0x800900b4:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8009014c
    lbz     r0, R13Off_m0x6ca4(r13)
    extsb.  r0, r0
    bne-    branch_0x80090110
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPTakeOff@h
    stw     r0, R13Off_m0x6ca0(r13)
    addi    r0, r3, __vvt__15TNerveBPTakeOff@l
    lis     r4, __dt__15TNerveBPTakeOffFv@h
    stw     r0, R13Off_m0x6ca0(r13)
    lis     r3, unk_803f1118@h
    addi    r5, r3, unk_803f1118@l
    addi    r4, r4, __dt__15TNerveBPTakeOffFv@l
    addi    r3, r13, R13Off_m0x6ca0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ca4(r13)
branch_0x80090110:
    addi    r4, r13, R13Off_m0x6ca0
    cmplwi  r4, 0x0
    beq-    branch_0x80090144
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80090144
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80090144:
    li      r3, 0x1
    b       branch_0x80090150

branch_0x8009014c:
    li      r3, 0x0
branch_0x80090150:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__15TNerveBPTakeOffFv
__dt__15TNerveBPTakeOffFv: # 0x80090168
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800901ac
    lis     r3, __vvt__15TNerveBPTakeOff@h
    addi    r0, r3, __vvt__15TNerveBPTakeOff@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009019c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009019c:
    extsh.  r0, r4
    ble-    branch_0x800901ac
    mr      r3, r31
    bl      __dl__FPv
branch_0x800901ac:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__18TNerveBPBreakSleepFv
theNerve__18TNerveBPBreakSleepFv: # 0x800901c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6c64(r13)
    extsb.  r0, r0
    bne-    branch_0x80090214
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveBPBreakSleep@h
    stw     r0, R13Off_m0x6c60(r13)
    addi    r0, r3, __vvt__18TNerveBPBreakSleep@l
    lis     r4, __dt__18TNerveBPBreakSleepFv@h
    stw     r0, R13Off_m0x6c60(r13)
    lis     r3, unk_803f1178@h
    addi    r5, r3, unk_803f1178@l
    addi    r4, r4, __dt__18TNerveBPBreakSleepFv@l
    addi    r3, r13, R13Off_m0x6c60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c64(r13)
branch_0x80090214:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6c60
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TNerveBPBreakSleepFv
__dt__18TNerveBPBreakSleepFv: # 0x80090228
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009026c
    lis     r3, __vvt__18TNerveBPBreakSleep@h
    addi    r0, r3, __vvt__18TNerveBPBreakSleep@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009025c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009025c:
    extsh.  r0, r4
    ble-    branch_0x8009026c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009026c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__13TNerveBPSleepCFP24TSpineBase_10TLiveActor_
execute__13TNerveBPSleepCFP24TSpineBase_10TLiveActor_: # 0x80090284
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800902a8
    li      r4, 0x17
    bl      changeBck__11TBossPakkunFi
branch_0x800902a8:
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl theNerve__13TNerveBPSleepFv
theNerve__13TNerveBPSleepFv: # 0x800902bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6c6c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009030c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPSleep@h
    stw     r0, R13Off_m0x6c68(r13)
    addi    r0, r3, __vvt__13TNerveBPSleep@l
    lis     r4, __dt__13TNerveBPSleepFv@h
    stw     r0, R13Off_m0x6c68(r13)
    lis     r3, unk_803f116c@h
    addi    r5, r3, unk_803f116c@l
    addi    r4, r4, __dt__13TNerveBPSleepFv@l
    addi    r3, r13, R13Off_m0x6c68
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c6c(r13)
branch_0x8009030c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6c68
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__13TNerveBPSleepFv
__dt__13TNerveBPSleepFv: # 0x80090320
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80090364
    lis     r3, __vvt__13TNerveBPSleep@h
    addi    r0, r3, __vvt__13TNerveBPSleep@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80090354
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80090354:
    extsh.  r0, r4
    ble-    branch_0x80090364
    mr      r3, r31
    bl      __dl__FPv
branch_0x80090364:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveBPFallCFP24TSpineBase_10TLiveActor_
execute__12TNerveBPFallCFP24TSpineBase_10TLiveActor_: # 0x8009037c
    mflr    r0
    lis     r3, up_3221@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r3, up_3221@l
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    mr      r29, r4
    stw     r28, 0x90(sp)
    lwz     r0, 0x20(r4)
    lwz     r4, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r28, 0x74(r4)
    mr      r30, r4
    bne-    branch_0x800903e4
    lwz     r0, 0xf0(r30)
    addi    r3, r30, 0x0
    li      r4, 0xa
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    bl      changeBck__11TBossPakkunFi
branch_0x800903e4:
    addi    r3, r28, 0x0
    li      r4, 0xa
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80090420
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80090870
    addi    r3, r30, 0x0
    li      r4, 0x9
    bl      changeBck__11TBossPakkunFi
    b       branch_0x80090870

branch_0x80090420:
    addi    r3, r28, 0x0
    li      r4, 0x9
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80090484
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80090448
    li      r0, 0x1
    b       branch_0x8009044c

branch_0x80090448:
    li      r0, 0x0
branch_0x8009044c:
    cmpwi   r0, 0x0
    bne-    branch_0x80090870
    addi    r3, r30, 0x0
    li      r4, 0x8
    bl      changeBck__11TBossPakkunFi
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0xf
    lfs     f1, -0x6740(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x2
    bl      rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_
    b       branch_0x80090870

branch_0x80090484:
    addi    r3, r28, 0x0
    li      r4, 0x8
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800904e0
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80090870
    addi    r3, r30, 0x0
    li      r4, 0xe
    bl      changeBck__11TBossPakkunFi
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x10
    lfs     f1, -0x6740(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x0
    bl      rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_
    b       branch_0x80090870

branch_0x800904e0:
    addi    r3, r28, 0x0
    li      r4, 0xe
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80090870
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80090870
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80090530
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80090530
    li      r0, 0x1
    b       branch_0x80090534

branch_0x80090530:
    li      r0, 0x0
branch_0x80090534:
    clrlwi. r0, r0, 24
    beq-    branch_0x800907f4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x160(r30)
    lfs     f31, 0x1a8(r3)
    lwz     r0, 0x98(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80090594
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x6738(r2)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x673c(r2)
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fcmpo   cr0, f0, f31
    bge-    branch_0x80090680
branch_0x80090594:
    lbz     r0, R13Off_m0x6ca4(r13)
    extsb.  r0, r0
    bne-    branch_0x800905d4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPTakeOff@h
    stw     r0, R13Off_m0x6ca0(r13)
    addi    r0, r3, __vvt__15TNerveBPTakeOff@l
    lis     r3, __dt__15TNerveBPTakeOffFv@h
    stw     r0, R13Off_m0x6ca0(r13)
    addi    r4, r3, __dt__15TNerveBPTakeOffFv@l
    addi    r3, r13, R13Off_m0x6ca0
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ca4(r13)
branch_0x800905d4:
    addi    r4, r13, R13Off_m0x6ca0
    cmplwi  r4, 0x0
    beq-    branch_0x80090608
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80090608
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80090608:
    lbz     r0, R13Off_m0x6d0c(r13)
    extsb.  r0, r0
    bne-    branch_0x80090648
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPVomit@h
    stw     r0, R13Off_m0x6d08(r13)
    addi    r0, r3, __vvt__13TNerveBPVomit@l
    lis     r3, __dt__13TNerveBPVomitFv@h
    stw     r0, R13Off_m0x6d08(r13)
    addi    r4, r3, __dt__13TNerveBPVomitFv@l
    addi    r3, r13, R13Off_m0x6d08
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d0c(r13)
branch_0x80090648:
    addi    r4, r13, R13Off_m0x6d08
    cmplwi  r4, 0x0
    beq-    branch_0x80090868
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80090868
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
    b       branch_0x80090868

branch_0x80090680:
    lwz     r3, 0x160(r30)
    lwz     r0, 0x98(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8009077c
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x800906d0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x800906d0:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x80090704
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80090704
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80090704:
    lbz     r0, R13Off_m0x6d04(r13)
    extsb.  r0, r0
    bne-    branch_0x80090744
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPTornado@h
    stw     r0, R13Off_m0x6d00(r13)
    addi    r0, r3, __vvt__15TNerveBPTornado@l
    lis     r3, __dt__15TNerveBPTornadoFv@h
    stw     r0, R13Off_m0x6d00(r13)
    addi    r4, r3, __dt__15TNerveBPTornadoFv@l
    addi    r3, r13, R13Off_m0x6d00
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d04(r13)
branch_0x80090744:
    addi    r4, r13, R13Off_m0x6d00
    cmplwi  r4, 0x0
    beq-    branch_0x80090868
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80090868
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
    b       branch_0x80090868

branch_0x8009077c:
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x800907bc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x800907bc:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x80090868
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80090868
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
    b       branch_0x80090868

branch_0x800907f4:
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x80090834
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x80090834:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x80090868
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80090868
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80090868:
    li      r3, 0x1
    b       branch_0x80090874

branch_0x80090870:
    li      r3, 0x0
branch_0x80090874:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    mtlr    r0
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa8
    blr


.globl __dt__15TNerveBPTornadoFv
__dt__15TNerveBPTornadoFv: # 0x80090898
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800908dc
    lis     r3, __vvt__15TNerveBPTornado@h
    addi    r0, r3, __vvt__15TNerveBPTornado@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800908cc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800908cc:
    extsh.  r0, r4
    ble-    branch_0x800908dc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800908dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12TNerveBPWaitFv
__dt__12TNerveBPWaitFv: # 0x800908f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80090938
    lis     r3, __vvt__12TNerveBPWait@h
    addi    r0, r3, __vvt__12TNerveBPWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80090928
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80090928:
    extsh.  r0, r4
    ble-    branch_0x80090938
    mr      r3, r31
    bl      __dl__FPv
branch_0x80090938:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13TNerveBPVomitFv
__dt__13TNerveBPVomitFv: # 0x80090950
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80090994
    lis     r3, __vvt__13TNerveBPVomit@h
    addi    r0, r3, __vvt__13TNerveBPVomit@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80090984
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80090984:
    extsh.  r0, r4
    ble-    branch_0x80090994
    mr      r3, r31
    bl      __dl__FPv
branch_0x80090994:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__12TNerveBPFallFv
theNerve__12TNerveBPFallFv: # 0x800909ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6c74(r13)
    extsb.  r0, r0
    bne-    branch_0x800909fc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPFall@h
    stw     r0, R13Off_m0x6c70(r13)
    addi    r0, r3, __vvt__12TNerveBPFall@l
    lis     r4, __dt__12TNerveBPFallFv@h
    stw     r0, R13Off_m0x6c70(r13)
    lis     r3, unk_803f1160@h
    addi    r5, r3, unk_803f1160@l
    addi    r4, r4, __dt__12TNerveBPFallFv@l
    addi    r3, r13, R13Off_m0x6c70
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c74(r13)
branch_0x800909fc:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6c70
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__12TNerveBPFallFv
__dt__12TNerveBPFallFv: # 0x80090a10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80090a54
    lis     r3, __vvt__12TNerveBPFall@h
    addi    r0, r3, __vvt__12TNerveBPFall@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80090a44
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80090a44:
    extsh.  r0, r4
    ble-    branch_0x80090a54
    mr      r3, r31
    bl      __dl__FPv
branch_0x80090a54:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__13TNerveBPHoverCFP24TSpineBase_10TLiveActor_
execute__13TNerveBPHoverCFP24TSpineBase_10TLiveActor_: # 0x80090a6c
    mflr    r0
    lis     r3, up_3221@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stmw    r26, 0x88(sp)
    mr      r29, r4
    addi    r31, r3, up_3221@l
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80090ab0
    addi    r3, r30, 0x0
    li      r4, 0x10
    bl      changeBck__11TBossPakkunFi
    li      r0, 0x3
    stb     r0, 0x16c(r30)
branch_0x80090ab0:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x188(r30)
    lfs     f31, 0x248(r3)
    cmplwi  r0, 0x0
    lwz     r27, R13Off_m0x60b4(r13)
    bne-    branch_0x80090b0c
    lis     r3, unk_8037bf98@ha
    lwz     r26, R13Off_m0x70b0(r13)
    addi    r28, r3, unk_8037bf98@l
    addi    r3, r28, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x188(r30)
branch_0x80090b0c:
    lwz     r3, 0x188(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x80090b20
    li      r3, 0x0
    b       branch_0x80090b28

branch_0x80090b20:
    mr      r4, r27
    bl      contain__20TAreaCylinderManagerFRCQ29JGeometry8TVec3_f_
branch_0x80090b28:
    cmpwi   r3, 0x0
    beq-    branch_0x80090d30
    fmuls   f0, f31, f31
    lfs     f1, 0x134(r30)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80090d30
    lbz     r0, R13Off_m0x6c7c(r13)
    extsb.  r0, r0
    bne-    branch_0x80090b80
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPHover@h
    stw     r0, R13Off_m0x6c78(r13)
    addi    r0, r3, __vvt__13TNerveBPHover@l
    lis     r3, __dt__13TNerveBPHoverFv@h
    stw     r0, R13Off_m0x6c78(r13)
    addi    r4, r3, __dt__13TNerveBPHoverFv@l
    addi    r3, r13, R13Off_m0x6c78
    addi    r5, r31, 0x144
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c7c(r13)
branch_0x80090b80:
    addi    r4, r13, R13Off_m0x6c78
    cmplwi  r4, 0x0
    beq-    branch_0x80090bb4
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80090bb4
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80090bb4:
    lbz     r0, R13Off_m0x6c8c(r13)
    extsb.  r0, r0
    bne-    branch_0x80090bf4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPFlyCannon@h
    stw     r0, R13Off_m0x6c88(r13)
    addi    r0, r3, __vvt__17TNerveBPFlyCannon@l
    lis     r3, __dt__17TNerveBPFlyCannonFv@h
    stw     r0, R13Off_m0x6c88(r13)
    addi    r4, r3, __dt__17TNerveBPFlyCannonFv@l
    addi    r3, r13, R13Off_m0x6c88
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c8c(r13)
branch_0x80090bf4:
    addi    r4, r13, R13Off_m0x6c88
    cmplwi  r4, 0x0
    beq-    branch_0x80090c28
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80090c28
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80090c28:
    li      r0, 0x0
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r0, 0x6c(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x78(sp)
    lwz     r3, 0x118(r30)
    lwz     r0, 0x114(r30)
    cmpw    r3, r0
    bge-    branch_0x80090c94
    lwz     r4, 0x11c(r30)
    slwi    r3, r3, 4
    lwz     r0, 0xf4(r30)
    add     r4, r4, r3
    stw     r0, 0x0(r4)
    lwz     r3, 0xf8(r30)
    lwz     r0, 0xfc(r30)
    stw     r3, 0x4(r4)
    stw     r0, 0x8(r4)
    lwz     r0, 0x100(r30)
    stw     r0, 0xc(r4)
    lwz     r3, 0x118(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x118(r30)
branch_0x80090c94:
    lwz     r0, 0x6c(sp)
    stw     r0, 0xf4(r30)
    lwz     r3, 0x70(sp)
    lwz     r0, 0x74(sp)
    stw     r3, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0x78(sp)
    stw     r0, 0x100(r30)
    lbz     r0, R13Off_m0x6c84(r13)
    extsb.  r0, r0
    bne-    branch_0x80090cf4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveBPFlyPivot@h
    stw     r0, R13Off_m0x6c80(r13)
    addi    r0, r3, __vvt__16TNerveBPFlyPivot@l
    lis     r3, __dt__16TNerveBPFlyPivotFv@h
    stw     r0, R13Off_m0x6c80(r13)
    addi    r4, r3, __dt__16TNerveBPFlyPivotFv@l
    addi    r3, r13, R13Off_m0x6c80
    addi    r5, r31, 0x138
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c84(r13)
branch_0x80090cf4:
    addi    r4, r13, R13Off_m0x6c80
    cmplwi  r4, 0x0
    beq-    branch_0x80090d28
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80090d28
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80090d28:
    li      r3, 0x1
    b       branch_0x80090ddc

branch_0x80090d30:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r29)
    lwz     r0, 0x234(r3)
    cmpw    r4, r0
    blt-    branch_0x80090dd8
    lbz     r0, R13Off_m0x6c9c(r13)
    extsb.  r0, r0
    bne-    branch_0x80090d94
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__11TNerveBPFly@h
    stw     r0, R13Off_m0x6c98(r13)
    addi    r0, r3, __vvt__11TNerveBPFly@l
    lis     r3, __dt__11TNerveBPFlyFv@h
    stw     r0, R13Off_m0x6c98(r13)
    addi    r4, r3, __dt__11TNerveBPFlyFv@l
    addi    r3, r13, R13Off_m0x6c98
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c9c(r13)
branch_0x80090d94:
    addi    r4, r13, R13Off_m0x6c98
    cmplwi  r4, 0x0
    beq-    branch_0x80090dc8
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80090dc8
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80090dc8:
    li      r0, 0x0
    stb     r0, 0x16c(r30)
    li      r3, 0x1
    b       branch_0x80090ddc

branch_0x80090dd8:
    li      r3, 0x0
branch_0x80090ddc:
    lmw     r26, 0x88(sp)
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl __dt__11TNerveBPFlyFv
__dt__11TNerveBPFlyFv: # 0x80090df4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80090e38
    lis     r3, __vvt__11TNerveBPFly@h
    addi    r0, r3, __vvt__11TNerveBPFly@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80090e28
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80090e28:
    extsh.  r0, r4
    ble-    branch_0x80090e38
    mr      r3, r31
    bl      __dl__FPv
branch_0x80090e38:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16TNerveBPFlyPivotFv
__dt__16TNerveBPFlyPivotFv: # 0x80090e50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80090e94
    lis     r3, __vvt__16TNerveBPFlyPivot@h
    addi    r0, r3, __vvt__16TNerveBPFlyPivot@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80090e84
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80090e84:
    extsh.  r0, r4
    ble-    branch_0x80090e94
    mr      r3, r31
    bl      __dl__FPv
branch_0x80090e94:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17TNerveBPFlyCannonFv
__dt__17TNerveBPFlyCannonFv: # 0x80090eac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80090ef0
    lis     r3, __vvt__17TNerveBPFlyCannon@h
    addi    r0, r3, __vvt__17TNerveBPFlyCannon@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80090ee0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80090ee0:
    extsh.  r0, r4
    ble-    branch_0x80090ef0
    mr      r3, r31
    bl      __dl__FPv
branch_0x80090ef0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13TNerveBPHoverFv
__dt__13TNerveBPHoverFv: # 0x80090f08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80090f4c
    lis     r3, __vvt__13TNerveBPHover@h
    addi    r0, r3, __vvt__13TNerveBPHover@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80090f3c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80090f3c:
    extsh.  r0, r4
    ble-    branch_0x80090f4c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80090f4c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__13TNerveBPHoverFv
theNerve__13TNerveBPHoverFv: # 0x80090f64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6c7c(r13)
    extsb.  r0, r0
    bne-    branch_0x80090fb4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPHover@h
    stw     r0, R13Off_m0x6c78(r13)
    addi    r0, r3, __vvt__13TNerveBPHover@l
    lis     r4, __dt__13TNerveBPHoverFv@h
    stw     r0, R13Off_m0x6c78(r13)
    lis     r3, unk_803f1154@h
    addi    r5, r3, unk_803f1154@l
    addi    r4, r4, __dt__13TNerveBPHoverFv@l
    addi    r3, r13, R13Off_m0x6c78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c7c(r13)
branch_0x80090fb4:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6c78
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__16TNerveBPFlyPivotCFP24TSpineBase_10TLiveActor_
execute__16TNerveBPFlyPivotCFP24TSpineBase_10TLiveActor_: # 0x80090fc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80090ff4
    addi    r3, r31, 0x0
    li      r4, 0xb
    bl      changeBck__11TBossPakkunFi
branch_0x80090ff4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x144(r3)
    mr      r3, r31
    bl      turnToCurPathNode__11TSpineEnemyFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009105c
    lwz     r0, 0x118(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80091054
    addi    r3, sp, 0x20
    addi    r4, r31, 0x114
    bl      pop__23TSolidStack_9TPathNode_Fv
    lwz     r0, 0x20(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x100(r31)
branch_0x80091054:
    li      r3, 0x1
    b       branch_0x80091060

branch_0x8009105c:
    li      r3, 0x0
branch_0x80091060:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl theNerve__16TNerveBPFlyPivotFv
theNerve__16TNerveBPFlyPivotFv: # 0x80091074
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6c84(r13)
    extsb.  r0, r0
    bne-    branch_0x800910c4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveBPFlyPivot@h
    stw     r0, R13Off_m0x6c80(r13)
    addi    r0, r3, __vvt__16TNerveBPFlyPivot@l
    lis     r4, __dt__16TNerveBPFlyPivotFv@h
    stw     r0, R13Off_m0x6c80(r13)
    lis     r3, unk_803f1148@h
    addi    r5, r3, unk_803f1148@l
    addi    r4, r4, __dt__16TNerveBPFlyPivotFv@l
    addi    r3, r13, R13Off_m0x6c80
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c84(r13)
branch_0x800910c4:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6c80
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__17TNerveBPFlyCannonCFP24TSpineBase_10TLiveActor_
execute__17TNerveBPFlyCannonCFP24TSpineBase_10TLiveActor_: # 0x800910d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r30, 0x74(r3)
    mr      r31, r3
    bne-    branch_0x80091118
    addi    r3, r31, 0x0
    li      r4, 0xc
    bl      changeBck__11TBossPakkunFi
branch_0x80091118:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0xa8
    bne-    branch_0x8009112c
    mr      r3, r31
    bl      launchPolDrop__11TBossPakkunFv
branch_0x8009112c:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8009114c
    li      r3, 0x1
    b       branch_0x80091150

branch_0x8009114c:
    li      r3, 0x0
branch_0x80091150:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl theNerve__17TNerveBPFlyCannonFv
theNerve__17TNerveBPFlyCannonFv: # 0x8009116c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6c8c(r13)
    extsb.  r0, r0
    bne-    branch_0x800911bc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPFlyCannon@h
    stw     r0, R13Off_m0x6c88(r13)
    addi    r0, r3, __vvt__17TNerveBPFlyCannon@l
    lis     r4, __dt__17TNerveBPFlyCannonFv@h
    stw     r0, R13Off_m0x6c88(r13)
    lis     r3, unk_803f113c@h
    addi    r5, r3, unk_803f113c@l
    addi    r4, r4, __dt__17TNerveBPFlyCannonFv@l
    addi    r3, r13, R13Off_m0x6c88
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c8c(r13)
branch_0x800911bc:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6c88
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__17TNerveBPTouchDownCFP24TSpineBase_10TLiveActor_
execute__17TNerveBPTouchDownCFP24TSpineBase_10TLiveActor_: # 0x800911d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r29, 0x74(r3)
    mr      r30, r3
    bne-    branch_0x80091210
    addi    r3, r30, 0x0
    li      r4, 0xb
    bl      changeBck__11TBossPakkunFi
branch_0x80091210:
    addi    r3, r29, 0x0
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80091294
    lfs     f1, 0x14(r30)
    addi    r3, r30, 0x104
    lfs     f0, -0x6730(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r4, 0x104(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x8009124c
    addi    r4, r4, 0x10
    b       branch_0x80091250

branch_0x8009124c:
    addi    r4, r3, 0x4
branch_0x80091250:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x34(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x14(r30)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80091294
    stfs    f1, 0x14(r30)
    addi    r3, r30, 0x0
    li      r4, 0x12
    bl      changeBck__11TBossPakkunFi
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
branch_0x80091294:
    addi    r3, r29, 0x0
    li      r4, 0x12
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80091340
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80091340
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x80091304
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r4, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    lis     r3, unk_803f1064@h
    addi    r5, r3, unk_803f1064@l
    addi    r4, r4, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x80091304:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x80091338
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80091338
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80091338:
    li      r3, 0x1
    b       branch_0x80091344

branch_0x80091340:
    li      r3, 0x0
branch_0x80091344:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl theNerve__17TNerveBPTouchDownFv
theNerve__17TNerveBPTouchDownFv: # 0x80091360
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6c94(r13)
    extsb.  r0, r0
    bne-    branch_0x800913b0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPTouchDown@h
    stw     r0, R13Off_m0x6c90(r13)
    addi    r0, r3, __vvt__17TNerveBPTouchDown@l
    lis     r4, __dt__17TNerveBPTouchDownFv@h
    stw     r0, R13Off_m0x6c90(r13)
    lis     r3, unk_803f1130@h
    addi    r5, r3, unk_803f1130@l
    addi    r4, r4, __dt__17TNerveBPTouchDownFv@l
    addi    r3, r13, R13Off_m0x6c90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c94(r13)
branch_0x800913b0:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6c90
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__17TNerveBPTouchDownFv
__dt__17TNerveBPTouchDownFv: # 0x800913c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80091408
    lis     r3, __vvt__17TNerveBPTouchDown@h
    addi    r0, r3, __vvt__17TNerveBPTouchDown@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800913f8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800913f8:
    extsh.  r0, r4
    ble-    branch_0x80091408
    mr      r3, r31
    bl      __dl__FPv
branch_0x80091408:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__11TNerveBPFlyCFP24TSpineBase_10TLiveActor_
execute__11TNerveBPFlyCFP24TSpineBase_10TLiveActor_: # 0x80091420
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80091480
    addi    r3, r31, 0x0
    li      r4, 0xb
    bl      changeBck__11TBossPakkunFi
    mr      r3, r31
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
    lbz     r0, 0x1cc(r31)
    extsb.  r0, r0
    bne-    branch_0x80091480
    lis     r3, unk_8001000d@h
    addi    r3, r3, unk_8001000d@l
    bl      startBGM__5MSBgmFUl
    li      r0, 0x1
    stb     r0, 0x1cc(r31)
branch_0x80091480:
    lwz     r4, 0x104(r31)
    addi    r3, r31, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x80091498
    addi    r5, r4, 0x10
    b       branch_0x8009149c

branch_0x80091498:
    addi    r5, r3, 0x4
branch_0x8009149c:
    lwz     r4, 0x0(r5)
    addi    r3, sp, 0x94
    lwz     r0, 0x4(r5)
    stw     r4, 0x94(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x9c(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x94(sp)
    lfs     f1, 0x98(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x98(sp)
    lfs     f2, 0x9c(sp)
    lfs     f1, 0x18(r31)
    lfs     f0, -0x672c(r2)
    fsubs   f1, f2, f1
    stfs    f1, 0x9c(sp)
    stfs    f0, 0x98(sp)
    bl      PSVECMag
    lfs     f0, -0x6728(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800915b0
    lwz     r4, 0x124(r31)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 20, 20
    bne-    branch_0x80091530
    mr      r3, r31
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
    b       branch_0x800915b0

branch_0x80091530:
    lbz     r0, R13Off_m0x6c7c(r13)
    extsb.  r0, r0
    bne-    branch_0x80091574
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPHover@h
    stw     r0, R13Off_m0x6c78(r13)
    addi    r0, r3, __vvt__13TNerveBPHover@l
    lis     r4, __dt__13TNerveBPHoverFv@h
    stw     r0, R13Off_m0x6c78(r13)
    lis     r3, unk_803f1154@h
    addi    r5, r3, unk_803f1154@l
    addi    r4, r4, __dt__13TNerveBPHoverFv@l
    addi    r3, r13, R13Off_m0x6c78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c7c(r13)
branch_0x80091574:
    addi    r4, r13, R13Off_m0x6c78
    cmplwi  r4, 0x0
    beq-    branch_0x800915a8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800915a8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800915a8:
    li      r3, 0x1
    b       branch_0x800916d0

branch_0x800915b0:
    mr      r3, r31
    lfs     f31, 0x144(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    fmr     f1, f31
    lfs     f31, 0x130(r3)
    mr      r3, r31
    bl      turnToCurPathNode__11TSpineEnemyFf
    lwz     r4, 0xf4(r31)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x800915f0
    addi    r6, r4, 0x10
    b       branch_0x800915f4

branch_0x800915f0:
    addi    r6, r3, 0x4
branch_0x800915f4:
    lwz     r5, 0x0(r6)
    addi    r3, sp, 0x68
    lwz     r0, 0x4(r6)
    mr      r4, r3
    stw     r5, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x70(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(sp)
    bl      PSVECNormalize
    lfs     f0, 0x68(sp)
    li      r3, 0x0
    fmuls   f0, f0, f31
    stfs    f0, 0x68(sp)
    lfs     f0, 0x6c(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x6c(sp)
    lfs     f0, 0x70(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x70(sp)
    lwz     r4, 0x94(r31)
    lwz     r0, 0x98(r31)
    lfs     f0, 0x68(sp)
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x9c(r31)
    stw     r0, 0x7c(sp)
    lfs     f1, 0x74(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x6c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x70(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lwz     r4, 0x74(sp)
    lwz     r0, 0x78(sp)
    stw     r4, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x9c(r31)
branch_0x800916d0:
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lwz     r31, 0xac(sp)
    mtlr    r0
    lwz     r30, 0xa8(sp)
    addi    sp, sp, 0xb8
    blr


.globl theNerve__11TNerveBPFlyFv
theNerve__11TNerveBPFlyFv: # 0x800916ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6c9c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009173c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__11TNerveBPFly@h
    stw     r0, R13Off_m0x6c98(r13)
    addi    r0, r3, __vvt__11TNerveBPFly@l
    lis     r4, __dt__11TNerveBPFlyFv@h
    stw     r0, R13Off_m0x6c98(r13)
    lis     r3, unk_803f1124@h
    addi    r5, r3, unk_803f1124@l
    addi    r4, r4, __dt__11TNerveBPFlyFv@l
    addi    r3, r13, R13Off_m0x6c98
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c9c(r13)
branch_0x8009173c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6c98
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__15TNerveBPTakeOffCFP24TSpineBase_10TLiveActor_
execute__15TNerveBPTakeOffCFP24TSpineBase_10TLiveActor_: # 0x80091750
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r29, 0x74(r3)
    mr      r30, r3
    bne-    branch_0x800917a8
    lwz     r0, 0xf0(r30)
    addi    r3, r30, 0x0
    li      r4, 0xd
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    bl      changeBck__11TBossPakkunFi
branch_0x800917a8:
    addi    r3, r29, 0x0
    li      r4, 0xd
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800917e0
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800917e0
    addi    r3, r30, 0x0
    li      r4, 0xb
    bl      changeBck__11TBossPakkunFi
branch_0x800917e0:
    addi    r3, r29, 0x0
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80091958
    lfs     f1, 0x14(r30)
    addi    r3, r30, 0x104
    lfs     f0, -0x6730(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r4, 0x104(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x8009181c
    addi    r4, r4, 0x10
    b       branch_0x80091820

branch_0x8009181c:
    addi    r4, r3, 0x4
branch_0x80091820:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x4c(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x14(r30)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80091958
    stfs    f1, 0x14(r30)
    lwz     r3, 0x124(r30)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800918d8
    lbz     r0, R13Off_m0x6c9c(r13)
    extsb.  r0, r0
    bne-    branch_0x800918a0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__11TNerveBPFly@h
    stw     r0, R13Off_m0x6c98(r13)
    addi    r0, r3, __vvt__11TNerveBPFly@l
    lis     r4, __dt__11TNerveBPFlyFv@h
    stw     r0, R13Off_m0x6c98(r13)
    lis     r3, unk_803f1124@h
    addi    r5, r3, unk_803f1124@l
    addi    r4, r4, __dt__11TNerveBPFlyFv@l
    addi    r3, r13, R13Off_m0x6c98
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c9c(r13)
branch_0x800918a0:
    addi    r4, r13, R13Off_m0x6c98
    cmplwi  r4, 0x0
    beq-    branch_0x80091950
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80091950
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
    b       branch_0x80091950

branch_0x800918d8:
    lbz     r0, R13Off_m0x6c94(r13)
    extsb.  r0, r0
    bne-    branch_0x8009191c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPTouchDown@h
    stw     r0, R13Off_m0x6c90(r13)
    addi    r0, r3, __vvt__17TNerveBPTouchDown@l
    lis     r4, __dt__17TNerveBPTouchDownFv@h
    stw     r0, R13Off_m0x6c90(r13)
    lis     r3, unk_803f1130@h
    addi    r5, r3, unk_803f1130@l
    addi    r4, r4, __dt__17TNerveBPTouchDownFv@l
    addi    r3, r13, R13Off_m0x6c90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c94(r13)
branch_0x8009191c:
    addi    r4, r13, R13Off_m0x6c90
    cmplwi  r4, 0x0
    beq-    branch_0x80091950
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80091950
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80091950:
    li      r3, 0x1
    b       branch_0x8009195c

branch_0x80091958:
    li      r3, 0x0
branch_0x8009195c:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl theNerve__15TNerveBPTakeOffFv
theNerve__15TNerveBPTakeOffFv: # 0x80091978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6ca4(r13)
    extsb.  r0, r0
    bne-    branch_0x800919c8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPTakeOff@h
    stw     r0, R13Off_m0x6ca0(r13)
    addi    r0, r3, __vvt__15TNerveBPTakeOff@l
    lis     r4, __dt__15TNerveBPTakeOffFv@h
    stw     r0, R13Off_m0x6ca0(r13)
    lis     r3, unk_803f1118@h
    addi    r5, r3, unk_803f1118@l
    addi    r4, r4, __dt__15TNerveBPTakeOffFv@l
    addi    r3, r13, R13Off_m0x6ca0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ca4(r13)
branch_0x800919c8:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6ca0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__11TNerveBPDieCFP24TSpineBase_10TLiveActor_
execute__11TNerveBPDieCFP24TSpineBase_10TLiveActor_: # 0x800919dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r30, 0x74(r3)
    mr      r31, r3
    bne-    branch_0x80091a28
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    li      r5, 0x1
    lwz     r3, 0x9c(r3)
    bl      modBgm__8MSModBgmFUcUc
    b       branch_0x80091a3c

branch_0x80091a28:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    li      r5, 0x1
    lwz     r3, 0x9c(r3)
    bl      modBgm__8MSModBgmFUcUc
branch_0x80091a3c:
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80091a68
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x2a8
    bne-    branch_0x80091a68
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
branch_0x80091a68:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80091ad4
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80091ad4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lis     r4, unk_8037bfb0@ha
    lwz     r3, R13Off_m0x62b0(r13)
    lis     r5, unk_8037bfc4@ha
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    addi    r4, r4, unk_8037bfb0@l
    lfs     f3, 0x18(r31)
    addi    r5, r5, unk_8037bfc4@l
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    li      r3, 0x1
    b       branch_0x80091ad8

branch_0x80091ad4:
    li      r3, 0x0
branch_0x80091ad8:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl theNerve__11TNerveBPDieFv
theNerve__11TNerveBPDieFv: # 0x80091af4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6cac(r13)
    extsb.  r0, r0
    bne-    branch_0x80091b44
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__11TNerveBPDie@h
    stw     r0, R13Off_m0x6ca8(r13)
    addi    r0, r3, __vvt__11TNerveBPDie@l
    lis     r4, __dt__11TNerveBPDieFv@h
    stw     r0, R13Off_m0x6ca8(r13)
    lis     r3, unk_803f110c@h
    addi    r5, r3, unk_803f110c@l
    addi    r4, r4, __dt__11TNerveBPDieFv@l
    addi    r3, r13, R13Off_m0x6ca8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cac(r13)
branch_0x80091b44:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6ca8
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__11TNerveBPDieFv
__dt__11TNerveBPDieFv: # 0x80091b58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80091b9c
    lis     r3, __vvt__11TNerveBPDie@h
    addi    r0, r3, __vvt__11TNerveBPDie@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80091b8c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80091b8c:
    extsh.  r0, r4
    ble-    branch_0x80091b9c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80091b9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__14TNerveBPPreDieCFP24TSpineBase_10TLiveActor_
execute__14TNerveBPPreDieCFP24TSpineBase_10TLiveActor_: # 0x80091bb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    stw     r29, 0x6c(sp)
    stw     r28, 0x68(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r31, 0x74(r3)
    mr      r28, r3
    bne-    branch_0x80091cd0
    addi    r3, r28, 0x0
    li      r4, 0x5
    bl      changeBck__11TBossPakkunFi
    lwz     r3, 0x164(r28)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lbz     r0, 0x17c(r28)
    extsb.  r0, r0
    bne-    branch_0x80091c84
    li      r0, 0x1
    stb     r0, 0x17c(r28)
    li      r3, 0x0
    li      r0, 0x32
    stw     r3, 0x174(r28)
    stw     r3, 0x170(r28)
    stw     r0, 0x1b8(r28)
    lwz     r0, 0x18c(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80091c84
    addi    r3, r28, 0x0
    addi    r5, sp, 0x54
    li      r4, 0x12
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lfs     f1, 0x58(sp)
    lfs     f0, -0x6724(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x58(sp)
    lwz     r4, 0x18c(r28)
    lwz     r3, 0x54(sp)
    lwz     r0, 0x58(sp)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x5c(sp)
    stw     r0, 0x78(r4)
    lwz     r3, R13Off_m0x6088(r13)
    lwz     r4, 0x18c(r28)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
branch_0x80091c84:
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_8037bfd8@ha
    addi    r29, r3, unk_8037bfd8@l
    lwz     r28, 0x4(r4)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x0
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80091cc4
    bl      killChildren__13TEnemyManagerFv
branch_0x80091cc4:
    li      r3, 0x1
    li      r4, 0xa
    bl      stopTrackBGM__5MSBgmFUcUl
branch_0x80091cd0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80091d68
    lbz     r0, R13Off_m0x6cac(r13)
    extsb.  r0, r0
    bne-    branch_0x80091d2c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__11TNerveBPDie@h
    stw     r0, R13Off_m0x6ca8(r13)
    addi    r0, r3, __vvt__11TNerveBPDie@l
    lis     r4, __dt__11TNerveBPDieFv@h
    stw     r0, R13Off_m0x6ca8(r13)
    lis     r3, unk_803f110c@h
    addi    r5, r3, unk_803f110c@l
    addi    r4, r4, __dt__11TNerveBPDieFv@l
    addi    r3, r13, R13Off_m0x6ca8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cac(r13)
branch_0x80091d2c:
    addi    r4, r13, R13Off_m0x6ca8
    cmplwi  r4, 0x0
    beq-    branch_0x80091d60
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80091d60
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80091d60:
    li      r3, 0x1
    b       branch_0x80091d6c

branch_0x80091d68:
    li      r3, 0x0
branch_0x80091d6c:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    lwz     r28, 0x68(sp)
    addi    sp, sp, 0x78
    blr


.globl theNerve__14TNerveBPPreDieFv
theNerve__14TNerveBPPreDieFv: # 0x80091d8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6cb4(r13)
    extsb.  r0, r0
    bne-    branch_0x80091ddc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveBPPreDie@h
    stw     r0, R13Off_m0x6cb0(r13)
    addi    r0, r3, __vvt__14TNerveBPPreDie@l
    lis     r4, __dt__14TNerveBPPreDieFv@h
    stw     r0, R13Off_m0x6cb0(r13)
    lis     r3, unk_803f1100@h
    addi    r5, r3, unk_803f1100@l
    addi    r4, r4, __dt__14TNerveBPPreDieFv@l
    addi    r3, r13, R13Off_m0x6cb0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cb4(r13)
branch_0x80091ddc:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6cb0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__14TNerveBPPreDieFv
__dt__14TNerveBPPreDieFv: # 0x80091df0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80091e34
    lis     r3, __vvt__14TNerveBPPreDie@h
    addi    r0, r3, __vvt__14TNerveBPPreDie@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80091e24
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80091e24:
    extsh.  r0, r4
    ble-    branch_0x80091e34
    mr      r3, r31
    bl      __dl__FPv
branch_0x80091e34:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveBPJumpReactCFP24TSpineBase_10TLiveActor_
execute__17TNerveBPJumpReactCFP24TSpineBase_10TLiveActor_: # 0x80091e4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r31, 0x74(r3)
    bne-    branch_0x80091e78
    li      r4, 0x11
    bl      changeBck__11TBossPakkunFi
branch_0x80091e78:
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80091e98
    li      r3, 0x1
    b       branch_0x80091e9c

branch_0x80091e98:
    li      r3, 0x0
branch_0x80091e9c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl theNerve__17TNerveBPJumpReactFv
theNerve__17TNerveBPJumpReactFv: # 0x80091eb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6cbc(r13)
    extsb.  r0, r0
    bne-    branch_0x80091f00
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPJumpReact@h
    stw     r0, R13Off_m0x6cb8(r13)
    addi    r0, r3, __vvt__17TNerveBPJumpReact@l
    lis     r4, __dt__17TNerveBPJumpReactFv@h
    stw     r0, R13Off_m0x6cb8(r13)
    lis     r3, unk_803f10f4@h
    addi    r5, r3, unk_803f10f4@l
    addi    r4, r4, __dt__17TNerveBPJumpReactFv@l
    addi    r3, r13, R13Off_m0x6cb8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cbc(r13)
branch_0x80091f00:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6cb8
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__17TNerveBPJumpReactFv
__dt__17TNerveBPJumpReactFv: # 0x80091f14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80091f58
    lis     r3, __vvt__17TNerveBPJumpReact@h
    addi    r0, r3, __vvt__17TNerveBPJumpReact@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80091f48
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80091f48:
    extsh.  r0, r4
    ble-    branch_0x80091f58
    mr      r3, r31
    bl      __dl__FPv
branch_0x80091f58:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveBPStompReactCFP24TSpineBase_10TLiveActor_
execute__18TNerveBPStompReactCFP24TSpineBase_10TLiveActor_: # 0x80091f70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r30, 0x74(r3)
    mr      r31, r3
    bne-    branch_0x80091fc0
    addi    r3, r31, 0x0
    li      r4, 0x5
    bl      changeBck__11TBossPakkunFi
    lwz     r3, 0x164(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x80091fc0:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x1e
    bne-    branch_0x80092048
    lbz     r0, 0x17c(r31)
    extsb.  r0, r0
    bne-    branch_0x80092048
    li      r0, 0x1
    stb     r0, 0x17c(r31)
    li      r3, 0x0
    li      r0, 0x32
    stw     r3, 0x174(r31)
    stw     r3, 0x170(r31)
    stw     r0, 0x1b8(r31)
    lwz     r0, 0x18c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80092048
    addi    r3, r31, 0x0
    addi    r5, sp, 0x44
    li      r4, 0x12
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lfs     f1, 0x48(sp)
    lfs     f0, -0x6724(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lwz     r4, 0x18c(r31)
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x78(r4)
    lwz     r3, R13Off_m0x6088(r13)
    lwz     r4, 0x18c(r31)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
branch_0x80092048:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x32
    bne-    branch_0x8009205c
    li      r0, 0x1
    stb     r0, 0x1bc(r31)
branch_0x8009205c:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8009208c
    lwz     r4, 0x164(r31)
    li      r3, 0x1
    lwz     r0, 0x64(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    b       branch_0x80092090

branch_0x8009208c:
    li      r3, 0x0
branch_0x80092090:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl theNerve__18TNerveBPStompReactFv
theNerve__18TNerveBPStompReactFv: # 0x800920ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6cc4(r13)
    extsb.  r0, r0
    bne-    branch_0x800920fc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveBPStompReact@h
    stw     r0, R13Off_m0x6cc0(r13)
    addi    r0, r3, __vvt__18TNerveBPStompReact@l
    lis     r4, __dt__18TNerveBPStompReactFv@h
    stw     r0, R13Off_m0x6cc0(r13)
    lis     r3, unk_803f10e8@h
    addi    r5, r3, unk_803f10e8@l
    addi    r4, r4, __dt__18TNerveBPStompReactFv@l
    addi    r3, r13, R13Off_m0x6cc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cc4(r13)
branch_0x800920fc:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6cc0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TNerveBPStompReactFv
__dt__18TNerveBPStompReactFv: # 0x80092110
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80092154
    lis     r3, __vvt__18TNerveBPStompReact@h
    addi    r0, r3, __vvt__18TNerveBPStompReact@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80092144
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80092144:
    extsh.  r0, r4
    ble-    branch_0x80092154
    mr      r3, r31
    bl      __dl__FPv
branch_0x80092154:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__13TNerveBPSwingCFP24TSpineBase_10TLiveActor_
execute__13TNerveBPSwingCFP24TSpineBase_10TLiveActor_: # 0x8009216c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r30, 0x74(r3)
    mr      r31, r3
    bne-    branch_0x800921ac
    addi    r3, r31, 0x0
    li      r4, 0xf
    bl      changeBck__11TBossPakkunFi
branch_0x800921ac:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x800921dc
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0xac
    addi    r5, r5, 0x360
    li      r6, 0x0
    bl      emitAndBindToSRTMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800921dc:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800921fc
    li      r3, 0x1
    b       branch_0x80092200

branch_0x800921fc:
    li      r3, 0x0
branch_0x80092200:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl theNerve__13TNerveBPSwingFv
theNerve__13TNerveBPSwingFv: # 0x8009221c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6ccc(r13)
    extsb.  r0, r0
    bne-    branch_0x8009226c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPSwing@h
    stw     r0, R13Off_m0x6cc8(r13)
    addi    r0, r3, __vvt__13TNerveBPSwing@l
    lis     r4, __dt__13TNerveBPSwingFv@h
    stw     r0, R13Off_m0x6cc8(r13)
    lis     r3, unk_803f10dc@h
    addi    r5, r3, unk_803f10dc@l
    addi    r4, r4, __dt__13TNerveBPSwingFv@l
    addi    r3, r13, R13Off_m0x6cc8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ccc(r13)
branch_0x8009226c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6cc8
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__13TNerveBPSwingFv
__dt__13TNerveBPSwingFv: # 0x80092280
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800922c4
    lis     r3, __vvt__13TNerveBPSwing@h
    addi    r0, r3, __vvt__13TNerveBPSwing@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800922b4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800922b4:
    extsh.  r0, r4
    ble-    branch_0x800922c4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800922c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__13TNerveBPGetUpCFP24TSpineBase_10TLiveActor_
execute__13TNerveBPGetUpCFP24TSpineBase_10TLiveActor_: # 0x800922dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r30, 0x74(r3)
    mr      r31, r3
    bne-    branch_0x80092334
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      changeBck__11TBossPakkunFi
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x10
    lfs     f1, -0x6740(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x0
    bl      rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_
branch_0x80092334:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80092378
    addi    r3, r30, 0x0
    li      r4, 0xe
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80092370
    addi    r3, r31, 0x0
    li      r4, 0x13
    bl      changeBck__11TBossPakkunFi
    b       branch_0x80092378

branch_0x80092370:
    li      r3, 0x1
    b       branch_0x8009237c

branch_0x80092378:
    li      r3, 0x0
branch_0x8009237c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl theNerve__13TNerveBPGetUpFv
theNerve__13TNerveBPGetUpFv: # 0x80092394
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6cd4(r13)
    extsb.  r0, r0
    bne-    branch_0x800923e4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPGetUp@h
    stw     r0, R13Off_m0x6cd0(r13)
    addi    r0, r3, __vvt__13TNerveBPGetUp@l
    lis     r4, __dt__13TNerveBPGetUpFv@h
    stw     r0, R13Off_m0x6cd0(r13)
    lis     r3, unk_803f10d0@h
    addi    r5, r3, unk_803f10d0@l
    addi    r4, r4, __dt__13TNerveBPGetUpFv@l
    addi    r3, r13, R13Off_m0x6cd0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cd4(r13)
branch_0x800923e4:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6cd0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__13TNerveBPGetUpFv
__dt__13TNerveBPGetUpFv: # 0x800923f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009243c
    lis     r3, __vvt__13TNerveBPGetUp@h
    addi    r0, r3, __vvt__13TNerveBPGetUp@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009242c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009242c:
    extsh.  r0, r4
    ble-    branch_0x8009243c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009243c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveBPTumbleOutCFP24TSpineBase_10TLiveActor_
execute__17TNerveBPTumbleOutCFP24TSpineBase_10TLiveActor_: # 0x80092454
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    mr      r30, r4
    stw     r29, 0x8c(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r29, 0x74(r3)
    mr      r31, r3
    bne-    branch_0x800924b8
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      changeBck__11TBossPakkunFi
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x10
    lfs     f1, -0x6740(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x0
    bl      rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_
branch_0x800924b8:
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800925d8
    addi    r3, r29, 0x0
    li      r4, 0xe
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80092558
    addi    r3, r31, 0x0
    li      r4, 0x16
    bl      changeBck__11TBossPakkunFi
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80092514
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80092514
    li      r0, 0x1
    b       branch_0x80092518

branch_0x80092514:
    li      r0, 0x0
branch_0x80092518:
    clrlwi. r0, r0, 24
    bne-    branch_0x800925d8
    lbz     r3, 0x1c4(r31)
    addi    r0, r3, -0x1
    stb     r0, 0x1c4(r31)
    lbz     r0, 0x1c4(r31)
    extsb.  r0, r0
    bgt-    branch_0x800925d8
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0x1
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, 0x3
    stb     r0, 0x1c4(r31)
    b       branch_0x800925d8

branch_0x80092558:
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x8009259c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r4, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    lis     r3, unk_803f1064@h
    addi    r5, r3, unk_803f1064@l
    addi    r4, r4, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x8009259c:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x800925d0
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800925d0
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800925d0:
    li      r3, 0x1
    b       branch_0x800926a8

branch_0x800925d8:
    addi    r3, r29, 0x0
    li      r4, 0x16
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800926a4
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f31, 0x10(r3)
    lfs     f0, -0x6720(r2)
    fcmpo   cr0, f0, f31
    bge-    branch_0x80092690
    lfs     f0, -0x671c(r2)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80092690
    lbz     r0, 0x17c(r31)
    extsb.  r0, r0
    bne-    branch_0x80092690
    li      r0, 0x1
    stb     r0, 0x17c(r31)
    li      r3, 0x0
    li      r0, 0x32
    stw     r3, 0x174(r31)
    stw     r3, 0x170(r31)
    stw     r0, 0x1b8(r31)
    lwz     r0, 0x18c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80092690
    addi    r3, r31, 0x0
    addi    r5, sp, 0x64
    li      r4, 0x12
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lfs     f1, 0x68(sp)
    lfs     f0, -0x6724(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x68(sp)
    lwz     r4, 0x18c(r31)
    lwz     r3, 0x64(sp)
    lwz     r0, 0x68(sp)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x78(r4)
    lwz     r3, R13Off_m0x6088(r13)
    lwz     r4, 0x18c(r31)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
branch_0x80092690:
    lfs     f0, -0x6718(r2)
    fcmpo   cr0, f0, f31
    bge-    branch_0x800926a4
    li      r0, 0x1
    stb     r0, 0x1bc(r31)
branch_0x800926a4:
    li      r3, 0x0
branch_0x800926a8:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lwz     r31, 0x94(sp)
    mtlr    r0
    lwz     r30, 0x90(sp)
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0xa0
    blr


.globl theNerve__17TNerveBPTumbleOutFv
theNerve__17TNerveBPTumbleOutFv: # 0x800926c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6cdc(r13)
    extsb.  r0, r0
    bne-    branch_0x80092718
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPTumbleOut@h
    stw     r0, R13Off_m0x6cd8(r13)
    addi    r0, r3, __vvt__17TNerveBPTumbleOut@l
    lis     r4, __dt__17TNerveBPTumbleOutFv@h
    stw     r0, R13Off_m0x6cd8(r13)
    lis     r3, unk_803f10c4@h
    addi    r5, r3, unk_803f10c4@l
    addi    r4, r4, __dt__17TNerveBPTumbleOutFv@l
    addi    r3, r13, R13Off_m0x6cd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cdc(r13)
branch_0x80092718:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6cd8
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__17TNerveBPTumbleOutFv
__dt__17TNerveBPTumbleOutFv: # 0x8009272c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80092770
    lis     r3, __vvt__17TNerveBPTumbleOut@h
    addi    r0, r3, __vvt__17TNerveBPTumbleOut@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80092760
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80092760:
    extsh.  r0, r4
    ble-    branch_0x80092770
    mr      r3, r31
    bl      __dl__FPv
branch_0x80092770:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__14TNerveBPTumbleCFP24TSpineBase_10TLiveActor_
execute__14TNerveBPTumbleCFP24TSpineBase_10TLiveActor_: # 0x80092788
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r4
    stw     r30, 0x48(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800927c4
    addi    r3, r30, 0x0
    li      r4, 0x6
    bl      changeBck__11TBossPakkunFi
    li      r0, 0x1
    stb     r0, 0x16c(r30)
branch_0x800927c4:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    addi    r7, r30, 0x8
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x161
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x11
    lfs     f1, -0x6740(r2)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lis     r3, unk_88888889@ha
    lwz     r0, 0x20(r31)
    addi    r3, r3, unk_88888889@l
    mulhw   r3, r3, r0
    add     r0, r3, r0
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r3, r0, r3
    srawi   r0, r3, 1
    addze   r0, r0
    slwi    r0, r0, 1
    subfc.  r0, r0, r3
    beq-    branch_0x80092838
    addi    r3, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x0
    bl      rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_
branch_0x80092838:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r31)
    lwz     r0, 0x108(r3)
    cmpw    r4, r0
    blt-    branch_0x800928e4
    li      r0, 0x0
    stb     r0, 0x16c(r30)
    lbz     r0, R13Off_m0x6cdc(r13)
    extsb.  r0, r0
    bne-    branch_0x800928a8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPTumbleOut@h
    stw     r0, R13Off_m0x6cd8(r13)
    addi    r0, r3, __vvt__17TNerveBPTumbleOut@l
    lis     r4, __dt__17TNerveBPTumbleOutFv@h
    stw     r0, R13Off_m0x6cd8(r13)
    lis     r3, unk_803f10c4@h
    addi    r5, r3, unk_803f10c4@l
    addi    r4, r4, __dt__17TNerveBPTumbleOutFv@l
    addi    r3, r13, R13Off_m0x6cd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cdc(r13)
branch_0x800928a8:
    addi    r4, r13, R13Off_m0x6cd8
    cmplwi  r4, 0x0
    beq-    branch_0x800928dc
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800928dc
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800928dc:
    li      r3, 0x1
    b       branch_0x800928e8

branch_0x800928e4:
    li      r3, 0x0
branch_0x800928e8:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl theNerve__14TNerveBPTumbleFv
theNerve__14TNerveBPTumbleFv: # 0x80092900
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6ce4(r13)
    extsb.  r0, r0
    bne-    branch_0x80092950
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveBPTumble@h
    stw     r0, R13Off_m0x6ce0(r13)
    addi    r0, r3, __vvt__14TNerveBPTumble@l
    lis     r4, __dt__14TNerveBPTumbleFv@h
    stw     r0, R13Off_m0x6ce0(r13)
    lis     r3, unk_803f10b8@h
    addi    r5, r3, unk_803f10b8@l
    addi    r4, r4, __dt__14TNerveBPTumbleFv@l
    addi    r3, r13, R13Off_m0x6ce0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ce4(r13)
branch_0x80092950:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6ce0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__14TNerveBPTumbleFv
__dt__14TNerveBPTumbleFv: # 0x80092964
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800929a8
    lis     r3, __vvt__14TNerveBPTumble@h
    addi    r0, r3, __vvt__14TNerveBPTumble@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80092998
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80092998:
    extsh.  r0, r4
    ble-    branch_0x800929a8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800929a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveBPTumbleInCFP24TSpineBase_10TLiveActor_
execute__16TNerveBPTumbleInCFP24TSpineBase_10TLiveActor_: # 0x800929c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r29, 0x74(r3)
    mr      r30, r3
    bne-    branch_0x80092a00
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      changeBck__11TBossPakkunFi
branch_0x80092a00:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x150
    bne-    branch_0x80092a30
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r30
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0xaa
    addi    r5, r5, 0x2a0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80092a30:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x15c
    bne-    branch_0x80092a5c
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0xe
    lfs     f1, -0x6740(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x2
    bl      rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_
branch_0x80092a5c:
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80092af4
    lbz     r0, R13Off_m0x6ce4(r13)
    extsb.  r0, r0
    bne-    branch_0x80092ab8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveBPTumble@h
    stw     r0, R13Off_m0x6ce0(r13)
    addi    r0, r3, __vvt__14TNerveBPTumble@l
    lis     r4, __dt__14TNerveBPTumbleFv@h
    stw     r0, R13Off_m0x6ce0(r13)
    lis     r3, unk_803f10b8@h
    addi    r5, r3, unk_803f10b8@l
    addi    r4, r4, __dt__14TNerveBPTumbleFv@l
    addi    r3, r13, R13Off_m0x6ce0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ce4(r13)
branch_0x80092ab8:
    addi    r4, r13, R13Off_m0x6ce0
    cmplwi  r4, 0x0
    beq-    branch_0x80092aec
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80092aec
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80092aec:
    li      r3, 0x1
    b       branch_0x80092af8

branch_0x80092af4:
    li      r3, 0x0
branch_0x80092af8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl theNerve__16TNerveBPTumbleInFv
theNerve__16TNerveBPTumbleInFv: # 0x80092b14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6cec(r13)
    extsb.  r0, r0
    bne-    branch_0x80092b64
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveBPTumbleIn@h
    stw     r0, R13Off_m0x6ce8(r13)
    addi    r0, r3, __vvt__16TNerveBPTumbleIn@l
    lis     r4, __dt__16TNerveBPTumbleInFv@h
    stw     r0, R13Off_m0x6ce8(r13)
    lis     r3, unk_803f10ac@h
    addi    r5, r3, unk_803f10ac@l
    addi    r4, r4, __dt__16TNerveBPTumbleInFv@l
    addi    r3, r13, R13Off_m0x6ce8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cec(r13)
branch_0x80092b64:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6ce8
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__16TNerveBPTumbleInFv
__dt__16TNerveBPTumbleInFv: # 0x80092b78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80092bbc
    lis     r3, __vvt__16TNerveBPTumbleIn@h
    addi    r0, r3, __vvt__16TNerveBPTumbleIn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80092bac
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80092bac:
    extsh.  r0, r4
    ble-    branch_0x80092bbc
    mr      r3, r31
    bl      __dl__FPv
branch_0x80092bbc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__15TNerveBPSwallowCFP24TSpineBase_10TLiveActor_
execute__15TNerveBPSwallowCFP24TSpineBase_10TLiveActor_: # 0x80092bd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    stw     r29, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80092c0c
    addi    r3, r31, 0x0
    li      r4, 0x1a
    bl      changeBck__11TBossPakkunFi
branch_0x80092c0c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x178(r31)
    lwz     r0, 0xcc(r3)
    cmpw    r4, r0
    blt-    branch_0x80092cbc
    lbz     r0, R13Off_m0x6cec(r13)
    extsb.  r0, r0
    bne-    branch_0x80092c74
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveBPTumbleIn@h
    stw     r0, R13Off_m0x6ce8(r13)
    addi    r0, r3, __vvt__16TNerveBPTumbleIn@l
    lis     r4, __dt__16TNerveBPTumbleInFv@h
    stw     r0, R13Off_m0x6ce8(r13)
    lis     r3, unk_803f10ac@h
    addi    r5, r3, unk_803f10ac@l
    addi    r4, r4, __dt__16TNerveBPTumbleInFv@l
    addi    r3, r13, R13Off_m0x6ce8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cec(r13)
branch_0x80092c74:
    addi    r4, r13, R13Off_m0x6ce8
    cmplwi  r4, 0x0
    beq-    branch_0x80092ca8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80092ca8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80092ca8:
    li      r0, 0x0
    stb     r0, 0x16c(r31)
    li      r3, 0x1
    stw     r0, 0x170(r31)
    b       branch_0x80092da8

branch_0x80092cbc:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x15d
    addi    r29, r5, 0x360
    addi    r5, r29, 0x0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r29, 0x0
    addi    r7, r31, 0x1
    li      r4, 0x15e
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r0, 0x170(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80092d24
    addi    r3, r31, 0x0
    li      r4, 0x1a
    bl      changeBck__11TBossPakkunFi
    li      r0, 0x0
    stw     r0, 0x170(r31)
    li      r3, 0x0
    b       branch_0x80092da8

branch_0x80092d24:
    li      r0, 0x0
    stb     r0, 0x16c(r31)
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x80092d70
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r4, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    lis     r3, unk_803f1064@h
    addi    r5, r3, unk_803f1064@l
    addi    r4, r4, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x80092d70:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x80092da4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80092da4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80092da4:
    li      r3, 0x1
branch_0x80092da8:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl theNerve__15TNerveBPSwallowFv
theNerve__15TNerveBPSwallowFv: # 0x80092dc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6cf4(r13)
    extsb.  r0, r0
    bne-    branch_0x80092e14
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPSwallow@h
    stw     r0, R13Off_m0x6cf0(r13)
    addi    r0, r3, __vvt__15TNerveBPSwallow@l
    lis     r4, __dt__15TNerveBPSwallowFv@h
    stw     r0, R13Off_m0x6cf0(r13)
    lis     r3, unk_803f10a0@h
    addi    r5, r3, unk_803f10a0@l
    addi    r4, r4, __dt__15TNerveBPSwallowFv@l
    addi    r3, r13, R13Off_m0x6cf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cf4(r13)
branch_0x80092e14:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6cf0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__15TNerveBPSwallowFv
__dt__15TNerveBPSwallowFv: # 0x80092e28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80092e6c
    lis     r3, __vvt__15TNerveBPSwallow@h
    addi    r0, r3, __vvt__15TNerveBPSwallow@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80092e5c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80092e5c:
    extsh.  r0, r4
    ble-    branch_0x80092e6c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80092e6c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__13TNerveBPPivotCFP24TSpineBase_10TLiveActor_
execute__13TNerveBPPivotCFP24TSpineBase_10TLiveActor_: # 0x80092e84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80092eb0
    addi    r3, r31, 0x0
    li      r4, 0x19
    bl      changeBck__11TBossPakkunFi
branch_0x80092eb0:
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    lwz     r5, R13Off_m0x60b4(r13)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x64(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x8(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x64(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x60(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x64(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0xe0(r3)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f3
    bge-    branch_0x80092f5c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x158(r3)
    b       branch_0x80092f74

branch_0x80092f5c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x144(r3)
branch_0x80092f74:
    mr      r3, r31
    bl      turnToCurPathNode__11TSpineEnemyFf
    cmpwi   r3, 0x0
    beq-    branch_0x80092fc4
    lwz     r0, 0x118(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80092fbc
    addi    r3, sp, 0x3c
    addi    r4, r31, 0x114
    bl      pop__23TSolidStack_9TPathNode_Fv
    lwz     r0, 0x3c(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x48(sp)
    stw     r0, 0x100(r31)
branch_0x80092fbc:
    li      r3, 0x1
    b       branch_0x80092fc8

branch_0x80092fc4:
    li      r3, 0x0
branch_0x80092fc8:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl theNerve__13TNerveBPPivotFv
theNerve__13TNerveBPPivotFv: # 0x80092fdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6cfc(r13)
    extsb.  r0, r0
    bne-    branch_0x8009302c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPPivot@h
    stw     r0, R13Off_m0x6cf8(r13)
    addi    r0, r3, __vvt__13TNerveBPPivot@l
    lis     r4, __dt__13TNerveBPPivotFv@h
    stw     r0, R13Off_m0x6cf8(r13)
    lis     r3, unk_803f1094@h
    addi    r5, r3, unk_803f1094@l
    addi    r4, r4, __dt__13TNerveBPPivotFv@l
    addi    r3, r13, R13Off_m0x6cf8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cfc(r13)
branch_0x8009302c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6cf8
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__13TNerveBPPivotFv
__dt__13TNerveBPPivotFv: # 0x80093040
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80093084
    lis     r3, __vvt__13TNerveBPPivot@h
    addi    r0, r3, __vvt__13TNerveBPPivot@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80093074
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80093074:
    extsh.  r0, r4
    ble-    branch_0x80093084
    mr      r3, r31
    bl      __dl__FPv
branch_0x80093084:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__15TNerveBPTornadoCFP24TSpineBase_10TLiveActor_
execute__15TNerveBPTornadoCFP24TSpineBase_10TLiveActor_: # 0x8009309c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r31, 0x74(r3)
    mr      r30, r3
    bne-    branch_0x80093130
    addi    r3, r30, 0x0
    li      r4, 0x18
    bl      changeBck__11TBossPakkunFi
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r30
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0xab
    addi    r5, r5, 0x90
    li      r6, 0x0
    bl      emitAndBindToSRTMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x194
    li      r4, 0xa9
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x1a0
    li      r4, 0xa9
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x80093130:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x96
    bne-    branch_0x800931dc
    lwz     r4, R13Off_m0x60b4(r13)
    li      r0, 0x1
    lwz     r30, 0x160(r30)
    stw     r0, 0x98(r30)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x70(r30)
    stw     r0, 0x74(r30)
    lwz     r0, 0x8(r4)
    stw     r0, 0x78(r30)
    lwz     r4, 0x68(r30)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r30)
    lwz     r4, 0x68(r30)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x7c(r30)
    stw     r0, 0x80(r30)
    lwz     r0, 0x18(r4)
    stw     r0, 0x84(r30)
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x1e4(r3)
    li      r4, 0x5
    stfs    f0, 0x94(r30)
    lwz     r0, 0x64(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r3, 0x6c(r30)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x672c(r2)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
branch_0x800931dc:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x800931f8
    li      r3, 0x1
    b       branch_0x800931fc

branch_0x800931f8:
    li      r3, 0x0
branch_0x800931fc:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl theNerve__15TNerveBPTornadoFv
theNerve__15TNerveBPTornadoFv: # 0x80093218
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6d04(r13)
    extsb.  r0, r0
    bne-    branch_0x80093268
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPTornado@h
    stw     r0, R13Off_m0x6d00(r13)
    addi    r0, r3, __vvt__15TNerveBPTornado@l
    lis     r4, __dt__15TNerveBPTornadoFv@h
    stw     r0, R13Off_m0x6d00(r13)
    lis     r3, unk_803f1088@h
    addi    r5, r3, unk_803f1088@l
    addi    r4, r4, __dt__15TNerveBPTornadoFv@l
    addi    r3, r13, R13Off_m0x6d00
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d04(r13)
branch_0x80093268:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6d00
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__13TNerveBPVomitCFP24TSpineBase_10TLiveActor_
execute__13TNerveBPVomitCFP24TSpineBase_10TLiveActor_: # 0x8009327c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stw     r31, 0x10c(sp)
    stw     r30, 0x108(sp)
    stw     r29, 0x104(sp)
    stw     r28, 0x100(sp)
    mr      r28, r4
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r30, 0x74(r3)
    mr      r31, r3
    bne-    branch_0x800932c0
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      changeBck__11TBossPakkunFi
branch_0x800932c0:
    addi    r3, r30, 0x0
    li      r4, 0x15
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80093310
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x6714(r2)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80093308
    lfs     f0, -0x6710(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80093308
    li      r0, 0x2
    stb     r0, 0x16c(r31)
    b       branch_0x80093310

branch_0x80093308:
    li      r0, 0x0
    stb     r0, 0x16c(r31)
branch_0x80093310:
    addi    r3, r30, 0x0
    li      r4, 0x14
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80093404
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6738(r2)
    stw     r0, 0xfc(sp)
    lis     r0, 0x4330
    lfs     f1, -0x673c(r2)
    stw     r0, 0xf8(sp)
    lfs     f0, -0x670c(r2)
    lfd     f2, 0xf8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80093404
    lwz     r0, 0x20(r28)
    cmpwi   r0, 0x1f4
    bne-    branch_0x80093404
    lfs     f1, -0x6704(r2)
    addi    r3, sp, 0xc8
    lfs     f0, 0x34(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r6, R13Off_m0x5ea4(r13)
    lwz     r4, R13Off_m0x5ea8(r13)
    lfs     f4, -0x6708(r2)
    fctiwz  f0, f0
    lfs     f2, -0x672c(r2)
    stfd    f0, 0xf8(sp)
    lwz     r5, 0xfc(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800935dc
    lwz     r0, 0xc8(sp)
    lis     r3, unk_20000002@h
    lwz     r6, 0xcc(sp)
    addi    r4, r3, unk_20000002@l
    stw     r0, 0xe4(sp)
    lwz     r0, 0xd0(sp)
    li      r5, 0x0
    stw     r6, 0xe8(sp)
    lfs     f1, -0x6740(r2)
    stw     r0, 0xec(sp)
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f0, 0x14(r31)
    lfs     f5, 0x10(r31)
    lfs     f4, 0xe4(sp)
    fadds   f2, f1, f0
    lfs     f3, 0x18(r31)
    lfs     f0, 0xec(sp)
    fadds   f1, f5, f4
    fadds   f3, f3, f0
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x80093404:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80093550
    addi    r3, r30, 0x0
    li      r4, 0x15
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800934f0
    li      r0, 0x0
    stb     r0, 0x16c(r31)
    addi    r3, r31, 0x0
    li      r4, 0x14
    bl      changeBck__11TBossPakkunFi
    lwz     r29, 0x15c(r31)
    li      r4, 0x0
    lwz     r3, 0x14(r29)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x18(r29)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x10(r29)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x14(r29)
    addi    r28, r3, 0x20
    addi    r3, r28, 0x0
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r6, 0x10(r29)
    mr      r3, r28
    lwz     r5, 0x14(r29)
    lwz     r4, 0x24(r6)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x28(r6)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r0, 0x2c(r6)
    stw     r0, 0x1c(r5)
    lwz     r4, 0x18(r29)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r8, 0x10(r29)
    mr      r3, r31
    lwz     r4, 0x18(r29)
    addi    r5, r31, 0x10
    lwz     r6, 0x24(r8)
    lwz     r7, 0x4(r4)
    li      r4, 0x1
    lwz     r0, 0x28(r8)
    stw     r6, 0x14(r7)
    stw     r0, 0x18(r7)
    lwz     r0, 0x2c(r8)
    stw     r0, 0x1c(r7)
    bl      rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_
    b       branch_0x80093550

branch_0x800934f0:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80093514
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80093514
    li      r0, 0x1
    b       branch_0x80093518

branch_0x80093514:
    li      r0, 0x0
branch_0x80093518:
    clrlwi. r0, r0, 24
    bne-    branch_0x80093548
    lwz     r0, 0x1c0(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x8009353c
    lwz     r3, 0x74(r3)
    li      r4, 0x0
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x8009353c:
    lwz     r0, 0x1c0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x1c0(r31)
branch_0x80093548:
    li      r3, 0x1
    b       branch_0x800935bc

branch_0x80093550:
    addi    r3, r30, 0x0
    li      r4, 0x14
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800935b8
    lfs     f1, -0x6704(r2)
    addi    r4, sp, 0xd4
    lfs     f0, 0x34(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f1, f1, f0
    lwz     r7, R13Off_m0x5ea4(r13)
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f0, -0x672c(r2)
    fctiwz  f1, f1
    lwz     r3, R13Off_m0x6088(r13)
    stfd    f1, 0xf8(sp)
    lwz     r6, 0xfc(sp)
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    slwi    r0, r0, 2
    lfsx    f2, r7, r0
    lfsx    f1, r5, r0
    stfs    f1, 0xd4(sp)
    stfs    f0, 0xd8(sp)
    stfs    f2, 0xdc(sp)
    bl      wind__18TModelWaterManagerFRCQ29JGeometry8TVec3_f_
branch_0x800935b8:
    li      r3, 0x0
branch_0x800935bc:
    lwz     r0, 0x114(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    mtlr    r0
    lwz     r29, 0x104(sp)
    lwz     r28, 0x100(sp)
    addi    sp, sp, 0x110
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_800935dc
set_f___Q29JGeometry8TVec3_f_Ffff_800935dc: # 0x800935dc
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl theNerve__13TNerveBPVomitFv
theNerve__13TNerveBPVomitFv: # 0x800935ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6d0c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009363c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPVomit@h
    stw     r0, R13Off_m0x6d08(r13)
    addi    r0, r3, __vvt__13TNerveBPVomit@l
    lis     r4, __dt__13TNerveBPVomitFv@h
    stw     r0, R13Off_m0x6d08(r13)
    lis     r3, unk_803f107c@h
    addi    r5, r3, unk_803f107c@l
    addi    r4, r4, __dt__13TNerveBPVomitFv@l
    addi    r3, r13, R13Off_m0x6d08
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d0c(r13)
branch_0x8009363c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6d08
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__14TNerveBPCannonCFP24TSpineBase_10TLiveActor_
execute__14TNerveBPCannonCFP24TSpineBase_10TLiveActor_: # 0x80093650
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r29, 0x74(r3)
    mr      r30, r3
    bne-    branch_0x80093690
    addi    r3, r30, 0x0
    li      r4, 0x15
    bl      changeBck__11TBossPakkunFi
branch_0x80093690:
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80093754
    addi    r3, r29, 0x0
    li      r4, 0x15
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800936d4
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      changeBck__11TBossPakkunFi
    mr      r3, r30
    bl      launchPolDrop__11TBossPakkunFv
    b       branch_0x80093754

branch_0x800936d4:
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x80093718
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r4, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    lis     r3, unk_803f1064@h
    addi    r5, r3, unk_803f1064@l
    addi    r4, r4, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x80093718:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x8009374c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8009374c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8009374c:
    li      r3, 0x1
    b       branch_0x80093758

branch_0x80093754:
    li      r3, 0x0
branch_0x80093758:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl theNerve__14TNerveBPCannonFv
theNerve__14TNerveBPCannonFv: # 0x80093774
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6d14(r13)
    extsb.  r0, r0
    bne-    branch_0x800937c4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveBPCannon@h
    stw     r0, R13Off_m0x6d10(r13)
    addi    r0, r3, __vvt__14TNerveBPCannon@l
    lis     r4, __dt__14TNerveBPCannonFv@h
    stw     r0, R13Off_m0x6d10(r13)
    lis     r3, unk_803f1070@h
    addi    r5, r3, unk_803f1070@l
    addi    r4, r4, __dt__14TNerveBPCannonFv@l
    addi    r3, r13, R13Off_m0x6d10
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d14(r13)
branch_0x800937c4:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6d10
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__14TNerveBPCannonFv
__dt__14TNerveBPCannonFv: # 0x800937d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009381c
    lis     r3, __vvt__14TNerveBPCannon@h
    addi    r0, r3, __vvt__14TNerveBPCannon@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009380c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009380c:
    extsh.  r0, r4
    ble-    branch_0x8009381c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009381c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveBPWaitCFP24TSpineBase_10TLiveActor_
execute__12TNerveBPWaitCFP24TSpineBase_10TLiveActor_: # 0x80093834
    mflr    r0
    lis     r3, up_3221@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x1b8(sp)
    stfd    f31, 0x1b0(sp)
    stmw    r26, 0x198(sp)
    mr      r31, r4
    addi    r30, r3, up_3221@l
    lwz     r29, 0x0(r4)
    lwz     r5, R13Off_m0x60b4(r13)
    lwz     r4, 0x10(r29)
    mr      r3, r29
    lwz     r0, 0x14(r29)
    stw     r4, 0x17c(sp)
    stw     r0, 0x180(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0x184(sp)
    lfs     f1, 0x17c(sp)
    lfs     f0, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x17c(sp)
    lfs     f1, 0x180(sp)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x180(sp)
    lfs     f1, 0x184(sp)
    lfs     f0, 0x8(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x184(sp)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f3, 0x17c(sp)
    lfs     f4, 0x180(sp)
    fmuls   f1, f3, f3
    lfs     f5, 0x184(sp)
    fmuls   f0, f4, f4
    lfs     f6, 0xe0(r3)
    fmuls   f2, f5, f5
    fadds   f0, f1, f0
    fmuls   f6, f6, f6
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f6
    bge-    branch_0x80093ccc
    fneg    f3, f3
    lfs     f2, -0x672c(r2)
    fneg    f1, f4
    fneg    f0, f5
    stfs    f3, 0x12c(sp)
    stfs    f1, 0x130(sp)
    stfs    f0, 0x134(sp)
    lwz     r0, 0x12c(sp)
    lwz     r3, 0x130(sp)
    stw     r0, 0x160(sp)
    lwz     r0, 0x134(sp)
    stw     r3, 0x164(sp)
    stw     r0, 0x168(sp)
    lfs     f1, 0x168(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80093948
    lfs     f0, 0x160(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80093940
    lfs     f31, -0x6700(r2)
    b       branch_0x800939c4

branch_0x80093940:
    lfs     f31, -0x66fc(r2)
    b       branch_0x800939c4

branch_0x80093948:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80093988
    lfs     f2, 0x160(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6738(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x66f8(r2)
    stw     r0, 0x194(sp)
    lis     r0, 0x4330
    stw     r0, 0x190(sp)
    lfd     f1, 0x190(sp)
    fsubs   f1, f1, f2
    fmuls   f31, f0, f1
    b       branch_0x800939c4

branch_0x80093988:
    fneg    f1, f1
    lfs     f2, 0x160(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6738(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x66f8(r2)
    stw     r0, 0x194(sp)
    lis     r0, 0x4330
    lfs     f0, -0x66f4(r2)
    stw     r0, 0x190(sp)
    lfd     f2, 0x190(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f31, f0, f1
branch_0x800939c4:
    lfs     f0, -0x66f4(r2)
    lfs     f1, 0x34(r29)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_80094444
    fsubs   f1, f31, f1
    lfs     f0, -0x66f0(r2)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80093adc
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x80093a2c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x80093a2c:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x80093a60
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80093a60
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80093a60:
    lbz     r0, R13Off_m0x6ccc(r13)
    extsb.  r0, r0
    bne-    branch_0x80093aa0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPSwing@h
    stw     r0, R13Off_m0x6cc8(r13)
    addi    r0, r3, __vvt__13TNerveBPSwing@l
    lis     r3, __dt__13TNerveBPSwingFv@h
    stw     r0, R13Off_m0x6cc8(r13)
    addi    r4, r3, __dt__13TNerveBPSwingFv@l
    addi    r3, r13, R13Off_m0x6cc8
    addi    r5, r30, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ccc(r13)
branch_0x80093aa0:
    addi    r4, r13, R13Off_m0x6cc8
    cmplwi  r4, 0x0
    beq-    branch_0x80093ad4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80093ad4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80093ad4:
    li      r3, 0x1
    b       branch_0x8009442c

branch_0x80093adc:
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x80093b1c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x80093b1c:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x80093b50
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80093b50
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80093b50:
    lbz     r0, R13Off_m0x6d0c(r13)
    extsb.  r0, r0
    bne-    branch_0x80093b90
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPVomit@h
    stw     r0, R13Off_m0x6d08(r13)
    addi    r0, r3, __vvt__13TNerveBPVomit@l
    lis     r3, __dt__13TNerveBPVomitFv@h
    stw     r0, R13Off_m0x6d08(r13)
    addi    r4, r3, __dt__13TNerveBPVomitFv@l
    addi    r3, r13, R13Off_m0x6d08
    addi    r5, r30, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d0c(r13)
branch_0x80093b90:
    addi    r4, r13, R13Off_m0x6d08
    cmplwi  r4, 0x0
    beq-    branch_0x80093bc4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80093bc4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80093bc4:
    li      r0, 0x0
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r0, 0x150(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x154(sp)
    stw     r0, 0x158(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x15c(sp)
    lwz     r3, 0x118(r29)
    lwz     r0, 0x114(r29)
    cmpw    r3, r0
    bge-    branch_0x80093c30
    lwz     r4, 0x11c(r29)
    slwi    r3, r3, 4
    lwz     r0, 0xf4(r29)
    add     r4, r4, r3
    stw     r0, 0x0(r4)
    lwz     r3, 0xf8(r29)
    lwz     r0, 0xfc(r29)
    stw     r3, 0x4(r4)
    stw     r0, 0x8(r4)
    lwz     r0, 0x100(r29)
    stw     r0, 0xc(r4)
    lwz     r3, 0x118(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x118(r29)
branch_0x80093c30:
    lwz     r0, 0x150(sp)
    stw     r0, 0xf4(r29)
    lwz     r3, 0x154(sp)
    lwz     r0, 0x158(sp)
    stw     r3, 0xf8(r29)
    stw     r0, 0xfc(r29)
    lwz     r0, 0x15c(sp)
    stw     r0, 0x100(r29)
    lbz     r0, R13Off_m0x6cfc(r13)
    extsb.  r0, r0
    bne-    branch_0x80093c90
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPPivot@h
    stw     r0, R13Off_m0x6cf8(r13)
    addi    r0, r3, __vvt__13TNerveBPPivot@l
    lis     r3, __dt__13TNerveBPPivotFv@h
    stw     r0, R13Off_m0x6cf8(r13)
    addi    r4, r3, __dt__13TNerveBPPivotFv@l
    addi    r3, r13, R13Off_m0x6cf8
    addi    r5, r30, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cfc(r13)
branch_0x80093c90:
    addi    r4, r13, R13Off_m0x6cf8
    cmplwi  r4, 0x0
    beq-    branch_0x80093cc4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80093cc4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80093cc4:
    li      r3, 0x1
    b       branch_0x8009442c

branch_0x80093ccc:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80093ce4
    addi    r3, r29, 0x0
    li      r4, 0x19
    bl      changeBck__11TBossPakkunFi
branch_0x80093ce4:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r31)
    lwz     r0, 0xb8(r3)
    cmpw    r4, r0
    blt-    branch_0x80094428
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80094428
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80093ee0
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80093d40
    cmplwi  r0, 0x1
    bne-    branch_0x80093ee0
branch_0x80093d40:
    lwz     r0, 0x188(r29)
    lwz     r27, R13Off_m0x60b4(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80093d84
    lis     r3, unk_8037bf98@ha
    lwz     r26, R13Off_m0x70b0(r13)
    addi    r28, r3, unk_8037bf98@l
    addi    r3, r28, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x188(r29)
branch_0x80093d84:
    lwz     r3, 0x188(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x80093d98
    li      r3, 0x0
    b       branch_0x80093da0

branch_0x80093d98:
    mr      r4, r27
    bl      contain__20TAreaCylinderManagerFRCQ29JGeometry8TVec3_f_
branch_0x80093da0:
    cmpwi   r3, 0x0
    beq-    branch_0x80093e64
    lwz     r3, R13Off_m0x608c(r13)
    lwz     r3, 0x0(r3)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80093dd4
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80093dd4
    cmplwi  r3, 0x4104
    bne-    branch_0x80093ddc
branch_0x80093dd4:
    li      r0, 0x1
    b       branch_0x80093de0

branch_0x80093ddc:
    li      r0, 0x0
branch_0x80093de0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80093e64
    lbz     r0, R13Off_m0x6d14(r13)
    extsb.  r0, r0
    bne-    branch_0x80093e28
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveBPCannon@h
    stw     r0, R13Off_m0x6d10(r13)
    addi    r0, r3, __vvt__14TNerveBPCannon@l
    lis     r3, __dt__14TNerveBPCannonFv@h
    stw     r0, R13Off_m0x6d10(r13)
    addi    r4, r3, __dt__14TNerveBPCannonFv@l
    addi    r3, r13, R13Off_m0x6d10
    addi    r5, r30, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d14(r13)
branch_0x80093e28:
    addi    r4, r13, R13Off_m0x6d10
    cmplwi  r4, 0x0
    beq-    branch_0x80093e5c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80093e5c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80093e5c:
    li      r3, 0x1
    b       branch_0x8009442c

branch_0x80093e64:
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x80093ea4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x80093ea4:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x80093ed8
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80093ed8
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80093ed8:
    li      r3, 0x1
    b       branch_0x8009442c

branch_0x80093ee0:
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x800941a8
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x160(r29)
    lfs     f31, 0x1a8(r3)
    lwz     r0, 0x98(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80093f44
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x6738(r2)
    stw     r0, 0x194(sp)
    lis     r0, 0x4330
    lfs     f0, -0x673c(r2)
    stw     r0, 0x190(sp)
    lfd     f1, 0x190(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fcmpo   cr0, f0, f31
    bge-    branch_0x80094030
branch_0x80093f44:
    lbz     r0, R13Off_m0x6ca4(r13)
    extsb.  r0, r0
    bne-    branch_0x80093f84
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPTakeOff@h
    stw     r0, R13Off_m0x6ca0(r13)
    addi    r0, r3, __vvt__15TNerveBPTakeOff@l
    lis     r3, __dt__15TNerveBPTakeOffFv@h
    stw     r0, R13Off_m0x6ca0(r13)
    addi    r4, r3, __dt__15TNerveBPTakeOffFv@l
    addi    r3, r13, R13Off_m0x6ca0
    addi    r5, r30, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ca4(r13)
branch_0x80093f84:
    addi    r4, r13, R13Off_m0x6ca0
    cmplwi  r4, 0x0
    beq-    branch_0x80093fb8
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80093fb8
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80093fb8:
    lbz     r0, R13Off_m0x6d0c(r13)
    extsb.  r0, r0
    bne-    branch_0x80093ff8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPVomit@h
    stw     r0, R13Off_m0x6d08(r13)
    addi    r0, r3, __vvt__13TNerveBPVomit@l
    lis     r3, __dt__13TNerveBPVomitFv@h
    stw     r0, R13Off_m0x6d08(r13)
    addi    r4, r3, __dt__13TNerveBPVomitFv@l
    addi    r3, r13, R13Off_m0x6d08
    addi    r5, r30, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d0c(r13)
branch_0x80093ff8:
    addi    r4, r13, R13Off_m0x6d08
    cmplwi  r4, 0x0
    beq-    branch_0x800941a0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800941a0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
    b       branch_0x800941a0

branch_0x80094030:
    lwz     r3, 0x160(r29)
    lwz     r0, 0x98(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8009412c
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x80094080
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x80094080:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x800940b4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800940b4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800940b4:
    lbz     r0, R13Off_m0x6d04(r13)
    extsb.  r0, r0
    bne-    branch_0x800940f4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPTornado@h
    stw     r0, R13Off_m0x6d00(r13)
    addi    r0, r3, __vvt__15TNerveBPTornado@l
    lis     r3, __dt__15TNerveBPTornadoFv@h
    stw     r0, R13Off_m0x6d00(r13)
    addi    r4, r3, __dt__15TNerveBPTornadoFv@l
    addi    r3, r13, R13Off_m0x6d00
    addi    r5, r30, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d04(r13)
branch_0x800940f4:
    addi    r4, r13, R13Off_m0x6d00
    cmplwi  r4, 0x0
    beq-    branch_0x800941a0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800941a0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
    b       branch_0x800941a0

branch_0x8009412c:
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x8009416c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x8009416c:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x800941a0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800941a0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800941a0:
    li      r3, 0x1
    b       branch_0x8009442c

branch_0x800941a8:
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x800941e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x800941e8:
    addi    r4, r13, R13Off_m0x6d18
    cmplwi  r4, 0x0
    beq-    branch_0x8009421c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8009421c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8009421c:
    lbz     r0, R13Off_m0x6d0c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009425c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPVomit@h
    stw     r0, R13Off_m0x6d08(r13)
    addi    r0, r3, __vvt__13TNerveBPVomit@l
    lis     r3, __dt__13TNerveBPVomitFv@h
    stw     r0, R13Off_m0x6d08(r13)
    addi    r4, r3, __dt__13TNerveBPVomitFv@l
    addi    r3, r13, R13Off_m0x6d08
    addi    r5, r30, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d0c(r13)
branch_0x8009425c:
    addi    r4, r13, R13Off_m0x6d08
    cmplwi  r4, 0x0
    beq-    branch_0x80094290
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80094290
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80094290:
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x16c(sp)
    stw     r0, 0x170(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0x174(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x6738(r2)
    stw     r0, 0x194(sp)
    lis     r28, 0x4330
    lfs     f3, -0x673c(r2)
    stw     r28, 0x190(sp)
    lfs     f1, -0x66e8(r2)
    lfd     f0, 0x190(sp)
    lfs     f2, -0x66ec(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x16c(sp)
    fmuls   f3, f3, f4
    fsubs   f1, f3, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x16c(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x6738(r2)
    stw     r0, 0x18c(sp)
    li      r0, 0x0
    lfs     f3, -0x673c(r2)
    stw     r28, 0x188(sp)
    lfs     f1, -0x66e8(r2)
    lfd     f0, 0x188(sp)
    lfs     f2, -0x66ec(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x174(sp)
    stw     r0, 0x140(sp)
    fmuls   f3, f3, f4
    fsubs   f1, f3, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x174(sp)
    lwz     r3, 0x16c(sp)
    lwz     r0, 0x170(sp)
    stw     r3, 0x144(sp)
    stw     r0, 0x148(sp)
    lwz     r0, 0x174(sp)
    stw     r0, 0x14c(sp)
    lwz     r3, 0x118(r29)
    lwz     r0, 0x114(r29)
    cmpw    r3, r0
    bge-    branch_0x8009438c
    lwz     r4, 0x11c(r29)
    slwi    r3, r3, 4
    lwz     r0, 0xf4(r29)
    add     r4, r4, r3
    stw     r0, 0x0(r4)
    lwz     r3, 0xf8(r29)
    lwz     r0, 0xfc(r29)
    stw     r3, 0x4(r4)
    stw     r0, 0x8(r4)
    lwz     r0, 0x100(r29)
    stw     r0, 0xc(r4)
    lwz     r3, 0x118(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x118(r29)
branch_0x8009438c:
    lwz     r0, 0x140(sp)
    stw     r0, 0xf4(r29)
    lwz     r3, 0x144(sp)
    lwz     r0, 0x148(sp)
    stw     r3, 0xf8(r29)
    stw     r0, 0xfc(r29)
    lwz     r0, 0x14c(sp)
    stw     r0, 0x100(r29)
    lbz     r0, R13Off_m0x6cfc(r13)
    extsb.  r0, r0
    bne-    branch_0x800943ec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPPivot@h
    stw     r0, R13Off_m0x6cf8(r13)
    addi    r0, r3, __vvt__13TNerveBPPivot@l
    lis     r3, __dt__13TNerveBPPivotFv@h
    stw     r0, R13Off_m0x6cf8(r13)
    addi    r4, r3, __dt__13TNerveBPPivotFv@l
    addi    r3, r13, R13Off_m0x6cf8
    addi    r5, r30, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cfc(r13)
branch_0x800943ec:
    addi    r4, r13, R13Off_m0x6cf8
    cmplwi  r4, 0x0
    beq-    branch_0x80094420
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80094420
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80094420:
    li      r3, 0x1
    b       branch_0x8009442c

branch_0x80094428:
    li      r3, 0x0
branch_0x8009442c:
    lmw     r26, 0x198(sp)
    lwz     r0, 0x1bc(sp)
    lfd     f31, 0x1b0(sp)
    addi    sp, sp, 0x1b8
    mtlr    r0
    blr


.globl MsWrap_f___Ffff_80094444
MsWrap_f___Ffff_80094444: # 0x80094444
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x80094480
    fmr     f1, f2
    blr

branch_0x80094458:
    b       branch_0x80094460

branch_0x8009445c:
    fsubs   f1, f1, f0
branch_0x80094460:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x8009445c
    b       branch_0x80094474

branch_0x80094470:
    fadds   f1, f1, f0
branch_0x80094474:
    fcmpo   cr0, f1, f2
    blt+    branch_0x80094470
    blr

branch_0x80094480:
    fsubs   f0, f3, f2
    b       branch_0x80094460

branch_0x80094488:
    blr


.globl theNerve__12TNerveBPWaitFv
theNerve__12TNerveBPWaitFv: # 0x8009448c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x800944dc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r4, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    lis     r3, unk_803f1064@h
    addi    r5, r3, unk_803f1064@l
    addi    r4, r4, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x800944dc:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6d18
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__18TBossPakkunManagerFR20JSUMemoryInputStream
load__18TBossPakkunManagerFR20JSUMemoryInputStream: # 0x800944f0
    mflr    r0
    lis     r5, unk_8037b998@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, unk_8037b998@l
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    li      r3, 0x274
    stw     r28, 0x10(sp)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80094538
    addi    r3, r28, 0x0
    addi    r4, r31, 0x658
    bl      __ct__17TBossPakkunParamsFPCc
branch_0x80094538:
    stw     r28, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x54(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x80094794
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0xa9
    lbz     r0, 0xa9(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80094584
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x670
    li      r5, 0xa9
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80094584:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0xaa
    lbz     r0, 0xaa(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800945b4
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x698
    li      r5, 0xaa
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800945b4:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0xab
    lbz     r0, 0xab(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800945e4
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x6c0
    li      r5, 0xab
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800945e4:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0xac
    lbz     r0, 0xac(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80094614
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x6ec
    li      r5, 0xac
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80094614:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x15d
    lbz     r0, 0x15d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80094644
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x718
    li      r5, 0x15d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80094644:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x15e
    lbz     r0, 0x15e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80094674
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x744
    li      r5, 0x15e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80094674:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x15f
    lbz     r0, 0x15f(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800946a4
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x770
    li      r5, 0x15f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800946a4:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x160
    lbz     r0, 0x160(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800946d4
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x798
    li      r5, 0x160
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800946d4:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x161
    lbz     r0, 0x161(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80094704
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x7c0
    li      r5, 0x161
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80094704:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x162
    lbz     r0, 0x162(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80094734
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x7e8
    li      r5, 0x162
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80094734:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x163
    lbz     r0, 0x163(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80094764
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x814
    li      r5, 0x163
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80094764:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x164
    lbz     r0, 0x164(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80094794
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x840
    li      r5, 0x164
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80094794:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl createModelData__18TBossPakkunManagerFv
createModelData__18TBossPakkunManagerFv: # 0x800947b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x800947e8
    lwz     r12, 0x0(r3)
    lis     r4, entry_3613@ha
    addi    r4, r4, entry_3613@l
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    b       branch_0x80094800

branch_0x800947e8:
    lwz     r12, 0x0(r3)
    lis     r4, entry_3618@ha
    addi    r4, r4, entry_3618@l
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
branch_0x80094800:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__18TBossPakkunManagerFPCci
__ct__18TBossPakkunManagerFPCci: # 0x80094810
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__18TBossPakkunManager@h
    addi    r0, r3, __vvt__18TBossPakkunManager@l
    stw     r0, 0x0(r30)
    mr      r3, r30
    stw     r31, 0x54(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl perform__11TBossPakkunFUlPQ26JDrama9TGraphics
perform__11TBossPakkunFUlPQ26JDrama9TGraphics: # 0x8009485c
    mflr    r0
    lis     r6, up_3221@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stmw    r27, 0x164(sp)
    mr      r31, r3
    addi    r29, r4, 0x0
    addi    r28, r5, 0x0
    addi    r30, r6, up_3221@l
    lwz     r3, 0x158(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800948a4
    lwz     r12, 0x0(r3)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800948a4:
    lwz     r3, 0x15c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800948c8
    lwz     r12, 0x0(r3)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800948c8:
    lwz     r3, 0x160(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800948ec
    lwz     r12, 0x0(r3)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800948ec:
    lwz     r0, 0xf0(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x80095018
    lwz     r3, 0x164(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8009491c
    lwz     r12, 0x0(r3)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x8009491c:
    lwz     r3, 0x168(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80094940
    lwz     r12, 0x0(r3)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x80094940:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80094b8c
    clrlwi. r0, r29, 31
    beq-    branch_0x80094b8c
    lfs     f0, 0x154(r31)
    lwz     r3, 0x150(r31)
    fneg    f0, f0
    lfs     f1, 0x50(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x50(r3)
    lfs     f1, 0x50(r3)
    lfs     f0, -0x672c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80094988
    stfs    f0, 0x50(r3)
    b       branch_0x80094998

branch_0x80094988:
    lfs     f0, -0x6740(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80094998
    stfs    f0, 0x50(r3)
branch_0x80094998:
    lbz     r0, 0x17c(r31)
    extsb.  r0, r0
    beq-    branch_0x80094a18
    lwz     r0, 0x178(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x800949c0
    li      r0, 0x0
    stb     r0, 0x17c(r31)
    stw     r0, 0x178(r31)
    b       branch_0x80094a18

branch_0x800949c0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lis     r4, unk_51eb851f@ha
    lwz     r3, 0xcc(r3)
    addi    r0, r4, unk_51eb851f@l
    mulhw   r0, r0, r3
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add.    r3, r0, r3
    bne-    branch_0x800949f8
    li      r3, 0x1
branch_0x800949f8:
    lwz     r0, 0x178(r31)
    subf    r0, r3, r0
    stw     r0, 0x178(r31)
    lwz     r0, 0x178(r31)
    cmpwi   r0, 0x0
    bge-    branch_0x80094a18
    li      r0, 0x0
    stw     r0, 0x178(r31)
branch_0x80094a18:
    lbz     r0, 0x17c(r31)
    extsb.  r0, r0
    bne-    branch_0x80094a44
    lwz     r3, 0x174(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x80094a44
    addi    r0, r3, -0x1
    stw     r0, 0x174(r31)
    lwz     r3, 0x170(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x170(r31)
branch_0x80094a44:
    lbz     r0, 0x1bc(r31)
    extsb.  r0, r0
    beq-    branch_0x80094a74
    lwz     r3, 0x1b8(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80094a6c
    li      r0, 0x0
    stb     r0, 0x1bc(r31)
    stw     r0, 0x1b8(r31)
    b       branch_0x80094a74

branch_0x80094a6c:
    addi    r0, r3, -0x1
    stw     r0, 0x1b8(r31)
branch_0x80094a74:
    lbz     r0, 0x16c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x80094b8c
    mr      r3, r31
    bl      checkMarioRiding__11TBossPakkunFv
    cmpwi   r3, 0x0
    beq-    branch_0x80094b8c
    lbz     r0, R13Off_m0x6cbc(r13)
    extsb.  r0, r0
    bne-    branch_0x80094ad0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPJumpReact@h
    stw     r0, R13Off_m0x6cb8(r13)
    addi    r0, r3, __vvt__17TNerveBPJumpReact@l
    lis     r3, __dt__17TNerveBPJumpReactFv@h
    stw     r0, R13Off_m0x6cb8(r13)
    addi    r4, r3, __dt__17TNerveBPJumpReactFv@l
    addi    r3, r13, R13Off_m0x6cb8
    addi    r5, r30, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cbc(r13)
branch_0x80094ad0:
    lwz     r4, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6cb8
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80094ae8
    b       branch_0x80094aec

branch_0x80094ae8:
    lwz     r3, 0x1c(r4)
branch_0x80094aec:
    cmplw   r3, r0
    beq-    branch_0x80094b8c
    lbz     r0, R13Off_m0x6cbc(r13)
    extsb.  r0, r0
    bne-    branch_0x80094b34
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPJumpReact@h
    stw     r0, R13Off_m0x6cb8(r13)
    addi    r0, r3, __vvt__17TNerveBPJumpReact@l
    lis     r3, __dt__17TNerveBPJumpReactFv@h
    stw     r0, R13Off_m0x6cb8(r13)
    addi    r4, r3, __dt__17TNerveBPJumpReactFv@l
    addi    r3, r13, R13Off_m0x6cb8
    addi    r5, r30, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cbc(r13)
branch_0x80094b34:
    addi    r5, r13, R13Off_m0x6cb8
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80094b8c
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80094b80
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x80094b80
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x80094b80:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x80094b8c:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80094d9c
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x80094d9c
    lwz     r3, 0x74(r31)
    li      r4, 0x18
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80094c08
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x810
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x194(r31)
    stfs    f1, 0x198(r31)
    stfs    f2, 0x19c(r31)
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x840
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x1a0(r31)
    stfs    f1, 0x1a4(r31)
    stfs    f2, 0x1a8(r31)
branch_0x80094c08:
    lwz     r3, 0x74(r31)
    li      r4, 0x17
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80094cb8
    lwz     r3, 0x74(r31)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x1ac
    lwz     r3, 0x4(r3)
    li      r4, 0x124
    li      r6, 0x1
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x3c0
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x1ac(r31)
    stfs    f1, 0x1b0(r31)
    stfs    f2, 0x1b4(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80094cb8
    lbz     r0, R13Off_m0x6d1a(r13)
    extsb.  r0, r0
    bne-    branch_0x80094c88
    lfs     f0, -0x66e4(r2)
    li      r0, 0x1
    stfs    f0, 0x48(r30)
    stfs    f0, 0x4c(r30)
    stfs    f0, 0x50(r30)
    stb     r0, R13Off_m0x6d1a(r13)
branch_0x80094c88:
    lfs     f0, 0x48(r30)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4c(r30)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x50(r30)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x48(r30)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4c(r30)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x50(r30)
    stfs    f0, 0x17c(r3)
branch_0x80094cb8:
    lwz     r3, 0x74(r31)
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80094cf4
    lwz     r3, 0x74(r31)
    li      r4, 0xd
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80094cf4
    lwz     r3, 0x74(r31)
    li      r4, 0xc
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80094d3c
branch_0x80094cf4:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x160
    addi    r5, r5, 0x720
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    addi    r7, r31, 0x1
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x160
    addi    r5, r5, 0x8a0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80094d3c:
    lwz     r3, 0x74(r31)
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80094d78
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80094d78
    lwz     r3, 0x74(r31)
    li      r4, 0x1a
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80094d9c
branch_0x80094d78:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    addi    r7, r31, 0x1
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x15f
    addi    r5, r5, 0x3c0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80094d9c:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80094e34
    lbz     r0, R13Off_m0x6cac(r13)
    extsb.  r0, r0
    bne-    branch_0x80094dec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__11TNerveBPDie@h
    stw     r0, R13Off_m0x6ca8(r13)
    addi    r0, r3, __vvt__11TNerveBPDie@l
    lis     r3, __dt__11TNerveBPDieFv@h
    stw     r0, R13Off_m0x6ca8(r13)
    addi    r4, r3, __dt__11TNerveBPDieFv@l
    addi    r3, r13, R13Off_m0x6ca8
    addi    r5, r30, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cac(r13)
branch_0x80094dec:
    lwz     r4, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6ca8
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80094e04
    b       branch_0x80094e08

branch_0x80094e04:
    lwz     r3, 0x1c(r4)
branch_0x80094e08:
    cmplw   r3, r0
    bne-    branch_0x80094e34
    lwz     r30, 0x74(r31)
    mr      r3, r31
    lwz     r0, 0x180(r31)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    stw     r0, 0x74(r31)
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    stw     r30, 0x74(r31)
    b       branch_0x80095018

branch_0x80094e34:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80094e7c
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x80094e7c
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r27, 0x150(r31)
    cmplwi  r27, 0x0
    beq-    branch_0x80094e64
    lwz     r27, 0x0(r27)
branch_0x80094e64:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x0(r3)
    stw     r27, 0x58(r3)
branch_0x80094e7c:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80094ef4
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x80094ef4
    lbz     r0, 0x16c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x80094ee8
    lwz     r7, 0x168(r31)
    li      r0, 0x1
    lfs     f0, -0x6728(r2)
    addi    r4, sp, 0x148
    lwz     r6, 0x10(r7)
    lwz     r5, 0x14(r7)
    lwz     r3, R13Off_m0x5fa0(r13)
    stw     r6, 0x148(sp)
    stw     r5, 0x14c(sp)
    lwz     r5, 0x18(r7)
    stw     r5, 0x150(sp)
    lfs     f1, 0x14c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14c(sp)
    stb     r0, 0x14(r3)
    lwz     r3, R13Off_m0x5fa0(r13)
    bl      setPos__12TTargetArrowFRCQ29JGeometry8TVec3_f_
    b       branch_0x80094ef4

branch_0x80094ee8:
    lwz     r3, R13Off_m0x5fa0(r13)
    li      r0, 0x0
    stb     r0, 0x14(r3)
branch_0x80094ef4:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80095008
    rlwinm. r0, r29, 0, 22, 22
    beq-    branch_0x80095008
    lbz     r0, R13Off_m0x6cb4(r13)
    extsb.  r0, r0
    bne-    branch_0x80094f4c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveBPPreDie@h
    stw     r0, R13Off_m0x6cb0(r13)
    addi    r0, r3, __vvt__14TNerveBPPreDie@l
    lis     r3, __dt__14TNerveBPPreDieFv@h
    stw     r0, R13Off_m0x6cb0(r13)
    addi    r4, r3, __dt__14TNerveBPPreDieFv@l
    addi    r3, r13, R13Off_m0x6cb0
    addi    r5, r30, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cb4(r13)
branch_0x80094f4c:
    lwz     r4, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6cb0
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80094f64
    b       branch_0x80094f68

branch_0x80094f64:
    lwz     r3, 0x1c(r4)
branch_0x80094f68:
    cmplw   r3, r0
    beq-    branch_0x80094fd4
    lbz     r0, R13Off_m0x6cc4(r13)
    extsb.  r0, r0
    bne-    branch_0x80094fb0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveBPStompReact@h
    stw     r0, R13Off_m0x6cc0(r13)
    addi    r0, r3, __vvt__18TNerveBPStompReact@l
    lis     r3, __dt__18TNerveBPStompReactFv@h
    stw     r0, R13Off_m0x6cc0(r13)
    addi    r4, r3, __dt__18TNerveBPStompReactFv@l
    addi    r3, r13, R13Off_m0x6cc0
    addi    r5, r30, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cc4(r13)
branch_0x80094fb0:
    lwz     r4, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6cc0
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80094fc8
    b       branch_0x80094fcc

branch_0x80094fc8:
    lwz     r3, 0x1c(r4)
branch_0x80094fcc:
    cmplw   r3, r0
    bne-    branch_0x80094ff8
branch_0x80094fd4:
    lwz     r3, 0x74(r31)
    bl      offMakeDL__6MActorFv
    lwz     r3, 0x74(r31)
    addi    r5, r28, 0x0
    addi    r4, r31, 0x10
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
    b       branch_0x80095008

branch_0x80094ff8:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
branch_0x80095008:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
branch_0x80095018:
    lmw     r27, 0x164(sp)
    lwz     r0, 0x17c(sp)
    addi    sp, sp, 0x178
    mtlr    r0
    blr


.globl receiveMessage__11TBossPakkunFP9THitActorUl
receiveMessage__11TBossPakkunFP9THitActorUl: # 0x8009502c
    mflr    r0
    lis     r5, up_3221@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r5, up_3221@l
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    mr      r29, r3
    lwz     r3, 0x70(r3)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8009506c
    li      r3, 0x0
    b       branch_0x80095260

branch_0x8009506c:
    lbz     r0, R13Off_m0x6c6c(r13)
    extsb.  r0, r0
    bne-    branch_0x800950ac
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPSleep@h
    stw     r0, R13Off_m0x6c68(r13)
    addi    r0, r3, __vvt__13TNerveBPSleep@l
    lis     r3, __dt__13TNerveBPSleepFv@h
    stw     r0, R13Off_m0x6c68(r13)
    addi    r4, r3, __dt__13TNerveBPSleepFv@l
    addi    r3, r13, R13Off_m0x6c68
    addi    r5, r31, 0x15c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c6c(r13)
branch_0x800950ac:
    lwz     r4, 0x8c(r29)
    addi    r0, r13, R13Off_m0x6c68
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800950c4
    b       branch_0x800950c8

branch_0x800950c4:
    lwz     r3, 0x1c(r4)
branch_0x800950c8:
    cmplw   r3, r0
    bne-    branch_0x80095154
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0xd
    bne-    branch_0x80095154
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, R13Off_m0x6c64(r13)
    extsb.  r0, r0
    bne-    branch_0x80095128
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveBPBreakSleep@h
    stw     r0, R13Off_m0x6c60(r13)
    addi    r0, r3, __vvt__18TNerveBPBreakSleep@l
    lis     r3, __dt__18TNerveBPBreakSleepFv@h
    stw     r0, R13Off_m0x6c60(r13)
    addi    r4, r3, __dt__18TNerveBPBreakSleepFv@l
    addi    r3, r13, R13Off_m0x6c60
    addi    r5, r31, 0x168
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c64(r13)
branch_0x80095128:
    lwz     r5, 0x8c(r29)
    addi    r4, r13, R13Off_m0x6c60
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80095140
    stw     r0, 0x1c(r5)
branch_0x80095140:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    li      r3, 0x1
    stw     r4, 0x14(r5)
    b       branch_0x80095260

branch_0x80095154:
    lbz     r0, 0x16c(r29)
    cmpwi   r0, 0x3
    bne-    branch_0x8009525c
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0xd
    beq-    branch_0x8009517c
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8009525c
branch_0x8009517c:
    lfs     f2, 0x14(r29)
    lfs     f0, -0x66e0(r2)
    lfs     f1, 0x14(r30)
    fsubs   f0, f2, f0
    fcmpo   cr0, f0, f1
    ble-    branch_0x8009519c
    li      r3, 0x1
    b       branch_0x80095260

branch_0x8009519c:
    lfs     f0, -0x66dc(r2)
    fadds   f0, f0, f2
    fcmpo   cr0, f0, f1
    bge-    branch_0x800951b4
    li      r3, 0x1
    b       branch_0x80095260

branch_0x800951b4:
    li      r0, 0x0
    stb     r0, 0x16c(r29)
    lwz     r3, 0x8c(r29)
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x6c74(r13)
    extsb.  r0, r0
    bne-    branch_0x80095200
    addi    r3, r13, R13Off_m0x6c70
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__12TNerveBPFall@h
    addi    r0, r3, __vvt__12TNerveBPFall@l
    lis     r3, __dt__12TNerveBPFallFv@h
    stw     r0, R13Off_m0x6c70(r13)
    addi    r4, r3, __dt__12TNerveBPFallFv@l
    addi    r3, r13, R13Off_m0x6c70
    addi    r5, r31, 0x150
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c74(r13)
branch_0x80095200:
    lwz     r5, 0x8c(r29)
    addi    r3, r13, R13Off_m0x6c70
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80095218
    stw     r0, 0x1c(r5)
branch_0x80095218:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    li      r4, 0x2817
    stw     r3, 0x14(r5)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80095254
    addi    r4, r29, 0x10
    li      r3, 0x2817
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80095254:
    li      r3, 0x1
    b       branch_0x80095260

branch_0x8009525c:
    li      r3, 0x0
branch_0x80095260:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl kill__11TBossPakkunFv
kill__11TBossPakkunFv: # 0x8009527c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      kill__10TLiveActorFv
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x164(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800952b8
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800952b8:
    lwz     r3, 0x168(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800952d0
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800952d0:
    lwz     r3, 0x158(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800952e8
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800952e8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setGroundCollision__11TBossPakkunFv
setGroundCollision__11TBossPakkunFv: # 0x800952fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x58(sp)
    lbz     r0, R13Off_m0x6cac(r13)
    extsb.  r0, r0
    bne-    branch_0x80095358
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__11TNerveBPDie@h
    stw     r0, R13Off_m0x6ca8(r13)
    addi    r0, r3, __vvt__11TNerveBPDie@l
    lis     r4, __dt__11TNerveBPDieFv@h
    stw     r0, R13Off_m0x6ca8(r13)
    lis     r3, unk_803f110c@h
    addi    r5, r3, unk_803f110c@l
    addi    r4, r4, __dt__11TNerveBPDieFv@l
    addi    r3, r13, R13Off_m0x6ca8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cac(r13)
branch_0x80095358:
    lwz     r4, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6ca8
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80095370
    b       branch_0x80095374

branch_0x80095370:
    lwz     r3, 0x1c(r4)
branch_0x80095374:
    cmplw   r3, r0
    beq-    branch_0x80095430
    lbz     r0, R13Off_m0x6cdc(r13)
    extsb.  r0, r0
    bne-    branch_0x800953c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPTumbleOut@h
    stw     r0, R13Off_m0x6cd8(r13)
    addi    r0, r3, __vvt__17TNerveBPTumbleOut@l
    lis     r4, __dt__17TNerveBPTumbleOutFv@h
    stw     r0, R13Off_m0x6cd8(r13)
    lis     r3, unk_803f10c4@h
    addi    r5, r3, unk_803f10c4@l
    addi    r4, r4, __dt__17TNerveBPTumbleOutFv@l
    addi    r3, r13, R13Off_m0x6cd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cdc(r13)
branch_0x800953c0:
    lwz     r4, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6cd8
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800953d8
    b       branch_0x800953dc

branch_0x800953d8:
    lwz     r3, 0x1c(r4)
branch_0x800953dc:
    cmplw   r3, r0
    beq-    branch_0x80095430
    lwz     r0, 0xec(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80095430
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r30, sp, 0x28
    addi    r3, r30, 0x0
    addi    r4, r4, 0x60
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80095430
    lwz     r12, 0x0(r3)
    mr      r4, r30
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x80095430:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl moveMtx__17TMapCollisionBaseFPA4_f
moveMtx__17TMapCollisionBaseFPA4_f: # 0x80095448
    blr


.globl gekko_ps_copy12__9JGeometryFPvPv
gekko_ps_copy12__9JGeometryFPvPv: # 0x8009544c
    psq_l   f0, 0x0(4), 0, 0
    psq_l   f2, 0x8(4), 0, 0
    psq_l   f4, 0x10(4), 0, 0
    psq_l   f6, 0x18(4), 0, 0
    psq_l   f8, 0x20(4), 0, 0
    psq_l   f10, 0x28(4), 0, 0
    psq_st  f0, 0x0(3), 0, 0
    psq_st  f2, 0x8(3), 0, 0
    psq_st  f4, 0x10(3), 0, 0
    psq_st  f6, 0x18(3), 0, 0
    psq_st  f8, 0x20(3), 0, 0
    psq_st  f10, 0x28(3), 0, 0
    blr


.globl getBasNameTable__11TBossPakkunCFv
getBasNameTable__11TBossPakkunCFv: # 0x80095480
    lis     r3, bosspakkun_bastable@h
    addi    r3, r3, bosspakkun_bastable@l
    blr


.globl changeBck__11TBossPakkunFi
changeBck__11TBossPakkunFi: # 0x8009548c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stw     r31, 0xac(sp)
    mr      r31, r4
    stw     r30, 0xa8(sp)
    mr      r30, r3
    stw     r29, 0xa4(sp)
    stw     r28, 0xa0(sp)
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800954dc
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800957e0
branch_0x800954dc:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    lwz     r4, 0x150(r30)
    mr      r29, r3
    lwz     r3, 0x64(r4)
    lwz     r3, 0x78(r3)
    lwz     r3, 0xc(r3)
    lwz     r3, 0x2c(r3)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x8009551c
    lwz     r3, 0xc(r3)
    slwi    r0, r31, 2
    lwzx    r0, r3, r0
    b       branch_0x80095520

branch_0x8009551c:
    li      r0, 0x0
branch_0x80095520:
    lwz     r3, 0x54(r4)
    cmplw   r3, r0
    beq-    branch_0x8009553c
    stw     r3, 0x58(r4)
    stw     r0, 0x54(r4)
    lfs     f0, -0x6740(r2)
    stfs    f0, 0x50(r4)
branch_0x8009553c:
    lwz     r3, 0x74(r30)
    cmpwi   r31, 0x0
    lwz     r28, 0xc(r3)
    stw     r31, 0x0(r28)
    blt-    branch_0x8009559c
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x80095570
    lwz     r3, 0xc(r3)
    slwi    r0, r31, 2
    lwzx    r0, r3, r0
    b       branch_0x80095574

branch_0x80095570:
    li      r0, 0x0
branch_0x80095574:
    stw     r0, 0x24(r28)
    addi    r3, r28, 0x4
    lwz     r4, 0x24(r28)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x24(r28)
    lbz     r0, 0x0(r3)
    stb     r0, 0x8(r28)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x10(r28)
branch_0x8009559c:
    cmpwi   r31, 0x15
    bne-    branch_0x800955d0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x74(r30)
    li      r4, 0x0
    lfs     f31, 0x16c(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x800955d0:
    cmpwi   r29, 0x19
    lfs     f31, -0x66d8(r2)
    bne-    branch_0x80095624
    cmpwi   r31, 0x15
    beq-    branch_0x800955ec
    cmpwi   r31, 0x1a
    bne-    branch_0x80095740
branch_0x800955ec:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x11c(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6738(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f31, f0, f1
    b       branch_0x80095740

branch_0x80095624:
    cmpwi   r29, 0x12
    bne-    branch_0x8009566c
    cmpwi   r31, 0x19
    bne-    branch_0x80095740
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x11c(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6738(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f31, f0, f1
    b       branch_0x80095740

branch_0x8009566c:
    cmpwi   r29, 0x2
    bne-    branch_0x800956b4
    cmpwi   r31, 0x19
    bne-    branch_0x80095740
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x11c(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6738(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f31, f0, f1
    b       branch_0x80095740

branch_0x800956b4:
    cmpwi   r29, 0x14
    bne-    branch_0x800956fc
    cmpwi   r31, 0x19
    bne-    branch_0x80095740
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x11c(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6738(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f31, f0, f1
    b       branch_0x80095740

branch_0x800956fc:
    cmpwi   r29, 0x1a
    bne-    branch_0x80095740
    cmpwi   r31, 0x16
    bne-    branch_0x80095740
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x11c(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6738(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f31, f0, f1
branch_0x80095740:
    lfs     f0, -0x672c(r2)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80095788
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80095788
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6738(r2)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x66d4(r2)
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f1
    fmuls   f31, f2, f0
branch_0x80095788:
    lfs     f0, -0x672c(r2)
    fcmpu   cr0, f0, f31
    bne-    branch_0x800957a0
    lfs     f0, -0x6740(r2)
    stfs    f0, 0x154(r30)
    b       branch_0x800957ac

branch_0x800957a0:
    lfs     f0, -0x6740(r2)
    fdivs   f0, f0, f31
    stfs    f0, 0x154(r30)
branch_0x800957ac:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800957d0
    li      r4, 0x0
    b       branch_0x800957d8

branch_0x800957d0:
    slwi    r0, r31, 2
    lwzx    r4, r3, r0
branch_0x800957d8:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800957e0:
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lwz     r31, 0xac(sp)
    mtlr    r0
    lwz     r30, 0xa8(sp)
    lwz     r29, 0xa4(sp)
    lwz     r28, 0xa0(sp)
    addi    sp, sp, 0xb8
    blr


.globl launchPolDrop__11TBossPakkunFv
launchPolDrop__11TBossPakkunFv: # 0x80095804
    mflr    r0
    lis     r4, unk_8037b998@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r4, unk_8037b998@l
    stw     r30, 0x78(sp)
    mr      r30, r3
    lwz     r3, 0x158(r3)
    lwz     r0, 0x80(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800959f0
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80095870
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    lfs     f0, -0x6740(r2)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x68(sp)
    lfs     f1, 0x60(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x60(sp)
    b       branch_0x80095880

branch_0x80095870:
    addi    r3, r30, 0x0
    addi    r5, sp, 0x60
    li      r4, 0x12
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x80095880:
    mr      r3, r30
    lwz     r4, R13Off_m0x60d8(r13)
    lwz     r12, 0x0(r30)
    lfs     f31, 0x34(r4)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6704(r2)
    lfs     f4, 0x270(r3)
    addi    r3, sp, 0x3c
    fmuls   f0, f0, f31
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    lwz     r4, R13Off_m0x5ea8(r13)
    fctiwz  f0, f0
    lfs     f2, -0x672c(r2)
    stfd    f0, 0x70(sp)
    lwz     r5, 0x74(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800935dc
    lwz     r0, 0x3c(sp)
    mr      r3, r30
    lwz     r4, 0x40(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x44(sp)
    stw     r4, 0x4c(sp)
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r0, 0x50(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x50(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x25c(r3)
    addi    r3, sp, 0x48
    lfs     f2, -0x66d4(r2)
    addi    r4, sp, 0x60
    addi    r5, sp, 0x54
    bl      SMSCalcJumpVelocityXZ__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ffPQ29JGeometry8TVec3_f_
    lwz     r30, 0x158(r30)
    li      r3, 0x1
    lwz     r6, 0x54(sp)
    li      r0, 0x0
    lwz     r5, 0x58(sp)
    addi    r4, r31, 0x86c
    stw     r6, 0x6c(r30)
    stw     r5, 0x70(r30)
    lwz     r5, 0x5c(sp)
    stw     r5, 0x74(r30)
    lwz     r6, 0x60(sp)
    lwz     r5, 0x64(sp)
    stw     r6, 0x10(r30)
    stw     r5, 0x14(r30)
    lwz     r5, 0x68(sp)
    stw     r5, 0x18(r30)
    lfs     f0, -0x6740(r2)
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    lfs     f0, -0x672c(r2)
    stfs    f0, 0x38(r30)
    stfs    f0, 0x34(r30)
    stfs    f0, 0x30(r30)
    stw     r3, 0x80(r30)
    stw     r0, 0x84(r30)
    lwz     r3, 0x78(r30)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x878
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x888
    bl      setBtk__6MActorFPCc
    lfs     f0, 0x64(sp)
    stfs    f0, 0x88(r30)
branch_0x800959f0:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl gotHipDropDamage__11TBossPakkunFv
gotHipDropDamage__11TBossPakkunFv: # 0x80095a0c
    mflr    r0
    lis     r4, up_3221@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    stw     r30, 0x88(sp)
    addi    r30, r4, up_3221@l
    lbz     r3, 0x13c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80095a40
    addi    r0, r3, -0x1
    stb     r0, 0x13c(r31)
branch_0x80095a40:
    li      r0, 0x0
    stb     r0, 0x16c(r31)
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80095bb4
    lbz     r0, R13Off_m0x6cb4(r13)
    extsb.  r0, r0
    bne-    branch_0x80095a94
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveBPPreDie@h
    stw     r0, R13Off_m0x6cb0(r13)
    addi    r0, r3, __vvt__14TNerveBPPreDie@l
    lis     r3, __dt__14TNerveBPPreDieFv@h
    stw     r0, R13Off_m0x6cb0(r13)
    addi    r4, r3, __dt__14TNerveBPPreDieFv@l
    addi    r3, r13, R13Off_m0x6cb0
    addi    r5, r30, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cb4(r13)
branch_0x80095a94:
    lwz     r4, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6cb0
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80095aac
    b       branch_0x80095ab0

branch_0x80095aac:
    lwz     r3, 0x1c(r4)
branch_0x80095ab0:
    cmplw   r3, r0
    beq-    branch_0x80095f9c
    lbz     r0, R13Off_m0x6cac(r13)
    extsb.  r0, r0
    bne-    branch_0x80095af8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__11TNerveBPDie@h
    stw     r0, R13Off_m0x6ca8(r13)
    addi    r0, r3, __vvt__11TNerveBPDie@l
    lis     r3, __dt__11TNerveBPDieFv@h
    stw     r0, R13Off_m0x6ca8(r13)
    addi    r4, r3, __dt__11TNerveBPDieFv@l
    addi    r3, r13, R13Off_m0x6ca8
    addi    r5, r30, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cac(r13)
branch_0x80095af8:
    lwz     r4, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6ca8
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80095b10
    b       branch_0x80095b14

branch_0x80095b10:
    lwz     r3, 0x1c(r4)
branch_0x80095b14:
    cmplw   r3, r0
    beq-    branch_0x80095f9c
    lbz     r0, R13Off_m0x6cb4(r13)
    extsb.  r0, r0
    bne-    branch_0x80095b5c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveBPPreDie@h
    stw     r0, R13Off_m0x6cb0(r13)
    addi    r0, r3, __vvt__14TNerveBPPreDie@l
    lis     r3, __dt__14TNerveBPPreDieFv@h
    stw     r0, R13Off_m0x6cb0(r13)
    addi    r4, r3, __dt__14TNerveBPPreDieFv@l
    addi    r3, r13, R13Off_m0x6cb0
    addi    r5, r30, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cb4(r13)
branch_0x80095b5c:
    lwz     r5, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6cb0
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80095b74
    stw     r0, 0x1c(r5)
branch_0x80095b74:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    li      r4, 0x284e
    stw     r3, 0x14(r5)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80095f9c
    addi    r4, r31, 0x10
    li      r3, 0x284e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80095f9c

branch_0x80095bb4:
    lbz     r0, R13Off_m0x6cdc(r13)
    extsb.  r0, r0
    bne-    branch_0x80095bf4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBPTumbleOut@h
    stw     r0, R13Off_m0x6cd8(r13)
    addi    r0, r3, __vvt__17TNerveBPTumbleOut@l
    lis     r3, __dt__17TNerveBPTumbleOutFv@h
    stw     r0, R13Off_m0x6cd8(r13)
    addi    r4, r3, __dt__17TNerveBPTumbleOutFv@l
    addi    r3, r13, R13Off_m0x6cd8
    addi    r5, r30, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cdc(r13)
branch_0x80095bf4:
    lwz     r4, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6cd8
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80095c0c
    b       branch_0x80095c10

branch_0x80095c0c:
    lwz     r3, 0x1c(r4)
branch_0x80095c10:
    cmplw   r3, r0
    beq-    branch_0x80095f9c
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x284d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80095c48
    addi    r4, r31, 0x10
    li      r3, 0x284d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80095c48:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80095dfc
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x6ca4(r13)
    extsb.  r0, r0
    bne-    branch_0x80095ca4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPTakeOff@h
    stw     r0, R13Off_m0x6ca0(r13)
    addi    r0, r3, __vvt__15TNerveBPTakeOff@l
    lis     r3, __dt__15TNerveBPTakeOffFv@h
    stw     r0, R13Off_m0x6ca0(r13)
    addi    r4, r3, __dt__15TNerveBPTakeOffFv@l
    addi    r3, r13, R13Off_m0x6ca0
    addi    r5, r30, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ca4(r13)
branch_0x80095ca4:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6ca0
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80095cbc
    stw     r0, 0x1c(r4)
branch_0x80095cbc:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, R13Off_m0x6cd4(r13)
    extsb.  r0, r0
    bne-    branch_0x80095d08
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPGetUp@h
    stw     r0, R13Off_m0x6cd0(r13)
    addi    r0, r3, __vvt__13TNerveBPGetUp@l
    lis     r3, __dt__13TNerveBPGetUpFv@h
    stw     r0, R13Off_m0x6cd0(r13)
    addi    r4, r3, __dt__13TNerveBPGetUpFv@l
    addi    r3, r13, R13Off_m0x6cd0
    addi    r5, r30, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cd4(r13)
branch_0x80095d08:
    addi    r5, r13, R13Off_m0x6cd0
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80095d60
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80095d54
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x80095d54
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x80095d54:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x80095d60:
    lbz     r0, R13Off_m0x6cc4(r13)
    extsb.  r0, r0
    bne-    branch_0x80095da0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveBPStompReact@h
    stw     r0, R13Off_m0x6cc0(r13)
    addi    r0, r3, __vvt__18TNerveBPStompReact@l
    lis     r3, __dt__18TNerveBPStompReactFv@h
    stw     r0, R13Off_m0x6cc0(r13)
    addi    r4, r3, __dt__18TNerveBPStompReactFv@l
    addi    r3, r13, R13Off_m0x6cc0
    addi    r5, r30, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cc4(r13)
branch_0x80095da0:
    addi    r5, r13, R13Off_m0x6cc0
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80095f9c
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80095dec
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x80095dec
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x80095dec:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
    b       branch_0x80095f9c

branch_0x80095dfc:
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x80095e48
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x80095e48:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6d18
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80095e60
    stw     r0, 0x1c(r4)
branch_0x80095e60:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, R13Off_m0x6cd4(r13)
    extsb.  r0, r0
    bne-    branch_0x80095eac
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPGetUp@h
    stw     r0, R13Off_m0x6cd0(r13)
    addi    r0, r3, __vvt__13TNerveBPGetUp@l
    lis     r3, __dt__13TNerveBPGetUpFv@h
    stw     r0, R13Off_m0x6cd0(r13)
    addi    r4, r3, __dt__13TNerveBPGetUpFv@l
    addi    r3, r13, R13Off_m0x6cd0
    addi    r5, r30, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cd4(r13)
branch_0x80095eac:
    addi    r5, r13, R13Off_m0x6cd0
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80095f04
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80095ef8
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x80095ef8
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x80095ef8:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x80095f04:
    lbz     r0, R13Off_m0x6cc4(r13)
    extsb.  r0, r0
    bne-    branch_0x80095f44
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveBPStompReact@h
    stw     r0, R13Off_m0x6cc0(r13)
    addi    r0, r3, __vvt__18TNerveBPStompReact@l
    lis     r3, __dt__18TNerveBPStompReactFv@h
    stw     r0, R13Off_m0x6cc0(r13)
    addi    r4, r3, __dt__18TNerveBPStompReactFv@l
    addi    r3, r13, R13Off_m0x6cc0
    addi    r5, r30, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cc4(r13)
branch_0x80095f44:
    addi    r5, r13, R13Off_m0x6cc0
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80095f9c
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80095f90
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x80095f90
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x80095f90:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x80095f9c:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl showMessage__11TBossPakkunFUl
showMessage__11TBossPakkunFUl: # 0x80095fb4
    mflr    r0
    cmplwi  r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x80095fdc
    li      r31, 0x0
    b       branch_0x80095fe4

branch_0x80095fdc:
    li      r0, 0x1
    slw     r31, r0, r4
branch_0x80095fe4:
    lwz     r0, 0x1c0(r30)
    and.    r0, r0, r31
    bne-    branch_0x80096000
    lwz     r3, R13Off_m0x6048(r13)
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x80096000:
    lwz     r0, 0x1c0(r30)
    or      r0, r0, r31
    stw     r0, 0x1c0(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_
rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_: # 0x80096024
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80096168
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x0(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x4(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x24(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x8(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfs     f3, 0x28(sp)
    lfs     f0, 0x24(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x672c(r2)
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800960d4
    b       branch_0x800960f8

branch_0x800960d4:
    frsqrte f3, f4
    lfs     f2, -0x66e8(r2)
    lfs     f0, -0x66d0(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800960f8:
    lfs     f0, -0x66cc(r2)
    lfs     f1, -0x66c8(r2)
    fsubs   f2, f0, f4
    lfs     f0, -0x672c(r2)
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x80096168
    lfs     f0, -0x6740(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80096124
    fmr     f1, f0
branch_0x80096124:
    cmpwi   r30, 0x1
    beq-    branch_0x8009614c
    bge-    branch_0x80096154
    cmpwi   r30, 0x0
    bge-    branch_0x80096140
    b       branch_0x80096154

branch_0x8009613c:
    b       branch_0x80096154

branch_0x80096140:
    lfs     f0, -0x66c4(r2)
    fmuls   f1, f1, f0
    b       branch_0x80096154

branch_0x8009614c:
    lfs     f0, -0x66c0(r2)
    fmuls   f1, f1, f0
branch_0x80096154:
    stfs    f1, 0x1c8(r29)
    addi    r5, r29, 0x1c8
    li      r4, 0x8
    lwz     r3, R13Off_m0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x80096168:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl checkMarioRiding__11TBossPakkunFv
checkMarioRiding__11TBossPakkunFv: # 0x80096184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      SMS_GetMarioGrPlane__Fv
    lbz     r0, 0x190(r31)
    extsb.  r0, r0
    bne-    branch_0x800961ec
    cmplwi  r3, 0x0
    beq-    branch_0x80096214
    lwz     r0, 0x44(r3)
    cmplw   r0, r31
    bne-    branch_0x80096214
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80096214
    bl      SMS_GetMarioStatus__Fv
    rlwinm. r0, r3, 0, 22, 22
    beq-    branch_0x80096214
    rlwinm. r0, r3, 0, 10, 10
    bne-    branch_0x80096214
    li      r0, 0x1
    stb     r0, 0x190(r31)
    li      r3, 0x1
    b       branch_0x80096218

branch_0x800961ec:
    cmplwi  r3, 0x0
    beq-    branch_0x8009620c
    lwz     r0, 0x44(r3)
    cmplw   r0, r31
    bne-    branch_0x8009620c
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x80096214
branch_0x8009620c:
    li      r0, 0x0
    stb     r0, 0x190(r31)
branch_0x80096214:
    li      r3, 0x0
branch_0x80096218:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl init__11TBossPakkunFP12TLiveManager
init__11TBossPakkunFP12TLiveManager: # 0x8009622c
    mflr    r0
    lis     r6, up_3221@h
    stw     r0, 0x4(sp)
    lis     r5, unk_8037b998@ha
    stwu    sp, -0x210(sp)
    stmw    r25, 0x1f4(sp)
    mr      r31, r3
    addi    r29, r6, up_3221@l
    addi    r30, r5, unk_8037b998@l
    stw     r4, 0x70(r3)
    addi    r4, r31, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80096280
    lwz     r4, 0x70(r31)
    addi    r3, r26, 0x0
    li      r5, 0x7
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80096280:
    stw     r26, 0x78(r31)
    addi    r4, r30, 0x4a8
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800962d4
    lwz     r3, 0x78(r31)
    addi    r4, r30, 0x514
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x180(r31)
    li      r4, 0x7
    lwz     r3, 0x180(r31)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x180(r31)
    li      r4, 0x0
    bl      setBrkFromIndex__6MActorFi
branch_0x800962d4:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x898
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x898
    mtlr    r12
    blrl
    lfs     f1, -0x66bc(r2)
    lis     r26, unk_0800000f@h
    lfs     f2, -0x66e0(r2)
    mr      r28, r3
    fmr     f3, f1
    fmr     f4, f2
    addi    r3, r31, 0x0
    addi    r4, r26, unk_0800000f@l
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800965e0
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800963b4
    stw     r25, 0x1e8(sp)
    addi    r4, r30, 0x8a4
    lwz     r3, 0x1e8(sp)
    bl      __ct__9THitActorFPCc
    lwz     r27, 0x1e8(sp)
    lis     r3, __vvt__10TBPHeadHit@h
    addi    r3, r3, __vvt__10TBPHeadHit@l
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    addi    r3, r27, 0x0
    stw     r0, 0x20(r27)
    addi    r4, r26, 0x10
    li      r5, 0x5
    stw     r31, 0x68(r27)
    lis     r6, 0x8100
    lfs     f1, -0x66e0(r2)
    lfs     f2, -0x66b8(r2)
    fmr     f3, f1
    fmr     f4, f2
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r27)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r27)
branch_0x800963b4:
    stw     r25, 0x164(r31)
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80096428
    stw     r25, 0x1e4(sp)
    addi    r4, r30, 0x8b8
    lwz     r3, 0x1e4(sp)
    bl      __ct__9THitActorFPCc
    lwz     r27, 0x1e4(sp)
    lis     r3, __vvt__8TBPNavel@h
    addi    r3, r3, __vvt__8TBPNavel@l
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    lis     r4, unk_08000011@h
    stw     r0, 0x20(r27)
    addi    r3, r27, 0x0
    addi    r4, r4, unk_08000011@l
    stw     r31, 0x68(r27)
    li      r5, 0x1
    lis     r6, 0x8000
    lfs     f1, -0x66b4(r2)
    lfs     f2, -0x66e0(r2)
    fmr     f3, f1
    fmr     f4, f2
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r27)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r27)
branch_0x80096428:
    addi    r26, r28, 0x10
    stw     r25, 0x168(r31)
    addi    r3, sp, 0xfc
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xfc(sp)
    addi    r3, sp, 0x1e0
    addi    r4, sp, 0xf8
    stw     r0, 0xf8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1e0(sp)
    addi    r5, sp, 0x148
    addi    r4, r26, 0x0
    stw     r0, 0x1dc(sp)
    addi    r3, sp, 0x144
    addi    r6, r31, 0x164
    lwz     r0, 0x1dc(sp)
    stw     r0, 0x148(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, sp, 0xf4
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xf4(sp)
    addi    r3, sp, 0x1d4
    addi    r4, sp, 0xf0
    stw     r0, 0xf0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1d4(sp)
    addi    r5, sp, 0x13c
    addi    r4, r26, 0x0
    stw     r0, 0x1d0(sp)
    addi    r3, sp, 0x138
    addi    r6, r31, 0x168
    lwz     r0, 0x1d0(sp)
    stw     r0, 0x13c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800964dc
    addi    r3, r25, 0x0
    addi    r6, r31, 0x0
    addi    r5, r30, 0x8cc
    li      r4, 0x1
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x800964dc:
    stw     r25, 0xec(r31)
    addi    r4, r30, 0x8e0
    li      r5, 0x1
    lwz     r3, 0xec(r31)
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    lwz     r26, 0xec(r31)
    addi    r3, sp, 0x19c
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    lfs     f4, 0x30(r31)
    lfs     f5, 0x34(r31)
    lfs     f6, 0x38(r31)
    lfs     f7, 0x24(r31)
    lfs     f8, 0x28(r31)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r26, 0x8(r26)
    addi    r3, sp, 0x19c
    addi    r4, r26, 0x20
    bl      PSMTXCopy
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800965a8
    addi    r27, r25, 0x68
    lis     r3, __vvt__10J3DMtxCalc@ha
    stw     r27, 0x0(r25)
    addi    r0, r3, __vvt__10J3DMtxCalc@l
    stw     r0, 0x68(r25)
    addi    r3, r25, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      __ct__24M3UMtxCalcSIAnmBlendQuatFb
    lis     r3, __vvt__18TBossPakkunMtxCalc@h
    addi    r3, r3, __vvt__18TBossPakkunMtxCalc@l
    stw     r3, 0x4c(r25)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r25)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r25)
    subf    r0, r3, r27
    stw     r0, 0x4(r3)
    stw     r31, 0x64(r25)
branch_0x800965a8:
    stw     r25, 0x150(r31)
    lwz     r4, 0x150(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x800965bc
    lwz     r4, 0x0(r4)
branch_0x800965bc:
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800965d8
    stw     r4, 0x38(r3)
    li      r0, 0x3
    stb     r0, 0x2a(r3)
branch_0x800965d8:
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
branch_0x800965e0:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80096654
    lbz     r0, R13Off_m0x6c5c(r13)
    extsb.  r0, r0
    bne-    branch_0x80096630
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPWaitL@h
    stw     r0, R13Off_m0x6c58(r13)
    addi    r0, r3, __vvt__13TNerveBPWaitL@l
    lis     r3, __dt__13TNerveBPWaitLFv@ha
    stw     r0, R13Off_m0x6c58(r13)
    addi    r4, r3, __dt__13TNerveBPWaitLFv@l
    addi    r3, r13, R13Off_m0x6c58
    addi    r5, r29, 0x174
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c5c(r13)
branch_0x80096630:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x6c58
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    b       branch_0x80096798

branch_0x80096654:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x37
    bne-    branch_0x800966c8
    lbz     r0, R13Off_m0x6c74(r13)
    extsb.  r0, r0
    bne-    branch_0x800966a4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPFall@h
    stw     r0, R13Off_m0x6c70(r13)
    addi    r0, r3, __vvt__12TNerveBPFall@l
    lis     r3, __dt__12TNerveBPFallFv@h
    stw     r0, R13Off_m0x6c70(r13)
    addi    r4, r3, __dt__12TNerveBPFallFv@l
    addi    r3, r13, R13Off_m0x6c70
    addi    r5, r29, 0x150
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c74(r13)
branch_0x800966a4:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x6c70
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    b       branch_0x80096798

branch_0x800966c8:
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80096738
    lbz     r0, R13Off_m0x6c6c(r13)
    extsb.  r0, r0
    bne-    branch_0x80096714
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPSleep@h
    stw     r0, R13Off_m0x6c68(r13)
    addi    r0, r3, __vvt__13TNerveBPSleep@l
    lis     r3, __dt__13TNerveBPSleepFv@h
    stw     r0, R13Off_m0x6c68(r13)
    addi    r4, r3, __dt__13TNerveBPSleepFv@l
    addi    r3, r13, R13Off_m0x6c68
    addi    r5, r29, 0x15c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c6c(r13)
branch_0x80096714:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x6c68
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    b       branch_0x80096798

branch_0x80096738:
    lbz     r0, R13Off_m0x6d19(r13)
    extsb.  r0, r0
    bne-    branch_0x80096778
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveBPWait@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r0, r3, __vvt__12TNerveBPWait@l
    lis     r3, __dt__12TNerveBPWaitFv@h
    stw     r0, R13Off_m0x6d18(r13)
    addi    r4, r3, __dt__12TNerveBPWaitFv@l
    addi    r3, r13, R13Off_m0x6d18
    addi    r5, r29, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6d19(r13)
branch_0x80096778:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x6d18
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
branch_0x80096798:
    li      r3, 0x8c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800967b8
    addi    r3, r25, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x8f0
    bl      __ct__10TBPPolDropFP11TBossPakkunPCc
branch_0x800967b8:
    stw     r25, 0x158(r31)
    addi    r4, r30, 0x4cc
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r0, 0x78(r31)
    addi    r29, r3, 0x0
    addi    r4, r30, 0x4bc
    mr      r3, r0
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r4, 0x158(r31)
    stw     r3, 0x78(r4)
    addi    r3, r30, 0x900
    stw     r29, 0x7c(r4)
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8009681c
    lwz     r6, 0x158(r31)
    addi    r5, r3, 0x0
    addi    r4, r2, R2Off_m0x66b0
    lwz     r3, 0x78(r6)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x8009681c:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80096948
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80096884
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    stw     r0, 0x0(r25)
    addi    r3, r30, 0x924
    stw     r3, 0x4(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r25)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r25)
    li      r4, 0x0
    lis     r3, __vvt__8TBPVomit@h
    sth     r4, 0xc(r25)
    addi    r0, r3, __vvt__8TBPVomit@l
    stw     r0, 0x0(r25)
    stw     r31, 0x10(r25)
    stw     r4, 0x14(r25)
    stw     r4, 0x18(r25)
branch_0x80096884:
    stw     r25, 0x15c(r31)
    addi    r4, r30, 0x53c
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r0, 0x78(r31)
    addi    r29, r3, 0x0
    addi    r4, r30, 0x528
    mr      r3, r0
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r4, 0x15c(r31)
    stw     r3, 0x14(r4)
    li      r3, 0x9c
    stw     r29, 0x18(r4)
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800968dc
    addi    r3, r25, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x930
    bl      __ct__10TBPTornadoFP11TBossPakkunPCc
branch_0x800968dc:
    addi    r26, r28, 0x10
    stw     r25, 0x160(r31)
    addi    r3, sp, 0xdc
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xdc(sp)
    addi    r3, sp, 0x160
    addi    r4, sp, 0xd8
    stw     r0, 0xd8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x160(sp)
    addi    r5, sp, 0x110
    addi    r4, r26, 0x0
    stw     r0, 0x15c(sp)
    addi    r3, sp, 0x10c
    addi    r6, r31, 0x160
    lwz     r0, 0x15c(sp)
    stw     r0, 0x110(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80096944
    addi    r3, r25, 0x0
    addi    r4, r30, 0x940
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x80096944:
    stw     r25, 0x18c(r31)
branch_0x80096948:
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    lwz     r0, 0xf0(r31)
    addi    r4, r30, 0x95c
    ori     r0, r0, 0x400
    stw     r0, 0xf0(r31)
    lfs     f0, -0x66a8(r2)
    stfs    f0, 0xb8(r31)
    lwz     r3, R13Off_m0x70b0(r13)
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r31)
    stw     r3, 0x0(r4)
    lwz     r3, 0x124(r31)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80096998
    li      r0, -0x1
    stw     r0, 0x8(r3)
    mr      r3, r31
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
branch_0x80096998:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800969d0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800969d4

branch_0x800969d0:
    li      r0, 0x1
branch_0x800969d4:
    stb     r0, 0x13c(r31)
    lmw     r25, 0x1f4(sp)
    lwz     r0, 0x214(sp)
    addi    sp, sp, 0x210
    mtlr    r0
    blr


.globl setUp__17TMapCollisionBaseFv
setUp__17TMapCollisionBaseFv: # 0x800969ec
    lhz     r0, 0x5c(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0x5c(r3)
    blr


.globl __ct__11TBossPakkunFPCc
__ct__11TBossPakkunFPCc: # 0x800969fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__11TBossPakkun@h
    lwz     r5, 0x8(sp)
    addi    r3, r3, __vvt__11TBossPakkun@l
    stw     r3, 0x0(r5)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r5)
    li      r0, 0x1
    li      r3, 0x34
    lfs     f0, -0x672c(r2)
    stfs    f0, 0x154(r5)
    stw     r4, 0x158(r5)
    stw     r4, 0x15c(r5)
    stw     r4, 0x160(r5)
    stw     r4, 0x164(r5)
    stw     r4, 0x168(r5)
    stb     r4, 0x16c(r5)
    stw     r4, 0x170(r5)
    stw     r4, 0x174(r5)
    stw     r4, 0x178(r5)
    stb     r4, 0x17c(r5)
    stw     r4, 0x180(r5)
    stfs    f0, 0x184(r5)
    stw     r4, 0x188(r5)
    stw     r4, 0x18c(r5)
    stb     r4, 0x190(r5)
    stw     r4, 0x1b8(r5)
    stb     r4, 0x1bc(r5)
    stw     r4, 0x1c0(r5)
    stb     r0, 0x1c4(r5)
    stb     r4, 0x1cc(r5)
    lwz     r0, 0xf0(r5)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r5)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80096ab4
    mr      r3, r31
    bl      __ct__7TWalkerFv
branch_0x80096ab4:
    lwz     r3, 0x8(sp)
    stw     r31, 0x88(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calc__18TBossPakkunMtxCalcFUs
calc__18TBossPakkunMtxCalcFUs: # 0x80096ad0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      calc__24M3UMtxCalcSIAnmBlendQuatFUs
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      calcBellyScale__18TBossPakkunMtxCalcFUs
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      calcHeadDir__18TBossPakkunMtxCalcFUs
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl calcHeadDir__18TBossPakkunMtxCalcFUs
calcHeadDir__18TBossPakkunMtxCalcFUs: # 0x80096b20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stfd    f30, 0x110(sp)
    stfd    f29, 0x108(sp)
    stw     r31, 0x104(sp)
    clrlwi  r31, r4, 16
    cmplwi  r31, 0x12
    stw     r30, 0x100(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x80096ec0
    lwz     r3, 0x64(r30)
    bl      getModel__10TLiveActorCFv
    lwz     r4, R13Off_m0x60b4(r13)
    mulli   r5, r31, 0x30
    lwz     r6, 0x58(r3)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    add     r5, r6, r5
    addi    r31, r5, 0x0
    stw     r3, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xe4(sp)
    lfs     f2, 0xdc(sp)
    lfs     f0, 0xc(r5)
    lfs     f1, 0x24(r5)
    fsubs   f0, f2, f0
    lfs     f2, 0x4(r5)
    stfs    f0, 0xdc(sp)
    lfs     f3, 0xe0(sp)
    lfs     f0, 0x1c(r5)
    fsubs   f0, f3, f0
    stfs    f0, 0xe0(sp)
    lfs     f3, 0xe4(sp)
    lfs     f0, 0x2c(r5)
    fsubs   f0, f3, f0
    stfs    f0, 0xe4(sp)
    lfs     f0, -0x672c(r2)
    lwz     r3, 0x64(r30)
    fcmpu   cr0, f0, f1
    lfs     f31, 0x184(r3)
    bne-    branch_0x80096bec
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x80096be4
    lfs     f30, -0x6700(r2)
    b       branch_0x80096c60

branch_0x80096be4:
    lfs     f30, -0x66fc(r2)
    b       branch_0x80096c60

branch_0x80096bec:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80096c28
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6738(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x66f8(r2)
    stw     r0, 0xfc(sp)
    lis     r0, 0x4330
    stw     r0, 0xf8(sp)
    lfd     f1, 0xf8(sp)
    fsubs   f1, f1, f2
    fmuls   f30, f0, f1
    b       branch_0x80096c60

branch_0x80096c28:
    fneg    f1, f1
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6738(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x66f8(r2)
    stw     r0, 0xfc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x66f4(r2)
    stw     r0, 0xf8(sp)
    lfd     f2, 0xf8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f30, f0, f1
branch_0x80096c60:
    lwz     r3, 0x64(r30)
    li      r4, 0x19
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80096d60
    lfs     f2, -0x672c(r2)
    lfs     f1, 0xe4(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80096ca8
    lfs     f0, 0xdc(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80096ca0
    lfs     f0, -0x6700(r2)
    b       branch_0x80096d24

branch_0x80096ca0:
    lfs     f0, -0x66fc(r2)
    b       branch_0x80096d24

branch_0x80096ca8:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80096ce8
    lfs     f2, 0xdc(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6738(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x66f8(r2)
    stw     r0, 0xfc(sp)
    lis     r0, 0x4330
    stw     r0, 0xf8(sp)
    lfd     f1, 0xf8(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x80096d24

branch_0x80096ce8:
    fneg    f1, f1
    lfs     f2, 0xdc(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6738(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x66f8(r2)
    stw     r0, 0xfc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x66f4(r2)
    stw     r0, 0xf8(sp)
    lfd     f2, 0xf8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x80096d24:
    fadds   f2, f31, f0
    lfs     f0, -0x66a4(r2)
    b       branch_0x80096d34

branch_0x80096d30:
    fsubs   f2, f2, f0
branch_0x80096d34:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x80096d30
    lfs     f1, -0x66a4(r2)
    lfs     f0, -0x672c(r2)
    b       branch_0x80096d50

branch_0x80096d4c:
    fadds   f2, f2, f1
branch_0x80096d50:
    fcmpo   cr0, f2, f0
    blt+    branch_0x80096d4c
    fmr     f29, f2
    b       branch_0x80096d64

branch_0x80096d60:
    fmr     f29, f30
branch_0x80096d64:
    lfs     f0, -0x66f4(r2)
    fmr     f1, f30
    fsubs   f2, f29, f0
    fadds   f3, f0, f29
    bl      MsWrap_f___Ffff_80094444
    lwz     r3, 0x64(r30)
    fsubs   f30, f29, f1
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x672c(r2)
    lfs     f1, 0x180(r3)
    fcmpo   cr0, f30, f0
    ble-    branch_0x80096db4
    fcmpo   cr0, f30, f1
    ble-    branch_0x80096dac
    fmr     f30, f1
branch_0x80096dac:
    fmr     f29, f30
    b       branch_0x80096dcc

branch_0x80096db4:
    fneg    f0, f1
    fcmpo   cr0, f30, f0
    ble-    branch_0x80096dc4
    b       branch_0x80096dc8

branch_0x80096dc4:
    fmr     f30, f0
branch_0x80096dc8:
    fmr     f29, f30
branch_0x80096dcc:
    lfs     f0, -0x66f4(r2)
    fmr     f1, f31
    fsubs   f2, f29, f0
    fadds   f3, f0, f29
    bl      MsWrap_f___Ffff_80094444
    fsubs   f1, f29, f1
    lfs     f0, -0x672c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80096e08
    lfs     f0, -0x7ed0(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80096e00
    b       branch_0x80096e20

branch_0x80096e00:
    fmr     f0, f1
    b       branch_0x80096e20

branch_0x80096e08:
    lfs     f0, -0x7ecc(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80096e18
    b       branch_0x80096e1c

branch_0x80096e18:
    fmr     f1, f0
branch_0x80096e1c:
    fmr     f0, f1
branch_0x80096e20:
    fadds   f31, f31, f0
    lwz     r4, 0x64(r30)
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    stfs    f31, 0x184(r4)
    addi    r4, sp, 0xa0
    lfs     f0, -0x6704(r2)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f0, f31
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    lfs     f2, -0x6740(r2)
    fctiwz  f0, f0
    lfs     f1, -0x672c(r2)
    stfd    f0, 0xf8(sp)
    lwz     r7, 0xfc(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f3, r8, r0
    lfsx    f4, r6, r0
    fneg    f0, f3
    stfs    f2, 0xa0(sp)
    stfs    f1, 0xa4(sp)
    stfs    f1, 0xa8(sp)
    stfs    f1, 0xac(sp)
    stfs    f1, 0xb0(sp)
    stfs    f4, 0xb4(sp)
    stfs    f0, 0xb8(sp)
    stfs    f1, 0xbc(sp)
    stfs    f1, 0xc0(sp)
    stfs    f3, 0xc4(sp)
    stfs    f4, 0xc8(sp)
    stfs    f1, 0xcc(sp)
    bl      PSMTXConcat
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, sp, 0xa0
    bl      PSMTXConcat
branch_0x80096ec0:
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lfd     f30, 0x110(sp)
    mtlr    r0
    lfd     f29, 0x108(sp)
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    addi    sp, sp, 0x120
    blr


.globl calcBellyScale__18TBossPakkunMtxCalcFUs
calcBellyScale__18TBossPakkunMtxCalcFUs: # 0x80096ee4
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    cmplwi  r0, 0x4
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    addi    r30, r4, 0x0
    lis     r4, up_3221@h
    stw     r29, 0x94(sp)
    addi    r29, r3, 0x0
    addi    r31, r4, up_3221@l
    beq-    branch_0x80096f24
    cmplwi  r0, 0x24
    bne-    branch_0x80097134
branch_0x80096f24:
    lwz     r3, 0x64(r29)
    lbz     r0, 0x17c(r3)
    extsb.  r0, r0
    beq-    branch_0x80096f60
    lwz     r3, 0x1b8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x6738(r2)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x66a0(r2)
    stw     r3, 0x8c(sp)
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    b       branch_0x80096fc0

branch_0x80096f60:
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x64(r29)
    lwz     r3, 0xcc(r3)
    lwz     r0, 0x178(r4)
    addi    r4, r3, 0x0
    cmpw    r0, r3
    ble-    branch_0x80096f8c
    mr      r0, r4
branch_0x80096f8c:
    xoris   r3, r0, 0x8000
    lfd     f2, -0x6738(r2)
    xoris   r0, r4, 0x8000
    stw     r3, 0x8c(sp)
    lis     r3, 0x4330
    stw     r0, 0x84(sp)
    stw     r3, 0x88(sp)
    stw     r3, 0x80(sp)
    lfd     f1, 0x88(sp)
    lfd     f0, 0x80(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f1, f1, f0
branch_0x80096fc0:
    lfs     f2, -0x672c(r2)
    lfs     f5, -0x6740(r2)
    fmr     f3, f2
    lfs     f4, -0x669c(r2)
    fmr     f6, f5
    fmr     f7, f2
    bl      JMAHermiteInterpolation__Ffffffff
    fmr     f31, f1
    lwz     r3, 0x64(r29)
    bl      getModel__10TLiveActorCFv
    clrlwi  r4, r30, 16
    lwz     r3, 0x58(r3)
    mulli   r0, r4, 0x30
    cmplwi  r4, 0x24
    add     r29, r3, r0
    bne-    branch_0x8009708c
    lbz     r0, R13Off_m0x6d1e(r13)
    extsb.  r0, r0
    bne-    branch_0x80097028
    lfs     f0, -0x6698(r2)
    li      r0, 0x1
    stfs    f0, 0x18(r31)
    stfs    f0, 0x1c(r31)
    lfs     f0, -0x6694(r2)
    stfs    f0, 0x20(r31)
    stb     r0, R13Off_m0x6d1e(r13)
branch_0x80097028:
    lbz     r0, R13Off_m0x6d1d(r13)
    extsb.  r0, r0
    bne-    branch_0x80097050
    lfs     f0, -0x6740(r2)
    li      r0, 0x1
    stfs    f0, 0x24(r31)
    lfs     f0, -0x6690(r2)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    stb     r0, R13Off_m0x6d1d(r13)
branch_0x80097050:
    lfs     f4, 0x24(r31)
    addi    r3, sp, 0x4c
    lfs     f0, 0x18(r31)
    lfs     f5, 0x28(r31)
    lfs     f1, 0x1c(r31)
    fsubs   f3, f0, f4
    lfs     f6, 0x2c(r31)
    fsubs   f2, f1, f5
    lfs     f0, 0x20(r31)
    fmadds  f1, f31, f3, f4
    fsubs   f0, f0, f6
    fmadds  f2, f31, f2, f5
    fmadds  f3, f31, f0, f6
    bl      PSMTXScale
    b       branch_0x80097114

branch_0x8009708c:
    lbz     r0, R13Off_m0x6d1c(r13)
    extsb.  r0, r0
    bne-    branch_0x800970b4
    lfs     f0, -0x668c(r2)
    li      r0, 0x1
    stfs    f0, 0x30(r31)
    lfs     f0, -0x6688(r2)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stb     r0, R13Off_m0x6d1c(r13)
branch_0x800970b4:
    lbz     r0, R13Off_m0x6d1b(r13)
    extsb.  r0, r0
    bne-    branch_0x800970dc
    lfs     f0, -0x6740(r2)
    li      r0, 0x1
    stfs    f0, 0x3c(r31)
    lfs     f0, -0x6684(r2)
    stfs    f0, 0x40(r31)
    stfs    f0, 0x44(r31)
    stb     r0, R13Off_m0x6d1b(r13)
branch_0x800970dc:
    lfs     f4, 0x3c(r31)
    addi    r3, sp, 0x4c
    lfs     f0, 0x30(r31)
    lfs     f5, 0x40(r31)
    lfs     f1, 0x34(r31)
    fsubs   f3, f0, f4
    lfs     f6, 0x44(r31)
    fsubs   f2, f1, f5
    lfs     f0, 0x38(r31)
    fmadds  f1, f31, f3, f4
    fsubs   f0, f0, f6
    fmadds  f2, f31, f2, f5
    fmadds  f3, f31, f0, f6
    bl      PSMTXScale
branch_0x80097114:
    addi    r3, r29, 0x0
    addi    r5, r29, 0x0
    addi    r4, sp, 0x4c
    bl      PSMTXConcat
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r4, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r29, 0x0
    bl      PSMTXCopy
branch_0x80097134:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    mtlr    r0
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa8
    blr


.globl perform__8TBPNavelFUlPQ26JDrama9TGraphics
perform__8TBPNavelFUlPQ26JDrama9TGraphics: # 0x80097154
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
    beq-    branch_0x80097190
    lwz     r3, 0x68(r29)
    addi    r5, r29, 0x10
    li      r4, 0x6
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x80097190:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl receiveMessage__8TBPNavelFP9THitActorUl
receiveMessage__8TBPNavelFP9THitActorUl: # 0x800971bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r4, 0x0
    lbz     r0, R13Off_m0x6c6c(r13)
    extsb.  r0, r0
    bne-    branch_0x80097224
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPSleep@h
    stw     r0, R13Off_m0x6c68(r13)
    addi    r0, r3, __vvt__13TNerveBPSleep@l
    lis     r4, __dt__13TNerveBPSleepFv@h
    stw     r0, R13Off_m0x6c68(r13)
    lis     r3, unk_803f116c@h
    addi    r5, r3, unk_803f116c@l
    addi    r4, r4, __dt__13TNerveBPSleepFv@l
    addi    r3, r13, R13Off_m0x6c68
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c6c(r13)
branch_0x80097224:
    lwz     r3, 0x68(r30)
    lwz     r3, 0x8c(r3)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    addi    r0, r13, R13Off_m0x6c68
    cmplw   r3, r0
    bne-    branch_0x8009725c
    lwz     r3, 0x68(r30)
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x800972b0

branch_0x8009725c:
    lwz     r4, 0x4c(r29)
    addis   r0, r4, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x80097274
    li      r3, 0x0
    b       branch_0x800972b0

branch_0x80097274:
    lwz     r3, 0x68(r30)
    lbz     r0, 0x16c(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8009728c
    li      r3, 0x1
    b       branch_0x800972b0

branch_0x8009728c:
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800972ac
    cmplwi  r31, 0x1
    bne-    branch_0x800972a8
    bl      gotHipDropDamage__11TBossPakkunFv
    b       branch_0x800972ac

branch_0x800972a8:
    cmplwi  r31, 0x0
branch_0x800972ac:
    li      r3, 0x1
branch_0x800972b0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl perform__10TBPHeadHitFUlPQ26JDrama9TGraphics
perform__10TBPHeadHitFUlPQ26JDrama9TGraphics: # 0x800972cc
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x80097354
    lwz     r3, 0x68(r27)
    lbz     r0, 0x16c(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80097354
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80097348

branch_0x8009730c:
    lwz     r3, 0x44(r27)
    lwzx    r4, r3, r31
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8009732c
    li      r0, 0x1
    b       branch_0x80097330

branch_0x8009732c:
    li      r0, 0x0
branch_0x80097330:
    clrlwi. r0, r0, 24
    beq-    branch_0x80097340
    mr      r3, r27
    bl      throwActor__10TBPHeadHitFP9THitActor
branch_0x80097340:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80097348:
    lhz     r0, 0x48(r27)
    cmpw    r30, r0
    blt+    branch_0x8009730c
branch_0x80097354:
    rlwinm. r0, r28, 0, 30, 30
    beq-    branch_0x8009736c
    lwz     r3, 0x68(r27)
    addi    r5, r27, 0x10
    li      r4, 0x1
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x8009736c:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl throwActor__10TBPHeadHitFP9THitActor
throwActor__10TBPHeadHitFP9THitActor: # 0x80097390
    mflr    r0
    lis     r5, up_3221@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r5, up_3221@l
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    mr      r29, r4
    stw     r28, 0x50(sp)
    addi    r28, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800975c0
    lwz     r3, 0x68(r28)
    li      r4, 0xf
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800975c0
    lbz     r0, R13Off_m0x6d1f(r13)
    extsb.  r0, r0
    bne-    branch_0x8009740c
    lfs     f1, -0x672c(r2)
    li      r0, 0x1
    stfs    f1, 0xc(r31)
    lfs     f0, -0x6740(r2)
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stb     r0, R13Off_m0x6d1f(r13)
branch_0x8009740c:
    lwz     r4, 0x68(r28)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0x48(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x10(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x14(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x18(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x40(sp)
    lfs     f3, 0x48(sp)
    lfs     f0, 0x44(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x6680(r2)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800974a0
    lfs     f0, -0x672c(r2)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    lfs     f0, -0x6740(r2)
    stfs    f0, 0x48(sp)
    b       branch_0x800974ac

branch_0x800974a0:
    addi    r3, sp, 0x40
    addi    r4, r3, 0x0
    bl      PSVECNormalize
branch_0x800974ac:
    lfs     f6, 0x44(sp)
    addi    r29, r31, 0x14
    lfs     f3, 0x14(r31)
    addi    r30, r31, 0x10
    lfs     f5, 0x10(r31)
    fmuls   f0, f3, f6
    lfs     f2, 0x48(sp)
    lfs     f4, 0x40(sp)
    fmsubs  f1, f5, f2, f0
    fmuls   f0, f5, f4
    stfs    f1, 0x34(sp)
    lfs     f5, 0xc(r31)
    fmuls   f1, f5, f2
    fmsubs  f0, f5, f6, f0
    fmsubs  f1, f3, f4, f1
    stfs    f1, 0x38(sp)
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x38(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x3c(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x6680(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80097538
    lfs     f1, -0x6740(r2)
    lfs     f0, -0x672c(r2)
    stfs    f1, 0x34(sp)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    b       branch_0x80097544

branch_0x80097538:
    addi    r3, sp, 0x34
    addi    r4, r3, 0x0
    bl      PSVECNormalize
branch_0x80097544:
    lfs     f0, 0x34(sp)
    mr      r3, r28
    lfs     f1, -0x667c(r2)
    li      r4, 0xe
    fmuls   f0, f0, f1
    stfs    f0, 0x34(sp)
    lfs     f0, 0x38(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(sp)
    lfs     f0, 0x3c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0xc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x0(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, r28, 0x0
    li      r4, 0x7
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, sp, 0x34
    lfs     f1, -0x6728(r2)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
branch_0x800975c0:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl receiveMessage__10TBPHeadHitFP9THitActorUl
receiveMessage__10TBPHeadHitFP9THitActorUl: # 0x800975e0
    mflr    r0
    lis     r6, up_3221@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stmw    r27, 0xf4(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r31, r6, up_3221@l
    lbz     r0, R13Off_m0x6c6c(r13)
    extsb.  r0, r0
    bne-    branch_0x80097648
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveBPSleep@h
    stw     r0, R13Off_m0x6c68(r13)
    addi    r0, r3, __vvt__13TNerveBPSleep@l
    lis     r3, __dt__13TNerveBPSleepFv@h
    stw     r0, R13Off_m0x6c68(r13)
    addi    r4, r3, __dt__13TNerveBPSleepFv@l
    addi    r3, r13, R13Off_m0x6c68
    addi    r5, r31, 0x15c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c6c(r13)
branch_0x80097648:
    lwz     r3, 0x68(r27)
    lwz     r3, 0x8c(r3)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    addi    r0, r13, R13Off_m0x6c68
    cmplw   r3, r0
    bne-    branch_0x80097680
    lwz     r3, 0x68(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x80097b90

branch_0x80097680:
    lwz     r30, 0x68(r27)
    lbz     r4, 0x16c(r30)
    extsb   r4, r4
    cmpwi   r4, 0x3
    bne-    branch_0x80097758
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0xd
    beq-    branch_0x800976b0
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x80097758
branch_0x800976b0:
    li      r0, 0x0
    stb     r0, 0x16c(r30)
    lwz     r3, 0x8c(r30)
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x6c74(r13)
    extsb.  r0, r0
    bne-    branch_0x800976fc
    addi    r3, r13, R13Off_m0x6c70
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__12TNerveBPFall@h
    addi    r0, r3, __vvt__12TNerveBPFall@l
    lis     r3, __dt__12TNerveBPFallFv@h
    stw     r0, R13Off_m0x6c70(r13)
    addi    r4, r3, __dt__12TNerveBPFallFv@l
    addi    r3, r13, R13Off_m0x6c70
    addi    r5, r31, 0x150
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c74(r13)
branch_0x800976fc:
    lwz     r5, 0x8c(r30)
    addi    r3, r13, R13Off_m0x6c70
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80097714
    stw     r0, 0x1c(r5)
branch_0x80097714:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    li      r4, 0x2817
    stw     r3, 0x14(r5)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80097750
    addi    r4, r30, 0x10
    li      r3, 0x2817
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80097750:
    li      r3, 0x1
    b       branch_0x80097b90

branch_0x80097758:
    cmpwi   r4, 0x2
    beq-    branch_0x80097820
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80097784
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80097784
    li      r0, 0x1
    b       branch_0x80097788

branch_0x80097784:
    li      r0, 0x0
branch_0x80097788:
    clrlwi. r0, r0, 24
    beq-    branch_0x80097800
    lbz     r0, R13Off_m0x6c9c(r13)
    extsb.  r0, r0
    bne-    branch_0x800977d0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__11TNerveBPFly@h
    stw     r0, R13Off_m0x6c98(r13)
    addi    r0, r3, __vvt__11TNerveBPFly@l
    lis     r3, __dt__11TNerveBPFlyFv@h
    stw     r0, R13Off_m0x6c98(r13)
    addi    r4, r3, __dt__11TNerveBPFlyFv@l
    addi    r3, r13, R13Off_m0x6c98
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c9c(r13)
branch_0x800977d0:
    lwz     r4, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6c98
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800977e8
    b       branch_0x800977ec

branch_0x800977e8:
    lwz     r3, 0x1c(r4)
branch_0x800977ec:
    cmplw   r3, r0
    bne-    branch_0x80097800
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      showMessage__11TBossPakkunFUl
branch_0x80097800:
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x80097818
    li      r3, 0x1
    b       branch_0x80097b90

branch_0x80097818:
    li      r3, 0x0
    b       branch_0x80097b90

branch_0x80097820:
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x80097b8c
    cmplwi  r29, 0xf
    bne-    branch_0x80097b8c
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xe4(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x10(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, 0xe0(sp)
    lfs     f0, 0x14(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0xe0(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0x18(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0xe4(sp)
    lfs     f1, -0x672c(r2)
    lfs     f31, 0xe4(sp)
    fcmpu   cr0, f1, f31
    bne-    branch_0x800978b4
    lfs     f0, 0xdc(sp)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x800978ac
    lfs     f2, -0x6700(r2)
    b       branch_0x80097934

branch_0x800978ac:
    lfs     f2, -0x66fc(r2)
    b       branch_0x80097934

branch_0x800978b4:
    fcmpo   cr0, f31, f1
    cror    2, 1, 2
    bne-    branch_0x800978f8
    lfs     f2, 0xdc(sp)
    fmr     f1, f31
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6738(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x66f8(r2)
    stw     r0, 0xec(sp)
    lis     r0, 0x4330
    stw     r0, 0xe8(sp)
    lfd     f1, 0xe8(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x80097934

branch_0x800978f8:
    fneg    f1, f31
    lfs     f2, 0xdc(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6738(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x66f8(r2)
    stw     r0, 0xec(sp)
    lis     r0, 0x4330
    lfs     f0, -0x66f4(r2)
    stw     r0, 0xe8(sp)
    lfd     f2, 0xe8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x80097934:
    lfs     f0, -0x66a4(r2)
    b       branch_0x80097940

branch_0x8009793c:
    fsubs   f2, f2, f0
branch_0x80097940:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x8009793c
    lfs     f0, -0x66a4(r2)
    lfs     f1, -0x672c(r2)
    b       branch_0x8009795c

branch_0x80097958:
    fadds   f2, f2, f0
branch_0x8009795c:
    fcmpo   cr0, f2, f1
    blt+    branch_0x80097958
    fcmpu   cr0, f1, f31
    bne-    branch_0x8009798c
    lfs     f0, 0xdc(sp)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x80097984
    lfs     f31, -0x6700(r2)
    b       branch_0x80097a0c

branch_0x80097984:
    lfs     f31, -0x66fc(r2)
    b       branch_0x80097a0c

branch_0x8009798c:
    fcmpo   cr0, f31, f1
    cror    2, 1, 2
    bne-    branch_0x800979d0
    lfs     f2, 0xdc(sp)
    fmr     f1, f31
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6738(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x66f8(r2)
    stw     r0, 0xec(sp)
    lis     r0, 0x4330
    stw     r0, 0xe8(sp)
    lfd     f1, 0xe8(sp)
    fsubs   f1, f1, f2
    fmuls   f31, f0, f1
    b       branch_0x80097a0c

branch_0x800979d0:
    fneg    f1, f31
    lfs     f2, 0xdc(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6738(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x66f8(r2)
    stw     r0, 0xec(sp)
    lis     r0, 0x4330
    lfs     f0, -0x66f4(r2)
    stw     r0, 0xe8(sp)
    lfd     f2, 0xe8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f31, f0, f1
branch_0x80097a0c:
    lfs     f0, -0x66f4(r2)
    lwz     r3, 0x68(r27)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    lfs     f1, 0x34(r3)
    bl      MsWrap_f___Ffff_80094444
    lwz     r3, 0x68(r27)
    fsubs   f31, f31, f1
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x194(r3)
    fabs    f1, f31
    lfs     f0, -0x66e8(r2)
    fmuls   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80097b84
    lwz     r30, 0x68(r27)
    lbz     r0, 0x17c(r30)
    extsb.  r0, r0
    bne-    branch_0x80097b84
    lwz     r4, 0x170(r30)
    addi    r3, r30, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x170(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x178(r30)
    lwz     r0, 0xcc(r3)
    cmpw    r4, r0
    bge-    branch_0x80097a9c
    addi    r0, r4, 0x1
    stw     r0, 0x178(r30)
branch_0x80097a9c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x220(r3)
    stw     r0, 0x174(r30)
    lbz     r0, R13Off_m0x6cf4(r13)
    extsb.  r0, r0
    bne-    branch_0x80097af8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveBPSwallow@h
    stw     r0, R13Off_m0x6cf0(r13)
    addi    r0, r3, __vvt__15TNerveBPSwallow@l
    lis     r3, __dt__15TNerveBPSwallowFv@h
    stw     r0, R13Off_m0x6cf0(r13)
    addi    r4, r3, __dt__15TNerveBPSwallowFv@l
    addi    r3, r13, R13Off_m0x6cf0
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cf4(r13)
branch_0x80097af8:
    lwz     r4, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6cf0
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80097b10
    b       branch_0x80097b14

branch_0x80097b10:
    lwz     r3, 0x1c(r4)
branch_0x80097b14:
    cmplw   r3, r0
    beq-    branch_0x80097b84
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, R13Off_m0x6cf4(r13)
    extsb.  r0, r0
    bne-    branch_0x80097b60
    addi    r3, r13, R13Off_m0x6cf0
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__15TNerveBPSwallow@h
    addi    r0, r3, __vvt__15TNerveBPSwallow@l
    lis     r3, __dt__15TNerveBPSwallowFv@h
    stw     r0, R13Off_m0x6cf0(r13)
    addi    r4, r3, __dt__15TNerveBPSwallowFv@l
    addi    r3, r13, R13Off_m0x6cf0
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6cf4(r13)
branch_0x80097b60:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x6cf0
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80097b78
    stw     r0, 0x1c(r4)
branch_0x80097b78:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x80097b84:
    li      r3, 0x1
    b       branch_0x80097b90

branch_0x80097b8c:
    li      r3, 0x1
branch_0x80097b90:
    lmw     r27, 0xf4(sp)
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    addi    sp, sp, 0x110
    mtlr    r0
    blr


.globl perform__10TBPTornadoFUlPQ26JDrama9TGraphics
perform__10TBPTornadoFUlPQ26JDrama9TGraphics: # 0x80097ba8
    mflr    r0
    lis     r6, up_3221@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stfd    f30, 0x130(sp)
    stmw    r25, 0x114(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r31, r6, up_3221@l
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r3, 0x68(r27)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800982b8
    lwz     r4, 0x98(r27)
    cmpwi   r4, 0x0
    beq-    branch_0x800982b8
    clrlwi. r0, r28, 31
    beq-    branch_0x80098070
    cmpwi   r4, 0x2
    bne-    branch_0x80097c58
    lfs     f1, 0x10(r27)
    li      r4, 0x5
    lfs     f0, 0x88(r27)
    li      r5, 0x0
    fadds   f0, f1, f0
    stfs    f0, 0x10(r27)
    lfs     f1, 0x14(r27)
    lfs     f0, 0x8c(r27)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r27)
    lfs     f1, 0x18(r27)
    lfs     f0, 0x90(r27)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r27)
    lwz     r3, 0x6c(r27)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80098070
    li      r0, 0x0
    stw     r0, 0x98(r27)
    b       branch_0x800982b8

branch_0x80097c58:
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x94(r27)
    lfs     f0, 0x1f8(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r27)
    lwz     r3, 0x68(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x94(r27)
    lfs     f0, 0x20c(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80097cd4
    lwz     r3, 0x64(r27)
    li      r0, 0x2
    li      r4, 0x5
    ori     r3, r3, 0x1
    stw     r3, 0x64(r27)
    stw     r0, 0x98(r27)
    lwz     r3, 0x6c(r27)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x672c(r2)
    mr      r25, r3
    stfs    f0, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r25)
    b       branch_0x800982b8

branch_0x80097cd4:
    fctiwz  f0, f1
    lis     r4, unk_b60b60b7@h
    lwz     r3, 0x68(r27)
    addi    r4, r4, unk_b60b60b7@l
    lis     r0, 0x4330
    stfd    f0, 0x108(sp)
    lwz     r12, 0x0(r3)
    lwz     r6, 0x10c(sp)
    lwz     r12, 0x108(r12)
    mulhw   r4, r4, r6
    lfd     f1, -0x6738(r2)
    lfs     f2, -0x66a4(r2)
    mtlr    r12
    add     r4, r4, r6
    srawi   r4, r4, 8
    srwi    r5, r4, 31
    add     r4, r4, r5
    mulli   r4, r4, 0x168
    subf    r4, r4, r6
    xoris   r4, r4, 0x8000
    stw     r4, 0x104(sp)
    stw     r0, 0x100(sp)
    lfd     f0, 0x100(sp)
    fsubs   f0, f0, f1
    fsubs   f31, f2, f0
    blrl
    lfs     f0, 0x1d0(r3)
    addi    r3, sp, 0xe8
    lfs     f1, 0x94(r27)
    lwz     r4, 0x70(r27)
    lwz     r0, 0x74(r27)
    fmuls   f30, f1, f0
    stw     r4, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0x78(r27)
    stw     r0, 0xf0(sp)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x7c(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x80(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x84(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0xf0(sp)
    bl      PSVECMag
    lfs     f0, -0x6728(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80097ddc
    lwz     r3, 0x64(r27)
    li      r0, 0x2
    li      r4, 0x5
    ori     r3, r3, 0x1
    stw     r3, 0x64(r27)
    stw     r0, 0x98(r27)
    lwz     r3, 0x6c(r27)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x672c(r2)
    mr      r25, r3
    stfs    f0, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r25)
    b       branch_0x800982b8

branch_0x80097ddc:
    addi    r3, sp, 0xe8
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lwz     r3, 0x68(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1bc(r3)
    addi    r30, sp, 0xe4
    lfs     f0, 0xe8(sp)
    addi    r4, sp, 0xd8
    fmuls   f0, f0, f1
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xec(sp)
    lfs     f0, 0xf0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xf0(sp)
    lfs     f1, 0x7c(r27)
    lfs     f0, 0xe8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x7c(r27)
    lfs     f1, 0x80(r27)
    lfs     f0, 0xec(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x80(r27)
    lfs     f1, 0x84(r27)
    lfs     f0, 0xf0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x84(r27)
    lfs     f0, -0x6704(r2)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f1, f0, f31
    lwz     r3, R13Off_m0x5ea4(r13)
    lfs     f0, 0x7c(r27)
    lwz     r6, R13Off_m0x5ea8(r13)
    fctiwz  f1, f1
    lfs     f2, 0x84(r27)
    lfs     f4, 0x80(r27)
    stfd    f1, 0x100(sp)
    lwz     r5, 0x104(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    lfsx    f3, r6, r0
    fmadds  f0, f30, f1, f0
    fmadds  f1, f30, f3, f2
    stfs    f0, 0xdc(sp)
    stfs    f4, 0xe0(sp)
    stfs    f1, 0xe4(sp)
    lfs     f1, -0x66b4(r2)
    lfs     f0, 0xe0(sp)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0xdc(sp)
    lfs     f3, 0xe4(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0xd8(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80097ee4
    li      r0, 0x1
    b       branch_0x80097ee8

branch_0x80097ee4:
    li      r0, 0x0
branch_0x80097ee8:
    clrlwi. r0, r0, 24
    bne-    branch_0x80097ef4
    stfs    f1, 0xe0(sp)
branch_0x80097ef4:
    lwz     r3, R13Off_m0x6328(r13)
    mr      r5, r30
    lfs     f1, 0xe0(sp)
    addi    r4, sp, 0xdc
    lfs     f2, -0x66bc(r2)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    clrlwi. r0, r3, 24
    beq-    branch_0x80097f48
    lwz     r3, 0x64(r27)
    li      r0, 0x2
    li      r4, 0x5
    ori     r3, r3, 0x1
    stw     r3, 0x64(r27)
    stw     r0, 0x98(r27)
    lwz     r3, 0x6c(r27)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x672c(r2)
    mr      r25, r3
    stfs    f0, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r25)
branch_0x80097f48:
    lwz     r3, 0xdc(sp)
    li      r30, 0x0
    lwz     r0, 0xe0(sp)
    li      r26, 0x0
    stw     r3, 0x88(r27)
    stw     r0, 0x8c(r27)
    lwz     r0, 0xe4(sp)
    stw     r0, 0x90(r27)
    lfs     f1, 0x88(r27)
    lfs     f0, 0x10(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x88(r27)
    lfs     f1, 0x8c(r27)
    lfs     f0, 0x14(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x8c(r27)
    lfs     f1, 0x90(r27)
    lfs     f0, 0x18(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x90(r27)
    lwz     r3, 0xdc(sp)
    lwz     r0, 0xe0(sp)
    stw     r3, 0x10(r27)
    stw     r0, 0x14(r27)
    lwz     r0, 0xe4(sp)
    stw     r0, 0x18(r27)
    lfs     f31, -0x672c(r2)
    lfs     f30, -0x6740(r2)
    b       branch_0x80098064

branch_0x80097fbc:
    lwz     r3, 0x44(r27)
    lwzx    r3, r3, r26
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80097fdc
    li      r0, 0x1
    b       branch_0x80097fe0

branch_0x80097fdc:
    li      r0, 0x0
branch_0x80097fe0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009805c
    lbz     r0, R13Off_m0x6d20(r13)
    extsb.  r0, r0
    bne-    branch_0x80098008
    stfs    f31, 0x0(r31)
    li      r0, 0x1
    stfs    f30, 0x4(r31)
    stfs    f31, 0x8(r31)
    stb     r0, R13Off_m0x6d20(r13)
branch_0x80098008:
    addi    r3, r27, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, r27, 0x0
    li      r4, 0x7
    bl      SMS_SendMessageToMario__FP9THitActorUl
    mr      r3, r31
    lfs     f1, -0x6728(r2)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x64(r27)
    li      r0, 0x2
    li      r4, 0x5
    ori     r3, r3, 0x1
    stw     r3, 0x64(r27)
    stw     r0, 0x98(r27)
    lwz     r3, 0x6c(r27)
    bl      getFrameCtrl__6MActorFi
    mr      r25, r3
    stfs    f31, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r25)
branch_0x8009805c:
    addi    r30, r30, 0x1
    addi    r26, r26, 0x4
branch_0x80098064:
    lhz     r0, 0x48(r27)
    cmpw    r30, r0
    blt+    branch_0x80097fbc
branch_0x80098070:
    rlwinm. r30, r28, 0, 30, 30
    beq-    branch_0x800980bc
    lwz     r3, 0x6c(r27)
    lwz     r25, 0x4(r3)
    addi    r26, r25, 0x20
    addi    r3, r26, 0x0
    bl      PSMTXIdentity
    lfs     f0, 0x10(r27)
    stfs    f0, 0xc(r26)
    lfs     f0, 0x14(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x18(r27)
    stfs    f0, 0x2c(r26)
    lwz     r3, 0x24(r27)
    lwz     r0, 0x28(r27)
    stw     r3, 0x14(r25)
    stw     r0, 0x18(r25)
    lwz     r0, 0x2c(r27)
    stw     r0, 0x1c(r25)
branch_0x800980bc:
    cmplwi  r30, 0x0
    beq-    branch_0x800981c0
    lwz     r5, 0x6c(r27)
    mr      r7, r27
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x162
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    addi    r25, r5, 0x20
    addi    r5, r25, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80098120
    lfs     f0, 0x24(r27)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r27)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r27)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r27)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r27)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r27)
    stfs    f0, 0x17c(r3)
branch_0x80098120:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r25, 0x0
    addi    r7, r27, 0x1
    li      r4, 0x163
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80098170
    lfs     f0, 0x24(r27)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r27)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r27)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r27)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r27)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r27)
    stfs    f0, 0x17c(r3)
branch_0x80098170:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r25, 0x0
    addi    r7, r27, 0x2
    li      r4, 0x164
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800981c0
    lfs     f0, 0x24(r27)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r27)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r27)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r27)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r27)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r27)
    stfs    f0, 0x17c(r3)
branch_0x800981c0:
    cmplwi  r30, 0x0
    beq-    branch_0x800982a8
    lwz     r3, 0x10(r27)
    lwz     r0, 0x14(r27)
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r3, 0xc0(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0x18(r27)
    stw     r0, 0xc8(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xc8(sp)
    lfs     f1, 0xc0(sp)
    lfs     f3, 0xc8(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x672c(r2)
    fadds   f1, f2, f1
    fadds   f30, f3, f1
    fcmpo   cr0, f30, f0
    cror    2, 0, 2
    bne-    branch_0x80098248
    b       branch_0x8009826c

branch_0x80098248:
    frsqrte f3, f30
    lfs     f2, -0x66e8(r2)
    lfs     f0, -0x66d0(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f30, f1, f0
    fmuls   f0, f2, f0
    fmuls   f30, f30, f0
branch_0x8009826c:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x210c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800982a8
    fmr     f1, f30
    addi    r4, r27, 0x10
    li      r3, 0x210c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800982a8:
    lwz     r3, 0x6c(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x800982b8:
    lmw     r25, 0x114(sp)
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lfd     f30, 0x130(sp)
    mtlr    r0
    addi    sp, sp, 0x140
    blr


.globl __ct__10TBPTornadoFP11TBossPakkunPCc
__ct__10TBPTornadoFP11TBossPakkunPCc: # 0x800982d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r4
    mr      r4, r5
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__10TBPTornado@h
    lwz     r31, 0x8(sp)
    addi    r3, r3, __vvt__10TBPTornado@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, unk_8037bef0@ha
    stw     r0, 0x20(r31)
    li      r0, 0x0
    addi    r4, r3, unk_8037bef0@l
    stw     r30, 0x68(r31)
    li      r5, 0x0
    lfs     f0, -0x672c(r2)
    stfs    f0, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r3, 0x68(r31)
    lwz     r3, 0x78(r3)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x6c(r31)
    lis     r4, unk_08000010@h
    addi    r3, r31, 0x0
    lfs     f2, -0x6674(r2)
    addi    r4, r4, unk_08000010@l
    lfs     f1, -0x6678(r2)
    li      r5, 0x5
    fmr     f4, f2
    lfs     f3, -0x6728(r2)
    lis     r6, 0x8100
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    li      r4, 0x2
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x6c(r31)
    bl      setBtkFromIndex__6MActorFi
    lwz     r3, 0x6c(r31)
    li      r4, 0x1d
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x6c(r31)
    li      r4, 0x1
    bl      setBrkFromIndex__6MActorFi
    lfs     f0, -0x667c(r2)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl perform__8TBPVomitFUlPQ26JDrama9TGraphics
perform__8TBPVomitFUlPQ26JDrama9TGraphics: # 0x800983c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    li      r4, 0x0
    stw     r28, 0x20(sp)
    mr      r28, r3
    lwz     r3, 0x14(r3)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    blt-    branch_0x80098478
    rlwinm. r31, r29, 0, 30, 30
    beq-    branch_0x80098440
    lwz     r3, 0x14(r28)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80098440
    lwz     r3, 0x14(r28)
    li      r4, -0x1
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x18(r28)
    li      r4, -0x1
    bl      setBckFromIndex__6MActorFi
    b       branch_0x80098478

branch_0x80098440:
    cmplwi  r31, 0x0
    beq-    branch_0x80098450
    lwz     r3, 0x18(r28)
    bl      calcAnm__6MActorFv
branch_0x80098450:
    rlwinm. r0, r29, 0, 22, 22
    beq-    branch_0x80098468
    lwz     r4, 0x18(r28)
    lwz     r3, R13Off_m0x62f0(r13)
    lwz     r4, 0x4(r4)
    bl      stampModel__17TPollutionManagerFP8J3DModel
branch_0x80098468:
    lwz     r3, 0x14(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80098478:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl perform__10TBPPolDropFUlPQ26JDrama9TGraphics
perform__10TBPPolDropFUlPQ26JDrama9TGraphics: # 0x80098498
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stmw    r27, 0xa4(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    lwz     r0, 0x80(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x800986f8
    clrlwi. r27, r29, 31
    beq-    branch_0x800984dc
    mr      r3, r28
    bl      move__10TBPPolDropFv
    lwz     r3, 0x84(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x84(r28)
branch_0x800984dc:
    cmplwi  r27, 0x0
    beq-    branch_0x80098578
    li      r27, 0x0
    li      r31, 0x0
    b       branch_0x8009856c

branch_0x800984f0:
    lwz     r3, 0x44(r28)
    lwzx    r3, r3, r31
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80098510
    li      r0, 0x1
    b       branch_0x80098514

branch_0x80098510:
    li      r0, 0x0
branch_0x80098514:
    clrlwi. r0, r0, 24
    beq-    branch_0x80098564
    lwz     r12, 0x0(r3)
    addi    r4, r28, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x68(r28)
    addi    r5, r28, 0x10
    li      r4, 0x2
    bl      rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8009855c
    li      r0, 0x2
    stw     r0, 0x80(r28)
    b       branch_0x80098564

branch_0x8009855c:
    li      r0, 0x0
    stw     r0, 0x80(r28)
branch_0x80098564:
    addi    r27, r27, 0x1
    addi    r31, r31, 0x4
branch_0x8009856c:
    lhz     r0, 0x48(r28)
    cmpw    r27, r0
    blt+    branch_0x800984f0
branch_0x80098578:
    rlwinm. r31, r29, 0, 30, 30
    beq-    branch_0x80098630
    lwz     r3, 0x78(r28)
    lwz     r3, 0x4(r3)
    addi    r27, r3, 0x20
    addi    r3, r27, 0x0
    bl      PSMTXIdentity
    lfs     f0, 0x10(r28)
    stfs    f0, 0xc(r27)
    lfs     f0, 0x14(r28)
    stfs    f0, 0x1c(r27)
    lfs     f0, 0x18(r28)
    stfs    f0, 0x2c(r27)
    lwz     r4, 0x78(r28)
    lwz     r3, 0x24(r28)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x28(r28)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r28)
    stw     r0, 0x1c(r4)
    lwz     r0, 0x80(r28)
    cmpwi   r0, 0x2
    bne-    branch_0x80098630
    lwz     r3, 0x68(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xf4(r3)
    mr      r3, r27
    stfs    f0, 0x90(sp)
    stfs    f0, 0x94(sp)
    stfs    f0, 0x98(sp)
    lwz     r5, 0x7c(r28)
    lwz     r4, 0x90(sp)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x94(sp)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r0, 0x98(sp)
    stw     r0, 0x1c(r5)
    lwz     r4, 0x7c(r28)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x80098630:
    lwz     r0, 0x80(r28)
    cmpwi   r0, 0x1
    bne-    branch_0x800986c4
    lwz     r3, 0x78(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    rlwinm. r0, r29, 0, 29, 29
    beq-    branch_0x800986c4
    lfs     f1, -0x672c(r2)
    li      r6, 0x0
    li      r0, 0x1
    stfs    f1, 0x78(sp)
    addi    r4, sp, 0x6c
    li      r5, 0x0
    stfs    f1, 0x7c(sp)
    stfs    f1, 0x80(sp)
    stfs    f1, 0x84(sp)
    stb     r6, 0x88(sp)
    stb     r0, 0x89(sp)
    lfs     f0, -0x66a8(r2)
    stw     r6, 0x8c(sp)
    stfs    f1, 0x6c(sp)
    stfs    f1, 0x70(sp)
    stfs    f1, 0x74(sp)
    lwz     r3, 0x10(r28)
    lwz     r0, 0x14(r28)
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x18(r28)
    stw     r0, 0x74(sp)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x78(sp)
    stfs    f1, 0x80(sp)
    stb     r6, 0x88(sp)
    lwz     r3, R13Off_m0x6100(r13)
    bl      request__19TMBindShadowManagerFRC20TCircleShadowRequestUl
branch_0x800986c4:
    lwz     r0, 0x80(r28)
    cmpwi   r0, 0x2
    bne-    branch_0x800986f8
    cmplwi  r31, 0x0
    beq-    branch_0x800986e0
    lwz     r3, 0x7c(r28)
    bl      calcAnm__6MActorFv
branch_0x800986e0:
    rlwinm. r0, r29, 0, 22, 22
    beq-    branch_0x800986f8
    lwz     r4, 0x7c(r28)
    lwz     r3, R13Off_m0x62f0(r13)
    lwz     r4, 0x4(r4)
    bl      stampModel__17TPollutionManagerFP8J3DModel
branch_0x800986f8:
    lmw     r27, 0xa4(sp)
    lwz     r0, 0xbc(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl move__10TBPPolDropFv
move__10TBPPolDropFv: # 0x8009870c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    lwz     r0, 0x80(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80098744
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    b       branch_0x800989fc

branch_0x80098744:
    lwz     r3, 0x10(r30)
    addi    r31, sp, 0x5c
    lwz     r0, 0x14(r30)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x6c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x70(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x74(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lwz     r0, 0x80(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x800989bc
    lwz     r3, 0x78(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800987c4
    lis     r4, unk_8037c204@ha
    lwz     r3, 0x78(r30)
    addi    r4, r4, unk_8037c204@l
    bl      setBck__6MActorFPCc
branch_0x800987c4:
    lfs     f1, 0x70(r30)
    lfs     f0, -0x66d4(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(r30)
    lwz     r0, 0x84(r30)
    cmpwi   r0, 0x3c
    bge-    branch_0x80098810
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80098804
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80098804
    li      r0, 0x1
    b       branch_0x80098808

branch_0x80098804:
    li      r0, 0x0
branch_0x80098808:
    clrlwi. r0, r0, 24
    beq-    branch_0x800989e4
branch_0x80098810:
    lwz     r3, R13Off_m0x6328(r13)
    addi    r4, sp, 0x50
    lfs     f1, 0x54(sp)
    lfs     f2, 0x14(r30)
    lfs     f3, 0x5c(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x50(sp)
    lfs     f0, -0x6740(r2)
    lhz     r0, 0x4(r3)
    fadds   f31, f1, f0
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80098848
    li      r0, 0x1
    b       branch_0x8009884c

branch_0x80098848:
    li      r0, 0x0
branch_0x8009884c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80098858
    lfs     f31, 0x88(r30)
branch_0x80098858:
    stfs    f31, 0x88(r30)
    lfs     f0, 0x58(sp)
    fcmpo   cr0, f0, f31
    bge-    branch_0x800988fc
    li      r0, 0x2
    stw     r0, 0x80(r30)
    lis     r3, unk_8037c300@ha
    addi    r4, r3, unk_8037c300@l
    lfs     f0, -0x672c(r2)
    stfs    f0, 0x74(r30)
    stfs    f0, 0x70(r30)
    stfs    f0, 0x6c(r30)
    lwz     r3, 0x7c(r30)
    bl      setBck__6MActorFPCc
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0x52
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2841
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800988d8
    addi    r4, r30, 0x10
    li      r3, 0x2841
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800988d8:
    lwz     r3, 0x68(r30)
    addi    r5, r30, 0x10
    li      r4, 0x2
    bl      rumblePad__11TBossPakkunFiRCQ29JGeometry8TVec3_f_
    stfs    f31, 0x58(sp)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    b       branch_0x800989fc

branch_0x800988fc:
    lwz     r0, 0x64(r30)
    addi    r5, r31, 0x0
    addi    r4, sp, 0x54
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x58(sp)
    lfs     f2, -0x66bc(r2)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    clrlwi. r0, r3, 24
    beq-    branch_0x80098930
    li      r0, 0x0
    stw     r0, 0x80(r30)
branch_0x80098930:
    lfs     f0, 0x70(r30)
    li      r4, 0x2052
    lwz     r3, R13Off_m0x6044(r13)
    fneg    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80098974
    fmr     f1, f31
    addi    r4, r30, 0x10
    li      r3, 0x2052
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80098974:
    lfs     f0, 0x70(r30)
    li      r4, 0x2045
    lwz     r3, R13Off_m0x6044(r13)
    fneg    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800989e4
    fmr     f1, f31
    addi    r4, r30, 0x10
    li      r3, 0x2045
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x800989e4

branch_0x800989bc:
    cmpwi   r0, 0x2
    bne-    branch_0x800989e4
    lwz     r3, 0x7c(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800989e4
    li      r0, 0x0
    stw     r0, 0x80(r30)
branch_0x800989e4:
    lwz     r3, 0x54(sp)
    lwz     r0, 0x58(sp)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x5c(sp)
    stw     r0, 0x18(r30)
branch_0x800989fc:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl __ct__10TBPPolDropFP11TBossPakkunPCc
__ct__10TBPPolDropFP11TBossPakkunPCc: # 0x80098a18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    mr      r29, r4
    mr      r4, r5
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__10TBPPolDrop@h
    lwz     r30, 0x8(sp)
    addi    r3, r3, __vvt__10TBPPolDrop@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r4, unk_0800000f@h
    stw     r0, 0x20(r30)
    li      r0, 0x0
    addi    r3, r30, 0x0
    stw     r29, 0x68(r30)
    addi    r4, r4, unk_0800000f@l
    li      r5, 0x1
    stw     r0, 0x78(r30)
    lis     r6, 0x8000
    stw     r0, 0x7c(r30)
    stw     r0, 0x80(r30)
    stw     r0, 0x84(r30)
    lfs     f1, -0x672c(r2)
    stfs    f1, 0x88(r30)
    fmr     f2, f1
    stfs    f1, 0x74(r30)
    stfs    f1, 0x70(r30)
    stfs    f1, 0x6c(r30)
    lfs     f3, -0x6728(r2)
    lfs     f4, -0x66b4(r2)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    lis     r3, unk_8037c230@ha
    addi    r31, r3, unk_8037c230@l
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    mr      r3, r31
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x40
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x40(sp)
    addi    r3, sp, 0x5c
    addi    r4, sp, 0x3c
    stw     r0, 0x3c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x5c(sp)
    addi    r5, sp, 0x4c
    addi    r4, r31, 0x0
    stw     r0, 0x58(sp)
    addi    r3, sp, 0x48
    addi    r6, sp, 0x8
    lwz     r0, 0x58(sp)
    stw     r0, 0x4c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x7c(sp)
    mr      r3, r30
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl __ct__17TBossPakkunParamsFPCc
__ct__17TBossPakkunParamsFPCc: # 0x80098b54
    mflr    r0
    lis     r5, unk_8037b998@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, unk_8037b998@l
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x97c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x97c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r27, r3, __vvt__10TParamT_l_@l
    stw     r27, 0xa8(r31)
    li      r0, 0x190
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0xb8(r31)
    addi    r26, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x990
    stw     r26, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x990
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xbc(r31)
    li      r0, 0x258
    addi    r3, r30, 0x9a4
    stw     r0, 0xcc(r31)
    stw     r26, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x9a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0xd0(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6674(r2)
    addi    r3, r30, 0x9b4
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x9b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x9cc
    lfs     f0, -0x6740(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x9cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xf8(r31)
    li      r0, 0x960
    addi    r3, r30, 0x9dc
    stw     r0, 0x108(r31)
    stw     r26, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x9dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x10c(r31)
    li      r0, 0x3c
    addi    r3, r30, 0x9f0
    stw     r0, 0x11c(r31)
    stw     r26, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x9f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x9fc
    lfs     f0, -0x6730(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x9fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0xa0c
    lfs     f0, -0x66c0(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0xa0c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0xa20
    lfs     f0, -0x6670(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0xa20
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0xa30
    lfs     f0, -0x666c(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0xa30
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0xa44
    lfs     f0, -0x6668(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0xa44
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0xa54
    lfs     f0, -0x66f4(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0xa64
    lfs     f0, -0x66c4(r2)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0xa64
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0xa74
    lfs     f0, -0x667c(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0xa74
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0xa88
    lfs     f0, -0x6664(r2)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0xa88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0xa9c
    lfs     f0, -0x66ec(r2)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0xa9c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0xab0
    lfs     f0, -0x6740(r2)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0xab0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0xac4
    lfs     f0, -0x6660(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0xac4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x210(r31)
    li      r0, 0x14
    addi    r3, r30, 0xad8
    stw     r0, 0x220(r31)
    stw     r26, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0xad8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x224(r31)
    li      r0, 0x4b0
    addi    r3, r30, 0xae8
    stw     r0, 0x234(r31)
    stw     r26, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0xae8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x238(r31)
    addi    r3, r30, 0xafc
    lfs     f0, -0x66ec(r2)
    stfs    f0, 0x248(r31)
    stw     r28, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0xafc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0xb10
    lfs     f0, -0x665c(r2)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0xb10
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    mr      r3, r31
    lfs     f0, -0x66c8(r2)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__18TBossPakkunManagerFv
__dt__18TBossPakkunManagerFv: # 0x80098fac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80098ff4
    lis     r3, __vvt__18TBossPakkunManager@h
    addi    r0, r3, __vvt__18TBossPakkunManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x80098ff4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80098ff4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TBossPakkunFv
__dt__11TBossPakkunFv: # 0x80099010
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80099060
    lis     r3, __vvt__11TBossPakkun@h
    addi    r3, r3, __vvt__11TBossPakkun@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x80099060
    mr      r3, r30
    bl      __dl__FPv
branch_0x80099060:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TBossPakkunMtxCalcFv
__dt__18TBossPakkunMtxCalcFv: # 0x8009907c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009910c
    lis     r3, __vvt__18TBossPakkunMtxCalc@h
    addi    r3, r3, __vvt__18TBossPakkunMtxCalc@l
    stw     r3, 0x4c(r30)
    addi    r4, r3, 0x24
    addi    r0, r30, 0x68
    lwz     r3, 0x0(r30)
    stw     r4, 0x0(r3)
    lwz     r3, 0x0(r30)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    beq-    branch_0x800990fc
    lis     r3, __vvt__24M3UMtxCalcSIAnmBlendQuat@ha
    addi    r3, r3, __vvt__24M3UMtxCalcSIAnmBlendQuat@l
    stw     r3, 0x4c(r30)
    addi    r6, r3, 0x24
    addi    r0, r30, 0x64
    lwz     r5, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    stw     r6, 0x0(r5)
    lwz     r5, 0x0(r30)
    subf    r0, r5, r0
    stw     r0, 0x4(r5)
    bl      __dt__19J3DMtxCalcSoftimageFv
branch_0x800990fc:
    extsh.  r0, r31
    ble-    branch_0x8009910c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009910c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8TBPNavelFv
__dt__8TBPNavelFv: # 0x80099128
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80099190
    lis     r3, __vvt__8TBPNavel@h
    addi    r3, r3, __vvt__8TBPNavel@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80099180
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80099180:
    extsh.  r0, r31
    ble-    branch_0x80099190
    mr      r3, r30
    bl      __dl__FPv
branch_0x80099190:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TBPHeadHitFv
__dt__10TBPHeadHitFv: # 0x800991ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80099214
    lis     r3, __vvt__10TBPHeadHit@h
    addi    r3, r3, __vvt__10TBPHeadHit@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80099204
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80099204:
    extsh.  r0, r31
    ble-    branch_0x80099214
    mr      r3, r30
    bl      __dl__FPv
branch_0x80099214:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TBPTornadoFv
__dt__10TBPTornadoFv: # 0x80099230
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80099298
    lis     r3, __vvt__10TBPTornado@h
    addi    r3, r3, __vvt__10TBPTornado@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80099288
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80099288:
    extsh.  r0, r31
    ble-    branch_0x80099298
    mr      r3, r30
    bl      __dl__FPv
branch_0x80099298:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8TBPVomitFv
__dt__8TBPVomitFv: # 0x800992b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009930c
    lis     r3, __vvt__8TBPVomit@h
    addi    r0, r3, __vvt__8TBPVomit@l
    stw     r0, 0x0(r30)
    beq-    branch_0x800992fc
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800992fc:
    extsh.  r0, r31
    ble-    branch_0x8009930c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009930c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TBPPolDropFv
__dt__10TBPPolDropFv: # 0x80099328
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80099390
    lis     r3, __vvt__10TBPPolDrop@h
    addi    r3, r3, __vvt__10TBPPolDrop@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80099380
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80099380:
    extsh.  r0, r31
    ble-    branch_0x80099390
    mr      r3, r30
    bl      __dl__FPv
branch_0x80099390:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_bosspakkun_cpp
__sinit_bosspakkun_cpp: # 0x800993ac
    mflr    r0
    lis     r3, up_3221@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, up_3221@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800993f4
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x18c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x800993f4:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80099424
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x198
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80099424:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80099454
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x1a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80099454:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80099484
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x1b0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80099484:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800994b4
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x1bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x800994b4:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800994e4
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x1c8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x800994e4:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80099514
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x1d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80099514:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80099544
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x1e0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80099544:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80099574
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x1ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80099574:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800995a4
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x1f8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x800995a4:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800995d4
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x204
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x800995d4:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80099604
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x210
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80099604:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80099634
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x21c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80099634:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80099664
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x228
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80099664:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80099694
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x234
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80099694:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_800996a8
unk_800996a8: # 0x800996a8
    addi    r3, r3, -0x20
    b       __dt__10TBPPolDropFv


.globl unk_800996b0
unk_800996b0: # 0x800996b0
    addi    r3, r3, -0x20
    b       __dt__10TBPTornadoFv


.globl unk_800996b8
unk_800996b8: # 0x800996b8
    addi    r3, r3, -0x20
    b       __dt__10TBPHeadHitFv


.globl unk_800996c0
unk_800996c0: # 0x800996c0
    addi    r3, r3, -0x20
    b       __dt__8TBPNavelFv


.globl unk_800996c8
unk_800996c8: # 0x800996c8
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x68
    b       calc__18TBossPakkunMtxCalcFUs


.globl unk_800996dc
unk_800996dc: # 0x800996dc
    addi    r3, r3, -0x20
    b       __dt__11TBossPakkunFv

