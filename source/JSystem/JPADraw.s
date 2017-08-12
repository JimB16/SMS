
.globl initialize__7JPADrawFP14JPABaseEmitterP18JPATextureResource
initialize__7JPADrawFP14JPABaseEmitterP18JPATextureResource: # 0x803292ac
    mflr    r0
    lis     r6, cb__7JPADraw@ha
    stw     r0, 0x4(sp)
    addi    r0, r6, cb__7JPADraw@l
    stwu    sp, -0x190(sp)
    stw     r31, 0x18c(sp)
    addi    r31, r3, 0x0
    stw     r0, R13Off_m0x5ad8(r13)
    li      r0, 0x0
    stw     r4, 0x90(r3)
    lwz     r3, 0x90(r3)
    lwz     r3, 0x118(r3)
    lwz     r3, 0x4(r3)
    stw     r3, 0x94(r31)
    lwz     r3, 0x90(r31)
    lwz     r3, 0x118(r3)
    lwz     r3, 0x8(r3)
    stw     r3, 0x98(r31)
    lwz     r3, 0x90(r31)
    lwz     r3, 0x118(r3)
    lwz     r3, 0xc(r3)
    stw     r3, 0x9c(r31)
    lwz     r3, 0x90(r31)
    lwz     r3, 0x118(r3)
    lwz     r3, 0x10(r3)
    stw     r3, 0xa0(r31)
    stw     r31, 0xa4(r31)
    stw     r5, 0xac(r31)
    lwz     r3, 0x90(r31)
    lwz     r3, 0x118(r3)
    lwz     r3, 0x1c(r3)
    stw     r3, 0xb0(r31)
    lwz     r3, 0x90(r31)
    addi    r3, r3, 0xf4
    stw     r3, 0xa8(r31)
    stb     r0, 0xc2(r31)
    lfs     f0, 0x8c4(r2)
    stfs    f0, 0xb4(r31)
    lwz     r0, R2Off_0x8c0(r2)
    stw     r0, 0x180(sp)
    lwz     r4, 0x94(r31)
    lbz     r3, 0x83(r4)
    clrlwi. r0, r3, 31
    beq-    branch_0x80329370
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x80329378
    lwz     r0, 0x60(r4)
    stw     r0, 0xb8(r31)
    b       branch_0x80329378

branch_0x80329370:
    lwz     r0, 0x180(sp)
    stw     r0, 0xb8(r31)
branch_0x80329378:
    lwz     r4, 0x94(r31)
    lbz     r3, 0x84(r4)
    clrlwi. r0, r3, 31
    beq-    branch_0x8032939c
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x803293a4
    lwz     r0, 0x64(r4)
    stw     r0, 0xbc(r31)
    b       branch_0x803293a4

branch_0x8032939c:
    lwz     r0, 0x180(sp)
    stw     r0, 0xbc(r31)
branch_0x803293a4:
    li      r4, 0x0
    stb     r4, 0x8f(r31)
    li      r3, 0x8
    subfic  r0, r3, 0xa
    stb     r4, 0x8d(r31)
    cmpwi   r3, 0xa
    mtctr   r0
    slwi    r3, r3, 2
    stb     r4, 0x8e(r31)
    stb     r4, 0x8c(r31)
    stb     r4, 0x8b(r31)
    stb     r4, 0x8a(r31)
    stb     r4, 0x89(r31)
    stb     r4, 0x88(r31)
    stw     r4, 0x0(r31)
    stw     r4, 0x4(r31)
    stw     r4, 0x8(r31)
    stw     r4, 0xc(r31)
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r4, 0x18(r31)
    stw     r4, 0x1c(r31)
    stw     r4, 0x20(r31)
    stw     r4, 0x24(r31)
    stw     r4, 0x28(r31)
    stw     r4, 0x2c(r31)
    stw     r4, 0x30(r31)
    stw     r4, 0x34(r31)
    stw     r4, 0x38(r31)
    stw     r4, 0x3c(r31)
    stw     r4, 0x40(r31)
    stw     r4, 0x44(r31)
    stw     r4, 0x70(r31)
    stw     r4, 0x74(r31)
    stw     r4, 0x78(r31)
    stw     r4, 0x7c(r31)
    stw     r4, 0x48(r31)
    stw     r4, 0x4c(r31)
    stw     r4, 0x50(r31)
    stw     r4, 0x54(r31)
    stw     r4, 0x58(r31)
    stw     r4, 0x5c(r31)
    stw     r4, 0x60(r31)
    stw     r4, 0x64(r31)
    bge-    branch_0x80329468
branch_0x80329458:
    addi    r0, r3, 0x48
    stwx    r4, r31, r0
    addi    r3, r3, 0x4
    bdnz+      branch_0x80329458
branch_0x80329468:
    li      r3, 0x0
    stw     r3, 0x80(r31)
    li      r4, 0x1
    stw     r3, 0x84(r31)
    lwz     r5, 0x9c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80329494
    lbz     r0, 0x49(r5)
    clrlwi. r0, r0, 31
    bne-    branch_0x80329494
    mr      r4, r3
branch_0x80329494:
    clrlwi  r0, r4, 24
    stw     r0, 0x168(sp)
    li      r4, 0x0
    lwz     r3, 0x94(r31)
    lbz     r3, 0x83(r3)
    clrlwi. r0, r3, 31
    beq-    branch_0x803294bc
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x803294bc
    li      r4, 0x1
branch_0x803294bc:
    clrlwi  r0, r4, 24
    stw     r0, 0x16c(sp)
    li      r4, 0x0
    lwz     r3, 0x94(r31)
    lbz     r3, 0x84(r3)
    clrlwi. r0, r3, 31
    beq-    branch_0x803294e4
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x803294e4
    li      r4, 0x1
branch_0x803294e4:
    clrlwi  r0, r4, 24
    stw     r0, 0x170(sp)
    li      r0, 0x1
    lwz     r3, 0x94(r31)
    lbz     r3, 0x69(r3)
    cmplwi  r3, 0x5
    beq-    branch_0x8032950c
    cmplwi  r3, 0x6
    beq-    branch_0x8032950c
    li      r0, 0x0
branch_0x8032950c:
    clrlwi  r0, r0, 24
    stw     r0, 0x174(sp)
    li      r0, 0x1
    lwz     r3, 0x94(r31)
    lbz     r3, 0x69(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80329534
    cmplwi  r3, 0x1
    beq-    branch_0x80329534
    li      r0, 0x0
branch_0x80329534:
    clrlwi  r0, r0, 24
    stw     r0, 0x178(sp)
    li      r3, 0x0
    lwz     r4, 0x98(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8032955c
    lbz     r0, 0x78(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x8032955c
    li      r3, 0x1
branch_0x8032955c:
    clrlwi  r0, r3, 24
    stw     r0, 0x17c(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x168
    bl      setDrawExecVisitorsBeforeCB__7JPADrawFRCQ27JPADraw22JPADrawVisitorDefFlags
    lbz     r4, 0x89(r31)
    lis     r3, vc__7JPADraw@ha
    addi    r5, r3, vc__7JPADraw@l
    addi    r3, r4, 0x1
    slwi    r0, r4, 2
    stb     r3, 0x89(r31)
    addi    r7, r5, 0x90
    add     r3, r31, r0
    stw     r7, 0x4(r3)
    addi    r8, r5, 0x94
    addi    r3, r31, 0x0
    lbz     r6, 0x8a(r31)
    addi    r4, sp, 0x168
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8a(r31)
    add     r5, r31, r0
    stw     r7, 0x18(r5)
    lbz     r6, 0x8c(r31)
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8c(r31)
    add     r5, r31, r0
    stw     r8, 0x34(r5)
    lbz     r6, 0x8e(r31)
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8e(r31)
    add     r5, r31, r0
    stw     r8, 0x70(r5)
    bl      setDrawExecVisitorsAfterCB__7JPADrawFRCQ27JPADraw22JPADrawVisitorDefFlags
    addi    r3, r31, 0x0
    addi    r4, sp, 0x168
    bl      setDrawCalcVisitors__7JPADrawFRCQ27JPADraw22JPADrawVisitorDefFlags
    lwz     r0, 0x194(sp)
    li      r3, 0x1
    lwz     r31, 0x18c(sp)
    addi    sp, sp, 0x190
    mtlr    r0
    blr


.globl draw__7JPADrawFPA4_f
draw__7JPADrawFPA4_f: # 0x80329610
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x44(sp)
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x0
    bl      GXSetTevDirect
    li      r3, 0x1
    bl      GXSetTevDirect
    li      r3, 0x2
    bl      GXSetTevDirect
    li      r3, 0x0
    bl      GXSetCoPlanar
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r9, 0x94(r30)
    lis     r4, stLogicOp__12JPABaseShape@h
    addi    r6, r4, stLogicOp__12JPABaseShape@l
    lbz     r8, 0x70(r9)
    lis     r5, stBlendFactor__12JPABaseShape@h
    lbz     r4, 0x6e(r9)
    lis     r3, stBlendMode__12JPABaseShape@h
    slwi    r8, r8, 2
    add     r6, r6, r8
    lbz     r7, 0x6f(r9)
    lbz     r0, 0x6d(r9)
    slwi    r4, r4, 2
    slwi    r8, r7, 2
    lwz     r6, 0x0(r6)
    addi    r7, r5, stBlendFactor__12JPABaseShape@l
    add     r5, r7, r8
    add     r4, r7, r4
    lwz     r5, 0x0(r5)
    slwi    r7, r0, 2
    lwz     r4, 0x0(r4)
    addi    r0, r3, stBlendMode__12JPABaseShape@l
    add     r3, r0, r7
    lwz     r3, 0x0(r3)
    bl      GXSetBlendMode
    lwz     r6, 0x90(r30)
    lis     r3, cb__7JPADraw@ha
    addi    r5, r3, cb__7JPADraw@l
    lbz     r3, 0x180(r6)
    li      r0, 0xff
    stb     r3, 0x98(r5)
    mr      r3, r5
    lbz     r4, 0x181(r6)
    stb     r4, 0x99(r5)
    lbz     r4, 0x182(r6)
    stb     r4, 0x9a(r5)
    lbz     r4, 0x183(r6)
    stb     r4, 0x9b(r5)
    lwz     r6, 0x90(r30)
    lbz     r4, 0x184(r6)
    stb     r4, 0x9c(r5)
    lbz     r4, 0x185(r6)
    stb     r4, 0x9d(r5)
    lbz     r4, 0x186(r6)
    stb     r4, 0x9e(r5)
    stb     r0, 0x9f(r5)
    stw     r31, 0x34(r5)
    lwz     r4, 0x94(r30)
    lwz     r5, 0xa0(r30)
    bl      setupTev__15JPADrawSetupTevFP12JPABaseShapeP13JPAExTexShape
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x803297dc

branch_0x803297bc:
    lwzx    r3, r30, r31
    addi    r4, r30, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x803297dc:
    lbz     r0, 0x88(r30)
    cmpw    r29, r0
    blt+    branch_0x803297bc
    lwz     r3, 0x94(r30)
    lbz     r0, 0x7a(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80329800
    mr      r3, r30
    bl      zDraw__7JPADrawFv
branch_0x80329800:
    lbz     r0, 0xc2(r30)
    clrrwi  r0, r0, 1
    stb     r0, 0xc2(r30)
    lwz     r3, 0x94(r30)
    lbz     r0, 0x7c(r3)
    extrwi  r0, r0, 1, 30
    cmplwi  r0, 0x1
    bne-    branch_0x80329834
    lwz     r0, 0x9c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80329834
    mr      r3, r30
    bl      drawChild__7JPADrawFv
branch_0x80329834:
    mr      r3, r30
    bl      drawParticle__7JPADrawFv
    lwz     r3, 0x94(r30)
    lbz     r0, 0x7c(r3)
    extrwi. r0, r0, 1, 30
    bne-    branch_0x80329860
    lwz     r0, 0x9c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80329860
    mr      r3, r30
    bl      drawChild__7JPADrawFv
branch_0x80329860:
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl calc__7JPADrawFv
calc__7JPADrawFv: # 0x80329894
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    b       branch_0x803298e0

branch_0x803298bc:
    addi    r0, r31, 0x24
    lwzx    r3, r29, r0
    addi    r4, r29, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x803298e0:
    lbz     r0, 0x8b(r29)
    cmpw    r30, r0
    blt+    branch_0x803298bc
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl calcParticle__7JPADrawFP15JPABaseParticle
calcParticle__7JPADrawFP15JPABaseParticle: # 0x80329908
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x58(r29)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lhz     r4, 0x34(r3)
    li      r30, 0x0
    lha     r0, 0x36(r3)
    li      r31, 0x0
    add     r0, r4, r0
    sth     r0, 0x34(r3)
    b       branch_0x80329984

branch_0x8032995c:
    addi    r0, r31, 0x48
    lwzx    r3, r28, r0
    addi    r5, r29, 0x0
    addi    r4, r28, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80329984:
    lbz     r0, 0x8d(r28)
    cmpw    r30, r0
    blt+    branch_0x8032995c
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl calcChild__7JPADrawFP15JPABaseParticle
calcChild__7JPADrawFP15JPABaseParticle: # 0x803299b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x58(r29)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    lhz     r4, 0x34(r3)
    li      r30, 0x0
    lha     r0, 0x36(r3)
    li      r31, 0x0
    add     r0, r4, r0
    sth     r0, 0x34(r3)
    b       branch_0x80329a2c

branch_0x80329a04:
    addi    r0, r31, 0x80
    lwzx    r3, r28, r0
    addi    r5, r29, 0x0
    addi    r4, r28, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80329a2c:
    lbz     r0, 0x8f(r28)
    cmpw    r30, r0
    blt+    branch_0x80329a04
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl initParticle__7JPADrawFP15JPABaseParticle
initParticle__7JPADrawFP15JPABaseParticle: # 0x80329a58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stw     r31, 0x154(sp)
    stw     r30, 0x150(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    lwz     r12, 0x58(r4)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    mr      r31, r3
    bl      JPAGetEmitterInfoPtr__Fv
    addi    r4, r3, 0x54
    lfs     f0, 0x54(r3)
    lis     r3, unk_0019660d@h
    addi    r0, r3, unk_0019660d@l
    stfs    f0, 0x0(r31)
    lis     r3, 0x4330
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r31)
    lwz     r4, 0xb8(r30)
    stw     r4, 0x2c(r31)
    lwz     r4, 0xbc(r30)
    stw     r4, 0x30(r31)
    lfs     f0, 0x8c4(r2)
    stfs    f0, 0x20(r31)
    lwz     r6, 0x90(r30)
    lwz     r5, 0x94(r30)
    lwz     r4, 0x21c(r6)
    lha     r5, 0x58(r5)
    mullw   r4, r4, r0
    addis   r4, r4, 0x3c6f
    addi    r4, r4, -0xca1
    stw     r4, 0x21c(r6)
    xoris   r4, r5, 0x8000
    lwz     r5, 0x21c(r6)
    stw     r4, 0x14c(sp)
    srwi    r4, r5, 9
    lfd     f2, 0x8d8(r2)
    oris    r4, r4, 0x3f80
    stw     r3, 0x148(sp)
    stw     r4, 0x110(sp)
    lfd     f1, 0x148(sp)
    lfs     f3, 0x110(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f3, f0
    fmuls   f1, f2, f1
    fctiwz  f1, f1
    stfd    f1, 0x140(sp)
    lwz     r3, 0x144(sp)
    stw     r3, 0x28(r31)
    lwz     r3, 0x98(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80329d70
    lbz     r3, 0x7f(r3)
    cmpwi   r3, 0x0
    beq-    branch_0x80329cb8
    lwz     r4, 0x90(r30)
    lwz     r3, 0x21c(r4)
    mullw   r3, r3, r0
    addis   r3, r3, 0x3c6f
    addi    r3, r3, -0xca1
    stw     r3, 0x21c(r4)
    lwz     r3, 0x21c(r4)
    lfs     f1, 0x8d0(r2)
    srwi    r3, r3, 9
    lfs     f3, 0x8cc(r2)
    oris    r3, r3, 0x3f80
    lfs     f5, 0x8c8(r2)
    stw     r3, 0x10c(sp)
    lfs     f2, 0x10c(sp)
    lwz     r3, 0x98(r30)
    fsubs   f2, f2, f0
    lfs     f6, 0x6c(r3)
    lfs     f4, 0x60(r3)
    fsubs   f1, f2, f1
    fmuls   f1, f1, f6
    fmuls   f1, f3, f1
    fmadds  f1, f5, f4, f1
    fctiwz  f1, f1
    stfd    f1, 0x140(sp)
    lwz     r3, 0x144(sp)
    sth     r3, 0x34(r31)
    lwz     r4, 0x90(r30)
    lwz     r3, 0x21c(r4)
    mullw   r3, r3, r0
    addis   r3, r3, 0x3c6f
    addi    r3, r3, -0xca1
    stw     r3, 0x21c(r4)
    lwz     r3, 0x21c(r4)
    lfs     f3, 0x8d4(r2)
    srwi    r3, r3, 9
    oris    r3, r3, 0x3f80
    stw     r3, 0x108(sp)
    lfs     f1, 0x108(sp)
    lwz     r3, 0x98(r30)
    fsubs   f2, f1, f0
    lfs     f1, 0x70(r3)
    fmsubs  f2, f3, f2, f0
    fcmpo   cr0, f2, f1
    bge-    branch_0x80329c54
    lwz     r4, 0x90(r30)
    lwz     r3, 0x21c(r4)
    mullw   r3, r3, r0
    addis   r3, r3, 0x3c6f
    addi    r0, r3, -0xca1
    stw     r0, 0x21c(r4)
    lwz     r0, 0x21c(r4)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x104(sp)
    lfs     f1, 0x104(sp)
    lwz     r3, 0x98(r30)
    fsubs   f1, f1, f0
    lfs     f4, 0x68(r3)
    lfs     f2, 0x64(r3)
    fmsubs  f1, f3, f1, f0
    fmadds  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f0, f5, f0
    fctiwz  f0, f0
    stfd    f0, 0x140(sp)
    lwz     r0, 0x144(sp)
    b       branch_0x80329cb0

branch_0x80329c54:
    lwz     r4, 0x90(r30)
    lwz     r3, 0x21c(r4)
    mullw   r3, r3, r0
    addis   r3, r3, 0x3c6f
    addi    r0, r3, -0xca1
    stw     r0, 0x21c(r4)
    lwz     r0, 0x21c(r4)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x100(sp)
    lfs     f1, 0x100(sp)
    lwz     r3, 0x98(r30)
    fsubs   f1, f1, f0
    lfs     f2, 0x64(r3)
    lfs     f4, 0x68(r3)
    fmsubs  f1, f3, f1, f0
    fneg    f2, f2
    fmadds  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f0, f5, f0
    fctiwz  f0, f0
    stfd    f0, 0x140(sp)
    lwz     r0, 0x144(sp)
branch_0x80329cb0:
    sth     r0, 0x36(r31)
    b       branch_0x80329cc4

branch_0x80329cb8:
    li      r0, 0x0
    sth     r0, 0x34(r31)
    sth     r0, 0x36(r31)
branch_0x80329cc4:
    lwz     r5, 0x90(r30)
    lis     r3, unk_0019660d@h
    addi    r4, r3, unk_0019660d@l
    lwz     r0, 0x21c(r5)
    mullw   r3, r0, r4
    addis   r3, r3, 0x3c6f
    addi    r0, r3, -0xca1
    stw     r0, 0x21c(r5)
    lwz     r0, 0x21c(r5)
    lfs     f2, 0x8c4(r2)
    srwi    r0, r0, 9
    lfs     f3, 0x8d4(r2)
    oris    r0, r0, 0x3f80
    stw     r0, 0xfc(sp)
    lfs     f0, 0xfc(sp)
    lwz     r3, 0x98(r30)
    fsubs   f1, f0, f2
    lfs     f4, 0xb4(r30)
    lfs     f0, 0x34(r3)
    fmsubs  f1, f3, f1, f2
    fmadds  f0, f1, f0, f2
    fmuls   f0, f4, f0
    stfs    f0, 0xc(r31)
    stfs    f0, 0x14(r31)
    stfs    f0, 0x10(r31)
    lwz     r5, 0x90(r30)
    lwz     r0, 0x21c(r5)
    mullw   r3, r0, r4
    addis   r3, r3, 0x3c6f
    addi    r0, r3, -0xca1
    stw     r0, 0x21c(r5)
    lwz     r0, 0x21c(r5)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0xf8(sp)
    lfs     f0, 0xf8(sp)
    lwz     r3, 0x98(r30)
    fsubs   f1, f0, f2
    lfs     f0, 0x28(r3)
    fmsubs  f1, f3, f1, f2
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x24(r31)
    b       branch_0x80329d90

branch_0x80329d70:
    li      r0, 0x0
    sth     r0, 0x34(r31)
    sth     r0, 0x36(r31)
    lfs     f1, 0xb4(r30)
    stfs    f1, 0x14(r31)
    stfs    f1, 0x10(r31)
    stfs    f1, 0xc(r31)
    stfs    f0, 0x24(r31)
branch_0x80329d90:
    lwz     r0, 0x15c(sp)
    lwz     r31, 0x154(sp)
    lwz     r30, 0x150(sp)
    mtlr    r0
    addi    sp, sp, 0x158
    blr


.globl initChild__7JPADrawFP15JPABaseParticleP15JPABaseParticle
initChild__7JPADrawFP15JPABaseParticleP15JPABaseParticle: # 0x80329da8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    stw     r30, 0xd8(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    stw     r29, 0xd4(sp)
    mr      r29, r5
    lwz     r12, 0x58(r4)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x58(r29)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x8(r31)
    stw     r0, 0x8(r3)
    lfs     f0, 0x8c4(r2)
    stfs    f0, 0x20(r3)
    lwz     r5, 0x9c(r30)
    lbz     r0, 0x4e(r5)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80329f24
    lbz     r0, 0x2c(r31)
    lis     r4, 0x4330
    lfd     f1, 0x8e0(r2)
    stw     r0, 0xcc(sp)
    lfs     f2, 0x34(r5)
    stw     r4, 0xc8(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f0, f2
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    stb     r0, 0x2c(r3)
    lbz     r0, 0x2d(r31)
    stw     r0, 0xbc(sp)
    stw     r4, 0xb8(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f0, f2
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r0, 0xb4(sp)
    stb     r0, 0x2d(r3)
    lbz     r0, 0x2e(r31)
    stw     r0, 0xac(sp)
    stw     r4, 0xa8(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f0, f2
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    stb     r0, 0x2e(r3)
    lbz     r0, 0x30(r31)
    stw     r0, 0x9c(sp)
    stw     r4, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f0, f2
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r0, 0x94(sp)
    stb     r0, 0x30(r3)
    lbz     r0, 0x31(r31)
    stw     r0, 0x8c(sp)
    stw     r4, 0x88(sp)
    lfd     f0, 0x88(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f0, f2
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r0, 0x84(sp)
    stb     r0, 0x31(r3)
    lbz     r0, 0x32(r31)
    stw     r0, 0x7c(sp)
    stw     r4, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f0, f2
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r0, 0x74(sp)
    stb     r0, 0x32(r3)
    b       branch_0x80329f38

branch_0x80329f24:
    lwz     r0, 0x38(r5)
    stw     r0, 0x2c(r3)
    lwz     r4, 0x9c(r30)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x30(r3)
branch_0x80329f38:
    lwz     r5, 0x9c(r30)
    lbz     r0, 0x4e(r5)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80329fb0
    lbz     r0, 0x2f(r31)
    lis     r4, 0x4330
    lfs     f2, 0x20(r31)
    stw     r0, 0x74(sp)
    lfs     f0, 0x2c(r5)
    stw     r4, 0x70(sp)
    lfd     f1, 0x8e0(r2)
    fmuls   f2, f2, f0
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f0, f2
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stb     r0, 0x2f(r3)
    lbz     r0, 0x33(r31)
    stw     r0, 0x84(sp)
    stw     r4, 0x80(sp)
    lfd     f0, 0x80(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f0, f2
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stb     r0, 0x33(r3)
    b       branch_0x80329fc4

branch_0x80329fb0:
    lbz     r0, 0x3b(r5)
    stb     r0, 0x2f(r3)
    lwz     r4, 0x9c(r30)
    lbz     r0, 0x3f(r4)
    stb     r0, 0x33(r3)
branch_0x80329fc4:
    lwz     r4, 0x9c(r30)
    lbz     r0, 0x4e(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x80329ffc
    lfs     f1, 0x28(r4)
    lfs     f0, 0x10(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x14(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x24(r3)
    stfs    f0, 0x14(r3)
    b       branch_0x8032a010

branch_0x80329ffc:
    lfs     f0, 0x8c4(r2)
    stfs    f0, 0x24(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
branch_0x8032a010:
    lhz     r0, 0x34(r31)
    sth     r0, 0x34(r3)
    lwz     r4, 0x9c(r30)
    lbz     r0, 0x4d(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a048
    lfs     f1, 0x8c8(r2)
    lfs     f0, 0x30(r4)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r0, 0x74(sp)
    sth     r0, 0x36(r3)
    b       branch_0x8032a050

branch_0x8032a048:
    li      r0, 0x0
    sth     r0, 0x36(r3)
branch_0x8032a050:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    lwz     r29, 0xd4(sp)
    addi    sp, sp, 0xe0
    blr


.globl swapImage__7JPADrawFPC7ResTIMGs
swapImage__7JPADrawFPC7ResTIMGs: # 0x8032a06c
    mflr    r0
    stw     r0, 0x4(sp)
    extsh.  r0, r5
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    bge-    branch_0x8032a08c
    li      r3, 0x0
    b       branch_0x8032a0b8

branch_0x8032a08c:
    lwz     r6, 0xb0(r3)
    clrlslwi  r0, r5, 24, 1
    lwz     r3, 0xac(r3)
    lhzx    r0, r6, r0
    lwz     r3, 0x2c(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    addi    r3, r3, 0x8
    lwz     r31, 0x20(r3)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    mr      r3, r31
branch_0x8032a0b8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setDrawExecVisitorsBeforeCB__7JPADrawFRCQ27JPADraw22JPADrawVisitorDefFlags
setDrawExecVisitorsBeforeCB__7JPADrawFRCQ27JPADraw22JPADrawVisitorDefFlags: # 0x8032a0cc
    lwz     r0, 0xa0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8032a0f8
    lbz     r5, 0x88(r3)
    lis     r6, vc__7JPADraw@ha
    addi    r6, r6, vc__7JPADraw@l
    addi    r0, r5, 0x1
    stb     r0, 0x88(r3)
    addi    r6, r6, 0x50
    slwi    r0, r5, 2
    stwx    r6, r3, r0
branch_0x8032a0f8:
    lwz     r0, 0x10(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a12c
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0xc
    add     r5, r3, r0
    stw     r6, 0x4(r5)
    b       branch_0x8032a220

branch_0x8032a12c:
    lwz     r5, 0x94(r3)
    lbz     r0, 0x7b(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a194
    lbz     r0, 0x87(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8032a170
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0x4
    add     r5, r3, r0
    stw     r6, 0x4(r5)
    b       branch_0x8032a220

branch_0x8032a170:
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    add     r5, r3, r0
    stw     r7, 0x4(r5)
    b       branch_0x8032a220

branch_0x8032a194:
    lbz     r0, 0x87(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8032a1fc
    lwz     r0, 0xc(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a1d4
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0x10
    add     r5, r3, r0
    stw     r6, 0x4(r5)
    b       branch_0x8032a220

branch_0x8032a1d4:
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0x8
    add     r5, r3, r0
    stw     r6, 0x4(r5)
    b       branch_0x8032a220

branch_0x8032a1fc:
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0xc
    add     r5, r3, r0
    stw     r6, 0x4(r5)
branch_0x8032a220:
    lwz     r5, 0x94(r3)
    lbz     r0, 0x68(r5)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8032a29c
    lwz     r0, 0xc(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032a248
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032a270
branch_0x8032a248:
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0x20
    add     r5, r3, r0
    stw     r6, 0x4(r5)
    b       branch_0x8032a358

branch_0x8032a270:
    beq-    branch_0x8032a358
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0x28
    add     r5, r3, r0
    stw     r6, 0x4(r5)
    b       branch_0x8032a358

branch_0x8032a29c:
    lbz     r6, 0x83(r5)
    clrlwi. r0, r6, 31
    beq-    branch_0x8032a2b0
    rlwinm. r0, r6, 0, 30, 30
    bne-    branch_0x8032a320
branch_0x8032a2b0:
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032a320
    lbz     r5, 0x84(r5)
    clrlwi. r0, r5, 31
    beq-    branch_0x8032a2d0
    rlwinm. r0, r5, 0, 30, 30
    bne-    branch_0x8032a2f8
branch_0x8032a2d0:
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0x20
    add     r5, r3, r0
    stw     r6, 0x4(r5)
    b       branch_0x8032a358

branch_0x8032a2f8:
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0x24
    add     r5, r3, r0
    stw     r6, 0x4(r5)
    b       branch_0x8032a358

branch_0x8032a320:
    lbz     r5, 0x84(r5)
    clrlwi. r0, r5, 31
    beq-    branch_0x8032a334
    rlwinm. r0, r5, 0, 30, 30
    bne-    branch_0x8032a358
branch_0x8032a334:
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0x28
    add     r5, r3, r0
    stw     r6, 0x4(r5)
branch_0x8032a358:
    lwz     r5, 0x94(r3)
    lbz     r6, 0x81(r5)
    cmplwi  r6, 0x0
    bne-    branch_0x8032a3a8
    lbz     r0, 0x80(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8032a380
    lbz     r0, 0x68(r5)
    clrlwi. r0, r0, 31
    beq-    branch_0x8032a3a8
branch_0x8032a380:
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0x48
    add     r5, r3, r0
    stw     r6, 0x4(r5)
    b       branch_0x8032a3d4

branch_0x8032a3a8:
    cmplwi  r6, 0x0
    beq-    branch_0x8032a3d4
    lbz     r6, 0x89(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x89(r3)
    addi    r6, r7, 0x44
    add     r5, r3, r0
    stw     r6, 0x4(r5)
branch_0x8032a3d4:
    lwz     r5, 0x9c(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x8032a424
    lbz     r0, 0x4b(r5)
    cmpwi   r0, 0x0
    bne-    branch_0x8032a424
    lbz     r5, 0x4e(r5)
    rlwinm. r0, r5, 0, 30, 30
    bne-    branch_0x8032a424
    rlwinm. r0, r5, 0, 29, 29
    bne-    branch_0x8032a424
    lbz     r6, 0x8a(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8a(r3)
    addi    r6, r7, 0x2c
    add     r5, r3, r0
    stw     r6, 0x18(r5)
branch_0x8032a424:
    lwz     r5, 0x94(r3)
    lbz     r0, 0x68(r5)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8032a538
    lwz     r0, 0x4(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a49c
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a474
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x3c
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032a574

branch_0x8032a474:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x30
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032a574

branch_0x8032a49c:
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a504
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a4dc
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x40
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032a574

branch_0x8032a4dc:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x34
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032a574

branch_0x8032a504:
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a574
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x38
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032a574

branch_0x8032a538:
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a574
    lwz     r0, 0xc(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032a574
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x34
    add     r4, r3, r0
    stw     r5, 0x34(r4)
branch_0x8032a574:
    lwz     r4, 0x94(r3)
    lbz     r0, 0x81(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8032a5c0
    lbz     r0, 0x80(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8032a5c0
    lbz     r0, 0x68(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x8032a5c0
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x4c
    add     r4, r3, r0
    stw     r5, 0x34(r4)
branch_0x8032a5c0:
    lwz     r4, 0x94(r3)
    lbz     r0, 0x69(r4)
    cmpwi   r0, 0x5
    bge-    branch_0x8032a5e8
    cmpwi   r0, 0x1
    beq-    branch_0x8032a63c
    bge-    branch_0x8032a67c
    cmpwi   r0, 0x0
    bge-    branch_0x8032a5fc
    b       branch_0x8032a6b8

branch_0x8032a5e8:
    cmpwi   r0, 0xb
    bge-    branch_0x8032a6b8
    cmpwi   r0, 0x7
    bge-    branch_0x8032a67c
    b       branch_0x8032a6b8

branch_0x8032a5fc:
    lwz     r4, 0x98(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8032a6b8
    lbz     r0, 0x7e(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x8032a6b8
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x18
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032a6b8

branch_0x8032a63c:
    lwz     r4, 0x98(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8032a6b8
    lbz     r0, 0x7e(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x8032a6b8
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x1c
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032a6b8

branch_0x8032a67c:
    lbz     r0, 0x87(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8032a6b8
    lbz     r0, 0x7b(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032a6b8
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x14
    add     r4, r3, r0
    stw     r5, 0x34(r4)
branch_0x8032a6b8:
    lwz     r4, 0x9c(r3)
    cmplwi  r4, 0x0
    beqlr-    

    lbz     r0, 0x4b(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032a6e4
    lbz     r4, 0x4e(r4)
    rlwinm. r0, r4, 0, 30, 30
    bne-    branch_0x8032a6e4
    rlwinm. r0, r4, 0, 29, 29
    beq-    branch_0x8032a708
branch_0x8032a6e4:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r5, r6, 0x3c
    add     r4, r3, r0
    stw     r5, 0x70(r4)
branch_0x8032a708:
    lwz     r4, 0x9c(r3)
    lbz     r0, 0x44(r4)
    cmpwi   r0, 0x1
    beq-    branch_0x8032a74c
    bgelr-    

    cmpwi   r0, 0x0
    bltlr-    

    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x18
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032a74c:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x1c
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr


.globl setDrawExecVisitorsAfterCB__7JPADrawFRCQ27JPADraw22JPADrawVisitorDefFlags
setDrawExecVisitorsAfterCB__7JPADrawFRCQ27JPADraw22JPADrawVisitorDefFlags: # 0x8032a774
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032aa5c
    lwz     r4, 0x94(r3)
    lbz     r0, 0x69(r4)
    cmplwi  r0, 0xa
    bgt-    branch_0x8032aa5c
    lis     r4, unk_803e3ecc@h
    addi    r4, r4, unk_803e3ecc@l
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
branch_0x8032a7a8:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x80
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a7d0:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x84
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a7f8:
    lwz     r4, 0x98(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8032a838
    lbz     r0, 0x7f(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a838
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x58
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a838:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x54
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a860:
    lwz     r4, 0x98(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8032a8a0
    lbz     r0, 0x7f(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a8a0
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x68
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a8a0:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x64
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a8c8:
    lwz     r4, 0x98(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8032a908
    lbz     r0, 0x7f(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a908
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x70
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a908:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x6c
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a930:
    lwz     r4, 0x98(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8032a970
    lbz     r0, 0x7f(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032a970
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x60
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a970:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x5c
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a998:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x78
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a9c0:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x7c
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032a9e8:
    lbz     r5, 0x8c(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8c(r3)
    addi    r5, r6, 0x74
    add     r4, r3, r0
    stw     r5, 0x34(r4)
    b       branch_0x8032aa5c

branch_0x8032aa10:
    lbz     r5, 0x89(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x89(r3)
    addi    r5, r6, 0x88
    add     r4, r3, r0
    stw     r5, 0x4(r4)
    b       branch_0x8032aa5c

branch_0x8032aa38:
    lbz     r5, 0x89(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x89(r3)
    addi    r5, r6, 0x8c
    add     r4, r3, r0
    stw     r5, 0x4(r4)
branch_0x8032aa5c:
    lwz     r5, 0x9c(r3)
    cmplwi  r5, 0x0
    beqlr-    

    lbz     r0, 0x44(r5)
    cmplwi  r0, 0xa
    bgtlr-    

    lis     r4, unk_803e3ea0@h
    addi    r4, r4, unk_803e3ea0@l
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
branch_0x8032aa8c:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x80
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032aab4:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x84
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032aadc:
    lwz     r4, 0x98(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8032aaf4
    lbz     r0, 0x7f(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032ab00
branch_0x8032aaf4:
    lbz     r0, 0x4d(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8032ab28
branch_0x8032ab00:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x58
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032ab28:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x54
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032ab50:
    lwz     r4, 0x98(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8032ab68
    lbz     r0, 0x7f(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032ab74
branch_0x8032ab68:
    lbz     r0, 0x4d(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8032ab9c
branch_0x8032ab74:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x68
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032ab9c:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x64
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032abc4:
    lwz     r4, 0x98(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8032abdc
    lbz     r0, 0x7f(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032abe8
branch_0x8032abdc:
    lbz     r0, 0x4d(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8032ac10
branch_0x8032abe8:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x70
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032ac10:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x6c
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032ac38:
    lwz     r4, 0x98(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8032ac50
    lbz     r0, 0x7f(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032ac5c
branch_0x8032ac50:
    lbz     r0, 0x4d(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8032ac84
branch_0x8032ac5c:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x60
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032ac84:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x5c
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032acac:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x78
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032acd4:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x7c
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032acfc:
    lbz     r5, 0x8e(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8e(r3)
    addi    r4, r6, 0x74
    add     r3, r3, r0
    stw     r4, 0x70(r3)
    blr

branch_0x8032ad24:
    lbz     r5, 0x8a(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8a(r3)
    addi    r4, r6, 0x88
    add     r3, r3, r0
    stw     r4, 0x18(r3)
    blr

branch_0x8032ad4c:
    lbz     r5, 0x8a(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8a(r3)
    addi    r4, r6, 0x8c
    add     r3, r3, r0
    stw     r4, 0x18(r3)
    blr


.globl setDrawCalcVisitors__7JPADrawFRCQ27JPADraw22JPADrawVisitorDefFlags
setDrawCalcVisitors__7JPADrawFRCQ27JPADraw22JPADrawVisitorDefFlags: # 0x8032ad74
    lwz     r5, 0x94(r3)
    lbz     r0, 0x68(r5)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8032aef0
    lwz     r0, 0x4(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032ad9c
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032aef0
branch_0x8032ad9c:
    lbz     r0, 0x82(r5)
    cmpwi   r0, 0x2
    beq-    branch_0x8032ae1c
    bge-    branch_0x8032adbc
    cmpwi   r0, 0x0
    beq-    branch_0x8032adcc
    bge-    branch_0x8032adf4
    b       branch_0x8032ae90

branch_0x8032adbc:
    cmpwi   r0, 0x4
    beq-    branch_0x8032ae6c
    bge-    branch_0x8032ae90
    b       branch_0x8032ae44

branch_0x8032adcc:
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0xd4
    add     r5, r3, r0
    stw     r6, 0x24(r5)
    b       branch_0x8032ae90

branch_0x8032adf4:
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0xdc
    add     r5, r3, r0
    stw     r6, 0x24(r5)
    b       branch_0x8032ae90

branch_0x8032ae1c:
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0xe4
    add     r5, r3, r0
    stw     r6, 0x24(r5)
    b       branch_0x8032ae90

branch_0x8032ae44:
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0xec
    add     r5, r3, r0
    stw     r6, 0x24(r5)
    b       branch_0x8032ae90

branch_0x8032ae6c:
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0xf4
    add     r5, r3, r0
    stw     r6, 0x24(r5)
branch_0x8032ae90:
    lwz     r0, 0x4(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032aec0
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0xc0
    add     r5, r3, r0
    stw     r6, 0x24(r5)
branch_0x8032aec0:
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032aef0
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0xc8
    add     r5, r3, r0
    stw     r6, 0x24(r5)
branch_0x8032aef0:
    lwz     r5, 0x94(r3)
    lbz     r0, 0x81(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x8032b00c
    lbz     r0, 0x80(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8032b00c
    lbz     r0, 0x68(r5)
    clrlwi. r0, r0, 31
    beq-    branch_0x8032b00c
    lbz     r0, 0x7d(r5)
    cmpwi   r0, 0x2
    beq-    branch_0x8032af98
    bge-    branch_0x8032af38
    cmpwi   r0, 0x0
    beq-    branch_0x8032af48
    bge-    branch_0x8032af70
    b       branch_0x8032b00c

branch_0x8032af38:
    cmpwi   r0, 0x4
    beq-    branch_0x8032afe8
    bge-    branch_0x8032b00c
    b       branch_0x8032afc0

branch_0x8032af48:
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0x10c
    add     r5, r3, r0
    stw     r6, 0x24(r5)
    b       branch_0x8032b00c

branch_0x8032af70:
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0x114
    add     r5, r3, r0
    stw     r6, 0x24(r5)
    b       branch_0x8032b00c

branch_0x8032af98:
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0x11c
    add     r5, r3, r0
    stw     r6, 0x24(r5)
    b       branch_0x8032b00c

branch_0x8032afc0:
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0x124
    add     r5, r3, r0
    stw     r6, 0x24(r5)
    b       branch_0x8032b00c

branch_0x8032afe8:
    lbz     r6, 0x8b(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8b(r3)
    addi    r6, r7, 0x12c
    add     r5, r3, r0
    stw     r6, 0x24(r5)
branch_0x8032b00c:
    lwz     r5, 0x98(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x8032b24c
    lbz     r6, 0x7e(r5)
    clrlwi. r0, r6, 31
    beq-    branch_0x8032b24c
    rlwinm. r0, r6, 0, 28, 28
    beq-    branch_0x8032b088
    lbz     r0, 0x7d(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8032b060
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xb8
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b0ac

branch_0x8032b060:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xb0
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b0ac

branch_0x8032b088:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xac
    add     r5, r3, r0
    stw     r6, 0x48(r5)
branch_0x8032b0ac:
    lwz     r5, 0x98(r3)
    lbz     r0, 0x7e(r5)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x8032b0f4
    lwz     r5, 0x94(r3)
    lbz     r0, 0x69(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x8032b0f4
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0x9c
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b118

branch_0x8032b0f4:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0x98
    add     r5, r3, r0
    stw     r6, 0x48(r5)
branch_0x8032b118:
    lwz     r5, 0x94(r3)
    lbz     r0, 0x69(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8032b24c
    lwz     r6, 0x98(r3)
    lbz     r5, 0x7e(r6)
    rlwinm. r0, r5, 0, 30, 30
    bne-    branch_0x8032b160
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xa8
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b24c

branch_0x8032b160:
    rlwinm. r0, r5, 0, 29, 29
    beq-    branch_0x8032b1c4
    lbz     r0, 0x7b(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x8032b19c
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xbc
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b1f0

branch_0x8032b19c:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xb4
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b1f0

branch_0x8032b1c4:
    rlwinm. r0, r5, 0, 28, 28
    beq-    branch_0x8032b1f0
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xac
    add     r5, r3, r0
    stw     r6, 0x48(r5)
branch_0x8032b1f0:
    lwz     r5, 0x98(r3)
    lbz     r0, 0x7e(r5)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8032b228
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xa4
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b24c

branch_0x8032b228:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xa0
    add     r5, r3, r0
    stw     r6, 0x48(r5)
branch_0x8032b24c:
    lwz     r5, 0x94(r3)
    lbz     r0, 0x68(r5)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8032b3cc
    lwz     r0, 0x4(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032b274
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032b3f0
branch_0x8032b274:
    lbz     r0, 0x82(r5)
    cmpwi   r0, 0x2
    beq-    branch_0x8032b2f4
    bge-    branch_0x8032b294
    cmpwi   r0, 0x0
    beq-    branch_0x8032b2a4
    bge-    branch_0x8032b2cc
    b       branch_0x8032b368

branch_0x8032b294:
    cmpwi   r0, 0x4
    beq-    branch_0x8032b344
    bge-    branch_0x8032b368
    b       branch_0x8032b31c

branch_0x8032b2a4:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xd8
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b368

branch_0x8032b2cc:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xe0
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b368

branch_0x8032b2f4:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xe8
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b368

branch_0x8032b31c:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xf0
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b368

branch_0x8032b344:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xf8
    add     r5, r3, r0
    stw     r6, 0x48(r5)
branch_0x8032b368:
    lwz     r0, 0x4(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032b398
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xc4
    add     r5, r3, r0
    stw     r6, 0x48(r5)
branch_0x8032b398:
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032b3f0
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xcc
    add     r5, r3, r0
    stw     r6, 0x48(r5)
    b       branch_0x8032b3f0

branch_0x8032b3cc:
    lbz     r6, 0x8d(r3)
    lis     r5, vc__7JPADraw@ha
    addi    r7, r5, vc__7JPADraw@l
    addi    r5, r6, 0x1
    slwi    r0, r6, 2
    stb     r5, 0x8d(r3)
    addi    r6, r7, 0xd0
    add     r5, r3, r0
    stw     r6, 0x48(r5)
branch_0x8032b3f0:
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032b4c0
    lwz     r0, 0xc(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8032b4c0
    lbz     r5, 0x8d(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8d(r3)
    addi    r5, r6, 0xfc
    add     r4, r3, r0
    stw     r5, 0x48(r4)
    lwz     r4, 0x98(r3)
    lbz     r0, 0x78(r4)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8032b4c0
    lbz     r0, 0x79(r4)
    cmpwi   r0, 0x1
    beq-    branch_0x8032b484
    bge-    branch_0x8032b458
    cmpwi   r0, 0x0
    bge-    branch_0x8032b464
    b       branch_0x8032b4c0

branch_0x8032b458:
    cmpwi   r0, 0x3
    bge-    branch_0x8032b4c0
    b       branch_0x8032b4a4

branch_0x8032b464:
    lbz     r5, 0x8d(r3)
    addi    r6, r6, 0x100
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8d(r3)
    add     r4, r3, r0
    stw     r6, 0x48(r4)
    b       branch_0x8032b4c0

branch_0x8032b484:
    lbz     r5, 0x8d(r3)
    addi    r6, r6, 0x104
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8d(r3)
    add     r4, r3, r0
    stw     r6, 0x48(r4)
    b       branch_0x8032b4c0

branch_0x8032b4a4:
    lbz     r5, 0x8d(r3)
    addi    r6, r6, 0x108
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8d(r3)
    add     r4, r3, r0
    stw     r6, 0x48(r4)
branch_0x8032b4c0:
    lwz     r4, 0x94(r3)
    lbz     r0, 0x81(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8032b5dc
    lbz     r0, 0x80(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8032b5dc
    lbz     r0, 0x68(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x8032b5dc
    lbz     r0, 0x7d(r4)
    cmpwi   r0, 0x2
    beq-    branch_0x8032b568
    bge-    branch_0x8032b508
    cmpwi   r0, 0x0
    beq-    branch_0x8032b518
    bge-    branch_0x8032b540
    b       branch_0x8032b5dc

branch_0x8032b508:
    cmpwi   r0, 0x4
    beq-    branch_0x8032b5b8
    bge-    branch_0x8032b5dc
    b       branch_0x8032b590

branch_0x8032b518:
    lbz     r5, 0x8d(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8d(r3)
    addi    r5, r6, 0x110
    add     r4, r3, r0
    stw     r5, 0x48(r4)
    b       branch_0x8032b5dc

branch_0x8032b540:
    lbz     r5, 0x8d(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8d(r3)
    addi    r5, r6, 0x118
    add     r4, r3, r0
    stw     r5, 0x48(r4)
    b       branch_0x8032b5dc

branch_0x8032b568:
    lbz     r5, 0x8d(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8d(r3)
    addi    r5, r6, 0x120
    add     r4, r3, r0
    stw     r5, 0x48(r4)
    b       branch_0x8032b5dc

branch_0x8032b590:
    lbz     r5, 0x8d(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8d(r3)
    addi    r5, r6, 0x128
    add     r4, r3, r0
    stw     r5, 0x48(r4)
    b       branch_0x8032b5dc

branch_0x8032b5b8:
    lbz     r5, 0x8d(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8d(r3)
    addi    r5, r6, 0x130
    add     r4, r3, r0
    stw     r5, 0x48(r4)
branch_0x8032b5dc:
    lwz     r4, 0x9c(r3)
    cmplwi  r4, 0x0
    beqlr-    

    lbz     r0, 0x4b(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8032b618
    lbz     r5, 0x8f(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8f(r3)
    addi    r5, r6, 0x134
    add     r4, r3, r0
    stw     r5, 0x80(r4)
branch_0x8032b618:
    lwz     r4, 0x9c(r3)
    lbz     r0, 0x4a(r4)
    cmpwi   r0, 0x0
    beqlr-    

    lbz     r5, 0x8f(r3)
    lis     r4, vc__7JPADraw@ha
    addi    r6, r4, vc__7JPADraw@l
    addi    r4, r5, 0x1
    slwi    r0, r5, 2
    stb     r4, 0x8f(r3)
    addi    r4, r6, 0x138
    add     r3, r3, r0
    stw     r4, 0x80(r3)
    blr


.globl setParticleClipBoard__7JPADrawFv
setParticleClipBoard__7JPADrawFv: # 0x8032b650
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    mr      r31, r3
    stw     r30, 0xd8(sp)
    lwz     r3, 0x94(r3)
    lbz     r0, 0x69(r3)
    cmpwi   r0, 0x9
    beq-    branch_0x8032b694
    bge-    branch_0x8032b688
    cmpwi   r0, 0x2
    beq-    branch_0x8032b694
    b       branch_0x8032b6c0

branch_0x8032b688:
    cmpwi   r0, 0xb
    bge-    branch_0x8032b6c0
    b       branch_0x8032b6a8

branch_0x8032b694:
    lis     r3, cb__7JPADraw@ha
    addi    r3, r3, cb__7JPADraw@l
    addi    r3, r3, 0x68
    bl      PSMTXIdentity
    b       branch_0x8032b6d4

branch_0x8032b6a8:
    lis     r3, cb__7JPADraw@ha
    addi    r3, r3, cb__7JPADraw@l
    lwz     r4, 0x34(r3)
    mr      r3, r31
    bl      loadYBBMtx__7JPADrawFPA4_f
    b       branch_0x8032b6d4

branch_0x8032b6c0:
    lis     r3, cb__7JPADraw@ha
    addi    r4, r3, cb__7JPADraw@l
    lwz     r3, 0x34(r4)
    addi    r4, r4, 0x68
    bl      PSMTXCopy
branch_0x8032b6d4:
    lis     r3, cb__7JPADraw@ha
    addi    r30, r3, cb__7JPADraw@l
    addi    r3, r30, 0x68
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r3, 0x94(r31)
    addi    r6, r30, 0x4
    lwz     r4, 0x90(r31)
    addi    r7, r30, 0x8
    lfs     f1, 0x8e8(r2)
    lfs     f0, 0x14(r3)
    lfs     f2, 0x174(r4)
    fmuls   f0, f1, f0
    lfs     f3, 0x178(r4)
    fmuls   f0, f2, f0
    stfs    f0, 0x4(r30)
    lwz     r3, 0x94(r31)
    lfs     f0, 0x18(r3)
    fmuls   f0, f1, f0
    fmuls   f0, f3, f0
    stfs    f0, 0x8(r30)
    lwz     r3, 0x94(r31)
    lbz     r0, 0x69(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8032b758
    lfs     f0, 0x0(r6)
    lfs     f1, 0x8ec(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r6)
    lfs     f0, 0x0(r7)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r7)
    b       branch_0x8032b780

branch_0x8032b758:
    cmplwi  r0, 0x1
    bne-    branch_0x8032b780
    lfs     f1, 0x0(r6)
    lfs     f0, 0x8ec(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r6)
    lfs     f1, 0x0(r7)
    lfs     f0, 0x8f0(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r7)
branch_0x8032b780:
    lwz     r3, 0x98(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8032b7fc
    lbz     r0, 0x7e(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8032b7fc
    lbz     r0, 0x7c(r3)
    lis     r3, 0x8041
    lis     r5, 0x4330
    lfd     f3, 0x8e0(r2)
    stw     r0, 0xd4(sp)
    lfs     f2, 0x8c4(r2)
    addi    r4, r3, -0x3ef0
    stw     r5, 0xd0(sp)
    lfs     f1, 0x0(r6)
    lfd     f0, 0xd0(sp)
    fsubs   f0, f0, f3
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    stfs    f0, 0xc(r4)
    lwz     r3, 0x98(r31)
    lfs     f1, 0x0(r7)
    lbz     r0, 0x7a(r3)
    stw     r0, 0xcc(sp)
    stw     r5, 0xc8(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f0, f0, f3
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r4)
    b       branch_0x8032b810

branch_0x8032b7fc:
    lis     r3, cb__7JPADraw@ha
    lfs     f0, 0x8f4(r2)
    addi    r3, r3, cb__7JPADraw@l
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
branch_0x8032b810:
    lwz     r4, 0x94(r31)
    lis     r3, cb__7JPADraw@ha
    lfs     f0, 0x8f4(r2)
    addi    r3, r3, cb__7JPADraw@l
    lfs     f1, 0x2c(r4)
    lfs     f2, 0x30(r4)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x18(r3)
    stfs    f1, 0x1c(r3)
    stfs    f0, 0x20(r3)
    stfs    f1, 0x24(r3)
    stfs    f2, 0x28(r3)
    stfs    f0, 0x2c(r3)
    stfs    f2, 0x30(r3)
    lwz     r3, 0x94(r31)
    lbz     r0, 0x81(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8032b878
    lbz     r0, 0x80(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8032b878
    lbz     r0, 0x7f(r3)
    lwz     r3, 0xb0(r31)
    slwi    r0, r0, 1
    lhzx    r0, r3, r0
    sth     r0, 0xc0(r31)
branch_0x8032b878:
    lis     r3, cb__7JPADraw@ha
    addi    r3, r3, cb__7JPADraw@l
    li      r0, 0x0
    stw     r0, 0xa0(r3)
    addi    r6, r3, 0xa0
    stwu    r0, 0xa4(r3)
    lwz     r5, 0x94(r31)
    lbz     r4, 0x69(r5)
    cmplwi  r4, 0x3
    beq-    branch_0x8032b8b8
    cmplwi  r4, 0x9
    beq-    branch_0x8032b8b8
    addi    r0, r4, -0x4
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x2
    bgt-    branch_0x8032b934
branch_0x8032b8b8:
    lbz     r0, 0x6a(r5)
    cmpwi   r0, 0x2
    beq-    branch_0x8032b908
    bge-    branch_0x8032b8d8
    cmpwi   r0, 0x0
    beq-    branch_0x8032b8e8
    bge-    branch_0x8032b8f8
    b       branch_0x8032b934

branch_0x8032b8d8:
    cmpwi   r0, 0x4
    beq-    branch_0x8032b928
    bge-    branch_0x8032b934
    b       branch_0x8032b918

branch_0x8032b8e8:
    lis     r4, dirTypeVel__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@h
    addi    r0, r4, dirTypeVel__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@l
    stw     r0, 0x0(r6)
    b       branch_0x8032b934

branch_0x8032b8f8:
    lis     r4, dirTypePos__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@h
    addi    r0, r4, dirTypePos__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@l
    stw     r0, 0x0(r6)
    b       branch_0x8032b934

branch_0x8032b908:
    lis     r4, dirTypePosInv__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@h
    addi    r0, r4, dirTypePosInv__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@l
    stw     r0, 0x0(r6)
    b       branch_0x8032b934

branch_0x8032b918:
    lis     r4, dirTypeEmtrDir__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@h
    addi    r0, r4, dirTypeEmtrDir__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@l
    stw     r0, 0x0(r6)
    b       branch_0x8032b934

branch_0x8032b928:
    lis     r4, dirTypePrevPtcl__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@h
    addi    r0, r4, dirTypePrevPtcl__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@l
    stw     r0, 0x0(r6)
branch_0x8032b934:
    lwz     r5, 0x94(r31)
    lbz     r4, 0x69(r5)
    cmplwi  r4, 0x3
    beq-    branch_0x8032b95c
    cmplwi  r4, 0x4
    beq-    branch_0x8032b95c
    addi    r0, r4, -0x7
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bgt-    branch_0x8032b9d8
branch_0x8032b95c:
    lbz     r0, 0x6b(r5)
    cmpwi   r0, 0x2
    beq-    branch_0x8032b9ac
    bge-    branch_0x8032b97c
    cmpwi   r0, 0x0
    beq-    branch_0x8032b98c
    bge-    branch_0x8032b99c
    b       branch_0x8032b9d8

branch_0x8032b97c:
    cmpwi   r0, 0x4
    beq-    branch_0x8032b9cc
    bge-    branch_0x8032b9d8
    b       branch_0x8032b9bc

branch_0x8032b98c:
    lis     r4, rotTypeY__FffRA3_A4_f@h
    addi    r0, r4, rotTypeY__FffRA3_A4_f@l
    stw     r0, 0x0(r3)
    b       branch_0x8032b9d8

branch_0x8032b99c:
    lis     r4, rotTypeX__FffRA3_A4_f@h
    addi    r0, r4, rotTypeX__FffRA3_A4_f@l
    stw     r0, 0x0(r3)
    b       branch_0x8032b9d8

branch_0x8032b9ac:
    lis     r4, rotTypeZ__FffRA3_A4_f@h
    addi    r0, r4, rotTypeZ__FffRA3_A4_f@l
    stw     r0, 0x0(r3)
    b       branch_0x8032b9d8

branch_0x8032b9bc:
    lis     r4, rotTypeXYZ__FffRA3_A4_f@h
    addi    r0, r4, rotTypeXYZ__FffRA3_A4_f@l
    stw     r0, 0x0(r3)
    b       branch_0x8032b9d8

branch_0x8032b9cc:
    lis     r4, rotTypeYJiggle__FffRA3_A4_f@h
    addi    r0, r4, rotTypeYJiggle__FffRA3_A4_f@l
    stw     r0, 0x0(r3)
branch_0x8032b9d8:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    addi    sp, sp, 0xe0
    blr


.globl setChildClipBoard__7JPADrawFv
setChildClipBoard__7JPADrawFv: # 0x8032b9f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    mr      r31, r3
    stw     r30, 0xa8(sp)
    lwz     r3, 0x9c(r3)
    lbz     r0, 0x44(r3)
    cmpwi   r0, 0x9
    beq-    branch_0x8032ba34
    bge-    branch_0x8032ba28
    cmpwi   r0, 0x2
    beq-    branch_0x8032ba34
    b       branch_0x8032ba60

branch_0x8032ba28:
    cmpwi   r0, 0xb
    bge-    branch_0x8032ba60
    b       branch_0x8032ba48

branch_0x8032ba34:
    lis     r3, cb__7JPADraw@ha
    addi    r3, r3, cb__7JPADraw@l
    addi    r3, r3, 0x68
    bl      PSMTXIdentity
    b       branch_0x8032ba74

branch_0x8032ba48:
    lis     r3, cb__7JPADraw@ha
    addi    r3, r3, cb__7JPADraw@l
    lwz     r4, 0x34(r3)
    mr      r3, r31
    bl      loadYBBMtx__7JPADrawFPA4_f
    b       branch_0x8032ba74

branch_0x8032ba60:
    lis     r3, cb__7JPADraw@ha
    addi    r4, r3, cb__7JPADraw@l
    lwz     r3, 0x34(r4)
    addi    r4, r4, 0x68
    bl      PSMTXCopy
branch_0x8032ba74:
    lis     r3, cb__7JPADraw@ha
    addi    r30, r3, cb__7JPADraw@l
    addi    r3, r30, 0x68
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r4, 0x9c(r31)
    lwz     r3, 0x90(r31)
    lbz     r0, 0x4e(r4)
    lfs     f2, 0x174(r3)
    clrlwi. r0, r0, 31
    lfs     f3, 0x178(r3)
    bne-    branch_0x8032bad0
    lfs     f1, 0x8e8(r2)
    lfs     f0, 0x14(r4)
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x4(r30)
    lwz     r3, 0x9c(r31)
    lfs     f0, 0x10(r3)
    fmuls   f0, f1, f0
    fmuls   f0, f3, f0
    stfs    f0, 0x8(r30)
    b       branch_0x8032bafc

branch_0x8032bad0:
    lwz     r3, 0x94(r31)
    lfs     f1, 0x8e8(r2)
    lfs     f0, 0x14(r3)
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x4(r30)
    lwz     r3, 0x94(r31)
    lfs     f0, 0x18(r3)
    fmuls   f0, f1, f0
    fmuls   f0, f3, f0
    stfs    f0, 0x8(r30)
branch_0x8032bafc:
    lwz     r3, 0x9c(r31)
    lbz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8032bb34
    lis     r3, cb__7JPADraw@ha
    lfs     f1, 0x8ec(r2)
    addi    r3, r3, cb__7JPADraw@l
    lfs     f0, 0x4(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r3)
    b       branch_0x8032bb64

branch_0x8032bb34:
    cmplwi  r0, 0x1
    bne-    branch_0x8032bb64
    lis     r3, cb__7JPADraw@ha
    lfs     f0, 0x8ec(r2)
    addi    r3, r3, cb__7JPADraw@l
    lfs     f1, 0x4(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x8f0(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x8(r3)
branch_0x8032bb64:
    lis     r3, cb__7JPADraw@ha
    lfs     f0, 0x8f4(r2)
    addi    r4, r3, cb__7JPADraw@l
    stfs    f0, 0x10(r4)
    addi    r6, r4, 0xa0
    li      r0, 0x0
    stfs    f0, 0xc(r4)
    addi    r3, r4, 0xa4
    stfs    f0, 0x20(r4)
    stfs    f0, 0x18(r4)
    stfs    f0, 0x2c(r4)
    stfs    f0, 0x14(r4)
    lfs     f0, 0x8c4(r2)
    stfs    f0, 0x30(r4)
    stfs    f0, 0x28(r4)
    stfs    f0, 0x24(r4)
    stfs    f0, 0x1c(r4)
    stw     r0, 0xa0(r4)
    stw     r0, 0xa4(r4)
    lwz     r5, 0x9c(r31)
    lbz     r4, 0x44(r5)
    cmplwi  r4, 0x3
    beq-    branch_0x8032bbd8
    cmplwi  r4, 0x9
    beq-    branch_0x8032bbd8
    addi    r0, r4, -0x4
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x2
    bgt-    branch_0x8032bc54
branch_0x8032bbd8:
    lbz     r0, 0x45(r5)
    cmpwi   r0, 0x2
    beq-    branch_0x8032bc28
    bge-    branch_0x8032bbf8
    cmpwi   r0, 0x0
    beq-    branch_0x8032bc08
    bge-    branch_0x8032bc18
    b       branch_0x8032bc54

branch_0x8032bbf8:
    cmpwi   r0, 0x4
    beq-    branch_0x8032bc48
    bge-    branch_0x8032bc54
    b       branch_0x8032bc38

branch_0x8032bc08:
    lis     r4, dirTypeVel__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@h
    addi    r0, r4, dirTypeVel__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@l
    stw     r0, 0x0(r6)
    b       branch_0x8032bc54

branch_0x8032bc18:
    lis     r4, dirTypePos__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@h
    addi    r0, r4, dirTypePos__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@l
    stw     r0, 0x0(r6)
    b       branch_0x8032bc54

branch_0x8032bc28:
    lis     r4, dirTypePosInv__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@h
    addi    r0, r4, dirTypePosInv__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@l
    stw     r0, 0x0(r6)
    b       branch_0x8032bc54

branch_0x8032bc38:
    lis     r4, dirTypeEmtrDir__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@h
    addi    r0, r4, dirTypeEmtrDir__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@l
    stw     r0, 0x0(r6)
    b       branch_0x8032bc54

branch_0x8032bc48:
    lis     r4, dirTypePrevPtcl__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@h
    addi    r0, r4, dirTypePrevPtcl__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_@l
    stw     r0, 0x0(r6)
branch_0x8032bc54:
    lwz     r5, 0x9c(r31)
    lbz     r4, 0x44(r5)
    cmplwi  r4, 0x3
    beq-    branch_0x8032bc7c
    cmplwi  r4, 0x4
    beq-    branch_0x8032bc7c
    addi    r0, r4, -0x7
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bgt-    branch_0x8032bcf8
branch_0x8032bc7c:
    lbz     r0, 0x46(r5)
    cmpwi   r0, 0x2
    beq-    branch_0x8032bccc
    bge-    branch_0x8032bc9c
    cmpwi   r0, 0x0
    beq-    branch_0x8032bcac
    bge-    branch_0x8032bcbc
    b       branch_0x8032bcf8

branch_0x8032bc9c:
    cmpwi   r0, 0x4
    beq-    branch_0x8032bcec
    bge-    branch_0x8032bcf8
    b       branch_0x8032bcdc

branch_0x8032bcac:
    lis     r4, rotTypeY__FffRA3_A4_f@h
    addi    r0, r4, rotTypeY__FffRA3_A4_f@l
    stw     r0, 0x0(r3)
    b       branch_0x8032bcf8

branch_0x8032bcbc:
    lis     r4, rotTypeX__FffRA3_A4_f@h
    addi    r0, r4, rotTypeX__FffRA3_A4_f@l
    stw     r0, 0x0(r3)
    b       branch_0x8032bcf8

branch_0x8032bccc:
    lis     r4, rotTypeZ__FffRA3_A4_f@h
    addi    r0, r4, rotTypeZ__FffRA3_A4_f@l
    stw     r0, 0x0(r3)
    b       branch_0x8032bcf8

branch_0x8032bcdc:
    lis     r4, rotTypeXYZ__FffRA3_A4_f@h
    addi    r0, r4, rotTypeXYZ__FffRA3_A4_f@l
    stw     r0, 0x0(r3)
    b       branch_0x8032bcf8

branch_0x8032bcec:
    lis     r4, rotTypeYJiggle__FffRA3_A4_f@h
    addi    r0, r4, rotTypeYJiggle__FffRA3_A4_f@l
    stw     r0, 0x0(r3)
branch_0x8032bcf8:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    addi    sp, sp, 0xb0
    blr


.globl drawParticle__7JPADrawFv
drawParticle__7JPADrawFv: # 0x8032bd10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r27, 0xac(sp)
    mr      r30, r3
    lbz     r0, 0xc2(r3)
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0xc2(r30)
    bl      setParticleClipBoard__7JPADrawFv
    lwz     r4, 0x90(r30)
    lis     r3, cb__7JPADraw@ha
    addi    r3, r3, cb__7JPADraw@l
    addi    r0, r4, 0xf4
    stw     r0, 0xa8(r30)
    addi    r31, r3, 0x4
    li      r4, 0x5
    lfs     f0, 0x4(r3)
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r3, 0xa4(sp)
    bl      GXSetPointSize
    lfs     f0, 0x0(r31)
    li      r4, 0x5
    fctiwz  f0, f0
    stfd    f0, 0x98(sp)
    lwz     r3, 0x9c(sp)
    bl      GXSetLineWidth
    lwz     r4, 0x94(r30)
    lis     r3, stCompare__12JPABaseShape@h
    addi    r31, r3, stCompare__12JPABaseShape@l
    lbz     r0, 0x78(r4)
    lbz     r5, 0x79(r4)
    slwi    r0, r0, 2
    lbz     r3, 0x77(r4)
    add     r4, r31, r0
    lwz     r4, 0x0(r4)
    bl      GXSetZMode
    lwz     r3, 0x94(r30)
    lbz     r3, 0x76(r3)
    bl      GXSetZCompLoc
    lwz     r8, 0x94(r30)
    lis     r3, stAlphaOp__12JPABaseShape@h
    addi    r3, r3, stAlphaOp__12JPABaseShape@l
    lbz     r5, 0x74(r8)
    lbz     r0, 0x71(r8)
    slwi    r6, r5, 2
    lbz     r4, 0x73(r8)
    add     r6, r31, r6
    lbz     r7, 0x75(r8)
    slwi    r5, r4, 2
    lbz     r4, 0x72(r8)
    add     r5, r3, r5
    lwz     r6, 0x0(r6)
    slwi    r0, r0, 2
    lwz     r5, 0x0(r5)
    add     r3, r31, r0
    lwz     r3, 0x0(r3)
    bl      GXSetAlphaCompare
    lwz     r3, 0x94(r30)
    lbz     r0, 0x6c(r3)
    extrwi  r3, r0, 1, 28
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetCullMode
    lwz     r3, 0x94(r30)
    lbz     r0, 0x7c(r3)
    extrwi. r0, r0, 1, 29
    beq-    branch_0x8032be40
    li      r3, 0x0
    bl      GXSetClipMode
    li      r3, 0x1
    li      r4, 0x8
    bl      GXSetMisc
    b       branch_0x8032be48

branch_0x8032be40:
    li      r3, 0x1
    bl      GXSetClipMode
branch_0x8032be48:
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x8032be78

branch_0x8032be54:
    addi    r0, r31, 0x4
    lwzx    r3, r30, r0
    addi    r4, r30, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x8032be78:
    lbz     r0, 0x89(r30)
    cmpw    r29, r0
    blt+    branch_0x8032be54
    lwz     r3, 0x94(r30)
    lwz     r4, 0x90(r30)
    lbz     r0, 0x7c(r3)
    addi    r3, r4, 0xf4
    clrlwi. r0, r0, 31
    bne-    branch_0x8032bef8
    lwz     r29, 0x0(r3)
    b       branch_0x8032beec

branch_0x8032bea4:
    lwz     r28, 0x0(r29)
    li      r27, 0x0
    li      r31, 0x0
    b       branch_0x8032bedc

branch_0x8032beb4:
    addi    r0, r31, 0x34
    lwzx    r3, r30, r0
    addi    r5, r28, 0x0
    addi    r4, r30, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r27, r27, 0x1
    addi    r31, r31, 0x4
branch_0x8032bedc:
    lbz     r0, 0x8c(r30)
    cmpw    r27, r0
    blt+    branch_0x8032beb4
    lwz     r29, 0xc(r29)
branch_0x8032beec:
    cmplwi  r29, 0x0
    bne+    branch_0x8032bea4
    b       branch_0x8032bf50

branch_0x8032bef8:
    lwz     r27, 0x4(r3)
    b       branch_0x8032bf48

branch_0x8032bf00:
    lwz     r28, 0x0(r27)
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x8032bf38

branch_0x8032bf10:
    addi    r0, r31, 0x34
    lwzx    r3, r30, r0
    addi    r5, r28, 0x0
    addi    r4, r30, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x8032bf38:
    lbz     r0, 0x8c(r30)
    cmpw    r29, r0
    blt+    branch_0x8032bf10
    lwz     r27, 0x8(r27)
branch_0x8032bf48:
    cmplwi  r27, 0x0
    bne+    branch_0x8032bf00
branch_0x8032bf50:
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetMisc
    lmw     r27, 0xac(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl drawChild__7JPADrawFv
drawChild__7JPADrawFv: # 0x8032bf70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r27, 0xac(sp)
    mr      r30, r3
    lbz     r0, 0xc2(r3)
    ori     r0, r0, 0x2
    stb     r0, 0xc2(r30)
    bl      setChildClipBoard__7JPADrawFv
    lwz     r5, 0x90(r30)
    li      r3, 0x0
    li      r4, 0x1
    addi    r0, r5, 0x100
    stw     r0, 0xa8(r30)
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    lwz     r3, 0x94(r30)
    lbz     r0, 0x81(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8032bff0
    lwz     r3, 0xac(r30)
    li      r4, 0x0
    addi    r3, r3, 0x4
    bl      GXLoadTexObj
    b       branch_0x8032c020

branch_0x8032bff0:
    lwz     r3, 0x9c(r30)
    li      r4, 0x0
    lwz     r5, 0xac(r30)
    lbz     r0, 0x4c(r3)
    lwz     r3, 0xb0(r30)
    slwi    r0, r0, 1
    lwz     r5, 0x2c(r5)
    lhzx    r0, r3, r0
    slwi    r0, r0, 2
    lwzx    r3, r5, r0
    addi    r3, r3, 0x8
    bl      load__10JUTTextureF11_GXTexMapID
branch_0x8032c020:
    lwz     r4, 0x94(r30)
    lis     r3, stCompare__12JPABaseShape@h
    addi    r31, r3, stCompare__12JPABaseShape@l
    lbz     r0, 0x78(r4)
    lbz     r5, 0x79(r4)
    slwi    r0, r0, 2
    lbz     r3, 0x77(r4)
    add     r4, r31, r0
    lwz     r4, 0x0(r4)
    bl      GXSetZMode
    lwz     r3, 0x94(r30)
    lbz     r3, 0x76(r3)
    bl      GXSetZCompLoc
    lwz     r8, 0x94(r30)
    lis     r3, stAlphaOp__12JPABaseShape@h
    addi    r3, r3, stAlphaOp__12JPABaseShape@l
    lbz     r5, 0x74(r8)
    lbz     r0, 0x71(r8)
    slwi    r6, r5, 2
    lbz     r4, 0x73(r8)
    add     r6, r31, r6
    lbz     r7, 0x75(r8)
    slwi    r5, r4, 2
    lbz     r4, 0x72(r8)
    add     r5, r3, r5
    lwz     r6, 0x0(r6)
    slwi    r0, r0, 2
    lwz     r5, 0x0(r5)
    add     r3, r31, r0
    lwz     r3, 0x0(r3)
    bl      GXSetAlphaCompare
    lwz     r3, 0x94(r30)
    lbz     r0, 0x6c(r3)
    extrwi  r3, r0, 1, 28
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetCullMode
    lwz     r3, 0x9c(r30)
    lbz     r0, 0x49(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8032c0e4
    li      r3, 0x0
    bl      GXSetClipMode
    li      r3, 0x1
    li      r4, 0x8
    bl      GXSetMisc
    b       branch_0x8032c0ec

branch_0x8032c0e4:
    li      r3, 0x1
    bl      GXSetClipMode
branch_0x8032c0ec:
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x8032c11c

branch_0x8032c0f8:
    addi    r0, r31, 0x18
    lwzx    r3, r30, r0
    addi    r4, r30, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x8032c11c:
    lbz     r0, 0x8a(r30)
    cmpw    r29, r0
    blt+    branch_0x8032c0f8
    lwz     r3, 0x94(r30)
    lwz     r4, 0x90(r30)
    lbz     r0, 0x7c(r3)
    addi    r3, r4, 0x100
    clrlwi. r0, r0, 31
    bne-    branch_0x8032c19c
    lwz     r29, 0x0(r3)
    b       branch_0x8032c190

branch_0x8032c148:
    lwz     r28, 0x0(r29)
    li      r27, 0x0
    li      r31, 0x0
    b       branch_0x8032c180

branch_0x8032c158:
    addi    r0, r31, 0x70
    lwzx    r3, r30, r0
    addi    r5, r28, 0x0
    addi    r4, r30, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r27, r27, 0x1
    addi    r31, r31, 0x4
branch_0x8032c180:
    lbz     r0, 0x8e(r30)
    cmpw    r27, r0
    blt+    branch_0x8032c158
    lwz     r29, 0xc(r29)
branch_0x8032c190:
    cmplwi  r29, 0x0
    bne+    branch_0x8032c148
    b       branch_0x8032c1f4

branch_0x8032c19c:
    lwz     r27, 0x4(r3)
    b       branch_0x8032c1ec

branch_0x8032c1a4:
    lwz     r28, 0x0(r27)
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x8032c1dc

branch_0x8032c1b4:
    addi    r0, r31, 0x70
    lwzx    r3, r30, r0
    addi    r5, r28, 0x0
    addi    r4, r30, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x8032c1dc:
    lbz     r0, 0x8e(r30)
    cmpw    r29, r0
    blt+    branch_0x8032c1b4
    lwz     r27, 0x8(r27)
branch_0x8032c1ec:
    cmplwi  r27, 0x0
    bne+    branch_0x8032c1a4
branch_0x8032c1f4:
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetMisc
    lmw     r27, 0xac(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl zDraw__7JPADrawFv
zDraw__7JPADrawFv: # 0x8032c214
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lbz     r0, 0xc2(r3)
    ori     r0, r0, 0x1
    stb     r0, 0xc2(r3)
    lwz     r3, 0x94(r3)
    lbz     r0, 0x7c(r3)
    extrwi  r0, r0, 1, 30
    cmplwi  r0, 0x1
    bne-    branch_0x8032c25c
    lwz     r0, 0x9c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8032c25c
    mr      r3, r31
    bl      zDrawChild__7JPADrawFv
branch_0x8032c25c:
    mr      r3, r31
    bl      zDrawParticle__7JPADrawFv
    lwz     r3, 0x94(r31)
    lbz     r0, 0x7c(r3)
    extrwi. r0, r0, 1, 30
    bne-    branch_0x8032c288
    lwz     r0, 0x9c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8032c288
    mr      r3, r31
    bl      zDrawChild__7JPADrawFv
branch_0x8032c288:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl zDrawParticle__7JPADrawFv
zDrawParticle__7JPADrawFv: # 0x8032c29c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r27, 0x74(sp)
    mr      r31, r3
    lbz     r0, 0xc2(r3)
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0xc2(r31)
    bl      setParticleClipBoard__7JPADrawFv
    lwz     r4, 0x90(r31)
    lis     r3, cb__7JPADraw@ha
    addi    r3, r3, cb__7JPADraw@l
    addi    r0, r4, 0xf4
    stw     r0, 0xa8(r31)
    addi    r30, r3, 0x4
    li      r4, 0x5
    lfs     f0, 0x4(r3)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    bl      GXSetPointSize
    lfs     f0, 0x0(r30)
    li      r4, 0x5
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r3, 0x64(sp)
    bl      GXSetLineWidth
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetZCompLoc
    lwz     r4, 0x90(r31)
    li      r3, 0x6
    li      r5, 0x1
    lbz     r7, 0x183(r4)
    li      r6, 0x6
    addi    r4, r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetCullMode
    lwz     r3, 0x94(r31)
    lbz     r0, 0x7c(r3)
    extrwi. r0, r0, 1, 29
    beq-    branch_0x8032c37c
    li      r3, 0x0
    bl      GXSetClipMode
    li      r3, 0x1
    li      r4, 0x8
    bl      GXSetMisc
    b       branch_0x8032c384

branch_0x8032c37c:
    li      r3, 0x1
    bl      GXSetClipMode
branch_0x8032c384:
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x8032c3b4

branch_0x8032c390:
    addi    r0, r30, 0x4
    lwzx    r3, r31, r0
    addi    r4, r31, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8032c3b4:
    lbz     r0, 0x89(r31)
    cmpw    r29, r0
    blt+    branch_0x8032c390
    lwz     r3, 0x94(r31)
    lwz     r4, 0x90(r31)
    lbz     r0, 0x7c(r3)
    addi    r3, r4, 0xf4
    clrlwi. r0, r0, 31
    bne-    branch_0x8032c434
    lwz     r29, 0x0(r3)
    b       branch_0x8032c428

branch_0x8032c3e0:
    lwz     r28, 0x0(r29)
    li      r27, 0x0
    li      r30, 0x0
    b       branch_0x8032c418

branch_0x8032c3f0:
    addi    r0, r30, 0x34
    lwzx    r3, r31, r0
    addi    r5, r28, 0x0
    addi    r4, r31, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r27, r27, 0x1
    addi    r30, r30, 0x4
branch_0x8032c418:
    lbz     r0, 0x8c(r31)
    cmpw    r27, r0
    blt+    branch_0x8032c3f0
    lwz     r29, 0xc(r29)
branch_0x8032c428:
    cmplwi  r29, 0x0
    bne+    branch_0x8032c3e0
    b       branch_0x8032c48c

branch_0x8032c434:
    lwz     r27, 0x4(r3)
    b       branch_0x8032c484

branch_0x8032c43c:
    lwz     r28, 0x0(r27)
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x8032c474

branch_0x8032c44c:
    addi    r0, r30, 0x34
    lwzx    r3, r31, r0
    addi    r5, r28, 0x0
    addi    r4, r31, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8032c474:
    lbz     r0, 0x8c(r31)
    cmpw    r29, r0
    blt+    branch_0x8032c44c
    lwz     r27, 0x8(r27)
branch_0x8032c484:
    cmplwi  r27, 0x0
    bne+    branch_0x8032c43c
branch_0x8032c48c:
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetMisc
    lmw     r27, 0x74(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl zDrawChild__7JPADrawFv
zDrawChild__7JPADrawFv: # 0x8032c4ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r27, 0x74(sp)
    mr      r31, r3
    lbz     r0, 0xc2(r3)
    ori     r0, r0, 0x2
    stb     r0, 0xc2(r31)
    bl      setChildClipBoard__7JPADrawFv
    lwz     r5, 0x90(r31)
    li      r3, 0x0
    li      r4, 0x1
    addi    r0, r5, 0x100
    stw     r0, 0xa8(r31)
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    lwz     r3, 0x94(r31)
    lbz     r0, 0x81(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8032c52c
    lwz     r3, 0xac(r31)
    li      r4, 0x0
    addi    r3, r3, 0x4
    bl      GXLoadTexObj
    b       branch_0x8032c55c

branch_0x8032c52c:
    lwz     r3, 0x9c(r31)
    li      r4, 0x0
    lwz     r5, 0xac(r31)
    lbz     r0, 0x4c(r3)
    lwz     r3, 0xb0(r31)
    slwi    r0, r0, 1
    lwz     r5, 0x2c(r5)
    lhzx    r0, r3, r0
    slwi    r0, r0, 2
    lwzx    r3, r5, r0
    addi    r3, r3, 0x8
    bl      load__10JUTTextureF11_GXTexMapID
branch_0x8032c55c:
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetZCompLoc
    lwz     r4, 0x90(r31)
    li      r3, 0x6
    li      r5, 0x1
    lbz     r7, 0x183(r4)
    li      r6, 0x6
    addi    r4, r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetCullMode
    lwz     r3, 0x9c(r31)
    lbz     r0, 0x49(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8032c5d0
    li      r3, 0x0
    bl      GXSetClipMode
    li      r3, 0x1
    li      r4, 0x8
    bl      GXSetMisc
    b       branch_0x8032c5d8

branch_0x8032c5d0:
    li      r3, 0x1
    bl      GXSetClipMode
branch_0x8032c5d8:
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x8032c608

branch_0x8032c5e4:
    addi    r0, r30, 0x18
    lwzx    r3, r31, r0
    addi    r4, r31, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8032c608:
    lbz     r0, 0x8a(r31)
    cmpw    r29, r0
    blt+    branch_0x8032c5e4
    lwz     r3, 0x94(r31)
    lwz     r4, 0x90(r31)
    lbz     r0, 0x7c(r3)
    addi    r3, r4, 0x100
    clrlwi. r0, r0, 31
    bne-    branch_0x8032c688
    lwz     r29, 0x0(r3)
    b       branch_0x8032c67c

branch_0x8032c634:
    lwz     r28, 0x0(r29)
    li      r27, 0x0
    li      r30, 0x0
    b       branch_0x8032c66c

branch_0x8032c644:
    addi    r0, r30, 0x70
    lwzx    r3, r31, r0
    addi    r5, r28, 0x0
    addi    r4, r31, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r27, r27, 0x1
    addi    r30, r30, 0x4
branch_0x8032c66c:
    lbz     r0, 0x8e(r31)
    cmpw    r27, r0
    blt+    branch_0x8032c644
    lwz     r29, 0xc(r29)
branch_0x8032c67c:
    cmplwi  r29, 0x0
    bne+    branch_0x8032c634
    b       branch_0x8032c6e0

branch_0x8032c688:
    lwz     r27, 0x4(r3)
    b       branch_0x8032c6d8

branch_0x8032c690:
    lwz     r28, 0x0(r27)
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x8032c6c8

branch_0x8032c6a0:
    addi    r0, r30, 0x70
    lwzx    r3, r31, r0
    addi    r5, r28, 0x0
    addi    r4, r31, 0x90
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8032c6c8:
    lbz     r0, 0x8e(r31)
    cmpw    r29, r0
    blt+    branch_0x8032c6a0
    lwz     r27, 0x8(r27)
branch_0x8032c6d8:
    cmplwi  r27, 0x0
    bne+    branch_0x8032c690
branch_0x8032c6e0:
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetMisc
    lmw     r27, 0x74(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl getMainTextureID__7JPADrawFUc
getMainTextureID__7JPADrawFUc: # 0x8032c700
    lwz     r5, 0x94(r3)
    li      r3, -0x1
    lbz     r0, 0x80(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8032c730
    lbz     r0, 0x7e(r5)
    clrlwi  r4, r4, 24
    cmplw   r4, r0
    bgelr-    

    lwz     r3, 0x8(r5)
    lbzx    r3, r3, r4
    blr

branch_0x8032c730:
    clrlwi. r0, r4, 24
    bnelr-    

    lbz     r3, 0x7f(r5)
    blr


.globl loadYBBMtx__7JPADrawFPA4_f
loadYBBMtx__7JPADrawFPA4_f: # 0x8032c740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stfd    f30, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    lfs     f4, 0x8f4(r2)
    lfs     f31, 0x14(r4)
    lfs     f30, 0x24(r4)
    fmadds  f1, f31, f31, f4
    lfs     f0, 0x8f8(r2)
    fmadds  f1, f30, f30, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8032c788
    fmr     f3, f4
    b       branch_0x8032c79c

branch_0x8032c788:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x8c4(r2)
    fmuls   f0, f0, f1
    fmuls   f3, f31, f0
    fmuls   f4, f30, f0
branch_0x8032c79c:
    lis     r3, cb__7JPADraw@ha
    lfs     f1, 0x8c4(r2)
    addi    r4, r3, cb__7JPADraw@l
    fneg    f0, f4
    stfs    f1, 0x38(r4)
    addi    r3, r4, 0x68
    lfs     f2, 0x8f4(r2)
    stfs    f2, 0x3c(r4)
    stfs    f2, 0x40(r4)
    lfs     f1, 0xc(r31)
    stfs    f1, 0x44(r4)
    stfs    f2, 0x48(r4)
    stfs    f3, 0x4c(r4)
    stfs    f0, 0x50(r4)
    lfs     f0, 0x1c(r31)
    stfs    f0, 0x54(r4)
    stfs    f2, 0x58(r4)
    stfs    f4, 0x5c(r4)
    stfs    f3, 0x60(r4)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x64(r4)
    bl      PSMTXIdentity
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    mtlr    r0
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x48
    blr


.globl __sinit_JPADraw_cpp
__sinit_JPADraw_cpp: # 0x8032c810
    mflr    r0
    lis     r3, vc__7JPADraw@ha
    stw     r0, 0x4(sp)
    lis     r8, __vvt__23JPADrawExecSetPointSize@h
    lis     r6, __vvt__23JPADrawExecSetLineWidth@h
    stwu    sp, -0x40(sp)
    lis     r12, __vvt__32JPADrawExecRegisterColorEmitterE@h
    lis     r11, __vvt__31JPADrawExecRegisterColorChildPE@h
    stmw    r23, 0x1c(sp)
    addi    r7, r3, vc__7JPADraw@l
    lis     r4, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r3, r4, __vvt__25JPADrawExecEmitterVisitor@l
    lis     r4, __vvt__20JPADrawExecGenPrjMtx@h
    addi    r0, r4, __vvt__20JPADrawExecGenPrjMtx@l
    lis     r10, __vvt__30JPADrawExecRegisterPrmColorAnm@h
    lis     r4, __vvt__23JPADrawExecGenPrjTexMtx@h
    lis     r5, __vvt__26JPADrawExecParticleVisitor@h
    addi    r8, r8, __vvt__23JPADrawExecSetPointSize@l
    addi    r6, r6, __vvt__23JPADrawExecSetLineWidth@l
    addi    r12, r12, __vvt__32JPADrawExecRegisterColorEmitterE@l
    stw     r3, 0x0(r7)
    addi    r11, r11, __vvt__31JPADrawExecRegisterColorChildPE@l
    addi    r10, r10, __vvt__30JPADrawExecRegisterPrmColorAnm@l
    stw     r0, 0x0(r7)
    addi    r0, r4, __vvt__23JPADrawExecGenPrjTexMtx@l
    lis     r4, __vvt__21JPADrawExecGenTexMtx0@h
    stw     r3, 0x4(r7)
    addi    r29, r7, 0x48
    stw     r0, 0x4(r7)
    addi    r0, r4, __vvt__21JPADrawExecGenTexMtx0@l
    lis     r4, __vvt__20JPADrawExecGenIdtMtx@h
    stw     r3, 0x8(r7)
    stw     r0, 0x8(r7)
    addi    r0, r4, __vvt__20JPADrawExecGenIdtMtx@l
    lis     r4, __vvt__20JPADrawExecSetTexMtx@h
    stw     r3, 0xc(r7)
    addi    r4, r4, __vvt__20JPADrawExecSetTexMtx@l
    addi    r9, r4, 0x10
    stw     r0, 0xc(r7)
    addi    r0, r5, __vvt__26JPADrawExecParticleVisitor@l
    lis     r5, __vvt__33JPADrawExecRegisterColorEmitterPE@h
    stw     r3, 0x10(r7)
    addi    r5, r5, __vvt__33JPADrawExecRegisterColorEmitterPE@l
    stw     r0, 0x14(r7)
    stw     r4, 0x10(r7)
    lis     r4, __vvt__32JPADrawExecRegisterColorEmitterP@h
    addi    r28, r4, __vvt__32JPADrawExecRegisterColorEmitterP@l
    stw     r9, 0x14(r7)
    lis     r9, __vvt__30JPADrawExecRegisterPrmAlphaAnm@h
    lis     r4, __vvt__29JPADrawExecLoadDefaultTexture@h
    stw     r0, 0x18(r7)
    addi    r9, r9, __vvt__30JPADrawExecRegisterPrmAlphaAnm@l
    addi    r4, r4, __vvt__29JPADrawExecLoadDefaultTexture@l
    stw     r8, 0x18(r7)
    lis     r8, __vvt__30JPADrawExecRegisterEnvColorAnm@h
    addi    r8, r8, __vvt__30JPADrawExecRegisterEnvColorAnm@l
    stw     r0, 0x1c(r7)
    stw     r6, 0x1c(r7)
    lis     r6, __vvt__26JPADrawExecRegisterPrmCEnv@h
    addi    r6, r6, __vvt__26JPADrawExecRegisterPrmCEnv@l
    stw     r3, 0x20(r7)
    stw     r5, 0x20(r7)
    lis     r5, __vvt__26JPADrawExecRegisterPrmAEnv@h
    addi    r5, r5, __vvt__26JPADrawExecRegisterPrmAEnv@l
    stw     r3, 0x24(r7)
    stw     r28, 0x24(r7)
    stw     r3, 0x28(r7)
    stw     r12, 0x28(r7)
    stw     r3, 0x2c(r7)
    stw     r11, 0x2c(r7)
    stw     r0, 0x30(r7)
    stw     r10, 0x30(r7)
    stw     r0, 0x34(r7)
    stw     r9, 0x34(r7)
    stw     r0, 0x38(r7)
    stw     r8, 0x38(r7)
    stw     r0, 0x3c(r7)
    stw     r6, 0x3c(r7)
    stw     r0, 0x40(r7)
    stw     r5, 0x40(r7)
    stw     r3, 0x44(r7)
    stw     r4, 0x44(r7)
    stw     r3, 0x48(r7)
    stw     r0, 0x4c(r7)
    lis     r4, __vvt__22JPADrawExecLoadTexture@h
    addi    r4, r4, __vvt__22JPADrawExecLoadTexture@l
    stw     r4, 0x0(r29)
    addi    r5, r4, 0x10
    lis     r4, __vvt__20JPADrawExecLoadExTex@h
    stw     r5, 0x4(r29)
    addi    r6, r4, __vvt__20JPADrawExecLoadExTex@l
    lis     r5, __vvt__20JPADrawExecBillBoard@h
    stw     r3, 0x50(r7)
    lis     r4, __vvt__23JPADrawExecRotBillBoard@h
    lis     r9, __vvt__21JPADrawExecYBillBoard@h
    stw     r6, 0x50(r7)
    lis     r8, __vvt__24JPADrawExecRotYBillBoard@h
    lis     r6, __vvt__22JPADrawExecDirectional@h
    stw     r0, 0x54(r7)
    addi    r5, r5, __vvt__20JPADrawExecBillBoard@l
    lis     r12, __vvt__19JPADrawExecRotation@h
    stw     r5, 0x54(r7)
    lis     r5, __vvt__25JPADrawExecRotDirectional@h
    lis     r10, __vvt__16JPADrawExecPoint@h
    stw     r0, 0x58(r7)
    addi    r4, r4, __vvt__23JPADrawExecRotBillBoard@l
    addi    r9, r9, __vvt__21JPADrawExecYBillBoard@l
    stw     r4, 0x58(r7)
    addi    r8, r8, __vvt__24JPADrawExecRotYBillBoard@l
    addi    r6, r6, __vvt__22JPADrawExecDirectional@l
    stw     r0, 0x5c(r7)
    addi    r5, r5, __vvt__25JPADrawExecRotDirectional@l
    lis     r4, __vvt__27JPADrawExecDirectionalCross@h
    stw     r9, 0x5c(r7)
    lis     r9, __vvt__15JPADrawExecLine@h
    lis     r29, __vvt__30JPADrawExecRotDirectionalCross@h
    stw     r0, 0x60(r7)
    lis     r28, __vvt__23JPADrawExecDirBillBoard@h
    addi    r12, r12, __vvt__19JPADrawExecRotation@l
    stw     r8, 0x60(r7)
    lis     r8, __vvt__17JPADrawExecStripe@h
    lis     r11, __vvt__24JPADrawExecRotationCross@h
    stw     r0, 0x64(r7)
    addi    r10, r10, __vvt__16JPADrawExecPoint@l
    addi    r9, r9, __vvt__15JPADrawExecLine@l
    stw     r6, 0x64(r7)
    lis     r6, __vvt__22JPADrawExecStripeCross@h
    addi    r8, r8, __vvt__17JPADrawExecStripe@l
    stw     r0, 0x68(r7)
    addi    r6, r6, __vvt__22JPADrawExecStripeCross@l
    addi    r31, r7, 0x98
    stw     r5, 0x68(r7)
    addi    r5, r4, __vvt__27JPADrawExecDirectionalCross@l
    lis     r4, __vvt__19JPADrawExecCallBack@h
    stw     r0, 0x6c(r7)
    stw     r5, 0x6c(r7)
    addi    r5, r4, __vvt__19JPADrawExecCallBack@l
    addi    r4, r29, __vvt__30JPADrawExecRotDirectionalCross@l
    stw     r0, 0x70(r7)
    stw     r4, 0x70(r7)
    addi    r4, r28, __vvt__23JPADrawExecDirBillBoard@l
    stw     r0, 0x74(r7)
    stw     r4, 0x74(r7)
    addi    r4, r11, __vvt__24JPADrawExecRotationCross@l
    stw     r0, 0x78(r7)
    stw     r12, 0x78(r7)
    stw     r0, 0x7c(r7)
    stw     r4, 0x7c(r7)
    addi    r4, r5, 0x10
    stw     r0, 0x80(r7)
    stw     r10, 0x80(r7)
    stw     r0, 0x84(r7)
    stw     r9, 0x84(r7)
    stw     r3, 0x88(r7)
    stw     r8, 0x88(r7)
    stw     r3, 0x8c(r7)
    stw     r6, 0x8c(r7)
    stw     r3, 0x90(r7)
    stw     r0, 0x94(r7)
    stw     r5, 0x90(r7)
    stw     r4, 0x94(r7)
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r6, r3, __vvt__26JPADrawCalcParticleVisitor@l
    lis     r3, __vvt__17JPADrawCalcScaleX@h
    stw     r6, 0x0(r31)
    addi    r0, r3, __vvt__17JPADrawCalcScaleX@l
    stw     r0, 0x0(r31)
    lis     r3, __vvt__24JPADrawCalcScaleXBySpeed@h
    addi    r0, r3, __vvt__24JPADrawCalcScaleXBySpeed@l
    stw     r6, 0x9c(r7)
    lis     r3, __vvt__17JPADrawCalcScaleY@h
    lis     r5, __vvt__24JPADrawCalcScaleYBySpeed@h
    stw     r0, 0x9c(r7)
    addi    r0, r3, __vvt__17JPADrawCalcScaleY@l
    lis     r4, __vvt__23JPADrawCalcScaleCopyX2Y@h
    stw     r6, 0xa0(r7)
    lis     r3, __vvt__31JPADrawCalcScaleAnmTimingNormal@h
    lis     r9, __vvt__32JPADrawCalcScaleAnmTimingRepeatX@h
    stw     r0, 0xa0(r7)
    addi    r0, r5, __vvt__24JPADrawCalcScaleYBySpeed@l
    lis     r5, __vvt__32JPADrawCalcScaleAnmTimingRepeatY@h
    stw     r6, 0xa4(r7)
    lis     r8, __vvt__33JPADrawCalcScaleAnmTimingReverseX@h
    lis     r10, __vvt__25JPADrawCalcEmitterVisitor@h
    stw     r0, 0xa4(r7)
    addi    r0, r4, __vvt__23JPADrawCalcScaleCopyX2Y@l
    lis     r4, __vvt__33JPADrawCalcScaleAnmTimingReverseY@h
    stw     r6, 0xa8(r7)
    addi    r31, r7, 0xe4
    stw     r0, 0xa8(r7)
    addi    r0, r3, __vvt__31JPADrawCalcScaleAnmTimingNormal@l
    lis     r3, __vvt__19JPADrawCalcColorPrm@h
    stw     r6, 0xac(r7)
    stw     r0, 0xac(r7)
    addi    r0, r9, __vvt__32JPADrawCalcScaleAnmTimingRepeatX@l
    addi    r9, r3, __vvt__19JPADrawCalcColorPrm@l
    stw     r6, 0xb0(r7)
    lis     r3, __vvt__19JPADrawCalcColorEnv@h
    addi    r11, r3, __vvt__19JPADrawCalcColorEnv@l
    stw     r0, 0xb0(r7)
    addi    r0, r5, __vvt__32JPADrawCalcScaleAnmTimingRepeatY@l
    lis     r3, __vvt__30JPADrawCalcColorAnmFrameNormal@h
    stw     r6, 0xb4(r7)
    lis     r5, __vvt__31JPADrawCalcColorCopyFromEmitter@h
    stw     r0, 0xb4(r7)
    addi    r0, r8, __vvt__33JPADrawCalcScaleAnmTimingReverseX@l
    addi    r8, r3, __vvt__30JPADrawCalcColorAnmFrameNormal@l
    stw     r6, 0xb8(r7)
    lis     r3, __vvt__30JPADrawCalcColorAnmFrameRepeat@h
    stw     r0, 0xb8(r7)
    addi    r0, r4, __vvt__33JPADrawCalcScaleAnmTimingReverseY@l
    addi    r4, r3, __vvt__30JPADrawCalcColorAnmFrameRepeat@l
    stw     r6, 0xbc(r7)
    addi    r3, r9, 0x10
    stw     r0, 0xbc(r7)
    addi    r0, r10, __vvt__25JPADrawCalcEmitterVisitor@l
    addi    r10, r11, 0x10
    stw     r0, 0xc0(r7)
    stw     r6, 0xc4(r7)
    stw     r9, 0xc0(r7)
    addi    r9, r5, __vvt__31JPADrawCalcColorCopyFromEmitter@l
    addi    r5, r8, 0x10
    stw     r3, 0xc4(r7)
    addi    r3, r4, 0x10
    stw     r0, 0xc8(r7)
    stw     r6, 0xcc(r7)
    stw     r11, 0xc8(r7)
    stw     r10, 0xcc(r7)
    stw     r6, 0xd0(r7)
    stw     r9, 0xd0(r7)
    stw     r0, 0xd4(r7)
    stw     r6, 0xd8(r7)
    stw     r8, 0xd4(r7)
    stw     r5, 0xd8(r7)
    stw     r0, 0xdc(r7)
    stw     r6, 0xe0(r7)
    stw     r4, 0xdc(r7)
    stw     r3, 0xe0(r7)
    stw     r0, 0xe4(r7)
    stw     r6, 0xe8(r7)
    lis     r3, __vvt__31JPADrawCalcColorAnmFrameReverse@h
    addi    r3, r3, __vvt__31JPADrawCalcColorAnmFrameReverse@l
    stw     r3, 0x0(r31)
    addi    r4, r3, 0x10
    lis     r9, __vvt__16JPADrawCalcAlpha@h
    stw     r4, 0x4(r31)
    lis     r3, __vvt__29JPADrawCalcColorAnmFrameMerge@h
    addi    r4, r3, __vvt__29JPADrawCalcColorAnmFrameMerge@l
    stw     r0, 0xec(r7)
    lis     r3, __vvt__30JPADrawCalcColorAnmFrameRandom@h
    addi    r11, r3, __vvt__30JPADrawCalcColorAnmFrameRandom@l
    stw     r6, 0xf0(r7)
    lis     r8, __vvt__27JPADrawCalcAlphaFlickNrmSin@h
    addi    r3, r4, 0x10
    stw     r4, 0xec(r7)
    addi    r9, r9, __vvt__16JPADrawCalcAlpha@l
    addi    r8, r8, __vvt__27JPADrawCalcAlphaFlickNrmSin@l
    stw     r3, 0xf0(r7)
    lis     r3, __vvt__32JPADrawCalcTextureAnmIndexNormal@h
    addi    r12, r3, __vvt__32JPADrawCalcTextureAnmIndexNormal@l
    stw     r0, 0xf4(r7)
    lis     r3, __vvt__32JPADrawCalcTextureAnmIndexRepeat@h
    addi    r10, r3, __vvt__32JPADrawCalcTextureAnmIndexRepeat@l
    stw     r6, 0xf8(r7)
    lis     r3, __vvt__33JPADrawCalcTextureAnmIndexReverse@h
    addi    r29, r3, __vvt__33JPADrawCalcTextureAnmIndexReverse@l
    stw     r11, 0xf4(r7)
    addi    r11, r11, 0x10
    lis     r3, __vvt__31JPADrawCalcTextureAnmIndexMerge@h
    stw     r11, 0xf8(r7)
    addi    r31, r3, __vvt__31JPADrawCalcTextureAnmIndexMerge@l
    lis     r3, __vvt__32JPADrawCalcTextureAnmIndexRandom@h
    stw     r6, 0xfc(r7)
    lis     r5, __vvt__27JPADrawCalcAlphaFlickAddSin@h
    addi    r11, r3, __vvt__32JPADrawCalcTextureAnmIndexRandom@l
    stw     r9, 0xfc(r7)
    addi    r3, r5, __vvt__27JPADrawCalcAlphaFlickAddSin@l
    lis     r9, __vvt__24JPADrawCalcChildAlphaOut@h
    stw     r6, 0x100(r7)
    lis     r5, unk_803fe2b8@ha
    lis     r4, __vvt__28JPADrawCalcAlphaFlickMultSin@h
    stw     r8, 0x100(r7)
    addi    r28, r10, 0x10
    addi    r26, r7, 0x11c
    stw     r6, 0x104(r7)
    addi    r30, r29, 0x10
    addi    r25, r7, 0x124
    stw     r3, 0x104(r7)
    addi    r3, r4, __vvt__28JPADrawCalcAlphaFlickMultSin@l
    lis     r4, __dt__23JPADrawVisitorContainerFv@ha
    stw     r6, 0x108(r7)
    addi    r24, r7, 0x12c
    addi    r23, r7, 0x134
    stw     r3, 0x108(r7)
    addi    r9, r9, __vvt__24JPADrawCalcChildAlphaOut@l
    addi    r27, r7, 0x138
    stw     r0, 0x10c(r7)
    lis     r8, __vvt__24JPADrawCalcChildScaleOut@h
    addi    r3, r7, 0x0
    stw     r6, 0x110(r7)
    addi    r4, r4, __dt__23JPADrawVisitorContainerFv@l
    addi    r5, r5, unk_803fe2b8@l
    stw     r12, 0x10c(r7)
    addi    r12, r12, 0x10
    stw     r12, 0x110(r7)
    addi    r12, r31, 0x10
    stw     r0, 0x114(r7)
    stw     r6, 0x118(r7)
    stw     r10, 0x114(r7)
    addi    r10, r11, 0x10
    stw     r28, 0x118(r7)
    stw     r0, 0x11c(r7)
    addi    r7, r8, __vvt__24JPADrawCalcChildScaleOut@l
    stw     r6, 0x4(r26)
    stw     r29, 0x0(r26)
    stw     r30, 0x4(r26)
    stw     r0, 0x0(r25)
    stw     r6, 0x4(r25)
    stw     r31, 0x0(r25)
    stw     r12, 0x4(r25)
    stw     r0, 0x0(r24)
    stw     r6, 0x4(r24)
    stw     r11, 0x0(r24)
    stw     r10, 0x4(r24)
    stw     r6, 0x0(r23)
    stw     r9, 0x0(r23)
    stw     r6, 0x0(r27)
    stw     r7, 0x0(r27)
    bl      __register_global_object
    lis     r3, cb__7JPADraw@ha
    addi    r0, r3, cb__7JPADraw@l
    stw     r0, 0xc(sp)
    lis     r3, __ct__Q29JGeometry8TVec2_f_Fv@ha
    addi    r4, r3, __ct__Q29JGeometry8TVec2_f_Fv@l
    lwz     r28, 0xc(sp)
    li      r5, 0x0
    li      r6, 0x8
    addi    r3, r28, 0x14
    li      r7, 0x4
    bl      __construct_array
    lis     r4, __dt__16JPADrawClipBoardFv@ha
    lis     r3, unk_803fe2c4@ha
    addi    r5, r3, unk_803fe2c4@l
    addi    r4, r4, __dt__16JPADrawClipBoardFv@l
    addi    r3, r28, 0x0
    bl      __register_global_object
    lmw     r23, 0x1c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __dt__16JPADrawClipBoardFv
__dt__16JPADrawClipBoardFv: # 0x8032cd8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032cdb4
    extsh.  r0, r4
    ble-    branch_0x8032cdb4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032cdb4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23JPADrawVisitorContainerFv
__dt__23JPADrawVisitorContainerFv: # 0x8032cdcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032d994
    addic.  r0, r31, 0x138
    beq-    branch_0x8032ce0c
    lis     r3, __vvt__24JPADrawCalcChildScaleOut@h
    addi    r3, r3, __vvt__24JPADrawCalcChildScaleOut@l
    addic.  r0, r31, 0x138
    stw     r3, 0x138(r31)
    beq-    branch_0x8032ce0c
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x138(r31)
branch_0x8032ce0c:
    addic.  r0, r31, 0x134
    beq-    branch_0x8032ce34
    lis     r3, __vvt__24JPADrawCalcChildAlphaOut@h
    addi    r3, r3, __vvt__24JPADrawCalcChildAlphaOut@l
    addic.  r0, r31, 0x134
    stw     r3, 0x134(r31)
    beq-    branch_0x8032ce34
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x134(r31)
branch_0x8032ce34:
    addic.  r0, r31, 0x12c
    beq-    branch_0x8032ce78
    lis     r3, __vvt__32JPADrawCalcTextureAnmIndexRandom@h
    addi    r3, r3, __vvt__32JPADrawCalcTextureAnmIndexRandom@l
    stw     r3, 0x12c(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x130
    stw     r3, 0x130(r31)
    beq-    branch_0x8032ce64
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x130(r31)
branch_0x8032ce64:
    addic.  r0, r31, 0x12c
    beq-    branch_0x8032ce78
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x12c(r31)
branch_0x8032ce78:
    addic.  r0, r31, 0x124
    beq-    branch_0x8032cebc
    lis     r3, __vvt__31JPADrawCalcTextureAnmIndexMerge@h
    addi    r3, r3, __vvt__31JPADrawCalcTextureAnmIndexMerge@l
    stw     r3, 0x124(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x128
    stw     r3, 0x128(r31)
    beq-    branch_0x8032cea8
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x128(r31)
branch_0x8032cea8:
    addic.  r0, r31, 0x124
    beq-    branch_0x8032cebc
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x124(r31)
branch_0x8032cebc:
    addic.  r0, r31, 0x11c
    beq-    branch_0x8032cf00
    lis     r3, __vvt__33JPADrawCalcTextureAnmIndexReverse@h
    addi    r3, r3, __vvt__33JPADrawCalcTextureAnmIndexReverse@l
    stw     r3, 0x11c(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x120
    stw     r3, 0x120(r31)
    beq-    branch_0x8032ceec
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x120(r31)
branch_0x8032ceec:
    addic.  r0, r31, 0x11c
    beq-    branch_0x8032cf00
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x11c(r31)
branch_0x8032cf00:
    addic.  r0, r31, 0x114
    beq-    branch_0x8032cf44
    lis     r3, __vvt__32JPADrawCalcTextureAnmIndexRepeat@h
    addi    r3, r3, __vvt__32JPADrawCalcTextureAnmIndexRepeat@l
    stw     r3, 0x114(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x118
    stw     r3, 0x118(r31)
    beq-    branch_0x8032cf30
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x118(r31)
branch_0x8032cf30:
    addic.  r0, r31, 0x114
    beq-    branch_0x8032cf44
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x114(r31)
branch_0x8032cf44:
    addic.  r0, r31, 0x10c
    beq-    branch_0x8032cf88
    lis     r3, __vvt__32JPADrawCalcTextureAnmIndexNormal@h
    addi    r3, r3, __vvt__32JPADrawCalcTextureAnmIndexNormal@l
    stw     r3, 0x10c(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x110
    stw     r3, 0x110(r31)
    beq-    branch_0x8032cf74
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x110(r31)
branch_0x8032cf74:
    addic.  r0, r31, 0x10c
    beq-    branch_0x8032cf88
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x10c(r31)
branch_0x8032cf88:
    addic.  r0, r31, 0x108
    beq-    branch_0x8032cfb0
    lis     r3, __vvt__28JPADrawCalcAlphaFlickMultSin@h
    addi    r3, r3, __vvt__28JPADrawCalcAlphaFlickMultSin@l
    addic.  r0, r31, 0x108
    stw     r3, 0x108(r31)
    beq-    branch_0x8032cfb0
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x108(r31)
branch_0x8032cfb0:
    addic.  r0, r31, 0x104
    beq-    branch_0x8032cfd8
    lis     r3, __vvt__27JPADrawCalcAlphaFlickAddSin@h
    addi    r3, r3, __vvt__27JPADrawCalcAlphaFlickAddSin@l
    addic.  r0, r31, 0x104
    stw     r3, 0x104(r31)
    beq-    branch_0x8032cfd8
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x104(r31)
branch_0x8032cfd8:
    addic.  r0, r31, 0x100
    beq-    branch_0x8032d000
    lis     r3, __vvt__27JPADrawCalcAlphaFlickNrmSin@h
    addi    r3, r3, __vvt__27JPADrawCalcAlphaFlickNrmSin@l
    addic.  r0, r31, 0x100
    stw     r3, 0x100(r31)
    beq-    branch_0x8032d000
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x100(r31)
branch_0x8032d000:
    addic.  r0, r31, 0xfc
    beq-    branch_0x8032d028
    lis     r3, __vvt__16JPADrawCalcAlpha@h
    addi    r3, r3, __vvt__16JPADrawCalcAlpha@l
    addic.  r0, r31, 0xfc
    stw     r3, 0xfc(r31)
    beq-    branch_0x8032d028
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xfc(r31)
branch_0x8032d028:
    addic.  r0, r31, 0xf4
    beq-    branch_0x8032d06c
    lis     r3, __vvt__30JPADrawCalcColorAnmFrameRandom@h
    addi    r3, r3, __vvt__30JPADrawCalcColorAnmFrameRandom@l
    stw     r3, 0xf4(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0xf8
    stw     r3, 0xf8(r31)
    beq-    branch_0x8032d058
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xf8(r31)
branch_0x8032d058:
    addic.  r0, r31, 0xf4
    beq-    branch_0x8032d06c
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0xf4(r31)
branch_0x8032d06c:
    addic.  r0, r31, 0xec
    beq-    branch_0x8032d0b0
    lis     r3, __vvt__29JPADrawCalcColorAnmFrameMerge@h
    addi    r3, r3, __vvt__29JPADrawCalcColorAnmFrameMerge@l
    stw     r3, 0xec(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0xf0
    stw     r3, 0xf0(r31)
    beq-    branch_0x8032d09c
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xf0(r31)
branch_0x8032d09c:
    addic.  r0, r31, 0xec
    beq-    branch_0x8032d0b0
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0xec(r31)
branch_0x8032d0b0:
    addic.  r0, r31, 0xe4
    beq-    branch_0x8032d0f4
    lis     r3, __vvt__31JPADrawCalcColorAnmFrameReverse@h
    addi    r3, r3, __vvt__31JPADrawCalcColorAnmFrameReverse@l
    stw     r3, 0xe4(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0xe8
    stw     r3, 0xe8(r31)
    beq-    branch_0x8032d0e0
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xe8(r31)
branch_0x8032d0e0:
    addic.  r0, r31, 0xe4
    beq-    branch_0x8032d0f4
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0xe4(r31)
branch_0x8032d0f4:
    addic.  r0, r31, 0xdc
    beq-    branch_0x8032d138
    lis     r3, __vvt__30JPADrawCalcColorAnmFrameRepeat@h
    addi    r3, r3, __vvt__30JPADrawCalcColorAnmFrameRepeat@l
    stw     r3, 0xdc(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0xe0
    stw     r3, 0xe0(r31)
    beq-    branch_0x8032d124
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xe0(r31)
branch_0x8032d124:
    addic.  r0, r31, 0xdc
    beq-    branch_0x8032d138
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0xdc(r31)
branch_0x8032d138:
    addic.  r0, r31, 0xd4
    beq-    branch_0x8032d17c
    lis     r3, __vvt__30JPADrawCalcColorAnmFrameNormal@h
    addi    r3, r3, __vvt__30JPADrawCalcColorAnmFrameNormal@l
    stw     r3, 0xd4(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0xd8
    stw     r3, 0xd8(r31)
    beq-    branch_0x8032d168
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xd8(r31)
branch_0x8032d168:
    addic.  r0, r31, 0xd4
    beq-    branch_0x8032d17c
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0xd4(r31)
branch_0x8032d17c:
    addic.  r0, r31, 0xd0
    beq-    branch_0x8032d1a4
    lis     r3, __vvt__31JPADrawCalcColorCopyFromEmitter@h
    addi    r3, r3, __vvt__31JPADrawCalcColorCopyFromEmitter@l
    addic.  r0, r31, 0xd0
    stw     r3, 0xd0(r31)
    beq-    branch_0x8032d1a4
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xd0(r31)
branch_0x8032d1a4:
    addic.  r0, r31, 0xc8
    beq-    branch_0x8032d1e8
    lis     r3, __vvt__19JPADrawCalcColorEnv@h
    addi    r3, r3, __vvt__19JPADrawCalcColorEnv@l
    stw     r3, 0xc8(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0xcc
    stw     r3, 0xcc(r31)
    beq-    branch_0x8032d1d4
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xcc(r31)
branch_0x8032d1d4:
    addic.  r0, r31, 0xc8
    beq-    branch_0x8032d1e8
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0xc8(r31)
branch_0x8032d1e8:
    addic.  r0, r31, 0xc0
    beq-    branch_0x8032d22c
    lis     r3, __vvt__19JPADrawCalcColorPrm@h
    addi    r3, r3, __vvt__19JPADrawCalcColorPrm@l
    stw     r3, 0xc0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0xc4
    stw     r3, 0xc4(r31)
    beq-    branch_0x8032d218
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xc4(r31)
branch_0x8032d218:
    addic.  r0, r31, 0xc0
    beq-    branch_0x8032d22c
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0xc0(r31)
branch_0x8032d22c:
    addic.  r0, r31, 0xbc
    beq-    branch_0x8032d254
    lis     r3, __vvt__33JPADrawCalcScaleAnmTimingReverseY@h
    addi    r3, r3, __vvt__33JPADrawCalcScaleAnmTimingReverseY@l
    addic.  r0, r31, 0xbc
    stw     r3, 0xbc(r31)
    beq-    branch_0x8032d254
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xbc(r31)
branch_0x8032d254:
    addic.  r0, r31, 0xb8
    beq-    branch_0x8032d27c
    lis     r3, __vvt__33JPADrawCalcScaleAnmTimingReverseX@h
    addi    r3, r3, __vvt__33JPADrawCalcScaleAnmTimingReverseX@l
    addic.  r0, r31, 0xb8
    stw     r3, 0xb8(r31)
    beq-    branch_0x8032d27c
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xb8(r31)
branch_0x8032d27c:
    addic.  r0, r31, 0xb4
    beq-    branch_0x8032d2a4
    lis     r3, __vvt__32JPADrawCalcScaleAnmTimingRepeatY@h
    addi    r3, r3, __vvt__32JPADrawCalcScaleAnmTimingRepeatY@l
    addic.  r0, r31, 0xb4
    stw     r3, 0xb4(r31)
    beq-    branch_0x8032d2a4
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xb4(r31)
branch_0x8032d2a4:
    addic.  r0, r31, 0xb0
    beq-    branch_0x8032d2cc
    lis     r3, __vvt__32JPADrawCalcScaleAnmTimingRepeatX@h
    addi    r3, r3, __vvt__32JPADrawCalcScaleAnmTimingRepeatX@l
    addic.  r0, r31, 0xb0
    stw     r3, 0xb0(r31)
    beq-    branch_0x8032d2cc
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xb0(r31)
branch_0x8032d2cc:
    addic.  r0, r31, 0xac
    beq-    branch_0x8032d2f4
    lis     r3, __vvt__31JPADrawCalcScaleAnmTimingNormal@h
    addi    r3, r3, __vvt__31JPADrawCalcScaleAnmTimingNormal@l
    addic.  r0, r31, 0xac
    stw     r3, 0xac(r31)
    beq-    branch_0x8032d2f4
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xac(r31)
branch_0x8032d2f4:
    addic.  r0, r31, 0xa8
    beq-    branch_0x8032d31c
    lis     r3, __vvt__23JPADrawCalcScaleCopyX2Y@h
    addi    r3, r3, __vvt__23JPADrawCalcScaleCopyX2Y@l
    addic.  r0, r31, 0xa8
    stw     r3, 0xa8(r31)
    beq-    branch_0x8032d31c
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xa8(r31)
branch_0x8032d31c:
    addic.  r0, r31, 0xa4
    beq-    branch_0x8032d344
    lis     r3, __vvt__24JPADrawCalcScaleYBySpeed@h
    addi    r3, r3, __vvt__24JPADrawCalcScaleYBySpeed@l
    addic.  r0, r31, 0xa4
    stw     r3, 0xa4(r31)
    beq-    branch_0x8032d344
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xa4(r31)
branch_0x8032d344:
    addic.  r0, r31, 0xa0
    beq-    branch_0x8032d36c
    lis     r3, __vvt__17JPADrawCalcScaleY@h
    addi    r3, r3, __vvt__17JPADrawCalcScaleY@l
    addic.  r0, r31, 0xa0
    stw     r3, 0xa0(r31)
    beq-    branch_0x8032d36c
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0xa0(r31)
branch_0x8032d36c:
    addic.  r0, r31, 0x9c
    beq-    branch_0x8032d394
    lis     r3, __vvt__24JPADrawCalcScaleXBySpeed@h
    addi    r3, r3, __vvt__24JPADrawCalcScaleXBySpeed@l
    addic.  r0, r31, 0x9c
    stw     r3, 0x9c(r31)
    beq-    branch_0x8032d394
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x9c(r31)
branch_0x8032d394:
    addic.  r0, r31, 0x98
    beq-    branch_0x8032d3bc
    lis     r3, __vvt__17JPADrawCalcScaleX@h
    addi    r3, r3, __vvt__17JPADrawCalcScaleX@l
    addic.  r0, r31, 0x98
    stw     r3, 0x98(r31)
    beq-    branch_0x8032d3bc
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x98(r31)
branch_0x8032d3bc:
    addic.  r0, r31, 0x90
    beq-    branch_0x8032d400
    lis     r3, __vvt__19JPADrawExecCallBack@h
    addi    r3, r3, __vvt__19JPADrawExecCallBack@l
    stw     r3, 0x90(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x94
    stw     r3, 0x94(r31)
    beq-    branch_0x8032d3ec
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x94(r31)
branch_0x8032d3ec:
    addic.  r0, r31, 0x90
    beq-    branch_0x8032d400
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x90(r31)
branch_0x8032d400:
    addic.  r0, r31, 0x8c
    beq-    branch_0x8032d428
    lis     r3, __vvt__22JPADrawExecStripeCross@h
    addi    r3, r3, __vvt__22JPADrawExecStripeCross@l
    addic.  r0, r31, 0x8c
    stw     r3, 0x8c(r31)
    beq-    branch_0x8032d428
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x8c(r31)
branch_0x8032d428:
    addic.  r0, r31, 0x88
    beq-    branch_0x8032d450
    lis     r3, __vvt__17JPADrawExecStripe@h
    addi    r3, r3, __vvt__17JPADrawExecStripe@l
    addic.  r0, r31, 0x88
    stw     r3, 0x88(r31)
    beq-    branch_0x8032d450
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x88(r31)
branch_0x8032d450:
    addic.  r0, r31, 0x84
    beq-    branch_0x8032d478
    lis     r3, __vvt__15JPADrawExecLine@h
    addi    r3, r3, __vvt__15JPADrawExecLine@l
    addic.  r0, r31, 0x84
    stw     r3, 0x84(r31)
    beq-    branch_0x8032d478
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x84(r31)
branch_0x8032d478:
    addic.  r0, r31, 0x80
    beq-    branch_0x8032d4a0
    lis     r3, __vvt__16JPADrawExecPoint@h
    addi    r3, r3, __vvt__16JPADrawExecPoint@l
    addic.  r0, r31, 0x80
    stw     r3, 0x80(r31)
    beq-    branch_0x8032d4a0
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x80(r31)
branch_0x8032d4a0:
    addic.  r0, r31, 0x7c
    beq-    branch_0x8032d4c8
    lis     r3, __vvt__24JPADrawExecRotationCross@h
    addi    r3, r3, __vvt__24JPADrawExecRotationCross@l
    addic.  r0, r31, 0x7c
    stw     r3, 0x7c(r31)
    beq-    branch_0x8032d4c8
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x7c(r31)
branch_0x8032d4c8:
    addic.  r0, r31, 0x78
    beq-    branch_0x8032d4f0
    lis     r3, __vvt__19JPADrawExecRotation@h
    addi    r3, r3, __vvt__19JPADrawExecRotation@l
    addic.  r0, r31, 0x78
    stw     r3, 0x78(r31)
    beq-    branch_0x8032d4f0
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x78(r31)
branch_0x8032d4f0:
    addic.  r0, r31, 0x74
    beq-    branch_0x8032d518
    lis     r3, __vvt__23JPADrawExecDirBillBoard@h
    addi    r3, r3, __vvt__23JPADrawExecDirBillBoard@l
    addic.  r0, r31, 0x74
    stw     r3, 0x74(r31)
    beq-    branch_0x8032d518
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x74(r31)
branch_0x8032d518:
    addic.  r0, r31, 0x70
    beq-    branch_0x8032d540
    lis     r3, __vvt__30JPADrawExecRotDirectionalCross@h
    addi    r3, r3, __vvt__30JPADrawExecRotDirectionalCross@l
    addic.  r0, r31, 0x70
    stw     r3, 0x70(r31)
    beq-    branch_0x8032d540
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x70(r31)
branch_0x8032d540:
    addic.  r0, r31, 0x6c
    beq-    branch_0x8032d568
    lis     r3, __vvt__27JPADrawExecDirectionalCross@h
    addi    r3, r3, __vvt__27JPADrawExecDirectionalCross@l
    addic.  r0, r31, 0x6c
    stw     r3, 0x6c(r31)
    beq-    branch_0x8032d568
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x6c(r31)
branch_0x8032d568:
    addic.  r0, r31, 0x68
    beq-    branch_0x8032d590
    lis     r3, __vvt__25JPADrawExecRotDirectional@h
    addi    r3, r3, __vvt__25JPADrawExecRotDirectional@l
    addic.  r0, r31, 0x68
    stw     r3, 0x68(r31)
    beq-    branch_0x8032d590
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x68(r31)
branch_0x8032d590:
    addic.  r0, r31, 0x64
    beq-    branch_0x8032d5b8
    lis     r3, __vvt__22JPADrawExecDirectional@h
    addi    r3, r3, __vvt__22JPADrawExecDirectional@l
    addic.  r0, r31, 0x64
    stw     r3, 0x64(r31)
    beq-    branch_0x8032d5b8
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x64(r31)
branch_0x8032d5b8:
    addic.  r0, r31, 0x60
    beq-    branch_0x8032d5e0
    lis     r3, __vvt__24JPADrawExecRotYBillBoard@h
    addi    r3, r3, __vvt__24JPADrawExecRotYBillBoard@l
    addic.  r0, r31, 0x60
    stw     r3, 0x60(r31)
    beq-    branch_0x8032d5e0
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x60(r31)
branch_0x8032d5e0:
    addic.  r0, r31, 0x5c
    beq-    branch_0x8032d608
    lis     r3, __vvt__21JPADrawExecYBillBoard@h
    addi    r3, r3, __vvt__21JPADrawExecYBillBoard@l
    addic.  r0, r31, 0x5c
    stw     r3, 0x5c(r31)
    beq-    branch_0x8032d608
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x5c(r31)
branch_0x8032d608:
    addic.  r0, r31, 0x58
    beq-    branch_0x8032d630
    lis     r3, __vvt__23JPADrawExecRotBillBoard@h
    addi    r3, r3, __vvt__23JPADrawExecRotBillBoard@l
    addic.  r0, r31, 0x58
    stw     r3, 0x58(r31)
    beq-    branch_0x8032d630
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x58(r31)
branch_0x8032d630:
    addic.  r0, r31, 0x54
    beq-    branch_0x8032d658
    lis     r3, __vvt__20JPADrawExecBillBoard@h
    addi    r3, r3, __vvt__20JPADrawExecBillBoard@l
    addic.  r0, r31, 0x54
    stw     r3, 0x54(r31)
    beq-    branch_0x8032d658
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x54(r31)
branch_0x8032d658:
    addic.  r0, r31, 0x50
    beq-    branch_0x8032d680
    lis     r3, __vvt__20JPADrawExecLoadExTex@h
    addi    r3, r3, __vvt__20JPADrawExecLoadExTex@l
    addic.  r0, r31, 0x50
    stw     r3, 0x50(r31)
    beq-    branch_0x8032d680
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x50(r31)
branch_0x8032d680:
    addic.  r0, r31, 0x48
    beq-    branch_0x8032d6c4
    lis     r3, __vvt__22JPADrawExecLoadTexture@h
    addi    r3, r3, __vvt__22JPADrawExecLoadTexture@l
    stw     r3, 0x48(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4c
    stw     r3, 0x4c(r31)
    beq-    branch_0x8032d6b0
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x4c(r31)
branch_0x8032d6b0:
    addic.  r0, r31, 0x48
    beq-    branch_0x8032d6c4
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x48(r31)
branch_0x8032d6c4:
    addic.  r0, r31, 0x44
    beq-    branch_0x8032d6ec
    lis     r3, __vvt__29JPADrawExecLoadDefaultTexture@h
    addi    r3, r3, __vvt__29JPADrawExecLoadDefaultTexture@l
    addic.  r0, r31, 0x44
    stw     r3, 0x44(r31)
    beq-    branch_0x8032d6ec
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x44(r31)
branch_0x8032d6ec:
    addic.  r0, r31, 0x40
    beq-    branch_0x8032d714
    lis     r3, __vvt__26JPADrawExecRegisterPrmAEnv@h
    addi    r3, r3, __vvt__26JPADrawExecRegisterPrmAEnv@l
    addic.  r0, r31, 0x40
    stw     r3, 0x40(r31)
    beq-    branch_0x8032d714
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x40(r31)
branch_0x8032d714:
    addic.  r0, r31, 0x3c
    beq-    branch_0x8032d73c
    lis     r3, __vvt__26JPADrawExecRegisterPrmCEnv@h
    addi    r3, r3, __vvt__26JPADrawExecRegisterPrmCEnv@l
    addic.  r0, r31, 0x3c
    stw     r3, 0x3c(r31)
    beq-    branch_0x8032d73c
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x3c(r31)
branch_0x8032d73c:
    addic.  r0, r31, 0x38
    beq-    branch_0x8032d764
    lis     r3, __vvt__30JPADrawExecRegisterEnvColorAnm@h
    addi    r3, r3, __vvt__30JPADrawExecRegisterEnvColorAnm@l
    addic.  r0, r31, 0x38
    stw     r3, 0x38(r31)
    beq-    branch_0x8032d764
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x38(r31)
branch_0x8032d764:
    addic.  r0, r31, 0x34
    beq-    branch_0x8032d78c
    lis     r3, __vvt__30JPADrawExecRegisterPrmAlphaAnm@h
    addi    r3, r3, __vvt__30JPADrawExecRegisterPrmAlphaAnm@l
    addic.  r0, r31, 0x34
    stw     r3, 0x34(r31)
    beq-    branch_0x8032d78c
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x34(r31)
branch_0x8032d78c:
    addic.  r0, r31, 0x30
    beq-    branch_0x8032d7b4
    lis     r3, __vvt__30JPADrawExecRegisterPrmColorAnm@h
    addi    r3, r3, __vvt__30JPADrawExecRegisterPrmColorAnm@l
    addic.  r0, r31, 0x30
    stw     r3, 0x30(r31)
    beq-    branch_0x8032d7b4
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x30(r31)
branch_0x8032d7b4:
    addic.  r0, r31, 0x2c
    beq-    branch_0x8032d7dc
    lis     r3, __vvt__31JPADrawExecRegisterColorChildPE@h
    addi    r3, r3, __vvt__31JPADrawExecRegisterColorChildPE@l
    addic.  r0, r31, 0x2c
    stw     r3, 0x2c(r31)
    beq-    branch_0x8032d7dc
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x2c(r31)
branch_0x8032d7dc:
    addic.  r0, r31, 0x28
    beq-    branch_0x8032d804
    lis     r3, __vvt__32JPADrawExecRegisterColorEmitterE@h
    addi    r3, r3, __vvt__32JPADrawExecRegisterColorEmitterE@l
    addic.  r0, r31, 0x28
    stw     r3, 0x28(r31)
    beq-    branch_0x8032d804
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x28(r31)
branch_0x8032d804:
    addic.  r0, r31, 0x24
    beq-    branch_0x8032d82c
    lis     r3, __vvt__32JPADrawExecRegisterColorEmitterP@h
    addi    r3, r3, __vvt__32JPADrawExecRegisterColorEmitterP@l
    addic.  r0, r31, 0x24
    stw     r3, 0x24(r31)
    beq-    branch_0x8032d82c
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x24(r31)
branch_0x8032d82c:
    addic.  r0, r31, 0x20
    beq-    branch_0x8032d854
    lis     r3, __vvt__33JPADrawExecRegisterColorEmitterPE@h
    addi    r3, r3, __vvt__33JPADrawExecRegisterColorEmitterPE@l
    addic.  r0, r31, 0x20
    stw     r3, 0x20(r31)
    beq-    branch_0x8032d854
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x20(r31)
branch_0x8032d854:
    addic.  r0, r31, 0x1c
    beq-    branch_0x8032d87c
    lis     r3, __vvt__23JPADrawExecSetLineWidth@h
    addi    r3, r3, __vvt__23JPADrawExecSetLineWidth@l
    addic.  r0, r31, 0x1c
    stw     r3, 0x1c(r31)
    beq-    branch_0x8032d87c
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x1c(r31)
branch_0x8032d87c:
    addic.  r0, r31, 0x18
    beq-    branch_0x8032d8a4
    lis     r3, __vvt__23JPADrawExecSetPointSize@h
    addi    r3, r3, __vvt__23JPADrawExecSetPointSize@l
    addic.  r0, r31, 0x18
    stw     r3, 0x18(r31)
    beq-    branch_0x8032d8a4
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x18(r31)
branch_0x8032d8a4:
    addic.  r0, r31, 0x10
    beq-    branch_0x8032d8e8
    lis     r3, __vvt__20JPADrawExecSetTexMtx@h
    addi    r3, r3, __vvt__20JPADrawExecSetTexMtx@l
    stw     r3, 0x10(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x14
    stw     r3, 0x14(r31)
    beq-    branch_0x8032d8d4
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x14(r31)
branch_0x8032d8d4:
    addic.  r0, r31, 0x10
    beq-    branch_0x8032d8e8
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x10(r31)
branch_0x8032d8e8:
    addic.  r0, r31, 0xc
    beq-    branch_0x8032d910
    lis     r3, __vvt__20JPADrawExecGenIdtMtx@h
    addi    r3, r3, __vvt__20JPADrawExecGenIdtMtx@l
    addic.  r0, r31, 0xc
    stw     r3, 0xc(r31)
    beq-    branch_0x8032d910
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0xc(r31)
branch_0x8032d910:
    addic.  r0, r31, 0x8
    beq-    branch_0x8032d938
    lis     r3, __vvt__21JPADrawExecGenTexMtx0@h
    addi    r3, r3, __vvt__21JPADrawExecGenTexMtx0@l
    addic.  r0, r31, 0x8
    stw     r3, 0x8(r31)
    beq-    branch_0x8032d938
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x8(r31)
branch_0x8032d938:
    addic.  r0, r31, 0x4
    beq-    branch_0x8032d960
    lis     r3, __vvt__23JPADrawExecGenPrjTexMtx@h
    addi    r3, r3, __vvt__23JPADrawExecGenPrjTexMtx@l
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032d960
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032d960:
    cmplwi  r31, 0x0
    beq-    branch_0x8032d984
    lis     r3, __vvt__20JPADrawExecGenPrjMtx@h
    addi    r0, r3, __vvt__20JPADrawExecGenPrjMtx@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032d984
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032d984:
    extsh.  r0, r4
    ble-    branch_0x8032d994
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032d994:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__24JPADrawCalcChildScaleOutFv
__dt__24JPADrawCalcChildScaleOutFv: # 0x8032d9ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032d9f0
    lis     r3, __vvt__24JPADrawCalcChildScaleOut@h
    addi    r0, r3, __vvt__24JPADrawCalcChildScaleOut@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032d9e0
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032d9e0:
    extsh.  r0, r4
    ble-    branch_0x8032d9f0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032d9f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__24JPADrawCalcChildAlphaOutFv
__dt__24JPADrawCalcChildAlphaOutFv: # 0x8032da08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032da4c
    lis     r3, __vvt__24JPADrawCalcChildAlphaOut@h
    addi    r0, r3, __vvt__24JPADrawCalcChildAlphaOut@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032da3c
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032da3c:
    extsh.  r0, r4
    ble-    branch_0x8032da4c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032da4c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__32JPADrawCalcTextureAnmIndexRandomFv
__dt__32JPADrawCalcTextureAnmIndexRandomFv: # 0x8032da64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032dac8
    lis     r3, __vvt__32JPADrawCalcTextureAnmIndexRandom@h
    addi    r3, r3, __vvt__32JPADrawCalcTextureAnmIndexRandom@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032daa4
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032daa4:
    cmplwi  r31, 0x0
    beq-    branch_0x8032dab8
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032dab8:
    extsh.  r0, r4
    ble-    branch_0x8032dac8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032dac8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__31JPADrawCalcTextureAnmIndexMergeFv
__dt__31JPADrawCalcTextureAnmIndexMergeFv: # 0x8032dae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032db44
    lis     r3, __vvt__31JPADrawCalcTextureAnmIndexMerge@h
    addi    r3, r3, __vvt__31JPADrawCalcTextureAnmIndexMerge@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032db20
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032db20:
    cmplwi  r31, 0x0
    beq-    branch_0x8032db34
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032db34:
    extsh.  r0, r4
    ble-    branch_0x8032db44
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032db44:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__33JPADrawCalcTextureAnmIndexReverseFv
__dt__33JPADrawCalcTextureAnmIndexReverseFv: # 0x8032db5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032dbc0
    lis     r3, __vvt__33JPADrawCalcTextureAnmIndexReverse@h
    addi    r3, r3, __vvt__33JPADrawCalcTextureAnmIndexReverse@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032db9c
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032db9c:
    cmplwi  r31, 0x0
    beq-    branch_0x8032dbb0
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032dbb0:
    extsh.  r0, r4
    ble-    branch_0x8032dbc0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032dbc0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__32JPADrawCalcTextureAnmIndexRepeatFv
__dt__32JPADrawCalcTextureAnmIndexRepeatFv: # 0x8032dbd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032dc3c
    lis     r3, __vvt__32JPADrawCalcTextureAnmIndexRepeat@h
    addi    r3, r3, __vvt__32JPADrawCalcTextureAnmIndexRepeat@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032dc18
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032dc18:
    cmplwi  r31, 0x0
    beq-    branch_0x8032dc2c
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032dc2c:
    extsh.  r0, r4
    ble-    branch_0x8032dc3c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032dc3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__32JPADrawCalcTextureAnmIndexNormalFv
__dt__32JPADrawCalcTextureAnmIndexNormalFv: # 0x8032dc54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032dcb8
    lis     r3, __vvt__32JPADrawCalcTextureAnmIndexNormal@h
    addi    r3, r3, __vvt__32JPADrawCalcTextureAnmIndexNormal@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032dc94
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032dc94:
    cmplwi  r31, 0x0
    beq-    branch_0x8032dca8
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032dca8:
    extsh.  r0, r4
    ble-    branch_0x8032dcb8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032dcb8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__28JPADrawCalcAlphaFlickMultSinFv
__dt__28JPADrawCalcAlphaFlickMultSinFv: # 0x8032dcd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032dd14
    lis     r3, __vvt__28JPADrawCalcAlphaFlickMultSin@h
    addi    r0, r3, __vvt__28JPADrawCalcAlphaFlickMultSin@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032dd04
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032dd04:
    extsh.  r0, r4
    ble-    branch_0x8032dd14
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032dd14:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__27JPADrawCalcAlphaFlickAddSinFv
__dt__27JPADrawCalcAlphaFlickAddSinFv: # 0x8032dd2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032dd70
    lis     r3, __vvt__27JPADrawCalcAlphaFlickAddSin@h
    addi    r0, r3, __vvt__27JPADrawCalcAlphaFlickAddSin@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032dd60
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032dd60:
    extsh.  r0, r4
    ble-    branch_0x8032dd70
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032dd70:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__27JPADrawCalcAlphaFlickNrmSinFv
__dt__27JPADrawCalcAlphaFlickNrmSinFv: # 0x8032dd88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ddcc
    lis     r3, __vvt__27JPADrawCalcAlphaFlickNrmSin@h
    addi    r0, r3, __vvt__27JPADrawCalcAlphaFlickNrmSin@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ddbc
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ddbc:
    extsh.  r0, r4
    ble-    branch_0x8032ddcc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ddcc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16JPADrawCalcAlphaFv
__dt__16JPADrawCalcAlphaFv: # 0x8032dde4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032de28
    lis     r3, __vvt__16JPADrawCalcAlpha@h
    addi    r0, r3, __vvt__16JPADrawCalcAlpha@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032de18
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032de18:
    extsh.  r0, r4
    ble-    branch_0x8032de28
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032de28:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__30JPADrawCalcColorAnmFrameRandomFv
__dt__30JPADrawCalcColorAnmFrameRandomFv: # 0x8032de40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032dea4
    lis     r3, __vvt__30JPADrawCalcColorAnmFrameRandom@h
    addi    r3, r3, __vvt__30JPADrawCalcColorAnmFrameRandom@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032de80
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032de80:
    cmplwi  r31, 0x0
    beq-    branch_0x8032de94
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032de94:
    extsh.  r0, r4
    ble-    branch_0x8032dea4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032dea4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__29JPADrawCalcColorAnmFrameMergeFv
__dt__29JPADrawCalcColorAnmFrameMergeFv: # 0x8032debc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032df20
    lis     r3, __vvt__29JPADrawCalcColorAnmFrameMerge@h
    addi    r3, r3, __vvt__29JPADrawCalcColorAnmFrameMerge@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032defc
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032defc:
    cmplwi  r31, 0x0
    beq-    branch_0x8032df10
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032df10:
    extsh.  r0, r4
    ble-    branch_0x8032df20
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032df20:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__31JPADrawCalcColorAnmFrameReverseFv
__dt__31JPADrawCalcColorAnmFrameReverseFv: # 0x8032df38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032df9c
    lis     r3, __vvt__31JPADrawCalcColorAnmFrameReverse@h
    addi    r3, r3, __vvt__31JPADrawCalcColorAnmFrameReverse@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032df78
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032df78:
    cmplwi  r31, 0x0
    beq-    branch_0x8032df8c
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032df8c:
    extsh.  r0, r4
    ble-    branch_0x8032df9c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032df9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__30JPADrawCalcColorAnmFrameRepeatFv
__dt__30JPADrawCalcColorAnmFrameRepeatFv: # 0x8032dfb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e018
    lis     r3, __vvt__30JPADrawCalcColorAnmFrameRepeat@h
    addi    r3, r3, __vvt__30JPADrawCalcColorAnmFrameRepeat@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032dff4
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032dff4:
    cmplwi  r31, 0x0
    beq-    branch_0x8032e008
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e008:
    extsh.  r0, r4
    ble-    branch_0x8032e018
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e018:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__30JPADrawCalcColorAnmFrameNormalFv
__dt__30JPADrawCalcColorAnmFrameNormalFv: # 0x8032e030
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e094
    lis     r3, __vvt__30JPADrawCalcColorAnmFrameNormal@h
    addi    r3, r3, __vvt__30JPADrawCalcColorAnmFrameNormal@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032e070
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032e070:
    cmplwi  r31, 0x0
    beq-    branch_0x8032e084
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e084:
    extsh.  r0, r4
    ble-    branch_0x8032e094
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e094:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__31JPADrawCalcColorCopyFromEmitterFv
__dt__31JPADrawCalcColorCopyFromEmitterFv: # 0x8032e0ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e0f0
    lis     r3, __vvt__31JPADrawCalcColorCopyFromEmitter@h
    addi    r0, r3, __vvt__31JPADrawCalcColorCopyFromEmitter@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e0e0
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e0e0:
    extsh.  r0, r4
    ble-    branch_0x8032e0f0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e0f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19JPADrawCalcColorEnvFv
__dt__19JPADrawCalcColorEnvFv: # 0x8032e108
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e16c
    lis     r3, __vvt__19JPADrawCalcColorEnv@h
    addi    r3, r3, __vvt__19JPADrawCalcColorEnv@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032e148
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032e148:
    cmplwi  r31, 0x0
    beq-    branch_0x8032e15c
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e15c:
    extsh.  r0, r4
    ble-    branch_0x8032e16c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e16c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19JPADrawCalcColorPrmFv
__dt__19JPADrawCalcColorPrmFv: # 0x8032e184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e1e8
    lis     r3, __vvt__19JPADrawCalcColorPrm@h
    addi    r3, r3, __vvt__19JPADrawCalcColorPrm@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032e1c4
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032e1c4:
    cmplwi  r31, 0x0
    beq-    branch_0x8032e1d8
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e1d8:
    extsh.  r0, r4
    ble-    branch_0x8032e1e8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e1e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__25JPADrawCalcEmitterVisitorFv
__dt__25JPADrawCalcEmitterVisitorFv: # 0x8032e200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e234
    lis     r3, __vvt__25JPADrawCalcEmitterVisitor@h
    addi    r3, r3, __vvt__25JPADrawCalcEmitterVisitor@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8032e234
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e234:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__33JPADrawCalcScaleAnmTimingReverseYFv
__dt__33JPADrawCalcScaleAnmTimingReverseYFv: # 0x8032e24c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e290
    lis     r3, __vvt__33JPADrawCalcScaleAnmTimingReverseY@h
    addi    r0, r3, __vvt__33JPADrawCalcScaleAnmTimingReverseY@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e280
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e280:
    extsh.  r0, r4
    ble-    branch_0x8032e290
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e290:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__33JPADrawCalcScaleAnmTimingReverseXFv
__dt__33JPADrawCalcScaleAnmTimingReverseXFv: # 0x8032e2a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e2ec
    lis     r3, __vvt__33JPADrawCalcScaleAnmTimingReverseX@h
    addi    r0, r3, __vvt__33JPADrawCalcScaleAnmTimingReverseX@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e2dc
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e2dc:
    extsh.  r0, r4
    ble-    branch_0x8032e2ec
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e2ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__32JPADrawCalcScaleAnmTimingRepeatYFv
__dt__32JPADrawCalcScaleAnmTimingRepeatYFv: # 0x8032e304
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e348
    lis     r3, __vvt__32JPADrawCalcScaleAnmTimingRepeatY@h
    addi    r0, r3, __vvt__32JPADrawCalcScaleAnmTimingRepeatY@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e338
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e338:
    extsh.  r0, r4
    ble-    branch_0x8032e348
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e348:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__32JPADrawCalcScaleAnmTimingRepeatXFv
__dt__32JPADrawCalcScaleAnmTimingRepeatXFv: # 0x8032e360
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e3a4
    lis     r3, __vvt__32JPADrawCalcScaleAnmTimingRepeatX@h
    addi    r0, r3, __vvt__32JPADrawCalcScaleAnmTimingRepeatX@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e394
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e394:
    extsh.  r0, r4
    ble-    branch_0x8032e3a4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e3a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__31JPADrawCalcScaleAnmTimingNormalFv
__dt__31JPADrawCalcScaleAnmTimingNormalFv: # 0x8032e3bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e400
    lis     r3, __vvt__31JPADrawCalcScaleAnmTimingNormal@h
    addi    r0, r3, __vvt__31JPADrawCalcScaleAnmTimingNormal@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e3f0
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e3f0:
    extsh.  r0, r4
    ble-    branch_0x8032e400
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e400:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23JPADrawCalcScaleCopyX2YFv
__dt__23JPADrawCalcScaleCopyX2YFv: # 0x8032e418
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e45c
    lis     r3, __vvt__23JPADrawCalcScaleCopyX2Y@h
    addi    r0, r3, __vvt__23JPADrawCalcScaleCopyX2Y@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e44c
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e44c:
    extsh.  r0, r4
    ble-    branch_0x8032e45c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e45c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__24JPADrawCalcScaleYBySpeedFv
__dt__24JPADrawCalcScaleYBySpeedFv: # 0x8032e474
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e4b8
    lis     r3, __vvt__24JPADrawCalcScaleYBySpeed@h
    addi    r0, r3, __vvt__24JPADrawCalcScaleYBySpeed@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e4a8
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e4a8:
    extsh.  r0, r4
    ble-    branch_0x8032e4b8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e4b8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17JPADrawCalcScaleYFv
__dt__17JPADrawCalcScaleYFv: # 0x8032e4d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e514
    lis     r3, __vvt__17JPADrawCalcScaleY@h
    addi    r0, r3, __vvt__17JPADrawCalcScaleY@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e504
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e504:
    extsh.  r0, r4
    ble-    branch_0x8032e514
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e514:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__24JPADrawCalcScaleXBySpeedFv
__dt__24JPADrawCalcScaleXBySpeedFv: # 0x8032e52c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e570
    lis     r3, __vvt__24JPADrawCalcScaleXBySpeed@h
    addi    r0, r3, __vvt__24JPADrawCalcScaleXBySpeed@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e560
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e560:
    extsh.  r0, r4
    ble-    branch_0x8032e570
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e570:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17JPADrawCalcScaleXFv
__dt__17JPADrawCalcScaleXFv: # 0x8032e588
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e5cc
    lis     r3, __vvt__17JPADrawCalcScaleX@h
    addi    r0, r3, __vvt__17JPADrawCalcScaleX@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e5bc
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawCalcParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e5bc:
    extsh.  r0, r4
    ble-    branch_0x8032e5cc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e5cc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__26JPADrawCalcParticleVisitorFv
__dt__26JPADrawCalcParticleVisitorFv: # 0x8032e5e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e618
    lis     r3, __vvt__26JPADrawCalcParticleVisitor@h
    addi    r3, r3, __vvt__26JPADrawCalcParticleVisitor@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8032e618
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e618:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19JPADrawExecCallBackFv
__dt__19JPADrawExecCallBackFv: # 0x8032e630
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e694
    lis     r3, __vvt__19JPADrawExecCallBack@h
    addi    r3, r3, __vvt__19JPADrawExecCallBack@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032e670
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032e670:
    cmplwi  r31, 0x0
    beq-    branch_0x8032e684
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e684:
    extsh.  r0, r4
    ble-    branch_0x8032e694
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e694:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__22JPADrawExecStripeCrossFv
__dt__22JPADrawExecStripeCrossFv: # 0x8032e6ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e6f0
    lis     r3, __vvt__22JPADrawExecStripeCross@h
    addi    r0, r3, __vvt__22JPADrawExecStripeCross@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e6e0
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e6e0:
    extsh.  r0, r4
    ble-    branch_0x8032e6f0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e6f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17JPADrawExecStripeFv
__dt__17JPADrawExecStripeFv: # 0x8032e708
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e74c
    lis     r3, __vvt__17JPADrawExecStripe@h
    addi    r0, r3, __vvt__17JPADrawExecStripe@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e73c
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e73c:
    extsh.  r0, r4
    ble-    branch_0x8032e74c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e74c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15JPADrawExecLineFv
__dt__15JPADrawExecLineFv: # 0x8032e764
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e7a8
    lis     r3, __vvt__15JPADrawExecLine@h
    addi    r0, r3, __vvt__15JPADrawExecLine@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e798
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e798:
    extsh.  r0, r4
    ble-    branch_0x8032e7a8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e7a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16JPADrawExecPointFv
__dt__16JPADrawExecPointFv: # 0x8032e7c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e804
    lis     r3, __vvt__16JPADrawExecPoint@h
    addi    r0, r3, __vvt__16JPADrawExecPoint@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e7f4
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e7f4:
    extsh.  r0, r4
    ble-    branch_0x8032e804
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e804:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__24JPADrawExecRotationCrossFv
__dt__24JPADrawExecRotationCrossFv: # 0x8032e81c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e860
    lis     r3, __vvt__24JPADrawExecRotationCross@h
    addi    r0, r3, __vvt__24JPADrawExecRotationCross@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e850
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e850:
    extsh.  r0, r4
    ble-    branch_0x8032e860
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e860:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19JPADrawExecRotationFv
__dt__19JPADrawExecRotationFv: # 0x8032e878
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e8bc
    lis     r3, __vvt__19JPADrawExecRotation@h
    addi    r0, r3, __vvt__19JPADrawExecRotation@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e8ac
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e8ac:
    extsh.  r0, r4
    ble-    branch_0x8032e8bc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e8bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23JPADrawExecDirBillBoardFv
__dt__23JPADrawExecDirBillBoardFv: # 0x8032e8d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e918
    lis     r3, __vvt__23JPADrawExecDirBillBoard@h
    addi    r0, r3, __vvt__23JPADrawExecDirBillBoard@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e908
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e908:
    extsh.  r0, r4
    ble-    branch_0x8032e918
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e918:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__30JPADrawExecRotDirectionalCrossFv
__dt__30JPADrawExecRotDirectionalCrossFv: # 0x8032e930
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e974
    lis     r3, __vvt__30JPADrawExecRotDirectionalCross@h
    addi    r0, r3, __vvt__30JPADrawExecRotDirectionalCross@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e964
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e964:
    extsh.  r0, r4
    ble-    branch_0x8032e974
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e974:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__27JPADrawExecDirectionalCrossFv
__dt__27JPADrawExecDirectionalCrossFv: # 0x8032e98c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032e9d0
    lis     r3, __vvt__27JPADrawExecDirectionalCross@h
    addi    r0, r3, __vvt__27JPADrawExecDirectionalCross@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032e9c0
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032e9c0:
    extsh.  r0, r4
    ble-    branch_0x8032e9d0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032e9d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__25JPADrawExecRotDirectionalFv
__dt__25JPADrawExecRotDirectionalFv: # 0x8032e9e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ea2c
    lis     r3, __vvt__25JPADrawExecRotDirectional@h
    addi    r0, r3, __vvt__25JPADrawExecRotDirectional@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ea1c
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ea1c:
    extsh.  r0, r4
    ble-    branch_0x8032ea2c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ea2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__22JPADrawExecDirectionalFv
__dt__22JPADrawExecDirectionalFv: # 0x8032ea44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ea88
    lis     r3, __vvt__22JPADrawExecDirectional@h
    addi    r0, r3, __vvt__22JPADrawExecDirectional@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ea78
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ea78:
    extsh.  r0, r4
    ble-    branch_0x8032ea88
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ea88:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__24JPADrawExecRotYBillBoardFv
__dt__24JPADrawExecRotYBillBoardFv: # 0x8032eaa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032eae4
    lis     r3, __vvt__24JPADrawExecRotYBillBoard@h
    addi    r0, r3, __vvt__24JPADrawExecRotYBillBoard@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ead4
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ead4:
    extsh.  r0, r4
    ble-    branch_0x8032eae4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032eae4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__21JPADrawExecYBillBoardFv
__dt__21JPADrawExecYBillBoardFv: # 0x8032eafc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032eb40
    lis     r3, __vvt__21JPADrawExecYBillBoard@h
    addi    r0, r3, __vvt__21JPADrawExecYBillBoard@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032eb30
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032eb30:
    extsh.  r0, r4
    ble-    branch_0x8032eb40
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032eb40:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23JPADrawExecRotBillBoardFv
__dt__23JPADrawExecRotBillBoardFv: # 0x8032eb58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032eb9c
    lis     r3, __vvt__23JPADrawExecRotBillBoard@h
    addi    r0, r3, __vvt__23JPADrawExecRotBillBoard@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032eb8c
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032eb8c:
    extsh.  r0, r4
    ble-    branch_0x8032eb9c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032eb9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__20JPADrawExecBillBoardFv
__dt__20JPADrawExecBillBoardFv: # 0x8032ebb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ebf8
    lis     r3, __vvt__20JPADrawExecBillBoard@h
    addi    r0, r3, __vvt__20JPADrawExecBillBoard@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ebe8
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ebe8:
    extsh.  r0, r4
    ble-    branch_0x8032ebf8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ebf8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__20JPADrawExecLoadExTexFv
__dt__20JPADrawExecLoadExTexFv: # 0x8032ec10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ec54
    lis     r3, __vvt__20JPADrawExecLoadExTex@h
    addi    r0, r3, __vvt__20JPADrawExecLoadExTex@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ec44
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ec44:
    extsh.  r0, r4
    ble-    branch_0x8032ec54
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ec54:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__22JPADrawExecLoadTextureFv
__dt__22JPADrawExecLoadTextureFv: # 0x8032ec6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ecd0
    lis     r3, __vvt__22JPADrawExecLoadTexture@h
    addi    r3, r3, __vvt__22JPADrawExecLoadTexture@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032ecac
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032ecac:
    cmplwi  r31, 0x0
    beq-    branch_0x8032ecc0
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ecc0:
    extsh.  r0, r4
    ble-    branch_0x8032ecd0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ecd0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__29JPADrawExecLoadDefaultTextureFv
__dt__29JPADrawExecLoadDefaultTextureFv: # 0x8032ece8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ed2c
    lis     r3, __vvt__29JPADrawExecLoadDefaultTexture@h
    addi    r0, r3, __vvt__29JPADrawExecLoadDefaultTexture@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ed1c
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ed1c:
    extsh.  r0, r4
    ble-    branch_0x8032ed2c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ed2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__26JPADrawExecRegisterPrmAEnvFv
__dt__26JPADrawExecRegisterPrmAEnvFv: # 0x8032ed44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ed88
    lis     r3, __vvt__26JPADrawExecRegisterPrmAEnv@h
    addi    r0, r3, __vvt__26JPADrawExecRegisterPrmAEnv@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ed78
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ed78:
    extsh.  r0, r4
    ble-    branch_0x8032ed88
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ed88:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__26JPADrawExecRegisterPrmCEnvFv
__dt__26JPADrawExecRegisterPrmCEnvFv: # 0x8032eda0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ede4
    lis     r3, __vvt__26JPADrawExecRegisterPrmCEnv@h
    addi    r0, r3, __vvt__26JPADrawExecRegisterPrmCEnv@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032edd4
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032edd4:
    extsh.  r0, r4
    ble-    branch_0x8032ede4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ede4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__30JPADrawExecRegisterEnvColorAnmFv
__dt__30JPADrawExecRegisterEnvColorAnmFv: # 0x8032edfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ee40
    lis     r3, __vvt__30JPADrawExecRegisterEnvColorAnm@h
    addi    r0, r3, __vvt__30JPADrawExecRegisterEnvColorAnm@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ee30
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ee30:
    extsh.  r0, r4
    ble-    branch_0x8032ee40
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ee40:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__30JPADrawExecRegisterPrmAlphaAnmFv
__dt__30JPADrawExecRegisterPrmAlphaAnmFv: # 0x8032ee58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ee9c
    lis     r3, __vvt__30JPADrawExecRegisterPrmAlphaAnm@h
    addi    r0, r3, __vvt__30JPADrawExecRegisterPrmAlphaAnm@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ee8c
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ee8c:
    extsh.  r0, r4
    ble-    branch_0x8032ee9c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ee9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__30JPADrawExecRegisterPrmColorAnmFv
__dt__30JPADrawExecRegisterPrmColorAnmFv: # 0x8032eeb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032eef8
    lis     r3, __vvt__30JPADrawExecRegisterPrmColorAnm@h
    addi    r0, r3, __vvt__30JPADrawExecRegisterPrmColorAnm@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032eee8
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032eee8:
    extsh.  r0, r4
    ble-    branch_0x8032eef8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032eef8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__31JPADrawExecRegisterColorChildPEFv
__dt__31JPADrawExecRegisterColorChildPEFv: # 0x8032ef10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032ef54
    lis     r3, __vvt__31JPADrawExecRegisterColorChildPE@h
    addi    r0, r3, __vvt__31JPADrawExecRegisterColorChildPE@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032ef44
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032ef44:
    extsh.  r0, r4
    ble-    branch_0x8032ef54
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032ef54:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__32JPADrawExecRegisterColorEmitterEFv
__dt__32JPADrawExecRegisterColorEmitterEFv: # 0x8032ef6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032efb0
    lis     r3, __vvt__32JPADrawExecRegisterColorEmitterE@h
    addi    r0, r3, __vvt__32JPADrawExecRegisterColorEmitterE@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032efa0
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032efa0:
    extsh.  r0, r4
    ble-    branch_0x8032efb0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032efb0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__32JPADrawExecRegisterColorEmitterPFv
__dt__32JPADrawExecRegisterColorEmitterPFv: # 0x8032efc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f00c
    lis     r3, __vvt__32JPADrawExecRegisterColorEmitterP@h
    addi    r0, r3, __vvt__32JPADrawExecRegisterColorEmitterP@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032effc
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032effc:
    extsh.  r0, r4
    ble-    branch_0x8032f00c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f00c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__33JPADrawExecRegisterColorEmitterPEFv
__dt__33JPADrawExecRegisterColorEmitterPEFv: # 0x8032f024
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f068
    lis     r3, __vvt__33JPADrawExecRegisterColorEmitterPE@h
    addi    r0, r3, __vvt__33JPADrawExecRegisterColorEmitterPE@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032f058
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032f058:
    extsh.  r0, r4
    ble-    branch_0x8032f068
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f068:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23JPADrawExecSetLineWidthFv
__dt__23JPADrawExecSetLineWidthFv: # 0x8032f080
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f0c4
    lis     r3, __vvt__23JPADrawExecSetLineWidth@h
    addi    r0, r3, __vvt__23JPADrawExecSetLineWidth@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032f0b4
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032f0b4:
    extsh.  r0, r4
    ble-    branch_0x8032f0c4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f0c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23JPADrawExecSetPointSizeFv
__dt__23JPADrawExecSetPointSizeFv: # 0x8032f0dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f120
    lis     r3, __vvt__23JPADrawExecSetPointSize@h
    addi    r0, r3, __vvt__23JPADrawExecSetPointSize@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032f110
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032f110:
    extsh.  r0, r4
    ble-    branch_0x8032f120
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f120:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__20JPADrawExecSetTexMtxFv
__dt__20JPADrawExecSetTexMtxFv: # 0x8032f138
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f19c
    lis     r3, __vvt__20JPADrawExecSetTexMtx@h
    addi    r3, r3, __vvt__20JPADrawExecSetTexMtx@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x10
    addic.  r0, r31, 0x4
    stw     r3, 0x4(r31)
    beq-    branch_0x8032f178
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r0, r3, __vvt__26JPADrawExecParticleVisitor@l
    stw     r0, 0x4(r31)
branch_0x8032f178:
    cmplwi  r31, 0x0
    beq-    branch_0x8032f18c
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032f18c:
    extsh.  r0, r4
    ble-    branch_0x8032f19c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f19c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__26JPADrawExecParticleVisitorFv
__dt__26JPADrawExecParticleVisitorFv: # 0x8032f1b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f1e8
    lis     r3, __vvt__26JPADrawExecParticleVisitor@h
    addi    r3, r3, __vvt__26JPADrawExecParticleVisitor@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8032f1e8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f1e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__20JPADrawExecGenIdtMtxFv
__dt__20JPADrawExecGenIdtMtxFv: # 0x8032f200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f244
    lis     r3, __vvt__20JPADrawExecGenIdtMtx@h
    addi    r0, r3, __vvt__20JPADrawExecGenIdtMtx@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032f234
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032f234:
    extsh.  r0, r4
    ble-    branch_0x8032f244
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f244:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__21JPADrawExecGenTexMtx0Fv
__dt__21JPADrawExecGenTexMtx0Fv: # 0x8032f25c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f2a0
    lis     r3, __vvt__21JPADrawExecGenTexMtx0@h
    addi    r0, r3, __vvt__21JPADrawExecGenTexMtx0@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032f290
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032f290:
    extsh.  r0, r4
    ble-    branch_0x8032f2a0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f2a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23JPADrawExecGenPrjTexMtxFv
__dt__23JPADrawExecGenPrjTexMtxFv: # 0x8032f2b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f2fc
    lis     r3, __vvt__23JPADrawExecGenPrjTexMtx@h
    addi    r0, r3, __vvt__23JPADrawExecGenPrjTexMtx@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032f2ec
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032f2ec:
    extsh.  r0, r4
    ble-    branch_0x8032f2fc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f2fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__20JPADrawExecGenPrjMtxFv
__dt__20JPADrawExecGenPrjMtxFv: # 0x8032f314
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f358
    lis     r3, __vvt__20JPADrawExecGenPrjMtx@h
    addi    r0, r3, __vvt__20JPADrawExecGenPrjMtx@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8032f348
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r0, r3, __vvt__25JPADrawExecEmitterVisitor@l
    stw     r0, 0x0(r31)
branch_0x8032f348:
    extsh.  r0, r4
    ble-    branch_0x8032f358
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f358:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__25JPADrawExecEmitterVisitorFv
__dt__25JPADrawExecEmitterVisitorFv: # 0x8032f370
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8032f3a4
    lis     r3, __vvt__25JPADrawExecEmitterVisitor@h
    addi    r3, r3, __vvt__25JPADrawExecEmitterVisitor@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8032f3a4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8032f3a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

