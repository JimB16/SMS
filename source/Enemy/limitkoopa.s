
.globl __dt__18TLimitKoopaManagerFv
__dt__18TLimitKoopaManagerFv: # 0x8013a128
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013a170
    lis     r3, __vvt__18TLimitKoopaManager@ha
    addi    r0, r3, __vvt__18TLimitKoopaManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8013a170
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013a170:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__18TLimitKoopaManagerFv
loadAfter__18TLimitKoopaManagerFv: # 0x8013a18c
    mflr    r0
    lis     r4, unk_80387100@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, unk_80387100@l
    stw     r30, 0x10(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x1c0
    lbz     r0, 0x1c0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8013a1dc
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x120
    li      r5, 0x1c0
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8013a1dc:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x1c1
    lbz     r0, 0x1c1(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8013a20c
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x144
    li      r5, 0x1c1
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8013a20c:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x1c2
    lbz     r0, 0x1c2(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8013a23c
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x168
    li      r5, 0x1c2
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8013a23c:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x1c3
    lbz     r0, 0x1c3(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8013a26c
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x18c
    li      r5, 0x1c3
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8013a26c:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x1f3
    lbz     r0, 0x1f3(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8013a29c
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x1b0
    li      r5, 0x1f3
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8013a29c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__18TLimitKoopaManagerFR20JSUMemoryInputStream
load__18TLimitKoopaManagerFR20JSUMemoryInputStream: # 0x8013a2b4
    mflr    r0
    lis     r5, unk_80387100@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r27, r3, 0x0
    addi    r30, r5, unk_80387100@l
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x300
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8013a860
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1d4
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x1ec
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x1ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0xa8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x4da8(r2)
    addi    r3, r30, 0x1fc
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x1fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x208
    lfs     f0, -0x4da8(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x208
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x220
    lfs     f0, -0x4da8(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x220
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x230
    lfs     f0, -0x4da8(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x230
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x23c
    lfs     f0, -0x4da4(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x23c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x248
    lfs     f0, -0x4da0(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x248
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x254
    lfs     f0, -0x4d9c(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x254
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x264
    lfs     f0, -0x4d98(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x264
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x274
    lfs     f0, -0x4d94(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x274
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x280
    lfs     f0, -0x4d90(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x280
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x28c
    lfs     f0, -0x4d8c(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x28c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x298
    lfs     f0, -0x4d88(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x298
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x2a4
    lfs     f0, -0x4d90(r2)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x2a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x2b0
    lfs     f0, -0x4d90(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x2b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x2c0
    lfs     f0, -0x4d90(r2)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x2c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x2cc
    lfs     f0, -0x4d84(r2)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x2cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x2dc
    lfs     f0, -0x4d80(r2)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x2dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0x2e8
    lfs     f0, -0x4da8(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r24, r3, __vvt__10TParamT_l_@l
    stw     r24, 0x210(r31)
    li      r25, 0x12c
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r25, 0x220(r31)
    addi    r26, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x2f4
    stw     r26, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x2f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x224(r31)
    li      r0, 0x64
    addi    r3, r30, 0x308
    stw     r0, 0x234(r31)
    stw     r26, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x308
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x238(r31)
    addi    r3, r30, 0x31c
    stw     r25, 0x248(r31)
    stw     r26, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x31c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0x328
    lfs     f0, -0x4d7c(r2)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x328
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0x4d9c(r2)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x274(r31)
    addi    r3, r30, 0x340
    lfs     f0, -0x4d78(r2)
    stfs    f0, 0x284(r31)
    stw     r28, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x340
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x288(r31)
    addi    r3, r30, 0x350
    lfs     f0, -0x4d90(r2)
    stfs    f0, 0x298(r31)
    stw     r28, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0x350
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29c(r31)
    addi    r3, r30, 0x360
    lfs     f0, -0x4d74(r2)
    stfs    f0, 0x2ac(r31)
    stw     r28, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0x360
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b0(r31)
    addi    r3, r30, 0x370
    lfs     f0, -0x4d70(r2)
    stfs    f0, 0x2c0(r31)
    stw     r28, 0x2b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2c4
    addi    r6, r30, 0x370
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c4(r31)
    addi    r3, r30, 0x384
    lfs     f0, -0x4d6c(r2)
    stfs    f0, 0x2d4(r31)
    stw     r28, 0x2c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d8
    addi    r6, r30, 0x384
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d8(r31)
    addi    r3, r30, 0x398
    lfs     f0, -0x4d68(r2)
    stfs    f0, 0x2e8(r31)
    stw     r28, 0x2d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2ec
    addi    r6, r30, 0x398
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ec(r31)
    mr      r3, r31
    lfs     f0, -0x4d64(r2)
    stfs    f0, 0x2fc(r31)
    stw     r28, 0x2ec(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lfs     f0, -0x7bb8(r13)
    stfs    f0, 0xb8(r31)
    lfs     f0, -0x7bb4(r13)
    stfs    f0, 0xcc(r31)
    lfs     f0, -0x7bb0(r13)
    stfs    f0, 0xe0(r31)
    lfs     f0, -0x7bac(r13)
    stfs    f0, 0xf4(r31)
branch_0x8013a860:
    stw     r31, 0x38(r27)
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl createModelData__18TLimitKoopaManagerFv
createModelData__18TLimitKoopaManagerFv: # 0x8013a878
    mflr    r0
    lis     r4, entry_3215@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3215@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__18TLimitKoopaManagerFv
createEnemyInstance__18TLimitKoopaManagerFv: # 0x8013a8ac
    li      r3, 0x0
    blr


.globl __ct__18TLimitKoopaManagerFPCc
__ct__18TLimitKoopaManagerFPCc: # 0x8013a8b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__18TLimitKoopaManager@ha
    addi    r0, r3, __vvt__18TLimitKoopaManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23TNerveLimitKoopaStaggerFv
__dt__23TNerveLimitKoopaStaggerFv: # 0x8013a8f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013a934
    lis     r3, __vvt__23TNerveLimitKoopaStagger@ha
    addi    r0, r3, __vvt__23TNerveLimitKoopaStagger@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013a924
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013a924:
    extsh.  r0, r4
    ble-    branch_0x8013a934
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013a934:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__27TNerveLimitKoopaGetShoweredFv
__dt__27TNerveLimitKoopaGetShoweredFv: # 0x8013a94c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013a990
    lis     r3, __vvt__27TNerveLimitKoopaGetShowered@ha
    addi    r0, r3, __vvt__27TNerveLimitKoopaGetShowered@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013a980
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013a980:
    extsh.  r0, r4
    ble-    branch_0x8013a990
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013a990:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23TNerveLimitKoopaGetDownFv
__dt__23TNerveLimitKoopaGetDownFv: # 0x8013a9a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013a9ec
    lis     r3, __vvt__23TNerveLimitKoopaGetDown@ha
    addi    r0, r3, __vvt__23TNerveLimitKoopaGetDown@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013a9dc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013a9dc:
    extsh.  r0, r4
    ble-    branch_0x8013a9ec
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013a9ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__22TNerveLimitKoopaTumbleFv
__dt__22TNerveLimitKoopaTumbleFv: # 0x8013aa04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013aa58
    lis     r3, __vvt__22TNerveLimitKoopaTumble@ha
    addi    r0, r3, __vvt__22TNerveLimitKoopaTumble@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013aa48
    lis     r3, __vvt__20TNerveLimitKoopaTurn@ha
    addi    r0, r3, __vvt__20TNerveLimitKoopaTurn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013aa48
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013aa48:
    extsh.  r0, r4
    ble-    branch_0x8013aa58
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013aa58:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__20TNerveLimitKoopaTurnFv
__dt__20TNerveLimitKoopaTurnFv: # 0x8013aa70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013aab4
    lis     r3, __vvt__20TNerveLimitKoopaTurn@ha
    addi    r0, r3, __vvt__20TNerveLimitKoopaTurn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013aaa4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013aaa4:
    extsh.  r0, r4
    ble-    branch_0x8013aab4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013aab4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setUpHitActors__11TLimitKoopaFv
setUpHitActors__11TLimitKoopaFv: # 0x8013aacc
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a0(sp)
    stfd    f31, 0x198(sp)
    stfd    f30, 0x190(sp)
    stfd    f29, 0x188(sp)
    stfd    f28, 0x180(sp)
    stfd    f27, 0x178(sp)
    stmw    r26, 0x160(sp)
    mr      r30, r3
    lwz     r3, 0x74(r3)
    lwz     r0, 0x1b0(r30)
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r5, 0x58(r5)
    add     r31, r5, r0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x4
    bne-    branch_0x8013ab24
    li      r0, 0x1
    b       branch_0x8013ab64

branch_0x8013ab24:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x5
    bne-    branch_0x8013ab60
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x4d50(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8013ab60
    li      r0, 0x1
    b       branch_0x8013ab64

branch_0x8013ab60:
    li      r0, 0x0
branch_0x8013ab64:
    clrlwi. r0, r0, 24
    beq-    branch_0x8013acd0
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    lfs     f27, -0x4da8(r2)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x5
    bne-    branch_0x8013abc4
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x4d58(r2)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x10(r3)
    stw     r4, 0x15c(sp)
    lfs     f3, -0x4d4c(r2)
    stw     r0, 0x158(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x158(sp)
    fsubs   f0, f0, f1
    fsubs   f0, f0, f3
    fdivs   f27, f2, f0
branch_0x8013abc4:
    lfs     f28, -0x4d48(r2)
    li      r26, 0x0
    lfs     f29, -0x4d90(r2)
    li      r29, 0x0
    lfd     f30, -0x4d58(r2)
    lfs     f31, -0x4d60(r2)
    li      r28, 0x0
    lis     r27, 0x4330
branch_0x8013abe4:
    xoris   r0, r28, 0x8000
    lwz     r3, 0x70(r30)
    stw     r0, 0x15c(sp)
    addi    r0, r29, 0x178
    lwz     r3, 0x38(r3)
    stw     r27, 0x158(sp)
    lfs     f1, 0x24(r31)
    lfd     f0, 0x158(sp)
    fmuls   f4, f31, f1
    lfs     f10, 0x270(r3)
    fsubs   f2, f0, f30
    lfs     f9, 0x25c(r3)
    lfs     f0, 0x4(r31)
    fadds   f2, f29, f2
    lfs     f5, 0x20(r31)
    fcmpo   cr0, f10, f31
    lfs     f1, 0x0(r31)
    fmuls   f0, f31, f0
    fmuls   f3, f2, f9
    lfs     f6, 0x28(r31)
    lfs     f2, 0x8(r31)
    lfs     f7, 0x2c(r31)
    cror    2, 0, 2
    fmuls   f8, f28, f3
    lfs     f3, 0xc(r31)
    lfs     f11, 0x14(r30)
    lwzx    r3, r30, r0
    fmuls   f8, f8, f27
    fmadds  f0, f8, f1, f0
    fmadds  f4, f8, f5, f4
    fmadds  f0, f31, f2, f0
    fmadds  f1, f31, f6, f4
    fadds   f0, f3, f0
    fadds   f1, f7, f1
    bne-    branch_0x8013ac74
    fmuls   f10, f29, f9
branch_0x8013ac74:
    stfs    f0, 0x10(r3)
    stfs    f11, 0x14(r3)
    stfs    f1, 0x18(r3)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    stfs    f9, 0x50(r3)
    stfs    f10, 0x54(r3)
    stfs    f9, 0x58(r3)
    stfs    f10, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    addi    r26, r26, 0x1
    cmpwi   r26, 0xa
    addi    r29, r29, 0x4
    addi    r28, r28, 0x2
    blt+    branch_0x8013abe4
    b       branch_0x8013ae5c

branch_0x8013acd0:
    lwz     r5, 0x178(r30)
    li      r3, 0x8
    subfic  r0, r3, 0xa
    lwz     r4, 0x64(r5)
    cmpwi   r3, 0xa
    mtctr   r0
    slwi    r3, r3, 2
    ori     r0, r4, 0x2
    stw     r0, 0x64(r5)
    lwz     r0, 0x64(r5)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r5)
    lwz     r0, 0x64(r5)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r5)
    lwz     r4, 0x17c(r30)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x180(r30)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x184(r30)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x188(r30)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x18c(r30)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x190(r30)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x194(r30)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    bge-    branch_0x8013ae5c
branch_0x8013ae28:
    addi    r0, r3, 0x178
    lwzx    r4, r30, r0
    addi    r3, r3, 0x4
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    bdnz+      branch_0x8013ae28
branch_0x8013ae5c:
    lwz     r3, 0x74(r30)
    lwz     r0, 0x1b8(r30)
    lwz     r4, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x70(r30)
    lwz     r5, 0x58(r4)
    lwz     r4, 0x38(r3)
    add     r5, r5, r0
    lfs     f3, 0x1c(r5)
    lfs     f0, -0x4d7c(r2)
    lwz     r3, 0x1a8(r30)
    fsubs   f3, f3, f0
    lfs     f2, 0xc(r5)
    lfs     f4, 0x2c(r5)
    lfs     f1, 0x284(r4)
    lfs     f0, -0x4d90(r2)
    stfs    f2, 0x10(r3)
    fmuls   f0, f0, f1
    stfs    f3, 0x14(r3)
    stfs    f4, 0x18(r3)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    stfs    f1, 0x50(r3)
    stfs    f0, 0x54(r3)
    stfs    f1, 0x58(r3)
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    lmw     r26, 0x160(sp)
    lwz     r0, 0x1a4(sp)
    lfd     f31, 0x198(sp)
    lfd     f30, 0x190(sp)
    mtlr    r0
    lfd     f29, 0x188(sp)
    lfd     f28, 0x180(sp)
    lfd     f27, 0x178(sp)
    addi    sp, sp, 0x1a0
    blr


.globl calcRootMatrix__11TLimitKoopaFv
calcRootMatrix__11TLimitKoopaFv: # 0x8013af0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r3, 0x70(r3)
    lwz     r3, 0x38(r3)
    lfs     f0, 0xcc(r3)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lfs     f1, 0x16c(r31)
    bl      r2d__14TDirectionCalcFf
    stfs    f1, 0x34(r31)
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl receiveMessage__11TLimitKoopaFP9THitActorUl
receiveMessage__11TLimitKoopaFP9THitActorUl: # 0x8013af60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      receiveMessage__11TSpineEnemyFP9THitActorUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getGravityY__11TLimitKoopaCFv
getGravityY__11TLimitKoopaCFv: # 0x8013af80
    lwz     r3, 0x70(r3)
    lwz     r3, 0x38(r3)
    lfs     f1, 0xf4(r3)
    blr


.globl startHipDrop__11TLimitKoopaFv
startHipDrop__11TLimitKoopaFv: # 0x8013af90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    mr      r4, r31
    lfs     f1, -0x4d60(r2)
    addi    r3, sp, 0x64
    lfs     f0, -0x4da8(r2)
    addi    r5, sp, 0x78
    stfs    f1, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    stfs    f1, 0xa8(sp)
    lwz     r6, 0x70(r31)
    lfs     f0, 0xa0(sp)
    lwz     r6, 0x38(r6)
    lfs     f1, 0xe0(r6)
    fmuls   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lfs     f0, 0xa4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa4(sp)
    lfs     f0, 0xa8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa8(sp)
    lwz     r7, R13Off_m0x60b4(r13)
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r6, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x98(sp)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x94(sp)
    lfs     f5, 0x10(r31)
    lfs     f0, 0x90(sp)
    lfs     f4, 0x94(sp)
    fsubs   f0, f0, f5
    lfs     f3, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f2, 0x98(sp)
    fsubs   f3, f4, f3
    fadds   f0, f5, f0
    fsubs   f1, f2, f1
    stfs    f0, 0x78(sp)
    lfs     f0, 0x14(r31)
    fadds   f0, f0, f3
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x18(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x80(sp)
    lwz     r6, 0x70(r31)
    lfs     f1, 0xa4(sp)
    lwz     r6, 0x38(r6)
    lfs     f2, 0xf4(r6)
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x64(sp)
    lwz     r3, 0x68(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x6c(sp)
    stw     r3, 0xa4(sp)
    lfs     f0, -0x4d60(r2)
    stw     r0, 0xa8(sp)
    lfs     f2, 0xa0(sp)
    lfs     f1, 0xa4(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0xa8(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013b0c0
    fmr     f2, f1
    b       branch_0x8013b0e4

branch_0x8013b0c0:
    frsqrte f4, f1
    lfs     f3, -0x4d40(r2)
    lfs     f0, -0x4d3c(r2)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f2, f1, f0
branch_0x8013b0e4:
    lfs     f0, -0x4d7c(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x8013b16c
    lfs     f0, -0x4d38(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013b114
    lfs     f0, -0x4d60(r2)
    stfs    f0, 0xa8(sp)
    stfs    f0, 0xa4(sp)
    stfs    f0, 0xa0(sp)
    b       branch_0x8013b144

branch_0x8013b114:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4da8(r2)
    lfs     f0, 0xa0(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lfs     f0, 0xa4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa4(sp)
    lfs     f0, 0xa8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa8(sp)
branch_0x8013b144:
    lfs     f0, 0xa0(sp)
    lfs     f1, -0x4d7c(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lfs     f0, 0xa4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa4(sp)
    lfs     f0, 0xa8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa8(sp)
branch_0x8013b16c:
    lfs     f0, 0xa0(sp)
    stfs    f0, 0xac(r31)
    lfs     f0, 0xa4(sp)
    stfs    f0, 0xb0(r31)
    lfs     f0, 0xa8(sp)
    stfs    f0, 0xb4(r31)
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl bind__11TLimitKoopaFv
bind__11TLimitKoopaFv: # 0x8013b198
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r3, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0xac(r31)
    lfs     f0, 0x15c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xac(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x160(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xb4(r31)
    lfs     f0, 0x164(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xb4(r31)
    lfs     f0, -0x4d34(r2)
    stfs    f0, 0xc8(r31)
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x4da8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r31)
    lfs     f0, -0x4d30(r2)
    lfs     f2, 0xc8(r31)
    lfs     f1, 0x2c(sp)
    fadds   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013b2b0
    stfs    f2, 0x2c(sp)
    li      r0, 0x1
    stb     r0, 0x168(r31)
    lfs     f0, -0x4d60(r2)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x164(r31)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
branch_0x8013b2b0:
    lwz     r0, 0x28(sp)
    addi    r3, sp, 0x10
    lwz     r5, 0x2c(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x10(sp)
    lwz     r0, 0x30(sp)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x18(sp)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl perform__11TLimitKoopaFUlPQ26JDrama9TGraphics
perform__11TLimitKoopaFUlPQ26JDrama9TGraphics: # 0x8013b300
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x170(sp)
    stmw    r27, 0x15c(sp)
    addi    r31, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    li      r29, 0x0
    li      r30, 0x0
branch_0x8013b328:
    addi    r0, r30, 0x178
    lwzx    r3, r31, r0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0xa
    addi    r30, r30, 0x4
    blt+    branch_0x8013b328
    lwz     r3, 0x1a8(r31)
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1a0(r31)
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1a4(r31)
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1ac(r31)
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r27, 31
    beq-    branch_0x8013b420
    mr      r3, r31
    bl      setUpHitActors__11TLimitKoopaFv
    addi    r4, r31, 0x150
    lwz     r3, 0x150(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8013b3f0
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x8013b3f0:
    addi    r4, r31, 0x154
    lwz     r3, 0x154(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8013b408
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x8013b408:
    addi    r4, r31, 0x158
    lwz     r3, 0x158(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8013b420
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x8013b420:
    rlwinm. r0, r27, 0, 30, 30
    beq-    branch_0x8013b638
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x4
    bne-    branch_0x8013b444
    li      r0, 0x1
    b       branch_0x8013b484

branch_0x8013b444:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x5
    bne-    branch_0x8013b480
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x4d50(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8013b480
    li      r0, 0x1
    b       branch_0x8013b484

branch_0x8013b480:
    li      r0, 0x0
branch_0x8013b484:
    clrlwi. r0, r0, 24
    beq-    branch_0x8013b638
    lwz     r3, 0x70(r31)
    mr      r7, r31
    li      r4, 0x1f3
    lwz     r3, 0x38(r3)
    li      r6, 0x3
    lfs     f0, 0x20c(r3)
    stfs    f0, 0x144(sp)
    stfs    f0, 0x148(sp)
    stfs    f0, 0x14c(sp)
    lwz     r3, 0x74(r31)
    lwz     r0, 0x1b0(r31)
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8013b508
    lfs     f0, 0x144(sp)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x148(sp)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x14c(sp)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x144(sp)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x148(sp)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x14c(sp)
    stfs    f0, 0x17c(r3)
branch_0x8013b508:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lwz     r0, 0x1b0(r31)
    li      r4, 0x1c3
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r30, r3
    beq-    branch_0x8013b554
    addi    r3, r30, 0x154
    addi    r4, sp, 0x144
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8013b64c
    addi    r3, r30, 0x174
    addi    r4, sp, 0x144
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8013b64c
branch_0x8013b554:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lwz     r0, 0x1b0(r31)
    li      r4, 0x1c2
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r30, r3
    beq-    branch_0x8013b5a0
    addi    r3, r30, 0x154
    addi    r4, sp, 0x144
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8013b64c
    addi    r3, r30, 0x174
    addi    r4, sp, 0x144
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8013b64c
branch_0x8013b5a0:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lwz     r0, 0x1b0(r31)
    li      r4, 0x1c1
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r30, r3
    beq-    branch_0x8013b5ec
    addi    r3, r30, 0x154
    addi    r4, sp, 0x144
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8013b64c
    addi    r3, r30, 0x174
    addi    r4, sp, 0x144
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8013b64c
branch_0x8013b5ec:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lwz     r0, 0x1b0(r31)
    li      r4, 0x1c0
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r30, r3
    beq-    branch_0x8013b638
    addi    r3, r30, 0x154
    addi    r4, sp, 0x144
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8013b64c
    addi    r3, r30, 0x174
    addi    r4, sp, 0x144
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8013b64c
branch_0x8013b638:
    lmw     r27, 0x15c(sp)
    lwz     r0, 0x174(sp)
    addi    sp, sp, 0x170
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8013b64c
set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8013b64c: # 0x8013b64c
    lfs     f0, 0x0(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    blr


.globl reset__11TLimitKoopaFv
reset__11TLimitKoopaFv: # 0x8013b668
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    bl      reset__11TSpineEnemyFv
    lwz     r3, 0x70(r30)
    li      r4, 0xc
    lwz     r31, 0x74(r30)
    lwz     r5, 0x38(r3)
    mr      r3, r31
    lfs     f31, 0x1bc(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8013b6b8
    addi    r3, r31, 0x0
    li      r4, 0xc
    bl      setBckFromIndex__6MActorFi
branch_0x8013b6b8:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    li      r4, 0x0
    li      r0, 0x1
    lwz     r3, 0x8c(r30)
    stw     r4, 0x8(r3)
    stw     r4, 0x150(r30)
    stw     r4, 0x154(r30)
    stw     r4, 0x158(r30)
    stb     r0, 0x168(r30)
    lfs     f0, -0x4d60(r2)
    stfs    f0, 0x16c(r30)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl init__11TLimitKoopaFP12TLiveManager
init__11TLimitKoopaFP12TLiveManager: # 0x8013b70c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    lfs     f0, -0x4d98(r2)
    stfs    f0, 0xbc(r3)
    lfs     f0, -0x4d2c(r2)
    stfs    f0, 0xc0(r31)
    bl      init__11TSpineEnemyFP12TLiveManager
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r31)
    lbz     r0, R13Off_m0x6470(r13)
    extsb.  r0, r0
    bne-    branch_0x8013b7a8
    addi    r3, r13, R13Off_m0x646c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__20TNerveLimitKoopaTurn@ha
    addi    r0, r3, __vvt__20TNerveLimitKoopaTurn@l
    lis     r3, __vvt__20TNerveLimitKoopaWait@ha
    stw     r0, R13Off_m0x646c(r13)
    addi    r0, r3, __vvt__20TNerveLimitKoopaWait@l
    lis     r4, __dt__20TNerveLimitKoopaWaitFv@ha
    stw     r0, R13Off_m0x646c(r13)
    lis     r3, unk_803f3b54@h
    addi    r5, r3, unk_803f3b54@l
    addi    r4, r4, __dt__20TNerveLimitKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x646c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6470(r13)
branch_0x8013b7a8:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x646c
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8013b7e0
    li      r4, 0x10
    bl      initSimpleMotionBlend__12MActorAnmBckFi
branch_0x8013b7e0:
    lfs     f0, -0x4d60(r2)
    mr      r3, r31
    stfs    f0, 0x170(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    li      r5, 0x0
    lwz     r3, 0xb0(r3)
    lhz     r4, 0x8(r3)
    addi    r30, r3, 0x0
    cmplwi  r4, 0x0
    ble-    branch_0x8013b858
    cmplwi  r4, 0x8
    addi    r0, r4, -0x8
    ble-    branch_0x8013b84c
    clrlwi  r0, r0, 16
    b       branch_0x8013b838

branch_0x8013b834:
    addi    r5, r5, 0x8
branch_0x8013b838:
    clrlwi  r3, r5, 16
    cmplw   r3, r0
    blt+    branch_0x8013b834
    b       branch_0x8013b84c

branch_0x8013b848:
    addi    r5, r5, 0x1
branch_0x8013b84c:
    clrlwi  r0, r5, 16
    cmplw   r0, r4
    blt+    branch_0x8013b848
branch_0x8013b858:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x4d28
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x1b8(r31)
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x4d24
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x1b0(r31)
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x4d1c
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x1b4(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x4(r3)
    lis     r3, KoopaNeckCallBack__9_unnamed_FP7J3DNodei_8013bf0c@ha
    lwz     r4, 0x1b0(r31)
    addi    r0, r3, KoopaNeckCallBack__9_unnamed_FP7J3DNodei_8013bf0c@l
    lwz     r5, 0x20(r5)
    clrlslwi  r3, r4, 16, 2
    lwzx    r3, r5, r3
    stw     r0, 0x8(r3)
    stw     r31, 0x4(r3)
    b       branch_0x8013b8bc

branch_0x8013b8b8:
    b       branch_0x8013b84c

branch_0x8013b8bc:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl __dt__20TNerveLimitKoopaWaitFv
__dt__20TNerveLimitKoopaWaitFv: # 0x8013b8d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013b928
    lis     r3, __vvt__20TNerveLimitKoopaWait@ha
    addi    r0, r3, __vvt__20TNerveLimitKoopaWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013b918
    lis     r3, __vvt__20TNerveLimitKoopaTurn@ha
    addi    r0, r3, __vvt__20TNerveLimitKoopaTurn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013b918
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013b918:
    extsh.  r0, r4
    ble-    branch_0x8013b928
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013b928:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__11TLimitKoopaFv
loadAfter__11TLimitKoopaFv: # 0x8013b940
    mflr    r0
    lis     r4, unk_80387100@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x188(sp)
    stmw    r18, 0x150(sp)
    addi    r29, r3, 0x0
    addi    r31, r4, unk_80387100@l
    bl      loadAfter__Q26JDrama8TNameRefFv
    lis     r4, __vvt__16TLimitKoopaParts@ha
    lis     r3, __vvt__16TLimitKoopaFlame@ha
    addi    r28, r4, __vvt__16TLimitKoopaParts@l
    addi    r27, r3, __vvt__16TLimitKoopaFlame@l
    addi    r30, r28, 0x24
    addi    r22, r27, 0x24
    addi    r24, sp, 0xe0
    addi    r23, sp, 0xd8
    li      r21, 0x0
    li      r19, 0x0
    lis     r25, unk_08000030@h
branch_0x8013b98c:
    li      r3, 0xf8
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8013ba80
    stw     r20, 0x134(sp)
    addi    r4, r31, 0x3ac
    lwz     r3, 0x134(sp)
    bl      __ct__10TLiveActorFPCc
    lwz     r26, 0x134(sp)
    addi    r3, r31, 0x3bc
    stw     r28, 0x0(r26)
    stw     r30, 0x20(r26)
    stw     r29, 0xf4(r26)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r18, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r18)
    addi    r4, r3, 0x0
    addi    r3, r18, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x3bc
    mtlr    r12
    blrl
    addi    r18, r3, 0x10
    addi    r4, r18, 0x0
    addi    r3, sp, 0x118
    bl      end__Q27JGadget26TList_pointer_P9THitActor_Fv
    lwz     r0, 0x118(sp)
    addi    r4, r18, 0x0
    addi    r5, r24, 0x0
    stw     r0, 0x114(sp)
    addi    r3, sp, 0xdc
    addi    r6, sp, 0x134
    lwz     r0, 0x114(sp)
    stw     r0, 0xe0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xdc(sp)
    addi    r4, r23, 0x0
    addi    r3, sp, 0x110
    stw     r0, 0xd8(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lfs     f1, -0x4d14(r2)
    addi    r3, r26, 0x0
    addi    r4, r25, unk_08000030@l
    fmr     f2, f1
    li      r5, 0x5
    fmr     f3, f1
    lis     r6, 0x8000
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r26)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r26)
    lwz     r0, 0x64(r26)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r26)
    lwz     r0, 0x64(r26)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r26)
    stw     r27, 0x0(r20)
    stw     r22, 0x20(r20)
branch_0x8013ba80:
    addi    r21, r21, 0x1
    addi    r0, r19, 0x178
    cmpwi   r21, 0xa
    stwx    r20, r29, r0
    addi    r19, r19, 0x4
    blt+    branch_0x8013b98c
    lis     r3, __vvt__15TLimitKoopaHand@ha
    addi    r25, r3, __vvt__15TLimitKoopaHand@l
    lis     r3, __vvt__16TLimitKoopaParts@ha
    addi    r22, r25, 0x24
    addi    r26, r3, __vvt__16TLimitKoopaParts@l
    addi    r23, sp, 0xcc
    addi    r24, sp, 0xc4
    li      r21, 0x0
    li      r19, 0x0
    lis     r28, unk_08000032@h
branch_0x8013bac0:
    li      r3, 0xf8
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8013bbb4
    stw     r20, 0x12c(sp)
    addi    r4, r31, 0x3c8
    lwz     r3, 0x12c(sp)
    bl      __ct__10TLiveActorFPCc
    lwz     r27, 0x12c(sp)
    addi    r3, r31, 0x3bc
    stw     r26, 0x0(r27)
    stw     r30, 0x20(r27)
    stw     r29, 0xf4(r27)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r18, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r18)
    addi    r4, r3, 0x0
    addi    r3, r18, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x3bc
    mtlr    r12
    blrl
    addi    r18, r3, 0x10
    addi    r4, r18, 0x0
    addi    r3, sp, 0x10c
    bl      end__Q27JGadget26TList_pointer_P9THitActor_Fv
    lwz     r0, 0x10c(sp)
    addi    r4, r18, 0x0
    addi    r5, r23, 0x0
    stw     r0, 0x108(sp)
    addi    r3, sp, 0xc8
    addi    r6, sp, 0x12c
    lwz     r0, 0x108(sp)
    stw     r0, 0xcc(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xc8(sp)
    addi    r4, r24, 0x0
    addi    r3, sp, 0x104
    stw     r0, 0xc4(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lfs     f1, -0x4d14(r2)
    addi    r3, r27, 0x0
    addi    r4, r28, unk_08000032@l
    fmr     f2, f1
    li      r5, 0x5
    fmr     f3, f1
    lis     r6, 0x8000
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r27)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r27)
    lwz     r0, 0x64(r27)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r27)
    lwz     r0, 0x64(r27)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r27)
    stw     r25, 0x0(r20)
    stw     r22, 0x20(r20)
branch_0x8013bbb4:
    addi    r21, r21, 0x1
    addi    r0, r19, 0x1a0
    cmpwi   r21, 0x2
    stwx    r20, r29, r0
    addi    r19, r19, 0x4
    blt+    branch_0x8013bac0
    li      r3, 0xf8
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8013bcd8
    stw     r20, 0x124(sp)
    addi    r4, r31, 0x3d4
    lwz     r3, 0x124(sp)
    bl      __ct__10TLiveActorFPCc
    lis     r3, __vvt__16TLimitKoopaParts@ha
    lwz     r28, 0x124(sp)
    addi    r0, r3, __vvt__16TLimitKoopaParts@l
    stw     r0, 0x0(r28)
    addi    r3, r31, 0x3bc
    stw     r30, 0x20(r28)
    stw     r29, 0xf4(r28)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r18, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r18)
    addi    r4, r3, 0x0
    addi    r3, r18, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x3bc
    mtlr    r12
    blrl
    addi    r18, r3, 0x10
    addi    r4, r18, 0x0
    addi    r3, sp, 0x100
    bl      end__Q27JGadget26TList_pointer_P9THitActor_Fv
    lwz     r0, 0x100(sp)
    addi    r5, sp, 0xb8
    addi    r4, r18, 0x0
    stw     r0, 0xfc(sp)
    addi    r3, sp, 0xb4
    addi    r6, sp, 0x124
    lwz     r0, 0xfc(sp)
    stw     r0, 0xb8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xb4(sp)
    addi    r4, sp, 0xb0
    addi    r3, sp, 0xf8
    stw     r0, 0xb0(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lfs     f1, -0x4d14(r2)
    lis     r4, unk_08000031@h
    addi    r3, r28, 0x0
    fmr     f2, f1
    addi    r4, r4, unk_08000031@l
    fmr     f3, f1
    li      r5, 0x5
    fmr     f4, f1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r28)
    lis     r3, __vvt__15TLimitKoopaHead@ha
    addi    r3, r3, __vvt__15TLimitKoopaHead@l
    ori     r0, r0, 0x2
    stw     r0, 0x64(r28)
    addi    r0, r3, 0x24
    lwz     r4, 0x64(r28)
    ori     r4, r4, 0x4
    stw     r4, 0x64(r28)
    lwz     r4, 0x64(r28)
    ori     r4, r4, 0x1
    stw     r4, 0x64(r28)
    stw     r3, 0x0(r20)
    stw     r0, 0x20(r20)
branch_0x8013bcd8:
    stw     r20, 0x1a8(r29)
    li      r3, 0xf8
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8013bde8
    stw     r20, 0x11c(sp)
    addi    r4, r31, 0x3e0
    lwz     r3, 0x11c(sp)
    bl      __ct__10TLiveActorFPCc
    lis     r3, __vvt__16TLimitKoopaParts@ha
    lwz     r28, 0x11c(sp)
    addi    r0, r3, __vvt__16TLimitKoopaParts@l
    stw     r0, 0x0(r28)
    addi    r3, r31, 0x3bc
    stw     r30, 0x20(r28)
    stw     r29, 0xf4(r28)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r18, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r18)
    addi    r4, r3, 0x0
    addi    r3, r18, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x3bc
    mtlr    r12
    blrl
    addi    r18, r3, 0x10
    addi    r4, r18, 0x0
    addi    r3, sp, 0xf4
    bl      end__Q27JGadget26TList_pointer_P9THitActor_Fv
    lwz     r0, 0xf4(sp)
    addi    r5, sp, 0xa4
    addi    r4, r18, 0x0
    stw     r0, 0xf0(sp)
    addi    r3, sp, 0xa0
    addi    r6, sp, 0x11c
    lwz     r0, 0xf0(sp)
    stw     r0, 0xa4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xa0(sp)
    addi    r4, sp, 0x9c
    addi    r3, sp, 0xec
    stw     r0, 0x9c(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lfs     f1, -0x4d14(r2)
    lis     r4, unk_08000033@h
    addi    r3, r28, 0x0
    fmr     f2, f1
    addi    r4, r4, unk_08000033@l
    fmr     f3, f1
    li      r5, 0x5
    fmr     f4, f1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r28)
    lis     r3, __vvt__15TLimitKoopaBody@ha
    addi    r3, r3, __vvt__15TLimitKoopaBody@l
    ori     r0, r0, 0x2
    stw     r0, 0x64(r28)
    addi    r0, r3, 0x24
    lwz     r4, 0x64(r28)
    ori     r4, r4, 0x4
    stw     r4, 0x64(r28)
    lwz     r4, 0x64(r28)
    ori     r4, r4, 0x1
    stw     r4, 0x64(r28)
    stw     r3, 0x0(r20)
    stw     r0, 0x20(r20)
branch_0x8013bde8:
    stw     r20, 0x1ac(r29)
    lmw     r18, 0x150(sp)
    lwz     r0, 0x18c(sp)
    addi    sp, sp, 0x188
    mtlr    r0
    blr


.globl __dt__16TLimitKoopaPartsFv
__dt__16TLimitKoopaPartsFv: # 0x8013be00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013be50
    lis     r3, __vvt__16TLimitKoopaParts@ha
    addi    r3, r3, __vvt__16TLimitKoopaParts@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
    extsh.  r0, r31
    ble-    branch_0x8013be50
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013be50:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__11TLimitKoopaFR20JSUMemoryInputStream
load__11TLimitKoopaFR20JSUMemoryInputStream: # 0x8013be6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__11TLimitKoopaFPCc
__ct__11TLimitKoopaFPCc: # 0x8013be8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__11TLimitKoopa@ha
    addi    r3, r3, __vvt__11TLimitKoopa@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x16c
    stw     r0, 0x20(r31)
    bl      __ct__14TDirectionCalcFv
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lfs     f0, -0x4d10(r2)
    stfs    f0, 0xb8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl KoopaNeckCallBack__9_unnamed_FP7J3DNodei_8013bf0c
KoopaNeckCallBack__9_unnamed_FP7J3DNodei_8013bf0c: # 0x8013bf0c
    li      r3, 0x1
    blr


.globl attack___15TLimitKoopaBodyFP9THitActor
attack___15TLimitKoopaBodyFP9THitActor: # 0x8013bf14
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x0
    addi    r3, r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r4)
    mr      r4, r0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__15TLimitKoopaBodyFP9THitActorUl
receiveMessage__15TLimitKoopaBodyFP9THitActorUl: # 0x8013bf50
    li      r3, 0x1
    blr


.globl attack___15TLimitKoopaHeadFP9THitActor
attack___15TLimitKoopaHeadFP9THitActor: # 0x8013bf58
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x0
    addi    r3, r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r4)
    mr      r4, r0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__15TLimitKoopaHeadFP9THitActorUl
receiveMessage__15TLimitKoopaHeadFP9THitActorUl: # 0x8013bf94
    mflr    r0
    cmpwi   r5, 0xf
    stw     r0, 0x4(sp)
    lis     r4, unk_803f3b18@h
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r4, unk_803f3b18@l
    stw     r30, 0x68(sp)
    beq-    branch_0x8013bfbc
    b       branch_0x8013c16c

branch_0x8013bfbc:
    lbz     r0, R13Off_m0x6478(r13)
    lwz     r30, 0xf4(r3)
    extsb.  r0, r0
    bne-    branch_0x8013c008
    addi    r3, r13, R13Off_m0x6474
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__20TNerveLimitKoopaTurn@ha
    addi    r0, r3, __vvt__20TNerveLimitKoopaTurn@l
    lis     r3, __vvt__22TNerveLimitKoopaTumble@ha
    stw     r0, R13Off_m0x6474(r13)
    addi    r0, r3, __vvt__22TNerveLimitKoopaTumble@l
    lis     r3, __dt__22TNerveLimitKoopaTumbleFv@ha
    stw     r0, R13Off_m0x6474(r13)
    addi    r4, r3, __dt__22TNerveLimitKoopaTumbleFv@l
    addi    r3, r13, R13Off_m0x6474
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6478(r13)
branch_0x8013c008:
    lwz     r3, 0x8c(r30)
    addi    r4, r13, R13Off_m0x6474
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x8013c16c
    lbz     r0, R13Off_m0x6468(r13)
    extsb.  r0, r0
    bne-    branch_0x8013c05c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveLimitKoopaGetDown@ha
    stw     r0, R13Off_m0x6464(r13)
    addi    r0, r3, __vvt__23TNerveLimitKoopaGetDown@l
    lis     r3, __dt__23TNerveLimitKoopaGetDownFv@ha
    stw     r0, R13Off_m0x6464(r13)
    addi    r4, r3, __dt__23TNerveLimitKoopaGetDownFv@l
    addi    r3, r13, R13Off_m0x6464
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6468(r13)
branch_0x8013c05c:
    lwz     r3, 0x8c(r30)
    addi    r4, r13, R13Off_m0x6464
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x8013c16c
    lbz     r0, R13Off_m0x6460(r13)
    extsb.  r0, r0
    bne-    branch_0x8013c0b0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveLimitKoopaStagger@ha
    stw     r0, R13Off_m0x645c(r13)
    addi    r0, r3, __vvt__23TNerveLimitKoopaStagger@l
    lis     r3, __dt__23TNerveLimitKoopaStaggerFv@ha
    stw     r0, R13Off_m0x645c(r13)
    addi    r4, r3, __dt__23TNerveLimitKoopaStaggerFv@l
    addi    r3, r13, R13Off_m0x645c
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6460(r13)
branch_0x8013c0b0:
    lwz     r3, 0x8c(r30)
    addi    r4, r13, R13Off_m0x645c
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x8013c124
    lbz     r0, R13Off_m0x6458(r13)
    extsb.  r0, r0
    bne-    branch_0x8013c100
    addi    r3, r13, R13Off_m0x6454
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__27TNerveLimitKoopaGetShowered@ha
    addi    r0, r3, __vvt__27TNerveLimitKoopaGetShowered@l
    lis     r3, __dt__27TNerveLimitKoopaGetShoweredFv@ha
    stw     r0, R13Off_m0x6454(r13)
    addi    r4, r3, __dt__27TNerveLimitKoopaGetShoweredFv@l
    addi    r3, r13, R13Off_m0x6454
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6458(r13)
branch_0x8013c100:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x6454
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8013c118
    stw     r0, 0x1c(r4)
branch_0x8013c118:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8013c124:
    lbz     r0, R13Off_m0x6458(r13)
    extsb.  r0, r0
    bne-    branch_0x8013c160
    addi    r3, r13, R13Off_m0x6454
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__27TNerveLimitKoopaGetShowered@ha
    addi    r0, r3, __vvt__27TNerveLimitKoopaGetShowered@l
    lis     r3, __dt__27TNerveLimitKoopaGetShoweredFv@ha
    stw     r0, R13Off_m0x6454(r13)
    addi    r4, r3, __dt__27TNerveLimitKoopaGetShoweredFv@l
    addi    r3, r13, R13Off_m0x6454
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6458(r13)
branch_0x8013c160:
    addi    r4, r13, R13Off_m0x6454
    lwz     r3, 0x8c(r30)
    bl      pushNerve__24TSpineBase_10TLiveActor_FPC24TNerveBase_10TLiveActor_
branch_0x8013c16c:
    lwz     r0, 0x74(sp)
    li      r3, 0x1
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl attack___15TLimitKoopaHandFP9THitActor
attack___15TLimitKoopaHandFP9THitActor: # 0x8013c188
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x0
    addi    r3, r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r4)
    mr      r4, r0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__15TLimitKoopaHandFP9THitActorUl
receiveMessage__15TLimitKoopaHandFP9THitActorUl: # 0x8013c1c4
    li      r3, 0x1
    blr


.globl attack___16TLimitKoopaFlameFP9THitActor
attack___16TLimitKoopaFlameFP9THitActor: # 0x8013c1cc
    mflr    r0
    li      r5, 0xa
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    lwz     r12, 0x0(r4)
    addi    r4, r30, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8013c250
    lwz     r31, 0xf4(r30)
    lwz     r3, 0x70(r31)
    bl      getSaveParam__13TEnemyManagerCFv
    lwz     r30, 0x74(r31)
    li      r4, 0x3
    lfs     f31, 0x194(r3)
    mr      r3, r30
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8013c240
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
branch_0x8013c240:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x8013c250:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl receiveMessage__16TLimitKoopaFlameFP9THitActorUl
receiveMessage__16TLimitKoopaFlameFP9THitActorUl: # 0x8013c26c
    cmpwi   r5, 0xf
    beq-    branch_0x8013c278
    b       branch_0x8013c280

branch_0x8013c278:
    li      r3, 0x0
    blr

branch_0x8013c280:
    li      r3, 0x1
    blr


.globl perform__16TLimitKoopaPartsFUlPQ26JDrama9TGraphics
perform__16TLimitKoopaPartsFUlPQ26JDrama9TGraphics: # 0x8013c288
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__10TLiveActorFUlPQ26JDrama9TGraphics
    clrlwi. r0, r30, 31
    beq-    branch_0x8013c2f0
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8013c2e4

branch_0x8013c2c0:
    mr      r3, r29
    lwz     r4, 0x44(r29)
    lwz     r12, 0x0(r29)
    lwzx    r4, r4, r31
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8013c2e4:
    lhz     r0, 0x48(r29)
    cmpw    r30, r0
    blt+    branch_0x8013c2c0
branch_0x8013c2f0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl execute__23TNerveLimitKoopaGetDownCFP24TSpineBase_10TLiveActor_
execute__23TNerveLimitKoopaGetDownCFP24TSpineBase_10TLiveActor_: # 0x8013c30c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x1
    beq-    branch_0x8013c3b4
    bge-    branch_0x8013c34c
    cmpwi   r3, 0x0
    bge-    branch_0x8013c358
    b       branch_0x8013c430

branch_0x8013c34c:
    cmpwi   r3, 0x7
    beq-    branch_0x8013c410
    b       branch_0x8013c430

branch_0x8013c358:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8013c470
    lwz     r3, 0x70(r30)
    li      r4, 0x1
    lwz     r31, 0x74(r30)
    lwz     r5, 0x38(r3)
    mr      r3, r31
    lfs     f31, 0x1e4(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8013c3a0
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
branch_0x8013c3a0:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x8013c470

branch_0x8013c3b4:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8013c470
    lwz     r3, 0x70(r30)
    li      r4, 0x7
    lwz     r31, 0x74(r30)
    lwz     r5, 0x38(r3)
    mr      r3, r31
    lfs     f31, 0x1e4(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8013c3fc
    addi    r3, r31, 0x0
    li      r4, 0x7
    bl      setBckFromIndex__6MActorFi
branch_0x8013c3fc:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x8013c470

branch_0x8013c410:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8013c470
    li      r3, 0x1
    b       branch_0x8013c474

branch_0x8013c430:
    lwz     r3, 0x70(r30)
    li      r4, 0x0
    lwz     r31, 0x74(r30)
    lwz     r5, 0x38(r3)
    mr      r3, r31
    lfs     f31, 0x1e4(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8013c460
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8013c460:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x8013c470:
    li      r3, 0x0
branch_0x8013c474:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    mtlr    r0
    lwz     r30, 0xa0(sp)
    addi    sp, sp, 0xb0
    blr


.globl execute__27TNerveLimitKoopaGetShoweredCFP24TSpineBase_10TLiveActor_
execute__27TNerveLimitKoopaGetShoweredCFP24TSpineBase_10TLiveActor_: # 0x8013c490
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0xe
    lwz     r3, 0x70(r30)
    lwz     r31, 0x74(r30)
    lwz     r5, 0x38(r3)
    mr      r3, r31
    lfs     f31, 0x298(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8013c4dc
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      setBckFromIndex__6MActorFi
branch_0x8013c4dc:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x74(r30)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8013c50c
    li      r3, 0x1
    b       branch_0x8013c510

branch_0x8013c50c:
    li      r3, 0x0
branch_0x8013c510:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl execute__23TNerveLimitKoopaStaggerCFP24TSpineBase_10TLiveActor_
execute__23TNerveLimitKoopaStaggerCFP24TSpineBase_10TLiveActor_: # 0x8013c52c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0x9
    lwz     r3, 0x70(r30)
    lwz     r31, 0x74(r30)
    lwz     r5, 0x38(r3)
    mr      r3, r31
    lfs     f31, 0x1d0(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8013c578
    addi    r3, r31, 0x0
    li      r4, 0x9
    bl      setBckFromIndex__6MActorFi
branch_0x8013c578:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x74(r30)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8013c5a8
    li      r3, 0x1
    b       branch_0x8013c5ac

branch_0x8013c5a8:
    li      r3, 0x0
branch_0x8013c5ac:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl execute__22TNerveLimitKoopaTumbleCFP24TSpineBase_10TLiveActor_
execute__22TNerveLimitKoopaTumbleCFP24TSpineBase_10TLiveActor_: # 0x8013c5c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0x8
    lwz     r3, 0x70(r30)
    lwz     r31, 0x74(r30)
    lwz     r5, 0x38(r3)
    mr      r3, r31
    lfs     f31, 0x1a8(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8013c614
    addi    r3, r31, 0x0
    li      r4, 0x8
    bl      setBckFromIndex__6MActorFi
branch_0x8013c614:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x74(r30)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8013c644
    li      r3, 0x1
    b       branch_0x8013c648

branch_0x8013c644:
    li      r3, 0x0
branch_0x8013c648:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl execute__20TNerveLimitKoopaWaitCFP24TSpineBase_10TLiveActor_
execute__20TNerveLimitKoopaWaitCFP24TSpineBase_10TLiveActor_: # 0x8013c664
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    mr      r30, r4
    stw     r29, 0x9c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8013c6d4
    lwz     r29, 0x74(r31)
    li      r4, 0xa
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8013c6b8
    addi    r3, r29, 0x0
    li      r4, 0xa
    bl      setBckFromIndex__6MActorFi
branch_0x8013c6b8:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x4d90(r2)
    li      r0, 0xf0
    stfs    f0, 0xc(r3)
    stw     r0, 0x150(r31)
branch_0x8013c6d4:
    addi    r3, sp, 0x54
    bl      __ct__14TDirectionCalcFv
    lwz     r4, R13Off_m0x60b4(r13)
    addi    r3, sp, 0x58
    addi    r5, r31, 0x10
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lfs     f0, -0x4d60(r2)
    addi    r4, sp, 0x64
    addi    r3, sp, 0x54
    stfs    f0, 0x5c(sp)
    lwz     r0, 0x58(sp)
    lwz     r5, 0x5c(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x60(sp)
    stw     r5, 0x68(sp)
    stw     r0, 0x6c(sp)
    bl      makeDirection__14TDirectionCalcFQ29JGeometry8TVec3_f_
    lwz     r3, 0x70(r31)
    lfs     f31, 0x54(sp)
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f1, 0xb8(r3)
    bl      d2r__14TDirectionCalcFf
    fmr     f2, f1
    addi    r3, r31, 0x16c
    fmr     f1, f31
    bl      calcTurnDirection__14TDirectionCalcFff
    stfs    f1, 0x16c(r31)
    addi    r3, sp, 0x74
    bl      __ct__14TDirectionCalcFv
    lwz     r5, R13Off_m0x60b4(r13)
    addi    r4, sp, 0x84
    lfs     f0, 0x10(r31)
    addi    r3, sp, 0x74
    lfs     f1, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f2, 0x8(r5)
    lfs     f1, 0x18(r31)
    lfs     f0, -0x4d60(r2)
    fsubs   f1, f2, f1
    stfs    f1, 0x80(sp)
    stfs    f0, 0x7c(sp)
    lwz     r0, 0x78(sp)
    lwz     r5, 0x7c(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x80(sp)
    stw     r5, 0x88(sp)
    stw     r0, 0x8c(sp)
    bl      makeDirection__14TDirectionCalcFQ29JGeometry8TVec3_f_
    lfs     f1, 0x74(sp)
    addi    r3, r31, 0x16c
    bl      absDirection__14TDirectionCalcFf
    lfs     f0, -0x4d44(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8013c7c8
    li      r0, 0x0
    b       branch_0x8013c7cc

branch_0x8013c7c8:
    li      r0, 0x1
branch_0x8013c7cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8013c868
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8013c868
    lbz     r0, R13Off_m0x6480(r13)
    extsb.  r0, r0
    bne-    branch_0x8013c82c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveLimitKoopaHipDropStart@ha
    stw     r0, R13Off_m0x647c(r13)
    addi    r0, r3, __vvt__28TNerveLimitKoopaHipDropStart@l
    lis     r4, __dt__28TNerveLimitKoopaHipDropStartFv@ha
    stw     r0, R13Off_m0x647c(r13)
    lis     r3, unk_803f3b24@h
    addi    r5, r3, unk_803f3b24@l
    addi    r4, r4, __dt__28TNerveLimitKoopaHipDropStartFv@l
    addi    r3, r13, R13Off_m0x647c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6480(r13)
branch_0x8013c82c:
    addi    r4, r13, R13Off_m0x647c
    cmplwi  r4, 0x0
    beq-    branch_0x8013c860
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8013c860
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8013c860:
    li      r3, 0x1
    b       branch_0x8013c86c

branch_0x8013c868:
    li      r3, 0x0
branch_0x8013c86c:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    mtlr    r0
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xb0
    blr


.globl __dt__28TNerveLimitKoopaHipDropStartFv
__dt__28TNerveLimitKoopaHipDropStartFv: # 0x8013c88c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013c8d0
    lis     r3, __vvt__28TNerveLimitKoopaHipDropStart@ha
    addi    r0, r3, __vvt__28TNerveLimitKoopaHipDropStart@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013c8c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013c8c0:
    extsh.  r0, r4
    ble-    branch_0x8013c8d0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013c8d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x8013c8e8
    lfs     f1, 0x0(r4)
    lfs     f0, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x8(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x8(r3)
    blr


.globl execute__28TNerveLimitKoopaHipDropStartCFP24TSpineBase_10TLiveActor_
execute__28TNerveLimitKoopaHipDropStartCFP24TSpineBase_10TLiveActor_: # 0x8013c91c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8013c988
    lwz     r30, 0x74(r29)
    li      r4, 0x5
    addi    r3, r30, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8013c96c
    addi    r3, r30, 0x0
    li      r4, 0x5
    bl      setBckFromIndex__6MActorFi
branch_0x8013c96c:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x4d90(r2)
    li      r0, 0x1e
    stfs    f0, 0xc(r3)
    stw     r0, 0x154(r29)
branch_0x8013c988:
    lwz     r0, 0x154(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x8013ca24
    mr      r3, r29
    bl      startHipDrop__11TLimitKoopaFv
    li      r0, 0x0
    stb     r0, 0x168(r29)
    lbz     r0, R13Off_m0x6488(r13)
    extsb.  r0, r0
    bne-    branch_0x8013c9e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveLimitKoopaHipDropJump@ha
    stw     r0, R13Off_m0x6484(r13)
    addi    r0, r3, __vvt__27TNerveLimitKoopaHipDropJump@l
    lis     r4, __dt__27TNerveLimitKoopaHipDropJumpFv@ha
    stw     r0, R13Off_m0x6484(r13)
    lis     r3, unk_803f3b18@h
    addi    r5, r3, unk_803f3b18@l
    addi    r4, r4, __dt__27TNerveLimitKoopaHipDropJumpFv@l
    addi    r3, r13, R13Off_m0x6484
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6488(r13)
branch_0x8013c9e8:
    addi    r4, r13, R13Off_m0x6484
    cmplwi  r4, 0x0
    beq-    branch_0x8013ca1c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8013ca1c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8013ca1c:
    li      r3, 0x1
    b       branch_0x8013ca28

branch_0x8013ca24:
    li      r3, 0x0
branch_0x8013ca28:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl __dt__27TNerveLimitKoopaHipDropJumpFv
__dt__27TNerveLimitKoopaHipDropJumpFv: # 0x8013ca44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013ca88
    lis     r3, __vvt__27TNerveLimitKoopaHipDropJump@ha
    addi    r0, r3, __vvt__27TNerveLimitKoopaHipDropJump@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8013ca78
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8013ca78:
    extsh.  r0, r4
    ble-    branch_0x8013ca88
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013ca88:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__27TNerveLimitKoopaHipDropJumpCFP24TSpineBase_10TLiveActor_
execute__27TNerveLimitKoopaHipDropJumpCFP24TSpineBase_10TLiveActor_: # 0x8013caa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    lwz     r30, 0x0(r4)
    lwz     r12, 0x0(r30)
    mr      r3, r30
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x4d60(r2)
    fneg    f1, f1
    stfs    f0, 0x15c(r30)
    stfs    f1, 0x160(r30)
    stfs    f0, 0x164(r30)
    lbz     r0, 0x168(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8013cb78
    lbz     r0, R13Off_m0x6470(r13)
    extsb.  r0, r0
    bne-    branch_0x8013cb3c
    addi    r3, r13, R13Off_m0x646c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__20TNerveLimitKoopaTurn@ha
    addi    r0, r3, __vvt__20TNerveLimitKoopaTurn@l
    lis     r3, __vvt__20TNerveLimitKoopaWait@ha
    stw     r0, R13Off_m0x646c(r13)
    addi    r0, r3, __vvt__20TNerveLimitKoopaWait@l
    lis     r4, __dt__20TNerveLimitKoopaWaitFv@ha
    stw     r0, R13Off_m0x646c(r13)
    lis     r3, unk_803f3b54@h
    addi    r5, r3, unk_803f3b54@l
    addi    r4, r4, __dt__20TNerveLimitKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x646c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6470(r13)
branch_0x8013cb3c:
    addi    r4, r13, R13Off_m0x646c
    cmplwi  r4, 0x0
    beq-    branch_0x8013cb70
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8013cb70
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8013cb70:
    li      r3, 0x1
    b       branch_0x8013cb7c

branch_0x8013cb78:
    li      r3, 0x0
branch_0x8013cb7c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __dt__11TLimitKoopaFv
__dt__11TLimitKoopaFv: # 0x8013cb94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013cbe4
    lis     r3, __vvt__11TLimitKoopa@ha
    addi    r3, r3, __vvt__11TLimitKoopa@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8013cbe4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013cbe4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TLimitKoopaBodyFv
__dt__15TLimitKoopaBodyFv: # 0x8013cc00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013cc68
    lis     r3, __vvt__15TLimitKoopaBody@ha
    addi    r3, r3, __vvt__15TLimitKoopaBody@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8013cc58
    lis     r3, __vvt__16TLimitKoopaParts@ha
    addi    r3, r3, __vvt__16TLimitKoopaParts@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x8013cc58:
    extsh.  r0, r31
    ble-    branch_0x8013cc68
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013cc68:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TLimitKoopaHeadFv
__dt__15TLimitKoopaHeadFv: # 0x8013cc84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013ccec
    lis     r3, __vvt__15TLimitKoopaHead@ha
    addi    r3, r3, __vvt__15TLimitKoopaHead@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8013ccdc
    lis     r3, __vvt__16TLimitKoopaParts@ha
    addi    r3, r3, __vvt__16TLimitKoopaParts@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x8013ccdc:
    extsh.  r0, r31
    ble-    branch_0x8013ccec
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013ccec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TLimitKoopaHandFv
__dt__15TLimitKoopaHandFv: # 0x8013cd08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013cd70
    lis     r3, __vvt__15TLimitKoopaHand@ha
    addi    r3, r3, __vvt__15TLimitKoopaHand@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8013cd60
    lis     r3, __vvt__16TLimitKoopaParts@ha
    addi    r3, r3, __vvt__16TLimitKoopaParts@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x8013cd60:
    extsh.  r0, r31
    ble-    branch_0x8013cd70
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013cd70:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TLimitKoopaFlameFv
__dt__16TLimitKoopaFlameFv: # 0x8013cd8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013cdf4
    lis     r3, __vvt__16TLimitKoopaFlame@ha
    addi    r3, r3, __vvt__16TLimitKoopaFlame@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8013cde4
    lis     r3, __vvt__16TLimitKoopaParts@ha
    addi    r3, r3, __vvt__16TLimitKoopaParts@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x8013cde4:
    extsh.  r0, r31
    ble-    branch_0x8013cdf4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013cdf4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_limitkoopa_cpp
__sinit_limitkoopa_cpp: # 0x8013ce10
    mflr    r0
    lis     r3, unk_803f3b18@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f3b18@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8013ce58
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8013ce58:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8013ce88
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8013ce88:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8013ceb8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8013ceb8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8013cee8
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8013cee8:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8013cf18
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8013cf18:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8013cf48
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8013cf48:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8013cf78
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8013cf78:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8013cfa8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8013cfa8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8013cfd8
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8013cfd8:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d008
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8013d008:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d038
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8013d038:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d068
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8013d068:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d098
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8013d098:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d0c8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8013d0c8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8013d0f8
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8013d0f8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8013d10c
unk_8013d10c: # 0x8013d10c
    addi    r3, r3, -0x20
    b       __dt__16TLimitKoopaPartsFv


.globl unk_8013d114
unk_8013d114: # 0x8013d114
    addi    r3, r3, -0x20
    b       __dt__16TLimitKoopaFlameFv


.globl unk_8013d11c
unk_8013d11c: # 0x8013d11c
    addi    r3, r3, -0x20
    b       __dt__15TLimitKoopaHandFv


.globl unk_8013d124
unk_8013d124: # 0x8013d124
    addi    r3, r3, -0x20
    b       __dt__15TLimitKoopaHeadFv


.globl unk_8013d12c
unk_8013d12c: # 0x8013d12c
    addi    r3, r3, -0x20
    b       __dt__15TLimitKoopaBodyFv


.globl unk_8013d134
unk_8013d134: # 0x8013d134
    addi    r3, r3, -0x20
    b       __dt__11TLimitKoopaFv

