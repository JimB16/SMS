
.globl __dt__17TMirrorMapDrawBufFv
__dt__17TMirrorMapDrawBufFv: # 0x80192c90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80192cf8
    lis     r3, 0x803c
    addi    r0, r3, 0x1978
    stw     r0, 0x0(r30)
    beq-    branch_0x80192ce8
    lis     r3, 0x803e
    addi    r0, r3, 0x1dd0
    stw     r0, 0x0(r30)
    beq-    branch_0x80192ce8
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80192ce8:
    extsh.  r0, r31
    ble-    branch_0x80192cf8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80192cf8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__17TMirrorMapDrawBufFUlPQ26JDrama9TGraphics
perform__17TMirrorMapDrawBufFUlPQ26JDrama9TGraphics: # 0x80192d14
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x8(sp)
    beq-    branch_0x80192d4c
    lwz     r6, -0x6318(r13)
    lwz     r0, 0x18(r6)
    cmpwi   r0, -0x1
    beq-    branch_0x80192d40
    li      r0, 0x1
    b       branch_0x80192d44

branch_0x80192d40:
    li      r0, 0x0
branch_0x80192d44:
    clrlwi. r0, r0, 24
    beq-    branch_0x80192d50
branch_0x80192d4c:
    bl      perform__Q26JDrama11TDrawBufObjFUlPQ26JDrama9TGraphics
branch_0x80192d50:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__19TMirrorModelManagerFPCc
__ct__19TMirrorModelManagerFPCc: # 0x80192d60
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, 0x803c
    sth     r4, 0xc(r31)
    addi    r3, r3, 0x199c
    li      r0, -0x1
    stw     r3, 0x0(r31)
    mr      r3, r31
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r0, 0x18(r31)
    stw     r4, 0x1c(r31)
    stw     r4, 0x24(r31)
    sth     r4, 0x28(r31)
    stw     r31, -0x6318(r13)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__19TMirrorModelManagerFR20JSUMemoryInputStream
load__19TMirrorModelManagerFR20JSUMemoryInputStream: # 0x80192de8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stfd    f31, 0x148(sp)
    stmw    r26, 0x130(sp)
    addi    r31, r3, 0x0
    addi    r26, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r26, 0x0
    addi    r4, sp, 0x128
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r26, 0x0
    addi    r4, sp, 0x124
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r26, 0x0
    addi    r4, sp, 0x120
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x120(sp)
    lwz     r3, 0x124(sp)
    slwi    r0, r0, 1
    lwz     r4, 0x128(sp)
    add     r0, r3, r0
    add     r0, r4, r0
    stw     r0, 0x14(r31)
    lwz     r0, 0x14(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80192f7c
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80192e78
    mr      r3, r26
    bl      __ct__13MActorAnmDataFv
branch_0x80192e78:
    stw     r26, 0x20(r31)
    lwz     r0, 0x14(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x1c(r31)
    lis     r3, 0x8039
    lis     r5, 0x803c
    lis     r4, 0x8039
    lfs     f31, -0x437c(rtoc)
    subi    r29, r3, 0x6dac
    addi    r27, r5, 0x19dc
    subi    r28, r4, 0x6dcc
    li      r26, 0x0
    li      r30, 0x0
    b       branch_0x80192f70

branch_0x80192eb4:
    li      r3, 0x28
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80192ef0
    stw     r27, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stfs    f31, 0x24(r3)
    stfs    f31, 0x14(r3)
    stfs    f31, 0x10(r3)
    stfs    f31, 0xc(r3)
    stfs    f31, 0x20(r3)
    stfs    f31, 0x1c(r3)
    stfs    f31, 0x18(r3)
branch_0x80192ef0:
    lwz     r4, 0x1c(r31)
    stwx    r3, r4, r30
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x7
    bne-    branch_0x80192f28
    subi    r3, r13, 0x7af8
    crxor   6, 6, 6
    lwzx    r6, r3, r30
    addi    r5, r28, 0x0
    addi    r3, sp, 0x20
    li      r4, 0x100
    bl      snprintf
    b       branch_0x80192f40

branch_0x80192f28:
    addi    r5, r29, 0x0
    crxor   6, 6, 6
    addi    r6, r26, 0x0
    addi    r3, sp, 0x20
    li      r4, 0x100
    bl      snprintf
branch_0x80192f40:
    lwz     r3, 0x1c(r31)
    addi    r4, sp, 0x20
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r31)
    addi    r26, r26, 0x1
    addi    r30, r30, 0x4
    addi    r0, r3, 0x1
    stw     r0, 0x10(r31)
branch_0x80192f70:
    lwz     r0, 0x128(sp)
    cmpw    r26, r0
    blt+    branch_0x80192eb4
branch_0x80192f7c:
    lmw     r26, 0x130(sp)
    lwz     r0, 0x154(sp)
    lfd     f31, 0x148(sp)
    addi    sp, sp, 0x150
    mtlr    r0
    blr


.globl loadAfter__19TMirrorModelManagerFv
loadAfter__19TMirrorModelManagerFv: # 0x80192f94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    lwz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80192ff4
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8039
    subi    r30, r3, 0x6d88
    lwz     r29, 0x4(r4)
    mr      r3, r30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x24(r31)
branch_0x80192ff4:
    li      r7, 0x0
    li      r3, 0x0
    b       branch_0x8019307c

branch_0x80193000:
    lwz     r5, 0x1c(r31)
    addi    r7, r7, 0x1
    lwz     r4, 0x24(r31)
    lwzx    r5, r5, r3
    addi    r3, r3, 0x4
    lwz     r6, 0x94(r4)
    lwz     r5, 0x4(r5)
    lwz     r4, 0x0(r6)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x4(r6)
    lwz     r5, 0x4(r5)
    lwz     r5, 0xac(r5)
    lwz     r5, 0x4(r5)
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r4, 0x8(r5)
    stw     r0, 0xc(r5)
    lwz     r4, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r4, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r4, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r4, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x1c(r6)
    add     r0, r6, r0
    subf    r0, r5, r0
    stw     r0, 0x1c(r5)
branch_0x8019307c:
    lwz     r0, 0x10(r31)
    cmpw    r7, r0
    blt+    branch_0x80193000
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl perform__19TMirrorModelManagerFUlPQ26JDrama9TGraphics
perform__19TMirrorModelManagerFUlPQ26JDrama9TGraphics: # 0x801930a4
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x1a8(sp)
    stfd    f31, 0x1a0(sp)
    stfd    f30, 0x198(sp)
    stfd    f29, 0x190(sp)
    stfd    f28, 0x188(sp)
    stmw    r27, 0x174(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    beq-    branch_0x801932ac
    lwz     r6, -0x60b4(r13)
    addi    r4, sp, 0x164
    lwz     r3, -0x70ec(r13)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x164(sp)
    stw     r0, 0x168(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x16c(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    mr      r4, r3
    lwz     r3, -0x70ec(r13)
    bl      getDataNo__16TCubeManagerBaseCFl
    stw     r3, 0x18(r30)
    lwz     r0, 0x18(r30)
    cmpwi   r0, -0x1
    beq-    branch_0x80193120
    li      r0, 0x1
    b       branch_0x80193124

branch_0x80193120:
    li      r0, 0x0
branch_0x80193124:
    clrlwi. r0, r0, 24
    bne-    branch_0x801932ac
    lwz     r3, -0x608c(r13)
    lwz     r5, 0x0(r3)
    lhz     r0, 0x4(r5)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80193148
    li      r0, 0x1
    b       branch_0x8019314c

branch_0x80193148:
    li      r0, 0x0
branch_0x8019314c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801932ac
    lfs     f3, 0x40(r5)
    addi    r3, sp, 0x12c
    lfs     f2, 0x3c(r5)
    lfs     f1, 0x38(r5)
    lwz     r4, 0x24(r30)
    lfs     f0, 0x34(r5)
    stfs    f0, 0x84(r4)
    stfs    f1, 0x88(r4)
    stfs    f2, 0x8c(r4)
    stfs    f3, 0x90(r4)
    lwz     r29, 0x24(r30)
    lfs     f0, 0x90(r29)
    lfs     f3, 0x8c(r29)
    fneg    f31, f0
    lfs     f2, 0x88(r29)
    lfs     f1, 0x84(r29)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80193514
    stfs    f31, 0x138(sp)
    addi    r3, sp, 0x12c
    lwz     r4, -0x7118(r13)
    addi    r28, r4, 0x124
    addi    r4, r28, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x138(sp)
    addi    r3, sp, 0x12c
    lfs     f2, -0x4378(rtoc)
    fsubs   f3, f1, f0
    lfs     f1, 0x12c(sp)
    lfs     f0, 0x0(r28)
    fmuls   f2, f2, f3
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x98(r29)
    lfs     f1, 0x130(sp)
    lfs     f0, 0x4(r28)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x9c(r29)
    lfs     f1, 0x134(sp)
    lfs     f0, 0x8(r28)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xa0(r29)
    lwz     r4, -0x7118(r13)
    addi    r28, r4, 0x148
    addi    r4, r28, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x138(sp)
    addi    r3, sp, 0x12c
    lwz     r4, -0x7118(r13)
    fsubs   f3, f1, f0
    lfs     f2, -0x4378(rtoc)
    addi    r27, r4, 0x30
    lfs     f1, 0x12c(sp)
    lfs     f0, 0x0(r28)
    fmuls   f2, f2, f3
    mr      r4, r27
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x13c(sp)
    lfs     f1, 0x130(sp)
    lfs     f0, 0x4(r28)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x140(sp)
    lfs     f1, 0x134(sp)
    lfs     f0, 0x8(r28)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x144(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x138(sp)
    addi    r3, r29, 0x30
    lfs     f2, -0x4378(rtoc)
    addi    r4, r29, 0x98
    fsubs   f3, f1, f0
    lfs     f1, 0x12c(sp)
    addi    r5, sp, 0x148
    lfs     f0, 0x0(r27)
    addi    r6, sp, 0x13c
    fmuls   f2, f2, f3
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x148(sp)
    lfs     f1, 0x130(sp)
    lfs     f0, 0x4(r27)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x14c(sp)
    lfs     f1, 0x134(sp)
    lfs     f0, 0x8(r27)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x150(sp)
    bl      C_MTXLookAt
branch_0x801932ac:
    lwz     r0, 0x18(r30)
    cmpwi   r0, -0x1
    beq-    branch_0x801932c0
    li      r0, 0x1
    b       branch_0x801932c4

branch_0x801932c0:
    li      r0, 0x0
branch_0x801932c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801934b8
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x801932f4
    lwz     r0, 0x18(r30)
    lwz     r3, 0x1c(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x801932f4:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x80193314
    lwz     r0, 0x18(r30)
    lwz     r3, 0x1c(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r3, 0x4(r3)
    bl      viewCalc__6MActorFv
branch_0x80193314:
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x801934b8
    lwz     r0, 0x18(r30)
    lwz     r3, 0x1c(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x18(r30)
    addi    r3, sp, 0xd0
    lwz     r4, 0x1c(r30)
    slwi    r0, r0, 2
    lwzx    r29, r4, r0
    lwz     r27, 0x8(r29)
    lfs     f0, 0x90(r27)
    lfs     f29, 0x8c(r27)
    fneg    f28, f0
    lfs     f30, 0x88(r27)
    lfs     f31, 0x84(r27)
    bl      __ct__Q29JGeometry8TVec3_f_Fv
    fmr     f1, f31
    addi    r3, sp, 0xd0
    fmr     f2, f30
    fmr     f3, f29
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80193514
    stfs    f28, 0xdc(sp)
    addi    r3, sp, 0xd0
    lwz     r4, -0x7118(r13)
    addi    r28, r4, 0x124
    addi    r4, r28, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f2, 0xdc(sp)
    mr      r5, r28
    lfs     f0, -0x4378(rtoc)
    addi    r3, r27, 0x98
    fsubs   f1, f1, f2
    addi    r4, sp, 0xd0
    fmuls   f1, f0, f1
    bl      scaleAdd__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r4, -0x7118(r13)
    addi    r3, sp, 0xd0
    addi    r28, r4, 0x148
    addi    r4, r28, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f2, 0xdc(sp)
    mr      r5, r28
    lfs     f0, -0x4378(rtoc)
    addi    r3, sp, 0xe0
    fsubs   f1, f1, f2
    addi    r4, sp, 0xd0
    fmuls   f1, f0, f1
    bl      scaleAdd__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r4, -0x7118(r13)
    addi    r3, sp, 0xd0
    addi    r28, r4, 0x30
    addi    r4, r28, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f2, 0xdc(sp)
    mr      r5, r28
    lfs     f0, -0x4378(rtoc)
    addi    r3, sp, 0xec
    fsubs   f1, f1, f2
    addi    r4, sp, 0xd0
    fmuls   f1, f0, f1
    bl      scaleAdd__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r27, 0x30
    addi    r4, r27, 0x98
    addi    r5, sp, 0xec
    addi    r6, sp, 0xe0
    bl      C_MTXLookAt
    lwz     r4, -0x7118(r13)
    addi    r3, sp, 0xa0
    lwz     r27, 0x8(r29)
    lfs     f3, -0x4374(rtoc)
    lfs     f1, 0x48(r4)
    lfs     f0, 0x80(r27)
    fmr     f5, f3
    fmr     f6, f3
    lfs     f2, 0x4c(r4)
    fmuls   f1, f0, f1
    lfs     f4, -0x4370(rtoc)
    bl      C_MTXLightPerspective
    addi    r4, r27, 0x30
    addi    r3, sp, 0xa0
    addi    r5, sp, 0xf8
    bl      PSMTXConcat
    lwz     r3, 0x4(r29)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r27, 0x0(r3)
    mr      r3, r27
    bl      change__11J3DMaterialFv
    lwz     r3, 0x24(r27)
    li      r4, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0xf8
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
    lwz     r3, 0x4(r29)
    bl      entry__6MActorFv
branch_0x801934b8:
    lmw     r27, 0x174(sp)
    lwz     r0, 0x1ac(sp)
    lfd     f31, 0x1a0(sp)
    lfd     f30, 0x198(sp)
    mtlr    r0
    lfd     f29, 0x190(sp)
    lfd     f28, 0x188(sp)
    addi    sp, sp, 0x1a8
    blr


.globl scaleAdd__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
scaleAdd__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x801934dc
    lfs     f2, 0x0(r4)
    lfs     f0, 0x0(r5)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f2, 0x4(r4)
    lfs     f0, 0x4(r5)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f2, 0x8(r4)
    lfs     f0, 0x8(r5)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x8(r3)
    blr


.globl calc__12TMirrorModelFv
calc__12TMirrorModelFv: # 0x80193510
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80193514
set_f___Q29JGeometry8TVec3_f_Ffff_80193514: # 0x80193514
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl isInMirror__19TMirrorModelManagerCFRQ29JGeometry8TVec3_f_
isInMirror__19TMirrorModelManagerCFRQ29JGeometry8TVec3_f_: # 0x80193524
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x70ec(r13)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    mr      r4, r3
    lwz     r3, -0x70ec(r13)
    bl      getDataNo__16TCubeManagerBaseCFl
    cmpwi   r3, -0x1
    beq-    branch_0x80193554
    li      r3, 0x1
    b       branch_0x80193558

branch_0x80193554:
    li      r3, 0x0
branch_0x80193558:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isUpperThanMirrorPlane__19TMirrorModelManagerCFRCQ29JGeometry8TVec3_f_
isUpperThanMirrorPlane__19TMirrorModelManagerCFRCQ29JGeometry8TVec3_f_: # 0x80193568
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0x18(r3)
    cmpwi   r0, -0x1
    beq-    branch_0x801935b8
    lwz     r3, 0x1c(r29)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    mr      r31, r3
    b       branch_0x801935bc

branch_0x801935b8:
    li      r31, 0x0
branch_0x801935bc:
    lwz     r0, 0x18(r29)
    cmpwi   r0, -0x1
    beq-    branch_0x801935e8
    lwz     r3, 0x1c(r29)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    b       branch_0x801935ec

branch_0x801935e8:
    lfs     f1, -0x437c(rtoc)
branch_0x801935ec:
    lfs     f2, 0x4(r31)
    lfs     f0, 0x4(r30)
    lfs     f3, 0x0(r31)
    fmuls   f0, f2, f0
    lfs     f2, 0x0(r30)
    lfs     f5, 0x8(r31)
    lfs     f4, 0x8(r30)
    fmadds  f2, f3, f2, f0
    lfs     f0, -0x4368(rtoc)
    fmadds  f2, f5, f4, f2
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80193628
    li      r3, 0x0
    b       branch_0x8019362c

branch_0x80193628:
    li      r3, 0x1
branch_0x8019362c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl getD__12TMirrorModelCFv
getD__12TMirrorModelCFv: # 0x80193648
    lfs     f1, 0x24(r3)
    blr


.globl getNormalVec__12TMirrorModelCFv
getNormalVec__12TMirrorModelCFv: # 0x80193650
    addi    r3, r3, 0x18
    blr


.globl init__15TMirrorModelObjFPCc
init__15TMirrorModelObjFPCc: # 0x80193658
    mflr    r0
    lis     r6, 0x1021
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    addi    r3, r4, 0x0
    stw     r30, 0xb0(sp)
    stw     r29, 0xac(sp)
    stw     r28, 0xa8(sp)
    lwz     r5, -0x6318(r13)
    lwz     r0, 0x20(r5)
    li      r5, 0x2
    mr      r4, r0
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x4(r31)
    addi    r3, sp, 0x74
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lfs     f1, -0x437c(rtoc)
    addi    r3, sp, 0x74
    lfs     f0, -0x436c(rtoc)
    stfs    f1, 0xa0(sp)
    stfs    f1, 0x90(sp)
    stfs    f1, 0x80(sp)
    stfs    f1, 0x8c(sp)
    stfs    f1, 0x7c(sp)
    stfs    f1, 0x98(sp)
    stfs    f1, 0x78(sp)
    stfs    f1, 0x94(sp)
    stfs    f1, 0x84(sp)
    stfs    f0, 0x9c(sp)
    stfs    f0, 0x88(sp)
    stfs    f0, 0x74(sp)
    lwz     r4, 0x4(r31)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x4(r31)
    bl      calc__6MActorFv
    lwz     r3, 0x4(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    bl      change__11J3DMaterialFv
    lwz     r28, -0x6318(r13)
    lwz     r0, 0x24(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x80193754
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8039
    subi    r30, r3, 0x6d88
    lwz     r29, 0x4(r4)
    mr      r3, r30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x24(r28)
branch_0x80193754:
    lwz     r4, -0x6318(r13)
    mr      r3, r31
    lwz     r0, 0x24(r4)
    stw     r0, 0x8(r31)
    bl      initPlaneInfo__12TMirrorModelFv
    lwz     r4, -0x6318(r13)
    lwz     r0, 0x10(r4)
    lwz     r3, 0x1c(r4)
    slwi    r0, r0, 2
    stwx    r31, r3, r0
    lwz     r3, 0x10(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x10(r4)
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    lwz     r29, 0xac(sp)
    lwz     r28, 0xa8(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl calc__15TMirrorModelObjFv
calc__15TMirrorModelObjFv: # 0x801937a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r4, 0x4(r4)
    lwz     r3, 0x58(r3)
    lwz     r4, 0x58(r4)
    bl      PSMTXCopy
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setPlane__15TMirrorModelObjFv
setPlane__15TMirrorModelObjFv: # 0x801937dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    addi    r4, sp, 0x40
    lwz     r3, 0x4(r3)
    addi    r5, r4, 0x0
    lwz     r6, 0x4(r3)
    lwz     r3, 0x4(r6)
    lwz     r6, 0x58(r6)
    lwz     r7, 0x4c(r3)
    mr      r3, r6
    lfs     f0, 0x0(r7)
    stfs    f0, 0x40(sp)
    lfs     f0, 0x4(r7)
    stfs    f0, 0x44(sp)
    lfs     f0, 0x8(r7)
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4(r6)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x14(r6)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x24(r6)
    stfs    f0, 0x20(r31)
    bl      PSMTXMultVec
    addi    r3, r31, 0x18
    addi    r4, sp, 0x40
    bl      PSVECDotProduct
    fneg    f0, f1
    stfs    f0, 0x24(r31)
    lfs     f3, 0x24(r31)
    lfs     f2, 0x20(r31)
    lfs     f1, 0x1c(r31)
    lwz     r3, 0x8(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x84(r3)
    stfs    f1, 0x88(r3)
    stfs    f2, 0x8c(r3)
    stfs    f3, 0x90(r3)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __ct__12TMirrorModelFv
__ct__12TMirrorModelFv: # 0x80193890
    lis     r4, 0x803c
    addi    r0, r4, 0x19dc
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    lfs     f0, -0x437c(rtoc)
    stfs    f0, 0x24(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x20(r3)
    stfs    f0, 0x1c(r3)
    stfs    f0, 0x18(r3)
    blr


.globl init__12TMirrorModelFPCc
init__12TMirrorModelFPCc: # 0x801938cc
    mflr    r0
    lis     r6, 0x1021
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    addi    r3, r4, 0x0
    stw     r30, 0xb0(sp)
    stw     r29, 0xac(sp)
    stw     r28, 0xa8(sp)
    lwz     r5, -0x6318(r13)
    lwz     r0, 0x20(r5)
    li      r5, 0x2
    mr      r4, r0
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x4(r31)
    addi    r3, sp, 0x74
    lfs     f1, -0x437c(rtoc)
    lfs     f0, -0x436c(rtoc)
    stfs    f1, 0xa0(sp)
    stfs    f1, 0x90(sp)
    stfs    f1, 0x80(sp)
    stfs    f1, 0x8c(sp)
    stfs    f1, 0x7c(sp)
    stfs    f1, 0x98(sp)
    stfs    f1, 0x78(sp)
    stfs    f1, 0x94(sp)
    stfs    f1, 0x84(sp)
    stfs    f0, 0x9c(sp)
    stfs    f0, 0x88(sp)
    stfs    f0, 0x74(sp)
    lwz     r4, 0x4(r31)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x4(r31)
    bl      calc__6MActorFv
    lwz     r3, 0x4(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    bl      change__11J3DMaterialFv
    lwz     r28, -0x6318(r13)
    lwz     r0, 0x24(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801939c0
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8039
    subi    r30, r3, 0x6d88
    lwz     r29, 0x4(r4)
    mr      r3, r30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x24(r28)
branch_0x801939c0:
    lwz     r4, -0x6318(r13)
    mr      r3, r31
    lwz     r0, 0x24(r4)
    stw     r0, 0x8(r31)
    bl      initPlaneInfo__12TMirrorModelFv
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    lwz     r28, 0xa8(sp)
    addi    sp, sp, 0xb8
    blr


.globl initPlaneInfo__12TMirrorModelFv
initPlaneInfo__12TMirrorModelFv: # 0x801939f4
    stwu    sp, -0xf0(sp)
    lwz     r4, 0x4(r3)
    lwz     r5, 0x4(r4)
    lwz     r4, 0x4(r5)
    lwz     r4, 0x48(r4)
    b       branch_0x80193a24

branch_0x80193a0c:
    cmpwi   r0, 0x9
    bne-    branch_0x80193a20
    lwz     r0, 0x8(r4)
    clrlwi  r0, r0, 24
    b       branch_0x80193a34

branch_0x80193a20:
    addi    r4, r4, 0x10
branch_0x80193a24:
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0xff
    bne+    branch_0x80193a0c
    li      r0, 0xff
branch_0x80193a34:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x3
    bne-    branch_0x80193aa8
    lwz     r5, 0x4(r5)
    lis     r4, 0x4330
    lfd     f1, -0x4360(rtoc)
    lwz     r5, 0x4c(r5)
    lha     r0, 0x0(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xec(sp)
    stw     r4, 0xe8(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc(r3)
    lha     r0, 0x2(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xe4(sp)
    stw     r4, 0xe0(sp)
    lfd     f0, 0xe0(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lha     r0, 0x4(r5)
    xoris   r0, r0, 0x8000
    stw     r0, 0xdc(sp)
    stw     r4, 0xd8(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r3)
    b       branch_0x80193ac8

branch_0x80193aa8:
    lwz     r4, 0x4(r5)
    lwz     r4, 0x4c(r4)
    lfs     f0, 0x0(r4)
    stfs    f0, 0xc(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x14(r3)
branch_0x80193ac8:
    lwz     r4, 0x4(r3)
    lwz     r5, 0x4(r4)
    lwz     r4, 0x4(r5)
    lwz     r4, 0x48(r4)
    b       branch_0x80193af4

branch_0x80193adc:
    cmpwi   r0, 0xa
    bne-    branch_0x80193af0
    lwz     r0, 0x8(r4)
    clrlwi  r0, r0, 24
    b       branch_0x80193b04

branch_0x80193af0:
    addi    r4, r4, 0x10
branch_0x80193af4:
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0xff
    bne+    branch_0x80193adc
    li      r0, 0xff
branch_0x80193b04:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x3
    bne-    branch_0x80193b90
    lwz     r5, 0x4(r5)
    lis     r4, 0x4330
    lfd     f1, -0x4360(rtoc)
    lwz     r5, 0x50(r5)
    lha     r0, 0x0(r5)
    srawi   r0, r0, 14
    addze   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0xdc(sp)
    stw     r4, 0xd8(sp)
    lfd     f0, 0xd8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x18(r3)
    lha     r0, 0x2(r5)
    srawi   r0, r0, 14
    addze   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0xe4(sp)
    stw     r4, 0xe0(sp)
    lfd     f0, 0xe0(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x1c(r3)
    lha     r0, 0x4(r5)
    srawi   r0, r0, 14
    addze   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0xec(sp)
    stw     r4, 0xe8(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x20(r3)
    b       branch_0x80193bd0

branch_0x80193b90:
    cmplwi  r0, 0x4
    bne-    branch_0x80193bbc
    lwz     r4, 0x4(r5)
    lwz     r4, 0x50(r4)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x18(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x20(r3)
    b       branch_0x80193bd0

branch_0x80193bbc:
    lfs     f1, -0x437c(rtoc)
    stfs    f1, 0x18(r3)
    lfs     f0, -0x436c(rtoc)
    stfs    f0, 0x1c(r3)
    stfs    f1, 0x20(r3)
branch_0x80193bd0:
    addi    sp, sp, 0xf0
    blr


.globl setPlane__12TMirrorModelFv
setPlane__12TMirrorModelFv: # 0x80193bd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    addi    r4, r30, 0xc
    lwz     r3, 0x4(r3)
    addi    r5, r4, 0x0
    lwz     r3, 0x4(r3)
    addi    r31, r3, 0x20
    addi    r3, r31, 0x0
    bl      PSMTXMultVec
    addi    r4, r30, 0x18
    addi    r3, r31, 0x0
    addi    r5, r4, 0x0
    bl      PSMTXMultVecSR
    addi    r3, r30, 0x18
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    addi    r3, r30, 0x18
    addi    r4, r30, 0xc
    bl      PSVECDotProduct
    fneg    f0, f1
    stfs    f0, 0x24(r30)
    lfs     f3, 0x24(r30)
    lfs     f2, 0x20(r30)
    lfs     f1, 0x1c(r30)
    lwz     r3, 0x8(r30)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x84(r3)
    stfs    f1, 0x88(r3)
    stfs    f2, 0x8c(r3)
    stfs    f3, 0x90(r3)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__13TMirrorCameraFPCc
__ct__13TMirrorCameraFPCc: # 0x80193c78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x8039
    subi    r31, r3, 0x6ed0
    lwz     r30, 0x8(sp)
    stw     r30, 0x1c(sp)
    stw     r30, 0x20(sp)
    lwz     r3, 0x1c(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x1c(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r29, 0x20(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r29)
    addi    r3, r29, 0x10
    lfs     f1, -0x437c(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80193514
    li      r9, 0x0
    lis     r3, 0x803e
    sth     r9, 0x1c(r29)
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x20(r30)
    addi    r0, r3, 0x45c8
    lis     r3, 0x803e
    stw     r0, 0x20(r30)
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r30)
    addi    r8, r3, 0x19f8
    addi    r0, r8, 0x24
    sth     r9, 0x24(r30)
    li      r3, 0x100
    li      r4, 0x100
    lfs     f0, -0x4358(rtoc)
    li      r5, 0x5
    li      r6, 0x0
    stfs    f0, 0x28(r30)
    li      r7, 0x0
    lfs     f0, -0x4354(rtoc)
    stfs    f0, 0x2c(r30)
    stw     r8, 0x0(r30)
    stw     r0, 0x20(r30)
    lfs     f0, -0x4350(rtoc)
    stfs    f0, 0x80(r30)
    lfs     f0, -0x437c(rtoc)
    stfs    f0, 0x84(r30)
    stfs    f0, 0x88(r30)
    stfs    f0, 0x8c(r30)
    stfs    f0, 0x90(r30)
    stw     r9, 0x94(r30)
    bl      GXGetTexBufferSize
    addi    r0, r3, 0x20
    rotlwi  r3, r0, 0
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x94(r30)
    li      r4, 0x0
    li      r5, 0x20
    lwz     r3, 0x94(r30)
    bl      memset
    lwz     r3, 0x94(r30)
    li      r0, 0x5
    li      r6, 0x1
    stb     r0, 0x0(r3)
    li      r5, 0x100
    li      r0, 0x20
    lwz     r4, 0x94(r30)
    addi    r3, r30, 0x60
    li      r8, 0x1
    stb     r6, 0x1(r4)
    li      r9, 0x1
    li      r10, 0x0
    lwz     r4, 0x94(r30)
    sth     r5, 0x2(r4)
    lwz     r4, 0x94(r30)
    sth     r5, 0x4(r4)
    lwz     r4, 0x94(r30)
    stb     r6, 0x14(r4)
    lwz     r4, 0x94(r30)
    stb     r6, 0x15(r4)
    lwz     r4, 0x94(r30)
    stb     r6, 0x18(r4)
    lwz     r4, 0x94(r30)
    stw     r0, 0x1c(r4)
    lwz     r5, 0x94(r30)
    lwz     r0, 0x1c(r5)
    lbz     r7, 0x0(r5)
    lhz     r6, 0x4(r5)
    add     r4, r5, r0
    lhz     r5, 0x2(r5)
    bl      GXInitTexObj
    lfs     f1, -0x437c(rtoc)
    addi    r3, r30, 0x60
    li      r4, 0x1
    fmr     f2, f1
    li      r5, 0x1
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    lwz     r5, 0xe0(r31)
    addi    r3, r30, 0x30
    lwz     r0, 0xe4(r31)
    addi    r4, sp, 0x60
    addi    r6, sp, 0x48
    stw     r5, 0x3c(sp)
    addi    r5, sp, 0x54
    stw     r0, 0x40(sp)
    lwz     r0, 0xe8(r31)
    stw     r0, 0x44(sp)
    lwz     r0, 0x3c(sp)
    lwz     r7, 0x40(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x44(sp)
    stw     r7, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r7, 0xec(r31)
    lwz     r0, 0xf0(r31)
    stw     r7, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0xf4(r31)
    stw     r0, 0x38(sp)
    lwz     r0, 0x30(sp)
    lwz     r7, 0x34(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x38(sp)
    stw     r7, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r7, 0xf8(r31)
    lwz     r0, 0xfc(r31)
    stw     r7, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x100(r31)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x24(sp)
    lwz     r7, 0x28(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x2c(sp)
    stw     r7, 0x4c(sp)
    stw     r0, 0x50(sp)
    bl      C_MTXLookAt
    lfs     f0, -0x437c(rtoc)
    mr      r3, r30
    stfs    f0, 0xa0(r30)
    stfs    f0, 0x9c(r30)
    stfs    f0, 0x98(r30)
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl drawSetting__13TMirrorCameraFPA4_f
drawSetting__13TMirrorCameraFPA4_f: # 0x80193f20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    addi    r31, r4, 0x0
    li      r4, 0x0
    stw     r30, 0xb0(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x60
    bl      GXLoadTexObj
    lwz     r4, -0x7118(r13)
    addi    r3, sp, 0x80
    lfs     f3, -0x4374(rtoc)
    lfs     f1, 0x48(r4)
    lfs     f0, 0x80(r30)
    fmr     f5, f3
    fmr     f6, f3
    lfs     f2, 0x4c(r4)
    fmuls   f1, f0, f1
    lfs     f4, -0x4370(rtoc)
    bl      C_MTXLightPerspective
    addi    r3, r30, 0x30
    addi    r4, r31, 0x0
    addi    r5, sp, 0x50
    bl      PSMTXConcat
    addi    r3, sp, 0x80
    addi    r4, sp, 0x50
    addi    r5, sp, 0x20
    bl      PSMTXConcat
    addi    r3, sp, 0x20
    li      r4, 0x1e
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    addi    sp, sp, 0xb8
    blr


.globl perform__13TMirrorCameraFUlPQ26JDrama9TGraphics
perform__13TMirrorCameraFUlPQ26JDrama9TGraphics: # 0x80193fbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x5c(sp)
    addi    r29, r4, 0x0
    andi.   r0, r29, 0x14
    stw     r28, 0x58(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x80194054
    lwz     r4, -0x7118(r13)
    addi    r31, r30, 0x74
    lfs     f0, 0x80(r28)
    mr      r3, r31
    lfs     f1, 0x48(r4)
    lfs     f4, 0x2c(r4)
    fmuls   f1, f0, f1
    lfs     f3, 0x28(r4)
    lfs     f2, 0x4c(r4)
    bl      C_MTXPerspective
    addi    r4, r30, 0xb4
    addi    r3, r28, 0x30
    bl      PSMTXCopy
    lwz     r3, -0x7118(r13)
    rlwinm. r0, r29, 0, 27, 27
    lfs     f0, 0x28(r3)
    stfs    f0, 0xe8(r30)
    lwz     r3, -0x7118(r13)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0xec(r30)
    beq-    branch_0x8019404c
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      GXSetProjection
branch_0x8019404c:
    li      r3, 0x1
    bl      GXSetAlphaUpdate
branch_0x80194054:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    lwz     r28, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl __dt__19TMirrorModelManagerFv
__dt__19TMirrorModelManagerFv: # 0x80194074
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801940cc
    lis     r3, 0x803c
    addi    r0, r3, 0x199c
    stw     r0, 0x0(r30)
    beq-    branch_0x801940bc
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801940bc:
    extsh.  r0, r31
    ble-    branch_0x801940cc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801940cc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TMirrorCameraFv
__dt__13TMirrorCameraFv: # 0x801940e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80194138
    lis     r3, 0x803c
    addi    r3, r3, 0x19f8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama7TCameraFv
    extsh.  r0, r31
    ble-    branch_0x80194138
    mr      r3, r30
    bl      __dl__FPv
branch_0x80194138:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapMirror_cpp
__sinit_MapMirror_cpp: # 0x80194154
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x7f78
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8019419c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8019419c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801941cc
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801941cc:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801941fc
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801941fc:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8019422c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8019422c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8019425c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8019425c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8019428c
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8019428c:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801942bc
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801942bc:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801942ec
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801942ec:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8019431c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8019431c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8019434c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8019434c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8019437c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8019437c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801943ac
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801943ac:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801943dc
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801943dc:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8019440c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8019440c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8019443c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8019443c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__13TMirrorCameraFv
_32___dt__13TMirrorCameraFv: # 0x80194450
    subi    r3, r3, 0x20
    b       __dt__13TMirrorCameraFv

