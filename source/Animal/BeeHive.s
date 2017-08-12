
.globl __dt__18TNerveBeeHiveResetFv
__dt__18TNerveBeeHiveResetFv: # 0x8000e728
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000e76c
    lis     r3, __vvt__18TNerveBeeHiveReset@ha
    addi    r0, r3, __vvt__18TNerveBeeHiveReset@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000e75c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000e75c:
    extsh.  r0, r4
    ble-    branch_0x8000e76c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000e76c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveBeeHiveResetCFP24TSpineBase_10TLiveActor_
execute__18TNerveBeeHiveResetCFP24TSpineBase_10TLiveActor_: # 0x8000e784
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000e7dc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r30)
    lfs     f0, -0x7e28(r2)
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
branch_0x8000e7dc:
    lfs     f0, 0x24(r30)
    li      r0, 0x0
    lfs     f2, -0x7e24(r2)
    fadds   f0, f0, f2
    stfs    f0, 0x24(r30)
    lfs     f1, -0x7e20(r2)
    lfs     f0, 0x24(r30)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8000e818
    stfs    f1, 0x24(r30)
    li      r0, 0x1
    stfs    f1, 0x28(r30)
    stfs    f1, 0x2c(r30)
    b       branch_0x8000e830

branch_0x8000e818:
    lfs     f0, 0x28(r30)
    fadds   f0, f0, f2
    stfs    f0, 0x28(r30)
    lfs     f0, 0x2c(r30)
    fadds   f0, f0, f2
    stfs    f0, 0x2c(r30)
branch_0x8000e830:
    clrlwi. r0, r0, 24
    beq-    branch_0x8000e8b8
    lbz     r0, R13Off_m0x719c(r13)
    extsb.  r0, r0
    bne-    branch_0x8000e87c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBeeHiveWait@ha
    stw     r0, R13Off_m0x7198(r13)
    addi    r0, r3, __vvt__17TNerveBeeHiveWait@l
    lis     r4, __dt__17TNerveBeeHiveWaitFv@ha
    stw     r0, R13Off_m0x7198(r13)
    lis     r3, unk_803e9a00@ha
    addi    r5, r3, unk_803e9a00@l
    addi    r4, r4, __dt__17TNerveBeeHiveWaitFv@l
    addi    r3, r13, R13Off_m0x7198
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x719c(r13)
branch_0x8000e87c:
    addi    r4, r13, R13Off_m0x7198
    cmplwi  r4, 0x0
    beq-    branch_0x8000e8b0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8000e8b0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8000e8b0:
    li      r3, 0x1
    b       branch_0x8000e8bc

branch_0x8000e8b8:
    li      r3, 0x0
branch_0x8000e8bc:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__17TNerveBeeHiveWaitFv
__dt__17TNerveBeeHiveWaitFv: # 0x8000e8d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000e918
    lis     r3, __vvt__17TNerveBeeHiveWait@ha
    addi    r0, r3, __vvt__17TNerveBeeHiveWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000e908
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000e908:
    extsh.  r0, r4
    ble-    branch_0x8000e918
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000e918:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveBeeHiveMarioWaterInCFP24TSpineBase_10TLiveActor_
execute__25TNerveBeeHiveMarioWaterInCFP24TSpineBase_10TLiveActor_: # 0x8000e930
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    mr      r30, r4
    stw     r29, 0x9c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000ea30
    lfs     f0, -0x7e1c(r2)
    addi    r3, sp, 0x80
    lwz     r4, 0x150(r31)
    stfs    f0, 0x20(r4)
    lfs     f0, -0x7e18(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x24(r4)
    lfs     f0, -0x7e14(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x28(r4)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x2c(r4)
    lfs     f0, -0x7e10(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x30(r4)
    lfs     f0, -0x7e0c(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x34(r4)
    lfs     f1, -0x7e28(r2)
    lwz     r29, R13Off_m0x60b8(r13)
    fmr     f2, f1
    fmr     f3, f1
    stw     r29, 0x7c(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
    cmplwi  r29, 0x0
    beq-    branch_0x8000e9dc
    lfs     f2, 0x18(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x10(r29)
    stfs    f0, 0x80(sp)
    stfs    f1, 0x84(sp)
    stfs    f2, 0x88(sp)
branch_0x8000e9dc:
    lwz     r5, 0x150(r31)
    addi    r3, sp, 0x8c
    lwz     r0, 0x7c(sp)
    stw     r0, 0x38(r5)
    lwz     r4, 0x80(sp)
    lwz     r0, 0x84(sp)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    lwz     r0, 0x88(sp)
    stw     r0, 0x44(r5)
    lfs     f1, -0x7e28(r2)
    lfs     f2, -0x7e08(r2)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
    lwz     r4, 0x150(r31)
    lwz     r3, 0x8c(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0x4c(r4)
    stw     r0, 0x50(r4)
    lwz     r0, 0x94(sp)
    stw     r0, 0x54(r4)
branch_0x8000ea30:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xb8(r3)
    lwz     r0, 0x20(r30)
    cmpw    r3, r0
    bge-    branch_0x8000ead4
    lbz     r0, R13Off_m0x7174(r13)
    extsb.  r0, r0
    bne-    branch_0x8000ea98
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveBeeHiveReset@ha
    stw     r0, R13Off_m0x7170(r13)
    addi    r0, r3, __vvt__18TNerveBeeHiveReset@l
    lis     r4, __dt__18TNerveBeeHiveResetFv@ha
    stw     r0, R13Off_m0x7170(r13)
    lis     r3, unk_803e9a3c@ha
    addi    r5, r3, unk_803e9a3c@l
    addi    r4, r4, __dt__18TNerveBeeHiveResetFv@l
    addi    r3, r13, R13Off_m0x7170
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7174(r13)
branch_0x8000ea98:
    addi    r4, r13, R13Off_m0x7170
    cmplwi  r4, 0x0
    beq-    branch_0x8000eacc
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000eacc
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000eacc:
    li      r3, 0x1
    b       branch_0x8000ec00

branch_0x8000ead4:
    lwz     r3, R13Off_m0x6094(r13)
    li      r29, 0x1
    addi    r31, r29, 0x0
    lwz     r4, 0x0(r3)
    addi    r3, r29, 0x0
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x8000eaf8
    mr      r0, r29
    b       branch_0x8000eafc

branch_0x8000eaf8:
    li      r0, 0x0
branch_0x8000eafc:
    clrlwi. r0, r0, 24
    bne-    branch_0x8000eb24
    rlwinm. r0, r4, 0, 15, 15
    beq-    branch_0x8000eb14
    li      r0, 0x1
    b       branch_0x8000eb18

branch_0x8000eb14:
    li      r0, 0x0
branch_0x8000eb18:
    clrlwi. r0, r0, 24
    bne-    branch_0x8000eb24
    li      r3, 0x0
branch_0x8000eb24:
    clrlwi. r0, r3, 24
    bne-    branch_0x8000eb44
    lwz     r3, R13Off_m0x608c(r13)
    lwz     r3, 0x0(r3)
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8000eb44
    li      r31, 0x0
branch_0x8000eb44:
    clrlwi. r0, r31, 24
    bne-    branch_0x8000eb74
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x8000eb64
    li      r0, 0x1
    b       branch_0x8000eb68

branch_0x8000eb64:
    li      r0, 0x0
branch_0x8000eb68:
    clrlwi. r0, r0, 24
    bne-    branch_0x8000eb74
    li      r29, 0x0
branch_0x8000eb74:
    clrlwi. r0, r29, 24
    bne-    branch_0x8000ebfc
    lbz     r0, R13Off_m0x7184(r13)
    extsb.  r0, r0
    bne-    branch_0x8000ebc0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveBeeHiveAttack@ha
    stw     r0, R13Off_m0x7180(r13)
    addi    r0, r3, __vvt__19TNerveBeeHiveAttack@l
    lis     r4, __dt__19TNerveBeeHiveAttackFv@ha
    stw     r0, R13Off_m0x7180(r13)
    lis     r3, unk_803e9a24@ha
    addi    r5, r3, unk_803e9a24@l
    addi    r4, r4, __dt__19TNerveBeeHiveAttackFv@l
    addi    r3, r13, R13Off_m0x7180
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7184(r13)
branch_0x8000ebc0:
    addi    r4, r13, R13Off_m0x7180
    cmplwi  r4, 0x0
    beq-    branch_0x8000ebf4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000ebf4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000ebf4:
    li      r3, 0x1
    b       branch_0x8000ec00

branch_0x8000ebfc:
    li      r3, 0x0
branch_0x8000ec00:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    blr


.globl __dt__19TNerveBeeHiveAttackFv
__dt__19TNerveBeeHiveAttackFv: # 0x8000ec1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000ec60
    lis     r3, __vvt__19TNerveBeeHiveAttack@ha
    addi    r0, r3, __vvt__19TNerveBeeHiveAttack@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000ec50
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000ec50:
    extsh.  r0, r4
    ble-    branch_0x8000ec60
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000ec60:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isWaterSurface__12TBGCheckDataCFv
isWaterSurface__12TBGCheckDataCFv: # 0x8000ec78
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8000ec9c
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8000ec9c
    cmplwi  r3, 0x4104
    bne-    branch_0x8000eca4
branch_0x8000ec9c:
    li      r3, 0x1
    blr

branch_0x8000eca4:
    li      r3, 0x0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac: # 0x8000ecac
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __dt__25TNerveBeeHiveMarioWaterInFv
__dt__25TNerveBeeHiveMarioWaterInFv: # 0x8000ecbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000ed00
    lis     r3, __vvt__25TNerveBeeHiveMarioWaterIn@ha
    addi    r0, r3, __vvt__25TNerveBeeHiveMarioWaterIn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000ecf0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000ecf0:
    extsh.  r0, r4
    ble-    branch_0x8000ed00
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000ed00:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveBeeHiveAttackCFP24TSpineBase_10TLiveActor_
execute__19TNerveBeeHiveAttackCFP24TSpineBase_10TLiveActor_: # 0x8000ed18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    mr      r30, r4
    stw     r29, 0xbc(sp)
    stw     r28, 0xb8(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000ee1c
    lfs     f0, -0x7e1c(r2)
    addi    r3, sp, 0xa0
    lwz     r4, 0x150(r31)
    stfs    f0, 0x20(r4)
    lfs     f0, -0x7e18(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x24(r4)
    lfs     f0, -0x7e14(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x28(r4)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x2c(r4)
    lfs     f0, -0x7e10(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x30(r4)
    lfs     f0, -0x7e0c(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x34(r4)
    lfs     f1, -0x7e28(r2)
    lwz     r29, R13Off_m0x60b8(r13)
    fmr     f2, f1
    fmr     f3, f1
    stw     r29, 0x9c(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
    cmplwi  r29, 0x0
    beq-    branch_0x8000edc8
    lfs     f2, 0x18(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x10(r29)
    stfs    f0, 0xa0(sp)
    stfs    f1, 0xa4(sp)
    stfs    f2, 0xa8(sp)
branch_0x8000edc8:
    lwz     r5, 0x150(r31)
    addi    r3, sp, 0xac
    lwz     r0, 0x9c(sp)
    stw     r0, 0x38(r5)
    lwz     r4, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    lwz     r0, 0xa8(sp)
    stw     r0, 0x44(r5)
    lfs     f1, -0x7e28(r2)
    lfs     f2, -0x7e04(r2)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
    lwz     r4, 0x150(r31)
    lwz     r3, 0xac(sp)
    lwz     r0, 0xb0(sp)
    stw     r3, 0x4c(r4)
    stw     r0, 0x50(r4)
    lwz     r0, 0xb4(sp)
    stw     r0, 0x54(r4)
branch_0x8000ee1c:
    lwz     r3, R13Off_m0x6094(r13)
    li      r29, 0x1
    addi    r28, r29, 0x0
    lwz     r4, 0x0(r3)
    addi    r3, r29, 0x0
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x8000ee40
    mr      r0, r29
    b       branch_0x8000ee44

branch_0x8000ee40:
    li      r0, 0x0
branch_0x8000ee44:
    clrlwi. r0, r0, 24
    bne-    branch_0x8000ee6c
    rlwinm. r0, r4, 0, 15, 15
    beq-    branch_0x8000ee5c
    li      r0, 0x1
    b       branch_0x8000ee60

branch_0x8000ee5c:
    li      r0, 0x0
branch_0x8000ee60:
    clrlwi. r0, r0, 24
    bne-    branch_0x8000ee6c
    li      r3, 0x0
branch_0x8000ee6c:
    clrlwi. r0, r3, 24
    bne-    branch_0x8000ee8c
    lwz     r3, R13Off_m0x608c(r13)
    lwz     r3, 0x0(r3)
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8000ee8c
    li      r28, 0x0
branch_0x8000ee8c:
    clrlwi. r0, r28, 24
    bne-    branch_0x8000eebc
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x8000eeac
    li      r0, 0x1
    b       branch_0x8000eeb0

branch_0x8000eeac:
    li      r0, 0x0
branch_0x8000eeb0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8000eebc
    li      r29, 0x0
branch_0x8000eebc:
    clrlwi. r0, r29, 24
    beq-    branch_0x8000ef44
    lbz     r0, R13Off_m0x717c(r13)
    extsb.  r0, r0
    bne-    branch_0x8000ef08
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__25TNerveBeeHiveMarioWaterIn@ha
    stw     r0, R13Off_m0x7178(r13)
    addi    r0, r3, __vvt__25TNerveBeeHiveMarioWaterIn@l
    lis     r4, __dt__25TNerveBeeHiveMarioWaterInFv@ha
    stw     r0, R13Off_m0x7178(r13)
    lis     r3, unk_803e9a30@ha
    addi    r5, r3, unk_803e9a30@l
    addi    r4, r4, __dt__25TNerveBeeHiveMarioWaterInFv@l
    addi    r3, r13, R13Off_m0x7178
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x717c(r13)
branch_0x8000ef08:
    addi    r4, r13, R13Off_m0x7178
    cmplwi  r4, 0x0
    beq-    branch_0x8000ef3c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000ef3c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000ef3c:
    li      r3, 0x1
    b       branch_0x8000f088

branch_0x8000ef44:
    lwz     r0, 0x1b4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8000ef58
    li      r0, 0x0
    b       branch_0x8000effc

branch_0x8000ef58:
    lwz     r6, R13Off_m0x60b4(r13)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x8c
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x88(sp)
    bl      getCenterOfGravity__8TBeeHiveCFv
    lfs     f2, 0x80(sp)
    mr      r3, r31
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0x80(sp)
    lfs     f1, 0x84(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x94(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x88(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x80(sp)
    lfs     f0, 0x84(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x88(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0xcc(r3)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fmuls   f1, f3, f3
    fadds   f0, f2, f0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    mfcr    r0
    extrwi  r0, r0, 1, 2
branch_0x8000effc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8000f084
    lbz     r0, R13Off_m0x7174(r13)
    extsb.  r0, r0
    bne-    branch_0x8000f048
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveBeeHiveReset@ha
    stw     r0, R13Off_m0x7170(r13)
    addi    r0, r3, __vvt__18TNerveBeeHiveReset@l
    lis     r4, __dt__18TNerveBeeHiveResetFv@ha
    stw     r0, R13Off_m0x7170(r13)
    lis     r3, unk_803e9a3c@ha
    addi    r5, r3, unk_803e9a3c@l
    addi    r4, r4, __dt__18TNerveBeeHiveResetFv@l
    addi    r3, r13, R13Off_m0x7170
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7174(r13)
branch_0x8000f048:
    addi    r4, r13, R13Off_m0x7170
    cmplwi  r4, 0x0
    beq-    branch_0x8000f07c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000f07c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000f07c:
    li      r3, 0x1
    b       branch_0x8000f088

branch_0x8000f084:
    li      r3, 0x0
branch_0x8000f088:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    mtlr    r0
    lwz     r29, 0xbc(sp)
    lwz     r28, 0xb8(sp)
    addi    sp, sp, 0xc8
    blr


.globl execute__18TNerveBeeHiveBreakCFP24TSpineBase_10TLiveActor_
execute__18TNerveBeeHiveBreakCFP24TSpineBase_10TLiveActor_: # 0x8000f0a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    mr      r30, r4
    stw     r29, 0xbc(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000f27c
    lis     r4, unk_80373c18@h
    lwz     r3, 0x78(r31)
    addi    r4, r4, unk_80373c18@l
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    lis     r3, unk_80373c5c@h
    addi    r4, r3, unk_80373c5c@l
    lwz     r3, 0x74(r31)
    bl      setBck__6MActorFPCc
    lwz     r0, 0x64(r31)
    addi    r6, sp, 0xa0
    addi    r5, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    addi    r4, r31, 0x10
    li      r3, 0xe4
    lfs     f0, -0x7e00(r2)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x7e00(r2)
    addi    r6, sp, 0xac
    addi    r5, r31, 0x0
    stfs    f0, 0xac(sp)
    addi    r4, r31, 0x10
    li      r3, 0xe6
    stfs    f0, 0xb0(sp)
    stfs    f0, 0xb4(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x28f6
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8000f17c
    addi    r4, r31, 0x10
    li      r3, 0x28f6
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8000f17c:
    li      r29, 0x0
    b       branch_0x8000f194

branch_0x8000f184:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      appearBee__8TBeeHiveFi
    addi    r29, r29, 0x1
branch_0x8000f194:
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    cmpw    r29, r0
    blt+    branch_0x8000f184
    stw     r0, 0x1b4(r31)
    addi    r3, sp, 0x88
    lfs     f0, -0x7e1c(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x20(r4)
    lfs     f0, -0x7e18(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x24(r4)
    lfs     f0, -0x7e14(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x28(r4)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x2c(r4)
    lfs     f0, -0x7e10(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x30(r4)
    lfs     f0, -0x7e0c(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x34(r4)
    lfs     f1, -0x7e28(r2)
    lwz     r29, R13Off_m0x60b8(r13)
    fmr     f2, f1
    fmr     f3, f1
    stw     r29, 0x84(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
    cmplwi  r29, 0x0
    beq-    branch_0x8000f228
    lfs     f2, 0x18(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x10(r29)
    stfs    f0, 0x88(sp)
    stfs    f1, 0x8c(sp)
    stfs    f2, 0x90(sp)
branch_0x8000f228:
    lwz     r5, 0x150(r31)
    addi    r3, sp, 0x94
    lwz     r0, 0x84(sp)
    stw     r0, 0x38(r5)
    lwz     r4, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    lwz     r0, 0x90(sp)
    stw     r0, 0x44(r5)
    lfs     f1, -0x7e28(r2)
    lfs     f2, -0x7e04(r2)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
    lwz     r4, 0x150(r31)
    lwz     r3, 0x94(sp)
    lwz     r0, 0x98(sp)
    stw     r3, 0x4c(r4)
    stw     r0, 0x50(r4)
    lwz     r0, 0x9c(sp)
    stw     r0, 0x54(r4)
branch_0x8000f27c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8000f31c
    lbz     r0, R13Off_m0x7184(r13)
    extsb.  r0, r0
    bne-    branch_0x8000f2d4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveBeeHiveAttack@ha
    stw     r0, R13Off_m0x7180(r13)
    addi    r0, r3, __vvt__19TNerveBeeHiveAttack@l
    lis     r4, __dt__19TNerveBeeHiveAttackFv@ha
    stw     r0, R13Off_m0x7180(r13)
    lis     r3, unk_803e9a24@ha
    addi    r5, r3, unk_803e9a24@l
    addi    r4, r4, __dt__19TNerveBeeHiveAttackFv@l
    addi    r3, r13, R13Off_m0x7180
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7184(r13)
branch_0x8000f2d4:
    addi    r4, r13, R13Off_m0x7180
    cmplwi  r4, 0x0
    beq-    branch_0x8000f308
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000f308
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000f308:
    lwz     r0, 0xf0(r31)
    li      r3, 0x1
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    b       branch_0x8000f320

branch_0x8000f31c:
    li      r3, 0x0
branch_0x8000f320:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    mtlr    r0
    lwz     r29, 0xbc(sp)
    addi    sp, sp, 0xc8
    blr


.globl __dt__18TNerveBeeHiveBreakFv
__dt__18TNerveBeeHiveBreakFv: # 0x8000f33c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000f380
    lis     r3, __vvt__18TNerveBeeHiveBreak@ha
    addi    r0, r3, __vvt__18TNerveBeeHiveBreak@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000f370
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000f370:
    extsh.  r0, r4
    ble-    branch_0x8000f380
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000f380:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveBeeHiveFallCFP24TSpineBase_10TLiveActor_
execute__17TNerveBeeHiveFallCFP24TSpineBase_10TLiveActor_: # 0x8000f398
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    stw     r29, 0x64(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000f560
    lwz     r0, 0xf0(r31)
    li      r4, 0x28f4
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8000f40c
    addi    r4, r31, 0x10
    li      r3, 0x28f4
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8000f40c:
    lfs     f7, 0x16c(r31)
    mr      r3, r31
    lfs     f0, 0x174(r31)
    lfs     f6, 0x168(r31)
    fmuls   f1, f0, f7
    lfs     f2, 0x170(r31)
    lfs     f5, -0x7e00(r2)
    fmuls   f0, f0, f6
    fmuls   f4, f6, f2
    fmuls   f3, f5, f1
    fmuls   f1, f5, f0
    fmuls   f2, f7, f2
    fmadds  f3, f5, f4, f3
    fmuls   f0, f6, f6
    fmsubs  f1, f5, f2, f1
    stfs    f3, 0x50(sp)
    fmuls   f2, f7, f7
    stfs    f1, 0x54(sp)
    lfs     f1, -0x7e20(r2)
    fnmsubs  f0, f5, f0, f1
    fnmsubs  f0, f5, f2, f0
    stfs    f0, 0x58(sp)
    lfs     f0, 0x50(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x50(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x144(r3)
    stfs    f0, 0x18c(r31)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0xb4(r31)
    lwz     r29, 0x1ac(r31)
    cmplwi  r29, 0x0
    beq-    branch_0x8000f560
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x8000f4dc
    li      r0, 0x1
    b       branch_0x8000f4e0

branch_0x8000f4dc:
    li      r0, 0x0
branch_0x8000f4e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8000f4fc
    lis     r4, unk_2000000e@h
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r4, unk_2000000e@l
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r29, r3
branch_0x8000f4fc:
    cmplwi  r29, 0x0
    beq-    branch_0x8000f560
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r31, 0x10
    lwz     r12, 0x8c(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x7e28(r2)
    li      r0, 0x0
    stfs    f0, 0xac(r29)
    stfs    f0, 0xb0(r29)
    stfs    f0, 0xb4(r29)
    lwz     r3, 0xf0(r29)
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r29)
    lwz     r3, 0xf0(r29)
    ori     r3, r3, 0x80
    stw     r3, 0xf0(r29)
    stw     r0, 0x1ac(r31)
branch_0x8000f560:
    lfs     f1, 0x188(r31)
    lfs     f0, 0x18c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x188(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8000f5fc
    lbz     r0, R13Off_m0x718c(r13)
    extsb.  r0, r0
    bne-    branch_0x8000f5c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveBeeHiveBreak@ha
    stw     r0, R13Off_m0x7188(r13)
    addi    r0, r3, __vvt__18TNerveBeeHiveBreak@l
    lis     r4, __dt__18TNerveBeeHiveBreakFv@ha
    stw     r0, R13Off_m0x7188(r13)
    lis     r3, unk_803e9a18@ha
    addi    r5, r3, unk_803e9a18@l
    addi    r4, r4, __dt__18TNerveBeeHiveBreakFv@l
    addi    r3, r13, R13Off_m0x7188
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x718c(r13)
branch_0x8000f5c0:
    addi    r4, r13, R13Off_m0x7188
    cmplwi  r4, 0x0
    beq-    branch_0x8000f5f4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000f5f4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000f5f4:
    li      r3, 0x1
    b       branch_0x8000f600

branch_0x8000f5fc:
    li      r3, 0x0
branch_0x8000f600:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl __dt__17TNerveBeeHiveFallFv
__dt__17TNerveBeeHiveFallFv: # 0x8000f61c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000f660
    lis     r3, __vvt__17TNerveBeeHiveFall@ha
    addi    r0, r3, __vvt__17TNerveBeeHiveFall@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8000f650
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8000f650:
    extsh.  r0, r4
    ble-    branch_0x8000f660
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000f660:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveBeeHiveWaitCFP24TSpineBase_10TLiveActor_
execute__17TNerveBeeHiveWaitCFP24TSpineBase_10TLiveActor_: # 0x8000f678
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    mr      r30, r4
    stw     r29, 0xa4(sp)
    mr      r29, r3
    stw     r28, 0xa0(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000f7a0
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x90
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1b4(r31)
    cmpwi   r0, 0x3
    bge-    branch_0x8000f6e8
    li      r28, 0x0
branch_0x8000f6c8:
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    bl      appearBee__8TBeeHiveFi
    addi    r28, r28, 0x1
    cmpwi   r28, 0x3
    blt+    branch_0x8000f6c8
    li      r0, 0x3
    stw     r0, 0x1b4(r31)
branch_0x8000f6e8:
    lfs     f0, -0x7e1c(r2)
    li      r0, 0x0
    lwz     r4, 0x150(r31)
    addi    r3, sp, 0x90
    stfs    f0, 0x20(r4)
    lfs     f0, -0x7e18(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x24(r4)
    lfs     f0, -0x7e14(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x28(r4)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x2c(r4)
    lfs     f0, -0x7e10(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x30(r4)
    lfs     f0, -0x7e0c(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x34(r4)
    lwz     r5, 0x150(r31)
    stw     r0, 0x74(sp)
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r4, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x80(sp)
    lwz     r0, 0x74(sp)
    stw     r0, 0x38(r5)
    lwz     r4, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    lwz     r0, 0x80(sp)
    stw     r0, 0x44(r5)
    lfs     f1, -0x7e28(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
    lwz     r4, 0x150(r31)
    lwz     r3, 0x90(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0x4c(r4)
    stw     r0, 0x50(r4)
    lwz     r0, 0x98(sp)
    stw     r0, 0x54(r4)
branch_0x8000f7a0:
    mr      r3, r31
    bl      doWait__8TBeeHiveFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8000f830
    lbz     r0, R13Off_m0x7194(r13)
    extsb.  r0, r0
    bne-    branch_0x8000f7f4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBeeHiveFall@ha
    stw     r0, R13Off_m0x7190(r13)
    addi    r0, r3, __vvt__17TNerveBeeHiveFall@l
    lis     r4, __dt__17TNerveBeeHiveFallFv@ha
    stw     r0, R13Off_m0x7190(r13)
    lis     r3, unk_803e9a0c@ha
    addi    r5, r3, unk_803e9a0c@l
    addi    r4, r4, __dt__17TNerveBeeHiveFallFv@l
    addi    r3, r13, R13Off_m0x7190
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7194(r13)
branch_0x8000f7f4:
    addi    r4, r13, R13Off_m0x7190
    cmplwi  r4, 0x0
    beq-    branch_0x8000f828
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8000f828
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000f828:
    li      r3, 0x1
    b       branch_0x8000f8d8

branch_0x8000f830:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xe0(r3)
    lwz     r0, 0x20(r30)
    cmpw    r3, r0
    bge-    branch_0x8000f8d4
    lwz     r3, 0x1b4(r31)
    cmpwi   r3, 0x3
    ble-    branch_0x8000f89c
    addi    r0, r3, -0x1
    stw     r0, 0x1b4(r31)
    lwz     r0, 0x1b4(r31)
    lwz     r3, 0x154(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8000f89c
    lwz     r0, 0x74(r3)
    ori     r0, r0, 0x2
    stw     r0, 0x74(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x8000f89c:
    cmplwi  r29, 0x0
    beq-    branch_0x8000f8cc
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x8000f8cc
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r29, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8000f8cc:
    li      r3, 0x1
    b       branch_0x8000f8d8

branch_0x8000f8d4:
    li      r3, 0x0
branch_0x8000f8d8:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    lwz     r28, 0xa0(sp)
    addi    sp, sp, 0xb0
    blr


.globl createModelData__15TBeeHiveManagerFv
createModelData__15TBeeHiveManagerFv: # 0x8000f8f8
    mflr    r0
    lis     r4, entry_2985@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_2985@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__15TBeeHiveManagerFR20JSUMemoryInputStream
load__15TBeeHiveManagerFR20JSUMemoryInputStream: # 0x8000f92c
    mflr    r0
    lis     r5, unk_80373b18@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r27, r3, 0x0
    addi    r26, r4, 0x0
    addi    r30, r5, unk_80373b18@l
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8000fb20
    addi    r3, r31, 0x0
    addi    r4, r30, 0x154
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x168
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x168
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r24, r3, __vvt__10TParamT_l_@l
    stw     r24, 0xa8(r31)
    li      r0, 0x258
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0xb8(r31)
    addi    r25, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x178
    stw     r25, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x178
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r28, r3, __vvt__10TParamT_f_@l
    stw     r28, 0xbc(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r29, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x7dfc(r2)
    addi    r3, r30, 0x188
    stfs    f0, 0xcc(r31)
    stw     r29, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x188
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0xd0(r31)
    li      r0, 0x3c
    addi    r3, r30, 0x198
    stw     r0, 0xe0(r31)
    stw     r25, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x198
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xe4(r31)
    addi    r3, r2, R2Off_m0x7df4
    lfs     f0, -0x7df8(r2)
    stfs    f0, 0xf4(r31)
    stw     r29, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r2, R2Off_m0x7df4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xf8(r31)
    addi    r3, r30, 0x1a4
    lfs     f0, -0x7dec(r2)
    stfs    f0, 0x108(r31)
    stw     r29, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x1a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x10c(r31)
    addi    r3, r30, 0x1b4
    lfs     f0, -0x7de8(r2)
    stfs    f0, 0x11c(r31)
    stw     r29, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x1b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x120(r31)
    addi    r3, r30, 0x1c0
    lfs     f0, -0x7de4(r2)
    stfs    f0, 0x130(r31)
    stw     r29, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x1c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x134(r31)
    addi    r3, r30, 0x1d0
    lfs     f0, -0x7e24(r2)
    stfs    f0, 0x144(r31)
    stw     r29, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x1d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x148(r31)
    mr      r3, r31
    lfs     f0, -0x7de0(r2)
    stfs    f0, 0x158(r31)
    stw     r29, 0x148(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x8000fb20:
    stw     r31, 0x38(r27)
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__15TBeeHiveManagerFPCc
__ct__15TBeeHiveManagerFPCc: # 0x8000fb44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__15TBeeHiveManager@ha
    addi    r0, r3, __vvt__15TBeeHiveManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getCenterOfGravity__8TBeeHiveCFv
getCenterOfGravity__8TBeeHiveCFv: # 0x8000fb80
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    lwz     r7, 0x1b4(r4)
    cmpwi   r7, 0x0
    bne-    branch_0x8000fbb0
    lfs     f0, -0x7e28(r2)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    b       branch_0x8000fe98

branch_0x8000fbb0:
    lfs     f0, -0x7e28(r2)
    li      r29, 0x0
    li      r5, 0x0
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x48(sp)
    ble-    branch_0x8000fe30
    cmpwi   r7, 0x8
    addi    r6, r7, -0x8
    ble-    branch_0x8000fdd8
    addi    r0, r6, 0x7
    srwi    r0, r0, 3
    cmpwi   r6, 0x0
    mtctr   r0
    ble-    branch_0x8000fdd8
branch_0x8000fbec:
    lwz     r8, 0x150(r4)
    addi    r30, r5, 0x50
    lfs     f1, 0x40(sp)
    addi    r31, r5, 0xa0
    lwz     r0, 0x14(r8)
    addi    r12, r5, 0xf0
    add     r6, r0, r5
    lfs     f0, 0x0(r6)
    addi    r11, r5, 0x140
    addi    r10, r5, 0x190
    fadds   f0, f1, f0
    addi    r9, r5, 0x1e0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r6)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x8(r6)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lwz     r0, 0x14(r8)
    lfs     f1, 0x40(sp)
    add     r30, r0, r30
    lfs     f0, 0x0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lwz     r0, 0x14(r8)
    lfs     f1, 0x40(sp)
    add     r31, r0, r31
    lfs     f0, 0x0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lwz     r0, 0x14(r8)
    lfs     f1, 0x40(sp)
    add     r12, r0, r12
    lfs     f0, 0x0(r12)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r12)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x8(r12)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lwz     r0, 0x14(r8)
    lfs     f1, 0x40(sp)
    add     r11, r0, r11
    lfs     f0, 0x0(r11)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r11)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x8(r11)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lwz     r0, 0x14(r8)
    lfs     f1, 0x40(sp)
    add     r10, r0, r10
    lfs     f0, 0x0(r10)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r10)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x8(r10)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lwz     r0, 0x14(r8)
    lfs     f1, 0x40(sp)
    add     r9, r0, r9
    lfs     f0, 0x0(r9)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r9)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    addi    r6, r5, 0x230
    lfs     f0, 0x8(r9)
    addi    r29, r29, 0x8
    addi    r5, r5, 0x280
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lwz     r0, 0x14(r8)
    lfs     f1, 0x40(sp)
    add     r6, r0, r6
    lfs     f0, 0x0(r6)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r6)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x8(r6)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    bdnz+      branch_0x8000fbec
branch_0x8000fdd8:
    subf    r0, r29, r7
    cmpw    r29, r7
    mtctr   r0
    mulli   r5, r29, 0x50
    bge-    branch_0x8000fe30
branch_0x8000fdec:
    lwz     r6, 0x150(r4)
    lfs     f1, 0x40(sp)
    lwz     r0, 0x14(r6)
    add     r6, r0, r5
    lfs     f0, 0x0(r6)
    addi    r5, r5, 0x50
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r6)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x8(r6)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    bdnz+      branch_0x8000fdec
branch_0x8000fe30:
    xoris   r0, r7, 0x8000
    lfd     f2, -0x7dd8(r2)
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    lfs     f3, -0x7e20(r2)
    stw     r0, 0x50(sp)
    lfs     f0, 0x40(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f3, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x48(sp)
    lwz     r4, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x48(sp)
    stw     r0, 0x8(r3)
    b       branch_0x8000fe98

branch_0x8000fe94:
    b       branch_0x8000fdd8

branch_0x8000fe98:
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl appearBee__8TBeeHiveFi
appearBee__8TBeeHiveFi: # 0x8000feac
    lwz     r5, 0x154(r3)
    slwi    r0, r4, 2
    lwzx    r6, r5, r0
    lwz     r5, 0x74(r6)
    rlwinm. r0, r5, 0, 29, 29
    bnelr-    

    rlwinm. r0, r5, 0, 30, 30
    beqlr-    

    lwz     r0, 0x74(r6)
    mulli   r5, r4, 0x50
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x74(r6)
    lwz     r0, 0x64(r6)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r6)
    lwz     r6, 0x150(r3)
    lwz     r4, 0x10(r3)
    lwz     r6, 0x14(r6)
    lwz     r0, 0x14(r3)
    add     r5, r6, r5
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x18(r3)
    stw     r0, 0x8(r5)
    blr


.globl doWait__8TBeeHiveFv
doWait__8TBeeHiveFv: # 0x8000ff10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x190(sp)
    stfd    f31, 0x188(sp)
    stfd    f30, 0x180(sp)
    stfd    f29, 0x178(sp)
    stw     r31, 0x174(sp)
    mr      r31, r3
    stw     r30, 0x170(sp)
    lwz     r12, 0x0(r31)
    lfs     f31, 0x18c(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xf4(r3)
    mr      r3, r31
    lfs     f1, 0x188(r31)
    fneg    f0, f0
    lfs     f2, 0x18c(r31)
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x18c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x18c(r31)
    lfs     f0, 0x108(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x18c(r31)
    lfs     f1, 0x188(r31)
    lfs     f0, 0x18c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x188(r31)
    lfs     f2, 0x190(r31)
    lfs     f1, 0x188(r31)
    fneg    f0, f2
    fcmpo   cr0, f1, f0
    blt-    branch_0x8000ffb4
    fcmpo   cr0, f2, f1
    bge-    branch_0x80010080
branch_0x8000ffb4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x190(r31)
    lfs     f0, 0x11c(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x190(r31)
    lfs     f1, 0x190(r31)
    lfs     f0, -0x7e28(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8000ffec
    b       branch_0x80010000

branch_0x8000ffec:
    lfs     f0, -0x7dc0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8000fffc
    b       branch_0x80010000

branch_0x8000fffc:
    fmr     f0, f1
branch_0x80010000:
    stfs    f0, 0x190(r31)
    lfs     f0, 0x190(r31)
    lfs     f2, 0x188(r31)
    fneg    f1, f0
    fcmpo   cr0, f2, f1
    bge-    branch_0x8001001c
    b       branch_0x80010030

branch_0x8001001c:
    fcmpo   cr0, f2, f0
    ble-    branch_0x8001002c
    fmr     f1, f0
    b       branch_0x80010030

branch_0x8001002c:
    fmr     f1, f2
branch_0x80010030:
    stfs    f1, 0x188(r31)
    li      r4, 0x28f7
    lfs     f0, -0x7e28(r2)
    stfs    f0, 0x18c(r31)
    lfs     f0, 0x188(r31)
    lwz     r3, R13Off_m0x6044(r13)
    fabs    f30, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80010080
    fmr     f1, f30
    addi    r4, r31, 0x10
    li      r3, 0x28f7
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80010080:
    lfs     f1, -0x7dd0(r2)
    li      r0, 0x0
    lfs     f3, 0x18c(r31)
    lfs     f2, -0x7e28(r2)
    fneg    f0, f1
    fsubs   f2, f3, f2
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x800100b4
    fcmpo   cr0, f2, f1
    cror    2, 0, 2
    bne-    branch_0x800100b4
    li      r0, 0x1
branch_0x800100b4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80010114
    fmuls   f1, f31, f3
    lfs     f0, -0x7e28(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80010114
    lfs     f0, 0x188(r31)
    li      r4, 0x28f7
    lwz     r3, R13Off_m0x6044(r13)
    fabs    f30, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80010114
    fmr     f1, f30
    addi    r4, r31, 0x10
    li      r3, 0x28f7
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80010114:
    addi    r3, r31, 0x168
    lfs     f31, -0x7e24(r2)
    lfs     f30, -0x7e20(r2)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x7dd0(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80010150
    lfs     f0, -0x7e28(r2)
    stfs    f0, 0x130(sp)
    stfs    f0, 0x12c(sp)
    stfs    f0, 0x128(sp)
    stfs    f0, 0x124(sp)
    b       branch_0x80010164

branch_0x80010150:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f30, f1
    addi    r3, sp, 0x124
    addi    r4, r31, 0x168
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x80010164:
    addi    r3, r31, 0x158
    lfs     f30, -0x7e20(r2)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x7dd0(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8001019c
    lfs     f0, -0x7e28(r2)
    stfs    f0, 0x140(sp)
    stfs    f0, 0x13c(sp)
    stfs    f0, 0x138(sp)
    stfs    f0, 0x134(sp)
    b       branch_0x800101b0

branch_0x8001019c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f30, f1
    addi    r3, sp, 0x134
    addi    r4, r31, 0x158
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x800101b0:
    lfs     f1, 0x128(sp)
    lfs     f0, 0x138(sp)
    lfs     f2, 0x124(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x134(sp)
    lfs     f4, 0x12c(sp)
    lfs     f3, 0x13c(sp)
    fmadds  f1, f2, f1, f0
    lfs     f5, 0x130(sp)
    lfs     f2, 0x140(sp)
    fmadds  f1, f4, f3, f1
    lfs     f0, -0x7e28(r2)
    fmadds  f1, f5, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800101f8
    fneg    f1, f1
    li      r30, 0x1
    b       branch_0x800101fc

branch_0x800101f8:
    li      r30, 0x0
branch_0x800101fc:
    lfs     f2, -0x7e20(r2)
    lfs     f0, -0x7dd0(r2)
    fsubs   f2, f2, f1
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8001021c
    lfs     f30, -0x7dbc(r2)
    b       branch_0x8001024c

branch_0x8001021c:
    bl      acosf
    fmr     f29, f1
    bl      sinf
    lfs     f0, -0x7dbc(r2)
    fmr     f31, f1
    fmuls   f1, f0, f29
    bl      sinf
    fdivs   f30, f1, f31
    lfs     f0, -0x7e24(r2)
    fmuls   f1, f0, f29
    bl      sinf
    fdivs   f31, f1, f31
branch_0x8001024c:
    clrlwi. r0, r30, 24
    beq-    branch_0x80010258
    fneg    f31, f31
branch_0x80010258:
    lfs     f0, 0x134(sp)
    lfs     f2, 0x138(sp)
    fmuls   f0, f31, f0
    lfs     f1, 0x124(sp)
    lfs     f5, 0x140(sp)
    fmuls   f2, f31, f2
    lfs     f4, 0x13c(sp)
    lfs     f3, 0x128(sp)
    fmadds  f0, f30, f1, f0
    fmuls   f1, f31, f4
    lfs     f4, 0x12c(sp)
    lfs     f6, 0x130(sp)
    fmadds  f2, f30, f3, f2
    stfs    f0, 0x168(r31)
    fmuls   f5, f31, f5
    fmadds  f0, f30, f4, f1
    stfs    f2, 0x16c(r31)
    fmadds  f1, f30, f6, f5
    stfs    f0, 0x170(r31)
    stfs    f1, 0x174(r31)
    lfs     f1, 0x168(r31)
    lfs     f0, 0x16c(r31)
    lfs     f2, 0x170(r31)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    lfs     f3, 0x174(r31)
    fmuls   f2, f2, f2
    fmuls   f3, f3, f3
    fadds   f1, f1, f0
    lfs     f0, -0x7dd0(r2)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800102fc
    lfs     f0, -0x7e28(r2)
    stfs    f0, 0x174(r31)
    stfs    f0, 0x170(r31)
    stfs    f0, 0x16c(r31)
    stfs    f0, 0x168(r31)
    b       branch_0x80010338

branch_0x800102fc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x7e20(r2)
    lfs     f0, 0x168(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x168(r31)
    lfs     f0, 0x16c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x16c(r31)
    lfs     f0, 0x170(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x170(r31)
    lfs     f0, 0x174(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x174(r31)
branch_0x80010338:
    lwz     r5, R13Off_m0x60b4(r13)
    mr      r3, r31
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x15c(sp)
    stw     r0, 0x160(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x164(sp)
    lfs     f1, 0x15c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x15c(sp)
    lfs     f1, 0x160(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x160(sp)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x164(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x15c(sp)
    lfs     f0, 0x160(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x164(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x158(r3)
    fmuls   f2, f2, f2
    fadds   f1, f1, f0
    fmuls   f0, f3, f3
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800104a4
    lfs     f0, -0x7e1c(r2)
    addi    r3, sp, 0x104
    lwz     r4, 0x150(r31)
    stfs    f0, 0x20(r4)
    lfs     f0, -0x7e18(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x24(r4)
    lfs     f0, -0x7e14(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x28(r4)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x2c(r4)
    lfs     f0, -0x7e10(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x30(r4)
    lfs     f0, -0x7e0c(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x34(r4)
    lfs     f1, -0x7e28(r2)
    lwz     r30, R13Off_m0x60b8(r13)
    fmr     f2, f1
    fmr     f3, f1
    stw     r30, 0x100(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
    cmplwi  r30, 0x0
    beq-    branch_0x8001044c
    lfs     f2, 0x18(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x10(r30)
    stfs    f0, 0x104(sp)
    stfs    f1, 0x108(sp)
    stfs    f2, 0x10c(sp)
branch_0x8001044c:
    lwz     r5, 0x150(r31)
    addi    r3, sp, 0x110
    lwz     r0, 0x100(sp)
    stw     r0, 0x38(r5)
    lwz     r4, 0x104(sp)
    lwz     r0, 0x108(sp)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    lwz     r0, 0x10c(sp)
    stw     r0, 0x44(r5)
    lfs     f1, -0x7e28(r2)
    lfs     f2, -0x7e04(r2)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
    lwz     r4, 0x150(r31)
    lwz     r3, 0x110(sp)
    lwz     r0, 0x114(sp)
    stw     r3, 0x4c(r4)
    stw     r0, 0x50(r4)
    lwz     r0, 0x118(sp)
    stw     r0, 0x54(r4)
    b       branch_0x8001055c

branch_0x800104a4:
    lfs     f0, -0x7e1c(r2)
    li      r0, 0x0
    lwz     r4, 0x150(r31)
    addi    r3, sp, 0xf4
    stfs    f0, 0x20(r4)
    lfs     f0, -0x7e18(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x24(r4)
    lfs     f0, -0x7e14(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x28(r4)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x2c(r4)
    lfs     f0, -0x7e10(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x30(r4)
    lfs     f0, -0x7e0c(r2)
    lwz     r4, 0x150(r31)
    stfs    f0, 0x34(r4)
    lwz     r5, 0x150(r31)
    stw     r0, 0xcc(sp)
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r4, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xd8(sp)
    lwz     r0, 0xcc(sp)
    stw     r0, 0x38(r5)
    lwz     r4, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    stw     r4, 0x3c(r5)
    stw     r0, 0x40(r5)
    lwz     r0, 0xd8(sp)
    stw     r0, 0x44(r5)
    lfs     f1, -0x7e28(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8000ecac
    lwz     r4, 0x150(r31)
    lwz     r3, 0xf4(sp)
    lwz     r0, 0xf8(sp)
    stw     r3, 0x4c(r4)
    stw     r0, 0x50(r4)
    lwz     r0, 0xfc(sp)
    stw     r0, 0x54(r4)
branch_0x8001055c:
    lfs     f1, 0x188(r31)
    lfs     f0, -0x71a0(r13)
    fabs    f1, f1
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    mfcr    r0
    extrwi  r3, r0, 1, 2
    lwz     r0, 0x194(sp)
    lfd     f31, 0x188(sp)
    lfd     f30, 0x180(sp)
    lfd     f29, 0x178(sp)
    lwz     r31, 0x174(sp)
    lwz     r30, 0x170(sp)
    addi    sp, sp, 0x190
    mtlr    r0
    blr


.globl scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_: # 0x8001059c
    lfs     f0, 0x0(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r3)
    blr


.globl dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_: # 0x800105d0
    lfs     f1, 0x4(r3)
    lfs     f0, 0x4(r4)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x0(r4)
    lfs     f4, 0x8(r3)
    lfs     f3, 0x8(r4)
    fmadds  f0, f2, f1, f0
    lfs     f2, 0xc(r3)
    lfs     f1, 0xc(r4)
    fmadds  f0, f4, f3, f0
    fmadds  f1, f2, f1, f0
    blr


.globl calcRootMatrix__8TBeeHiveFv
calcRootMatrix__8TBeeHiveFv: # 0x80010604
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stfd    f30, 0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    mr      r30, r3
    lwz     r3, 0x178(r3)
    lwz     r0, 0x17c(r30)
    lfs     f0, -0x7dc8(r2)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r3, 0x180(r30)
    lwz     r0, 0x184(r30)
    stw     r3, 0x70(sp)
    stw     r0, 0x74(sp)
    lfs     f1, 0x188(r30)
    fmuls   f30, f0, f1
    fmr     f1, f30
    bl      sinf
    fmr     f31, f1
    fmr     f1, f30
    bl      cosf
    lfs     f6, 0x74(sp)
    addi    r3, sp, 0x38
    lfs     f11, 0x168(r30)
    addi    r4, r30, 0x24
    lfs     f9, 0x16c(r30)
    lfs     f10, 0x68(sp)
    fmuls   f0, f6, f11
    lfs     f7, 0x174(r30)
    fmuls   f2, f6, f9
    lfs     f12, 0x6c(sp)
    lfs     f5, 0x170(r30)
    fmadds  f3, f10, f7, f0
    lfs     f8, 0x70(sp)
    fmuls   f0, f6, f5
    addi    r5, sp, 0x68
    fmadds  f2, f12, f7, f2
    fmuls   f4, f10, f11
    fmadds  f3, f12, f5, f3
    fmadds  f0, f8, f7, f0
    fmadds  f2, f8, f11, f2
    fmsubs  f4, f6, f7, f4
    fnmsubs  f3, f8, f9, f3
    fmadds  f0, f10, f9, f0
    fnmsubs  f2, f10, f5, f2
    stfs    f3, 0x68(sp)
    fnmsubs  f4, f12, f9, f4
    fnmsubs  f0, f12, f11, f0
    stfs    f2, 0x6c(sp)
    fnmsubs  f3, f8, f5, f4
    stfs    f0, 0x70(sp)
    stfs    f3, 0x74(sp)
    lfs     f5, 0x74(sp)
    lfs     f3, -0x7e28(r2)
    lfs     f7, 0x68(sp)
    fmuls   f2, f5, f31
    lfs     f8, 0x6c(sp)
    fmuls   f9, f5, f3
    lfs     f6, 0x70(sp)
    fmuls   f4, f7, f31
    fmadds  f0, f8, f1, f9
    fmuls   f10, f8, f3
    fmsubs  f4, f5, f1, f4
    fmadds  f2, f7, f1, f2
    fmuls   f11, f6, f3
    fmuls   f5, f7, f3
    fmadds  f0, f6, f31, f0
    fadds   f2, f10, f2
    fmadds  f3, f6, f1, f9
    fsubs   f0, f0, f5
    fsubs   f1, f2, f11
    fadds   f2, f5, f3
    fsubs   f4, f4, f10
    stfs    f1, 0x68(sp)
    fnmsubs  f1, f8, f31, f2
    stfs    f0, 0x6c(sp)
    fsubs   f3, f4, f11
    stfs    f1, 0x70(sp)
    stfs    f3, 0x74(sp)
    bl      setSQ__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry8TVec3_f_RCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x10(r30)
    mr      r3, r30
    addi    r31, sp, 0x38
    stfs    f0, 0x44(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x54(sp)
    lfs     f1, 0x18(r30)
    lfs     f0, -0x7db8(r2)
    stfs    f1, 0x64(sp)
    lfs     f1, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x54(sp)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lfd     f30, 0x90(sp)
    mtlr    r0
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    addi    sp, sp, 0xa0
    blr


.globl setSQ__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry8TVec3_f_RCQ29JGeometry9TQuat4_f_
setSQ__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry8TVec3_f_RCQ29JGeometry9TQuat4_f_: # 0x800107b4
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stfd    f30, 0x38(sp)
    lfs     f4, 0x4(r5)
    lfs     f3, -0x7e00(r2)
    lfs     f6, 0x8(r5)
    fmuls   f8, f3, f4
    lfs     f7, 0x0(r5)
    fmuls   f2, f3, f6
    lfs     f0, 0xc(r5)
    fmuls   f5, f3, f7
    fmuls   f10, f8, f4
    lfs     f1, -0x7e20(r2)
    fmuls   f3, f3, f0
    fmuls   f11, f2, f6
    lfs     f2, 0x0(r4)
    fsubs   f0, f1, f10
    fmuls   f9, f5, f7
    fmuls   f12, f5, f4
    fsubs   f0, f0, f11
    fmuls   f31, f3, f6
    fsubs   f9, f1, f9
    fmuls   f0, f2, f0
    fsubs   f1, f12, f31
    fmuls   f13, f5, f6
    stfs    f0, 0x0(r3)
    fmuls   f30, f3, f4
    fmuls   f8, f8, f6
    lfs     f2, 0x0(r4)
    fmuls   f7, f3, f7
    fmuls   f1, f2, f1
    fadds   f0, f13, f30
    fadds   f5, f12, f31
    stfs    f1, 0x4(r3)
    fsubs   f4, f9, f11
    fsubs   f3, f8, f7
    lfs     f1, 0x0(r4)
    fsubs   f2, f13, f30
    fmuls   f6, f1, f0
    fadds   f1, f8, f7
    fsubs   f0, f9, f10
    stfs    f6, 0x8(r3)
    lfs     f6, 0x4(r4)
    fmuls   f5, f6, f5
    stfs    f5, 0x10(r3)
    lfs     f5, 0x4(r4)
    fmuls   f4, f5, f4
    stfs    f4, 0x14(r3)
    lfs     f4, 0x4(r4)
    fmuls   f3, f4, f3
    stfs    f3, 0x18(r3)
    lfs     f3, 0x8(r4)
    fmuls   f2, f3, f2
    stfs    f2, 0x20(r3)
    lfs     f2, 0x8(r4)
    fmuls   f1, f2, f1
    stfs    f1, 0x24(r3)
    lfs     f1, 0x8(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r3)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl controlSound__8TBeeHiveFv
controlSound__8TBeeHiveFv: # 0x800108b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    lwz     r0, 0x1b4(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80010970
    lfs     f3, -0x7e28(r2)
    mtctr   r0
    li      r5, 0x0
    fmr     f4, f3
    li      r4, 0x0
    fmr     f5, f3
    ble-    branch_0x80010920
branch_0x800108e8:
    lwz     r6, 0x154(r3)
    lwzx    r6, r6, r4
    lwz     r0, 0x74(r6)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x80010918
    lfs     f2, 0x10(r6)
    addi    r5, r5, 0x1
    lfs     f1, 0x14(r6)
    lfs     f0, 0x18(r6)
    fadds   f3, f3, f2
    fadds   f4, f4, f1
    fadds   f5, f5, f0
branch_0x80010918:
    addi    r4, r4, 0x4
    bdnz+      branch_0x800108e8
branch_0x80010920:
    cmpwi   r5, 0x0
    beq-    branch_0x80010970
    xoris   r0, r5, 0x8000
    lfd     f1, -0x7dd8(r2)
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    lfs     f2, -0x7e20(r2)
    addi    r4, r3, 0x1a0
    stw     r0, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    fmuls   f3, f3, f0
    fmuls   f4, f4, f0
    fmuls   f5, f5, f0
    stfs    f3, 0x1a0(r3)
    stfs    f4, 0x1a4(r3)
    stfs    f5, 0x1a8(r3)
    lwz     r3, R13Off_m0x6044(r13)
    bl      startBeeSe__6MSoundFP3VecUl
branch_0x80010970:
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl controlCollision__8TBeeHiveFv
controlCollision__8TBeeHiveFv: # 0x80010980
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    lwz     r29, 0x1b0(r3)
    lwz     r3, 0x154(r3)
    slwi    r0, r29, 2
    lwz     r30, 0x1b4(r28)
    lwzx    r31, r3, r0
    mr      r3, r31
    bl      checkHitActors__13TRealoidActorFv
    lwz     r0, 0x64(r31)
    addi    r29, r29, 0x1
    cmpw    r30, r29
    ori     r0, r0, 0x2
    stw     r0, 0x64(r31)
    lwz     r3, 0x1b0(r28)
    addi    r0, r3, 0x1
    cmpw    r30, r0
    stw     r0, 0x1b0(r28)
    bgt-    branch_0x800109ec
    li      r0, 0x0
    stw     r0, 0x1b0(r28)
branch_0x800109ec:
    lwz     r4, 0x1b0(r28)
    cmpw    r30, r4
    bgt-    branch_0x800109fc
    li      r4, 0x0
branch_0x800109fc:
    lwz     r3, 0x154(r28)
    slwi    r0, r4, 2
    lwzx    r3, r3, r0
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x80010a20
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r3)
branch_0x80010a20:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl bind__8TBeeHiveFv
bind__8TBeeHiveFv: # 0x80010a40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x80010c84
    lwz     r4, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x14(r30)
    addi    r31, sp, 0x4c
    stw     r4, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x94(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x98(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x9c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0xac(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0xb0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0xb4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x4c(sp)
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
    bge-    branch_0x80010b18
    stfs    f1, 0xb0(r30)
branch_0x80010b18:
    lfs     f1, -0x7da8(r2)
    addi    r4, r30, 0xc4
    lfs     f0, 0x188(r30)
    lfs     f2, -0x7dac(r2)
    fmuls   f0, f1, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    lfs     f4, -0x7db0(r2)
    fmuls   f0, f2, f0
    lfs     f5, -0x7db4(r2)
    lfs     f1, 0x48(sp)
    fctiwz  f2, f0
    lfs     f0, 0xc0(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f0, f1, f0
    lfs     f1, 0x44(sp)
    stfd    f2, 0x50(sp)
    lfs     f3, 0x4c(sp)
    lwz     r5, 0x54(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    fadds   f2, f4, f2
    fmuls   f31, f5, f2
    fadds   f2, f31, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r30)
    lfs     f1, 0xc8(r30)
    lfs     f0, -0x7e20(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r30)
    lfs     f2, 0x48(sp)
    lfs     f1, -0x7da4(r2)
    lfs     f0, 0xc8(r30)
    fadds   f2, f2, f31
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80010c1c
    lwz     r3, 0xc4(r30)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80010bd0
    li      r0, 0x1
    b       branch_0x80010bd4

branch_0x80010bd0:
    li      r0, 0x0
branch_0x80010bd4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80010bf0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80010bf0:
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r30)
    lfs     f0, -0x7e28(r2)
    stfs    f0, 0xac(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xb4(r30)
    lfs     f0, 0xc8(r30)
    fsubs   f0, f0, f31
    stfs    f0, 0x48(sp)
    b       branch_0x80010c28

branch_0x80010c1c:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x80010c28:
    lfs     f1, 0x48(sp)
    mr      r5, r31
    lfs     f0, 0xc0(r30)
    addi    r4, sp, 0x44
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f1, f1, f0
    lfs     f2, 0xbc(r30)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r0, 0x44(sp)
    addi    r3, sp, 0x20
    lwz     r5, 0x48(sp)
    addi    r4, r30, 0x10
    stw     r0, 0x20(sp)
    lwz     r0, 0x4c(sp)
    stw     r5, 0x24(sp)
    stw     r0, 0x28(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x28(sp)
    stw     r0, 0x9c(r30)
branch_0x80010c84:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_: # 0x80010ca0
    lfs     f1, 0x0(r3)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x8(r3)
    blr


.globl control__8TBeeHiveFv
control__8TBeeHiveFv: # 0x80010cd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      controlCollision__8TBeeHiveFv
    mr      r3, r31
    bl      control__10TLiveActorFv
    mr      r3, r31
    bl      controlSound__8TBeeHiveFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__8TBeeHiveFUlPQ26JDrama9TGraphics
perform__8TBeeHiveFUlPQ26JDrama9TGraphics: # 0x80010d10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__8TRealoidFUlPQ26JDrama9TGraphics
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl receiveMessage__8TBeeHiveFP9THitActorUl
receiveMessage__8TBeeHiveFP9THitActorUl: # 0x80010d64
    mflr    r0
    cmpwi   r5, 0xc
    stw     r0, 0x4(sp)
    lis     r6, unk_803e9a00@ha
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r6, unk_803e9a00@l
    stw     r30, 0xb8(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xb4(sp)
    addi    r29, r3, 0x0
    stw     r28, 0xb0(sp)
    beq-    branch_0x80010ff0
    bge-    branch_0x80010dbc
    cmpwi   r5, 0x2
    bge-    branch_0x800110cc
    cmpwi   r5, 0x0
    bge-    branch_0x80010ff0
    b       branch_0x800110cc

branch_0x80010dbc:
    cmpwi   r5, 0xf
    beq-    branch_0x80010dc8
    b       branch_0x800110cc

branch_0x80010dc8:
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r3, 0x98(sp)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0xa0(sp)
    lfs     f1, 0x98(sp)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x98(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lwz     r3, 0x8c(r29)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80010e28
    b       branch_0x80010e2c

branch_0x80010e28:
    lwz     r28, 0x1c(r3)
branch_0x80010e2c:
    lbz     r0, R13Off_m0x7194(r13)
    extsb.  r0, r0
    bne-    branch_0x80010e68
    addi    r3, r13, R13Off_m0x7190
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__17TNerveBeeHiveFall@ha
    addi    r0, r3, __vvt__17TNerveBeeHiveFall@l
    lis     r3, __dt__17TNerveBeeHiveFallFv@ha
    stw     r0, R13Off_m0x7190(r13)
    addi    r4, r3, __dt__17TNerveBeeHiveFallFv@l
    addi    r3, r13, R13Off_m0x7190
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7194(r13)
branch_0x80010e68:
    addi    r0, r13, R13Off_m0x7190
    cmplw   r28, r0
    beq-    branch_0x80010f84
    lwz     r0, 0x98(sp)
    addi    r3, sp, 0x78
    lwz     r5, 0x9c(sp)
    mr      r4, r3
    stw     r0, 0x78(sp)
    lwz     r0, 0xa0(sp)
    stw     r5, 0x7c(sp)
    lfs     f0, -0x7e28(r2)
    stw     r0, 0x80(sp)
    stfs    f0, 0x7c(sp)
    lfs     f29, -0x7e20(r2)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x7dd0(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80010ec8
    lfs     f0, -0x7e28(r2)
    stfs    f0, 0x80(sp)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x78(sp)
    b       branch_0x80010edc

branch_0x80010ec8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f29, f1
    addi    r3, sp, 0x78
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80010edc:
    lfs     f1, 0x18c(r29)
    lfs     f0, -0x7dcc(r2)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80010ef8
    lfs     f29, -0x7e20(r2)
    b       branch_0x80010f3c

branch_0x80010ef8:
    lfs     f1, 0x18c(r29)
    lfs     f0, -0x7e28(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80010f10
    li      r0, 0x1
    b       branch_0x80010f20

branch_0x80010f10:
    bge-    branch_0x80010f1c
    li      r0, -0x1
    b       branch_0x80010f20

branch_0x80010f1c:
    li      r0, 0x0
branch_0x80010f20:
    xoris   r0, r0, 0x8000
    lfd     f1, -0x7dd8(r2)
    stw     r0, 0xac(sp)
    lis     r0, 0x4330
    stw     r0, 0xa8(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f29, f0, f1
branch_0x80010f3c:
    lfs     f0, -0x7e28(r2)
    addi    r4, sp, 0x88
    lfs     f1, -0x7e20(r2)
    addi    r3, r29, 0x158
    stfs    f0, 0x88(sp)
    addi    r5, sp, 0x78
    stfs    f0, 0x8c(sp)
    stfs    f1, 0x90(sp)
    bl      setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x130(r3)
    lfs     f0, 0x18c(r29)
    fmadds  f0, f29, f1, f0
    stfs    f0, 0x18c(r29)
branch_0x80010f84:
    addi    r3, sp, 0x48
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lfs     f29, 0x18(r30)
    addi    r3, sp, 0x48
    lfs     f30, 0x14(r30)
    lfs     f31, 0x10(r30)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0x54(sp)
    addi    r5, sp, 0x48
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0xe7
    stfs    f30, 0x64(sp)
    li      r6, 0x0
    stfs    f29, 0x74(sp)
    li      r7, 0x0
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x7e28(r2)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    li      r3, 0x1
    b       branch_0x800110d0

branch_0x80010ff0:
    lwz     r3, 0x8c(r29)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80011004
    b       branch_0x80011008

branch_0x80011004:
    lwz     r30, 0x1c(r3)
branch_0x80011008:
    lbz     r0, R13Off_m0x719c(r13)
    extsb.  r0, r0
    bne-    branch_0x80011048
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBeeHiveWait@ha
    stw     r0, R13Off_m0x7198(r13)
    addi    r0, r3, __vvt__17TNerveBeeHiveWait@l
    lis     r3, __dt__17TNerveBeeHiveWaitFv@ha
    stw     r0, R13Off_m0x7198(r13)
    addi    r4, r3, __dt__17TNerveBeeHiveWaitFv@l
    addi    r3, r13, R13Off_m0x7198
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x719c(r13)
branch_0x80011048:
    addi    r0, r13, R13Off_m0x7198
    cmplw   r30, r0
    bne-    branch_0x800110c4
    lwz     r3, 0x8c(r29)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x7194(r13)
    extsb.  r0, r0
    bne-    branch_0x800110a0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBeeHiveFall@ha
    stw     r0, R13Off_m0x7190(r13)
    addi    r0, r3, __vvt__17TNerveBeeHiveFall@l
    lis     r3, __dt__17TNerveBeeHiveFallFv@ha
    stw     r0, R13Off_m0x7190(r13)
    addi    r4, r3, __dt__17TNerveBeeHiveFallFv@l
    addi    r3, r13, R13Off_m0x7190
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7194(r13)
branch_0x800110a0:
    lwz     r4, 0x8c(r29)
    addi    r3, r13, R13Off_m0x7190
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800110b8
    stw     r0, 0x1c(r4)
branch_0x800110b8:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x800110c4:
    li      r3, 0x1
    b       branch_0x800110d0

branch_0x800110cc:
    li      r3, 0x0
branch_0x800110d0:
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    lfd     f29, 0xc0(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xd8
    blr


.globl identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv: # 0x800110fc
    lfs     f1, -0x7e20(r2)
    stfs    f1, 0x0(r3)
    lfs     f0, -0x7e28(r2)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x20(r3)
    stfs    f0, 0x4(r3)
    stfs    f1, 0x14(r3)
    stfs    f0, 0x24(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0x18(r3)
    stfs    f1, 0x28(r3)
    blr


.globl __ct__Q29JGeometry13SMatrix34C_f_Fv
__ct__Q29JGeometry13SMatrix34C_f_Fv: # 0x8001112c
    blr


.globl setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f: # 0x80011130
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stfd    f29, 0x58(sp)
    stfd    f28, 0x50(sp)
    stfd    f27, 0x48(sp)
    fmr     f27, f1
    stw     r31, 0x44(sp)
    mr      r31, r3
    lfs     f4, 0x8(r5)
    lfs     f8, 0x0(r4)
    lfs     f2, 0x8(r4)
    lfs     f7, 0x4(r5)
    fmuls   f1, f8, f4
    lfs     f5, 0x0(r5)
    fmuls   f3, f2, f7
    lfs     f6, 0x4(r4)
    fmsubs  f29, f2, f5, f1
    fmuls   f2, f6, f5
    lfs     f0, -0x7e28(r2)
    fmsubs  f30, f6, f4, f3
    fmuls   f1, f29, f29
    fmsubs  f28, f8, f7, f2
    fmadds  f1, f30, f30, f1
    fmadds  f31, f28, f28, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x800111ac
    b       branch_0x800111d0

branch_0x800111ac:
    frsqrte f3, f31
    lfs     f2, -0x7dc8(r2)
    lfs     f0, -0x7dc4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x800111d0:
    lfs     f0, -0x7dd0(r2)
    fmr     f1, f31
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80011200
    lfs     f0, -0x7e28(r2)
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x8(r31)
    lfs     f0, -0x7e20(r2)
    stfs    f0, 0xc(r31)
    b       branch_0x80011264

branch_0x80011200:
    lfs     f2, 0x4(r4)
    lfs     f0, 0x4(r5)
    lfs     f3, 0x0(r4)
    fmuls   f0, f2, f0
    lfs     f2, 0x0(r5)
    lfs     f5, 0x8(r4)
    lfs     f4, 0x8(r5)
    fmadds  f0, f3, f2, f0
    fmadds  f2, f5, f4, f0
    bl      atan2f
    lfs     f0, -0x7dc8(r2)
    fmuls   f0, f0, f1
    fmuls   f27, f27, f0
    fmr     f1, f27
    bl      sinf
    fdivs   f0, f1, f31
    fmuls   f1, f30, f0
    fmuls   f2, f29, f0
    fmuls   f0, f28, f0
    stfs    f1, 0x0(r31)
    fmr     f1, f27
    stfs    f2, 0x4(r31)
    stfs    f0, 0x8(r31)
    bl      cosf
    stfs    f1, 0xc(r31)
branch_0x80011264:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lfd     f29, 0x58(sp)
    lfd     f28, 0x50(sp)
    lfd     f27, 0x48(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x70
    blr


.globl scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_: # 0x8001128c
    lfs     f0, 0x0(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r3)
    blr


.globl createRealoidActor__8TBeeHiveFP6MActor
createRealoidActor__8TBeeHiveFP6MActor: # 0x800112b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0xac
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80011308
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      __ct__13TRealoidActorFP6MActor
    lis     r3, __vvt__4TBee@ha
    addi    r3, r3, __vvt__4TBee@l
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r29)
    stw     r30, 0xa8(r29)
branch_0x80011308:
    lwz     r0, 0x24(sp)
    mr      r3, r29
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl load__8TBeeHiveFR20JSUMemoryInputStream
load__8TBeeHiveFR20JSUMemoryInputStream: # 0x80011328
    mflr    r0
    lis     r5, unk_80373b18@h
    stw     r0, 0x4(sp)
    li      r6, 0x2
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stmw    r25, 0xa4(sp)
    addi    r29, r5, unk_80373b18@l
    addi    r31, r3, 0x0
    addi    r25, r4, 0x0
    addi    r5, r29, 0xe0
    bl      loadDefault__8TRealoidFR20JSUMemoryInputStreamPCci
    addi    r3, r25, 0x0
    addi    r4, sp, 0x50
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r25, 0x0
    addi    r4, sp, 0x54
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x50(sp)
    addi    r4, r2, R2Off_m0x7da0
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x1ac(r31)
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x1b8(r31)
    addi    r28, sp, 0x70
    addi    r27, sp, 0x64
    lwz     r3, 0x150(r31)
    addi    r26, sp, 0x58
    lwz     r25, 0x1b8(r31)
    lwz     r0, 0x10(r3)
    lfs     f30, -0x7e20(r2)
    slwi    r0, r0, 2
    lfs     f31, -0x7e28(r2)
    add     r3, r25, r0
    addi    r30, r3, -0x4
    b       branch_0x80011410

branch_0x800113d0:
    stfs    f30, 0x70(sp)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    stfs    f31, 0x64(sp)
    addi    r6, r28, 0x0
    addi    r3, r2, R2Off_m0x7d9c
    stfs    f31, 0x58(sp)
    stfs    f30, 0x74(sp)
    stfs    f31, 0x68(sp)
    stfs    f31, 0x5c(sp)
    stfs    f30, 0x78(sp)
    stfs    f31, 0x6c(sp)
    stfs    f31, 0x60(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x0(r25)
    addi    r25, r25, 0x4
branch_0x80011410:
    cmplw   r25, r30
    bne+    branch_0x800113d0
    lwz     r3, 0x54(sp)
    addi    r4, r2, R2Off_m0x7da0
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x0(r25)
    lwz     r0, 0x0(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x80011478
    lfs     f0, -0x7e28(r2)
    addi    r6, sp, 0x94
    lfs     f1, -0x7e20(r2)
    addi    r5, sp, 0x88
    stfs    f0, 0x88(sp)
    addi    r4, sp, 0x7c
    stfs    f1, 0x94(sp)
    addi    r3, r2, R2Off_m0x7d9c
    stfs    f0, 0x7c(sp)
    stfs    f1, 0x98(sp)
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x80(sp)
    stfs    f1, 0x9c(sp)
    stfs    f0, 0x90(sp)
    stfs    f0, 0x84(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x0(r25)
branch_0x80011478:
    lwz     r3, 0x78(r31)
    addi    r4, r29, 0x100
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r3, 0x78(r31)
    addi    r4, r29, 0xf0
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    li      r29, 0x0
    stw     r3, 0x74(r31)
    mr      r30, r29
    b       branch_0x800114d8

branch_0x800114a8:
    lwz     r3, 0x154(r31)
    lwzx    r26, r3, r30
    lwz     r12, 0x0(r26)
    mr      r3, r26
    lwz     r12, 0xb4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x74(r26)
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
    ori     r0, r0, 0x2
    stw     r0, 0x74(r26)
branch_0x800114d8:
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    cmpw    r29, r0
    blt+    branch_0x800114a8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lmw     r25, 0xa4(sp)
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    mtlr    r0
    addi    sp, sp, 0xd0
    blr


.globl receiveMessageFromChild__8TBeeHiveFP4TBee
receiveMessageFromChild__8TBeeHiveFP4TBee: # 0x80011518
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x24(sp)
    lwz     r0, 0x74(r4)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800115f4
    lwz     r0, 0x74(r31)
    ori     r0, r0, 0x4
    stw     r0, 0x74(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x150(r30)
    lwz     r6, 0x1bc(r30)
    lwz     r3, 0x10(r3)
    lwz     r5, 0x1b8(r30)
    slwi    r4, r6, 2
    addi    r0, r3, -0x1
    cmpw    r6, r0
    lwzx    r29, r5, r4
    beq-    branch_0x80011594
    lis     r4, unk_2000000e@h
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r4, unk_2000000e@l
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r29, r3
branch_0x80011594:
    cmplwi  r29, 0x0
    beq-    branch_0x800115e8
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r29)
    stw     r0, 0x14(r29)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r29)
    lfs     f1, -0x7e28(r2)
    stfs    f1, 0xac(r29)
    lfs     f0, -0x7d94(r2)
    stfs    f0, 0xb0(r29)
    stfs    f1, 0xb4(r29)
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r29)
branch_0x800115e8:
    lwz     r3, 0x1bc(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1bc(r30)
branch_0x800115f4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl reset__8TBeeHiveFv
reset__8TBeeHiveFv: # 0x80011610
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stfd    f30, 0x120(sp)
    stw     r31, 0x11c(sp)
    mr      r31, r3
    lwz     r4, 0x194(r3)
    addi    r3, sp, 0xe4
    lwz     r0, 0x198(r31)
    stw     r4, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x19c(r31)
    stw     r0, 0x18(r31)
    lfs     f1, 0x30(r31)
    lfs     f2, -0x7e28(r2)
    lfs     f3, 0x38(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f5, 0xe4(sp)
    lfs     f4, 0xf8(sp)
    lfs     f3, 0x10c(sp)
    fadds   f6, f5, f4
    lfs     f1, -0x7e28(r2)
    fadds   f2, f3, f6
    fcmpo   cr0, f2, f1
    cror    2, 1, 2
    bne-    branch_0x80011708
    lfs     f0, -0x7e20(r2)
    fadds   f4, f2, f0
    fcmpo   cr0, f4, f1
    cror    2, 0, 2
    bne-    branch_0x80011694
    b       branch_0x800116b8

branch_0x80011694:
    frsqrte f3, f4
    lfs     f2, -0x7dc8(r2)
    lfs     f0, -0x7dc4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800116b8:
    lfs     f0, -0x7dc8(r2)
    fdivs   f2, f0, f4
    fmuls   f0, f0, f4
    stfs    f0, 0x184(r31)
    lfs     f1, 0x108(sp)
    lfs     f0, 0xfc(sp)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x178(r31)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x104(sp)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x17c(r31)
    lfs     f1, 0xf4(sp)
    lfs     f0, 0xe8(sp)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x180(r31)
    b       branch_0x80011904

branch_0x80011708:
    fcmpo   cr0, f5, f4
    cror    2, 1, 2
    bne-    branch_0x8001171c
    fmr     f0, f5
    b       branch_0x80011720

branch_0x8001171c:
    fmr     f0, f4
branch_0x80011720:
    fcmpo   cr0, f0, f3
    cror    2, 1, 2
    bne-    branch_0x80011730
    b       branch_0x80011734

branch_0x80011730:
    fmr     f0, f3
branch_0x80011734:
    fcmpu   cr0, f0, f5
    bne-    branch_0x800117d4
    fadds   f1, f4, f3
    lfs     f2, -0x7e20(r2)
    lfs     f0, -0x7e28(r2)
    fsubs   f1, f5, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80011760
    b       branch_0x80011784

branch_0x80011760:
    frsqrte f3, f4
    lfs     f2, -0x7dc8(r2)
    lfs     f0, -0x7dc4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80011784:
    lfs     f0, -0x7dc8(r2)
    fdivs   f2, f0, f4
    fmuls   f0, f0, f4
    stfs    f0, 0x178(r31)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0xf4(sp)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x17c(r31)
    lfs     f1, 0x104(sp)
    lfs     f0, 0xec(sp)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x180(r31)
    lfs     f1, 0x108(sp)
    lfs     f0, 0xfc(sp)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x184(r31)
    b       branch_0x80011904

branch_0x800117d4:
    fcmpu   cr0, f0, f4
    bne-    branch_0x80011874
    fadds   f1, f3, f5
    lfs     f2, -0x7e20(r2)
    lfs     f0, -0x7e28(r2)
    fsubs   f1, f4, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80011800
    b       branch_0x80011824

branch_0x80011800:
    frsqrte f3, f4
    lfs     f2, -0x7dc8(r2)
    lfs     f0, -0x7dc4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80011824:
    lfs     f0, -0x7dc8(r2)
    fdivs   f2, f0, f4
    fmuls   f0, f0, f4
    stfs    f0, 0x17c(r31)
    lfs     f1, 0xfc(sp)
    lfs     f0, 0x108(sp)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x180(r31)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0xf4(sp)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x178(r31)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x104(sp)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x184(r31)
    b       branch_0x80011904

branch_0x80011874:
    fsubs   f1, f3, f6
    lfs     f2, -0x7e20(r2)
    lfs     f0, -0x7e28(r2)
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80011894
    b       branch_0x800118b8

branch_0x80011894:
    frsqrte f3, f4
    lfs     f2, -0x7dc8(r2)
    lfs     f0, -0x7dc4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800118b8:
    lfs     f0, -0x7dc8(r2)
    fdivs   f2, f0, f4
    fmuls   f0, f0, f4
    stfs    f0, 0x180(r31)
    lfs     f1, 0x104(sp)
    lfs     f0, 0xec(sp)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x178(r31)
    lfs     f1, 0xfc(sp)
    lfs     f0, 0x108(sp)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x17c(r31)
    lfs     f1, 0xf4(sp)
    lfs     f0, 0xe8(sp)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x184(r31)
branch_0x80011904:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x7dc8(r2)
    fmuls   f30, f0, f1
    fmr     f1, f30
    bl      sinf
    fmr     f31, f1
    fmr     f1, f30
    bl      cosf
    lfs     f0, -0x7e28(r2)
    lis     r3, unk_80373c08@h
    addi    r4, r3, unk_80373c08@l
    stfs    f0, 0x168(r31)
    li      r0, 0x0
    stfs    f31, 0x16c(r31)
    stfs    f0, 0x170(r31)
    stfs    f1, 0x174(r31)
    lwz     r5, 0x168(r31)
    lwz     r3, 0x16c(r31)
    stw     r5, 0x158(r31)
    stw     r3, 0x15c(r31)
    lwz     r5, 0x170(r31)
    lwz     r3, 0x174(r31)
    stw     r5, 0x160(r31)
    stw     r3, 0x164(r31)
    stfs    f0, 0x188(r31)
    stfs    f0, 0x18c(r31)
    lfs     f0, -0x7d88(r2)
    stfs    f0, 0x190(r31)
    stw     r0, 0x1b0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x90
    stw     r0, 0xf0(r31)
    lwz     r3, 0x78(r31)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    lwz     r31, 0x11c(sp)
    addi    sp, sp, 0x130
    mtlr    r0
    blr


.globl init__8TBeeHiveFP12TLiveManager
init__8TBeeHiveFP12TLiveManager: # 0x800119b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r4, 0x70(r3)
    mr      r4, r31
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x18
    stw     r0, 0xf0(r31)
    lbz     r0, R13Off_m0x719c(r13)
    extsb.  r0, r0
    bne-    branch_0x80011a2c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveBeeHiveWait@ha
    stw     r0, R13Off_m0x7198(r13)
    addi    r0, r3, __vvt__17TNerveBeeHiveWait@l
    lis     r4, __dt__17TNerveBeeHiveWaitFv@ha
    stw     r0, R13Off_m0x7198(r13)
    lis     r3, unk_803e9a00@ha
    addi    r5, r3, unk_803e9a00@l
    addi    r4, r4, __dt__17TNerveBeeHiveWaitFv@l
    addi    r3, r13, R13Off_m0x7198
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x719c(r13)
branch_0x80011a2c:
    lwz     r7, 0x8c(r31)
    li      r8, 0x0
    lis     r4, unk_10000031@h
    stw     r8, 0x8(r7)
    addi    r0, r13, R13Off_m0x7198
    addi    r3, r31, 0x0
    stw     r8, 0x20(r7)
    addi    r4, r4, unk_10000031@l
    li      r5, 0x0
    stw     r0, 0x14(r7)
    lis     r6, 0x8000
    stw     r0, 0x18(r7)
    stw     r8, 0x1c(r7)
    lwz     r7, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r7, 0x194(r31)
    stw     r0, 0x198(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x19c(r31)
    stw     r8, 0x1b4(r31)
    stw     r8, 0x1bc(r31)
    lfs     f1, -0x7d90(r2)
    lfs     f3, -0x7d8c(r2)
    fmr     f2, f1
    fmr     f4, f3
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__8TBeeHiveFPCc
__ct__8TBeeHiveFPCc: # 0x80011ab4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__8TRealoidFPCc
    lis     r3, __vvt__8TBeeHive@ha
    addi    r3, r3, __vvt__8TBeeHive@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x1ac(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__4TBeeFP9THitActorUl
receiveMessage__4TBeeFP9THitActorUl: # 0x80011b00
    mflr    r0
    cmpwi   r5, 0x8
    stw     r0, 0x4(sp)
    addi    r7, r3, 0x0
    stwu    sp, -0x28(sp)
    beq-    branch_0x80011b70
    bge-    branch_0x80011b28
    cmpwi   r5, 0x4
    beq-    branch_0x80011b34
    b       branch_0x80011ba0

branch_0x80011b28:
    cmpwi   r5, 0xb
    beq-    branch_0x80011b8c
    b       branch_0x80011ba0

branch_0x80011b34:
    lwz     r0, 0x68(r7)
    cmplwi  r0, 0x0
    bne-    branch_0x80011ba0
    stw     r4, 0x68(r7)
    addi    r6, sp, 0x18
    addi    r4, r7, 0x10
    lfs     f0, -0x7e20(r2)
    li      r3, 0xe7
    li      r5, 0x0
    stfs    f0, 0x18(sp)
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x20(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    li      r3, 0x1
    b       branch_0x80011ba4

branch_0x80011b70:
    lwz     r0, 0x68(r7)
    cmplwi  r0, 0x0
    beq-    branch_0x80011ba0
    li      r0, 0x0
    stw     r0, 0x68(r7)
    li      r3, 0x1
    b       branch_0x80011ba4

branch_0x80011b8c:
    lwz     r3, 0xa8(r7)
    mr      r4, r7
    bl      receiveMessageFromChild__8TBeeHiveFP4TBee
    li      r3, 0x1
    b       branch_0x80011ba4

branch_0x80011ba0:
    li      r3, 0x0
branch_0x80011ba4:
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl init__4TBeeFv
init__4TBeeFv: # 0x80011bb4
    mflr    r0
    lis     r4, unk_1000002f@h
    stw     r0, 0x4(sp)
    addi    r4, r4, unk_1000002f@l
    li      r5, 0x1
    stwu    sp, -0x68(sp)
    lis     r6, 0x8000
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    lfs     f1, -0x7d84(r2)
    lfs     f3, -0x7d90(r2)
    stw     r3, 0x8(sp)
    fmr     f2, f1
    fmr     f4, f3
    lwz     r3, 0x8(sp)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_80373cf8@h
    addi    r31, r3, unk_80373cf8@l
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
    addi    r31, r3, 0x10
    addi    r3, sp, 0x38
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x38(sp)
    addi    r3, sp, 0x54
    addi    r4, sp, 0x34
    stw     r0, 0x34(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x54(sp)
    addi    r5, sp, 0x44
    addi    r4, r31, 0x0
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x40
    addi    r6, sp, 0x8
    lwz     r0, 0x50(sp)
    stw     r0, 0x44(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x8(sp)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __dt__15TBeeHiveManagerFv
__dt__15TBeeHiveManagerFv: # 0x80011c98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80011ce0
    lis     r3, __vvt__15TBeeHiveManager@ha
    addi    r0, r3, __vvt__15TBeeHiveManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x80011ce0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80011ce0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8TBeeHiveFv
__dt__8TBeeHiveFv: # 0x80011cfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80011d64
    lis     r3, __vvt__8TBeeHive@ha
    addi    r3, r3, __vvt__8TBeeHive@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80011d54
    lis     r3, __vvt__8TRealoid@ha
    addi    r3, r3, __vvt__8TRealoid@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80011d54:
    extsh.  r0, r31
    ble-    branch_0x80011d64
    mr      r3, r30
    bl      __dl__FPv
branch_0x80011d64:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__4TBeeFv
__dt__4TBeeFv: # 0x80011d80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80011e00
    lis     r3, __vvt__4TBee@ha
    addi    r3, r3, __vvt__4TBee@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80011df0
    lis     r3, __vvt__13TRealoidActor@ha
    addi    r3, r3, __vvt__13TRealoidActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80011df0
    lis     r3, __vvt__10TTakeActor@ha
    addi    r3, r3, __vvt__10TTakeActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__9THitActorFv
branch_0x80011df0:
    extsh.  r0, r31
    ble-    branch_0x80011e00
    mr      r3, r30
    bl      __dl__FPv
branch_0x80011e00:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_BeeHive_cpp
__sinit_BeeHive_cpp: # 0x80011e1c
    mflr    r0
    lis     r3, unk_803e9a00@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803e9a00@l
    lbz     r0, R13Off_m0x7204(r13)
    lfs     f0, -0x7d80(r2)
    extsb.  r0, r0
    stfs    f0, -0x71a0(r13)
    bne-    branch_0x80011e6c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80011e6c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80011e9c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80011e9c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80011ecc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80011ecc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80011efc
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80011efc:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80011f2c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80011f2c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80011f5c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80011f5c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80011f8c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80011f8c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80011fbc
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80011fbc:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80011fec
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80011fec:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8001201c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8001201c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8001204c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8001204c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8001207c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8001207c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800120ac
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x800120ac:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800120dc
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x800120dc:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8001210c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8001210c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_80012120
unk_80012120: # 0x80012120
    addi    r3, r3, -0x20
    b       __dt__4TBeeFv


.globl unk_80012128
unk_80012128: # 0x80012128
    addi    r3, r3, -0x20
    b       __dt__8TBeeHiveFv

