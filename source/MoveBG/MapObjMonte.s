
.globl __dt__13TFluffManagerFv
__dt__13TFluffManagerFv: # 0x801f1b84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f1bec
    lis     r3, 0x803d
    addi    r3, r3, 0x52c0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f1bdc
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f1bdc:
    extsh.  r0, r31
    ble-    branch_0x801f1bec
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f1bec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__13TFluffManagerFPCc
__ct__13TFluffManagerFPCc: # 0x801f1c08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x52c0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x2170(rtoc)
    stfs    f0, 0x138(r31)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    stw     r0, 0x144(r31)
    stfs    f0, 0x154(r31)
    stw     r0, 0x158(r31)
    stw     r0, 0x15c(r31)
    stw     r0, 0x160(r31)
    stw     r0, 0x164(r31)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x150(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__13TFluffManagerFR20JSUMemoryInputStream
load__13TFluffManagerFR20JSUMemoryInputStream: # 0x801f1c84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x90(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x140
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x74
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x74(sp)
    mr      r3, r31
    lfs     f0, -0x216c(rtoc)
    addi    r4, r30, 0x144
    li      r5, 0x4
    fmuls   f0, f1, f0
    stfs    f0, 0x74(sp)
    bl      read__14JSUInputStreamFPvl
    lfs     f0, -0x2168(rtoc)
    addi    r3, sp, 0x44
    stfs    f0, 0x138(r30)
    stfs    f0, 0x13c(r30)
    lfs     f0, -0x2164(rtoc)
    stfs    f0, 0x154(r30)
    lfs     f0, 0x38(r30)
    lfs     f3, -0x2160(rtoc)
    lfs     f1, 0x34(r30)
    fmuls   f0, f3, f0
    lfs     f4, 0x30(r30)
    fmuls   f2, f3, f1
    lfs     f1, -0x2170(rtoc)
    fmuls   f3, f3, f4
    fctiwz  f4, f2
    fctiwz  f5, f3
    fctiwz  f0, f0
    stfd    f4, 0x80(sp)
    fmr     f2, f1
    fmr     f3, f1
    stfd    f0, 0x78(sp)
    lwz     r5, 0x84(sp)
    stfd    f5, 0x88(sp)
    lwz     r6, 0x7c(sp)
    lwz     r4, 0x8c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lfs     f0, -0x2170(rtoc)
    stfs    f0, 0x148(r30)
    stfs    f0, 0x14c(r30)
    lfs     f0, -0x215c(rtoc)
    stfs    f0, 0x150(r30)
    lfs     f5, 0x14c(r30)
    lfs     f0, 0x48(sp)
    lfs     f2, 0x58(sp)
    fmuls   f0, f5, f0
    lfs     f6, 0x148(r30)
    lfs     f1, 0x44(sp)
    fmuls   f2, f5, f2
    lfs     f4, 0x68(sp)
    lfs     f3, 0x54(sp)
    fmadds  f0, f6, f1, f0
    fmuls   f4, f5, f4
    lfs     f5, 0x64(sp)
    lfs     f7, 0x150(r30)
    lfs     f1, 0x4c(sp)
    fmadds  f2, f6, f3, f2
    lfs     f3, 0x5c(sp)
    fmadds  f0, f7, f1, f0
    lfs     f1, 0x50(sp)
    fmadds  f4, f6, f5, f4
    lfs     f5, 0x6c(sp)
    fmadds  f2, f7, f3, f2
    lfs     f3, 0x60(sp)
    fadds   f0, f1, f0
    lfs     f6, 0x70(sp)
    fmadds  f1, f7, f5, f4
    fadds   f2, f3, f2
    stfs    f0, 0x148(r30)
    fadds   f0, f6, f1
    stfs    f2, 0x14c(r30)
    stfs    f0, 0x150(r30)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x148(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x148(r30)
    lfs     f0, 0x14c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x14c(r30)
    lfs     f0, 0x150(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x150(r30)
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl loadAfter__13TFluffManagerFv
loadAfter__13TFluffManagerFv: # 0x801f1e18
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x5c(sp)
    stw     r0, 0x160(r3)
    li      r0, 0x20
    stw     r0, 0x164(r3)
    lwz     r0, 0x164(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x168(r30)
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801f1e7c
    lis     r3, 0x8039
    addi    r4, r3, 0x3cd0
    addi    r3, r31, 0x0
    bl      __ct__6TFluffFPCc
branch_0x801f1e7c:
    addi    r3, r31, 0x0
    subi    r4, rtoc, 0x2158
    bl      initAndRegister__11TMapObjBaseFPCc
    stw     r30, 0x168(r31)
    li      r0, 0x1
    stw     r31, 0x158(r30)
    lwz     r3, 0x158(r30)
    stb     r0, 0x16c(r3)
    lwz     r3, 0x158(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x158(r30)
    lfs     f0, 0x10(r30)
    stfsu   f0, 0x10(r3)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x158(r30)
    lfs     f0, 0x30(r30)
    stfsu   f0, 0x30(r3)
    lfs     f0, 0x34(r30)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x38(r30)
    stfs    f0, 0x8(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2140(rtoc)
    stw     r0, 0x54(sp)
    lis     r31, 0x4330
    lfs     f3, -0x2150(rtoc)
    stw     r31, 0x50(sp)
    lfs     f1, -0x214c(rtoc)
    lfd     f2, 0x50(sp)
    lfs     f0, -0x215c(rtoc)
    fsubs   f4, f2, f4
    lfs     f2, 0x13c(r30)
    fmuls   f3, f3, f4
    fmsubs  f0, f1, f3, f0
    fmuls   f30, f2, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2140(rtoc)
    stw     r0, 0x4c(sp)
    lfs     f1, -0x2150(rtoc)
    stw     r31, 0x48(sp)
    lfs     f0, 0x14(r30)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f31, f0, f1
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2140(rtoc)
    stw     r0, 0x44(sp)
    li      r3, 0x170
    lfs     f3, -0x2150(rtoc)
    stw     r31, 0x40(sp)
    lfs     f1, -0x214c(rtoc)
    lfd     f2, 0x40(sp)
    lfs     f0, -0x215c(rtoc)
    fsubs   f4, f2, f4
    lfs     f2, 0x138(r30)
    fmuls   f3, f3, f4
    fmsubs  f0, f1, f3, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x30(sp)
    stfs    f31, 0x34(sp)
    stfs    f30, 0x38(sp)
    lwz     r5, 0x158(r30)
    lwz     r4, 0x30(sp)
    lwz     r0, 0x34(sp)
    stw     r4, 0x10c(r5)
    stw     r0, 0x110(r5)
    lwz     r0, 0x38(sp)
    stw     r0, 0x114(r5)
    lwz     r0, 0x160(r30)
    lwz     r5, 0x158(r30)
    lwz     r4, 0x168(r30)
    slwi    r0, r0, 2
    stwx    r5, r4, r0
    lwz     r4, 0x160(r30)
    addi    r0, r4, 0x1
    stw     r0, 0x160(r30)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801f1ff0
    lis     r3, 0x8039
    addi    r4, r3, 0x3ce0
    addi    r3, r31, 0x0
    bl      __ct__6TFluffFPCc
branch_0x801f1ff0:
    addi    r3, r31, 0x0
    subi    r4, rtoc, 0x2158
    bl      initAndRegister__11TMapObjBaseFPCc
    stw     r30, 0x168(r31)
    stw     r31, 0x15c(r30)
    lwz     r3, 0x15c(r30)
    lfs     f0, 0x10(r30)
    stfsu   f0, 0x10(r3)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x15c(r30)
    lfs     f0, 0x30(r30)
    stfsu   f0, 0x30(r3)
    lfs     f0, 0x34(r30)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x38(r30)
    stfs    f0, 0x8(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2140(rtoc)
    stw     r0, 0x44(sp)
    lis     r31, 0x4330
    lfs     f3, -0x2150(rtoc)
    stw     r31, 0x40(sp)
    lfs     f1, -0x214c(rtoc)
    lfd     f2, 0x40(sp)
    lfs     f0, -0x215c(rtoc)
    fsubs   f4, f2, f4
    lfs     f2, 0x13c(r30)
    fmuls   f3, f3, f4
    fmsubs  f0, f1, f3, f0
    fmuls   f30, f2, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2140(rtoc)
    stw     r0, 0x4c(sp)
    lfs     f1, -0x2150(rtoc)
    stw     r31, 0x48(sp)
    lfs     f0, 0x14(r30)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f31, f0, f1
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2140(rtoc)
    stw     r0, 0x54(sp)
    lfs     f3, -0x2150(rtoc)
    stw     r31, 0x50(sp)
    lfs     f1, -0x214c(rtoc)
    lfd     f2, 0x50(sp)
    lfs     f0, -0x215c(rtoc)
    fsubs   f4, f2, f4
    lfs     f2, 0x138(r30)
    fmuls   f3, f3, f4
    fmsubs  f0, f1, f3, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x30(sp)
    stfs    f31, 0x34(sp)
    stfs    f30, 0x38(sp)
    lwz     r4, 0x15c(r30)
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    stw     r3, 0x10c(r4)
    stw     r0, 0x110(r4)
    lwz     r0, 0x38(sp)
    stw     r0, 0x114(r4)
    lwz     r3, 0x15c(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x160(r30)
    li      r31, 0x2
    lwz     r4, 0x15c(r30)
    lwz     r3, 0x168(r30)
    slwi    r0, r0, 2
    stwx    r4, r3, r0
    lwz     r3, 0x160(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x160(r30)
    b       branch_0x801f21ac

branch_0x801f2140:
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801f215c
    addi    r3, r29, 0x0
    subi    r4, rtoc, 0x2148
    bl      __ct__6TFluffFPCc
branch_0x801f215c:
    addi    r3, r29, 0x0
    subi    r4, rtoc, 0x2158
    bl      initAndRegister__11TMapObjBaseFPCc
    stw     r30, 0x168(r29)
    lwz     r0, 0x160(r30)
    lwz     r3, 0x168(r30)
    slwi    r0, r0, 2
    stwx    r29, r3, r0
    lwz     r0, 0x160(r30)
    lwz     r3, 0x168(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x160(r30)
    addi    r31, r31, 0x1
    addi    r0, r3, 0x1
    stw     r0, 0x160(r30)
branch_0x801f21ac:
    lwz     r0, 0x164(r30)
    cmpw    r31, r0
    blt+    branch_0x801f2140
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    mtlr    r0
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x78
    blr


.globl control__13TFluffManagerFv
control__13TFluffManagerFv: # 0x801f21dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stfd    f30, 0x90(sp)
    stfd    f29, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    lhz     r0, 0xfc(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x801f2374
    bge-    branch_0x801f2220
    cmpwi   r0, 0x1
    bge-    branch_0x801f222c
    b       branch_0x801f2520

branch_0x801f2220:
    cmpwi   r0, 0x4
    bge-    branch_0x801f2520
    b       branch_0x801f23d4

branch_0x801f222c:
    lwz     r0, 0x15c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801f2310
    lwz     r3, 0x158(r31)
    lfs     f2, -0x2138(rtoc)
    lfs     f3, 0x14(r3)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x140(r31)
    fsubs   f2, f3, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x801f2310
    lfs     f31, -0x2134(rtoc)
    li      r29, 0x3
    li      r30, 0xc
    b       branch_0x801f2304

branch_0x801f226c:
    lwz     r3, 0x168(r31)
    lwzx    r3, r3, r30
    lbz     r0, 0x16c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f22fc
    lwz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f22fc
    lwz     r4, MarioHitActorPos(r13)
    lfsu    f3, 0x10(r3)
    lfs     f2, 0x0(r4)
    lfs     f1, 0x4(r3)
    fsubs   f4, f3, f2
    lfs     f0, 0x4(r4)
    lfs     f2, 0x8(r3)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r4)
    fsubs   f2, f2, f0
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    ble-    branch_0x801f22fc
    lwz     r3, 0x168(r31)
    lwzx    r0, r3, r30
    stw     r0, 0x15c(r31)
    lwz     r3, 0x168(r31)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x801f2310

branch_0x801f22fc:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x801f2304:
    lwz     r0, 0x164(r31)
    cmpw    r29, r0
    blt+    branch_0x801f226c
branch_0x801f2310:
    lfs     f1, 0x14(r31)
    lfs     f0, 0x140(r31)
    lwz     r4, 0x158(r31)
    fsubs   f0, f1, f0
    lfs     f1, 0x14(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f2520
    lwz     r3, gpMSound(r13)
    addi    r29, r4, 0x10
    li      r4, 0x3884
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801f2360
    addi    r4, r29, 0x0
    li      r3, 0x3884
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801f2360:
    lwz     r3, 0x144(r31)
    li      r0, 0x2
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801f2520

branch_0x801f2374:
    lwz     r3, -0x62b8(r13)
    lfs     f0, 0x148(r31)
    lfs     f2, 0xd0(r3)
    lfs     f1, 0x14c(r31)
    lfs     f3, 0xd4(r3)
    fadds   f2, f2, f0
    lfs     f4, 0xd8(r3)
    lfs     f0, 0x150(r31)
    fadds   f3, f3, f1
    stfs    f2, 0xd0(r3)
    fadds   f4, f4, f0
    stfs    f3, 0xd4(r3)
    stfs    f4, 0xd8(r3)
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801f23bc
    li      r0, 0x1
    b       branch_0x801f23c0

branch_0x801f23bc:
    li      r0, 0x0
branch_0x801f23c0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801f2520
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    b       branch_0x801f2520

branch_0x801f23d4:
    lwz     r3, -0x62b8(r13)
    lfsu    f31, 0xd0(r3)
    lfs     f1, 0x154(r31)
    lfs     f30, 0x4(r3)
    lfs     f29, 0x8(r3)
    fmuls   f31, f31, f1
    fmuls   f30, f30, f1
    lfs     f0, -0x77ec(r13)
    fmuls   f29, f29, f1
    fabs    f1, f31
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f2510
    fabs    f1, f30
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f2510
    fabs    f1, f29
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f2510
    lfs     f31, -0x2170(rtoc)
    lwz     r0, 0x15c(r31)
    fmr     f30, f31
    stw     r0, 0x158(r31)
    fmr     f29, f31
    lwz     r3, 0x158(r31)
    lfs     f0, 0x30(r31)
    stfsu   f0, 0x30(r3)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x38(r31)
    stfs    f0, 0x8(r3)
    lwz     r4, 0x158(r31)
    lwz     r3, 0x30(r31)
    lwz     r0, 0x34(r31)
    stw     r3, 0x118(r4)
    stw     r0, 0x11c(r4)
    lwz     r0, 0x38(r31)
    stw     r0, 0x120(r4)
    lwz     r3, 0x158(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x158(r31)
    li      r4, 0x1
    lfs     f0, 0x10(r31)
    li      r0, 0x0
    stfsu   f0, 0x10(r3)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x8(r3)
    lwz     r6, 0x158(r31)
    lwz     r5, 0x10(r31)
    lwz     r3, 0x14(r31)
    stw     r5, 0x10c(r6)
    stw     r3, 0x110(r6)
    lwz     r3, 0x18(r31)
    stw     r3, 0x114(r6)
    lwz     r3, 0x158(r31)
    lfs     f0, -0x2170(rtoc)
    stfsu   f0, 0x30(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r6, 0x158(r31)
    lwz     r5, 0x30(r6)
    lwz     r3, 0x34(r6)
    stw     r5, 0x118(r6)
    stw     r3, 0x11c(r6)
    lwz     r3, 0x38(r6)
    stw     r3, 0x120(r6)
    lwz     r3, 0x158(r31)
    stfs    f0, 0x148(r3)
    lfs     f0, -0x215c(rtoc)
    lwz     r3, 0x158(r31)
    stfs    f0, 0x150(r3)
    lwz     r3, 0x158(r31)
    stb     r4, 0x16c(r3)
    stw     r0, 0x15c(r31)
    sth     r4, 0xfc(r31)
branch_0x801f2510:
    lwz     r3, -0x62b8(r13)
    stfs    f31, 0xd0(r3)
    stfs    f30, 0xd4(r3)
    stfs    f29, 0xd8(r3)
branch_0x801f2520:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lfd     f30, 0x90(sp)
    mtlr    r0
    lfd     f29, 0x88(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0xa0
    blr


.globl __ct__6TFluffFPCc
__ct__6TFluffFPCc: # 0x801f2548
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x5424
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f1, -0x2170(rtoc)
    stfs    f1, 0x138(r31)
    stfs    f1, 0x13c(r31)
    stfs    f1, 0x140(r31)
    stfs    f1, 0x144(r31)
    stfs    f1, 0x148(r31)
    stfs    f1, 0x14c(r31)
    stfs    f1, 0x150(r31)
    lfs     f0, -0x215c(rtoc)
    stfs    f0, 0x160(r31)
    lfs     f0, -0x2128(rtoc)
    stfs    f0, 0x164(r31)
    stw     r0, 0x168(r31)
    stb     r0, 0x16c(r31)
    stfs    f1, 0x15c(r31)
    stfs    f1, 0x158(r31)
    stfs    f1, 0x154(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__6TFluffFv
initMapObj__6TFluffFv: # 0x801f25d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x2124(rtoc)
    stfs    f0, 0x138(r31)
    lfs     f0, -0x2130(rtoc)
    stfs    f0, 0x13c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl appear__6TFluffFv
appear__6TFluffFv: # 0x801f2610
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r30, 0x168(r29)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2140(rtoc)
    stw     r0, 0x4c(sp)
    lis     r31, 0x4330
    lfs     f3, -0x2150(rtoc)
    stw     r31, 0x48(sp)
    lfs     f1, -0x214c(rtoc)
    lfd     f2, 0x48(sp)
    lfs     f0, -0x215c(rtoc)
    fsubs   f4, f2, f4
    lfs     f2, 0x13c(r30)
    fmuls   f3, f3, f4
    fmsubs  f0, f1, f3, f0
    fmuls   f30, f2, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r30, 0x168(r29)
    stw     r0, 0x44(sp)
    lfd     f3, -0x2140(rtoc)
    stw     r31, 0x40(sp)
    lfs     f1, -0x2150(rtoc)
    lfd     f2, 0x40(sp)
    lfs     f0, 0x14(r30)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f31, f0, f1
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2140(rtoc)
    stw     r0, 0x3c(sp)
    lfs     f3, -0x2150(rtoc)
    stw     r31, 0x38(sp)
    lfs     f1, -0x214c(rtoc)
    lfd     f2, 0x38(sp)
    lfs     f0, -0x215c(rtoc)
    fsubs   f4, f2, f4
    lfs     f2, 0x138(r30)
    fmuls   f3, f3, f4
    fmsubs  f0, f1, f3, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r29)
    stfs    f31, 0x14(r29)
    stfs    f30, 0x18(r29)
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x10c(r29)
    stw     r0, 0x110(r29)
    lwz     r0, 0x18(r29)
    stw     r0, 0x114(r29)
    lfs     f0, -0x2120(rtoc)
    stfs    f0, 0x24(r29)
    stfs    f0, 0x28(r29)
    stfs    f0, 0x2c(r29)
    lfs     f0, -0x2170(rtoc)
    stfs    f0, 0x15c(r29)
    stfs    f0, 0x158(r29)
    stfs    f0, 0x154(r29)
    stfs    f0, 0x148(r29)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2140(rtoc)
    stw     r0, 0x34(sp)
    lfs     f2, -0x2150(rtoc)
    stw     r31, 0x30(sp)
    lfs     f1, -0x2118(rtoc)
    lfd     f3, 0x30(sp)
    lfs     f0, -0x211c(rtoc)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x150(r29)
    lfs     f2, -0x2114(rtoc)
    lfs     f1, 0x34(r29)
    lfs     f0, -0x2110(rtoc)
    fmuls   f1, f2, f1
    fdivs   f1, f1, f0
    bl      sinf
    stfs    f1, 0x140(r29)
    lfs     f2, -0x2114(rtoc)
    lfs     f1, 0x34(r29)
    lfs     f0, -0x2110(rtoc)
    fmuls   f1, f2, f1
    fdivs   f1, f1, f0
    bl      cosf
    stfs    f1, 0x144(r29)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2140(rtoc)
    stw     r0, 0x2c(sp)
    li      r0, 0x2
    lfs     f1, -0x2150(rtoc)
    stw     r31, 0x28(sp)
    lfs     f0, -0x210c(rtoc)
    lfd     f2, 0x28(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x148(r29)
    lfs     f0, -0x2108(rtoc)
    stfs    f0, 0x14c(r29)
    sth     r0, 0xfc(r29)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl control__6TFluffFv
control__6TFluffFv: # 0x801f2804
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    mr      r3, r31
    bl      move__6TFluffFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x801f29b8
    bge-    branch_0x801f2844
    cmpwi   r0, 0x1
    beq-    branch_0x801f28c0
    bge-    branch_0x801f2850
    b       branch_0x801f2b20

branch_0x801f2844:
    cmpwi   r0, 0x5
    bge-    branch_0x801f2b20
    b       branch_0x801f2a64

branch_0x801f2850:
    lfs     f1, 0x24(r31)
    lfs     f0, -0x77f4(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x24(r31)
    lfs     f1, 0x28(r31)
    lfs     f0, -0x77f4(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f1, 0x2c(r31)
    lfs     f0, -0x77f4(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(r31)
    lfs     f1, 0x24(r31)
    lfs     f0, -0x215c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801f2b20
    stfs    f0, 0x24(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    b       branch_0x801f2b20

branch_0x801f28c0:
    lwz     r3, gpMap(r13)
    addi    r4, r31, 0x10
    addi    r5, r31, 0xc4
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x2170(rtoc)
    stw     r3, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x2c(sp)
    lfs     f1, 0x28(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f2934
    lfs     f2, 0x14(r31)
    lfs     f0, 0x13c(r31)
    lfs     f1, 0xc8(r31)
    fsubs   f0, f2, f0
    fcmpo   cr0, f1, f0
    bgt-    branch_0x801f2920
    lfs     f0, -0x2104(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x801f2934
branch_0x801f2920:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801f2934:
    lwz     r3, gpMap(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    lfs     f4, -0x2138(rtoc)
    bl      isTouchedOneWall__4TMapCFffff
    clrlwi. r0, r3, 24
    beq-    branch_0x801f2968
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801f2968:
    lfs     f1, 0x10(r31)
    lfs     f0, -0x2100(rtoc)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801f29a0
    lfs     f0, -0x20fc(rtoc)
    fcmpo   cr0, f0, f1
    blt-    branch_0x801f29a0
    lfs     f1, 0x18(r31)
    lfs     f0, -0x20f8(rtoc)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801f29a0
    lfs     f0, -0x20f4(rtoc)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801f2b20
branch_0x801f29a0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x801f2b20

branch_0x801f29b8:
    lfs     f1, 0x24(r31)
    lfs     f0, -0x77f0(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x24(r31)
    lfs     f1, 0x28(r31)
    lfs     f0, -0x77f0(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f1, 0x2c(r31)
    lfs     f0, -0x77f0(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(r31)
    lfs     f1, 0x24(r31)
    lfs     f0, -0x20f0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f2b20
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe5
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    li      r4, 0x387d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801f2a40
    addi    r4, r31, 0x10
    li      r3, 0x387d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801f2a40:
    lfs     f0, -0x2120(rtoc)
    li      r3, 0xf0
    li      r0, 0x4
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801f2b20

branch_0x801f2a64:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801f2a78
    li      r0, 0x1
    b       branch_0x801f2a7c

branch_0x801f2a78:
    li      r0, 0x0
branch_0x801f2a7c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801f2b20
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2140(rtoc)
    stw     r0, 0x34(sp)
    lis     r3, 0x4330
    lfs     f2, -0x2150(rtoc)
    li      r0, 0x0
    stw     r3, 0x30(sp)
    lfs     f1, -0x2170(rtoc)
    lfd     f0, 0x30(sp)
    stfs    f1, 0x30(r31)
    fsubs   f3, f0, f3
    lfs     f0, -0x210c(rtoc)
    fmuls   f2, f2, f3
    fmuls   f0, f0, f2
    stfs    f0, 0x34(r31)
    stfs    f1, 0x38(r31)
    lwz     r4, 0x30(r31)
    lwz     r3, 0x34(r31)
    stw     r4, 0x118(r31)
    stw     r3, 0x11c(r31)
    lwz     r3, 0x38(r31)
    stw     r3, 0x120(r31)
    stb     r0, 0x16c(r31)
    lwz     r3, 0x168(r31)
    lwz     r0, 0x15c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f2b20
    stw     r31, 0x15c(r3)
    lwz     r3, 0x15c(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801f2b20:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl kill__6TFluffFv
kill__6TFluffFv: # 0x801f2b34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r3, 0x6c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801f2b7c
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x6c(r31)
    li      r0, 0x0
    stw     r0, 0x68(r3)
    stw     r0, 0x6c(r31)
branch_0x801f2b7c:
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl move__6TFluffFv
move__6TFluffFv: # 0x801f2b98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    lfs     f1, 0x14(r3)
    lfs     f0, 0x13c(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, -0x2170(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f2c08
    lfs     f0, -0x2168(rtoc)
    stfs    f0, 0x14(r31)
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801f2c08
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x6c(r31)
    li      r0, 0x0
    stw     r0, 0x68(r3)
    stw     r0, 0x6c(r31)
branch_0x801f2c08:
    lwz     r3, -0x62b8(r13)
    lfs     f2, 0x150(r31)
    lfs     f1, 0xd0(r3)
    lfs     f0, 0x154(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x154(r31)
    lwz     r3, -0x62b8(r13)
    lfs     f2, 0x150(r31)
    lfs     f1, 0xd8(r3)
    lfs     f0, 0x15c(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x15c(r31)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x6c(sp)
    lfs     f1, 0x154(r31)
    lfs     f0, 0x64(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x154(r31)
    lfs     f1, 0x158(r31)
    lfs     f0, 0x68(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x158(r31)
    lfs     f1, 0x15c(r31)
    lfs     f0, 0x6c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x15c(r31)
    lfs     f1, 0x164(r31)
    lfs     f0, 0xac(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(r31)
    lfs     f0, 0xb0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(r31)
    lfs     f0, 0xb4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(r31)
    lfs     f2, -0x2114(rtoc)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x2110(rtoc)
    fmuls   f1, f2, f1
    fdivs   f1, f1, f0
    bl      sinf
    lfs     f0, 0x138(r31)
    lfs     f3, 0x144(r31)
    fmuls   f4, f0, f1
    lfs     f2, 0x140(r31)
    lfs     f0, 0x10c(r31)
    fadds   f1, f3, f2
    lfs     f2, 0x154(r31)
    fmadds  f0, f4, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x10(r31)
    lwz     r3, -0x62b8(r13)
    lfs     f2, 0x150(r31)
    lfs     f1, 0xd4(r3)
    lfs     f0, 0x14(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f2, 0x140(r31)
    lfs     f1, 0x144(r31)
    lfs     f0, 0x114(r31)
    fsubs   f1, f2, f1
    lfs     f2, 0x15c(r31)
    fmadds  f0, f4, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x18(r31)
    lwz     r3, -0x62b8(r13)
    lfsu    f2, 0xd0(r3)
    lfs     f0, -0x20ec(rtoc)
    lfs     f1, 0x4(r3)
    fmuls   f2, f2, f2
    lfs     f3, 0x8(r3)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801f2d7c
    lfs     f1, 0x148(r31)
    lfs     f0, 0x14c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x210c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801f2d7c
    fsubs   f0, f1, f0
    stfs    f0, 0x148(r31)
branch_0x801f2d7c:
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801f2dc0
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801f2da0
    li      r0, 0x1
    b       branch_0x801f2da4

branch_0x801f2da0:
    li      r0, 0x0
branch_0x801f2da4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f2dc0
    lwz     r3, MarioHitActorPos(r13)
    lfs     f0, 0x13c(r31)
    lfs     f1, 0x4(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r3)
branch_0x801f2dc0:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl touchWater__6TFluffFP9THitActor
touchWater__6TFluffFP9THitActor: # 0x801f2dd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x0
    bl      getWaterPos__11TMapObjBaseFP9THitActor
    mr      r5, r3
    lfs     f1, 0x0(r3)
    mr      r3, r31
    lfs     f2, 0x4(r5)
    addi    r4, sp, 0x10
    lfs     f3, 0x8(r5)
    bl      getNormalVecFromTarget__11TMapObjBaseCFfffPQ29JGeometry8TVec3_f_
    lfs     f2, 0x10(sp)
    li      r3, 0x1
    lfs     f1, 0x160(r31)
    lfs     f0, 0xac(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xac(r31)
    lfs     f2, 0x14(sp)
    lfs     f1, 0x160(r31)
    lfs     f0, 0xb0(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f2, 0x18(sp)
    lfs     f1, 0x160(r31)
    lfs     f0, 0xb4(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xb4(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl initMapObj__9TGoalFlagFv
initMapObj__9TGoalFlagFv: # 0x801f2e60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      initMapObj__11TMapObjBaseFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchActor__9TGoalFlagFP9THitActor
touchActor__9TGoalFlagFP9THitActor: # 0x801f2e80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r4
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801f2eb8
    li      r0, 0x1
    b       branch_0x801f2ebc

branch_0x801f2eb8:
    li      r0, 0x0
branch_0x801f2ebc:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f2f0c
    lis     r31, 0x5
    lwz     r3, -0x6060(r13)
    addi    r4, r31, 0x5
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x801f2eec
    lwz     r3, -0x6060(r13)
    addi    r5, r31, 0x5
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
branch_0x801f2eec:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r29, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x801f2f48

branch_0x801f2f0c:
    addis   r0, r4, 0xf800
    cmplwi  r0, 0x2
    bne-    branch_0x801f2f20
    li      r0, 0x1
    b       branch_0x801f2f24

branch_0x801f2f20:
    li      r0, 0x0
branch_0x801f2f24:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f2f48
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r29, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x801f2f48:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__11TSwingBoardFPCc
__ct__11TSwingBoardFPCc: # 0x801f2f64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x56ec
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x2168(rtoc)
    stfs    f0, 0x138(r31)
    lfs     f1, -0x2170(rtoc)
    stfs    f1, 0x13c(r31)
    stfs    f1, 0x140(r31)
    stfs    f1, 0x144(r31)
    stfs    f1, 0x148(r31)
    stw     r0, 0x188(r31)
    stfs    f1, 0x178(r31)
    stfs    f1, 0x168(r31)
    stfs    f1, 0x158(r31)
    stfs    f1, 0x164(r31)
    stfs    f1, 0x154(r31)
    stfs    f1, 0x170(r31)
    stfs    f1, 0x150(r31)
    stfs    f1, 0x16c(r31)
    stfs    f1, 0x15c(r31)
    lfs     f0, -0x215c(rtoc)
    stfs    f0, 0x174(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x14c(r31)
    stfs    f1, 0x184(r31)
    stfs    f1, 0x180(r31)
    stfs    f1, 0x17c(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl load__11TSwingBoardFR20JSUMemoryInputStream
load__11TSwingBoardFR20JSUMemoryInputStream: # 0x801f300c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x138
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f1, -0x20e8(rtoc)
    lfs     f0, 0x138(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801f3054
    lfs     f0, -0x2168(rtoc)
    stfs    f0, 0x138(r30)
branch_0x801f3054:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x140
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x140(r30)
    lfs     f0, -0x20e4(rtoc)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x801f3080
    lfs     f0, -0x2170(rtoc)
    fcmpu   cr0, f0, f1
    bne-    branch_0x801f3088
branch_0x801f3080:
    lfs     f0, -0x20e0(rtoc)
    stfs    f0, 0x140(r30)
branch_0x801f3088:
    lfs     f2, 0x14(r30)
    lfs     f1, 0x138(r30)
    lfs     f3, 0x18(r30)
    lfs     f0, 0x10(r30)
    fadds   f1, f2, f1
    stfs    f0, 0x17c(r30)
    stfs    f1, 0x180(r30)
    stfs    f3, 0x184(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2140(rtoc)
    stw     r0, 0x34(sp)
    lis     r31, 0x4330
    lfs     f3, -0x2150(rtoc)
    stw     r31, 0x30(sp)
    lfs     f1, -0x215c(rtoc)
    lfd     f2, 0x30(sp)
    lfs     f0, -0x2130(rtoc)
    fsubs   f4, f2, f4
    lfs     f2, -0x20dc(rtoc)
    fmuls   f3, f3, f4
    fadds   f1, f1, f3
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x148(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2140(rtoc)
    stw     r0, 0x2c(sp)
    lfs     f2, -0x2150(rtoc)
    stw     r31, 0x28(sp)
    lfs     f0, -0x2130(rtoc)
    lfd     f3, 0x28(sp)
    lfs     f1, -0x20d8(rtoc)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fsubs   f0, f2, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x13c(r30)
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x2170(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801f316c
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2140(rtoc)
    stw     r0, 0x2c(sp)
    lfs     f0, -0x2150(rtoc)
    stw     r31, 0x28(sp)
    lfs     f1, 0x148(r30)
    lfd     f2, 0x28(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r30)
    b       branch_0x801f319c

branch_0x801f316c:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2140(rtoc)
    stw     r0, 0x2c(sp)
    lfs     f1, -0x2150(rtoc)
    stw     r31, 0x28(sp)
    lfs     f0, 0x148(r30)
    lfd     f2, 0x28(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x144(r30)
branch_0x801f319c:
    lfs     f1, -0x2160(rtoc)
    lfs     f0, 0x34(r30)
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r5, -0x5ea8(r13)
    lwz     r3, -0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r4, 0x2c(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    lfsx    f3, r3, r0
    fneg    f0, f1
    stfs    f3, 0x14c(r30)
    lfs     f2, -0x2170(rtoc)
    stfs    f2, 0x150(r30)
    stfs    f1, 0x154(r30)
    stfs    f2, 0x158(r30)
    stfs    f2, 0x15c(r30)
    lfs     f1, -0x215c(rtoc)
    stfs    f1, 0x160(r30)
    stfs    f2, 0x164(r30)
    stfs    f2, 0x168(r30)
    stfs    f0, 0x16c(r30)
    stfs    f2, 0x170(r30)
    stfs    f3, 0x174(r30)
    stfs    f2, 0x178(r30)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl control__11TSwingBoardFv
control__11TSwingBoardFv: # 0x801f3228
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stfd    f30, 0x108(sp)
    stw     r31, 0x104(sp)
    stw     r30, 0x100(sp)
    mr      r30, r3
    bl      control__11TMapObjBaseFv
    mr      r3, r30
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801f32d0
    mr      r3, r30
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801f32d0
    bl      SMS_GetMarioWaterGun__Fv
    lbz     r0, 0x1c86(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x801f32d0
    bl      SMS_GetMarioWaterGun__Fv
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    lfs     f1, 0x0(r3)
    lfs     f0, 0x20(r3)
    mr      r3, r30
    fneg    f31, f1
    fneg    f30, f0
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, -0x2170(rtoc)
    lfs     f1, 0x18(r3)
    lfs     f2, 0x8(r3)
    fmuls   f1, f1, f0
    lfs     f3, 0x28(r3)
    lfs     f4, 0x140(r30)
    lfs     f0, 0x144(r30)
    fmadds  f1, f2, f31, f1
    fmadds  f1, f3, f30, f1
    fmadds  f0, f4, f1, f0
    stfs    f0, 0x144(r30)
branch_0x801f32d0:
    lfs     f1, 0x13c(r30)
    lfs     f0, 0x144(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x13c(r30)
    lfs     f3, 0x144(r30)
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x77fc(r13)
    fnmsubs  f0, f1, f0, f3
    stfs    f0, 0x144(r30)
    lfs     f1, 0x144(r30)
    lfs     f0, 0x148(r30)
    fabs    f2, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x801f3314
    lfs     f0, -0x77f8(r13)
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r30)
branch_0x801f3314:
    lfs     f1, 0x144(r30)
    lfs     f0, -0x2170(rtoc)
    fmuls   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801f33dc
    lwz     r3, 0x188(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801f3340
    li      r4, 0x1
    bl      stop__8JAISoundFUl
branch_0x801f3340:
    lfs     f1, 0x144(r30)
    lfs     f0, -0x2170(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801f3398
    lfs     f0, 0x13c(r30)
    li      r4, 0x3867
    lwz     r3, gpMSound(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801f33dc
    fmr     f1, f31
    addi    r4, r30, 0x10
    addi    r8, r30, 0x188
    li      r3, 0x3867
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801f33dc

branch_0x801f3398:
    lfs     f0, 0x13c(r30)
    li      r4, 0x3868
    lwz     r3, gpMSound(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801f33dc
    fmr     f1, f31
    addi    r4, r30, 0x10
    addi    r8, r30, 0x188
    li      r3, 0x3868
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801f33dc:
    lfs     f0, 0x13c(r30)
    fneg    f0, f0
    stfs    f0, 0x30(r30)
    lfs     f1, 0x30(r30)
    lfs     f0, -0x2110(rtoc)
    lfs     f2, -0x2114(rtoc)
    fdivs   f0, f1, f0
    fmuls   f1, f2, f0
    bl      sinf
    lfs     f2, 0x30(r30)
    fmr     f31, f1
    lfs     f0, -0x2110(rtoc)
    lfs     f1, -0x2114(rtoc)
    fdivs   f0, f2, f0
    fmuls   f1, f1, f0
    bl      cosf
    lfs     f3, -0x215c(rtoc)
    fneg    f0, f31
    lfs     f2, -0x2170(rtoc)
    mr      r3, r30
    stfs    f3, 0xd0(sp)
    stfs    f2, 0xd4(sp)
    stfs    f2, 0xd8(sp)
    stfs    f2, 0xdc(sp)
    stfs    f2, 0xe0(sp)
    stfs    f1, 0xe4(sp)
    stfs    f0, 0xe8(sp)
    stfs    f2, 0xec(sp)
    stfs    f2, 0xf0(sp)
    stfs    f31, 0xf4(sp)
    stfs    f1, 0xf8(sp)
    stfs    f2, 0xfc(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    addi    r3, r30, 0x14c
    addi    r4, sp, 0xd0
    addi    r5, r31, 0x0
    bl      PSMTXConcat
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x2110(rtoc)
    lfs     f2, -0x2114(rtoc)
    fdivs   f0, f1, f0
    fmuls   f1, f2, f0
    bl      cosf
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x2110(rtoc)
    lfs     f2, -0x2114(rtoc)
    fdivs   f0, f1, f0
    fmuls   f1, f2, f0
    bl      sinf
    lfs     f2, 0x4(r31)
    lfs     f1, 0x138(r30)
    lfs     f0, 0x10c(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f2, 0x138(r30)
    lfs     f0, 0x110(r30)
    lfs     f1, 0x14(r31)
    fadds   f0, f2, f0
    fnmsubs  f0, f1, f2, f0
    stfs    f0, 0x14(r30)
    lfs     f2, 0x24(r31)
    lfs     f1, 0x138(r30)
    lfs     f0, 0x114(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r30)
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lfd     f30, 0x108(sp)
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl draw__11TSwingBoardCFv
draw__11TSwingBoardCFv: # 0x801f351c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    bl      initDraw__11TSwingBoardCFv
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    addi    r30, r29, 0x114
    lfs     f3, -0x780c(r13)
    mr      r3, r29
    lfs     f1, 0x0(r31)
    lfs     f0, 0x10c(r29)
    addi    r4, sp, 0x3c
    addi    r5, sp, 0x30
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x138(r29)
    lfs     f0, 0x110(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x20(r31)
    lfs     f0, 0x114(r29)
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f2, 0x0(r31)
    lfs     f0, 0x10(r29)
    lfs     f1, -0x20d4(rtoc)
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x14(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x20(r31)
    lfs     f0, 0x18(r29)
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x44(sp)
    bl      drawOneRope__11TSwingBoardCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lfs     f2, -0x780c(r13)
    mr      r3, r29
    lfs     f1, 0x0(r31)
    addi    r4, sp, 0x3c
    lfs     f0, 0x10c(r29)
    addi    r5, sp, 0x30
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x20(r31)
    lfs     f0, 0x0(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x10(r29)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x20(r31)
    lfs     f0, 0x18(r29)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x44(sp)
    bl      drawOneRope__11TSwingBoardCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl initDraw__11TSwingBoardCFv
initDraw__11TSwingBoardCFv: # 0x801f3630
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x9
    li      r5, 0x1
    stwu    sp, -0x80(sp)
    li      r6, 0x4
    li      r7, 0x0
    stw     r31, 0x7c(sp)
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x1
    bl      GXSetNumChans
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
    lwz     r0, -0x2174(rtoc)
    addi    r4, sp, 0x20
    li      r3, 0x4
    stw     r0, 0x1c(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lwz     r4, -0x62b8(r13)
    li      r31, 0x0
    addi    r3, sp, 0x24
    lwz     r4, 0xcc(r4)
    stw     r31, 0x4c(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r31, 0x74(sp)
    addi    r3, sp, 0x24
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x2
    bl      GXSetCullMode
    addi    r3, sp, 0x24
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl drawOneRope__11TSwingBoardCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
drawOneRope__11TSwingBoardCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x801f383c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stfd    f30, 0x78(sp)
    stfd    f29, 0x70(sp)
    stfd    f28, 0x68(sp)
    stfd    f27, 0x60(sp)
    stfd    f26, 0x58(sp)
    stfd    f25, 0x50(sp)
    stfd    f24, 0x48(sp)
    stfd    f23, 0x40(sp)
    stfd    f22, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r5
    stw     r30, 0x30(sp)
    mr      r30, r4
    lfs     f1, 0x138(r3)
    li      r3, 0x98
    lfs     f0, -0x7800(r13)
    lfs     f23, 0x0(r5)
    fmuls   f25, f1, f0
    lfs     f24, -0x7808(r13)
    lfs     f22, 0x0(r4)
    lfs     f1, 0x8(r5)
    fadds   f31, f23, f24
    lfs     f0, -0x7804(r13)
    fadds   f28, f22, f24
    lfs     f2, 0x8(r4)
    li      r4, 0x0
    fadds   f30, f1, f0
    fsubs   f29, f1, f0
    fadds   f27, f2, f0
    li      r5, 0x8
    fsubs   f26, f2, f0
    bl      GXBegin
    lfs     f8, 0x4(r30)
    lis     r3, 0xcc01
    lfs     f7, 0x0(r30)
    fsubs   f3, f22, f24
    lfs     f6, -0x2170(rtoc)
    stfs    f7, -0x8000(r3)
    fsubs   f1, f23, f24
    lfs     f4, -0x215c(rtoc)
    stfs    f8, -0x8000(r3)
    lfs     f2, -0x214c(rtoc)
    stfs    f27, -0x8000(r3)
    lfs     f0, -0x212c(rtoc)
    stfs    f6, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    lfs     f9, 0x4(r31)
    lfs     f5, 0x0(r31)
    stfs    f5, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    lfd     f29, 0x70(sp)
    lfd     f28, 0x68(sp)
    lfd     f27, 0x60(sp)
    lfd     f26, 0x58(sp)
    lfd     f25, 0x50(sp)
    lfd     f24, 0x48(sp)
    lfd     f23, 0x40(sp)
    lfd     f22, 0x38(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl __ct__14THangingBridgeFPCc
__ct__14THangingBridgeFPCc: # 0x801f39d8
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
    lis     r3, 0x803d
    sth     r4, 0xc(r31)
    addi    r0, r3, 0x5850
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r4, 0x38(r31)
    lfs     f0, -0x2170(rtoc)
    stfs    f0, 0x3c(r31)
    stfs    f0, 0x40(r31)
    stfs    f0, 0x44(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl loadAfter__14THangingBridgeFv
loadAfter__14THangingBridgeFv: # 0x801f3a5c
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x2a8(sp)
    stfd    f31, 0x2a0(sp)
    stfd    f30, 0x298(sp)
    stfd    f29, 0x290(sp)
    stfd    f28, 0x288(sp)
    stfd    f27, 0x280(sp)
    stfd    f26, 0x278(sp)
    stfd    f25, 0x270(sp)
    stmw    r25, 0x254(sp)
    addi    r29, r3, 0x0
    addi    r31, r4, 0x3a88
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r3, gpMarDirector(r13)
    lfs     f30, -0x2170(rtoc)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xd
    bne-    branch_0x801f3b08
    li      r0, 0xe
    stw     r0, 0x10(r29)
    lfs     f0, -0x20d0(rtoc)
    stfs    f0, 0x18(r29)
    lfs     f0, -0x20cc(rtoc)
    stfs    f0, 0x1c(r29)
    lfs     f1, -0x20c8(rtoc)
    stfs    f1, 0x20(r29)
    lfs     f0, -0x20c4(rtoc)
    stfs    f0, 0x24(r29)
    lfs     f0, -0x20c0(rtoc)
    stfs    f0, 0x28(r29)
    stfs    f1, 0x2c(r29)
    lfs     f0, -0x20b8(rtoc)
    lfs     f30, -0x20bc(rtoc)
    stfs    f0, -0x6238(r13)
    lfs     f0, -0x2118(rtoc)
    stfs    f0, 0x40(r29)
    lfs     f0, -0x2130(rtoc)
    stfs    f0, 0x44(r29)
    lfs     f0, -0x20b4(rtoc)
    stfs    f0, 0x3c(r29)
    b       branch_0x801f3b5c

branch_0x801f3b08:
    cmplwi  r0, 0x8
    bne-    branch_0x801f3b5c
    li      r0, 0x13
    stw     r0, 0x10(r29)
    stfs    f30, 0x18(r29)
    stfs    f30, 0x1c(r29)
    lfs     f0, -0x20b0(rtoc)
    stfs    f0, 0x20(r29)
    stfs    f30, 0x24(r29)
    lfs     f0, -0x20ac(rtoc)
    stfs    f0, 0x28(r29)
    lfs     f0, -0x20a8(rtoc)
    stfs    f0, 0x2c(r29)
    lfs     f1, -0x20a4(rtoc)
    lfs     f0, -0x215c(rtoc)
    stfs    f1, -0x6238(r13)
    stfs    f0, 0x40(r29)
    lfs     f0, -0x2130(rtoc)
    stfs    f0, 0x44(r29)
    lfs     f0, -0x20a0(rtoc)
    stfs    f0, 0x3c(r29)
branch_0x801f3b5c:
    lfs     f1, 0x24(r29)
    lfs     f0, 0x18(r29)
    lfs     f3, 0x2c(r29)
    lfs     f2, 0x20(r29)
    fsubs   f0, f1, f0
    fsubs   f1, f3, f2
    stfs    f0, 0x30(r29)
    stfs    f1, 0x34(r29)
    lfs     f0, 0x30(r29)
    lfs     f1, 0x34(r29)
    fmuls   f2, f0, f0
    lfs     f0, -0x20ec(rtoc)
    fmuls   f1, f1, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801f3bb0
    lfs     f0, -0x2170(rtoc)
    stfs    f0, 0x34(r29)
    stfs    f0, 0x30(r29)
    b       branch_0x801f3bd4

branch_0x801f3bb0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x215c(rtoc)
    lfs     f0, 0x30(r29)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x30(r29)
    lfs     f0, 0x34(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x34(r29)
branch_0x801f3bd4:
    lfs     f1, -0x209c(rtoc)
    bl      cosf
    fmr     f26, f1
    lfs     f1, -0x209c(rtoc)
    bl      sinf
    lfs     f2, 0x34(r29)
    lfs     f3, 0x30(r29)
    fmuls   f0, f2, f1
    fmuls   f2, f2, f26
    fmsubs  f0, f3, f26, f0
    fmadds  f1, f3, f1, f2
    stfs    f0, 0x30(r29)
    stfs    f1, 0x34(r29)
    lwz     r0, 0x10(r29)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x14(r29)
    addi    r25, sp, 0x208
    addi    r26, sp, 0x214
    lfs     f29, -0x215c(rtoc)
    li      r30, 0x0
    lfd     f31, -0x2140(rtoc)
    li      r28, 0x0
    lfs     f26, -0x2114(rtoc)
    lfs     f27, -0x2170(rtoc)
    lis     r27, 0x4330
    lfs     f28, -0x2098(rtoc)
    b       branch_0x801f3d58

branch_0x801f3c44:
    subi    r0, r3, 0x1
    lfs     f3, 0x18(r29)
    xoris   r3, r30, 0x8000
    lfs     f0, 0x24(r29)
    xoris   r0, r0, 0x8000
    stw     r3, 0x24c(sp)
    fsubs   f0, f0, f3
    stw     r0, 0x244(sp)
    stw     r27, 0x248(sp)
    stw     r27, 0x240(sp)
    lfd     f2, 0x248(sp)
    lfd     f1, 0x240(sp)
    fsubs   f2, f2, f31
    fsubs   f1, f1, f31
    fdivs   f25, f2, f1
    fmadds  f0, f25, f0, f3
    fmuls   f1, f26, f25
    stfs    f0, 0x230(sp)
    bl      sinf
    lfs     f1, 0x1c(r29)
    lfs     f0, 0x28(r29)
    lwz     r3, gpMarDirector(r13)
    fsubs   f0, f0, f1
    fmadds  f0, f25, f0, f1
    fsubs   f0, f0, f27
    stfs    f0, 0x234(sp)
    lfs     f1, 0x20(r29)
    lfs     f0, 0x2c(r29)
    fsubs   f0, f0, f1
    stfs    f28, 0x224(sp)
    stfs    f30, 0x228(sp)
    fmadds  f0, f25, f0, f1
    stfs    f27, 0x22c(sp)
    stfs    f0, 0x238(sp)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x801f3d04
    stfs    f29, 0x214(sp)
    addi    r6, r26, 0x0
    addi    r3, r31, 0x268
    stfs    f29, 0x218(sp)
    addi    r4, sp, 0x230
    addi    r5, sp, 0x224
    stfs    f29, 0x21c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r4, 0x14(r29)
    stwx    r3, r4, r28
    b       branch_0x801f3d2c

branch_0x801f3d04:
    stfs    f29, 0x208(sp)
    addi    r6, r25, 0x0
    addi    r3, r31, 0x27c
    stfs    f29, 0x20c(sp)
    addi    r4, sp, 0x230
    addi    r5, sp, 0x224
    stfs    f29, 0x210(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r4, 0x14(r29)
    stwx    r3, r4, r28
branch_0x801f3d2c:
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r28
    stw     r29, 0x1bc(r3)
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r28
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r28, r28, 0x4
branch_0x801f3d58:
    lwz     r3, 0x10(r29)
    cmpw    r30, r3
    blt+    branch_0x801f3c44
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x801f3e44
    li      r0, 0x2a
    mtctr   r0
    addi    r5, sp, 0x98
    addi    r4, r31, 0xf0
branch_0x801f3d84:
    lwzu    r3, 0x8(r4)
    lwz     r0, 0x4(r4)
    stwu    r3, 0x8(r5)
    stw     r0, 0x4(r5)
    bdnz+      branch_0x801f3d84
    lfs     f30, -0x20e8(rtoc)
    li      r27, 0x0
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x801f3e38

branch_0x801f3dac:
    addi    r5, sp, 0xa0
    add     r5, r5, r31
    lfs     f2, 0x0(r5)
    fcmpu   cr0, f30, f2
    beq-    branch_0x801f3e44
    beq-    branch_0x801f3e2c
    lwz     r3, 0x14(r29)
    lfs     f1, 0x8(r5)
    lwzx    r3, r3, r30
    lfs     f0, 0x4(r5)
    stfsu   f2, 0x10c(r3)
    stfs    f0, 0x4(r3)
    stfs    f1, 0x8(r3)
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r30
    lfs     f0, 0x10c(r3)
    addi    r4, r3, 0x10c
    stfsu   f0, 0x10(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x14(r29)
    lfs     f0, 0xc(r5)
    lwzx    r3, r3, r30
    stfs    f0, 0x30(r3)
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
branch_0x801f3e2c:
    addi    r27, r27, 0x1
    addi    r30, r30, 0x4
    addi    r31, r31, 0x10
branch_0x801f3e38:
    lwz     r0, 0x10(r29)
    cmpw    r27, r0
    blt+    branch_0x801f3dac
branch_0x801f3e44:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xd
    bne-    branch_0x801f3e94
    lfs     f2, -0x2094(rtoc)
    lfs     f1, -0x6238(r13)
    lfs     f0, -0x2090(rtoc)
    fsubs   f1, f2, f1
    stfs    f0, 0x18(r29)
    stfs    f1, 0x1c(r29)
    lfs     f3, -0x208c(rtoc)
    stfs    f3, 0x20(r29)
    lfs     f2, -0x2088(rtoc)
    lfs     f1, -0x6238(r13)
    lfs     f0, -0x2084(rtoc)
    fsubs   f1, f2, f1
    stfs    f0, 0x24(r29)
    stfs    f1, 0x28(r29)
    stfs    f3, 0x2c(r29)
    b       branch_0x801f3eac

branch_0x801f3e94:
    cmplwi  r0, 0x8
    bne-    branch_0x801f3eac
    lfs     f1, 0x2c(r29)
    lfs     f0, -0x2080(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(r29)
branch_0x801f3eac:
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x801f3f40

branch_0x801f3eb8:
    cmpwi   r5, 0x0
    ble-    branch_0x801f3ed4
    lwz     r0, 0x14(r29)
    add     r4, r0, r3
    lwz     r0, -0x4(r4)
    lwz     r4, 0x0(r4)
    stw     r0, 0x194(r4)
branch_0x801f3ed4:
    cmpwi   r5, 0x1
    ble-    branch_0x801f3ef0
    lwz     r0, 0x14(r29)
    add     r4, r0, r3
    lwz     r0, -0x8(r4)
    lwz     r4, 0x0(r4)
    stw     r0, 0x19c(r4)
branch_0x801f3ef0:
    lwz     r4, 0x10(r29)
    subi    r0, r4, 0x1
    cmpw    r5, r0
    bge-    branch_0x801f3f14
    lwz     r0, 0x14(r29)
    add     r4, r0, r3
    lwz     r0, 0x4(r4)
    lwz     r4, 0x0(r4)
    stw     r0, 0x198(r4)
branch_0x801f3f14:
    lwz     r4, 0x10(r29)
    subi    r0, r4, 0x2
    cmpw    r5, r0
    bge-    branch_0x801f3f38
    lwz     r0, 0x14(r29)
    add     r4, r0, r3
    lwz     r0, 0x8(r4)
    lwz     r4, 0x0(r4)
    stw     r0, 0x1a0(r4)
branch_0x801f3f38:
    addi    r5, r5, 0x1
    addi    r3, r3, 0x4
branch_0x801f3f40:
    lwz     r0, 0x10(r29)
    cmpw    r5, r0
    blt+    branch_0x801f3eb8
    lwz     r0, -0x7814(r13)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x38(r29)
    lis     r0, 0x4330
    li      r25, 0x0
    lwz     r3, -0x7814(r13)
    li      r30, 0x0
    lfd     f1, -0x2140(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x215c(rtoc)
    stw     r3, 0x244(sp)
    lfs     f26, -0x2170(rtoc)
    stw     r0, 0x240(sp)
    lfs     f31, -0x2114(rtoc)
    lfd     f0, 0x240(sp)
    lfs     f30, -0x207c(rtoc)
    fsubs   f0, f0, f1
    fdivs   f25, f2, f0
    b       branch_0x801f3fbc

branch_0x801f3f9c:
    fmuls   f1, f31, f26
    bl      sinf
    fmuls   f0, f30, f1
    lwz     r3, 0x38(r29)
    fadds   f26, f26, f25
    addi    r25, r25, 0x1
    stfsx   f0, r3, r30
    addi    r30, r30, 0x4
branch_0x801f3fbc:
    lwz     r0, -0x7814(r13)
    cmpw    r25, r0
    blt+    branch_0x801f3f9c
    lmw     r25, 0x254(sp)
    lwz     r0, 0x2ac(sp)
    lfd     f31, 0x2a0(sp)
    lfd     f30, 0x298(sp)
    mtlr    r0
    lfd     f29, 0x290(sp)
    lfd     f28, 0x288(sp)
    lfd     f27, 0x280(sp)
    lfd     f26, 0x278(sp)
    lfd     f25, 0x270(sp)
    addi    sp, sp, 0x2a8
    blr


.globl perform__14THangingBridgeFUlPQ26JDrama9TGraphics
perform__14THangingBridgeFUlPQ26JDrama9TGraphics: # 0x801f3ff8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    stw     r28, 0x40(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x801f40dc
    mr      r3, r28
    bl      initDraw__14THangingBridgeCFv
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x801f408c

branch_0x801f4034:
    lwz     r3, 0x14(r28)
    addi    r4, sp, 0x34
    lwzx    r30, r3, r31
    lwz     r5, 0x1a4(r30)
    mr      r3, r30
    lwz     r0, 0x1a8(r30)
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x1ac(r30)
    stw     r0, 0x3c(sp)
    bl      drawOneRope__19THangingBridgeBoardCFRCQ29JGeometry8TVec3_f_
    lwz     r5, 0x1b0(r30)
    mr      r3, r30
    lwz     r0, 0x1b4(r30)
    addi    r4, sp, 0x34
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x1b8(r30)
    stw     r0, 0x3c(sp)
    bl      drawOneRope__19THangingBridgeBoardCFRCQ29JGeometry8TVec3_f_
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x801f408c:
    lwz     r0, 0x10(r28)
    cmpw    r29, r0
    blt+    branch_0x801f4034
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xd
    bne-    branch_0x801f40bc
    lfs     f1, -0x2078(rtoc)
    mr      r3, r28
    lwz     r4, -0x7814(r13)
    bl      drawRopeBetweenBoards__14THangingBridgeCFfi
    b       branch_0x801f40cc

branch_0x801f40bc:
    lfs     f1, -0x2170(rtoc)
    mr      r3, r28
    lwz     r4, -0x7814(r13)
    bl      drawRopeBetweenBoards__14THangingBridgeCFfi
branch_0x801f40cc:
    lfs     f1, -0x6238(r13)
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      drawRopeBetweenBoards__14THangingBridgeCFfi
branch_0x801f40dc:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl initDraw__14THangingBridgeCFv
initDraw__14THangingBridgeCFv: # 0x801f40fc
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x9
    li      r5, 0x1
    stwu    sp, -0xf0(sp)
    li      r6, 0x4
    li      r7, 0x0
    stw     r31, 0xec(sp)
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x1
    bl      GXSetNumChans
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
    lwz     r0, -0x2178(rtoc)
    addi    r4, sp, 0x3c
    li      r3, 0x4
    stw     r0, 0x38(sp)
    lwz     r0, 0x38(sp)
    stw     r0, 0x3c(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xd
    bne-    branch_0x801f4240
    lwz     r4, -0x62b8(r13)
    li      r31, 0x0
    addi    r3, sp, 0x94
    lwz     r4, 0xcc(r4)
    stw     r31, 0xbc(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r31, 0xe4(sp)
    addi    r3, sp, 0x94
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    addi    r3, sp, 0x94
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
    b       branch_0x801f4274

branch_0x801f4240:
    lwz     r4, -0x62b8(r13)
    li      r31, 0x0
    addi    r3, sp, 0x40
    lwz     r4, 0xcc(r4)
    stw     r31, 0x68(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r31, 0x90(sp)
    addi    r3, sp, 0x40
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    addi    r3, sp, 0x40
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
branch_0x801f4274:
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x2
    bl      GXSetCullMode
    lwz     r0, 0xf4(sp)
    lwz     r31, 0xec(sp)
    addi    sp, sp, 0xf0
    mtlr    r0
    blr


.globl drawRopeBetweenBoards__14THangingBridgeCFfi
drawRopeBetweenBoards__14THangingBridgeCFfi: # 0x801f4350
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stfd    f30, 0xf8(sp)
    stfd    f29, 0xf0(sp)
    fmr     f29, f1
    stmw    r27, 0xdc(sp)
    mr      r30, r4
    mr      r29, r3
    li      r4, 0x0
    lfs     f1, 0x30(r3)
    lfs     f0, 0x3c(r3)
    lfs     f30, 0x34(r3)
    li      r3, 0x98
    fmuls   f31, f1, f0
    stfs    f1, 0xc4(sp)
    fmuls   f30, f30, f0
    lfs     f0, 0x34(r29)
    stfs    f0, 0xc8(sp)
    lfs     f0, 0xc4(sp)
    lfs     f1, -0x781c(r13)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc8(sp)
    lwz     r5, 0x10(r29)
    addi    r0, r5, 0x2
    mullw   r0, r0, r30
    clrlslwi  r31, r0, 17, 1
    addi    r5, r31, 0x0
    bl      GXBegin
    lfs     f0, 0x18(r29)
    li      r27, 0x0
    lfs     f1, 0x1c(r29)
    li      r28, 0x0
    fadds   f0, f0, f31
    lfs     f2, 0x20(r29)
    fadds   f1, f1, f29
    stfs    f0, 0xb8(sp)
    fadds   f0, f2, f30
    stfs    f1, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    b       branch_0x801f4468

branch_0x801f4404:
    lwz     r4, 0x14(r29)
    addi    r3, r29, 0x0
    addi    r7, r30, 0x0
    lwzx    r9, r4, r28
    addi    r4, sp, 0xb8
    addi    r5, sp, 0xac
    lwz     r8, 0x1a4(r9)
    addi    r6, sp, 0xc4
    lwz     r0, 0x1a8(r9)
    stw     r8, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x1ac(r9)
    stw     r0, 0xb4(sp)
    lfs     f0, 0xb0(sp)
    fadds   f0, f0, f29
    stfs    f0, 0xb0(sp)
    bl      drawLowerMinus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    addi    r27, r27, 0x1
    lwz     r3, 0xb0(sp)
    addi    r28, r28, 0x4
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
branch_0x801f4468:
    lwz     r0, 0x10(r29)
    cmpw    r27, r0
    blt+    branch_0x801f4404
    lfs     f0, 0x24(r29)
    mr      r3, r29
    lfs     f1, 0x28(r29)
    mr      r7, r30
    fadds   f0, f0, f31
    lfs     f2, 0x2c(r29)
    fadds   f1, f1, f29
    addi    r4, sp, 0xb8
    stfs    f0, 0xac(sp)
    fadds   f0, f2, f30
    addi    r5, sp, 0xac
    stfs    f1, 0xb0(sp)
    addi    r6, sp, 0xc4
    stfs    f0, 0xb4(sp)
    bl      drawLowerMinus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    mr      r3, r29
    lwz     r5, 0xb0(sp)
    mr      r7, r30
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    addi    r4, sp, 0xb8
    stw     r5, 0xbc(sp)
    addi    r5, sp, 0xac
    addi    r6, sp, 0xc4
    stw     r0, 0xc0(sp)
    bl      drawLowerMinus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    addi    r5, r31, 0x0
    li      r3, 0x98
    li      r4, 0x0
    bl      GXBegin
    lfs     f0, 0x18(r29)
    li      r27, 0x0
    lfs     f1, 0x1c(r29)
    li      r28, 0x0
    fadds   f0, f0, f31
    lfs     f2, 0x20(r29)
    fadds   f1, f1, f29
    stfs    f0, 0xb8(sp)
    fadds   f0, f2, f30
    stfs    f1, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    b       branch_0x801f4584

branch_0x801f4520:
    lwz     r4, 0x14(r29)
    addi    r3, r29, 0x0
    addi    r7, r30, 0x0
    lwzx    r9, r4, r28
    addi    r4, sp, 0xb8
    addi    r5, sp, 0xac
    lwz     r8, 0x1a4(r9)
    addi    r6, sp, 0xc4
    lwz     r0, 0x1a8(r9)
    stw     r8, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x1ac(r9)
    stw     r0, 0xb4(sp)
    lfs     f0, 0xb0(sp)
    fadds   f0, f0, f29
    stfs    f0, 0xb0(sp)
    bl      drawLowerPlus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    addi    r27, r27, 0x1
    lwz     r3, 0xb0(sp)
    addi    r28, r28, 0x4
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
branch_0x801f4584:
    lwz     r0, 0x10(r29)
    cmpw    r27, r0
    blt+    branch_0x801f4520
    lfs     f0, 0x24(r29)
    mr      r3, r29
    lfs     f1, 0x28(r29)
    mr      r7, r30
    fadds   f0, f0, f31
    lfs     f2, 0x2c(r29)
    fadds   f1, f1, f29
    addi    r4, sp, 0xb8
    stfs    f0, 0xac(sp)
    fadds   f0, f2, f30
    addi    r5, sp, 0xac
    stfs    f1, 0xb0(sp)
    addi    r6, sp, 0xc4
    stfs    f0, 0xb4(sp)
    bl      drawLowerPlus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    mr      r3, r29
    lwz     r5, 0xb0(sp)
    mr      r7, r30
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    addi    r4, sp, 0xb8
    stw     r5, 0xbc(sp)
    addi    r5, sp, 0xac
    addi    r6, sp, 0xc4
    stw     r0, 0xc0(sp)
    bl      drawLowerPlus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    addi    r5, r31, 0x0
    li      r3, 0x98
    li      r4, 0x0
    bl      GXBegin
    lfs     f0, 0x18(r29)
    li      r27, 0x0
    lfs     f1, 0x1c(r29)
    li      r28, 0x0
    fadds   f0, f0, f31
    lfs     f2, 0x20(r29)
    fadds   f1, f1, f29
    stfs    f0, 0xb8(sp)
    fadds   f0, f2, f30
    stfs    f1, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    b       branch_0x801f46a0

branch_0x801f463c:
    lwz     r4, 0x14(r29)
    addi    r3, r29, 0x0
    addi    r7, r30, 0x0
    lwzx    r9, r4, r28
    addi    r4, sp, 0xb8
    addi    r5, sp, 0xac
    lwz     r8, 0x1a4(r9)
    addi    r6, sp, 0xc4
    lwz     r0, 0x1a8(r9)
    stw     r8, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x1ac(r9)
    stw     r0, 0xb4(sp)
    lfs     f0, 0xb0(sp)
    fadds   f0, f0, f29
    stfs    f0, 0xb0(sp)
    bl      drawUpper__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    addi    r27, r27, 0x1
    lwz     r3, 0xb0(sp)
    addi    r28, r28, 0x4
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
branch_0x801f46a0:
    lwz     r0, 0x10(r29)
    cmpw    r27, r0
    blt+    branch_0x801f463c
    lfs     f0, 0x24(r29)
    mr      r3, r29
    lfs     f1, 0x28(r29)
    mr      r7, r30
    fadds   f0, f0, f31
    lfs     f2, 0x2c(r29)
    fadds   f1, f1, f29
    addi    r4, sp, 0xb8
    stfs    f0, 0xac(sp)
    fadds   f0, f2, f30
    addi    r5, sp, 0xac
    stfs    f1, 0xb0(sp)
    addi    r6, sp, 0xc4
    stfs    f0, 0xb4(sp)
    bl      drawUpper__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    mr      r3, r29
    lwz     r5, 0xb0(sp)
    mr      r7, r30
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    addi    r4, sp, 0xb8
    stw     r5, 0xbc(sp)
    addi    r5, sp, 0xac
    addi    r6, sp, 0xc4
    stw     r0, 0xc0(sp)
    bl      drawUpper__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    addi    r5, r31, 0x0
    li      r3, 0x98
    li      r4, 0x0
    bl      GXBegin
    lfs     f0, 0x18(r29)
    li      r27, 0x0
    lfs     f1, 0x1c(r29)
    li      r28, 0x0
    fsubs   f0, f0, f31
    lfs     f2, 0x20(r29)
    fadds   f1, f1, f29
    stfs    f0, 0xb8(sp)
    fsubs   f0, f2, f30
    stfs    f1, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    b       branch_0x801f47bc

branch_0x801f4758:
    lwz     r4, 0x14(r29)
    addi    r3, r29, 0x0
    addi    r7, r30, 0x0
    lwzx    r9, r4, r28
    addi    r4, sp, 0xb8
    addi    r5, sp, 0xac
    lwz     r8, 0x1b0(r9)
    addi    r6, sp, 0xc4
    lwz     r0, 0x1b4(r9)
    stw     r8, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x1b8(r9)
    stw     r0, 0xb4(sp)
    lfs     f0, 0xb0(sp)
    fadds   f0, f0, f29
    stfs    f0, 0xb0(sp)
    bl      drawLowerMinus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    addi    r27, r27, 0x1
    lwz     r3, 0xb0(sp)
    addi    r28, r28, 0x4
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
branch_0x801f47bc:
    lwz     r0, 0x10(r29)
    cmpw    r27, r0
    blt+    branch_0x801f4758
    lfs     f0, 0x24(r29)
    mr      r3, r29
    lfs     f1, 0x28(r29)
    mr      r7, r30
    fsubs   f0, f0, f31
    lfs     f2, 0x2c(r29)
    fadds   f1, f1, f29
    addi    r4, sp, 0xb8
    stfs    f0, 0xac(sp)
    fsubs   f0, f2, f30
    addi    r5, sp, 0xac
    stfs    f1, 0xb0(sp)
    addi    r6, sp, 0xc4
    stfs    f0, 0xb4(sp)
    bl      drawLowerMinus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    mr      r3, r29
    lwz     r5, 0xb0(sp)
    mr      r7, r30
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    addi    r4, sp, 0xb8
    stw     r5, 0xbc(sp)
    addi    r5, sp, 0xac
    addi    r6, sp, 0xc4
    stw     r0, 0xc0(sp)
    bl      drawLowerMinus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    addi    r5, r31, 0x0
    li      r3, 0x98
    li      r4, 0x0
    bl      GXBegin
    lfs     f0, 0x18(r29)
    li      r27, 0x0
    lfs     f1, 0x1c(r29)
    li      r28, 0x0
    fsubs   f0, f0, f31
    lfs     f2, 0x20(r29)
    fadds   f1, f1, f29
    stfs    f0, 0xb8(sp)
    fsubs   f0, f2, f30
    stfs    f1, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    b       branch_0x801f48d8

branch_0x801f4874:
    lwz     r4, 0x14(r29)
    addi    r3, r29, 0x0
    addi    r7, r30, 0x0
    lwzx    r9, r4, r28
    addi    r4, sp, 0xb8
    addi    r5, sp, 0xac
    lwz     r8, 0x1b0(r9)
    addi    r6, sp, 0xc4
    lwz     r0, 0x1b4(r9)
    stw     r8, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x1b8(r9)
    stw     r0, 0xb4(sp)
    lfs     f0, 0xb0(sp)
    fadds   f0, f0, f29
    stfs    f0, 0xb0(sp)
    bl      drawLowerPlus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    addi    r27, r27, 0x1
    lwz     r3, 0xb0(sp)
    addi    r28, r28, 0x4
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
branch_0x801f48d8:
    lwz     r0, 0x10(r29)
    cmpw    r27, r0
    blt+    branch_0x801f4874
    lfs     f0, 0x24(r29)
    mr      r3, r29
    lfs     f1, 0x28(r29)
    mr      r7, r30
    fsubs   f0, f0, f31
    lfs     f2, 0x2c(r29)
    fadds   f1, f1, f29
    addi    r4, sp, 0xb8
    stfs    f0, 0xac(sp)
    fsubs   f0, f2, f30
    addi    r5, sp, 0xac
    stfs    f1, 0xb0(sp)
    addi    r6, sp, 0xc4
    stfs    f0, 0xb4(sp)
    bl      drawLowerPlus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    mr      r3, r29
    lwz     r5, 0xb0(sp)
    mr      r7, r30
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    addi    r4, sp, 0xb8
    stw     r5, 0xbc(sp)
    addi    r5, sp, 0xac
    addi    r6, sp, 0xc4
    stw     r0, 0xc0(sp)
    bl      drawLowerPlus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    addi    r5, r31, 0x0
    li      r3, 0x98
    li      r4, 0x0
    bl      GXBegin
    lfs     f0, 0x18(r29)
    li      r27, 0x0
    lfs     f1, 0x1c(r29)
    li      r31, 0x0
    fsubs   f0, f0, f31
    lfs     f2, 0x20(r29)
    fadds   f1, f1, f29
    stfs    f0, 0xb8(sp)
    fsubs   f0, f2, f30
    stfs    f1, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    b       branch_0x801f49f4

branch_0x801f4990:
    lwz     r4, 0x14(r29)
    addi    r3, r29, 0x0
    addi    r7, r30, 0x0
    lwzx    r9, r4, r31
    addi    r4, sp, 0xb8
    addi    r5, sp, 0xac
    lwz     r8, 0x1b0(r9)
    addi    r6, sp, 0xc4
    lwz     r0, 0x1b4(r9)
    stw     r8, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x1b8(r9)
    stw     r0, 0xb4(sp)
    lfs     f0, 0xb0(sp)
    fadds   f0, f0, f29
    stfs    f0, 0xb0(sp)
    bl      drawUpper__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    addi    r27, r27, 0x1
    lwz     r3, 0xb0(sp)
    addi    r31, r31, 0x4
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
branch_0x801f49f4:
    lwz     r0, 0x10(r29)
    cmpw    r27, r0
    blt+    branch_0x801f4990
    lfs     f0, 0x24(r29)
    mr      r3, r29
    lfs     f1, 0x28(r29)
    mr      r7, r30
    fsubs   f0, f0, f31
    lfs     f2, 0x2c(r29)
    fadds   f1, f1, f29
    addi    r4, sp, 0xb8
    stfs    f0, 0xac(sp)
    fsubs   f0, f2, f30
    addi    r5, sp, 0xac
    stfs    f1, 0xb0(sp)
    addi    r6, sp, 0xc4
    stfs    f0, 0xb4(sp)
    bl      drawUpper__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lwz     r0, 0xac(sp)
    mr      r3, r29
    lwz     r5, 0xb0(sp)
    mr      r7, r30
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb4(sp)
    addi    r4, sp, 0xb8
    stw     r5, 0xbc(sp)
    addi    r5, sp, 0xac
    addi    r6, sp, 0xc4
    stw     r0, 0xc0(sp)
    bl      drawUpper__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
    lmw     r27, 0xdc(sp)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lfd     f30, 0xf8(sp)
    mtlr    r0
    lfd     f29, 0xf0(sp)
    addi    sp, sp, 0x108
    blr


.globl drawUpper__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
drawUpper__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i: # 0x801f4a8c
    stwu    sp, -0x50(sp)
    xoris   r0, r7, 0x8000
    cmpwi   r7, 0x0
    stfd    f31, 0x48(sp)
    stfd    f30, 0x40(sp)
    stfd    f29, 0x38(sp)
    stfd    f28, 0x30(sp)
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    lfd     f2, -0x2140(rtoc)
    stw     r0, 0x28(sp)
    lfs     f8, -0x215c(rtoc)
    lfd     f0, 0x28(sp)
    lfs     f3, 0x0(r4)
    fsubs   f4, f0, f2
    lfs     f5, 0x4(r4)
    lfs     f7, 0x8(r4)
    fmr     f11, f3
    lfs     f1, 0x0(r5)
    fdivs   f4, f8, f4
    lfs     f2, 0x4(r5)
    lfs     f0, 0x8(r5)
    li      r4, 0x0
    lfs     f6, -0x7810(r13)
    fsubs   f3, f1, f3
    lfs     f1, -0x2170(rtoc)
    fsubs   f2, f2, f5
    lis     r5, 0xcc01
    fsubs   f0, f0, f7
    fmr     f12, f5
    fmr     f13, f7
    fmuls   f31, f4, f3
    fmuls   f30, f4, f2
    fmuls   f29, f4, f0
    ble-    branch_0x801f4c58
    srwi.   r0, r7, 1
    mtctr   r0
    beq-    branch_0x801f4bec
branch_0x801f4b24:
    lfs     f3, 0x0(r6)
    fadds   f5, f11, f13
    lwz     r8, 0x38(r3)
    fadds   f2, f11, f3
    lfs     f4, 0x4(r6)
    lfsx    f7, r8, r4
    fsubs   f0, f11, f3
    addi    r4, r4, 0x4
    fsubs   f7, f12, f7
    stfs    f2, -0x8000(r5)
    fadds   f9, f13, f4
    fsubs   f10, f13, f4
    stfs    f7, -0x8000(r5)
    fmuls   f28, f6, f5
    stfs    f9, -0x8000(r5)
    fadds   f11, f11, f31
    fadds   f13, f13, f29
    stfs    f1, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f28, -0x8000(r5)
    fadds   f2, f11, f3
    fadds   f9, f13, f4
    stfs    f0, -0x8000(r5)
    fadds   f5, f11, f13
    stfs    f7, -0x8000(r5)
    fsubs   f0, f11, f3
    fadds   f11, f11, f31
    stfs    f10, -0x8000(r5)
    fsubs   f10, f13, f4
    stfs    f8, -0x8000(r5)
    fadds   f13, f13, f29
    stfs    f28, -0x8000(r5)
    fmuls   f28, f6, f5
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    fsubs   f7, f12, f7
    stfs    f2, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f7, -0x8000(r5)
    stfs    f9, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f28, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    stfs    f7, -0x8000(r5)
    stfs    f10, -0x8000(r5)
    stfs    f8, -0x8000(r5)
    stfs    f28, -0x8000(r5)
    bdnz+      branch_0x801f4b24
    andi.   r7, r7, 0x1
    beq-    branch_0x801f4c58
branch_0x801f4bec:
    mtctr   r7
branch_0x801f4bf0:
    lfs     f3, 0x0(r6)
    fadds   f5, f11, f13
    lwz     r8, 0x38(r3)
    fadds   f2, f11, f3
    lfs     f4, 0x4(r6)
    lfsx    f7, r8, r4
    fsubs   f0, f11, f3
    addi    r4, r4, 0x4
    fsubs   f7, f12, f7
    stfs    f2, -0x8000(r5)
    fadds   f9, f13, f4
    fsubs   f10, f13, f4
    stfs    f7, -0x8000(r5)
    fmuls   f28, f6, f5
    stfs    f9, -0x8000(r5)
    fadds   f11, f11, f31
    fadds   f12, f12, f30
    stfs    f1, -0x8000(r5)
    fadds   f13, f13, f29
    stfs    f28, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    stfs    f7, -0x8000(r5)
    stfs    f10, -0x8000(r5)
    stfs    f8, -0x8000(r5)
    stfs    f28, -0x8000(r5)
    bdnz+      branch_0x801f4bf0
branch_0x801f4c58:
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    lfd     f29, 0x38(sp)
    lfd     f28, 0x30(sp)
    addi    sp, sp, 0x50
    blr


.globl drawLowerPlus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
drawLowerPlus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i: # 0x801f4c70
    stwu    sp, -0x40(sp)
    xoris   r0, r7, 0x8000
    cmpwi   r7, 0x0
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stfd    f29, 0x28(sp)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfd     f1, -0x2140(rtoc)
    stw     r0, 0x20(sp)
    lfs     f8, -0x215c(rtoc)
    lfd     f0, 0x20(sp)
    lfs     f4, 0x0(r4)
    fsubs   f3, f0, f1
    lfs     f5, 0x4(r4)
    lfs     f7, 0x8(r4)
    fmr     f10, f4
    lfs     f2, 0x0(r5)
    fdivs   f9, f8, f3
    lfs     f1, 0x4(r5)
    lfs     f0, 0x8(r5)
    li      r4, 0x0
    lfs     f6, -0x7810(r13)
    fsubs   f2, f2, f4
    lfs     f4, -0x7818(r13)
    fsubs   f1, f1, f5
    lfs     f3, -0x2170(rtoc)
    fsubs   f0, f0, f7
    fmr     f11, f5
    lis     r5, 0xcc01
    fmr     f12, f7
    fmuls   f13, f9, f2
    fmuls   f31, f9, f1
    fmuls   f30, f9, f0
    ble-    branch_0x801f4ed8
    srwi.   r0, r7, 2
    mtctr   r0
    beq-    branch_0x801f4e70
branch_0x801f4d08:
    lwz     r8, 0x38(r3)
    fadds   f5, f10, f12
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    fmuls   f29, f6, f5
    fsubs   f7, f11, f7
    stfs    f10, -0x8000(r5)
    fadds   f11, f11, f31
    fsubs   f5, f7, f4
    stfs    f5, -0x8000(r5)
    stfs    f12, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    stfs    f29, -0x8000(r5)
    lfs     f1, 0x0(r6)
    lfs     f2, 0x4(r6)
    fadds   f0, f10, f1
    fadds   f9, f12, f2
    fadds   f10, f10, f13
    stfs    f0, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f7, -0x8000(r5)
    fadds   f0, f10, f1
    fadds   f5, f10, f12
    stfs    f9, -0x8000(r5)
    fadds   f9, f12, f2
    stfs    f8, -0x8000(r5)
    stfs    f29, -0x8000(r5)
    fmuls   f29, f6, f5
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    fsubs   f7, f11, f7
    stfs    f10, -0x8000(r5)
    fadds   f11, f11, f31
    fadds   f10, f10, f13
    fsubs   f5, f7, f4
    stfs    f5, -0x8000(r5)
    stfs    f12, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f3, -0x8000(r5)
    fadds   f5, f10, f12
    stfs    f29, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    fadds   f0, f10, f1
    stfs    f7, -0x8000(r5)
    stfs    f9, -0x8000(r5)
    fadds   f9, f12, f2
    stfs    f8, -0x8000(r5)
    stfs    f29, -0x8000(r5)
    fmuls   f29, f6, f5
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    fsubs   f7, f11, f7
    stfs    f10, -0x8000(r5)
    fadds   f11, f11, f31
    fadds   f10, f10, f13
    fsubs   f5, f7, f4
    stfs    f5, -0x8000(r5)
    stfs    f12, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f3, -0x8000(r5)
    fadds   f5, f10, f12
    stfs    f29, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    fadds   f0, f10, f1
    stfs    f7, -0x8000(r5)
    stfs    f9, -0x8000(r5)
    fadds   f9, f12, f2
    stfs    f8, -0x8000(r5)
    stfs    f29, -0x8000(r5)
    fmuls   f29, f6, f5
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    fsubs   f7, f11, f7
    stfs    f10, -0x8000(r5)
    fadds   f10, f10, f13
    fadds   f11, f11, f31
    fsubs   f5, f7, f4
    stfs    f5, -0x8000(r5)
    stfs    f12, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f3, -0x8000(r5)
    stfs    f29, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    stfs    f7, -0x8000(r5)
    stfs    f9, -0x8000(r5)
    stfs    f8, -0x8000(r5)
    stfs    f29, -0x8000(r5)
    bdnz+      branch_0x801f4d08
    andi.   r7, r7, 0x3
    beq-    branch_0x801f4ed8
branch_0x801f4e70:
    mtctr   r7
branch_0x801f4e74:
    lwz     r8, 0x38(r3)
    fadds   f5, f10, f12
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    fmuls   f29, f6, f5
    fsubs   f7, f11, f7
    stfs    f10, -0x8000(r5)
    fadds   f11, f11, f31
    fsubs   f5, f7, f4
    stfs    f5, -0x8000(r5)
    stfs    f12, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    stfs    f29, -0x8000(r5)
    lfs     f1, 0x0(r6)
    lfs     f2, 0x4(r6)
    fadds   f0, f10, f1
    fadds   f9, f12, f2
    fadds   f10, f10, f13
    stfs    f0, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f7, -0x8000(r5)
    stfs    f9, -0x8000(r5)
    stfs    f8, -0x8000(r5)
    stfs    f29, -0x8000(r5)
    bdnz+      branch_0x801f4e74
branch_0x801f4ed8:
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    lfd     f29, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl drawLowerMinus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i
drawLowerMinus__14THangingBridgeCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec2_f_i: # 0x801f4eec
    stwu    sp, -0x38(sp)
    xoris   r0, r7, 0x8000
    cmpwi   r7, 0x0
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfd     f2, -0x2140(rtoc)
    stw     r0, 0x20(sp)
    lfs     f8, -0x215c(rtoc)
    lfd     f0, 0x20(sp)
    lfs     f4, 0x0(r4)
    fsubs   f3, f0, f2
    lfs     f5, 0x4(r4)
    lfs     f7, 0x8(r4)
    fmr     f10, f4
    lfs     f1, 0x0(r5)
    fdivs   f9, f8, f3
    lfs     f0, 0x4(r5)
    lfs     f2, 0x8(r5)
    li      r4, 0x0
    lfs     f6, -0x7810(r13)
    fsubs   f4, f1, f4
    lfs     f1, -0x2170(rtoc)
    fsubs   f3, f0, f5
    lfs     f0, -0x7818(r13)
    fsubs   f2, f2, f7
    fmr     f11, f5
    lis     r5, 0xcc01
    fmr     f12, f7
    fmuls   f13, f9, f4
    fmuls   f31, f9, f3
    fmuls   f30, f9, f2
    ble-    branch_0x801f5150
    srwi.   r0, r7, 2
    mtctr   r0
    beq-    branch_0x801f50e8
branch_0x801f4f80:
    lwz     r8, 0x38(r3)
    fadds   f5, f10, f12
    lfs     f3, 0x0(r6)
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    lfs     f4, 0x4(r6)
    fsubs   f2, f10, f3
    fsubs   f7, f11, f7
    fsubs   f9, f12, f4
    stfs    f2, -0x8000(r5)
    fmuls   f5, f6, f5
    fsubs   f2, f7, f0
    stfs    f7, -0x8000(r5)
    fadds   f11, f11, f31
    stfs    f9, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f10, -0x8000(r5)
    fadds   f10, f10, f13
    stfs    f2, -0x8000(r5)
    fsubs   f2, f10, f3
    stfs    f12, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f8, -0x8000(r5)
    fsubs   f9, f12, f4
    stfs    f5, -0x8000(r5)
    fadds   f5, f10, f12
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    fmuls   f5, f6, f5
    fsubs   f7, f11, f7
    stfs    f2, -0x8000(r5)
    fadds   f11, f11, f31
    stfs    f7, -0x8000(r5)
    fsubs   f2, f7, f0
    stfs    f9, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f10, -0x8000(r5)
    fadds   f10, f10, f13
    stfs    f2, -0x8000(r5)
    fsubs   f2, f10, f3
    stfs    f12, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f8, -0x8000(r5)
    fsubs   f9, f12, f4
    stfs    f5, -0x8000(r5)
    fadds   f5, f10, f12
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    fmuls   f5, f6, f5
    fsubs   f7, f11, f7
    stfs    f2, -0x8000(r5)
    fadds   f11, f11, f31
    stfs    f7, -0x8000(r5)
    fsubs   f2, f7, f0
    stfs    f9, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f10, -0x8000(r5)
    fadds   f10, f10, f13
    stfs    f2, -0x8000(r5)
    fsubs   f2, f10, f3
    stfs    f12, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f8, -0x8000(r5)
    fsubs   f9, f12, f4
    stfs    f5, -0x8000(r5)
    fadds   f5, f10, f12
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    fmuls   f5, f6, f5
    fsubs   f7, f11, f7
    stfs    f2, -0x8000(r5)
    fadds   f11, f11, f31
    stfs    f7, -0x8000(r5)
    fsubs   f2, f7, f0
    stfs    f9, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f10, -0x8000(r5)
    fadds   f10, f10, f13
    stfs    f2, -0x8000(r5)
    stfs    f12, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f8, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    bdnz+      branch_0x801f4f80
    andi.   r7, r7, 0x3
    beq-    branch_0x801f5150
branch_0x801f50e8:
    mtctr   r7
branch_0x801f50ec:
    lwz     r8, 0x38(r3)
    fadds   f5, f10, f12
    lfs     f3, 0x0(r6)
    lfsx    f7, r8, r4
    addi    r4, r4, 0x4
    lfs     f4, 0x4(r6)
    fsubs   f2, f10, f3
    fsubs   f7, f11, f7
    fsubs   f9, f12, f4
    stfs    f2, -0x8000(r5)
    fmuls   f5, f6, f5
    fsubs   f2, f7, f0
    stfs    f7, -0x8000(r5)
    fadds   f11, f11, f31
    stfs    f9, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f10, -0x8000(r5)
    fadds   f10, f10, f13
    stfs    f2, -0x8000(r5)
    stfs    f12, -0x8000(r5)
    fadds   f12, f12, f30
    stfs    f8, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    bdnz+      branch_0x801f50ec
branch_0x801f5150:
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl __ct__19THangingBridgeBoardFPCc
__ct__19THangingBridgeBoardFPCc: # 0x801f5160
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__10TLeanBlockFPCc
    lis     r3, 0x803d
    lwz     r31, 0x8(sp)
    addi    r3, r3, 0x5874
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x8002
    stw     r0, 0x20(r31)
    addi    r4, r3, 0x10dc
    addi    r3, r31, 0x1a4
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x2
    bl      __construct_array
    li      r0, 0x0
    stw     r0, 0x1bc(r31)
    mr      r3, r31
    stw     r0, 0x194(r31)
    stw     r0, 0x198(r31)
    stw     r0, 0x19c(r31)
    stw     r0, 0x1a0(r31)
    lfs     f0, -0x2170(rtoc)
    stfs    f0, 0x1ac(r31)
    stfs    f0, 0x1a8(r31)
    stfs    f0, 0x1a4(r31)
    stfs    f0, 0x1b8(r31)
    stfs    f0, 0x1b4(r31)
    stfs    f0, 0x1b0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__19THangingBridgeBoardFv
initMapObj__19THangingBridgeBoardFv: # 0x801f51fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__10TLeanBlockFv
    lfs     f0, -0x216c(rtoc)
    stfs    f0, 0x140(r31)
    lfs     f0, -0x2074(rtoc)
    stfs    f0, 0x144(r31)
    lfs     f0, -0x2070(rtoc)
    stfs    f0, 0x148(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setGroundCollision__19THangingBridgeBoardFv
setGroundCollision__19THangingBridgeBoardFv: # 0x801f5240
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    bl      SMS_GetYoshi__Fv
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f526c
    li      r0, 0x0
    b       branch_0x801f5270

branch_0x801f526c:
    li      r0, 0x1
branch_0x801f5270:
    cmpwi   r0, 0x0
    beq-    branch_0x801f5318
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x10(r31)
    lfs     f1, 0xbc(r31)
    lfs     f0, 0x20(r3)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f5318
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x10(r31)
    lfs     f1, 0xbc(r31)
    lfs     f0, 0x20(r3)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801f5318
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x18(r31)
    lfs     f1, 0xbc(r31)
    lfs     f0, 0x28(r3)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f5318
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x18(r31)
    lfs     f1, 0xbc(r31)
    lfs     f0, 0x28(r3)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801f5318
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0xec(r31)
    lwz     r4, 0x58(r3)
    lwz     r3, 0x8(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x801f5320
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    b       branch_0x801f5320

branch_0x801f5318:
    mr      r3, r31
    bl      setGroundCollision__11TMapObjBaseFv
branch_0x801f5320:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl calcDefaultMtx__19THangingBridgeBoardFv
calcDefaultMtx__19THangingBridgeBoardFv: # 0x801f5334
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r3, 0x0
    addi    r4, sp, 0x40
    bl      makeRootMtxRotX__11TMapObjBaseFPA4_f
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    bl      makeRootMtxRotY__11TMapObjBaseFPA4_f
    addi    r3, sp, 0x10
    addi    r5, r3, 0x0
    addi    r4, sp, 0x40
    bl      PSMTXConcat
    addi    r3, r31, 0x164
    addi    r4, sp, 0x10
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lfs     f0, -0x2170(rtoc)
    stfs    f0, 0xb0(r31)
    lfs     f0, 0x110(r31)
    stfs    f0, 0x14(r31)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl control__19THangingBridgeBoardFv
control__19THangingBridgeBoardFv: # 0x801f539c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stw     r31, 0x114(sp)
    mr      r31, r3
    bl      control__10TLeanBlockFv
    mr      r3, r31
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801f5468
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x7838(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lwz     r4, 0x194(r31)
    lfs     f2, -0x7838(r13)
    cmplwi  r4, 0x0
    beq-    branch_0x801f5420
    lwz     r3, 0x1bc(r31)
    lfs     f1, 0xb0(r4)
    lfs     f0, 0x40(r3)
    fmuls   f0, f2, f0
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r4)
    lwz     r4, 0x19c(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801f5420
    lwz     r3, 0x1bc(r31)
    lfs     f1, 0xb0(r4)
    lfs     f0, 0x44(r3)
    fmuls   f0, f2, f0
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r4)
branch_0x801f5420:
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801f5468
    lwz     r3, 0x1bc(r31)
    lfs     f1, 0xb0(r4)
    lfs     f0, 0x40(r3)
    fmuls   f0, f2, f0
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r4)
    lwz     r4, 0x1a0(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801f5468
    lwz     r3, 0x1bc(r31)
    lfs     f1, 0xb0(r4)
    lfs     f0, 0x44(r3)
    fmuls   f0, f2, f0
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r4)
branch_0x801f5468:
    mr      r3, r31
    bl      marioHipAttack__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801f551c
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x7834(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lwz     r4, 0x194(r31)
    lfs     f2, -0x7834(r13)
    cmplwi  r4, 0x0
    beq-    branch_0x801f54d4
    lwz     r3, 0x1bc(r31)
    lfs     f1, 0xb0(r4)
    lfs     f0, 0x40(r3)
    fmuls   f0, f2, f0
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r4)
    lwz     r4, 0x19c(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801f54d4
    lwz     r3, 0x1bc(r31)
    lfs     f1, 0xb0(r4)
    lfs     f0, 0x44(r3)
    fmuls   f0, f2, f0
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r4)
branch_0x801f54d4:
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801f551c
    lwz     r3, 0x1bc(r31)
    lfs     f1, 0xb0(r4)
    lfs     f0, 0x40(r3)
    fmuls   f0, f2, f0
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r4)
    lwz     r4, 0x1a0(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801f551c
    lwz     r3, 0x1bc(r31)
    lfs     f1, 0xb0(r4)
    lfs     f0, 0x44(r3)
    fmuls   f0, f2, f0
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r4)
branch_0x801f551c:
    lfs     f1, 0x14(r31)
    mr      r3, r31
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x110(r31)
    lfs     f0, 0x14(r31)
    lfs     f2, -0x7830(r13)
    fsubs   f1, f1, f0
    lfs     f0, 0xb0(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x782c(r13)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    lwz     r3, 0x1bc(r31)
    lfs     f2, 0x0(r4)
    lfs     f1, 0x3c(r3)
    lfs     f0, 0x10(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x1a4(r31)
    lwz     r3, 0x1bc(r31)
    lfs     f2, 0x10(r4)
    lfs     f1, 0x3c(r3)
    lfs     f0, 0x14(r31)
    lfs     f3, -0x206c(rtoc)
    fnmsubs  f0, f2, f1, f0
    fadds   f0, f3, f0
    stfs    f0, 0x1a8(r31)
    lwz     r3, 0x1bc(r31)
    lfs     f2, 0x20(r4)
    lfs     f1, 0x3c(r3)
    lfs     f0, 0x18(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x1ac(r31)
    lwz     r3, 0x1bc(r31)
    lfs     f2, 0x0(r4)
    lfs     f1, 0x3c(r3)
    lfs     f0, 0x10(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x1b0(r31)
    lwz     r3, 0x1bc(r31)
    lfs     f2, 0x10(r4)
    lfs     f1, 0x3c(r3)
    lfs     f0, 0x14(r31)
    fmadds  f0, f2, f1, f0
    fadds   f0, f3, f0
    stfs    f0, 0x1b4(r31)
    lwz     r3, 0x1bc(r31)
    lfs     f2, 0x20(r4)
    lfs     f1, 0x3c(r3)
    lfs     f0, 0x18(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x1b8(r31)
    lwz     r0, 0x11c(sp)
    lwz     r31, 0x114(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl drawOneRope__19THangingBridgeBoardCFRCQ29JGeometry8TVec3_f_
drawOneRope__19THangingBridgeBoardCFRCQ29JGeometry8TVec3_f_: # 0x801f5614
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stfd    f29, 0x60(sp)
    stfd    f28, 0x58(sp)
    stfd    f27, 0x50(sp)
    stfd    f26, 0x48(sp)
    stfd    f25, 0x40(sp)
    stfd    f24, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    lwz     r3, gpMarDirector(r13)
    lfs     f4, 0x4(r4)
    lfs     f0, -0x6238(r13)
    lbz     r0, 0x7c(r3)
    fmr     f30, f4
    fadds   f31, f4, f0
    lfs     f1, 0x0(r4)
    lfs     f0, -0x7828(r13)
    lfs     f3, 0x8(r4)
    lfs     f2, -0x7824(r13)
    cmplwi  r0, 0xd
    fadds   f29, f1, f0
    fsubs   f28, f1, f0
    fadds   f27, f3, f2
    fsubs   f26, f3, f2
    bne-    branch_0x801f5690
    lfs     f0, -0x20d4(rtoc)
    fsubs   f30, f30, f0
branch_0x801f5690:
    fsubs   f1, f31, f4
    lfs     f2, -0x7820(r13)
    fsubs   f0, f30, f4
    li      r3, 0x98
    li      r4, 0x0
    fmuls   f25, f2, f1
    li      r5, 0x8
    fmuls   f24, f2, f0
    bl      GXBegin
    lfs     f4, 0x0(r31)
    lis     r3, 0xcc01
    lfs     f3, -0x2170(rtoc)
    stfs    f4, -0x8000(r3)
    lfs     f2, -0x215c(rtoc)
    stfs    f31, -0x8000(r3)
    lfs     f1, -0x214c(rtoc)
    stfs    f27, -0x8000(r3)
    lfs     f0, -0x212c(rtoc)
    stfs    f3, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    lfd     f29, 0x60(sp)
    lfd     f28, 0x58(sp)
    lfd     f27, 0x50(sp)
    lfd     f26, 0x48(sp)
    lfd     f25, 0x40(sp)
    lfd     f24, 0x38(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl load__13TJumpMushroomFR20JSUMemoryInputStream
load__13TJumpMushroomFR20JSUMemoryInputStream: # 0x801f57a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0xec(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801f57ec
    lwz     r0, 0x18(sp)
    lwz     r3, 0x8(r3)
    extsh   r4, r0
    bl      setAllData__17TMapCollisionBaseFs
branch_0x801f57ec:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl receiveMessage__13TJumpMushroomFP9THitActorUl
receiveMessage__13TJumpMushroomFP9THitActorUl: # 0x801f5804
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      startAnim__11TMapObjBaseFUs
    lwz     r0, 0xc(sp)
    li      r3, 0x1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initMapObj__16TMapObjMonteRootFv
initMapObj__16TMapObjMonteRootFv: # 0x801f582c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f1, -0x2068(rtoc)
    mr      r3, r31
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f1, 0x110(r31)
    lfs     f0, 0x108(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__6TFluffFv
__dt__6TFluffFv: # 0x801f5880
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f58e8
    lis     r3, 0x803d
    addi    r3, r3, 0x5424
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f58d8
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f58d8:
    extsh.  r0, r31
    ble-    branch_0x801f58e8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f58e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getRadiusAtY__6TFluffCFf
getRadiusAtY__6TFluffCFf: # 0x801f5904
    lfs     f1, -0x20d8(rtoc)
    blr


.globl __dt__9TGoalFlagFv
__dt__9TGoalFlagFv: # 0x801f590c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f5974
    lis     r3, 0x803d
    addi    r3, r3, 0x5588
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f5964
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f5964:
    extsh.  r0, r31
    ble-    branch_0x801f5974
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f5974:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getRadiusAtY__9TGoalFlagCFf
getRadiusAtY__9TGoalFlagCFf: # 0x801f5990
    lfs     f1, -0x20d8(rtoc)
    blr


.globl __dt__11TSwingBoardFv
__dt__11TSwingBoardFv: # 0x801f5998
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f5a00
    lis     r3, 0x803d
    addi    r3, r3, 0x56ec
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f59f0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f59f0:
    extsh.  r0, r31
    ble-    branch_0x801f5a00
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f5a00:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14THangingBridgeFv
__dt__14THangingBridgeFv: # 0x801f5a1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f5a74
    lis     r3, 0x803d
    addi    r0, r3, 0x5850
    stw     r0, 0x0(r30)
    beq-    branch_0x801f5a64
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801f5a64:
    extsh.  r0, r31
    ble-    branch_0x801f5a74
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f5a74:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__19THangingBridgeBoardFv
__dt__19THangingBridgeBoardFv: # 0x801f5a90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f5b10
    lis     r3, 0x803d
    addi    r3, r3, 0x5874
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f5b00
    lis     r3, 0x803d
    subi    r3, r3, 0x43d4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f5b00
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f5b00:
    extsh.  r0, r31
    ble-    branch_0x801f5b10
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f5b10:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TJumpMushroomFv
__dt__13TJumpMushroomFv: # 0x801f5b2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f5b94
    lis     r3, 0x803d
    addi    r3, r3, 0x59dc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f5b84
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f5b84:
    extsh.  r0, r31
    ble-    branch_0x801f5b94
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f5b94:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TMapObjMonteRootFv
__dt__16TMapObjMonteRootFv: # 0x801f5bb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f5c18
    lis     r3, 0x803d
    addi    r3, r3, 0x5b40
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f5c08
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f5c08:
    extsh.  r0, r31
    ble-    branch_0x801f5c18
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f5c18:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjMonte_cpp
__sinit_MapObjMonte_cpp: # 0x801f5c34
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x5900
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5c7c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801f5c7c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5cac
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801f5cac:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5cdc
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801f5cdc:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5d0c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801f5d0c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5d3c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801f5d3c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5d6c
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801f5d6c:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5d9c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801f5d9c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5dcc
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801f5dcc:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5dfc
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801f5dfc:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5e2c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801f5e2c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5e5c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801f5e5c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5e8c
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801f5e8c:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5ebc
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801f5ebc:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5eec
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801f5eec:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801f5f1c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801f5f1c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__16TMapObjMonteRootFv
_32___dt__16TMapObjMonteRootFv: # 0x801f5f30
    subi    r3, r3, 0x20
    b       __dt__16TMapObjMonteRootFv


.globl _32___dt__13TJumpMushroomFv
_32___dt__13TJumpMushroomFv: # 0x801f5f38
    subi    r3, r3, 0x20
    b       __dt__13TJumpMushroomFv


.globl _32___dt__19THangingBridgeBoardFv
_32___dt__19THangingBridgeBoardFv: # 0x801f5f40
    subi    r3, r3, 0x20
    b       __dt__19THangingBridgeBoardFv


.globl _32___dt__11TSwingBoardFv
_32___dt__11TSwingBoardFv: # 0x801f5f48
    subi    r3, r3, 0x20
    b       __dt__11TSwingBoardFv


.globl _32___dt__9TGoalFlagFv
_32___dt__9TGoalFlagFv: # 0x801f5f50
    subi    r3, r3, 0x20
    b       __dt__9TGoalFlagFv


.globl _32___dt__6TFluffFv
_32___dt__6TFluffFv: # 0x801f5f58
    subi    r3, r3, 0x20
    b       __dt__6TFluffFv


.globl _32___dt__13TFluffManagerFv
_32___dt__13TFluffManagerFv: # 0x801f5f60
    subi    r3, r3, 0x20
    b       __dt__13TFluffManagerFv

