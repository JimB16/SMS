
.globl __ct__Q26TMario14TSurfingParamsFPCc
__ct__Q26TMario14TSurfingParamsFPCc: # 0x80273a70
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    mr      r31, r3
    stw     r4, 0x0(r3)
    lis     r3, unk_8039fe80@ha
    addi    r30, r3, unk_8039fe80@l
    stw     r0, 0x4(r31)
    addi    r3, r2, R2Off_m0xa20
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r2, R2Off_m0xa20
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0xa18(r2)
    addi    r3, r2, R2Off_m0xa14
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r2, R2Off_m0xa14
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r2, R2Off_m0xa08
    lfs     f0, -0xa0c(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r2, R2Off_m0xa08
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r2, R2Off_m0x9fc
    lfs     f0, -0xa00(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r2, R2Off_m0x9fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r2, R2Off_m0x9f0
    lfs     f0, -0x9f4(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r2, R2Off_m0x9f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x188
    lfs     f0, -0x9e8(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x188
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x194
    lfs     f0, -0x9e4(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x194
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0x1a0
    lfs     f0, -0x9e0(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x1a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0x94(r31)
    li      r0, 0x400
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r0, 0xa4(r31)
    addi    r26, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x1b0
    stw     r26, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x1b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xa8(r31)
    li      r25, 0x1555
    addi    r3, r2, R2Off_m0x9dc
    sth     r25, 0xb8(r31)
    stw     r26, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r2, R2Off_m0x9dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r2, R2Off_m0x9d0
    lfs     f0, -0x9d4(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r2, R2Off_m0x9d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x1c0
    lfs     f0, -0x9c8(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x1c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xe4(r31)
    li      r0, 0x4000
    addi    r3, r30, 0x1cc
    sth     r0, 0xf4(r31)
    stw     r26, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x1cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xf8(r31)
    addi    r3, r30, 0x1d8
    sth     r25, 0x108(r31)
    stw     r26, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x1d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x1ec
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x1ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x204
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x204
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x210
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x210
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x21c
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x21c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x22c
    lfs     f0, -0xa00(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x22c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x23c
    lfs     f0, -0xa78(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x23c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x248
    lfs     f0, -0x9bc(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x248
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x258
    lfs     f0, -0x9e4(r2)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x258
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x264
    lfs     f0, -0x9b8(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x264
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c0(r31)
    li      r0, 0x5555
    addi    r3, r31, 0x0
    sth     r0, 0x1d0(r31)
    stw     r26, 0x1c0(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__Q26TMario12TDirtyParamsFv
__ct__Q26TMario12TDirtyParamsFv: # 0x80273ecc
    mflr    r0
    lis     r4, unk_8039fe80@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r30, r4, unk_8039fe80@l
    addi    r0, r30, 0x514
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0x528
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x528
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x994(r2)
    addi    r3, r30, 0x534
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x534
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0x544
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x544
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0x554
    lfs     f0, -0x9a4(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x554
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0x564
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x564
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x574
    lfs     f0, -0x9a4(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x574
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x580
    lfs     f0, -0x994(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x580
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0x594
    lfs     f0, -0x990(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x594
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x5a8
    lfs     f0, -0xa34(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x5a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0xa8(r31)
    li      r25, 0x258
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r25, 0xb8(r31)
    addi    r26, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x5b8
    stw     r26, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x5b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xbc(r31)
    addi    r3, r30, 0x5c8
    sth     r25, 0xcc(r31)
    stw     r26, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x5c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x5d8
    lfs     f0, -0x98c(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x5d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x5e4
    lfs     f0, -0x988(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x5e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x5f8
    lfs     f0, -0x98c(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x5f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x608
    lfs     f0, -0x98c(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x608
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x614
    lfs     f0, -0x990(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x614
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x620
    lfs     f0, -0x98c(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x620
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x630
    lfs     f0, -0x984(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x630
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x63c
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x63c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x64c
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x64c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x184(r31)
    li      r24, 0x100
    addi    r3, r30, 0x658
    sth     r24, 0x194(r31)
    stw     r26, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x658
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x198(r31)
    addi    r3, r30, 0x66c
    sth     r24, 0x1a8(r31)
    stw     r26, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x66c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x680
    lfs     f0, -0xa34(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x680
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c0(r31)
    li      r0, 0xf0
    addi    r3, r30, 0x690
    sth     r0, 0x1d0(r31)
    stw     r26, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x690
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1d4(r31)
    mr      r3, r31
    sth     r25, 0x1e4(r31)
    stw     r26, 0x1d4(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__Q26TMario15TGraffitoParamsFv
__ct__Q26TMario15TGraffitoParamsFv: # 0x80274350
    mflr    r0
    lis     r4, unk_8039fe80@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r30, r4, unk_8039fe80@l
    addi    r0, r30, 0x69c
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0x6b0
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x6b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0x8(r31)
    li      r25, 0xf0
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r25, 0x18(r31)
    addi    r26, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x6bc
    stw     r26, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x6bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c(r31)
    addi    r3, r30, 0x6cc
    sth     r25, 0x2c(r31)
    stw     r26, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x6cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x30(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x980(r2)
    addi    r3, r30, 0x6d8
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x6d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0x6e8
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x6e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x6f8
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x6f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x708
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x708
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0x71c
    lfs     f0, -0x994(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x71c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x730
    lfs     f0, -0xa70(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x730
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0x740
    lfs     f0, -0x9e4(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x740
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x750
    lfs     f0, -0x9e4(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x750
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x75c
    lfs     f0, -0x97c(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x75c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xe4(r31)
    li      r25, 0x3e8
    addi    r3, r30, 0x76c
    sth     r25, 0xf4(r31)
    stw     r26, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x76c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xf8(r31)
    addi    r3, r30, 0x77c
    sth     r25, 0x108(r31)
    stw     r26, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x77c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x10c(r31)
    li      r0, 0x7fff
    addi    r3, r30, 0x78c
    sth     r0, 0x11c(r31)
    stw     r26, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x78c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x79c
    lfs     f0, -0x978(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x79c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x7ac
    lfs     f0, -0x974(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x7ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x7b8
    lfs     f0, -0x970(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x7b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x15c(r31)
    li      r0, 0x96
    addi    r3, r30, 0x7cc
    sth     r0, 0x16c(r31)
    stw     r26, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x7cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x170(r31)
    li      r0, 0x4
    addi    r3, r30, 0x7dc
    sth     r0, 0x180(r31)
    stw     r26, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x7dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x7ec
    lfs     f0, -0x978(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x7ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    mr      r3, r31
    lfs     f0, -0x98c(r2)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__Q26TMario11TWireParamsFv
__ct__Q26TMario11TWireParamsFv: # 0x80274754
    mflr    r0
    lis     r4, unk_8039fe80@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r30, r4, unk_8039fe80@l
    addi    r0, r30, 0xaa8
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0xab8
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0xab8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r29, r3, __vvt__10TParamT_s_@l
    stw     r29, 0x8(r31)
    li      r0, -0x8
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r0, 0x18(r31)
    addi    r28, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0xac4
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0xac4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    li      r0, 0x8
    addi    r3, r30, 0xad8
    sth     r0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0xad8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    li      r27, 0x3e8
    addi    r3, r30, 0xaec
    sth     r27, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0xaec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0xb00
    sth     r27, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0xb00
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    li      r0, 0x578
    addi    r3, r30, 0xb10
    sth     r0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0xb10
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    li      r0, 0x64
    addi    r3, r30, 0xb1c
    sth     r0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0xb1c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    li      r0, 0x14
    addi    r3, r30, 0xb28
    sth     r0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0xb28
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x94(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0xa34(r2)
    addi    r3, r30, 0xb34
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0xb34
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0xb40
    lfs     f0, -0x940(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0xb40
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0xb4c
    lfs     f0, -0x93c(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0xb4c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0xb64
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0xb64
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0xb7c
    lfs     f0, -0xa70(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0xb7c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0xb8c
    lfs     f0, -0x9a0(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0xb8c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0xb9c
    lfs     f0, -0x970(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0xb9c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0xbac
    lfs     f0, -0x990(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0xbac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    mr      r3, r31
    lfs     f0, -0x948(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__Q26TMario11TSwimParamsFv
__ct__Q26TMario11TSwimParamsFv: # 0x80274a80
    mflr    r0
    lis     r4, unk_8039fe80@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r30, r4, unk_8039fe80@l
    addi    r0, r30, 0xc2c
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0xc3c
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0xc3c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x9c0(r2)
    addi    r3, r2, R2Off_m0x938
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r2, R2Off_m0x938
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0xc48
    lfs     f0, -0x944(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0xc48
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0xc54
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0xc54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0x44(r31)
    li      r25, 0x200
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r25, 0x54(r31)
    addi    r26, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0xc68
    stw     r26, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0xc68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x58(r31)
    li      r0, 0x400
    addi    r3, r30, 0xc7c
    sth     r0, 0x68(r31)
    stw     r26, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0xc7c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x6c(r31)
    li      r0, 0x100
    addi    r3, r30, 0xc90
    sth     r0, 0x7c(r31)
    stw     r26, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0xc90
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x80(r31)
    addi    r3, r30, 0x148
    sth     r25, 0x90(r31)
    stw     r26, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x148
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0xca4
    lfs     f0, -0x994(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0xca4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0xcb4
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0xcb4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0xcc4
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0xcc4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0xcd4
    lfs     f0, -0xa24(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0xcd4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0xce4
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0xce4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0xcf0
    lfs     f0, -0x988(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0xcf0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0xd00
    lfs     f0, -0x974(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0xd00
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0xd0c
    lfs     f0, -0x994(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0xd0c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r2, R2Off_m0x92c
    lfs     f0, -0x994(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r2, R2Off_m0x92c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0xd1c
    lfs     f0, -0x984(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0xd1c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0xd28
    lfs     f0, -0xa3c(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0xd28
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0xd38
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0xd38
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0xd48
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0xd48
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0xd54
    lfs     f0, -0x924(r2)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0xd54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0xd6c
    lfs     f0, -0x99c(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0xd6c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0xd78
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0xd78
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1d4(r31)
    li      r0, 0x32
    addi    r3, r30, 0xd88
    sth     r0, 0x1e4(r31)
    stw     r26, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0xd88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0xd98
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0xd98
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r2, R2Off_m0x920
    lfs     f0, -0x9a0(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r2, R2Off_m0x920
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    addi    r3, r30, 0xda8
    lfs     f0, -0x998(r2)
    stfs    f0, 0x220(r31)
    stw     r28, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0xda8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x224(r31)
    addi    r3, r2, R2Off_m0x918
    lfs     f0, -0x998(r2)
    stfs    f0, 0x234(r31)
    stw     r28, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r2, R2Off_m0x918
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x238(r31)
    mr      r3, r31
    lfs     f0, -0xa30(r2)
    stfs    f0, 0x248(r31)
    stw     r28, 0x238(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__Q26TMario10TRunParamsFv
__ct__Q26TMario10TRunParamsFv: # 0x80274fe8
    mflr    r0
    lis     r4, unk_8039fe80@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, unk_8039fe80@l
    addi    r0, r30, 0xdb4
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0xdc4
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0xdc4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x910(r2)
    addi    r3, r30, 0xdd0
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0xdd0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0xde0
    lfs     f0, -0x90c(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0xde0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0xdec
    lfs     f0, -0x90c(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0xdec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0xdf8
    lfs     f0, -0x908(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0xdf8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x970
    lfs     f0, -0xa24(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x970
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0xe08
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0xe08
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0xe14
    lfs     f0, -0x930(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0xe14
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0xe20
    lfs     f0, -0x9a0(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0xe20
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0xe34
    lfs     f0, -0x904(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0xe34
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0xe48
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0xe48
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0xe5c
    lfs     f0, -0x900(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0xe5c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0xe6c
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0xe6c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0xe7c
    lfs     f0, -0x984(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0xe7c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0xe88
    lfs     f0, -0x974(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0xe88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0xe98
    lfs     f0, -0x9b4(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0xe98
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0xeac
    lfs     f0, -0x8fc(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0xeac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0xebc
    lfs     f0, -0x994(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0xebc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0xed0
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0xed0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0xee0
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0xee0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0xeec
    lfs     f0, -0x99c(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0xeec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r0, r3, __vvt__10TParamT_s_@l
    stw     r0, 0x198(r31)
    li      r0, 0x64
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r0, 0x1a8(r31)
    addi    r0, r3, __vvt__11TParamRT_s_@l
    addi    r3, r31, 0x0
    stw     r0, 0x198(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__Q26TMario11TJumpParamsFv
__ct__Q26TMario11TJumpParamsFv: # 0x8027540c
    mflr    r0
    lis     r4, unk_8039fe80@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r30, r4, unk_8039fe80@l
    addi    r0, r30, 0xef8
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0x148
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x148
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x944(r2)
    addi    r3, r30, 0xf08
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0xf08
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0xf1c
    lfs     f0, -0x8fc(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0xf1c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0xf28
    lfs     f0, -0x988(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0xf28
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0xf38
    lfs     f0, -0xa38(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0xf38
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0xf4c
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0xf4c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0xf60
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0xf60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0xf70
    lfs     f0, -0x8f8(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0xf70
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0xf7c
    lfs     f0, -0x924(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0xf7c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0xf8c
    lfs     f0, -0x988(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0xf8c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0xfa0
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0xfa0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0xfb4
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0xfb4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0xfc4
    lfs     f0, -0x988(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0xfc4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0xfd8
    lfs     f0, -0x954(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0xfd8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0xfec
    lfs     f0, -0x8f8(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0xfec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0xffc
    lfs     f0, -0x9a0(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0xffc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x1010
    lfs     f0, -0x99c(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x1010
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x1020
    lfs     f0, -0x8f4(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x1020
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x1030
    lfs     f0, -0x8f8(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x1030
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x1044
    lfs     f0, -0x8f0(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x1044
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x105c
    lfs     f0, -0x8ec(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x105c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0x198(r31)
    li      r0, 0x100
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r0, 0x1a8(r31)
    addi    r26, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x1070
    stw     r26, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x1070
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1ac(r31)
    li      r0, 0x2aaa
    addi    r3, r30, 0x1084
    sth     r0, 0x1bc(r31)
    stw     r26, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x1084
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x1098
    lfs     f0, -0x954(r2)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x1098
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x10ac
    lfs     f0, -0xa78(r2)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x10ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x10c0
    lfs     f0, -0x970(r2)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x10c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0x10d0
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x10d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    addi    r3, r30, 0x10e4
    lfs     f0, -0x970(r2)
    stfs    f0, 0x220(r31)
    stw     r28, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x10e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x224(r31)
    addi    r3, r30, 0x10f4
    lfs     f0, -0x8e8(r2)
    stfs    f0, 0x234(r31)
    stw     r28, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x10f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x238(r31)
    addi    r3, r30, 0x1108
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x248(r31)
    stw     r28, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x1108
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0x1118
    lfs     f0, -0x944(r2)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x1118
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0x112c
    lfs     f0, -0x970(r2)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x112c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x274(r31)
    addi    r3, r30, 0x113c
    lfs     f0, -0x8e4(r2)
    stfs    f0, 0x284(r31)
    stw     r28, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x113c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x288(r31)
    addi    r3, r30, 0x1150
    lfs     f0, -0x9e4(r2)
    stfs    f0, 0x298(r31)
    stw     r28, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0x1150
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29c(r31)
    addi    r3, r30, 0x1164
    lfs     f0, -0x944(r2)
    stfs    f0, 0x2ac(r31)
    stw     r28, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0x1164
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b0(r31)
    addi    r3, r30, 0x1174
    lfs     f0, -0x8e0(r2)
    stfs    f0, 0x2c0(r31)
    stw     r28, 0x2b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2c4
    addi    r6, r30, 0x1174
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c4(r31)
    addi    r3, r30, 0x1184
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x2d4(r31)
    stw     r28, 0x2c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d8
    addi    r6, r30, 0x1184
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d8(r31)
    addi    r3, r30, 0x1194
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x2e8(r31)
    stw     r28, 0x2d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2ec
    addi    r6, r30, 0x1194
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ec(r31)
    addi    r3, r30, 0x11a4
    lfs     f0, -0xa34(r2)
    stfs    f0, 0x2fc(r31)
    stw     r28, 0x2ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x300
    addi    r6, r30, 0x11a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x300(r31)
    addi    r3, r30, 0x11b4
    lfs     f0, -0x9a0(r2)
    stfs    f0, 0x310(r31)
    stw     r28, 0x300(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x314
    addi    r6, r30, 0x11b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x314(r31)
    addi    r3, r30, 0x11c4
    lfs     f0, -0x924(r2)
    stfs    f0, 0x324(r31)
    stw     r28, 0x314(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x328
    addi    r6, r30, 0x11c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x328(r31)
    addi    r3, r30, 0x11d4
    lfs     f0, -0x990(r2)
    stfs    f0, 0x338(r31)
    stw     r28, 0x328(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x33c
    addi    r6, r30, 0x11d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x33c(r31)
    li      r0, 0x258
    addi    r3, r30, 0x264
    sth     r0, 0x34c(r31)
    stw     r26, 0x33c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x350
    addi    r6, r30, 0x264
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x350(r31)
    li      r0, 0x3555
    addi    r3, r30, 0x11e4
    sth     r0, 0x360(r31)
    stw     r26, 0x350(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x364
    addi    r6, r30, 0x11e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x364(r31)
    addi    r3, r30, 0x11f8
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0x374(r31)
    stw     r28, 0x364(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x378
    addi    r6, r30, 0x11f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x378(r31)
    addi    r3, r30, 0x1208
    lfs     f0, -0x954(r2)
    stfs    f0, 0x388(r31)
    stw     r28, 0x378(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x38c
    addi    r6, r30, 0x1208
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x38c(r31)
    li      r0, 0x32
    addi    r3, r31, 0x0
    sth     r0, 0x39c(r31)
    stw     r26, 0x38c(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__Q26TMario9TDeParamsFv
__ct__Q26TMario9TDeParamsFv: # 0x80275c64
    mflr    r0
    lis     r4, unk_8039fe80@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r23, 0x14(sp)
    addi    r30, r4, unk_8039fe80@l
    addi    r0, r30, 0x1228
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r2, R2Off_m0x8c8
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r2, R2Off_m0x8c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0x8(r31)
    li      r0, 0x8
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r0, 0x18(r31)
    addi    r26, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x123c
    stw     r26, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x123c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x1c(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x8c0(r2)
    addi    r3, r30, 0x1248
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x1248
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0x1254
    lfs     f0, -0xa78(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x1254
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0x1260
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x1260
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x126c
    lfs     f0, -0x944(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x126c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x6c(r31)
    li      r25, 0x78
    addi    r3, r30, 0x127c
    sth     r25, 0x7c(r31)
    stw     r26, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x127c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x80(r31)
    li      r24, 0x100
    addi    r3, r30, 0x128c
    sth     r24, 0x90(r31)
    stw     r26, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x128c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x94(r31)
    li      r23, 0x200
    addi    r3, r30, 0x12a0
    sth     r23, 0xa4(r31)
    stw     r26, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x12a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xa8(r31)
    li      r0, 0x400
    addi    r3, r30, 0x12b4
    sth     r0, 0xb8(r31)
    stw     r26, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x12b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xbc(r31)
    addi    r3, r30, 0xc7c
    sth     r24, 0xcc(r31)
    stw     r26, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0xc7c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xd0(r31)
    addi    r3, r30, 0xc90
    sth     r24, 0xe0(r31)
    stw     r26, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0xc90
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xe4(r31)
    addi    r3, r30, 0x138
    sth     r23, 0xf4(r31)
    stw     r26, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xf8(r31)
    li      r0, 0x14
    addi    r3, r30, 0x12c4
    sth     r0, 0x108(r31)
    stw     r26, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x12c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x10c(r31)
    li      r0, 0x208
    addi    r3, r30, 0x12d8
    sth     r0, 0x11c(r31)
    stw     r26, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x12d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__11TParamT_Uc_@ha
    addi    r23, r3, __vvt__11TParamT_Uc_@l
    stw     r23, 0x120(r31)
    li      r0, 0x1
    lis     r3, __vvt__12TParamRT_Uc_@ha
    stb     r0, 0x130(r31)
    addi    r24, r3, __vvt__12TParamRT_Uc_@l
    addi    r3, r30, 0x12ec
    stw     r24, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x12ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x134(r31)
    li      r0, 0xa
    addi    r3, r30, 0x1300
    stb     r0, 0x144(r31)
    stw     r24, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x1300
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x148(r31)
    li      r0, 0xff
    addi    r3, r30, 0x130c
    stb     r0, 0x158(r31)
    stw     r24, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x130c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x1318
    lfs     f0, -0x98c(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x1318
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x1328
    lfs     f0, -0x9a4(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x1328
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x1334
    lfs     f0, -0x948(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x1334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x1344
    lfs     f0, -0x9bc(r2)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x1344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x1354
    lfs     f0, -0x8bc(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x1354
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x1364
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x1364
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x1374
    lfs     f0, -0x948(r2)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x1374
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x1384
    lfs     f0, -0x948(r2)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x1384
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0x1394
    lfs     f0, -0x98c(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x1394
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    addi    r3, r30, 0x13a4
    lfs     f0, -0x8b8(r2)
    stfs    f0, 0x220(r31)
    stw     r28, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x13a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x224(r31)
    addi    r3, r30, 0x13b4
    lfs     f0, -0x8e0(r2)
    stfs    f0, 0x234(r31)
    stw     r28, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x13b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x238(r31)
    addi    r3, r30, 0x13c4
    lfs     f0, -0x8e0(r2)
    stfs    f0, 0x248(r31)
    stw     r28, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x13c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0x13d8
    lfs     f0, -0x954(r2)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x13d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0x13ec
    lfs     f0, -0x9b8(r2)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x13ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x274(r31)
    addi    r3, r30, 0x1400
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0x284(r31)
    stw     r28, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x1400
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x288(r31)
    addi    r3, r30, 0x1410
    lfs     f0, -0x97c(r2)
    stfs    f0, 0x298(r31)
    stw     r28, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0x1410
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29c(r31)
    addi    r3, r30, 0x141c
    lfs     f0, -0x924(r2)
    stfs    f0, 0x2ac(r31)
    stw     r28, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0x141c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b0(r31)
    addi    r3, r30, 0x1428
    lfs     f0, -0x8b4(r2)
    stfs    f0, 0x2c0(r31)
    stw     r28, 0x2b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2c4
    addi    r6, r30, 0x1428
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c4(r31)
    addi    r3, r30, 0x1438
    lfs     f0, -0x8b0(r2)
    stfs    f0, 0x2d4(r31)
    stw     r28, 0x2c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d8
    addi    r6, r30, 0x1438
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d8(r31)
    addi    r3, r30, 0x1448
    lfs     f0, -0x9b4(r2)
    stfs    f0, 0x2e8(r31)
    stw     r28, 0x2d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2ec
    addi    r6, r30, 0x1448
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ec(r31)
    addi    r3, r30, 0x1458
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x2fc(r31)
    stw     r28, 0x2ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x300
    addi    r6, r30, 0x1458
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x300(r31)
    li      r0, 0xf0
    addi    r3, r30, 0x1468
    sth     r0, 0x310(r31)
    stw     r26, 0x300(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x314
    addi    r6, r30, 0x1468
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x314(r31)
    li      r0, 0x4b0
    addi    r3, r30, 0x1474
    sth     r0, 0x324(r31)
    stw     r26, 0x314(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x328
    addi    r6, r30, 0x1474
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x328(r31)
    addi    r3, r30, 0x1480
    lfs     f0, -0x8e0(r2)
    stfs    f0, 0x338(r31)
    stw     r28, 0x328(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x33c
    addi    r6, r30, 0x1480
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x33c(r31)
    addi    r3, r30, 0x1494
    lfs     f0, -0x97c(r2)
    stfs    f0, 0x34c(r31)
    stw     r28, 0x33c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x350
    addi    r6, r30, 0x1494
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x350(r31)
    addi    r3, r30, 0x258
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x360(r31)
    stw     r28, 0x350(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x364
    addi    r6, r30, 0x258
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x364(r31)
    addi    r3, r30, 0x14a4
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0x374(r31)
    stw     r28, 0x364(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x378
    addi    r6, r30, 0x14a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x378(r31)
    addi    r3, r30, 0x14bc
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x388(r31)
    stw     r28, 0x378(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x38c
    addi    r6, r30, 0x14bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x38c(r31)
    addi    r3, r30, 0x14c8
    lfs     f0, -0x99c(r2)
    stfs    f0, 0x39c(r31)
    stw     r28, 0x38c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a0
    addi    r6, r30, 0x14c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3a0(r31)
    addi    r3, r30, 0x14d8
    sth     r25, 0x3b0(r31)
    stw     r26, 0x3a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b4
    addi    r6, r30, 0x14d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3b4(r31)
    li      r0, 0x5
    addi    r3, r30, 0x14e8
    sth     r0, 0x3c4(r31)
    stw     r26, 0x3b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3c8
    addi    r6, r30, 0x14e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3c8(r31)
    addi    r3, r30, 0x1500
    sth     r25, 0x3d8(r31)
    stw     r26, 0x3c8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3dc
    addi    r6, r30, 0x1500
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3dc(r31)
    addi    r3, r30, 0x1514
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0x3ec(r31)
    stw     r28, 0x3dc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f0
    addi    r6, r30, 0x1514
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f0(r31)
    addi    r3, r30, 0x152c
    lfs     f0, -0x954(r2)
    stfs    f0, 0x400(r31)
    stw     r28, 0x3f0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x404
    addi    r6, r30, 0x152c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x404(r31)
    li      r0, 0x4
    addi    r3, r30, 0x1540
    sth     r0, 0x414(r31)
    stw     r26, 0x404(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x418
    addi    r6, r30, 0x1540
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x418(r31)
    li      r0, 0x1e0
    addi    r3, r31, 0x0
    sth     r0, 0x428(r31)
    stw     r26, 0x418(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r23, 0x14(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setGamePad__6TMarioFP13TMarioGamePad
setGamePad__6TMarioFP13TMarioGamePad: # 0x802765ec
    stw     r4, 0x4fc(r3)
    blr


.globl resetHistory__6TMarioFv
resetHistory__6TMarioFv: # 0x802765f4
    li      r0, 0x7
    mtctr   r0
    li      r12, 0x0
    li      r4, 0x0
branch_0x80276604:
    lwz     r5, 0x530(r3)
    li      r11, 0x0
    addi    r0, r4, 0x2
    sthx    r11, r5, r4
    addi    r9, r4, 0x4
    addi    r8, r4, 0x6
    lwz     r5, 0x530(r3)
    addi    r7, r4, 0x8
    addi    r6, r4, 0xa
    sthx    r11, r5, r0
    addi    r5, r4, 0xc
    addi    r0, r4, 0xe
    lwz     r10, 0x530(r3)
    addi    r12, r12, 0x8
    addi    r4, r4, 0x10
    sthx    r11, r10, r9
    lwz     r9, 0x530(r3)
    sthx    r11, r9, r8
    lwz     r8, 0x530(r3)
    sthx    r11, r8, r7
    lwz     r7, 0x530(r3)
    sthx    r11, r7, r6
    lwz     r6, 0x530(r3)
    sthx    r11, r6, r5
    lwz     r5, 0x530(r3)
    sthx    r11, r5, r0
    bdnz+      branch_0x80276604
    subfic  r0, r12, 0x3c
    cmpwi   r12, 0x3c
    mtctr   r0
    slwi    r4, r12, 1
    bge-    branch_0x80276694
branch_0x80276684:
    lwz     r5, 0x530(r3)
    sthx    r11, r5, r4
    addi    r4, r4, 0x2
    bdnz+      branch_0x80276684
branch_0x80276694:
    li      r0, 0x0
    stb     r0, 0x534(r3)
    sth     r0, 0x536(r3)
    sth     r0, 0x538(r3)
    stb     r0, 0x53a(r3)
    stb     r0, 0x53b(r3)
    blr


.globl initValues__6TMarioFv
initValues__6TMarioFv: # 0x802766b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    stw     r29, 0x34(sp)
    li      r29, 0x0
    lha     r0, 0x58c(r3)
    lis     r3, unk_8039fe80@ha
    addi    r31, r3, unk_8039fe80@l
    sth     r0, 0x120(r30)
    li      r3, 0x24
    lfs     f1, -0xa4c(r2)
    stfs    f1, 0x134(r30)
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x138(r30)
    sth     r29, 0x13c(r30)
    stfs    f1, 0x140(r30)
    bl      __nw__FUl
    stw     r3, 0x108(r30)
    li      r3, 0x160
    lwz     r4, 0x108(r30)
    sth     r29, 0x0(r4)
    lwz     r4, 0x108(r30)
    sth     r29, 0x2(r4)
    lfs     f3, -0xa4c(r2)
    lwz     r4, 0x108(r30)
    fmr     f2, f3
    stfs    f3, 0x10(r4)
    fmr     f1, f3
    fmr     f0, f3
    lwz     r4, 0x108(r30)
    stfs    f3, 0x14(r4)
    lwz     r4, 0x108(r30)
    stfs    f2, 0x18(r4)
    lwz     r4, 0x108(r30)
    stw     r29, 0x4(r4)
    lwz     r4, 0x108(r30)
    stw     r29, 0x8(r4)
    lwz     r4, 0x108(r30)
    stb     r29, 0xc(r4)
    lwz     r4, 0x108(r30)
    stb     r29, 0xd(r4)
    stfs    f1, 0x10c(r30)
    stfs    f0, 0x110(r30)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80276780
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1554
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x80276780:
    stw     r29, 0x154(r30)
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802767a0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1570
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x802767a0:
    stw     r29, 0x158(r30)
    li      r0, 0x0
    addi    r3, r30, 0x0
    stb     r0, 0x388(r30)
    stb     r0, 0x389(r30)
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x38c(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
    lfs     f0, -0xa4c(r2)
    li      r3, 0x38
    stfs    f0, 0x3d8(r30)
    stfs    f0, 0x3dc(r30)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802767f4
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      __ct__9TMarioCapFP6TMario
branch_0x802767f4:
    stw     r29, 0x3e0(r30)
    li      r3, 0x1dd0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80276814
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      __ct__9TWaterGunFP6TMario
branch_0x80276814:
    stw     r29, 0x3e4(r30)
    lwz     r3, 0x3e4(r30)
    bl      init__9TWaterGunFv
    lwz     r3, 0x298(r30)
    lis     r0, 0x4330
    lfd     f2, -0x8a8(r2)
    stw     r3, 0x2c(sp)
    lfs     f0, -0x948(r2)
    stw     r0, 0x28(sp)
    lwz     r3, 0x3e4(r30)
    lfd     f1, 0x28(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    bl      setAmountToRate__9TWaterGunFf
    li      r3, 0x124
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80276878
    lis     r3, __vvt__12J3DFrameCtrl@ha
    addi    r0, r3, __vvt__12J3DFrameCtrl@l
    addi    r3, r29, 0x0
    stw     r0, 0x5c(r29)
    addi    r3, r3, 0x5c
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
branch_0x80276878:
    stw     r29, 0x3f0(r30)
    mr      r4, r30
    lwz     r3, 0x3f0(r30)
    bl      init__6TYoshiFP6TMario
    li      r3, 0x84
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802768b8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1588
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__12TMarioEffect@ha
    addi    r3, r3, __vvt__12TMarioEffect@l
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r29)
branch_0x802768b8:
    stw     r29, 0x424(r30)
    mr      r4, r30
    lwz     r3, 0x424(r30)
    bl      init__12TMarioEffectFP6TMario
    lfs     f1, -0xa4c(r2)
    li      r3, 0x98
    stfs    f1, 0x414(r30)
    stfs    f1, 0x418(r30)
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x41c(r30)
    stfs    f1, 0x450(r30)
    stfs    f1, 0x454(r30)
    stfs    f1, 0x458(r30)
    stfs    f1, 0x45c(r30)
    stfs    f1, 0x460(r30)
    stfs    f1, 0x464(r30)
    stfs    f1, 0x468(r30)
    stfs    f1, 0x46c(r30)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80276924
    lwz     r4, R13Off_m0x6044(r13)
    mr      r3, r29
    bl      __ct__9MAnmSoundFP6MSound
    lis     r3, __vvt__14MAnmSoundMario@ha
    addi    r0, r3, __vvt__14MAnmSoundMario@l
    stw     r0, 0x94(r29)
branch_0x80276924:
    stw     r29, 0x4dc(r30)
    li      r4, 0x0
    li      r5, 0x1
    lwz     r3, 0x4dc(r30)
    lfs     f1, -0xa4c(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    li      r31, 0x0
    stb     r31, 0x4ec(r30)
    li      r0, 0xa
    li      r3, 0x78
    stb     r0, 0x4ed(r30)
    sth     r31, 0x4ee(r30)
    bl      __nwa__FUl
    li      r0, 0x7
    stw     r3, 0x530(r30)
    mtctr   r0
    addi    r3, r31, 0x0
branch_0x80276968:
    lwz     r4, 0x530(r30)
    li      r10, 0x0
    addi    r0, r3, 0x2
    sthx    r10, r4, r3
    addi    r8, r3, 0x4
    addi    r7, r3, 0x6
    lwz     r4, 0x530(r30)
    addi    r6, r3, 0x8
    addi    r5, r3, 0xa
    sthx    r10, r4, r0
    addi    r4, r3, 0xc
    addi    r0, r3, 0xe
    lwz     r9, 0x530(r30)
    addi    r31, r31, 0x8
    addi    r3, r3, 0x10
    sthx    r10, r9, r8
    lwz     r8, 0x530(r30)
    sthx    r10, r8, r7
    lwz     r7, 0x530(r30)
    sthx    r10, r7, r6
    lwz     r6, 0x530(r30)
    sthx    r10, r6, r5
    lwz     r5, 0x530(r30)
    sthx    r10, r5, r4
    lwz     r4, 0x530(r30)
    sthx    r10, r4, r0
    bdnz+      branch_0x80276968
    subfic  r0, r31, 0x3c
    cmpwi   r31, 0x3c
    mtctr   r0
    slwi    r3, r31, 1
    bge-    branch_0x802769f8
branch_0x802769e8:
    lwz     r4, 0x530(r30)
    sthx    r10, r4, r3
    addi    r3, r3, 0x2
    bdnz+      branch_0x802769e8
branch_0x802769f8:
    li      r0, 0x0
    stb     r0, 0x534(r30)
    lis     r4, unk_80000001@h
    mr      r3, r30
    sth     r0, 0x536(r30)
    addi    r4, r4, unk_80000001@l
    li      r5, 0x5
    sth     r0, 0x538(r30)
    lis     r6, 0xfc00
    stb     r0, 0x53a(r30)
    stb     r0, 0x53b(r30)
    lfs     f1, 0x758(r30)
    lfs     f2, 0x744(r30)
    lfs     f3, 0x71c(r30)
    lfs     f4, 0x730(r30)
    bl      initHitActor__9THitActorFUlUsiffff
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80276a60
    lwz     r5, 0x3a8(r30)
    mr      r3, r29
    lfs     f1, -0x9c0(r2)
    mr      r4, r30
    lwz     r5, 0x8(r5)
    bl      __ct__16TMBindShadowBodyFP9THitActorP8J3DModelf
branch_0x80276a60:
    stw     r29, 0x390(r30)
    li      r0, 0x11
    li      r9, 0xad
    sth     r0, 0x92(r30)
    li      r3, 0x22
    li      r0, 0x33
    sth     r9, 0xa2(r30)
    li      r8, 0x44
    li      r7, 0x55
    sth     r3, 0xc6(r30)
    li      r6, 0x99
    li      r5, 0xaa
    sth     r0, 0xd6(r30)
    li      r4, 0xbb
    li      r3, 0xcc
    sth     r9, 0x102(r30)
    li      r0, 0xee
    sth     r8, 0x12a(r30)
    sth     r7, 0x13e(r30)
    sth     r6, 0x37c(r30)
    stb     r5, 0x3d1(r30)
    sth     r4, 0x3d2(r30)
    stb     r3, 0x535(r30)
    sth     r0, 0x556(r30)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl loadAfter__6TMarioFv
loadAfter__6TMarioFv: # 0x80276adc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80276b04
    li      r0, 0x1
    b       branch_0x80276b08

branch_0x80276b04:
    li      r0, 0x0
branch_0x80276b08:
    clrlwi. r0, r0, 24
    beq-    branch_0x80276b18
    lwz     r3, 0x3e4(r31)
    bl      initInLoadAfter__9TWaterGunFv
branch_0x80276b18:
    lwz     r3, 0x3f0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80276b28
    bl      initInLoadAfter__6TYoshiFv
branch_0x80276b28:
    bl      SMS_isMultiPlayerMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80276b48
    lwz     r3, R13Off_m0x7118(r13)
    addi    r4, r31, 0x10
    lfs     f1, -0xa78(r2)
    lfs     f2, -0x980(r2)
    bl      addMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3_f_ff
branch_0x80276b48:
    mr      r3, r31
    bl      initParticle__6TMarioFv
    mr      r3, r31
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80276b88
    lwz     r6, 0x3a8(r31)
    addi    r4, r31, 0x10
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r31, 0x29c
    lwz     r6, 0x8(r6)
    li      r7, 0x1
    lwz     r6, 0x58(r6)
    addi    r6, r6, 0x30
    bl      setPlayerInfo__6MSoundFP3VecP3VecPA4_fb
    b       branch_0x80276bac

branch_0x80276b88:
    lwz     r6, 0x3a8(r31)
    addi    r4, r31, 0x10
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r31, 0x29c
    lwz     r6, 0x8(r6)
    li      r7, 0x0
    lwz     r6, 0x58(r6)
    addi    r6, r6, 0x30
    bl      setPlayerInfo__6MSoundFP3VecP3VecPA4_fb
branch_0x80276bac:
    mr      r3, r31
    bl      finalDrawInitialize__6TMarioFv
    mr      r3, r31
    bl      initMirrorModel__6TMarioFv
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl load__6TMarioFR20JSUMemoryInputStream
load__6TMarioFR20JSUMemoryInputStream: # 0x80276bd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    li      r31, 0x0
    sth     r31, 0x94(r29)
    addi    r3, r30, 0x0
    addi    r4, r29, 0x298
    lfs     f1, -0x8a0(r2)
    li      r5, 0x4
    lfs     f0, 0x34(r29)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x96(r29)
    sth     r31, 0x98(r29)
    lha     r0, 0x96(r29)
    sth     r0, 0x9a(r29)
    lha     r0, 0x96(r29)
    sth     r0, 0x9c(r29)
    lha     r0, 0x96(r29)
    sth     r0, 0x9e(r29)
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    stw     r31, 0x118(r29)
    lwz     r0, 0x10(sp)
    clrlwi. r0, r0, 31
    beq-    branch_0x80276c74
    lwz     r0, 0x118(r29)
    rlwinm  r0, r0, 0, 17, 15
    stw     r0, 0x118(r29)
    b       branch_0x80276c80

branch_0x80276c74:
    lwz     r0, 0x118(r29)
    ori     r0, r0, 0x8000
    stw     r0, 0x118(r29)
branch_0x80276c80:
    bl      SMS_SetMarioAccessParams__Fv
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__6TMarioFv
__ct__6TMarioFv: # 0x80276cb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r16, 0x18(sp)
    stw     r3, 0x8(sp)
    lis     r3, unk_8039fe80@ha
    addi    r30, r3, unk_8039fe80@l
    lwz     r31, 0x8(sp)
    lis     r3, unk_803dd638@ha
    addi    r16, r3, unk_803dd638@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x159c
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__10TTakeActor@ha
    addi    r3, r3, __vvt__10TTakeActor@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__17TDrawSyncCallback@ha
    stw     r0, 0x20(r31)
    li      r27, 0x0
    addi    r4, r3, __vvt__17TDrawSyncCallback@l
    stw     r27, 0x68(r31)
    addi    r6, r16, 0x28
    addi    r5, r16, 0x4c
    stw     r27, 0x6c(r31)
    addi    r0, r16, 0xdc
    addi    r3, r31, 0x474
    stw     r4, 0x70(r31)
    addi    r4, r30, 0x159c
    stw     r6, 0x0(r31)
    stw     r5, 0x20(r31)
    stw     r0, 0x70(r31)
    stw     r27, 0x3f0(r31)
    bl      __ct__9THitActorFPCc
    stw     r27, 0x4fc(r31)
    addi    r3, r31, 0x500
    bl      __ct__17TMarioSoundValuesFv
    addi    r3, r31, 0x574
    bl      __ct__Q26TMario9TDeParamsFv
    addi    r0, r30, 0x15a8
    stw     r0, 0x9a0(r31)
    addi    r3, r30, 0x121c
    stw     r27, 0x9a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x9a8
    addi    r4, r31, 0x9a0
    addi    r6, r30, 0x121c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x9a8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0xa4c(r2)
    addi    r3, r30, 0x188
    stfs    f0, 0x9b8(r31)
    stw     r28, 0x9a8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x9bc
    addi    r4, r31, 0x9a0
    addi    r6, r30, 0x188
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x9bc(r31)
    addi    r3, r30, 0x194
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x9cc(r31)
    stw     r28, 0x9bc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x9d0
    addi    r4, r31, 0x9a0
    addi    r6, r30, 0x194
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x9d0(r31)
    addi    r3, r30, 0x1a0
    lfs     f0, -0x988(r2)
    stfs    f0, 0x9e0(r31)
    stw     r28, 0x9d0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x9e4
    addi    r4, r31, 0x9a0
    addi    r6, r30, 0x1a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r23, r3, __vvt__10TParamT_s_@l
    stw     r23, 0x9e4(r31)
    lis     r3, __vvt__11TParamRT_s_@ha
    addi    r22, r3, __vvt__11TParamRT_s_@l
    sth     r27, 0x9f4(r31)
    addi    r3, r30, 0x1b0
    stw     r22, 0x9e4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x9f8
    addi    r4, r31, 0x9a0
    addi    r6, r30, 0x1b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x9f8(r31)
    li      r24, 0x3e8
    addi    r3, r30, 0x1ec
    sth     r24, 0xa08(r31)
    stw     r22, 0x9f8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xa0c
    addi    r4, r31, 0x9a0
    addi    r6, r30, 0x1ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa0c(r31)
    addi    r3, r31, 0x9a0
    lfs     f0, -0x8cc(r2)
    stfs    f0, 0xa1c(r31)
    stw     r28, 0xa0c(r31)
    lwz     r4, 0x9a0(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x15c4
    stw     r0, 0xa20(r31)
    addi    r3, r30, 0x121c
    stw     r27, 0xa24(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xa28
    addi    r4, r31, 0xa20
    addi    r6, r30, 0x121c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa28(r31)
    addi    r3, r30, 0x188
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0xa38(r31)
    stw     r28, 0xa28(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xa3c
    addi    r4, r31, 0xa20
    addi    r6, r30, 0x188
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa3c(r31)
    addi    r3, r30, 0x194
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0xa4c(r31)
    stw     r28, 0xa3c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xa50
    addi    r4, r31, 0xa20
    addi    r6, r30, 0x194
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa50(r31)
    addi    r3, r30, 0x1a0
    lfs     f0, -0x988(r2)
    stfs    f0, 0xa60(r31)
    stw     r28, 0xa50(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xa64
    addi    r4, r31, 0xa20
    addi    r6, r30, 0x1a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0xa64(r31)
    addi    r3, r30, 0x1b0
    sth     r27, 0xa74(r31)
    stw     r22, 0xa64(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xa78
    addi    r4, r31, 0xa20
    addi    r6, r30, 0x1b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0xa78(r31)
    addi    r3, r30, 0x1ec
    sth     r24, 0xa88(r31)
    stw     r22, 0xa78(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xa8c
    addi    r4, r31, 0xa20
    addi    r6, r30, 0x1ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8c(r31)
    addi    r3, r31, 0xa20
    lfs     f0, -0x8cc(r2)
    stfs    f0, 0xa9c(r31)
    stw     r28, 0xa8c(r31)
    lwz     r4, 0xa20(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x15e4
    stw     r0, 0xaa0(r31)
    addi    r3, r2, R2Off_m0x8dc
    stw     r27, 0xaa4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xaa8
    addi    r4, r31, 0xaa0
    addi    r6, r2, R2Off_m0x8dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xaa8(r31)
    addi    r3, r2, R2Off_m0x8d4
    lfs     f0, -0x948(r2)
    stfs    f0, 0xab8(r31)
    stw     r28, 0xaa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xabc
    addi    r4, r31, 0xaa0
    addi    r6, r2, R2Off_m0x8d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xabc(r31)
    addi    r3, r31, 0xaa0
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0xacc(r31)
    stw     r28, 0xabc(r31)
    lwz     r4, 0xaa0(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1600
    stw     r0, 0xad0(r31)
    addi    r3, r2, R2Off_m0x8dc
    stw     r27, 0xad4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xad8
    addi    r4, r31, 0xad0
    addi    r6, r2, R2Off_m0x8dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xad8(r31)
    addi    r3, r2, R2Off_m0x8d4
    lfs     f0, -0x948(r2)
    stfs    f0, 0xae8(r31)
    stw     r28, 0xad8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0xaec
    addi    r4, r31, 0xad0
    addi    r6, r2, R2Off_m0x8d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xaec(r31)
    addi    r3, r31, 0xad0
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0xafc(r31)
    stw     r28, 0xaec(r31)
    lwz     r4, 0xad0(r31)
    bl      load__7TParamsFPCc
    addi    r3, r31, 0xb00
    bl      __ct__Q26TMario11TJumpParamsFv
    addi    r3, r31, 0xea0
    bl      __ct__Q26TMario10TRunParamsFv
    addi    r3, r31, 0x104c
    bl      __ct__Q26TMario11TSwimParamsFv
    addi    r0, r30, 0xbdc
    stw     r0, 0x1298(r31)
    addi    r3, r2, R2Off_m0x938
    stw     r27, 0x129c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x12a0
    addi    r4, r31, 0x1298
    addi    r6, r2, R2Off_m0x938
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x12a0(r31)
    addi    r3, r30, 0xbf0
    lfs     f0, -0x994(r2)
    stfs    f0, 0x12b0(r31)
    stw     r28, 0x12a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x12b4
    addi    r4, r31, 0x1298
    addi    r6, r30, 0xbf0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x12b4(r31)
    addi    r3, r30, 0xbfc
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x12c4(r31)
    stw     r28, 0x12b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x12c8
    addi    r4, r31, 0x1298
    addi    r6, r30, 0xbfc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x12c8(r31)
    li      r0, 0x7d0
    addi    r3, r30, 0xc08
    sth     r0, 0x12d8(r31)
    stw     r22, 0x12c8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x12dc
    addi    r4, r31, 0x1298
    addi    r6, r30, 0xc08
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x12dc(r31)
    li      r0, 0x960
    addi    r3, r30, 0xc14
    sth     r0, 0x12ec(r31)
    stw     r22, 0x12dc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x12f0
    addi    r4, r31, 0x1298
    addi    r6, r30, 0xc14
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x12f0(r31)
    addi    r3, r30, 0xc20
    lfs     f0, -0x930(r2)
    stfs    f0, 0x1300(r31)
    stw     r28, 0x12f0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1304
    addi    r4, r31, 0x1298
    addi    r6, r30, 0xc20
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1304(r31)
    addi    r3, r31, 0x1298
    lfs     f0, -0x99c(r2)
    stfs    f0, 0x1314(r31)
    stw     r28, 0x1304(r31)
    lwz     r4, 0x1298(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0xbbc
    stw     r0, 0x1318(r31)
    addi    r3, r30, 0xbd0
    stw     r27, 0x131c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1320
    addi    r4, r31, 0x1318
    addi    r6, r30, 0xbd0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1320(r31)
    addi    r3, r31, 0x1318
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x1330(r31)
    stw     r28, 0x1320(r31)
    lwz     r4, 0x1318(r31)
    bl      load__7TParamsFPCc
    addi    r3, r31, 0x1334
    bl      __ct__Q26TMario11TWireParamsFv
    addi    r0, r30, 0x161c
    stw     r0, 0x147c(r31)
    addi    r3, r30, 0xa70
    stw     r27, 0x1480(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1484
    addi    r4, r31, 0x147c
    addi    r6, r30, 0xa70
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1484(r31)
    addi    r3, r30, 0xa7c
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x1494(r31)
    stw     r28, 0x1484(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1498
    addi    r4, r31, 0x147c
    addi    r6, r30, 0xa7c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1498(r31)
    addi    r3, r30, 0xa88
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x14a8(r31)
    stw     r28, 0x1498(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x14ac
    addi    r4, r31, 0x147c
    addi    r6, r30, 0xa88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x14ac(r31)
    addi    r3, r30, 0xa98
    lfs     f0, -0x994(r2)
    stfs    f0, 0x14bc(r31)
    stw     r28, 0x14ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x14c0
    addi    r4, r31, 0x147c
    addi    r6, r30, 0xa98
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x14c0(r31)
    addi    r3, r31, 0x147c
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0x14d0(r31)
    stw     r28, 0x14c0(r31)
    lwz     r4, 0x147c(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1638
    stw     r0, 0x14d4(r31)
    addi    r3, r30, 0xa70
    stw     r27, 0x14d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x14dc
    addi    r4, r31, 0x14d4
    addi    r6, r30, 0xa70
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x14dc(r31)
    addi    r3, r30, 0xa7c
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x14ec(r31)
    stw     r28, 0x14dc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x14f0
    addi    r4, r31, 0x14d4
    addi    r6, r30, 0xa7c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x14f0(r31)
    addi    r3, r30, 0xa88
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x1500(r31)
    stw     r28, 0x14f0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1504
    addi    r4, r31, 0x14d4
    addi    r6, r30, 0xa88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1504(r31)
    addi    r3, r30, 0xa98
    lfs     f0, -0x994(r2)
    stfs    f0, 0x1514(r31)
    stw     r28, 0x1504(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1518
    addi    r4, r31, 0x14d4
    addi    r6, r30, 0xa98
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1518(r31)
    addi    r3, r31, 0x14d4
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0x1528(r31)
    stw     r28, 0x1518(r31)
    lwz     r4, 0x14d4(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1658
    stw     r0, 0x152c(r31)
    addi    r3, r30, 0xa70
    stw     r27, 0x1530(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1534
    addi    r4, r31, 0x152c
    addi    r6, r30, 0xa70
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1534(r31)
    addi    r3, r30, 0xa7c
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x1544(r31)
    stw     r28, 0x1534(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1548
    addi    r4, r31, 0x152c
    addi    r6, r30, 0xa7c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1548(r31)
    addi    r3, r30, 0xa88
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x1558(r31)
    stw     r28, 0x1548(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x155c
    addi    r4, r31, 0x152c
    addi    r6, r30, 0xa88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x155c(r31)
    addi    r3, r30, 0xa98
    lfs     f0, -0x994(r2)
    stfs    f0, 0x156c(r31)
    stw     r28, 0x155c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1570
    addi    r4, r31, 0x152c
    addi    r6, r30, 0xa98
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1570(r31)
    addi    r3, r31, 0x152c
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0x1580(r31)
    stw     r28, 0x1570(r31)
    lwz     r4, 0x152c(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1684
    stw     r0, 0x1584(r31)
    addi    r3, r30, 0xa70
    stw     r27, 0x1588(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x158c
    addi    r4, r31, 0x1584
    addi    r6, r30, 0xa70
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x158c(r31)
    addi    r3, r30, 0xa7c
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x159c(r31)
    stw     r28, 0x158c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x15a0
    addi    r4, r31, 0x1584
    addi    r6, r30, 0xa7c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15a0(r31)
    addi    r3, r30, 0xa88
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x15b0(r31)
    stw     r28, 0x15a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x15b4
    addi    r4, r31, 0x1584
    addi    r6, r30, 0xa88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15b4(r31)
    addi    r3, r30, 0xa98
    lfs     f0, -0x994(r2)
    stfs    f0, 0x15c4(r31)
    stw     r28, 0x15b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x15c8
    addi    r4, r31, 0x1584
    addi    r6, r30, 0xa98
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c8(r31)
    addi    r3, r31, 0x1584
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0x15d8(r31)
    stw     r28, 0x15c8(r31)
    lwz     r4, 0x1584(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0xa1c
    stw     r0, 0x15dc(r31)
    addi    r3, r30, 0xa2c
    stw     r27, 0x15e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x15e4
    addi    r4, r31, 0x15dc
    addi    r6, r30, 0xa2c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15e4(r31)
    addi    r3, r30, 0xa38
    lfs     f0, -0x950(r2)
    stfs    f0, 0x15f4(r31)
    stw     r28, 0x15e4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x15f8
    addi    r4, r31, 0x15dc
    addi    r6, r30, 0xa38
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15f8(r31)
    addi    r3, r30, 0xa44
    lfs     f0, -0x984(r2)
    stfs    f0, 0x1608(r31)
    stw     r28, 0x15f8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x160c
    addi    r4, r31, 0x15dc
    addi    r6, r30, 0xa44
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x160c(r31)
    addi    r3, r30, 0xa54
    lfs     f0, -0x94c(r2)
    stfs    f0, 0x161c(r31)
    stw     r28, 0x160c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1620
    addi    r4, r31, 0x15dc
    addi    r6, r30, 0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1620(r31)
    addi    r3, r30, 0xa64
    lfs     f0, -0x948(r2)
    stfs    f0, 0x1630(r31)
    stw     r28, 0x1620(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1634
    addi    r4, r31, 0x15dc
    addi    r6, r30, 0xa64
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1634(r31)
    addi    r3, r31, 0x15dc
    lfs     f0, -0x944(r2)
    stfs    f0, 0x1644(r31)
    stw     r28, 0x1634(r31)
    lwz     r4, 0x15dc(r31)
    bl      load__7TParamsFPCc
    addi    r3, r31, 0x1648
    addi    r4, r30, 0x16a8
    bl      __ct__Q26TMario14TSurfingParamsFPCc
    addi    r3, r31, 0x181c
    addi    r4, r30, 0x16c4
    bl      __ct__Q26TMario14TSurfingParamsFPCc
    addi    r3, r31, 0x19f0
    addi    r4, r30, 0x16e0
    bl      __ct__Q26TMario14TSurfingParamsFPCc
    addi    r3, r31, 0x1bc4
    addi    r4, r30, 0x1700
    bl      __ct__Q26TMario14TSurfingParamsFPCc
    addi    r3, r31, 0x1d98
    addi    r4, r30, 0x1720
    bl      __ct__Q26TMario14TSurfingParamsFPCc
    addi    r3, r31, 0x1f6c
    addi    r4, r30, 0x1740
    bl      __ct__Q26TMario14TSurfingParamsFPCc
    addi    r0, r30, 0x1760
    stw     r0, 0x2140(r31)
    addi    r3, r2, R2Off_m0xa48
    stw     r27, 0x2144(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2148
    addi    r4, r31, 0x2140
    addi    r6, r2, R2Off_m0xa48
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x2148(r31)
    li      r16, 0x80
    addi    r3, r30, 0x17c
    sth     r16, 0x2158(r31)
    stw     r22, 0x2148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x215c
    addi    r4, r31, 0x2140
    addi    r6, r30, 0x17c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x215c(r31)
    addi    r3, r2, R2Off_m0xa2c
    lfs     f0, -0xa30(r2)
    stfs    f0, 0x216c(r31)
    stw     r28, 0x215c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2170
    addi    r4, r31, 0x2140
    addi    r6, r2, R2Off_m0xa2c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2170(r31)
    addi    r3, r31, 0x2140
    lfs     f0, -0xa24(r2)
    stfs    f0, 0x2180(r31)
    stw     r28, 0x2170(r31)
    lwz     r4, 0x2140(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1774
    stw     r0, 0x2184(r31)
    addi    r3, r2, R2Off_m0xa48
    stw     r27, 0x2188(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x218c
    addi    r4, r31, 0x2184
    addi    r6, r2, R2Off_m0xa48
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x218c(r31)
    addi    r3, r30, 0x148
    sth     r16, 0x219c(r31)
    stw     r22, 0x218c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x21a0
    addi    r4, r31, 0x2184
    addi    r6, r30, 0x148
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x21a0(r31)
    addi    r3, r30, 0x154
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x21b0(r31)
    stw     r28, 0x21a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x21b4
    addi    r4, r31, 0x2184
    addi    r6, r30, 0x154
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x21b4(r31)
    addi    r3, r30, 0x164
    lfs     f0, -0xa3c(r2)
    stfs    f0, 0x21c4(r31)
    stw     r28, 0x21b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x21c8
    addi    r4, r31, 0x2184
    addi    r6, r30, 0x164
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x21c8(r31)
    addi    r3, r30, 0x170
    lfs     f0, -0xa38(r2)
    stfs    f0, 0x21d8(r31)
    stw     r28, 0x21c8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x21dc
    addi    r4, r31, 0x2184
    addi    r6, r30, 0x170
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x21dc(r31)
    addi    r3, r31, 0x2184
    lfs     f0, -0xa34(r2)
    stfs    f0, 0x21ec(r31)
    stw     r28, 0x21dc(r31)
    lwz     r4, 0x2184(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x8dc
    stw     r0, 0x21f0(r31)
    addi    r3, r30, 0x8f0
    stw     r27, 0x21f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x21f8
    addi    r4, r31, 0x21f0
    addi    r6, r30, 0x8f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x21f8(r31)
    addi    r3, r30, 0x900
    lfs     f0, -0x964(r2)
    stfs    f0, 0x2208(r31)
    stw     r28, 0x21f8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x220c
    addi    r4, r31, 0x21f0
    addi    r6, r30, 0x900
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x220c(r31)
    addi    r3, r30, 0x910
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x221c(r31)
    stw     r28, 0x220c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2220
    addi    r4, r31, 0x21f0
    addi    r6, r30, 0x910
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2220(r31)
    addi    r3, r30, 0x920
    lfs     f0, -0x960(r2)
    stfs    f0, 0x2230(r31)
    stw     r28, 0x2220(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2234
    addi    r4, r31, 0x21f0
    addi    r6, r30, 0x920
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2234(r31)
    addi    r3, r30, 0x92c
    lfs     f0, -0x988(r2)
    stfs    f0, 0x2244(r31)
    stw     r28, 0x2234(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2248
    addi    r4, r31, 0x21f0
    addi    r6, r30, 0x92c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2248(r31)
    addi    r3, r30, 0x938
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0x2258(r31)
    stw     r28, 0x2248(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x225c
    addi    r4, r31, 0x21f0
    addi    r6, r30, 0x938
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x225c(r31)
    addi    r3, r30, 0x94c
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0x226c(r31)
    stw     r28, 0x225c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2270
    addi    r4, r31, 0x21f0
    addi    r6, r30, 0x94c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2270(r31)
    addi    r3, r30, 0x960
    lfs     f0, -0x95c(r2)
    stfs    f0, 0x2280(r31)
    stw     r28, 0x2270(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2284
    addi    r4, r31, 0x21f0
    addi    r6, r30, 0x960
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2284(r31)
    addi    r3, r30, 0x970
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x2294(r31)
    stw     r28, 0x2284(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2298
    addi    r4, r31, 0x21f0
    addi    r6, r30, 0x970
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2298(r31)
    addi    r3, r31, 0x21f0
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x22a8(r31)
    stw     r28, 0x2298(r31)
    lwz     r4, 0x21f0(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x97c
    stw     r0, 0x22ac(r31)
    addi    r3, r30, 0x994
    stw     r27, 0x22b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x22b4
    addi    r4, r31, 0x22ac
    addi    r6, r30, 0x994
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x22b4(r31)
    addi    r3, r30, 0x9ac
    lfs     f0, -0x99c(r2)
    stfs    f0, 0x22c4(r31)
    stw     r28, 0x22b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x22c8
    addi    r4, r31, 0x22ac
    addi    r6, r30, 0x9ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x22c8(r31)
    addi    r3, r30, 0x9bc
    lfs     f0, -0x970(r2)
    stfs    f0, 0x22d8(r31)
    stw     r28, 0x22c8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x22dc
    addi    r4, r31, 0x22ac
    addi    r6, r30, 0x9bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x22dc(r31)
    addi    r3, r30, 0x9cc
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0x22ec(r31)
    stw     r28, 0x22dc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x22f0
    addi    r4, r31, 0x22ac
    addi    r6, r30, 0x9cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x22f0(r31)
    addi    r3, r30, 0x9e0
    lfs     f0, -0x958(r2)
    stfs    f0, 0x2300(r31)
    stw     r28, 0x22f0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2304
    addi    r4, r31, 0x22ac
    addi    r6, r30, 0x9e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2304(r31)
    addi    r3, r30, 0x9f4
    lfs     f0, -0x9c0(r2)
    stfs    f0, 0x2314(r31)
    stw     r28, 0x2304(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2318
    addi    r4, r31, 0x22ac
    addi    r6, r30, 0x9f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2318(r31)
    addi    r3, r30, 0xa08
    lfs     f0, -0x954(r2)
    stfs    f0, 0x2328(r31)
    stw     r28, 0x2318(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x232c
    addi    r4, r31, 0x22ac
    addi    r6, r30, 0xa08
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x232c(r31)
    addi    r3, r31, 0x22ac
    lfs     f0, -0x954(r2)
    stfs    f0, 0x233c(r31)
    stw     r28, 0x232c(r31)
    lwz     r4, 0x22ac(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x7fc
    stw     r0, 0x2340(r31)
    addi    r3, r30, 0x814
    stw     r27, 0x2344(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2348
    addi    r4, r31, 0x2340
    addi    r6, r30, 0x814
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__11TParamT_Uc_@ha
    addi    r26, r3, __vvt__11TParamT_Uc_@l
    stw     r26, 0x2348(r31)
    li      r0, 0x1e
    lis     r3, __vvt__12TParamRT_Uc_@ha
    stb     r0, 0x2358(r31)
    addi    r25, r3, __vvt__12TParamRT_Uc_@l
    addi    r3, r30, 0x828
    stw     r25, 0x2348(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x235c
    addi    r4, r31, 0x2340
    addi    r6, r30, 0x828
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x235c(r31)
    li      r0, 0x5a
    addi    r3, r30, 0x840
    stb     r0, 0x236c(r31)
    stw     r25, 0x235c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2370
    addi    r4, r31, 0x2340
    addi    r6, r30, 0x840
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2370(r31)
    li      r0, 0x96
    addi    r3, r30, 0x854
    stb     r0, 0x2380(r31)
    stw     r25, 0x2370(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2384
    addi    r4, r31, 0x2340
    addi    r6, r30, 0x854
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2384(r31)
    addi    r3, r30, 0x86c
    lfs     f0, -0x994(r2)
    stfs    f0, 0x2394(r31)
    stw     r28, 0x2384(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2398
    addi    r4, r31, 0x2340
    addi    r6, r30, 0x86c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2398(r31)
    addi    r3, r30, 0x880
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x23a8(r31)
    stw     r28, 0x2398(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x23ac
    addi    r4, r31, 0x2340
    addi    r6, r30, 0x880
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x23ac(r31)
    li      r0, 0x18
    addi    r3, r30, 0x894
    sth     r0, 0x23bc(r31)
    stw     r22, 0x23ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x23c0
    addi    r4, r31, 0x2340
    addi    r6, r30, 0x894
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x23c0(r31)
    li      r19, 0xa
    addi    r3, r30, 0x8a8
    sth     r19, 0x23d0(r31)
    stw     r22, 0x23c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x23d4
    addi    r4, r31, 0x2340
    addi    r6, r30, 0x8a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x23d4(r31)
    addi    r3, r30, 0x8b4
    lfs     f0, -0x96c(r2)
    stfs    f0, 0x23e4(r31)
    stw     r28, 0x23d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x23e8
    addi    r4, r31, 0x2340
    addi    r6, r30, 0x8b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x23e8(r31)
    addi    r3, r30, 0x8c8
    lfs     f0, -0x968(r2)
    stfs    f0, 0x23f8(r31)
    stw     r28, 0x23e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x23fc
    addi    r4, r31, 0x2340
    addi    r6, r30, 0x8c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x23fc(r31)
    addi    r3, r31, 0x2340
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x240c(r31)
    stw     r28, 0x23fc(r31)
    lwz     r4, 0x2340(r31)
    bl      load__7TParamsFPCc
    addi    r3, r31, 0x2410
    bl      __ct__Q26TMario15TGraffitoParamsFv
    addi    r3, r31, 0x25bc
    bl      __ct__Q26TMario12TDirtyParamsFv
    addi    r0, r30, 0x4c0
    stw     r0, 0x27a4(r31)
    addi    r3, r30, 0x4d8
    stw     r27, 0x27a8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x27ac
    addi    r4, r31, 0x27a4
    addi    r6, r30, 0x4d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x27ac(r31)
    li      r20, 0x19
    addi    r3, r30, 0x4e8
    sth     r20, 0x27bc(r31)
    stw     r22, 0x27ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x27c0
    addi    r4, r31, 0x27a4
    addi    r6, r30, 0x4e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x27c0(r31)
    li      r0, 0x8
    addi    r3, r30, 0x4f8
    sth     r0, 0x27d0(r31)
    stw     r22, 0x27c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x27d4
    addi    r4, r31, 0x27a4
    addi    r6, r30, 0x4f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x27d4(r31)
    li      r0, 0xf
    addi    r3, r30, 0x508
    sth     r0, 0x27e4(r31)
    stw     r22, 0x27d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x27e8
    addi    r4, r31, 0x27a4
    addi    r6, r30, 0x508
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x27e8(r31)
    li      r17, 0x6
    addi    r3, r31, 0x27a4
    sth     r17, 0x27f8(r31)
    stw     r22, 0x27e8(r31)
    lwz     r4, 0x27a4(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x3e4
    stw     r0, 0x27fc(r31)
    addi    r3, r30, 0x400
    stw     r27, 0x2800(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2804
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x400
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2804(r31)
    addi    r3, r30, 0x410
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x2814(r31)
    stw     r28, 0x2804(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2818
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x410
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2818(r31)
    addi    r3, r30, 0x420
    lfs     f0, -0x9a0(r2)
    stfs    f0, 0x2828(r31)
    stw     r28, 0x2818(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x282c
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x420
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x282c(r31)
    li      r16, 0x5
    addi    r3, r30, 0x430
    sth     r16, 0x283c(r31)
    stw     r22, 0x282c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2840
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x430
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2840(r31)
    addi    r3, r30, 0x440
    lfs     f0, -0x99c(r2)
    stfs    f0, 0x2850(r31)
    stw     r28, 0x2840(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2854
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x440
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2854(r31)
    addi    r3, r30, 0x454
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2864(r31)
    stw     r28, 0x2854(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2868
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x454
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2868(r31)
    addi    r3, r30, 0x468
    lfs     f0, -0x9b8(r2)
    stfs    f0, 0x2878(r31)
    stw     r28, 0x2868(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x287c
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x468
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x287c(r31)
    addi    r3, r30, 0x47c
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x288c(r31)
    stw     r28, 0x287c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2890
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x47c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2890(r31)
    addi    r3, r30, 0x490
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x28a0(r31)
    stw     r28, 0x2890(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x28a4
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x490
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x28a4(r31)
    addi    r3, r30, 0x4a0
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x28b4(r31)
    stw     r28, 0x28a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x28b8
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x4a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x28b8(r31)
    addi    r3, r30, 0x4b0
    lfs     f0, -0x998(r2)
    stfs    f0, 0x28c8(r31)
    stw     r28, 0x28b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x28cc
    addi    r4, r31, 0x27fc
    addi    r6, r30, 0x4b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x28cc(r31)
    addi    r3, r31, 0x27fc
    lfs     f0, -0x998(r2)
    stfs    f0, 0x28dc(r31)
    stw     r28, 0x28cc(r31)
    lwz     r4, 0x27fc(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x37c
    stw     r0, 0x28e0(r31)
    addi    r3, r30, 0x394
    stw     r27, 0x28e4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x28e8
    addi    r4, r31, 0x28e0
    addi    r6, r30, 0x394
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x28e8(r31)
    addi    r3, r30, 0x3a0
    lfs     f0, -0x9ac(r2)
    stfs    f0, 0x28f8(r31)
    stw     r28, 0x28e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x28fc
    addi    r4, r31, 0x28e0
    addi    r6, r30, 0x3a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x28fc(r31)
    addi    r3, r30, 0x3ac
    lfs     f0, -0x9a8(r2)
    stfs    f0, 0x290c(r31)
    stw     r28, 0x28fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2910
    addi    r4, r31, 0x28e0
    addi    r6, r30, 0x3ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2910(r31)
    li      r18, 0xb4
    addi    r3, r30, 0x3c0
    stb     r18, 0x2920(r31)
    stw     r25, 0x2910(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2924
    addi    r4, r31, 0x28e0
    addi    r6, r30, 0x3c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2924(r31)
    addi    r3, r30, 0x3d4
    stb     r18, 0x2934(r31)
    stw     r25, 0x2924(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2938
    addi    r4, r31, 0x28e0
    addi    r6, r30, 0x3d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2938(r31)
    addi    r3, r31, 0x28e0
    lfs     f0, -0x9a4(r2)
    stfs    f0, 0x2948(r31)
    stw     r28, 0x2938(r31)
    lwz     r4, 0x28e0(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1788
    stw     r0, 0x294c(r31)
    addi    r3, r30, 0x2c8
    stw     r27, 0x2950(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2954
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2954(r31)
    addi    r3, r30, 0x2d8
    lfs     f0, -0x9b4(r2)
    stfs    f0, 0x2964(r31)
    stw     r28, 0x2954(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2968
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x2d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2968(r31)
    addi    r3, r30, 0x2e8
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2978(r31)
    stw     r28, 0x2968(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x297c
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x297c(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x298c(r31)
    stw     r28, 0x297c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2990
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2990(r31)
    addi    r3, r30, 0x30c
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x29a0(r31)
    stw     r28, 0x2990(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x29a4
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x30c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29a4(r31)
    addi    r3, r30, 0x320
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x29b4(r31)
    stw     r28, 0x29a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x29b8
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29b8(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x29c8(r31)
    stw     r28, 0x29b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x29cc
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29cc(r31)
    addi    r3, r30, 0x344
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x29dc(r31)
    stw     r28, 0x29cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x29e0
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x29e0(r31)
    li      r24, 0x1
    addi    r3, r30, 0x350
    stb     r24, 0x29f0(r31)
    stw     r25, 0x29e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x29f4
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x350
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x29f4(r31)
    addi    r3, r30, 0x35c
    stb     r24, 0x2a04(r31)
    stw     r25, 0x29f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2a08
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x35c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x2a08(r31)
    li      r21, 0x200
    addi    r3, r30, 0x36c
    sth     r21, 0x2a18(r31)
    stw     r22, 0x2a08(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2a1c
    addi    r4, r31, 0x294c
    addi    r6, r30, 0x36c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2a1c(r31)
    addi    r3, r31, 0x294c
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x2a2c(r31)
    stw     r28, 0x2a1c(r31)
    lwz     r4, 0x294c(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x17a4
    stw     r0, 0x2a30(r31)
    addi    r3, r30, 0x2c8
    stw     r27, 0x2a34(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2a38
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2a38(r31)
    addi    r3, r30, 0x2d8
    lfs     f0, -0x9b4(r2)
    stfs    f0, 0x2a48(r31)
    stw     r28, 0x2a38(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2a4c
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x2d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2a4c(r31)
    addi    r3, r30, 0x2e8
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2a5c(r31)
    stw     r28, 0x2a4c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2a60
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2a60(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2a70(r31)
    stw     r28, 0x2a60(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2a74
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2a74(r31)
    addi    r3, r30, 0x30c
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2a84(r31)
    stw     r28, 0x2a74(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2a88
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x30c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2a88(r31)
    addi    r3, r30, 0x320
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2a98(r31)
    stw     r28, 0x2a88(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2a9c
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2a9c(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2aac(r31)
    stw     r28, 0x2a9c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ab0
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ab0(r31)
    addi    r3, r30, 0x344
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2ac0(r31)
    stw     r28, 0x2ab0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ac4
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2ac4(r31)
    addi    r3, r30, 0x350
    stb     r24, 0x2ad4(r31)
    stw     r25, 0x2ac4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ad8
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x350
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2ad8(r31)
    addi    r3, r30, 0x35c
    stb     r24, 0x2ae8(r31)
    stw     r25, 0x2ad8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2aec
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x35c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x2aec(r31)
    addi    r3, r30, 0x36c
    sth     r21, 0x2afc(r31)
    stw     r22, 0x2aec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2b00
    addi    r4, r31, 0x2a30
    addi    r6, r30, 0x36c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b00(r31)
    addi    r3, r31, 0x2a30
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x2b10(r31)
    stw     r28, 0x2b00(r31)
    lwz     r4, 0x2a30(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x17bc
    stw     r0, 0x2b14(r31)
    addi    r3, r30, 0x2c8
    stw     r27, 0x2b18(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2b1c
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b1c(r31)
    addi    r3, r30, 0x2d8
    lfs     f0, -0x9b4(r2)
    stfs    f0, 0x2b2c(r31)
    stw     r28, 0x2b1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2b30
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x2d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b30(r31)
    addi    r3, r30, 0x2e8
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2b40(r31)
    stw     r28, 0x2b30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2b44
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b44(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2b54(r31)
    stw     r28, 0x2b44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2b58
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b58(r31)
    addi    r3, r30, 0x30c
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2b68(r31)
    stw     r28, 0x2b58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2b6c
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x30c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b6c(r31)
    addi    r3, r30, 0x320
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2b7c(r31)
    stw     r28, 0x2b6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2b80
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b80(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2b90(r31)
    stw     r28, 0x2b80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2b94
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b94(r31)
    addi    r3, r30, 0x344
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2ba4(r31)
    stw     r28, 0x2b94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ba8
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2ba8(r31)
    addi    r3, r30, 0x350
    stb     r24, 0x2bb8(r31)
    stw     r25, 0x2ba8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2bbc
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x350
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2bbc(r31)
    addi    r3, r30, 0x35c
    stb     r24, 0x2bcc(r31)
    stw     r25, 0x2bbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2bd0
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x35c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x2bd0(r31)
    addi    r3, r30, 0x36c
    sth     r21, 0x2be0(r31)
    stw     r22, 0x2bd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2be4
    addi    r4, r31, 0x2b14
    addi    r6, r30, 0x36c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2be4(r31)
    addi    r3, r31, 0x2b14
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x2bf4(r31)
    stw     r28, 0x2be4(r31)
    lwz     r4, 0x2b14(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x17d4
    stw     r0, 0x2bf8(r31)
    addi    r3, r30, 0x2c8
    stw     r27, 0x2bfc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2c00
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c00(r31)
    addi    r3, r30, 0x2d8
    lfs     f0, -0x9b4(r2)
    stfs    f0, 0x2c10(r31)
    stw     r28, 0x2c00(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2c14
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x2d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c14(r31)
    addi    r3, r30, 0x2e8
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2c24(r31)
    stw     r28, 0x2c14(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2c28
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c28(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2c38(r31)
    stw     r28, 0x2c28(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2c3c
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c3c(r31)
    addi    r3, r30, 0x30c
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2c4c(r31)
    stw     r28, 0x2c3c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2c50
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x30c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c50(r31)
    addi    r3, r30, 0x320
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2c60(r31)
    stw     r28, 0x2c50(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2c64
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c64(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2c74(r31)
    stw     r28, 0x2c64(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2c78
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c78(r31)
    addi    r3, r30, 0x344
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2c88(r31)
    stw     r28, 0x2c78(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2c8c
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2c8c(r31)
    addi    r3, r30, 0x350
    stb     r24, 0x2c9c(r31)
    stw     r25, 0x2c8c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ca0
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x350
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2ca0(r31)
    addi    r3, r30, 0x35c
    stb     r24, 0x2cb0(r31)
    stw     r25, 0x2ca0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2cb4
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x35c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x2cb4(r31)
    addi    r3, r30, 0x36c
    sth     r21, 0x2cc4(r31)
    stw     r22, 0x2cb4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2cc8
    addi    r4, r31, 0x2bf8
    addi    r6, r30, 0x36c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2cc8(r31)
    addi    r3, r31, 0x2bf8
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x2cd8(r31)
    stw     r28, 0x2cc8(r31)
    lwz     r4, 0x2bf8(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x17f4
    stw     r0, 0x2cdc(r31)
    addi    r3, r30, 0x2c8
    stw     r27, 0x2ce0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ce4
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ce4(r31)
    addi    r3, r30, 0x2d8
    lfs     f0, -0x9b4(r2)
    stfs    f0, 0x2cf4(r31)
    stw     r28, 0x2ce4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2cf8
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x2d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2cf8(r31)
    addi    r3, r30, 0x2e8
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2d08(r31)
    stw     r28, 0x2cf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2d0c
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d0c(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2d1c(r31)
    stw     r28, 0x2d0c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2d20
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d20(r31)
    addi    r3, r30, 0x30c
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2d30(r31)
    stw     r28, 0x2d20(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2d34
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x30c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d34(r31)
    addi    r3, r30, 0x320
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2d44(r31)
    stw     r28, 0x2d34(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2d48
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d48(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2d58(r31)
    stw     r28, 0x2d48(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2d5c
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d5c(r31)
    addi    r3, r30, 0x344
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2d6c(r31)
    stw     r28, 0x2d5c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2d70
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2d70(r31)
    addi    r3, r30, 0x350
    stb     r24, 0x2d80(r31)
    stw     r25, 0x2d70(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2d84
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x350
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2d84(r31)
    addi    r3, r30, 0x35c
    stb     r24, 0x2d94(r31)
    stw     r25, 0x2d84(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2d98
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x35c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x2d98(r31)
    addi    r3, r30, 0x36c
    sth     r21, 0x2da8(r31)
    stw     r22, 0x2d98(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2dac
    addi    r4, r31, 0x2cdc
    addi    r6, r30, 0x36c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2dac(r31)
    addi    r3, r31, 0x2cdc
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x2dbc(r31)
    stw     r28, 0x2dac(r31)
    lwz     r4, 0x2cdc(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x180c
    stw     r0, 0x2dc0(r31)
    addi    r3, r30, 0x2c8
    stw     r27, 0x2dc4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2dc8
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2dc8(r31)
    addi    r3, r30, 0x2d8
    lfs     f0, -0x9b4(r2)
    stfs    f0, 0x2dd8(r31)
    stw     r28, 0x2dc8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ddc
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x2d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ddc(r31)
    addi    r3, r30, 0x2e8
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2dec(r31)
    stw     r28, 0x2ddc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2df0
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2df0(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2e00(r31)
    stw     r28, 0x2df0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2e04
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e04(r31)
    addi    r3, r30, 0x30c
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2e14(r31)
    stw     r28, 0x2e04(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2e18
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x30c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e18(r31)
    addi    r3, r30, 0x320
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2e28(r31)
    stw     r28, 0x2e18(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2e2c
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e2c(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2e3c(r31)
    stw     r28, 0x2e2c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2e40
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e40(r31)
    addi    r3, r30, 0x344
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2e50(r31)
    stw     r28, 0x2e40(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2e54
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2e54(r31)
    addi    r3, r30, 0x350
    stb     r24, 0x2e64(r31)
    stw     r25, 0x2e54(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2e68
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x350
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2e68(r31)
    addi    r3, r30, 0x35c
    stb     r24, 0x2e78(r31)
    stw     r25, 0x2e68(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2e7c
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x35c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x2e7c(r31)
    addi    r3, r30, 0x36c
    sth     r21, 0x2e8c(r31)
    stw     r22, 0x2e7c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2e90
    addi    r4, r31, 0x2dc0
    addi    r6, r30, 0x36c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e90(r31)
    addi    r3, r31, 0x2dc0
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x2ea0(r31)
    stw     r28, 0x2e90(r31)
    lwz     r4, 0x2dc0(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x182c
    stw     r0, 0x2ea4(r31)
    addi    r3, r30, 0x2c8
    stw     r27, 0x2ea8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2eac
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2eac(r31)
    addi    r3, r30, 0x2d8
    lfs     f0, -0x9b4(r2)
    stfs    f0, 0x2ebc(r31)
    stw     r28, 0x2eac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ec0
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x2d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ec0(r31)
    addi    r3, r30, 0x2e8
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2ed0(r31)
    stw     r28, 0x2ec0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ed4
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ed4(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2ee4(r31)
    stw     r28, 0x2ed4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ee8
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ee8(r31)
    addi    r3, r30, 0x30c
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2ef8(r31)
    stw     r28, 0x2ee8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2efc
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x30c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2efc(r31)
    addi    r3, r30, 0x320
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2f0c(r31)
    stw     r28, 0x2efc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2f10
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2f10(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2f20(r31)
    stw     r28, 0x2f10(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2f24
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2f24(r31)
    addi    r3, r30, 0x344
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x2f34(r31)
    stw     r28, 0x2f24(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2f38
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2f38(r31)
    addi    r3, r30, 0x350
    stb     r24, 0x2f48(r31)
    stw     r25, 0x2f38(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2f4c
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x350
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2f4c(r31)
    addi    r3, r30, 0x35c
    stb     r24, 0x2f5c(r31)
    stw     r25, 0x2f4c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2f60
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x35c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x2f60(r31)
    addi    r3, r30, 0x36c
    sth     r21, 0x2f70(r31)
    stw     r22, 0x2f60(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2f74
    addi    r4, r31, 0x2ea4
    addi    r6, r30, 0x36c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2f74(r31)
    addi    r3, r31, 0x2ea4
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x2f84(r31)
    stw     r28, 0x2f74(r31)
    lwz     r4, 0x2ea4(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x184c
    stw     r0, 0x2f88(r31)
    addi    r3, r30, 0x2c8
    stw     r27, 0x2f8c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2f90
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2f90(r31)
    addi    r3, r30, 0x2d8
    lfs     f0, -0x9b4(r2)
    stfs    f0, 0x2fa0(r31)
    stw     r28, 0x2f90(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2fa4
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x2d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fa4(r31)
    addi    r3, r30, 0x2e8
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2fb4(r31)
    stw     r28, 0x2fa4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2fb8
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fb8(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2fc8(r31)
    stw     r28, 0x2fb8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2fcc
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fcc(r31)
    addi    r3, r30, 0x30c
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2fdc(r31)
    stw     r28, 0x2fcc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2fe0
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x30c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fe0(r31)
    addi    r3, r30, 0x320
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2ff0(r31)
    stw     r28, 0x2fe0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x2ff4
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ff4(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x3004(r31)
    stw     r28, 0x2ff4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3008
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3008(r31)
    addi    r3, r30, 0x344
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x3018(r31)
    stw     r28, 0x3008(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x301c
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x301c(r31)
    addi    r3, r30, 0x350
    stb     r24, 0x302c(r31)
    stw     r25, 0x301c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3030
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x350
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3030(r31)
    addi    r3, r30, 0x35c
    stb     r24, 0x3040(r31)
    stw     r25, 0x3030(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3044
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x35c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3044(r31)
    addi    r3, r30, 0x36c
    sth     r21, 0x3054(r31)
    stw     r22, 0x3044(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3058
    addi    r4, r31, 0x2f88
    addi    r6, r30, 0x36c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3058(r31)
    addi    r3, r31, 0x2f88
    lfs     f0, -0x9b0(r2)
    stfs    f0, 0x3068(r31)
    stw     r28, 0x3058(r31)
    lwz     r4, 0x2f88(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1868
    stw     r0, 0x306c(r31)
    addi    r3, r30, 0x270
    stw     r27, 0x3070(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3074
    addi    r4, r31, 0x306c
    addi    r6, r30, 0x270
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3074(r31)
    addi    r3, r30, 0x280
    sth     r19, 0x3084(r31)
    stw     r22, 0x3074(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3088
    addi    r4, r31, 0x306c
    addi    r6, r30, 0x280
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3088(r31)
    addi    r3, r30, 0x290
    lfs     f0, -0x9c4(r2)
    stfs    f0, 0x3098(r31)
    stw     r28, 0x3088(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x309c
    addi    r4, r31, 0x306c
    addi    r6, r30, 0x290
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x309c(r31)
    li      r19, -0x2000
    addi    r3, r30, 0x2a0
    sth     r19, 0x30ac(r31)
    stw     r22, 0x309c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x30b0
    addi    r4, r31, 0x306c
    addi    r6, r30, 0x2a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x30b0(r31)
    li      r0, 0x2000
    addi    r3, r30, 0x2b4
    sth     r0, 0x30c0(r31)
    stw     r22, 0x30b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x30c4
    addi    r4, r31, 0x306c
    addi    r6, r30, 0x2b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x30c4(r31)
    addi    r3, r31, 0x306c
    sth     r19, 0x30d4(r31)
    stw     r22, 0x30c4(r31)
    lwz     r4, 0x306c(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1880
    stw     r0, 0x30d8(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x30dc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x30e0
    addi    r4, r31, 0x30d8
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x30e0(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x30f0(r31)
    stw     r25, 0x30e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x30f4
    addi    r4, r31, 0x30d8
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x30f4(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3104(r31)
    stw     r25, 0x30f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3108
    addi    r4, r31, 0x30d8
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3108(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3118(r31)
    stw     r25, 0x3108(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x311c
    addi    r4, r31, 0x30d8
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x311c(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x312c(r31)
    stw     r25, 0x311c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3130
    addi    r4, r31, 0x30d8
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3130(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3140(r31)
    stw     r28, 0x3130(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3144
    addi    r4, r31, 0x30d8
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3144(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3154(r31)
    stw     r28, 0x3144(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3158
    addi    r4, r31, 0x30d8
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3158(r31)
    li      r21, 0x12c
    addi    r3, r31, 0x30d8
    sth     r21, 0x3168(r31)
    stw     r22, 0x3158(r31)
    lwz     r4, 0x30d8(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x189c
    stw     r0, 0x316c(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3174
    addi    r4, r31, 0x316c
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3174(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3184(r31)
    stw     r25, 0x3174(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3188
    addi    r4, r31, 0x316c
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3188(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3198(r31)
    stw     r25, 0x3188(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x319c
    addi    r4, r31, 0x316c
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x319c(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x31ac(r31)
    stw     r25, 0x319c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x31b0
    addi    r4, r31, 0x316c
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x31b0(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x31c0(r31)
    stw     r25, 0x31b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x31c4
    addi    r4, r31, 0x316c
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x31c4(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x31d4(r31)
    stw     r28, 0x31c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x31d8
    addi    r4, r31, 0x316c
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x31d8(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x31e8(r31)
    stw     r28, 0x31d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x31ec
    addi    r4, r31, 0x316c
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x31ec(r31)
    addi    r3, r31, 0x316c
    sth     r21, 0x31fc(r31)
    stw     r22, 0x31ec(r31)
    lwz     r4, 0x316c(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x18b4
    stw     r0, 0x3200(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3204(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3208
    addi    r4, r31, 0x3200
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3208(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3218(r31)
    stw     r25, 0x3208(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x321c
    addi    r4, r31, 0x3200
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x321c(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x322c(r31)
    stw     r25, 0x321c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3230
    addi    r4, r31, 0x3200
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3230(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3240(r31)
    stw     r25, 0x3230(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3244
    addi    r4, r31, 0x3200
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3244(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3254(r31)
    stw     r25, 0x3244(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3258
    addi    r4, r31, 0x3200
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3258(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3268(r31)
    stw     r28, 0x3258(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x326c
    addi    r4, r31, 0x3200
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x326c(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x327c(r31)
    stw     r28, 0x326c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3280
    addi    r4, r31, 0x3200
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3280(r31)
    addi    r3, r31, 0x3200
    sth     r21, 0x3290(r31)
    stw     r22, 0x3280(r31)
    lwz     r4, 0x3200(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x18cc
    stw     r0, 0x3294(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3298(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x329c
    addi    r4, r31, 0x3294
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x329c(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x32ac(r31)
    stw     r25, 0x329c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x32b0
    addi    r4, r31, 0x3294
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x32b0(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x32c0(r31)
    stw     r25, 0x32b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x32c4
    addi    r4, r31, 0x3294
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x32c4(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x32d4(r31)
    stw     r25, 0x32c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x32d8
    addi    r4, r31, 0x3294
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x32d8(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x32e8(r31)
    stw     r25, 0x32d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x32ec
    addi    r4, r31, 0x3294
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x32ec(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x32fc(r31)
    stw     r28, 0x32ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3300
    addi    r4, r31, 0x3294
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3300(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3310(r31)
    stw     r28, 0x3300(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3314
    addi    r4, r31, 0x3294
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3314(r31)
    addi    r3, r31, 0x3294
    sth     r21, 0x3324(r31)
    stw     r22, 0x3314(r31)
    lwz     r4, 0x3294(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x18e4
    stw     r0, 0x3328(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x332c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3330
    addi    r4, r31, 0x3328
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3330(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3340(r31)
    stw     r25, 0x3330(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3344
    addi    r4, r31, 0x3328
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3344(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3354(r31)
    stw     r25, 0x3344(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3358
    addi    r4, r31, 0x3328
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3358(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3368(r31)
    stw     r25, 0x3358(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x336c
    addi    r4, r31, 0x3328
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x336c(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x337c(r31)
    stw     r25, 0x336c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3380
    addi    r4, r31, 0x3328
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3380(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3390(r31)
    stw     r28, 0x3380(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3394
    addi    r4, r31, 0x3328
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3394(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x33a4(r31)
    stw     r28, 0x3394(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x33a8
    addi    r4, r31, 0x3328
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x33a8(r31)
    addi    r3, r31, 0x3328
    sth     r21, 0x33b8(r31)
    stw     r22, 0x33a8(r31)
    lwz     r4, 0x3328(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x18f8
    stw     r0, 0x33bc(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x33c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x33c4
    addi    r4, r31, 0x33bc
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x33c4(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x33d4(r31)
    stw     r25, 0x33c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x33d8
    addi    r4, r31, 0x33bc
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x33d8(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x33e8(r31)
    stw     r25, 0x33d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x33ec
    addi    r4, r31, 0x33bc
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x33ec(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x33fc(r31)
    stw     r25, 0x33ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3400
    addi    r4, r31, 0x33bc
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3400(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3410(r31)
    stw     r25, 0x3400(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3414
    addi    r4, r31, 0x33bc
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3414(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3424(r31)
    stw     r28, 0x3414(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3428
    addi    r4, r31, 0x33bc
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3428(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3438(r31)
    stw     r28, 0x3428(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x343c
    addi    r4, r31, 0x33bc
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x343c(r31)
    addi    r3, r31, 0x33bc
    sth     r21, 0x344c(r31)
    stw     r22, 0x343c(r31)
    lwz     r4, 0x33bc(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1914
    stw     r0, 0x3450(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3454(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3458
    addi    r4, r31, 0x3450
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3458(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3468(r31)
    stw     r25, 0x3458(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x346c
    addi    r4, r31, 0x3450
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x346c(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x347c(r31)
    stw     r25, 0x346c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3480
    addi    r4, r31, 0x3450
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3480(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3490(r31)
    stw     r25, 0x3480(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3494
    addi    r4, r31, 0x3450
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3494(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x34a4(r31)
    stw     r25, 0x3494(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x34a8
    addi    r4, r31, 0x3450
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34a8(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x34b8(r31)
    stw     r28, 0x34a8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x34bc
    addi    r4, r31, 0x3450
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34bc(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x34cc(r31)
    stw     r28, 0x34bc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x34d0
    addi    r4, r31, 0x3450
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x34d0(r31)
    addi    r3, r31, 0x3450
    sth     r21, 0x34e0(r31)
    stw     r22, 0x34d0(r31)
    lwz     r4, 0x3450(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x192c
    stw     r0, 0x34e4(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x34e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x34ec
    addi    r4, r31, 0x34e4
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x34ec(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x34fc(r31)
    stw     r25, 0x34ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3500
    addi    r4, r31, 0x34e4
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3500(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3510(r31)
    stw     r25, 0x3500(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3514
    addi    r4, r31, 0x34e4
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3514(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3524(r31)
    stw     r25, 0x3514(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3528
    addi    r4, r31, 0x34e4
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3528(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3538(r31)
    stw     r25, 0x3528(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x353c
    addi    r4, r31, 0x34e4
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x353c(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x354c(r31)
    stw     r28, 0x353c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3550
    addi    r4, r31, 0x34e4
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3550(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3560(r31)
    stw     r28, 0x3550(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3564
    addi    r4, r31, 0x34e4
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3564(r31)
    addi    r3, r31, 0x34e4
    sth     r21, 0x3574(r31)
    stw     r22, 0x3564(r31)
    lwz     r4, 0x34e4(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1948
    stw     r0, 0x3578(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x357c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3580
    addi    r4, r31, 0x3578
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3580(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3590(r31)
    stw     r25, 0x3580(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3594
    addi    r4, r31, 0x3578
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3594(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x35a4(r31)
    stw     r25, 0x3594(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x35a8
    addi    r4, r31, 0x3578
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x35a8(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x35b8(r31)
    stw     r25, 0x35a8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x35bc
    addi    r4, r31, 0x3578
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x35bc(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x35cc(r31)
    stw     r25, 0x35bc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x35d0
    addi    r4, r31, 0x3578
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x35d0(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x35e0(r31)
    stw     r28, 0x35d0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x35e4
    addi    r4, r31, 0x3578
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x35e4(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x35f4(r31)
    stw     r28, 0x35e4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x35f8
    addi    r4, r31, 0x3578
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x35f8(r31)
    addi    r3, r31, 0x3578
    sth     r21, 0x3608(r31)
    stw     r22, 0x35f8(r31)
    lwz     r4, 0x3578(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1960
    stw     r0, 0x360c(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3610(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3614
    addi    r4, r31, 0x360c
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3614(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3624(r31)
    stw     r25, 0x3614(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3628
    addi    r4, r31, 0x360c
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3628(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3638(r31)
    stw     r25, 0x3628(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x363c
    addi    r4, r31, 0x360c
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x363c(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x364c(r31)
    stw     r25, 0x363c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3650
    addi    r4, r31, 0x360c
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3650(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3660(r31)
    stw     r25, 0x3650(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3664
    addi    r4, r31, 0x360c
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3664(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3674(r31)
    stw     r28, 0x3664(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3678
    addi    r4, r31, 0x360c
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3678(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3688(r31)
    stw     r28, 0x3678(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x368c
    addi    r4, r31, 0x360c
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x368c(r31)
    addi    r3, r31, 0x360c
    sth     r21, 0x369c(r31)
    stw     r22, 0x368c(r31)
    lwz     r4, 0x360c(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1978
    stw     r0, 0x36a0(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x36a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x36a8
    addi    r4, r31, 0x36a0
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x36a8(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x36b8(r31)
    stw     r25, 0x36a8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x36bc
    addi    r4, r31, 0x36a0
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x36bc(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x36cc(r31)
    stw     r25, 0x36bc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x36d0
    addi    r4, r31, 0x36a0
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x36d0(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x36e0(r31)
    stw     r25, 0x36d0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x36e4
    addi    r4, r31, 0x36a0
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x36e4(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x36f4(r31)
    stw     r25, 0x36e4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x36f8
    addi    r4, r31, 0x36a0
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x36f8(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3708(r31)
    stw     r28, 0x36f8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x370c
    addi    r4, r31, 0x36a0
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x370c(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x371c(r31)
    stw     r28, 0x370c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3720
    addi    r4, r31, 0x36a0
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3720(r31)
    addi    r3, r31, 0x36a0
    sth     r21, 0x3730(r31)
    stw     r22, 0x3720(r31)
    lwz     r4, 0x36a0(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1994
    stw     r0, 0x3734(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3738(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x373c
    addi    r4, r31, 0x3734
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x373c(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x374c(r31)
    stw     r25, 0x373c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3750
    addi    r4, r31, 0x3734
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3750(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3760(r31)
    stw     r25, 0x3750(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3764
    addi    r4, r31, 0x3734
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3764(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3774(r31)
    stw     r25, 0x3764(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3778
    addi    r4, r31, 0x3734
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3778(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3788(r31)
    stw     r25, 0x3778(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x378c
    addi    r4, r31, 0x3734
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x378c(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x379c(r31)
    stw     r28, 0x378c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x37a0
    addi    r4, r31, 0x3734
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x37a0(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x37b0(r31)
    stw     r28, 0x37a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x37b4
    addi    r4, r31, 0x3734
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x37b4(r31)
    addi    r3, r31, 0x3734
    sth     r21, 0x37c4(r31)
    stw     r22, 0x37b4(r31)
    lwz     r4, 0x3734(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x19b0
    stw     r0, 0x37c8(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x37cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x37d0
    addi    r4, r31, 0x37c8
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x37d0(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x37e0(r31)
    stw     r25, 0x37d0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x37e4
    addi    r4, r31, 0x37c8
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x37e4(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x37f4(r31)
    stw     r25, 0x37e4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x37f8
    addi    r4, r31, 0x37c8
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x37f8(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3808(r31)
    stw     r25, 0x37f8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x380c
    addi    r4, r31, 0x37c8
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x380c(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x381c(r31)
    stw     r25, 0x380c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3820
    addi    r4, r31, 0x37c8
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3820(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3830(r31)
    stw     r28, 0x3820(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3834
    addi    r4, r31, 0x37c8
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3834(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3844(r31)
    stw     r28, 0x3834(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3848
    addi    r4, r31, 0x37c8
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3848(r31)
    addi    r3, r31, 0x37c8
    sth     r21, 0x3858(r31)
    stw     r22, 0x3848(r31)
    lwz     r4, 0x37c8(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x19cc
    stw     r0, 0x385c(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3860(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3864
    addi    r4, r31, 0x385c
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3864(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3874(r31)
    stw     r25, 0x3864(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3878
    addi    r4, r31, 0x385c
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3878(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3888(r31)
    stw     r25, 0x3878(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x388c
    addi    r4, r31, 0x385c
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x388c(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x389c(r31)
    stw     r25, 0x388c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x38a0
    addi    r4, r31, 0x385c
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x38a0(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x38b0(r31)
    stw     r25, 0x38a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x38b4
    addi    r4, r31, 0x385c
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x38b4(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x38c4(r31)
    stw     r28, 0x38b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x38c8
    addi    r4, r31, 0x385c
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x38c8(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x38d8(r31)
    stw     r28, 0x38c8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x38dc
    addi    r4, r31, 0x385c
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x38dc(r31)
    addi    r3, r31, 0x385c
    sth     r21, 0x38ec(r31)
    stw     r22, 0x38dc(r31)
    lwz     r4, 0x385c(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x19e8
    stw     r0, 0x38f0(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x38f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x38f8
    addi    r4, r31, 0x38f0
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x38f8(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3908(r31)
    stw     r25, 0x38f8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x390c
    addi    r4, r31, 0x38f0
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x390c(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x391c(r31)
    stw     r25, 0x390c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3920
    addi    r4, r31, 0x38f0
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3920(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3930(r31)
    stw     r25, 0x3920(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3934
    addi    r4, r31, 0x38f0
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3934(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3944(r31)
    stw     r25, 0x3934(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3948
    addi    r4, r31, 0x38f0
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3948(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3958(r31)
    stw     r28, 0x3948(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x395c
    addi    r4, r31, 0x38f0
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x395c(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x396c(r31)
    stw     r28, 0x395c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3970
    addi    r4, r31, 0x38f0
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3970(r31)
    addi    r3, r31, 0x38f0
    sth     r21, 0x3980(r31)
    stw     r22, 0x3970(r31)
    lwz     r4, 0x38f0(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1a04
    stw     r0, 0x3984(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3988(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x398c
    addi    r4, r31, 0x3984
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x398c(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x399c(r31)
    stw     r25, 0x398c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x39a0
    addi    r4, r31, 0x3984
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x39a0(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x39b0(r31)
    stw     r25, 0x39a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x39b4
    addi    r4, r31, 0x3984
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x39b4(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x39c4(r31)
    stw     r25, 0x39b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x39c8
    addi    r4, r31, 0x3984
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x39c8(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x39d8(r31)
    stw     r25, 0x39c8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x39dc
    addi    r4, r31, 0x3984
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x39dc(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x39ec(r31)
    stw     r28, 0x39dc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x39f0
    addi    r4, r31, 0x3984
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x39f0(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3a00(r31)
    stw     r28, 0x39f0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3a04
    addi    r4, r31, 0x3984
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3a04(r31)
    addi    r3, r31, 0x3984
    sth     r21, 0x3a14(r31)
    stw     r22, 0x3a04(r31)
    lwz     r4, 0x3984(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1a24
    stw     r0, 0x3a18(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3a1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3a20
    addi    r4, r31, 0x3a18
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3a20(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3a30(r31)
    stw     r25, 0x3a20(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3a34
    addi    r4, r31, 0x3a18
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3a34(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3a44(r31)
    stw     r25, 0x3a34(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3a48
    addi    r4, r31, 0x3a18
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3a48(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3a58(r31)
    stw     r25, 0x3a48(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3a5c
    addi    r4, r31, 0x3a18
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3a5c(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3a6c(r31)
    stw     r25, 0x3a5c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3a70
    addi    r4, r31, 0x3a18
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a70(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3a80(r31)
    stw     r28, 0x3a70(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3a84
    addi    r4, r31, 0x3a18
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a84(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3a94(r31)
    stw     r28, 0x3a84(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3a98
    addi    r4, r31, 0x3a18
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3a98(r31)
    addi    r3, r31, 0x3a18
    sth     r21, 0x3aa8(r31)
    stw     r22, 0x3a98(r31)
    lwz     r4, 0x3a18(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1a40
    stw     r0, 0x3aac(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3ab0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3ab4
    addi    r4, r31, 0x3aac
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3ab4(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3ac4(r31)
    stw     r25, 0x3ab4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3ac8
    addi    r4, r31, 0x3aac
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3ac8(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3ad8(r31)
    stw     r25, 0x3ac8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3adc
    addi    r4, r31, 0x3aac
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3adc(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3aec(r31)
    stw     r25, 0x3adc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3af0
    addi    r4, r31, 0x3aac
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3af0(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3b00(r31)
    stw     r25, 0x3af0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3b04
    addi    r4, r31, 0x3aac
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b04(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3b14(r31)
    stw     r28, 0x3b04(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3b18
    addi    r4, r31, 0x3aac
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b18(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3b28(r31)
    stw     r28, 0x3b18(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3b2c
    addi    r4, r31, 0x3aac
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3b2c(r31)
    addi    r3, r31, 0x3aac
    sth     r21, 0x3b3c(r31)
    stw     r22, 0x3b2c(r31)
    lwz     r4, 0x3aac(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1a5c
    stw     r0, 0x3b40(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3b44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3b48
    addi    r4, r31, 0x3b40
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3b48(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3b58(r31)
    stw     r25, 0x3b48(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3b5c
    addi    r4, r31, 0x3b40
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3b5c(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3b6c(r31)
    stw     r25, 0x3b5c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3b70
    addi    r4, r31, 0x3b40
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3b70(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3b80(r31)
    stw     r25, 0x3b70(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3b84
    addi    r4, r31, 0x3b40
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3b84(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3b94(r31)
    stw     r25, 0x3b84(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3b98
    addi    r4, r31, 0x3b40
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b98(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3ba8(r31)
    stw     r28, 0x3b98(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3bac
    addi    r4, r31, 0x3b40
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3bac(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3bbc(r31)
    stw     r28, 0x3bac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3bc0
    addi    r4, r31, 0x3b40
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3bc0(r31)
    addi    r3, r31, 0x3b40
    sth     r21, 0x3bd0(r31)
    stw     r22, 0x3bc0(r31)
    lwz     r4, 0x3b40(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1a80
    stw     r0, 0x3bd4(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3bd8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3bdc
    addi    r4, r31, 0x3bd4
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3bdc(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3bec(r31)
    stw     r25, 0x3bdc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3bf0
    addi    r4, r31, 0x3bd4
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3bf0(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3c00(r31)
    stw     r25, 0x3bf0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3c04
    addi    r4, r31, 0x3bd4
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3c04(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3c14(r31)
    stw     r25, 0x3c04(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3c18
    addi    r4, r31, 0x3bd4
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3c18(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3c28(r31)
    stw     r25, 0x3c18(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3c2c
    addi    r4, r31, 0x3bd4
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3c2c(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3c3c(r31)
    stw     r28, 0x3c2c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3c40
    addi    r4, r31, 0x3bd4
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3c40(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3c50(r31)
    stw     r28, 0x3c40(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3c54
    addi    r4, r31, 0x3bd4
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3c54(r31)
    addi    r3, r31, 0x3bd4
    sth     r21, 0x3c64(r31)
    stw     r22, 0x3c54(r31)
    lwz     r4, 0x3bd4(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1a98
    stw     r0, 0x3c68(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3c6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3c70
    addi    r4, r31, 0x3c68
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3c70(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3c80(r31)
    stw     r25, 0x3c70(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3c84
    addi    r4, r31, 0x3c68
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3c84(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3c94(r31)
    stw     r25, 0x3c84(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3c98
    addi    r4, r31, 0x3c68
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3c98(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3ca8(r31)
    stw     r25, 0x3c98(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3cac
    addi    r4, r31, 0x3c68
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3cac(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3cbc(r31)
    stw     r25, 0x3cac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3cc0
    addi    r4, r31, 0x3c68
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3cc0(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3cd0(r31)
    stw     r28, 0x3cc0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3cd4
    addi    r4, r31, 0x3c68
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3cd4(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3ce4(r31)
    stw     r28, 0x3cd4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3ce8
    addi    r4, r31, 0x3c68
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3ce8(r31)
    addi    r3, r31, 0x3c68
    sth     r21, 0x3cf8(r31)
    stw     r22, 0x3ce8(r31)
    lwz     r4, 0x3c68(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1ab0
    stw     r0, 0x3cfc(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3d00(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3d04
    addi    r4, r31, 0x3cfc
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3d04(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3d14(r31)
    stw     r25, 0x3d04(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3d18
    addi    r4, r31, 0x3cfc
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3d18(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3d28(r31)
    stw     r25, 0x3d18(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3d2c
    addi    r4, r31, 0x3cfc
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3d2c(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3d3c(r31)
    stw     r25, 0x3d2c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3d40
    addi    r4, r31, 0x3cfc
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3d40(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3d50(r31)
    stw     r25, 0x3d40(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3d54
    addi    r4, r31, 0x3cfc
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3d54(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3d64(r31)
    stw     r28, 0x3d54(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3d68
    addi    r4, r31, 0x3cfc
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3d68(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3d78(r31)
    stw     r28, 0x3d68(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3d7c
    addi    r4, r31, 0x3cfc
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3d7c(r31)
    addi    r3, r31, 0x3cfc
    sth     r21, 0x3d8c(r31)
    stw     r22, 0x3d7c(r31)
    lwz     r4, 0x3cfc(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1ac8
    stw     r0, 0x3d90(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3d94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3d98
    addi    r4, r31, 0x3d90
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3d98(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3da8(r31)
    stw     r25, 0x3d98(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3dac
    addi    r4, r31, 0x3d90
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3dac(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3dbc(r31)
    stw     r25, 0x3dac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3dc0
    addi    r4, r31, 0x3d90
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3dc0(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3dd0(r31)
    stw     r25, 0x3dc0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3dd4
    addi    r4, r31, 0x3d90
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3dd4(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3de4(r31)
    stw     r25, 0x3dd4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3de8
    addi    r4, r31, 0x3d90
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3de8(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3df8(r31)
    stw     r28, 0x3de8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3dfc
    addi    r4, r31, 0x3d90
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3dfc(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3e0c(r31)
    stw     r28, 0x3dfc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3e10
    addi    r4, r31, 0x3d90
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3e10(r31)
    addi    r3, r31, 0x3d90
    sth     r21, 0x3e20(r31)
    stw     r22, 0x3e10(r31)
    lwz     r4, 0x3d90(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1ae0
    stw     r0, 0x3e24(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3e28(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3e2c
    addi    r4, r31, 0x3e24
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3e2c(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3e3c(r31)
    stw     r25, 0x3e2c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3e40
    addi    r4, r31, 0x3e24
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3e40(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3e50(r31)
    stw     r25, 0x3e40(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3e54
    addi    r4, r31, 0x3e24
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3e54(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3e64(r31)
    stw     r25, 0x3e54(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3e68
    addi    r4, r31, 0x3e24
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3e68(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3e78(r31)
    stw     r25, 0x3e68(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3e7c
    addi    r4, r31, 0x3e24
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3e7c(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3e8c(r31)
    stw     r28, 0x3e7c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3e90
    addi    r4, r31, 0x3e24
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3e90(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3ea0(r31)
    stw     r28, 0x3e90(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3ea4
    addi    r4, r31, 0x3e24
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3ea4(r31)
    addi    r3, r31, 0x3e24
    sth     r21, 0x3eb4(r31)
    stw     r22, 0x3ea4(r31)
    lwz     r4, 0x3e24(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1af8
    stw     r0, 0x3eb8(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3ebc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3ec0
    addi    r4, r31, 0x3eb8
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3ec0(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3ed0(r31)
    stw     r25, 0x3ec0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3ed4
    addi    r4, r31, 0x3eb8
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3ed4(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3ee4(r31)
    stw     r25, 0x3ed4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3ee8
    addi    r4, r31, 0x3eb8
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3ee8(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3ef8(r31)
    stw     r25, 0x3ee8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3efc
    addi    r4, r31, 0x3eb8
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3efc(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3f0c(r31)
    stw     r25, 0x3efc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3f10
    addi    r4, r31, 0x3eb8
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f10(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3f20(r31)
    stw     r28, 0x3f10(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3f24
    addi    r4, r31, 0x3eb8
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f24(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3f34(r31)
    stw     r28, 0x3f24(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3f38
    addi    r4, r31, 0x3eb8
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3f38(r31)
    addi    r3, r31, 0x3eb8
    sth     r21, 0x3f48(r31)
    stw     r22, 0x3f38(r31)
    lwz     r4, 0x3eb8(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1b10
    stw     r0, 0x3f4c(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3f50(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3f54
    addi    r4, r31, 0x3f4c
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3f54(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3f64(r31)
    stw     r25, 0x3f54(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3f68
    addi    r4, r31, 0x3f4c
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3f68(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x3f78(r31)
    stw     r25, 0x3f68(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3f7c
    addi    r4, r31, 0x3f4c
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3f7c(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x3f8c(r31)
    stw     r25, 0x3f7c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3f90
    addi    r4, r31, 0x3f4c
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3f90(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x3fa0(r31)
    stw     r25, 0x3f90(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3fa4
    addi    r4, r31, 0x3f4c
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3fa4(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x3fb4(r31)
    stw     r28, 0x3fa4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3fb8
    addi    r4, r31, 0x3f4c
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3fb8(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x3fc8(r31)
    stw     r28, 0x3fb8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3fcc
    addi    r4, r31, 0x3f4c
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x3fcc(r31)
    addi    r3, r31, 0x3f4c
    sth     r21, 0x3fdc(r31)
    stw     r22, 0x3fcc(r31)
    lwz     r4, 0x3f4c(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1b28
    stw     r0, 0x3fe0(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x3fe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3fe8
    addi    r4, r31, 0x3fe0
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3fe8(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x3ff8(r31)
    stw     r25, 0x3fe8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x3ffc
    addi    r4, r31, 0x3fe0
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x3ffc(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x400c(r31)
    stw     r25, 0x3ffc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4010
    addi    r4, r31, 0x3fe0
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x4010(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x4020(r31)
    stw     r25, 0x4010(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4024
    addi    r4, r31, 0x3fe0
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x4024(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x4034(r31)
    stw     r25, 0x4024(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4038
    addi    r4, r31, 0x3fe0
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4038(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x4048(r31)
    stw     r28, 0x4038(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x404c
    addi    r4, r31, 0x3fe0
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x404c(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x405c(r31)
    stw     r28, 0x404c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4060
    addi    r4, r31, 0x3fe0
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x4060(r31)
    addi    r3, r31, 0x3fe0
    sth     r21, 0x4070(r31)
    stw     r22, 0x4060(r31)
    lwz     r4, 0x3fe0(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1b40
    stw     r0, 0x4074(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x4078(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x407c
    addi    r4, r31, 0x4074
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x407c(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x408c(r31)
    stw     r25, 0x407c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4090
    addi    r4, r31, 0x4074
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x4090(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x40a0(r31)
    stw     r25, 0x4090(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x40a4
    addi    r4, r31, 0x4074
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x40a4(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x40b4(r31)
    stw     r25, 0x40a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x40b8
    addi    r4, r31, 0x4074
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x40b8(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x40c8(r31)
    stw     r25, 0x40b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x40cc
    addi    r4, r31, 0x4074
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x40cc(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x40dc(r31)
    stw     r28, 0x40cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x40e0
    addi    r4, r31, 0x4074
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x40e0(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x40f0(r31)
    stw     r28, 0x40e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x40f4
    addi    r4, r31, 0x4074
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x40f4(r31)
    addi    r3, r31, 0x4074
    sth     r21, 0x4104(r31)
    stw     r22, 0x40f4(r31)
    lwz     r4, 0x4074(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1b58
    stw     r0, 0x4108(r31)
    addi    r3, r2, R2Off_m0xa68
    stw     r27, 0x410c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4110
    addi    r4, r31, 0x4108
    addi    r6, r2, R2Off_m0xa68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x4110(r31)
    addi    r3, r30, 0x114
    stb     r24, 0x4120(r31)
    stw     r25, 0x4110(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4124
    addi    r4, r31, 0x4108
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x4124(r31)
    addi    r3, r30, 0x120
    stb     r24, 0x4134(r31)
    stw     r25, 0x4124(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4138
    addi    r4, r31, 0x4108
    addi    r6, r30, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x4138(r31)
    addi    r3, r2, R2Off_m0xa60
    stb     r27, 0x4148(r31)
    stw     r25, 0x4138(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x414c
    addi    r4, r31, 0x4108
    addi    r6, r2, R2Off_m0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x414c(r31)
    addi    r3, r30, 0x12c
    stb     r20, 0x415c(r31)
    stw     r25, 0x414c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4160
    addi    r4, r31, 0x4108
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4160(r31)
    addi    r3, r2, R2Off_m0xa54
    lfs     f0, -0xa58(r2)
    stfs    f0, 0x4170(r31)
    stw     r28, 0x4160(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4174
    addi    r4, r31, 0x4108
    addi    r6, r2, R2Off_m0xa54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4174(r31)
    addi    r3, r30, 0x138
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x4184(r31)
    stw     r28, 0x4174(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4188
    addi    r4, r31, 0x4108
    addi    r6, r30, 0x138
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x4188(r31)
    addi    r3, r31, 0x4108
    sth     r21, 0x4198(r31)
    stw     r22, 0x4188(r31)
    lwz     r4, 0x4108(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x80
    stw     r0, 0x419c(r31)
    addi    r3, r30, 0x94
    stw     r27, 0x41a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x41a4
    addi    r4, r31, 0x419c
    addi    r6, r30, 0x94
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x41a4(r31)
    addi    r3, r30, 0xac
    sth     r17, 0x41b4(r31)
    stw     r22, 0x41a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x41b8
    addi    r4, r31, 0x419c
    addi    r6, r30, 0xac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x41b8(r31)
    li      r0, 0x46
    addi    r3, r30, 0xc0
    sth     r0, 0x41c8(r31)
    stw     r22, 0x41b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x41cc
    addi    r4, r31, 0x419c
    addi    r6, r30, 0xc0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x41cc(r31)
    li      r0, 0x78
    addi    r3, r30, 0xd4
    sth     r0, 0x41dc(r31)
    stw     r22, 0x41cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x41e0
    addi    r4, r31, 0x419c
    addi    r6, r30, 0xd4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x41e0(r31)
    addi    r3, r30, 0xe4
    lfs     f0, -0xa74(r2)
    stfs    f0, 0x41f0(r31)
    stw     r28, 0x41e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x41f4
    addi    r4, r31, 0x419c
    addi    r6, r30, 0xe4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x41f4(r31)
    addi    r3, r30, 0xf4
    lfs     f0, -0xa70(r2)
    stfs    f0, 0x4204(r31)
    stw     r28, 0x41f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4208
    addi    r4, r31, 0x419c
    addi    r6, r30, 0xf4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4208(r31)
    addi    r3, r30, 0x108
    lfs     f0, -0xa6c(r2)
    stfs    f0, 0x4218(r31)
    stw     r28, 0x4208(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x421c
    addi    r4, r31, 0x419c
    addi    r6, r30, 0x108
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x421c(r31)
    li      r23, 0x400
    addi    r3, r31, 0x419c
    sth     r23, 0x422c(r31)
    stw     r22, 0x421c(r31)
    lwz     r4, 0x419c(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x54
    stw     r0, 0x4230(r31)
    addi    r3, r30, 0x68
    stw     r27, 0x4234(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4238
    addi    r4, r31, 0x4230
    addi    r6, r30, 0x68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4238(r31)
    addi    r3, r31, 0x4230
    lfs     f0, -0xa78(r2)
    stfs    f0, 0x4248(r31)
    stw     r28, 0x4238(r31)
    lwz     r4, 0x4230(r31)
    bl      load__7TParamsFPCc
    addi    r0, r30, 0x1b70
    stw     r0, 0x424c(r31)
    addi    r3, r2, R2Off_m0xa98
    stw     r27, 0x4250(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4254
    addi    r4, r31, 0x424c
    addi    r6, r2, R2Off_m0xa98
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4254(r31)
    addi    r3, r2, R2Off_m0xa90
    lfs     f0, -0xa94(r2)
    stfs    f0, 0x4264(r31)
    stw     r28, 0x4254(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x4268
    addi    r4, r31, 0x424c
    addi    r6, r2, R2Off_m0xa90
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4268(r31)
    addi    r3, r2, R2Off_m0xa84
    lfs     f0, -0xa88(r2)
    stfs    f0, 0x4278(r31)
    stw     r28, 0x4268(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x427c
    addi    r4, r31, 0x424c
    addi    r6, r2, R2Off_m0xa84
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x427c(r31)
    addi    r3, r31, 0x424c
    lfs     f0, -0xa7c(r2)
    stfs    f0, 0x428c(r31)
    stw     r28, 0x427c(r31)
    lwz     r4, 0x424c(r31)
    bl      load__7TParamsFPCc
    li      r0, 0x412
    sth     r0, 0x114(r31)
    li      r0, 0x133f
    sth     r27, 0x116(r31)
    stw     r27, 0x74(r31)
    stw     r27, 0x78(r31)
    stw     r0, 0x7c(r31)
    stw     r0, 0x80(r31)
    sth     r27, 0x84(r31)
    sth     r27, 0x86(r31)
    stw     r27, 0x88(r31)
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x8c(r31)
    sth     r27, 0x90(r31)
    sth     r27, 0x94(r31)
    sth     r27, 0x96(r31)
    sth     r27, 0x98(r31)
    sth     r27, 0x9a(r31)
    sth     r27, 0x9c(r31)
    sth     r27, 0x9e(r31)
    sth     r27, 0xa0(r31)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb8(r31)
    stfs    f0, 0xbc(r31)
    stfs    f0, 0xc0(r31)
    sth     r27, 0xc4(r31)
    stfs    f0, 0xc8(r31)
    lfs     f0, -0x9ac(r2)
    stfs    f0, 0xcc(r31)
    lfs     f0, -0x9a8(r2)
    stfs    f0, 0xd0(r31)
    stb     r18, 0xd4(r31)
    stb     r18, 0xd5(r31)
    stw     r27, 0xd8(r31)
    stw     r27, 0xdc(r31)
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xe0(r31)
    li      r5, 0xc3
    lis     r4, 0x4330
    stw     r27, 0xe4(r31)
    li      r0, -0x1
    addi    r3, r31, 0x1c0
    lfs     f3, -0xa4c(r2)
    stfs    f3, 0xe8(r31)
    stfs    f3, 0xec(r31)
    stfs    f3, 0xf0(r31)
    sth     r27, 0xf4(r31)
    sth     r27, 0xf6(r31)
    sth     r27, 0xf8(r31)
    sth     r5, 0xfa(r31)
    sth     r27, 0xfc(r31)
    sth     r27, 0xfe(r31)
    sth     r27, 0x100(r31)
    stfs    f3, 0x104(r31)
    stw     r27, 0x108(r31)
    stw     r27, 0x118(r31)
    stw     r27, 0x11c(r31)
    lha     r5, 0x58c(r31)
    sth     r5, 0x120(r31)
    sth     r27, 0x122(r31)
    sth     r27, 0x124(r31)
    sth     r27, 0x126(r31)
    sth     r27, 0x128(r31)
    lha     r5, 0x120(r31)
    lfd     f2, -0x880(r2)
    addi    r5, r5, 0x1
    lfs     f0, -0x89c(r2)
    xoris   r5, r5, 0x8000
    stw     r5, 0x14(sp)
    stw     r4, 0x10(sp)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    stfs    f0, 0x130(r31)
    lfs     f0, 0x130(r31)
    stfs    f0, 0x12c(r31)
    stw     r0, 0x144(r31)
    stw     r27, 0x148(r31)
    sth     r27, 0x14c(r31)
    sth     r27, 0x14e(r31)
    stw     r27, 0x154(r31)
    stw     r27, 0x158(r31)
    stfs    f3, 0x15c(r31)
    stfs    f3, 0x168(r31)
    stfs    f3, 0x164(r31)
    stfs    f3, 0x160(r31)
    stfs    f3, 0x174(r31)
    stfs    f3, 0x170(r31)
    stfs    f3, 0x16c(r31)
    stfs    f3, 0x180(r31)
    stfs    f3, 0x17c(r31)
    stfs    f3, 0x178(r31)
    stfs    f3, 0x18c(r31)
    stfs    f3, 0x188(r31)
    stfs    f3, 0x184(r31)
    stfs    f3, 0x198(r31)
    stfs    f3, 0x194(r31)
    stfs    f3, 0x190(r31)
    stfs    f3, 0x1b0(r31)
    stfs    f3, 0x1ac(r31)
    stfs    f3, 0x1a8(r31)
    stfs    f3, 0x1bc(r31)
    stfs    f3, 0x1b8(r31)
    stfs    f3, 0x1b4(r31)
    stfs    f3, 0x1a4(r31)
    stfs    f3, 0x1a0(r31)
    stfs    f3, 0x19c(r31)
    bl      PSMTXIdentity
    addi    r3, r31, 0x1f0
    bl      PSMTXIdentity
    addi    r3, r31, 0x220
    bl      PSMTXIdentity
    addi    r3, r31, 0x250
    bl      PSMTXIdentity
    lwz     r4, 0x10(r31)
    addi    r3, r31, 0x2c4
    lwz     r0, 0x14(r31)
    stw     r4, 0x280(r31)
    stw     r0, 0x284(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x288(r31)
    lwz     r4, 0x30(r31)
    lwz     r0, 0x34(r31)
    stw     r4, 0x28c(r31)
    stw     r0, 0x290(r31)
    lwz     r0, 0x38(r31)
    stw     r0, 0x294(r31)
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r4, 0x29c(r31)
    stw     r0, 0x2a0(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x2a4(r31)
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r4, 0x2a8(r31)
    stw     r0, 0x2ac(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x2b0(r31)
    lwz     r0, 0x94(r31)
    stw     r0, 0x2b4(r31)
    lhz     r0, 0x98(r31)
    sth     r0, 0x2b8(r31)
    sth     r27, 0x2ba(r31)
    lfs     f0, -0xa4c(r2)
    stfs    f0, 0x2bc(r31)
    stw     r27, 0x2c0(r31)
    bl      PSMTXIdentity
    lfs     f0, -0xa4c(r2)
    addi    r3, r31, 0x318
    stfs    f0, 0x2f4(r31)
    stfs    f0, 0x2f8(r31)
    stfs    f0, 0x2fc(r31)
    stfs    f0, 0x300(r31)
    stfs    f0, 0x304(r31)
    stfs    f0, 0x308(r31)
    stfs    f0, 0x30c(r31)
    stfs    f0, 0x314(r31)
    stw     r27, 0x310(r31)
    bl      PSMTXIdentity
    lfs     f2, -0xa4c(r2)
    li      r0, 0x4
    stfs    f2, 0x348(r31)
    sth     r27, 0x34c(r31)
    sth     r27, 0x34e(r31)
    stw     r27, 0x350(r31)
    stfs    f2, 0x354(r31)
    stfs    f2, 0x358(r31)
    stfs    f2, 0x35c(r31)
    sth     r27, 0x360(r31)
    sth     r27, 0x362(r31)
    sth     r27, 0x364(r31)
    sth     r27, 0x366(r31)
    stfs    f2, 0x368(r31)
    stfs    f2, 0x36c(r31)
    stfs    f2, 0x370(r31)
    stfs    f2, 0x374(r31)
    stfs    f2, 0x378(r31)
    sth     r27, 0x37e(r31)
    stw     r16, 0x380(r31)
    stw     r27, 0x384(r31)
    stb     r17, 0x388(r31)
    stw     r27, 0x390(r31)
    stw     r27, 0x394(r31)
    stw     r27, 0x398(r31)
    stw     r27, 0x39c(r31)
    stw     r27, 0x3a0(r31)
    stw     r27, 0x3a8(r31)
    stw     r27, 0x3b0(r31)
    stw     r27, 0x3b4(r31)
    stw     r27, 0x3b8(r31)
    stw     r27, 0x3bc(r31)
    stb     r27, 0x3c5(r31)
    stb     r27, 0x3c6(r31)
    stb     r27, 0x3c7(r31)
    stb     r27, 0x3c8(r31)
    stb     r27, 0x3c9(r31)
    stb     r27, 0x3ca(r31)
    stb     r27, 0x3cb(r31)
    stb     r27, 0x3cc(r31)
    stb     r27, 0x3cd(r31)
    stb     r27, 0x3ce(r31)
    stb     r27, 0x3cf(r31)
    stb     r27, 0x3d0(r31)
    sth     r27, 0x3d4(r31)
    sth     r27, 0x3d6(r31)
    stfs    f2, 0x3d8(r31)
    stfs    f2, 0x3dc(r31)
    stw     r27, 0x3e0(r31)
    stw     r27, 0x3e4(r31)
    stw     r0, 0x3e8(r31)
    stfs    f2, 0x3ec(r31)
    stw     r27, 0x3f0(r31)
    stw     r27, 0x3f4(r31)
    stw     r27, 0x3f8(r31)
    stw     r27, 0x3fc(r31)
    stw     r27, 0x400(r31)
    stfs    f2, 0x40c(r31)
    stfs    f2, 0x408(r31)
    stfs    f2, 0x404(r31)
    sth     r27, 0x410(r31)
    sth     r27, 0x412(r31)
    stfs    f2, 0x414(r31)
    stfs    f2, 0x418(r31)
    stfs    f2, 0x41c(r31)
    stw     r27, 0x420(r31)
    stw     r27, 0x424(r31)
    lfs     f0, -0xa94(r2)
    stfs    f0, 0x428(r31)
    lfs     f1, -0x898(r2)
    stfs    f1, 0x42c(r31)
    stfs    f0, 0x430(r31)
    lfs     f0, -0x97c(r2)
    stfs    f0, 0x434(r31)
    stfs    f1, 0x438(r31)
    li      r5, 0x14
    li      r4, 0x4000
    stfs    f0, 0x43c(r31)
    li      r0, -0x4000
    addi    r3, r31, 0x0
    lfs     f0, -0xa40(r2)
    stfs    f0, 0x440(r31)
    stfs    f2, 0x444(r31)
    stfs    f2, 0x448(r31)
    stfs    f2, 0x44c(r31)
    stfs    f2, 0x458(r31)
    stfs    f2, 0x454(r31)
    stfs    f2, 0x450(r31)
    stw     r27, 0x4dc(r31)
    stw     r27, 0x4e0(r31)
    stw     r27, 0x4e4(r31)
    stw     r27, 0x4e8(r31)
    stb     r27, 0x4ec(r31)
    stb     r27, 0x4ed(r31)
    stfs    f2, 0x4f0(r31)
    stfs    f2, 0x4f4(r31)
    stfs    f2, 0x4f8(r31)
    stw     r27, 0x4fc(r31)
    stw     r27, 0x530(r31)
    stb     r27, 0x534(r31)
    sth     r27, 0x536(r31)
    sth     r27, 0x538(r31)
    stb     r27, 0x53a(r31)
    stb     r27, 0x53b(r31)
    stw     r27, 0x53c(r31)
    lfs     f0, -0x894(r2)
    stfs    f0, 0x540(r31)
    lfs     f0, -0x890(r2)
    stfs    f0, 0x544(r31)
    stb     r27, 0x54c(r31)
    stb     r5, 0x54d(r31)
    stw     r27, 0x548(r31)
    sth     r23, 0x54e(r31)
    sth     r4, 0x550(r31)
    sth     r0, 0x552(r31)
    sth     r27, 0x554(r31)
    stw     r27, 0x558(r31)
    lfs     f0, -0x88c(r2)
    stfs    f0, 0x55c(r31)
    lfs     f0, -0x98c(r2)
    stfs    f0, 0x560(r31)
    lfs     f0, -0x930(r2)
    stfs    f0, 0x564(r31)
    lfs     f0, -0x888(r2)
    stfs    f0, 0x568(r31)
    lfs     f0, -0x99c(r2)
    stfs    f0, 0x56c(r31)
    stfs    f2, 0x570(r31)
    stw     r27, 0x390(r31)
    lwz     r0, 0x5c(sp)
    lmw     r16, 0x18(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __sinit_MarioInit_cpp
__sinit_MarioInit_cpp: # 0x8027bb24
    mflr    r0
    lis     r3, cDeformedTerrainCenter_803fc1e8@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, cDeformedTerrainCenter_803fc1e8@l
    lfs     f1, -0xa4c(r2)
    stfs    f1, 0x0(r31)
    lfs     f0, -0x878(r2)
    stfs    f0, 0x4(r31)
    stfs    f1, 0x8(r31)
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bb80
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8027bb80:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bbb0
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8027bbb0:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bbe0
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8027bbe0:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bc10
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8027bc10:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bc40
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8027bc40:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bc70
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8027bc70:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bca0
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8027bca0:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bcd0
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8027bcd0:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bd00
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8027bd00:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bd30
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8027bd30:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bd60
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8027bd60:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bd90
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8027bd90:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bdc0
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8027bdc0:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8027bdf0
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8027bdf0:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8027be20
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8027be20:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8027be34
unk_8027be34: # 0x8027be34
    addi    r3, r3, -0x20
    b       __dt__6TMarioFv

