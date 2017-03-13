
.globl __dt__19TNerveNKFollowMarioFv
__dt__19TNerveNKFollowMarioFv: # 0x800623f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80062438
    lis     r3, 0x803b
    addi    r0, r3, 0x1790
    stw     r0, 0x0(r31)
    beq-    branch_0x80062428
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80062428:
    extsh.  r0, r4
    ble-    branch_0x80062438
    mr      r3, r31
    bl      __dl__FPv
branch_0x80062438:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveNKFollowMarioCFP24TSpineBase_10TLiveActor_
execute__19TNerveNKFollowMarioCFP24TSpineBase_10TLiveActor_: # 0x80062450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800624f8
    bl      SMS_GetMarioHitActor__Fv
    stw     r3, 0x3c(sp)
    cmplwi  r3, 0x0
    lfs     f0, -0x6d20(rtoc)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x48(sp)
    beq-    branch_0x800624b0
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x40(sp)
    stfs    f1, 0x44(sp)
    stfs    f2, 0x48(sp)
branch_0x800624b0:
    lwz     r3, 0x3c(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r30)
    lwz     r4, 0x40(sp)
    lwz     r3, 0x44(sp)
    stw     r4, 0xf8(r30)
    stw     r3, 0xfc(r30)
    lwz     r3, 0x48(sp)
    stw     r3, 0x100(r30)
    lwz     r3, 0x3c(sp)
    stw     r3, 0x104(r30)
    lwz     r4, 0x40(sp)
    lwz     r3, 0x44(sp)
    stw     r4, 0x108(r30)
    stw     r3, 0x10c(r30)
    lwz     r3, 0x48(sp)
    stw     r3, 0x110(r30)
    stw     r0, 0x118(r30)
branch_0x800624f8:
    lfs     f1, 0x140(r30)
    mr      r3, r30
    lfs     f2, -0x6d1c(rtoc)
    lfs     f3, -0x6d20(rtoc)
    bl      walkToCurPathNode__11TSpineEnemyFfff
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x404(r3)
    lfs     f2, 0x418(r3)
    mr      r3, r30
    lwz     r4, MarioHitActorPos(r13)
    lfs     f3, -0x6d20(rtoc)
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x800625c0
    lbz     r0, -0x6f1c(r13)
    extsb.  r0, r0
    bne-    branch_0x80062584
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f18(r13)
    addi    r0, r3, 0x1998
    lis     r4, 0x8006
    stw     r0, -0x6f18(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x770
    addi    r4, r4, 0x25dc
    subi    r3, r13, 0x6f18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f1c(r13)
branch_0x80062584:
    subi    r4, r13, 0x6f18
    cmplwi  r4, 0x0
    beq-    branch_0x800625b8
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800625b8
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800625b8:
    li      r3, 0x1
    b       branch_0x800625c4

branch_0x800625c0:
    li      r3, 0x0
branch_0x800625c4:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl __dt__31TNerveNameKuriJumpAttackPrepareFv
__dt__31TNerveNameKuriJumpAttackPrepareFv: # 0x800625dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80062620
    lis     r3, 0x803b
    addi    r0, r3, 0x1998
    stw     r0, 0x0(r31)
    beq-    branch_0x80062610
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80062610:
    extsh.  r0, r4
    ble-    branch_0x80062620
    mr      r3, r31
    bl      __dl__FPv
branch_0x80062620:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__19TNerveNKFollowMarioFv
theNerve__19TNerveNKFollowMarioFv: # 0x80062638
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6efc(r13)
    extsb.  r0, r0
    bne-    branch_0x80062688
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ef8(r13)
    addi    r0, r3, 0x1790
    lis     r4, 0x8006
    stw     r0, -0x6ef8(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x7a0
    addi    r4, r4, 0x23f4
    subi    r3, r13, 0x6ef8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6efc(r13)
branch_0x80062688:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6ef8
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__25TNerveNameKuriDrawPolluteCFP24TSpineBase_10TLiveActor_
execute__25TNerveNameKuriDrawPolluteCFP24TSpineBase_10TLiveActor_: # 0x8006269c
    li      r3, 0x1
    blr


.globl theNerve__25TNerveNameKuriDrawPolluteFv
theNerve__25TNerveNameKuriDrawPolluteFv: # 0x800626a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6f04(r13)
    extsb.  r0, r0
    bne-    branch_0x800626f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f00(r13)
    addi    r0, r3, 0x1968
    lis     r4, 0x8006
    stw     r0, -0x6f00(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x794
    addi    r4, r4, 0x2708
    subi    r3, r13, 0x6f00
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f04(r13)
branch_0x800626f4:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6f00
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__25TNerveNameKuriDrawPolluteFv
__dt__25TNerveNameKuriDrawPolluteFv: # 0x80062708
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006274c
    lis     r3, 0x803b
    addi    r0, r3, 0x1968
    stw     r0, 0x0(r31)
    beq-    branch_0x8006273c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8006273c:
    extsh.  r0, r4
    ble-    branch_0x8006274c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006274c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveNameKuriDiffuseCFP24TSpineBase_10TLiveActor_
execute__21TNerveNameKuriDiffuseCFP24TSpineBase_10TLiveActor_: # 0x80062764
    lwz     r3, 0x0(r4)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006277c
    li      r0, 0x1
    b       branch_0x80062780

branch_0x8006277c:
    li      r0, 0x0
branch_0x80062780:
    cmpwi   r0, 0x0
    bne-    branch_0x80062790
    li      r3, 0x1
    blr

branch_0x80062790:
    li      r3, 0x0
    blr


.globl theNerve__21TNerveNameKuriDiffuseFv
theNerve__21TNerveNameKuriDiffuseFv: # 0x80062798
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6f0c(r13)
    extsb.  r0, r0
    bne-    branch_0x800627e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f08(r13)
    addi    r0, r3, 0x1978
    lis     r4, 0x8006
    stw     r0, -0x6f08(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x788
    addi    r4, r4, 0x27fc
    subi    r3, r13, 0x6f08
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f0c(r13)
branch_0x800627e8:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6f08
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__21TNerveNameKuriDiffuseFv
__dt__21TNerveNameKuriDiffuseFv: # 0x800627fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80062840
    lis     r3, 0x803b
    addi    r0, r3, 0x1978
    stw     r0, 0x0(r31)
    beq-    branch_0x80062830
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80062830:
    extsh.  r0, r4
    ble-    branch_0x80062840
    mr      r3, r31
    bl      __dl__FPv
branch_0x80062840:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveNameKuriExplosionCFP24TSpineBase_10TLiveActor_
execute__23TNerveNameKuriExplosionCFP24TSpineBase_10TLiveActor_: # 0x80062858
    lwz     r3, 0x20(r4)
    lwz     r0, -0x7f24(r13)
    lwz     r4, 0x0(r4)
    cmpw    r3, r0
    bge-    branch_0x80062888
    lfs     f1, -0x6d18(rtoc)
    lfs     f0, 0x148(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x2c(r4)
    stfs    f0, 0x28(r4)
    stfs    f0, 0x24(r4)
    b       branch_0x800628c4

branch_0x80062888:
    lfs     f1, -0x6d14(rtoc)
    lfs     f0, 0x148(r4)
    lfs     f2, 0x24(r4)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800628bc
    lfs     f1, 0x2c(r4)
    lfs     f0, -0x7f28(r13)
    fmuls   f0, f1, f0
    stfs    f0, 0x2c(r4)
    stfs    f0, 0x28(r4)
    stfs    f0, 0x24(r4)
    b       branch_0x800628c4

branch_0x800628bc:
    li      r3, 0x1
    blr

branch_0x800628c4:
    li      r3, 0x0
    blr


.globl theNerve__23TNerveNameKuriExplosionFv
theNerve__23TNerveNameKuriExplosionFv: # 0x800628cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6f14(r13)
    extsb.  r0, r0
    bne-    branch_0x8006291c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f10(r13)
    addi    r0, r3, 0x1988
    lis     r4, 0x8006
    stw     r0, -0x6f10(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x77c
    addi    r4, r4, 0x2930
    subi    r3, r13, 0x6f10
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f14(r13)
branch_0x8006291c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6f10
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__23TNerveNameKuriExplosionFv
__dt__23TNerveNameKuriExplosionFv: # 0x80062930
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80062974
    lis     r3, 0x803b
    addi    r0, r3, 0x1988
    stw     r0, 0x0(r31)
    beq-    branch_0x80062964
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80062964:
    extsh.  r0, r4
    ble-    branch_0x80062974
    mr      r3, r31
    bl      __dl__FPv
branch_0x80062974:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__31TNerveNameKuriJumpAttackPrepareCFP24TSpineBase_10TLiveActor_
execute__31TNerveNameKuriJumpAttackPrepareCFP24TSpineBase_10TLiveActor_: # 0x8006298c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x1
    bne-    branch_0x80062a50
    bl      SMS_GetMarioHitActor__Fv
    stw     r3, 0x34(sp)
    cmplwi  r3, 0x0
    lfs     f0, -0x6d20(rtoc)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    beq-    branch_0x800629ec
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x38(sp)
    stfs    f1, 0x3c(sp)
    stfs    f2, 0x40(sp)
branch_0x800629ec:
    lwz     r4, 0x34(sp)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r4, 0xf4(r31)
    li      r4, 0x6
    lwz     r6, 0x38(sp)
    lwz     r5, 0x3c(sp)
    stw     r6, 0xf8(r31)
    stw     r5, 0xfc(r31)
    lwz     r5, 0x40(sp)
    stw     r5, 0x100(r31)
    lwz     r5, 0x34(sp)
    stw     r5, 0x104(r31)
    lwz     r6, 0x38(sp)
    lwz     r5, 0x3c(sp)
    stw     r6, 0x108(r31)
    stw     r5, 0x10c(r31)
    lwz     r5, 0x40(sp)
    stw     r5, 0x110(r31)
    stw     r0, 0x118(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80062b5c

branch_0x80062a50:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x6
    bne-    branch_0x80062a64
    li      r0, 0x1
    b       branch_0x80062a68

branch_0x80062a64:
    li      r0, 0x0
branch_0x80062a68:
    clrlwi. r0, r0, 24
    beq-    branch_0x80062b5c
    lwz     r4, MarioHitActorPos(r13)
    mr      r3, r31
    lfs     f1, -0x6d10(rtoc)
    lfs     f2, -0x6d0c(rtoc)
    lfs     f3, -0x6d20(rtoc)
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x80062b44
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x80062b44
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x80062aac
    li      r0, 0x1
    b       branch_0x80062ab0

branch_0x80062aac:
    li      r0, 0x0
branch_0x80062ab0:
    cmpwi   r0, 0x0
    bne-    branch_0x80062b5c
    lbz     r0, 0x1a8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80062b5c
    lbz     r0, -0x6f24(r13)
    extsb.  r0, r0
    bne-    branch_0x80062b08
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f20(r13)
    addi    r0, r3, 0x19a8
    lis     r4, 0x8006
    stw     r0, -0x6f20(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x764
    addi    r4, r4, 0x2b78
    subi    r3, r13, 0x6f20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f24(r13)
branch_0x80062b08:
    subi    r4, r13, 0x6f20
    cmplwi  r4, 0x0
    beq-    branch_0x80062b3c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80062b3c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80062b3c:
    li      r3, 0x1
    b       branch_0x80062b60

branch_0x80062b44:
    lfs     f1, -0x6d20(rtoc)
    mr      r3, r31
    lwz     r4, 0x1a4(r31)
    fmr     f3, f1
    lfs     f2, 0x38c(r4)
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x80062b5c:
    li      r3, 0x0
branch_0x80062b60:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __dt__24TNerveNameKuriJumpAttackFv
__dt__24TNerveNameKuriJumpAttackFv: # 0x80062b78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80062bbc
    lis     r3, 0x803b
    addi    r0, r3, 0x19a8
    stw     r0, 0x0(r31)
    beq-    branch_0x80062bac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80062bac:
    extsh.  r0, r4
    ble-    branch_0x80062bbc
    mr      r3, r31
    bl      __dl__FPv
branch_0x80062bbc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__31TNerveNameKuriJumpAttackPrepareFv
theNerve__31TNerveNameKuriJumpAttackPrepareFv: # 0x80062bd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6f1c(r13)
    extsb.  r0, r0
    bne-    branch_0x80062c24
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f18(r13)
    addi    r0, r3, 0x1998
    lis     r4, 0x8006
    stw     r0, -0x6f18(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x770
    addi    r4, r4, 0x25dc
    subi    r3, r13, 0x6f18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f1c(r13)
branch_0x80062c24:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6f18
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__24TNerveNameKuriJumpAttackCFP24TSpineBase_10TLiveActor_
execute__24TNerveNameKuriJumpAttackCFP24TSpineBase_10TLiveActor_: # 0x80062c38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stw     r31, 0x114(sp)
    stw     r30, 0x110(sp)
    mr      r30, r4
    stw     r29, 0x10c(sp)
    lwz     r3, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r3, 0x1
    bgt-    branch_0x80062d00
    bl      SMS_GetMarioHitActor__Fv
    stw     r3, 0xc0(sp)
    cmplwi  r3, 0x0
    lfs     f0, -0x6d20(rtoc)
    stfs    f0, 0xc4(sp)
    stfs    f0, 0xc8(sp)
    stfs    f0, 0xcc(sp)
    beq-    branch_0x80062ca0
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0xc4(sp)
    stfs    f1, 0xc8(sp)
    stfs    f2, 0xcc(sp)
branch_0x80062ca0:
    lwz     r3, 0xc0(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0xc4(sp)
    lwz     r3, 0xc8(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0xcc(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0xc0(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0xc4(sp)
    lwz     r3, 0xc8(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0xcc(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x1b0(r31)
    lfs     f0, -0x6d20(rtoc)
    stfs    f0, 0x1ac(r31)
    stfs    f0, 0x1b8(r31)
    b       branch_0x800630fc

branch_0x80062d00:
    lwz     r5, 0x15c(r31)
    lwz     r4, 0x1a4(r31)
    cmpwi   r5, 0x6
    bne-    branch_0x80062d18
    li      r0, 0x1
    b       branch_0x80062d1c

branch_0x80062d18:
    li      r0, 0x0
branch_0x80062d1c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80062d60
    cmpwi   r3, 0x0
    ble-    branch_0x80062d48
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800630fc

branch_0x80062d48:
    lfs     f1, -0x6d20(rtoc)
    mr      r3, r31
    lfs     f2, 0x38c(r4)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    b       branch_0x800630fc

branch_0x80062d60:
    cmpwi   r5, 0x3
    bne-    branch_0x80062d70
    li      r0, 0x1
    b       branch_0x80062d74

branch_0x80062d70:
    li      r0, 0x0
branch_0x80062d74:
    clrlwi. r0, r0, 24
    beq-    branch_0x80063010
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6d08(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80062ea8
    lwz     r5, MarioHitActorPos(r13)
    mr      r3, r31
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xe4(sp)
    lwz     r12, 0x0(r31)
    lwz     r4, 0x1a4(r31)
    lwz     r12, 0xe8(r12)
    lfs     f31, 0x378(r4)
    mtlr    r12
    blrl
    fmr     f2, f1
    mr      r4, r31
    fmr     f1, f31
    addi    r3, sp, 0xb4
    addi    r5, sp, 0xdc
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0xb4(sp)
    li      r5, 0x0
    lwz     r3, 0xb8(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0xbc(sp)
    stw     r3, 0xd4(sp)
    lfs     f0, -0x6d14(rtoc)
    stw     r0, 0xd8(sp)
    lfs     f1, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xd8(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lfs     f0, -0x6d20(rtoc)
    stfs    f0, 0x1ac(r31)
    stfs    f0, 0x1b8(r31)
    stw     r5, 0xa4(sp)
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xb0(sp)
    lwz     r0, 0xa4(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0xa8(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0xb0(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0xa4(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0xa8(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0xb0(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
branch_0x80062ea8:
    lfs     f1, -0x6d20(rtoc)
    mr      r3, r31
    lfs     f2, -0x6d04(rtoc)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    lwz     r5, 0x1a4(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r29, 0x3f0(r5)
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x6d08(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80062f24
    lfs     f1, 0x1b8(r31)
    lfs     f0, -0x6d00(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x1b8(r31)
    lha     r0, 0x1bc(r31)
    subf    r0, r29, r0
    extsh   r3, r0
    cmpwi   r3, 0xff
    ble-    branch_0x80062f08
    li      r3, 0xff
    b       branch_0x80062f14

branch_0x80062f08:
    extsh.  r0, r3
    bge-    branch_0x80062f14
    li      r3, 0x0
branch_0x80062f14:
    sth     r3, 0x1c0(r31)
    sth     r3, 0x1be(r31)
    sth     r3, 0x1bc(r31)
    b       branch_0x80062f98

branch_0x80062f24:
    lwz     r0, 0x20(r30)
    lis     r3, 0x4330
    lfd     f2, -0x6cf0(rtoc)
    mullw   r4, r29, r0
    lfs     f3, -0x6cfc(rtoc)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea8(r13)
    lfs     f0, -0x6cf8(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x104(sp)
    stw     r3, 0x100(sp)
    lfd     f1, 0x100(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fctiwz  f1, f1
    stfd    f1, 0xf8(sp)
    lwz     r3, 0xfc(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fabs    f1, f1
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xf0(sp)
    lwz     r0, 0xf4(sp)
    sth     r0, 0x1c0(r31)
    sth     r0, 0x1be(r31)
    sth     r0, 0x1bc(r31)
branch_0x80062f98:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80062fac
    li      r0, 0x1
    b       branch_0x80062fb0

branch_0x80062fac:
    li      r0, 0x0
branch_0x80062fb0:
    cmpwi   r0, 0x0
    beq-    branch_0x80062fc0
    lfs     f0, 0x1b0(r31)
    stfs    f0, 0x24(r31)
branch_0x80062fc0:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80062fd4
    li      r0, 0x1
    b       branch_0x80062fd8

branch_0x80062fd4:
    li      r0, 0x0
branch_0x80062fd8:
    cmpwi   r0, 0x0
    bne-    branch_0x800630fc
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800630fc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800630fc

branch_0x80063010:
    cmpwi   r5, 0x2
    bne-    branch_0x80063020
    li      r0, 0x1
    b       branch_0x80063024

branch_0x80063020:
    li      r0, 0x0
branch_0x80063024:
    clrlwi. r0, r0, 24
    beq-    branch_0x800630fc
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800630c0
    lwz     r0, 0x118(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80063078
    addi    r3, sp, 0x74
    addi    r4, r31, 0x114
    bl      pop__23TSolidStack_9TPathNode_Fv
    lwz     r0, 0x74(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x80(sp)
    stw     r0, 0x100(r31)
branch_0x80063078:
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    beq-    branch_0x800630b8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800630b8
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800630b8:
    li      r3, 0x1
    b       branch_0x80063100

branch_0x800630c0:
    lfs     f1, -0x6cf4(rtoc)
    lfs     f0, 0x1ac(r31)
    lwz     r3, 0x1a4(r31)
    fmuls   f1, f1, f0
    lfs     f0, -0x6d20(rtoc)
    lfs     f2, 0x3c8(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800630e8
    fmr     f1, f0
    b       branch_0x800630f8

branch_0x800630e8:
    fneg    f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x800630f8
    fmr     f1, f0
branch_0x800630f8:
    stfs    f1, 0x1ac(r31)
branch_0x800630fc:
    li      r3, 0x0
branch_0x80063100:
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lwz     r31, 0x114(sp)
    mtlr    r0
    lwz     r30, 0x110(sp)
    lwz     r29, 0x10c(sp)
    addi    sp, sp, 0x120
    blr


.globl theNerve__24TNerveNameKuriJumpAttackFv
theNerve__24TNerveNameKuriJumpAttackFv: # 0x80063120
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6f24(r13)
    extsb.  r0, r0
    bne-    branch_0x80063170
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f20(r13)
    addi    r0, r3, 0x19a8
    lis     r4, 0x8006
    stw     r0, -0x6f20(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x764
    addi    r4, r4, 0x2b78
    subi    r3, r13, 0x6f20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f24(r13)
branch_0x80063170:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6f20
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__18TNerveNameKuriLandCFP24TSpineBase_10TLiveActor_
execute__18TNerveNameKuriLandCFP24TSpineBase_10TLiveActor_: # 0x80063184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x800631a8
    li      r0, 0x1
    b       branch_0x800631ac

branch_0x800631a8:
    li      r0, 0x0
branch_0x800631ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x800631cc
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80063200
    li      r3, 0x1
    b       branch_0x80063204

branch_0x800631cc:
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800631e0
    li      r0, 0x1
    b       branch_0x800631e4

branch_0x800631e0:
    li      r0, 0x0
branch_0x800631e4:
    cmpwi   r0, 0x0
    bne-    branch_0x80063200
    lwz     r12, 0x0(r3)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80063200:
    li      r3, 0x0
branch_0x80063204:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl theNerve__18TNerveNameKuriLandFv
theNerve__18TNerveNameKuriLandFv: # 0x80063214
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6f2c(r13)
    extsb.  r0, r0
    bne-    branch_0x80063264
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f28(r13)
    addi    r0, r3, 0x19b8
    lis     r4, 0x8006
    stw     r0, -0x6f28(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x758
    addi    r4, r4, 0x3278
    subi    r3, r13, 0x6f28
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f2c(r13)
branch_0x80063264:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6f28
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TNerveNameKuriLandFv
__dt__18TNerveNameKuriLandFv: # 0x80063278
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800632bc
    lis     r3, 0x803b
    addi    r0, r3, 0x19b8
    stw     r0, 0x0(r31)
    beq-    branch_0x800632ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800632ac:
    extsh.  r0, r4
    ble-    branch_0x800632bc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800632bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createEnemyInstance__25TDiffusionNameKuriManagerFv
createEnemyInstance__25TDiffusionNameKuriManagerFv: # 0x800632d4
    mflr    r0
    li      r3, 0x1d0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80063318
    lis     r4, 0x8038
    addi    r3, r31, 0x0
    subi    r4, r4, 0x6970
    bl      __ct__9TNameKuriFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x17b0
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r31)
branch_0x80063318:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__9TNameKuriFv
__dt__9TNameKuriFv: # 0x80063330
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800633b0
    lis     r3, 0x803b
    addi    r3, r3, 0x1a20
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800633a0
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800633a0
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800633a0:
    extsh.  r0, r31
    ble-    branch_0x800633b0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800633b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__25TDiffusionNameKuriManagerFR20JSUMemoryInputStream
load__25TDiffusionNameKuriManagerFR20JSUMemoryInputStream: # 0x800633cc
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r23, 0x1c(sp)
    addi    r24, r3, 0x0
    addi    r23, r4, 0x0
    subi    r30, r5, 0x6ac0
    li      r3, 0x41c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8006364c
    stw     r25, 0x10(sp)
    addi    r4, r30, 0x160
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x180
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x180
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x32c(r31)
    li      r0, 0x7d0
    lis     r3, 0x803b
    stw     r0, 0x33c(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x190
    stw     r26, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x190
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x340(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x6ce8(rtoc)
    addi    r3, r30, 0x1a0
    stfs    f0, 0x350(r31)
    stw     r28, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x1a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x354(r31)
    addi    r3, r30, 0x1b8
    lfs     f0, -0x6ce4(rtoc)
    stfs    f0, 0x364(r31)
    stw     r28, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x1b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x368(r31)
    addi    r3, r30, 0x1c8
    lfs     f0, -0x6ce0(rtoc)
    stfs    f0, 0x378(r31)
    stw     r28, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x1c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x37c(r31)
    addi    r3, r30, 0x1dc
    lfs     f0, -0x6d14(rtoc)
    stfs    f0, 0x38c(r31)
    stw     r28, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x1dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x390(r31)
    li      r0, 0x64
    addi    r3, r30, 0x1f0
    stw     r0, 0x3a0(r31)
    stw     r26, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x1f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a4(r31)
    addi    r3, r30, 0x200
    lfs     f0, -0x6d0c(rtoc)
    stfs    f0, 0x3b4(r31)
    stw     r28, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x200
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b8(r31)
    addi    r3, r30, 0x210
    lfs     f0, -0x6d0c(rtoc)
    stfs    f0, 0x3c8(r31)
    stw     r28, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x210
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3cc(r31)
    addi    r3, r30, 0x220
    lfs     f0, -0x6cdc(rtoc)
    stfs    f0, 0x3dc(r31)
    stw     r28, 0x3cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3e0
    addi    r6, r30, 0x220
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3e0(r31)
    li      r0, 0x19
    addi    r3, r30, 0x234
    stw     r0, 0x3f0(r31)
    stw     r26, 0x3e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f4
    addi    r6, r30, 0x234
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f4(r31)
    addi    r3, r30, 0x248
    lfs     f0, -0x6cd8(rtoc)
    stfs    f0, 0x404(r31)
    stw     r28, 0x3f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x408
    addi    r6, r30, 0x248
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x408(r31)
    mr      r3, r31
    lfs     f0, -0x6cd4(rtoc)
    stfs    f0, 0x418(r31)
    stw     r28, 0x408(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x8006364c:
    stw     r25, 0x38(r24)
    addi    r3, r24, 0x0
    addi    r4, r23, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r23, 0x1c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl getBasNameTable__9TNameKuriCFv
getBasNameTable__9TNameKuriCFv: # 0x80063670
    lis     r3, 0x803b
    addi    r3, r3, 0x1758
    blr


.globl isCollidMove__9TNameKuriFP9THitActor
isCollidMove__9TNameKuriFP9THitActor: # 0x8006367c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lwz     r0, 0x4c(r4)
    clrrwi  r3, r0, 16
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x0
    bne-    branch_0x80063718
    lbz     r0, -0x6f24(r13)
    extsb.  r0, r0
    bne-    branch_0x800636e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f20(r13)
    addi    r0, r3, 0x19a8
    lis     r4, 0x8006
    stw     r0, -0x6f20(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x764
    addi    r4, r4, 0x2b78
    subi    r3, r13, 0x6f20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f24(r13)
branch_0x800636e8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f20
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80063710
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80063710:
    li      r3, 0x1
    b       branch_0x80063764

branch_0x80063718:
    lwz     r0, 0xf0(r4)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006372c
    li      r0, 0x1
    b       branch_0x80063730

branch_0x8006372c:
    li      r0, 0x0
branch_0x80063730:
    cmpwi   r0, 0x0
    bne-    branch_0x80063760
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006374c
    li      r0, 0x1
    b       branch_0x80063750

branch_0x8006374c:
    li      r0, 0x0
branch_0x80063750:
    cmpwi   r0, 0x0
    bne-    branch_0x80063760
    li      r3, 0x1
    b       branch_0x80063764

branch_0x80063760:
    li      r3, 0x0
branch_0x80063764:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl isHitValid__9TNameKuriFUl
isHitValid__9TNameKuriFUl: # 0x80063778
    li      r0, 0x1
    cmplwi  r4, 0xf
    stb     r0, 0x198(r3)
    bne-    branch_0x80063790
    li      r0, 0x0
    stb     r0, 0x198(r3)
branch_0x80063790:
    lwz     r5, 0xf0(r3)
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x800637a4
    li      r3, 0x0
    blr

branch_0x800637a4:
    cmplwi  r4, 0xb
    bne-    branch_0x800637b4
    ori     r0, r5, 0x2
    stw     r0, 0xf0(r3)
branch_0x800637b4:
    li      r3, 0x1
    blr


.globl endHitWaterJump__9TNameKuriFv
endHitWaterJump__9TNameKuriFv: # 0x800637bc
    lfs     f0, 0x148(r3)
    stfs    f0, 0x24(r3)
    stfs    f0, 0x28(r3)
    stfs    f0, 0x2c(r3)
    blr


.globl behaveToFindMario__9TNameKuriFv
behaveToFindMario__9TNameKuriFv: # 0x800637d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r31)
    beq-    branch_0x8006381c
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x8006381c
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8006381c:
    lbz     r0, -0x6efc(r13)
    extsb.  r0, r0
    bne-    branch_0x80063860
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ef8(r13)
    addi    r0, r3, 0x1790
    lis     r4, 0x8006
    stw     r0, -0x6ef8(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x7a0
    addi    r4, r4, 0x23f4
    subi    r3, r13, 0x6ef8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6efc(r13)
branch_0x80063860:
    subi    r5, r13, 0x6ef8
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80063898
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x80063898
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x80063898:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl attackToMario__9TNameKuriFv
attackToMario__9TNameKuriFv: # 0x800638ac
    mflr    r0
    li      r4, MARIOMSG_HURT
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lbz     r0, -0x6f24(r13)
    extsb.  r0, r0
    bne-    branch_0x8006390c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f20(r13)
    addi    r0, r3, 0x19a8
    lis     r4, 0x8006
    stw     r0, -0x6f20(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x764
    addi    r4, r4, 0x2b78
    subi    r3, r13, 0x6f20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f24(r13)
branch_0x8006390c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f20
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80063968
    lfs     f0, -0x6d20(rtoc)
    mr      r3, r31
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    lwz     r4, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x28(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80063968:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl reset__9TNameKuriFv
reset__9TNameKuriFv: # 0x8006397c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r31, -0x6f30(r13)
    bl      reset__12TWalkerEnemyFv
    lfs     f0, -0x6d00(rtoc)
    stfs    f0, 0x1b0(r31)
    lfs     f1, -0x6d20(rtoc)
    lfs     f0, -0x6ccc(rtoc)
    stfs    f1, 0x2c(sp)
    stfs    f0, 0x30(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x2c(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6cf0(rtoc)
    stw     r0, 0x3c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6cc8(rtoc)
    li      r4, 0x0
    stw     r0, 0x38(sp)
    lfs     f1, 0x2c(sp)
    lfd     f2, 0x38(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1b4(r31)
    stw     r4, 0x194(r31)
    stb     r4, 0x198(r31)
    lfs     f0, -0x6d20(rtoc)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x28(sp)
    stw     r0, 0xb4(r31)
    lfs     f0, 0x148(r31)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    sth     r4, 0x1c2(r31)
    sth     r4, 0x1c0(r31)
    sth     r4, 0x1be(r31)
    sth     r4, 0x1bc(r31)
    lwz     r5, 0x70(r31)
    lwz     r3, 0x60(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x60(r5)
    lwz     r0, 0x60(r5)
    cmpwi   r0, 0x7
    blt-    branch_0x80063a6c
    stw     r4, 0x60(r5)
branch_0x80063a6c:
    lwz     r4, 0x60(r5)
    lis     r3, 0x8038
    subi    r0, r3, 0x69b4
    slwi    r3, r4, 3
    add     r4, r0, r3
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1c4(r31)
    stw     r0, 0x1c8(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl setMActorAndKeeper__9TNameKuriFv
setMActorAndKeeper__9TNameKuriFv: # 0x80063ab4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80063aec
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80063aec:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x697c
    lwz     r3, 0x78(r31)
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setMeltAnm__9TNameKuriFv
setMeltAnm__9TNameKuriFv: # 0x80063b20
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x74(r30)
    li      r4, 0x84
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r5)
    li      r7, 0x0
    lwz     r5, 0x58(r5)
    addi    r31, r5, 0x60
    addi    r5, r31, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80063bac
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
branch_0x80063bac:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x0
    li      r4, 0x83
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80063bfc
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
branch_0x80063bfc:
    lfs     f0, -0x6d20(rtoc)
    li      r4, 0x2802
    stfs    f0, 0x48(sp)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x50(sp)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80063c60
    addi    r4, r30, 0x10
    li      r3, 0x2802
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80063c60:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl setWaitAnm__9TNameKuriFv
setWaitAnm__9TNameKuriFv: # 0x80063c78
    mflr    r0
    li      r4, 0x6
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


.globl setAfterDeadEffect__9TNameKuriFv
setAfterDeadEffect__9TNameKuriFv: # 0x80063ca8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80063d0c
    bl      SMS_GetMarioWaterGun__Fv
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r31, 0xcc(r3)
    bl      SMS_GetMarioWaterGun__Fv
    lwz     r0, 0x1c80(r3)
    slwi    r0, r0, 1
    cmpw    r0, r31
    bge-    branch_0x80063d0c
    lis     r4, 0x2000
    lwz     r3, gpItemManager(r13)
    lfs     f1, 0x10(r30)
    addi    r4, r4, 0x1
    lfs     f2, 0x14(r30)
    li      r5, 0x1
    lfs     f3, 0x18(r30)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x80063d0c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl setDeadAnm__9TNameKuriFv
setDeadAnm__9TNameKuriFv: # 0x80063d24
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, gpMSound(r13)
    li      r4, 0x2800
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80063d80
    addi    r4, r30, 0x10
    li      r3, 0x2800
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80063d80:
    lwz     r5, 0x74(r30)
    li      r4, 0x84
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r5)
    li      r7, 0x0
    lwz     r5, 0x58(r5)
    addi    r31, r5, 0x60
    addi    r5, r31, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80063de0
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
branch_0x80063de0:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x0
    li      r4, 0x83
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80063e30
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
branch_0x80063e30:
    lfs     f0, -0x6d20(rtoc)
    stfs    f0, 0x48(sp)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x50(sp)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl setWalkAnm__9TNameKuriFv
setWalkAnm__9TNameKuriFv: # 0x80063e7c
    mflr    r0
    li      r4, 0x7
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


.globl setGenerateAnm__9TNameKuriFv
setGenerateAnm__9TNameKuriFv: # 0x80063eac
    mflr    r0
    li      r4, 0x5
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6d20(rtoc)
    stfs    f0, 0xc(sp)
    stfs    f0, 0x10(sp)
    stfs    f0, 0x14(sp)
    lwz     r3, 0xc(sp)
    lwz     r0, 0x10(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x14(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setBckAnm__9TNameKuriFi
setBckAnm__9TNameKuriFi: # 0x80063f10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      setBckAnm__11TSmallEnemyFi
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getGravityY__9TNameKuriCFv
getGravityY__9TNameKuriCFv: # 0x80063f30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80063f58
    lfs     f1, -0x6cc4(rtoc)
    b       branch_0x80063fc0

branch_0x80063f58:
    lbz     r0, -0x6f24(r13)
    extsb.  r0, r0
    bne-    branch_0x80063f9c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f20(r13)
    addi    r0, r3, 0x19a8
    lis     r4, 0x8006
    stw     r0, -0x6f20(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x764
    addi    r4, r4, 0x2b78
    subi    r3, r13, 0x6f20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f24(r13)
branch_0x80063f9c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f20
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80063fbc
    lwz     r3, 0x1a4(r31)
    lfs     f1, 0x364(r3)
    b       branch_0x80063fc0

branch_0x80063fbc:
    lfs     f1, 0xcc(r31)
branch_0x80063fc0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl behaveToWater__9TNameKuriFP9THitActor
behaveToWater__9TNameKuriFP9THitActor: # 0x80063fd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    bl      theNerve__28TNerveSmallEnemyHitWaterJumpFv
    cmplw   r30, r3
    beq-    branch_0x800640fc
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x800640fc
    lbz     r0, -0x6f14(r13)
    extsb.  r0, r0
    bne-    branch_0x80064058
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f10(r13)
    addi    r0, r3, 0x1988
    lis     r4, 0x8006
    stw     r0, -0x6f10(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x77c
    addi    r4, r4, 0x2930
    subi    r3, r13, 0x6f10
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f14(r13)
branch_0x80064058:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f10
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800640fc
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r31)
    beq-    branch_0x800640c4
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800640b8
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x800640b8
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x800640b8:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x800640c4:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800640d8
    li      r0, 0x1
    b       branch_0x800640dc

branch_0x800640d8:
    li      r0, 0x0
branch_0x800640dc:
    cmpwi   r0, 0x0
    bne-    branch_0x800640f0
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r31)
branch_0x800640f0:
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
branch_0x800640fc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl setBehavior__9TNameKuriFv
setBehavior__9TNameKuriFv: # 0x80064114
    blr


.globl moveObject__9TNameKuriFv
moveObject__9TNameKuriFv: # 0x80064118
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    stw     r30, 0x60(sp)
    bl      moveObject__12TWalkerEnemyFv
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x6d20(rtoc)
    stw     r3, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x58(sp)
    lfs     f1, 0x54(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8006423c
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r30, r3
    beq-    branch_0x80064184
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__18TNerveWalkerEscapeFv
    cmplw   r30, r3
    bne-    branch_0x8006423c
branch_0x80064184:
    lfs     f1, 0x14(r31)
    lfs     f0, 0xc8(r31)
    lwz     r3, 0x1a4(r31)
    fsubs   f1, f1, f0
    lfs     f0, 0x350(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8006423c
    lbz     r0, -0x6f2c(r13)
    extsb.  r0, r0
    bne-    branch_0x800641e4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f28(r13)
    addi    r0, r3, 0x19b8
    lis     r4, 0x8006
    stw     r0, -0x6f28(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x758
    addi    r4, r4, 0x3278
    subi    r3, r13, 0x6f28
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f2c(r13)
branch_0x800641e4:
    subi    r6, r13, 0x6f28
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x8006423c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80064230
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80064230
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80064230:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8006423c:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80064250
    li      r0, 0x1
    b       branch_0x80064254

branch_0x80064250:
    li      r0, 0x0
branch_0x80064254:
    cmpwi   r0, 0x0
    bne-    branch_0x800642ac
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x7
    bne-    branch_0x80064270
    li      r0, 0x1
    b       branch_0x80064274

branch_0x80064270:
    li      r0, 0x0
branch_0x80064274:
    clrlwi. r0, r0, 24
    beq-    branch_0x800642ac
    lwz     r3, gpMSound(r13)
    li      r4, 0x2006
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800642ac
    addi    r4, r31, 0x10
    li      r3, 0x2006
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800642ac:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8006432c
    lwz     r3, 0x194(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x194(r31)
    lwz     r4, 0x1a4(r31)
    lwz     r3, 0x194(r31)
    lwz     r4, 0x33c(r4)
    addi    r0, r3, 0x64
    cmpw    r0, r4
    ble-    branch_0x8006430c
    lfs     f1, -0x6d14(rtoc)
    lfs     f0, 0x148(r31)
    lfs     f2, 0x24(r31)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8006430c
    lfs     f1, 0x2c(r31)
    lfs     f0, -0x6cc0(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x24(r31)
branch_0x8006430c:
    lwz     r0, 0x194(r31)
    cmpw    r0, r4
    ble-    branch_0x8006432c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8006432c:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl perform__9TNameKuriFUlPQ26JDrama9TGraphics
perform__9TNameKuriFUlPQ26JDrama9TGraphics: # 0x80064344
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x88(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x84(sp)
    addi    r29, r3, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x1cc(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800643cc
    addi    r3, sp, 0x40
    bl      SMS_GetLightPerspectiveForEffectMtx__FPA4_f
    lwz     r3, 0x74(r29)
    li      r4, 0x2
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x40
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
branch_0x800643cc:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl setEffectMtx__13J3DTexMtxInfoFPA4_f
setEffectMtx__13J3DTexMtxInfoFPA4_f: # 0x800643e8
    lfs     f0, 0x0(r4)
    stfs    f0, 0x24(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x2c(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x14(r4)
    stfs    f0, 0x38(r3)
    lfs     f0, 0x18(r4)
    stfs    f0, 0x3c(r3)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x40(r3)
    lfs     f0, 0x20(r4)
    stfs    f0, 0x44(r3)
    lfs     f0, 0x24(r4)
    stfs    f0, 0x48(r3)
    lfs     f0, 0x28(r4)
    stfs    f0, 0x4c(r3)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x50(r3)
    lfs     f0, -0x6d20(rtoc)
    stfs    f0, 0x5c(r3)
    stfs    f0, 0x58(r3)
    stfs    f0, 0x54(r3)
    lfs     f0, -0x6d00(rtoc)
    stfs    f0, 0x60(r3)
    blr


.globl calcRootMatrix__9TNameKuriFv
calcRootMatrix__9TNameKuriFv: # 0x80064464
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x160(sp)
    stfd    f31, 0x158(sp)
    stfd    f30, 0x150(sp)
    stw     r31, 0x14c(sp)
    stw     r30, 0x148(sp)
    mr      r30, r3
    stw     r30, -0x6f30(r13)
    bl      isEaten__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x800647e4
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    li      r0, 0x0
    stb     r0, 0x1a8(r30)
    addi    r31, r3, 0x20
    lwz     r3, 0x88(r30)
    lfs     f1, -0x6d20(rtoc)
    lwz     r3, 0x2c(r3)
    lfs     f0, 0x10(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80064698
    lwz     r0, 0x138(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80064698
    li      r0, 0x1
    stb     r0, 0x1a8(r30)
    addi    r3, sp, 0x118
    addi    r4, r3, 0x0
    stfs    f1, 0x130(sp)
    lfs     f0, -0x6d00(rtoc)
    stfs    f0, 0x134(sp)
    stfs    f1, 0x138(sp)
    lwz     r6, 0x138(r30)
    lfs     f4, 0x130(sp)
    lwz     r5, 0x34(r6)
    lwz     r0, 0x38(r6)
    stw     r5, 0x124(sp)
    stw     r0, 0x128(sp)
    lwz     r0, 0x3c(r6)
    stw     r0, 0x12c(sp)
    lfs     f31, 0x12c(sp)
    lfs     f5, 0x134(sp)
    lfs     f30, 0x128(sp)
    fmuls   f2, f31, f5
    lfs     f3, 0x138(sp)
    lfs     f1, 0x124(sp)
    fmuls   f0, f30, f4
    fmuls   f1, f1, f3
    fmsubs  f2, f30, f3, f2
    fmsubs  f1, f31, f4, f1
    stfs    f2, 0x118(sp)
    stfs    f1, 0x11c(sp)
    lfs     f1, 0x124(sp)
    fmsubs  f0, f1, f5, f0
    stfs    f0, 0x120(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0x120(sp)
    addi    r3, sp, 0x130
    lfs     f5, 0x118(sp)
    mr      r4, r3
    fmuls   f2, f3, f30
    lfs     f4, 0x11c(sp)
    fmuls   f0, f5, f31
    lfs     f1, 0x124(sp)
    fmsubs  f2, f4, f31, f2
    fmsubs  f0, f3, f1, f0
    stfs    f2, 0x130(sp)
    stfs    f0, 0x134(sp)
    lfs     f0, 0x124(sp)
    fmuls   f0, f4, f0
    fmsubs  f0, f5, f30, f0
    stfs    f0, 0x138(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x118(sp)
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    stfs    f0, 0x0(r31)
    addi    r4, sp, 0xe4
    lfs     f0, 0x11c(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x120(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0x124(sp)
    stfs    f0, 0x4(r31)
    stfs    f30, 0x14(r31)
    stfs    f31, 0x24(r31)
    lfs     f0, 0x130(sp)
    stfs    f0, 0x8(r31)
    lfs     f0, 0x134(sp)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x138(sp)
    stfs    f0, 0x28(r31)
    lfs     f4, -0x6d20(rtoc)
    stfs    f4, 0xc(r31)
    stfs    f4, 0x1c(r31)
    stfs    f4, 0x2c(r31)
    lwz     r6, 0x88(r30)
    lfs     f1, -0x6d00(rtoc)
    lwz     r6, 0x2c(r6)
    lfs     f2, -0x6cbc(rtoc)
    lfs     f0, 0x10(r6)
    lfs     f3, -0x6cfc(rtoc)
    fsubs   f0, f1, f0
    lwz     r0, -0x5eac(r13)
    lwz     r8, -0x5ea8(r13)
    lwz     r6, -0x5ea4(r13)
    fmuls   f0, f2, f0
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x140(sp)
    lwz     r7, 0x144(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f2
    stfs    f1, 0xe4(sp)
    stfs    f4, 0xe8(sp)
    stfs    f4, 0xec(sp)
    stfs    f4, 0xf0(sp)
    stfs    f4, 0xf4(sp)
    stfs    f3, 0xf8(sp)
    stfs    f0, 0xfc(sp)
    stfs    f4, 0x100(sp)
    stfs    f4, 0x104(sp)
    stfs    f2, 0x108(sp)
    stfs    f3, 0x10c(sp)
    stfs    f4, 0x110(sp)
    bl      PSMTXConcat
    b       branch_0x800647cc

branch_0x80064698:
    lfs     f1, -0x6cfc(rtoc)
    addi    r3, sp, 0xc0
    lfs     f0, 0x34(r30)
    mr      r4, r3
    lwz     r0, -0x5eac(r13)
    fmuls   f1, f1, f0
    lwz     r7, -0x5ea4(r13)
    lwz     r5, -0x5ea8(r13)
    lfs     f0, -0x6d20(rtoc)
    fctiwz  f1, f1
    stfd    f1, 0x140(sp)
    lwz     r6, 0x144(sp)
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    slwi    r0, r0, 2
    lfsx    f2, r7, r0
    lfsx    f1, r5, r0
    stfs    f1, 0xd8(sp)
    stfs    f0, 0xdc(sp)
    stfs    f2, 0xe0(sp)
    lwz     r6, 0xc4(r30)
    lfs     f4, 0xd8(sp)
    lwz     r5, 0x34(r6)
    lwz     r0, 0x38(r6)
    stw     r5, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0x3c(r6)
    stw     r0, 0xd4(sp)
    lfs     f31, 0xd0(sp)
    lfs     f30, 0xd4(sp)
    lfs     f5, 0xdc(sp)
    fmuls   f0, f31, f4
    lfs     f3, 0xe0(sp)
    fmuls   f2, f30, f5
    lfs     f1, 0xcc(sp)
    fmuls   f1, f1, f3
    fmsubs  f2, f31, f3, f2
    fmsubs  f1, f30, f4, f1
    stfs    f2, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    lfs     f1, 0xcc(sp)
    fmsubs  f0, f1, f5, f0
    stfs    f0, 0xc8(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0xc8(sp)
    addi    r3, sp, 0xd8
    lfs     f5, 0xc0(sp)
    mr      r4, r3
    fmuls   f2, f3, f31
    lfs     f4, 0xc4(sp)
    fmuls   f0, f5, f30
    lfs     f1, 0xcc(sp)
    fmsubs  f2, f4, f30, f2
    fmsubs  f0, f3, f1, f0
    stfs    f2, 0xd8(sp)
    stfs    f0, 0xdc(sp)
    lfs     f0, 0xcc(sp)
    fmuls   f0, f4, f0
    fmsubs  f0, f5, f31, f0
    stfs    f0, 0xe0(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0xc8(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0xcc(sp)
    stfs    f0, 0x4(r31)
    stfs    f31, 0x14(r31)
    stfs    f30, 0x24(r31)
    lfs     f0, 0xd8(sp)
    stfs    f0, 0x8(r31)
    lfs     f0, 0xdc(sp)
    stfs    f0, 0x18(r31)
    lfs     f0, 0xe0(sp)
    stfs    f0, 0x28(r31)
branch_0x800647cc:
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
branch_0x800647e4:
    lwz     r0, 0x164(sp)
    lfd     f31, 0x158(sp)
    lfd     f30, 0x150(sp)
    mtlr    r0
    lwz     r31, 0x14c(sp)
    lwz     r30, 0x148(sp)
    addi    sp, sp, 0x160
    blr


.globl init__9TNameKuriFP12TLiveManager
init__9TNameKuriFP12TLiveManager: # 0x80064804
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    subi    r31, r5, 0x6ac0
    stw     r30, 0xa8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xa4(sp)
    addi    r29, r4, 0x0
    lwz     r0, -0x5f2c(r13)
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      init__12TWalkerEnemyFP12TLiveManager
    lwz     r0, 0x64(r30)
    lis     r3, 0x1000
    addi    r3, r3, 0x3
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r30)
    li      r0, 0x3a
    li      r4, 0x1
    stw     r3, 0x4c(r30)
    stw     r0, 0x150(r30)
    lwz     r3, 0x88(r30)
    bl      setMode__7TWalkerFi
    li      r0, 0x2
    stb     r0, 0x130(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1a4(r30)
    lha     r0, 0x7c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800648d0
    lwz     r5, 0x74(r30)
    li      r6, 0x0
    b       branch_0x800648b8

branch_0x800648b4:
    addi    r6, r6, 0x1
branch_0x800648b8:
    lwz     r3, 0x4(r5)
    clrlwi  r4, r6, 24
    lwz     r3, 0x4(r3)
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x800648b4
branch_0x800648d0:
    lis     r4, 0x8006
    lwz     r3, 0x74(r30)
    addi    r5, r4, 0x4b1c
    li      r4, 0x1
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lis     r4, 0x8006
    lwz     r3, 0x74(r30)
    addi    r5, r4, 0x4a2c
    li      r4, 0x1
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lwz     r3, 0x74(r30)
    bl      resetDL__6MActorFv
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      setLightType__6MActorFi
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x25c
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x25c
    mtlr    r12
    blrl
    lwz     r5, 0x74(r30)
    addi    r4, r31, 0x274
    lwz     r6, 0x10(r3)
    lwz     r3, 0x4(r5)
    lwz     r5, 0x20(r6)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    li      r3, 0x0
    sth     r3, 0x1c0(r30)
    li      r0, 0xa8
    sth     r3, 0x1be(r30)
    sth     r3, 0x1bc(r30)
    sth     r0, 0x1c2(r30)
    lwz     r3, 0x124(r30)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80064988
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8006499c
branch_0x80064988:
    lwz     r3, -0x70b0(r13)
    subi    r4, rtoc, 0x6cb8
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r30)
    stw     r3, 0x0(r4)
branch_0x8006499c:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl __ct__9TNameKuriFPCc
__ct__9TNameKuriFPCc: # 0x800649b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x1a20
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r4, 0x803b
    stw     r0, 0x20(r31)
    li      r5, 0x0
    lis     r3, 0x803b
    stw     r5, 0x194(r31)
    addi    r4, r4, 0x17a0
    addi    r0, r3, 0x1bd8
    stb     r5, 0x198(r31)
    mr      r3, r31
    stw     r4, 0x19c(r31)
    stw     r0, 0x19c(r31)
    stw     r31, 0x1a0(r31)
    stw     r5, 0x1a4(r31)
    stw     r5, 0x1cc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl NameKuriScaleCallback__FP7J3DNodei
NameKuriScaleCallback__FP7J3DNodei: # 0x80064a2c
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x80064b00
    lwz     r3, -0x6f30(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80064a80
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    bl      theNerve__28TNerveSmallEnemyHitWaterJumpFv
    cmplw   r31, r3
    bne-    branch_0x80064a74
    li      r0, 0x1
    b       branch_0x80064a78

branch_0x80064a74:
    li      r0, 0x0
branch_0x80064a78:
    clrlwi. r0, r0, 24
    bne-    branch_0x80064a88
branch_0x80064a80:
    li      r3, 0x1
    b       branch_0x80064b04

branch_0x80064a88:
    lwz     r3, -0x6f30(r13)
    addi    r4, sp, 0x44
    lhz     r0, 0x18(r30)
    lwz     r3, 0x74(r3)
    lfs     f2, -0x6d20(rtoc)
    mulli   r0, r0, 0x30
    lwz     r3, 0x4(r3)
    lfs     f1, -0x6cb0(rtoc)
    lwz     r3, 0x58(r3)
    lfs     f0, -0x6cac(rtoc)
    stfs    f2, 0x50(sp)
    add     r3, r3, r0
    mr      r5, r3
    stfs    f2, 0x60(sp)
    stfs    f2, 0x70(sp)
    stfs    f1, 0x44(sp)
    stfs    f2, 0x48(sp)
    stfs    f2, 0x4c(sp)
    stfs    f2, 0x54(sp)
    stfs    f0, 0x58(sp)
    stfs    f2, 0x5c(sp)
    stfs    f2, 0x64(sp)
    stfs    f2, 0x68(sp)
    stfs    f1, 0x6c(sp)
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r5, r3, 0x4788
    addi    r3, r5, 0x0
    addi    r4, sp, 0x44
    bl      PSMTXConcat
branch_0x80064b00:
    li      r3, 0x1
branch_0x80064b04:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl NameKuriAttackCallback__FP7J3DNodei
NameKuriAttackCallback__FP7J3DNodei: # 0x80064b1c
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x98(sp)
    bne-    branch_0x80064c94
    lwz     r30, -0x6f30(r13)
    cmplwi  r30, 0x0
    beq-    branch_0x80064bd8
    lbz     r0, -0x6f24(r13)
    extsb.  r0, r0
    bne-    branch_0x80064b8c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f20(r13)
    addi    r0, r3, 0x19a8
    lis     r4, 0x8006
    stw     r0, -0x6f20(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x764
    addi    r4, r4, 0x2b78
    subi    r3, r13, 0x6f20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f24(r13)
branch_0x80064b8c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6f20
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80064bcc
    lfs     f1, -0x6cd0(rtoc)
    lfs     f0, 0xc8(r30)
    lfs     f2, 0x14(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x80064bcc
    lbz     r0, 0x1a8(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80064bcc
    li      r0, 0x1
    b       branch_0x80064bd0

branch_0x80064bcc:
    li      r0, 0x0
branch_0x80064bd0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80064be0
branch_0x80064bd8:
    li      r3, 0x1
    b       branch_0x80064c98

branch_0x80064be0:
    lwz     r5, -0x6f30(r13)
    addi    r30, sp, 0x58
    lhz     r0, 0x18(r31)
    mr      r4, r30
    lfs     f0, 0x1ac(r5)
    lfs     f1, -0x6cfc(rtoc)
    mulli   r3, r0, 0x30
    lwz     r5, 0x74(r5)
    fmuls   f0, f1, f0
    lwz     r0, -0x5eac(r13)
    lwz     r5, 0x4(r5)
    lwz     r8, -0x5ea8(r13)
    fctiwz  f0, f0
    lwz     r5, 0x58(r5)
    lwz     r6, -0x5ea4(r13)
    stfd    f0, 0x90(sp)
    add     r3, r5, r3
    lfs     f1, -0x6d00(rtoc)
    addi    r5, r3, 0x0
    lwz     r7, 0x94(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f2
    stfs    f1, 0x58(sp)
    lfs     f1, -0x6d20(rtoc)
    stfs    f1, 0x5c(sp)
    stfs    f1, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f1, 0x68(sp)
    stfs    f3, 0x6c(sp)
    stfs    f0, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f2, 0x7c(sp)
    stfs    f3, 0x80(sp)
    stfs    f1, 0x84(sp)
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r5, r3, 0x4788
    addi    r3, r5, 0x0
    addi    r4, r30, 0x0
    bl      PSMTXConcat
branch_0x80064c94:
    li      r3, 0x1
branch_0x80064c98:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl draw__19TNameIndParCallbackFP14JPABaseEmitterP15JPABaseParticle
draw__19TNameIndParCallbackFP14JPABaseEmitterP15JPABaseParticle: # 0x80064cb0
    blr


.globl execute__19TNameIndParCallbackFP14JPABaseEmitterP15JPABaseParticle
execute__19TNameIndParCallbackFP14JPABaseEmitterP15JPABaseParticle: # 0x80064cb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stw     r31, 0x11c(sp)
    mr      r31, r3
    stw     r30, 0x118(sp)
    mr      r30, r4
    stw     r29, 0x114(sp)
    stw     r28, 0x110(sp)
    lwz     r3, 0x4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8006504c
    lfs     f0, 0x1ac(r3)
    addi    r4, sp, 0xd4
    lfs     f1, -0x6cfc(rtoc)
    lwz     r3, 0x74(r3)
    fmuls   f0, f1, f0
    lwz     r0, -0x5eac(r13)
    lwz     r3, 0x4(r3)
    lwz     r7, -0x5ea8(r13)
    fctiwz  f0, f0
    lwz     r8, 0x58(r3)
    lwz     r5, -0x5ea4(r13)
    stfd    f0, 0x108(sp)
    addi    r29, r8, 0xc0
    lfs     f1, -0x6d00(rtoc)
    addi    r3, r29, 0x0
    lwz     r6, 0x10c(sp)
    addi    r28, r8, 0x0
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    slwi    r0, r0, 2
    lfsx    f2, r7, r0
    lfsx    f3, r5, r0
    mr      r5, r3
    fneg    f0, f2
    stfs    f1, 0xd4(sp)
    lfs     f1, -0x6d20(rtoc)
    stfs    f1, 0xd8(sp)
    stfs    f1, 0xdc(sp)
    stfs    f1, 0xe0(sp)
    stfs    f1, 0xe4(sp)
    stfs    f3, 0xe8(sp)
    stfs    f0, 0xec(sp)
    stfs    f1, 0xf0(sp)
    stfs    f1, 0xf4(sp)
    stfs    f2, 0xf8(sp)
    stfs    f3, 0xfc(sp)
    stfs    f1, 0x100(sp)
    bl      PSMTXConcat
    lfs     f0, 0x0(r29)
    stfs    f0, 0xb0(sp)
    lfs     f0, 0x10(r29)
    stfs    f0, 0xb4(sp)
    lfs     f0, 0x20(r29)
    stfs    f0, 0xb8(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0xb4(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xb8(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x6d20(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80064dcc
    b       branch_0x80064df0

branch_0x80064dcc:
    frsqrte f3, f4
    lfs     f2, -0x6d18(rtoc)
    lfs     f0, -0x6d1c(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80064df0:
    stfs    f4, 0xa8(sp)
    lfs     f0, 0x4(r29)
    stfs    f0, 0xbc(sp)
    lfs     f0, 0x14(r29)
    stfs    f0, 0xc0(sp)
    lfs     f0, 0x24(r29)
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0xc0(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xc4(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x6d20(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80064e40
    b       branch_0x80064e64

branch_0x80064e40:
    frsqrte f3, f4
    lfs     f2, -0x6d18(rtoc)
    lfs     f0, -0x6d1c(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80064e64:
    stfs    f4, 0xac(sp)
    lfs     f0, 0x8(r29)
    stfs    f0, 0xc8(sp)
    lfs     f0, 0x18(r29)
    stfs    f0, 0xcc(sp)
    lfs     f0, 0x28(r29)
    stfs    f0, 0xd0(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0xcc(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xd0(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x6d20(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80064eb4
    b       branch_0x80064ed8

branch_0x80064eb4:
    frsqrte f3, f4
    lfs     f2, -0x6d18(rtoc)
    lfs     f0, -0x6d1c(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80064ed8:
    stfs    f4, 0xa4(sp)
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
    lwz     r31, 0x4(r31)
    lbz     r0, 0x1a8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80064f2c
    lfs     f0, 0x24(r31)
    stfs    f0, 0x154(r30)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x158(r30)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x15c(r30)
    lfs     f0, 0x24(r31)
    stfs    f0, 0x174(r30)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x178(r30)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x17c(r30)
    b       branch_0x8006504c

branch_0x80064f2c:
    lbz     r0, -0x6f24(r13)
    extsb.  r0, r0
    bne-    branch_0x80064f70
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f20(r13)
    addi    r0, r3, 0x19a8
    lis     r4, 0x8006
    stw     r0, -0x6f20(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x764
    addi    r4, r4, 0x2b78
    subi    r3, r13, 0x6f20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f24(r13)
branch_0x80064f70:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f20
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80064fb0
    lfs     f1, -0x6cd0(rtoc)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x80064fb0
    lbz     r0, 0x1a8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80064fb0
    li      r0, 0x1
    b       branch_0x80064fb4

branch_0x80064fb0:
    li      r0, 0x0
branch_0x80064fb4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80065024
    lwz     r0, 0xa4(sp)
    addi    r3, sp, 0x58
    lwz     r4, 0xa8(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0xac(sp)
    stw     r4, 0x5c(sp)
    lfs     f1, -0x6d18(rtoc)
    stw     r0, 0x60(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x58(sp)
    lwz     r3, 0x5c(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x60(sp)
    stw     r3, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lfs     f0, 0x98(sp)
    stfs    f0, 0x154(r30)
    lfs     f1, 0x9c(sp)
    stfs    f1, 0x158(r30)
    lfs     f2, 0xa0(sp)
    stfs    f2, 0x15c(r30)
    lfs     f0, 0x98(sp)
    stfs    f0, 0x174(r30)
    stfs    f1, 0x178(r30)
    stfs    f2, 0x17c(r30)
    b       branch_0x8006504c

branch_0x80065024:
    lfs     f0, 0xa4(sp)
    stfs    f0, 0x154(r30)
    lfs     f1, 0xa8(sp)
    stfs    f1, 0x158(r30)
    lfs     f2, 0xac(sp)
    stfs    f2, 0x15c(r30)
    lfs     f0, 0xa4(sp)
    stfs    f0, 0x174(r30)
    stfs    f1, 0x178(r30)
    stfs    f2, 0x17c(r30)
branch_0x8006504c:
    lwz     r0, 0x124(sp)
    lwz     r31, 0x11c(sp)
    lwz     r30, 0x118(sp)
    mtlr    r0
    lwz     r29, 0x114(sp)
    lwz     r28, 0x110(sp)
    addi    sp, sp, 0x120
    blr


.globl perform__16TNameKuriManagerFUlPQ26JDrama9TGraphics
perform__16TNameKuriManagerFUlPQ26JDrama9TGraphics: # 0x8006506c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__16TNameKuriManagerFv
createModelData__16TNameKuriManagerFv: # 0x8006508c
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x1778
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__16TNameKuriManagerFv
createEnemyInstance__16TNameKuriManagerFv: # 0x800650c0
    mflr    r0
    li      r3, 0x1d0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80065134
    lis     r4, 0x8038
    addi    r3, r31, 0x0
    subi    r4, r4, 0x683c
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x1a20
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r4, 0x803b
    stw     r0, 0x20(r31)
    li      r5, 0x0
    lis     r3, 0x803b
    stw     r5, 0x194(r31)
    addi    r4, r4, 0x17a0
    addi    r0, r3, 0x1bd8
    stb     r5, 0x198(r31)
    stw     r4, 0x19c(r31)
    stw     r0, 0x19c(r31)
    stw     r31, 0x1a0(r31)
    stw     r5, 0x1a4(r31)
    stw     r5, 0x1cc(r31)
branch_0x80065134:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initSetEnemies__16TNameKuriManagerFv
initSetEnemies__16TNameKuriManagerFv: # 0x8006514c
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r22, 0x70(sp)
    subi    r30, r4, 0x6ac0
    addi    r25, r3, 0x0
    addi    r3, r30, 0x290
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r24, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8006519c
    addi    r3, r24, 0x0
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x8006519c:
    lwz     r3, 0x18(r25)
    mr      r29, r23
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800652ac
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r30, 0x2ac
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    addi    r31, r3, 0x0
    addi    r3, r30, 0x2b8
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r28, r3, 0x0
    li      r27, 0x0
    li      r26, 0x0
    li      r24, 0x0
    b       branch_0x800652a0

branch_0x800651e4:
    slwi    r0, r27, 3
    lwz     r3, 0x18(r25)
    add     r6, r30, r0
    lwzx    r23, r3, r24
    clrlwi  r4, r31, 16
    lwz     r3, 0x10c(r6)
    li      r5, 0x1
    lwz     r0, 0x110(r6)
    addi    r6, r23, 0x1c4
    stw     r3, 0x1c4(r23)
    addi    r8, r23, 0x1bc
    li      r7, 0x2
    stw     r0, 0x1c8(r23)
    lwz     r3, 0x18(r25)
    lwzx    r3, r3, r24
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_InitPacket_TwoTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x80065258
    addi    r3, r22, 0x0
    addi    r4, r23, 0x0
    addi    r6, r29, 0x0
    addi    r8, r30, 0x2dc
    li      r5, 0x2
    li      r7, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x80065258:
    stw     r22, 0x1cc(r23)
    lwz     r3, 0x1cc(r23)
    bl      getConnectedMtx__12TSharedPartsCFv
    cmplwi  r28, 0x0
    beq-    branch_0x80065288
    lwz     r3, 0x1cc(r23)
    addi    r5, r28, 0x0
    addi    r4, r30, 0x2ec
    lwz     r3, 0x18(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80065288:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x7
    blt-    branch_0x80065298
    li      r27, 0x0
branch_0x80065298:
    addi    r26, r26, 0x1
    addi    r24, r24, 0x4
branch_0x800652a0:
    lwz     r0, 0x14(r25)
    cmpw    r26, r0
    blt+    branch_0x800651e4
branch_0x800652ac:
    lmw     r22, 0x70(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl loadAfter__16TNameKuriManagerFv
loadAfter__16TNameKuriManagerFv: # 0x800652c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    bl      loadAfter__18TSmallEnemyManagerFv
    lfs     f0, -0x6d20(rtoc)
    lis     r3, 0x8038
    lfs     f1, -0x6d00(rtoc)
    addi    r6, sp, 0xc
    stfs    f0, 0x18(sp)
    addi    r5, sp, 0x18
    stfs    f1, 0xc(sp)
    addi    r4, sp, 0x24
    subi    r3, r3, 0x67c4
    stfs    f0, 0x24(sp)
    stfs    f1, 0x10(sp)
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x28(sp)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x2c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl load__16TNameKuriManagerFR20JSUMemoryInputStream
load__16TNameKuriManagerFR20JSUMemoryInputStream: # 0x80065324
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r23, 0x1c(sp)
    addi    r24, r3, 0x0
    addi    r23, r4, 0x0
    subi    r30, r5, 0x6ac0
    li      r3, 0x41c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800655a4
    stw     r25, 0x10(sp)
    addi    r4, r30, 0x30c
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x180
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x180
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x32c(r31)
    li      r0, 0x7d0
    lis     r3, 0x803b
    stw     r0, 0x33c(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x190
    stw     r26, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x190
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x340(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x6ce8(rtoc)
    addi    r3, r30, 0x1a0
    stfs    f0, 0x350(r31)
    stw     r28, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x1a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x354(r31)
    addi    r3, r30, 0x1b8
    lfs     f0, -0x6ce4(rtoc)
    stfs    f0, 0x364(r31)
    stw     r28, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x1b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x368(r31)
    addi    r3, r30, 0x1c8
    lfs     f0, -0x6ce0(rtoc)
    stfs    f0, 0x378(r31)
    stw     r28, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x1c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x37c(r31)
    addi    r3, r30, 0x1dc
    lfs     f0, -0x6d14(rtoc)
    stfs    f0, 0x38c(r31)
    stw     r28, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x1dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x390(r31)
    li      r0, 0x64
    addi    r3, r30, 0x1f0
    stw     r0, 0x3a0(r31)
    stw     r26, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x1f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a4(r31)
    addi    r3, r30, 0x200
    lfs     f0, -0x6d0c(rtoc)
    stfs    f0, 0x3b4(r31)
    stw     r28, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x200
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b8(r31)
    addi    r3, r30, 0x210
    lfs     f0, -0x6d0c(rtoc)
    stfs    f0, 0x3c8(r31)
    stw     r28, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x210
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3cc(r31)
    addi    r3, r30, 0x220
    lfs     f0, -0x6cdc(rtoc)
    stfs    f0, 0x3dc(r31)
    stw     r28, 0x3cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3e0
    addi    r6, r30, 0x220
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3e0(r31)
    li      r0, 0x19
    addi    r3, r30, 0x234
    stw     r0, 0x3f0(r31)
    stw     r26, 0x3e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f4
    addi    r6, r30, 0x234
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f4(r31)
    addi    r3, r30, 0x248
    lfs     f0, -0x6cd8(rtoc)
    stfs    f0, 0x404(r31)
    stw     r28, 0x3f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x408
    addi    r6, r30, 0x248
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x408(r31)
    mr      r3, r31
    lfs     f0, -0x6cd4(rtoc)
    stfs    f0, 0x418(r31)
    stw     r28, 0x408(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x800655a4:
    stw     r25, 0x38(r24)
    addi    r3, r24, 0x0
    addi    r4, r23, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r23, 0x1c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__16TNameKuriManagerFPCc
__ct__16TNameKuriManagerFPCc: # 0x800655c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x1be8
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x60(r31)
    stw     r0, 0x5c(r31)
    stw     r0, -0x6f30(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stateLaunch__17TNameKuriLauncherFv
stateLaunch__17TNameKuriLauncherFv: # 0x80065614
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800656b8
    lis     r3, 0x8038
    subi    r4, r3, 0x67a0
    addi    r3, r30, 0x0
    bl      getProperEnemy__9TLauncherFPCc
    mr.     r31, r3
    beq-    branch_0x800656b8
    lfs     f1, 0x30(r30)
    addi    r3, sp, 0x10
    lfs     f2, 0x34(r30)
    lfs     f3, 0x38(r30)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f1, -0x6d20(rtoc)
    addi    r4, sp, 0x40
    lfs     f0, -0x6cac(rtoc)
    mr      r5, r4
    stfs    f1, 0x40(sp)
    addi    r3, sp, 0x10
    stfs    f1, 0x4c(sp)
    stfs    f0, 0x44(sp)
    stfs    f1, 0x50(sp)
    stfs    f1, 0x48(sp)
    stfs    f1, 0x54(sp)
    bl      PSMTXMultVec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x10
    addi    r5, sp, 0x4c
    lwz     r12, 0x104(r12)
    addi    r6, r31, 0x24
    addi    r7, sp, 0x40
    mtlr    r12
    blrl
branch_0x800656b8:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800656f0
    mr      r3, r30
    bl      resetLaunchTimer__9TLauncherFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x2
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800656f0:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __dt__18TDiffusionNameKuriFv
__dt__18TDiffusionNameKuriFv: # 0x80065708
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80065788
    lis     r3, 0x803b
    addi    r3, r3, 0x17b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80065778
    lis     r3, 0x803b
    addi    r3, r3, 0x1a20
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80065778
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x80065778:
    extsh.  r0, r31
    ble-    branch_0x80065788
    mr      r3, r30
    bl      __dl__FPv
branch_0x80065788:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__25TDiffusionNameKuriManagerFv
__dt__25TDiffusionNameKuriManagerFv: # 0x800657a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8006580c
    lis     r3, 0x803b
    addi    r0, r3, 0x19c8
    stw     r0, 0x0(r30)
    beq-    branch_0x800657fc
    lis     r3, 0x803b
    addi    r0, r3, 0x1be8
    stw     r0, 0x0(r30)
    beq-    branch_0x800657fc
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800657fc:
    extsh.  r0, r31
    ble-    branch_0x8006580c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8006580c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TNameKuriManagerFv
__dt__16TNameKuriManagerFv: # 0x80065828
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80065880
    lis     r3, 0x803b
    addi    r0, r3, 0x1be8
    stw     r0, 0x0(r30)
    beq-    branch_0x80065870
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80065870:
    extsh.  r0, r31
    ble-    branch_0x80065880
    mr      r3, r30
    bl      __dl__FPv
branch_0x80065880:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TNameKuriLauncherFv
__dt__17TNameKuriLauncherFv: # 0x8006589c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80065904
    lis     r3, 0x803b
    addi    r3, r3, 0x1c40
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800658f4
    lis     r3, 0x803b
    addi    r3, r3, 0x5da4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800658f4:
    extsh.  r0, r31
    ble-    branch_0x80065904
    mr      r3, r30
    bl      __dl__FPv
branch_0x80065904:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl execute__54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_FP14JPABaseEmitterP15JPABaseParticle
execute__54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_FP14JPABaseEmitterP15JPABaseParticle: # 0x80065920
    blr


.globl draw__54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_FP14JPABaseEmitterP15JPABaseParticle
draw__54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_FP14JPABaseEmitterP15JPABaseParticle: # 0x80065924
    blr


.globl __sinit_namekuri_cpp
__sinit_namekuri_cpp: # 0x80065928
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x758
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80065970
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80065970:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800659a0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800659a0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800659d0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800659d0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80065a00
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80065a00:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80065a30
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80065a30:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80065a60
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80065a60:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80065a90
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80065a90:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80065ac0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80065ac0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80065af0
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80065af0:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80065b20
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80065b20:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80065b50
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80065b50:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80065b80
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80065b80:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80065bb0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80065bb0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80065be0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80065be0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80065c10
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80065c10:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__17TNameKuriLauncherFv
_32___dt__17TNameKuriLauncherFv: # 0x80065c24
    subi    r3, r3, 0x20
    b       __dt__17TNameKuriLauncherFv


.globl _32___dt__9TNameKuriFv
_32___dt__9TNameKuriFv: # 0x80065c2c
    subi    r3, r3, 0x20
    b       __dt__9TNameKuriFv


.globl _32___dt__18TDiffusionNameKuriFv
_32___dt__18TDiffusionNameKuriFv: # 0x80065c34
    subi    r3, r3, 0x20
    b       __dt__18TDiffusionNameKuriFv

