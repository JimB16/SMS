
.globl __dt__22TNerveWalkerTraceMarioFv
__dt__22TNerveWalkerTraceMarioFv: # 0x80070a70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80070ab4
    lis     r3, 0x803b
    addi    r0, r3, 0x2750
    stw     r0, 0x0(r31)
    beq-    branch_0x80070aa4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80070aa4:
    extsh.  r0, r4
    ble-    branch_0x80070ab4
    mr      r3, r31
    bl      __dl__FPv
branch_0x80070ab4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveWalkerTraceMarioCFP24TSpineBase_10TLiveActor_
execute__22TNerveWalkerTraceMarioCFP24TSpineBase_10TLiveActor_: # 0x80070acc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80070b88
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x6af8(rtoc)
    stw     r3, 0x48(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    stfs    f0, 0x54(sp)
    beq-    branch_0x80070b40
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f2, 0x54(sp)
branch_0x80070b40:
    lwz     r3, 0x48(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x4c(sp)
    lwz     r3, 0x50(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x54(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x48(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x4c(sp)
    lwz     r3, 0x50(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x54(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
branch_0x80070b88:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xa
    bne-    branch_0x80070ba0
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
branch_0x80070ba0:
    lwz     r3, MarioFlags(r13)
    lwz     r4, 0x0(r3)
    rlwinm. r0, r4, 0, 30, 30 # MARIOFLAG_2
    beq-    branch_0x80070bb8
    li      r0, 0x1
    b       branch_0x80070bbc

branch_0x80070bb8:
    li      r0, 0x0
branch_0x80070bbc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80070c3c
    rlwinm. r0, r4, 0, 15, 15
    beq-    branch_0x80070bd4
    li      r0, 0x1
    b       branch_0x80070bd8

branch_0x80070bd4:
    li      r0, 0x0
branch_0x80070bd8:
    clrlwi. r0, r0, 24
    bne-    branch_0x80070c3c
    lwz     r3, -0x608c(r13)
    lwz     r3, 0x0(r3)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80070c0c
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80070c0c
    cmplwi  r3, 0x4104
    bne-    branch_0x80070c14
branch_0x80070c0c:
    li      r0, 0x1
    b       branch_0x80070c18

branch_0x80070c14:
    li      r0, 0x0
branch_0x80070c18:
    clrlwi. r0, r0, 24
    bne-    branch_0x80070c3c
    rlwinm. r0, r4, 0, 14, 14
    beq-    branch_0x80070c30
    li      r0, 0x1
    b       branch_0x80070c34

branch_0x80070c30:
    li      r0, 0x0
branch_0x80070c34:
    clrlwi. r0, r0, 24
    beq-    branch_0x80070cf0
branch_0x80070c3c:
    lbz     r0, -0x6e48(r13)
    extsb.  r0, r0
    bne-    branch_0x80070c80
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e44(r13)
    addi    r0, r3, 0x2750
    lis     r4, 0x8007
    stw     r0, -0x6e44(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xac4
    addi    r4, r4, 0xa70
    subi    r3, r13, 0x6e44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e48(r13)
branch_0x80070c80:
    subi    r4, r13, 0x6e44
    cmplwi  r4, 0x0
    beq-    branch_0x80070cb4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80070cb4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80070cb4:
    bl      theNerve__20TNerveSmallEnemyWaitFv
    cmplwi  r3, 0x0
    beq-    branch_0x80070ce8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80070ce8
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80070ce8:
    li      r3, 0x1
    b       branch_0x80070d70

branch_0x80070cf0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, MarioHitActorPos(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x4(r4)
    lfs     f2, 0x130(r3)
    fsubs   f0, f1, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x80070d2c
    li      r3, 0x1
    b       branch_0x80070d70

branch_0x80070d2c:
    mr      r3, r31
    lfs     f1, -0x6af4(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b0(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80070d6c
    li      r3, 0x1
    b       branch_0x80070d70

branch_0x80070d6c:
    li      r3, 0x0
branch_0x80070d70:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl theNerve__22TNerveWalkerTraceMarioFv
theNerve__22TNerveWalkerTraceMarioFv: # 0x80070d88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e48(r13)
    extsb.  r0, r0
    bne-    branch_0x80070dd8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e44(r13)
    addi    r0, r3, 0x2750
    lis     r4, 0x8007
    stw     r0, -0x6e44(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xac4
    addi    r4, r4, 0xa70
    subi    r3, r13, 0x6e44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e48(r13)
branch_0x80070dd8:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e44
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__18TNerveWalkerEscapeCFP24TSpineBase_10TLiveActor_
execute__18TNerveWalkerEscapeCFP24TSpineBase_10TLiveActor_: # 0x80070dec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80070e2c
    mr      r3, r31
    bl      goToRandomEscapeGraphNode__11TSpineEnemyFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
branch_0x80070e2c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80070e50
    mr      r3, r31
    bl      goToRandomEscapeGraphNode__11TSpineEnemyFv
branch_0x80070e50:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, MarioFlags(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 30, 30 # MARIOFLAG_2
    beq-    branch_0x80070e90
    li      r0, 0x1
    b       branch_0x80070e94

branch_0x80070e90:
    li      r0, 0x0
branch_0x80070e94:
    clrlwi. r0, r0, 24
    beq-    branch_0x80070edc
    lwz     r0, 0x118(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80070ed4
    addi    r3, sp, 0x44
    addi    r4, r31, 0x114
    bl      pop__23TSolidStack_9TPathNode_Fv
    lwz     r0, 0x44(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x50(sp)
    stw     r0, 0x100(r31)
branch_0x80070ed4:
    li      r3, 0x1
    b       branch_0x80070f34

branch_0x80070edc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x11c(r3)
    mr      r3, r31
    fmuls   f31, f31, f31
    bl      updateSquareToMario__11TSpineEnemyFv
    lfs     f0, 0x134(r31)
    fcmpo   cr0, f0, f31
    ble-    branch_0x80070f14
    li      r3, 0x1
    b       branch_0x80070f34

branch_0x80070f14:
    mr      r3, r31
    lfs     f1, -0x6af0(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x1
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x80070f34:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl theNerve__18TNerveWalkerEscapeFv
theNerve__18TNerveWalkerEscapeFv: # 0x80070f4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e50(r13)
    extsb.  r0, r0
    bne-    branch_0x80070f9c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e4c(r13)
    addi    r0, r3, 0x2760
    lis     r4, 0x8007
    stw     r0, -0x6e4c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xab8
    addi    r4, r4, 0xfb0
    subi    r3, r13, 0x6e4c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e50(r13)
branch_0x80070f9c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e4c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TNerveWalkerEscapeFv
__dt__18TNerveWalkerEscapeFv: # 0x80070fb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80070ff4
    lis     r3, 0x803b
    addi    r0, r3, 0x2760
    stw     r0, 0x0(r31)
    beq-    branch_0x80070fe4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80070fe4:
    extsh.  r0, r4
    ble-    branch_0x80070ff4
    mr      r3, r31
    bl      __dl__FPv
branch_0x80070ff4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveWalkerPostAttackCFP24TSpineBase_10TLiveActor_
execute__22TNerveWalkerPostAttackCFP24TSpineBase_10TLiveActor_: # 0x8007100c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80071048
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x160(r12)
    mtlr    r12
    blrl
branch_0x80071048:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r30)
    lwz     r0, 0x144(r3)
    cmpw    r4, r0
    blt-    branch_0x80071088
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80071088
    li      r3, 0x1
    b       branch_0x8007108c

branch_0x80071088:
    li      r3, 0x0
branch_0x8007108c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl theNerve__22TNerveWalkerPostAttackFv
theNerve__22TNerveWalkerPostAttackFv: # 0x800710a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e58(r13)
    extsb.  r0, r0
    bne-    branch_0x800710f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e54(r13)
    addi    r0, r3, 0x2770
    lis     r4, 0x8007
    stw     r0, -0x6e54(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xaac
    addi    r4, r4, 0x1108
    subi    r3, r13, 0x6e54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e58(r13)
branch_0x800710f4:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e54
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__22TNerveWalkerPostAttackFv
__dt__22TNerveWalkerPostAttackFv: # 0x80071108
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8007114c
    lis     r3, 0x803b
    addi    r0, r3, 0x2770
    stw     r0, 0x0(r31)
    beq-    branch_0x8007113c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8007113c:
    extsh.  r0, r4
    ble-    branch_0x8007114c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8007114c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveWalkerAttackCFP24TSpineBase_10TLiveActor_
execute__18TNerveWalkerAttackCFP24TSpineBase_10TLiveActor_: # 0x80071164
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80071198
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
branch_0x80071198:
    lwz     r3, 0xf4(r31)
    lwz     r0, MarioHitActor(r13)
    cmplw   r3, r0
    bne-    branch_0x80071288

    lwz     r3, MarioFlags(r13)
    lwz     r4, 0x0(r3)
    rlwinm. r0, r4, 0, 30, 30 # MARIOFLAG_2
    beq-    branch_0x800711c0
    li      r0, 0x1
    b       branch_0x800711c4

branch_0x800711c0:
    li      r0, 0x0
branch_0x800711c4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80071244
    rlwinm. r0, r4, 0, 15, 15
    beq-    branch_0x800711dc
    li      r0, 0x1
    b       branch_0x800711e0

branch_0x800711dc:
    li      r0, 0x0
branch_0x800711e0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80071244
    lwz     r3, -0x608c(r13)
    lwz     r3, 0x0(r3)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80071214
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80071214
    cmplwi  r3, 0x4104
    bne-    branch_0x8007121c
branch_0x80071214:
    li      r0, 0x1
    b       branch_0x80071220

branch_0x8007121c:
    li      r0, 0x0
branch_0x80071220:
    clrlwi. r0, r0, 24
    bne-    branch_0x80071244
    rlwinm. r0, r4, 0, 14, 14
    beq-    branch_0x80071238
    li      r0, 0x1
    b       branch_0x8007123c

branch_0x80071238:
    li      r0, 0x0
branch_0x8007123c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007124c
branch_0x80071244:
    li      r3, 0x1
    b       branch_0x800712cc

branch_0x8007124c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, MarioHitActorPos(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x4(r4)
    lfs     f2, 0x130(r3)
    fsubs   f0, f1, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x80071288
    li      r3, 0x1
    b       branch_0x800712cc

branch_0x80071288:
    mr      r3, r31
    lfs     f1, -0x6af4(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b0(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800712c8
    li      r3, 0x1
    b       branch_0x800712cc

branch_0x800712c8:
    li      r3, 0x0
branch_0x800712cc:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl theNerve__18TNerveWalkerAttackFv
theNerve__18TNerveWalkerAttackFv: # 0x800712e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e60(r13)
    extsb.  r0, r0
    bne-    branch_0x80071330
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e5c(r13)
    addi    r0, r3, 0x2780
    lis     r4, 0x8007
    stw     r0, -0x6e5c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xaa0
    addi    r4, r4, 0x1344
    subi    r3, r13, 0x6e5c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e60(r13)
branch_0x80071330:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e5c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TNerveWalkerAttackFv
__dt__18TNerveWalkerAttackFv: # 0x80071344
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80071388
    lis     r3, 0x803b
    addi    r0, r3, 0x2780
    stw     r0, 0x0(r31)
    beq-    branch_0x80071378
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80071378:
    extsh.  r0, r4
    ble-    branch_0x80071388
    mr      r3, r31
    bl      __dl__FPv
branch_0x80071388:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveWalkerGraphWanderCFP24TSpineBase_10TLiveActor_
execute__23TNerveWalkerGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x800713a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800713e8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b4(r12)
    mtlr    r12
    blrl
branch_0x800713e8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8007140c
    mr      r3, r31
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
branch_0x8007140c:
    mr      r3, r31
    lfs     f1, -0x6ae8(rtoc)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80071448
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a8(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x80071468

branch_0x80071448:
    mr      r3, r31
    lfs     f1, -0x6ae8(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x80071468:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl theNerve__23TNerveWalkerGraphWanderFv
theNerve__23TNerveWalkerGraphWanderFv: # 0x8007147c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e68(r13)
    extsb.  r0, r0
    bne-    branch_0x800714cc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e64(r13)
    addi    r0, r3, 0x2790
    lis     r4, 0x8007
    stw     r0, -0x6e64(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xa94
    addi    r4, r4, 0x14e0
    subi    r3, r13, 0x6e64
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e68(r13)
branch_0x800714cc:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e64
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__23TNerveWalkerGraphWanderFv
__dt__23TNerveWalkerGraphWanderFv: # 0x800714e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80071524
    lis     r3, 0x803b
    addi    r0, r3, 0x2790
    stw     r0, 0x0(r31)
    beq-    branch_0x80071514
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80071514:
    extsh.  r0, r4
    ble-    branch_0x80071524
    mr      r3, r31
    bl      __dl__FPv
branch_0x80071524:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveWalkerGenerateCFP24TSpineBase_10TLiveActor_
execute__20TNerveWalkerGenerateCFP24TSpineBase_10TLiveActor_: # 0x8007153c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80071574
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14c(r12)
    mtlr    r12
    blrl
    b       branch_0x80071604

branch_0x80071574:
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80071604
    lbz     r0, -0x6e68(r13)
    extsb.  r0, r0
    bne-    branch_0x800715c8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e64(r13)
    addi    r0, r3, 0x2790
    lis     r4, 0x8007
    stw     r0, -0x6e64(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xa94
    addi    r4, r4, 0x14e0
    subi    r3, r13, 0x6e64
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e68(r13)
branch_0x800715c8:
    subi    r4, r13, 0x6e64
    cmplwi  r4, 0x0
    beq-    branch_0x800715fc
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800715fc
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800715fc:
    li      r3, 0x1
    b       branch_0x80071608

branch_0x80071604:
    li      r3, 0x0
branch_0x80071608:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl theNerve__20TNerveWalkerGenerateFv
theNerve__20TNerveWalkerGenerateFv: # 0x8007161c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e70(r13)
    extsb.  r0, r0
    bne-    branch_0x8007166c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e6c(r13)
    addi    r0, r3, 0x27a0
    lis     r4, 0x8007
    stw     r0, -0x6e6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xa88
    addi    r4, r4, 0x1680
    subi    r3, r13, 0x6e6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e70(r13)
branch_0x8007166c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e6c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__20TNerveWalkerGenerateFv
__dt__20TNerveWalkerGenerateFv: # 0x80071680
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800716c4
    lis     r3, 0x803b
    addi    r0, r3, 0x27a0
    stw     r0, 0x0(r31)
    beq-    branch_0x800716b4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800716b4:
    extsh.  r0, r4
    ble-    branch_0x800716c4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800716c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initialGraphNode__12TWalkerEnemyFv
initialGraphNode__12TWalkerEnemyFv: # 0x800716dc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, -0x1
    stwu    sp, -0x8(sp)
    lwz     r4, 0x124(r3)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isReachedToGoalXZ__12TWalkerEnemyFv
isReachedToGoalXZ__12TWalkerEnemyFv: # 0x80071708
    mflr    r0
    addi    r4, r3, 0x104
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r5, 0x104(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x8007172c
    addi    r5, r5, 0x10
    b       branch_0x80071730

branch_0x8007172c:
    addi    r5, r4, 0x4
branch_0x80071730:
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x1c(sp)
    lfs     f1, 0x14(sp)
    lfs     f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, -0x6af8(rtoc)
    stfs    f1, 0x18(sp)
    lfs     f0, 0x14(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800717a0
    lfs     f0, 0x1c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800717a0
    li      r3, 0x1
    b       branch_0x800717c0

branch_0x800717a0:
    addi    r3, sp, 0x14
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x6aec(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800717bc
    li      r3, 0x1
    b       branch_0x800717c0

branch_0x800717bc:
    li      r3, 0x0
branch_0x800717c0:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl isResignationAttack__12TWalkerEnemyFv
isResignationAttack__12TWalkerEnemyFv: # 0x800717d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x104(r31)
    lfs     f31, 0x11c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80071810
    addi    r4, r4, 0x10
    b       branch_0x80071814

branch_0x80071810:
    addi    r4, r31, 0x108
branch_0x80071814:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x2c(sp)
    lfs     f2, 0x30(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    ble-    branch_0x80071890
    li      r3, 0x1
    b       branch_0x80071894

branch_0x80071890:
    li      r3, 0x0
branch_0x80071894:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl initAttacker__12TWalkerEnemyFP9THitActor
initAttacker__12TWalkerEnemyFP9THitActor: # 0x800718ac
    lwz     r6, 0x30(r4)
    li      r0, 0x1
    lwz     r5, 0x34(r4)
    stw     r6, 0x30(r3)
    stw     r5, 0x34(r3)
    lwz     r4, 0x38(r4)
    stw     r4, 0x38(r3)
    stb     r0, 0x184(r3)
    blr


.globl behaveToFindMario__12TWalkerEnemyFv
behaveToFindMario__12TWalkerEnemyFv: # 0x800718d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r0, 0x150(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0xa88
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80071a28
    lbz     r0, -0x6e68(r13)
    extsb.  r0, r0
    bne-    branch_0x8007193c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e64(r13)
    addi    r0, r3, 0x2790
    lis     r3, 0x8007
    stw     r0, -0x6e64(r13)
    addi    r4, r3, 0x14e0
    subi    r3, r13, 0x6e64
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e68(r13)
branch_0x8007193c:
    subi    r5, r13, 0x6e64
    lwz     r4, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x80071974
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x80071974
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x80071974:
    lbz     r0, -0x6e50(r13)
    extsb.  r0, r0
    bne-    branch_0x800719b4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e4c(r13)
    addi    r0, r3, 0x2760
    lis     r3, 0x8007
    stw     r0, -0x6e4c(r13)
    addi    r4, r3, 0xfb0
    subi    r3, r13, 0x6e4c
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e50(r13)
branch_0x800719b4:
    subi    r5, r13, 0x6e4c
    lwz     r4, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800719ec
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x800719ec
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x800719ec:
    bl      theNerve__20TNerveSmallEnemyJumpFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r30)
    beq-    branch_0x80071bd0
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x80071bd0
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
    b       branch_0x80071bd0

branch_0x80071a28:
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x6af8(rtoc)
    stw     r3, 0x34(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    beq-    branch_0x80071a60
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x38(sp)
    stfs    f1, 0x3c(sp)
    stfs    f2, 0x40(sp)
branch_0x80071a60:
    lwz     r3, 0x34(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r30)
    lwz     r4, 0x38(sp)
    lwz     r3, 0x3c(sp)
    stw     r4, 0xf8(r30)
    stw     r3, 0xfc(r30)
    lwz     r3, 0x40(sp)
    stw     r3, 0x100(r30)
    lwz     r3, 0x34(sp)
    stw     r3, 0x104(r30)
    lwz     r4, 0x38(sp)
    lwz     r3, 0x3c(sp)
    stw     r4, 0x108(r30)
    stw     r3, 0x10c(r30)
    lwz     r3, 0x40(sp)
    stw     r3, 0x110(r30)
    stw     r0, 0x118(r30)
    lbz     r0, -0x6e68(r13)
    extsb.  r0, r0
    bne-    branch_0x80071ae8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e64(r13)
    addi    r0, r3, 0x2790
    lis     r3, 0x8007
    stw     r0, -0x6e64(r13)
    addi    r4, r3, 0x14e0
    subi    r3, r13, 0x6e64
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e68(r13)
branch_0x80071ae8:
    subi    r5, r13, 0x6e64
    lwz     r4, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x80071b20
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x80071b20
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x80071b20:
    lbz     r0, -0x6e60(r13)
    extsb.  r0, r0
    bne-    branch_0x80071b60
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e5c(r13)
    addi    r0, r3, 0x2780
    lis     r3, 0x8007
    stw     r0, -0x6e5c(r13)
    addi    r4, r3, 0x1344
    subi    r3, r13, 0x6e5c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e60(r13)
branch_0x80071b60:
    subi    r5, r13, 0x6e5c
    lwz     r4, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x80071b98
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x80071b98
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x80071b98:
    bl      theNerve__20TNerveSmallEnemyJumpFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r30)
    beq-    branch_0x80071bd0
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x80071bd0
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80071bd0:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl walkBehavior__12TWalkerEnemyFif
walkBehavior__12TWalkerEnemyFif: # 0x80071be8
    mflr    r0
    cmpwi   r4, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lfs     f0, 0x158(r3)
    fmuls   f31, f1, f0
    beq-    branch_0x80071cac
    bge-    branch_0x80071c28
    cmpwi   r4, 0x0
    beq-    branch_0x80071c38
    bge-    branch_0x80071c8c
    b       branch_0x80071ce0

branch_0x80071c28:
    cmpwi   r4, 0x5
    beq-    branch_0x80071ce0
    bge-    branch_0x80071ce0
    b       branch_0x80071cc8

branch_0x80071c38:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x2f8
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x140(r30)
    addi    r4, r3, 0x2e4
    lfs     f0, 0x144(r30)
    mr      r3, r30
    fmuls   f1, f1, f31
    fmuls   f2, f0, f31
    lfs     f3, 0x0(r4)
    lfs     f4, 0x0(r31)
    bl      zigzagToCurPathNode__11TSpineEnemyFffff
    b       branch_0x80071ce0

branch_0x80071c8c:
    lfs     f1, 0x140(r30)
    mr      r3, r30
    lfs     f0, 0x144(r30)
    fmuls   f1, f1, f31
    lfs     f3, -0x6af8(rtoc)
    fmuls   f2, f0, f31
    bl      walkToCurPathNode__11TSpineEnemyFfff
    b       branch_0x80071ce0

branch_0x80071cac:
    lfs     f1, -0x6af8(rtoc)
    mr      r3, r30
    lfs     f0, 0x144(r30)
    fmr     f3, f1
    fmuls   f2, f0, f31
    bl      walkToCurPathNode__11TSpineEnemyFfff
    b       branch_0x80071ce0

branch_0x80071cc8:
    lfs     f0, 0x140(r30)
    mr      r3, r30
    lfs     f2, -0x6af8(rtoc)
    fmuls   f1, f0, f31
    fmr     f3, f2
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x80071ce0:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl reset__12TWalkerEnemyFv
reset__12TWalkerEnemyFv: # 0x80071cfc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, -0x1
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    lwz     r4, 0x124(r3)
    stw     r0, 0x4(r4)
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    bl      reset__11TSmallEnemyFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x324
    lfs     f1, 0x328(r3)
    lfs     f0, 0x324(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6ae0(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6ae4(rtoc)
    stw     r0, 0x48(sp)
    lfs     f1, 0x0(r30)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x140(r31)
    lwz     r3, 0x88(r31)
    bl      reset__7TWalkerFv
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    lwz     r3, 0x18(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80071db8
    stw     r0, 0x1c(r4)
branch_0x80071db8:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x6af8(rtoc)
    stw     r3, 0x38(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    beq-    branch_0x80071dfc
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f2, 0x44(sp)
branch_0x80071dfc:
    lwz     r3, 0x38(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x3c(sp)
    lwz     r3, 0x40(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x44(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x38(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x3c(sp)
    lwz     r3, 0x40(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x44(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl attackToMario__12TWalkerEnemyFv
attackToMario__12TWalkerEnemyFv: # 0x80071e60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__20TNerveSmallEnemyJumpFv
    cmplw   r30, r3
    beq-    branch_0x80071ffc
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x80071ffc
    lbz     r0, -0x6e70(r13)
    extsb.  r0, r0
    bne-    branch_0x80071ef4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e6c(r13)
    addi    r0, r3, 0x27a0
    lis     r4, 0x8007
    stw     r0, -0x6e6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xa88
    addi    r4, r4, 0x1680
    subi    r3, r13, 0x6e6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e70(r13)
branch_0x80071ef4:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6e6c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80071ffc
    lbz     r0, -0x6e58(r13)
    extsb.  r0, r0
    bne-    branch_0x80071f4c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e54(r13)
    addi    r0, r3, 0x2770
    lis     r4, 0x8007
    stw     r0, -0x6e54(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xaac
    addi    r4, r4, 0x1108
    subi    r3, r13, 0x6e54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e58(r13)
branch_0x80071f4c:
    subi    r6, r13, 0x6e54
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80071fa4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80071f98
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80071f98
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80071f98:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80071fa4:
    bl      theNerve__20TNerveSmallEnemyJumpFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r31)
    beq-    branch_0x80071ffc
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80071ff0
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80071ff0
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80071ff0:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80071ffc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl moveObject__12TWalkerEnemyFv
moveObject__12TWalkerEnemyFv: # 0x80072014
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80072048
    li      r0, 0x1
    b       branch_0x8007204c

branch_0x80072048:
    li      r0, 0x0
branch_0x8007204c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80072078
    lwz     r3, gpMarDirector(r13)
    lha     r4, 0x7c(r31)
    lwz     r0, 0x58(r3)
    clrlwi  r3, r4, 28
    clrlwi  r0, r0, 28
    cmpw    r3, r0
    bne-    branch_0x80072078
    mr      r3, r31
    bl      doShortCut__11TSpineEnemyFv
branch_0x80072078:
    mr      r3, r31
    bl      moveObject__11TSmallEnemyFv
    lwz     r3, 0x88(r31)
    lwz     r0, 0x1c(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x800721b8
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__20TNerveSmallEnemyJumpFv
    cmplw   r30, r3
    beq-    branch_0x800721b8
    mr      r3, r31
    lfs     f31, 0x34(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6ad8(rtoc)
    lfs     f4, 0x328(r3)
    addi    r3, sp, 0x50
    fmuls   f0, f0, f31
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    lwz     r4, -0x5ea8(r13)
    fctiwz  f0, f0
    lfs     f2, -0x6af8(rtoc)
    stfd    f0, 0x70(sp)
    lwz     r5, 0x74(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800721d4
    lwz     r0, 0x50(sp)
    mr      r3, r31
    lwz     r4, 0x54(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x58(sp)
    stw     r4, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x60(sp)
    stfs    f0, 0xac(r31)
    lfs     f0, 0x68(sp)
    stfs    f0, 0xb4(r31)
    bl      theNerve__20TNerveSmallEnemyJumpFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r31)
    beq-    branch_0x8007219c
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80072190
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80072190
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80072190:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x8007219c:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6ad4(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x800721b8:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_800721d4
set_f___Q29JGeometry8TVec3_f_Ffff_800721d4: # 0x800721d4
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl init__12TWalkerEnemyFP12TLiveManager
init__12TWalkerEnemyFP12TLiveManager: # 0x800721e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    bl      init__11TSmallEnemyFP12TLiveManager
    li      r3, 0x34
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8007221c
    mr      r3, r30
    bl      __ct__7TWalkerFv
branch_0x8007221c:
    stw     r30, 0x88(r31)
    lwz     r3, 0x88(r31)
    bl      reset__7TWalkerFv
    lfs     f0, -0x6ad0(rtoc)
    mr      r3, r31
    lwz     r4, 0x88(r31)
    stfs    f0, 0x18(r4)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x324
    lfs     f1, 0x328(r3)
    lfs     f0, 0x324(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6ae0(rtoc)
    stw     r0, 0x34(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6ae4(rtoc)
    stw     r0, 0x30(sp)
    lfs     f1, 0x0(r30)
    lfd     f2, 0x30(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x140(r31)
    lbz     r0, -0x6e70(r13)
    extsb.  r0, r0
    bne-    branch_0x800722d4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e6c(r13)
    addi    r0, r3, 0x27a0
    lis     r4, 0x8007
    stw     r0, -0x6e6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xa88
    addi    r4, r4, 0x1680
    subi    r3, r13, 0x6e6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e70(r13)
branch_0x800722d4:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6e6c
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __ct__12TWalkerEnemyFPCc
__ct__12TWalkerEnemyFPCc: # 0x80072310
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__18TWalkerEnemyParamsFPCc
__ct__18TWalkerEnemyParamsFPCc: # 0x80072354
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    subi    r29, r5, 0x6000
    stw     r28, 0x18(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r29, 0xe0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r28, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r29, 0xe0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r30, r3, 0x42c4
    stw     r30, 0x2d4(r28)
    lis     r3, 0x803b
    subi    r31, r3, 0x42d0
    lfs     f0, -0x6acc(rtoc)
    addi    r3, r29, 0xf0
    stfs    f0, 0x2e4(r28)
    stw     r31, 0x2d4(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x2e8
    addi    r6, r29, 0xf0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0x2e8(r28)
    addi    r3, r29, 0x100
    lfs     f0, -0x6ac8(rtoc)
    stfs    f0, 0x2f8(r28)
    stw     r31, 0x2e8(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x2fc
    addi    r6, r29, 0x100
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0x2fc(r28)
    addi    r3, r29, 0x114
    lfs     f0, -0x6ac4(rtoc)
    stfs    f0, 0x30c(r28)
    stw     r31, 0x2fc(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x310
    addi    r6, r29, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0x310(r28)
    mr      r3, r28
    lfs     f0, -0x6ac0(rtoc)
    stfs    f0, 0x320(r28)
    stw     r31, 0x310(r28)
    lfs     f0, -0x6af8(rtoc)
    stfs    f0, 0x324(r28)
    lfs     f0, -0x6ae8(rtoc)
    stfs    f0, 0x328(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
    lfs     f0, 0x30c(r28)
    mr      r3, r28
    stfs    f0, 0x324(r28)
    lfs     f0, 0x320(r28)
    stfs    f0, 0x328(r28)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __sinit_walkerEnemy_cpp
__sinit_walkerEnemy_cpp: # 0x80072498
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0xa88
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800724e0
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800724e0:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80072510
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80072510:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80072540
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80072540:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80072570
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80072570:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800725a0
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800725a0:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800725d0
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800725d0:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80072600
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80072600:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80072630
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80072630:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80072660
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80072660:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80072690
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80072690:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800726c0
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800726c0:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800726f0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800726f0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80072720
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80072720:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80072750
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80072750:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80072780
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80072780:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__12TWalkerEnemyFv
_32___dt__12TWalkerEnemyFv: # 0x80072794
    subi    r3, r3, 0x20
    b       __dt__12TWalkerEnemyFv

