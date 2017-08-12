
.globl __dt__8TBathtubFv
__dt__8TBathtubFv: # 0x801f87fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f8864
    lis     r3, __vvt__8TBathtub@h
    addi    r3, r3, __vvt__8TBathtub@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f8854
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f8854:
    extsh.  r0, r31
    ble-    branch_0x801f8864
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f8864:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getNumKillerBurstable__8TBathtubCFv
getNumKillerBurstable__8TBathtubCFv: # 0x801f8880
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801f88ac
    li      r0, 0x0
    b       branch_0x801f8904

branch_0x801f88ac:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r2, R2Off_m0x1fb4
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x1fb4
    mtlr    r12
    blrl
    bl      allowsLaunch__6TKoopaCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801f88ec
    li      r0, 0x0
    b       branch_0x801f8904

branch_0x801f88ec:
    lwz     r5, 0x248(r31)
    li      r0, 0x0
    srawi   r3, r0, 31
    srwi    r4, r5, 31
    subfc   r0, r5, r0
    adde    r0, r3, r4
branch_0x801f8904:
    clrlwi. r0, r0, 24
    bne-    branch_0x801f8914
    li      r3, 0x0
    b       branch_0x801f8a14

branch_0x801f8914:
    lwz     r3, 0x168(r31)
    li      r30, 0x0
    lwz     r3, 0x0(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f8930
    li      r30, 0x1
branch_0x801f8930:
    lwz     r3, 0x168(r31)
    lwz     r3, 0x4(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f8948
    addi    r30, r30, 0x1
branch_0x801f8948:
    lwz     r3, 0x168(r31)
    lwz     r3, 0x8(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f8960
    addi    r30, r30, 0x1
branch_0x801f8960:
    lwz     r3, 0x168(r31)
    lwz     r3, 0xc(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f8978
    addi    r30, r30, 0x1
branch_0x801f8978:
    lwz     r3, 0x168(r31)
    lwz     r3, 0x10(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f8990
    addi    r30, r30, 0x1
branch_0x801f8990:
    cmpwi   r30, 0x4
    blt-    branch_0x801f89a0
    li      r3, 0x8
    b       branch_0x801f8a14

branch_0x801f89a0:
    mr      r3, r31
    bl      allowsTumble__8TBathtubCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801f8a10
    lwz     r0, 0x250(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801f8a10
    lwz     r0, 0x258(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801f8a10
    cmpwi   r30, 0x3
    beq-    branch_0x801f8a00
    bge-    branch_0x801f89e4
    cmpwi   r30, 0x1
    beq-    branch_0x801f89f0
    bge-    branch_0x801f89f8
    b       branch_0x801f8a10

branch_0x801f89e4:
    cmpwi   r30, 0x5
    bge-    branch_0x801f8a10
    b       branch_0x801f8a08

branch_0x801f89f0:
    li      r3, 0x4
    b       branch_0x801f8a14

branch_0x801f89f8:
    li      r3, 0x6
    b       branch_0x801f8a14

branch_0x801f8a00:
    li      r3, 0x8
    b       branch_0x801f8a14

branch_0x801f8a08:
    li      r3, 0x8
    b       branch_0x801f8a14

branch_0x801f8a10:
    li      r3, 0x0
branch_0x801f8a14:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl isKillerAttackable__8TBathtubCFv
isKillerAttackable__8TBathtubCFv: # 0x801f8a2c
    lwz     r5, 0x248(r3)
    li      r0, 0x0
    srawi   r3, r0, 31
    srwi    r4, r5, 31
    subfc   r0, r5, r0
    adde    r3, r3, r4
    blr


.globl getNumKillerLaunchable__8TBathtubCFv
getNumKillerLaunchable__8TBathtubCFv: # 0x801f8a48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801f8a74
    li      r0, 0x0
    b       branch_0x801f8acc

branch_0x801f8a74:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r2, R2Off_m0x1fb4
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x1fb4
    mtlr    r12
    blrl
    bl      allowsLaunch__6TKoopaCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801f8ab4
    li      r0, 0x0
    b       branch_0x801f8acc

branch_0x801f8ab4:
    lwz     r5, 0x248(r31)
    li      r0, 0x0
    srawi   r3, r0, 31
    srwi    r4, r5, 31
    subfc   r0, r5, r0
    adde    r0, r3, r4
branch_0x801f8acc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801f8adc
    li      r3, 0x0
    b       branch_0x801f8b74

branch_0x801f8adc:
    lwz     r3, 0x168(r31)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f8af8
    li      r4, 0x1
branch_0x801f8af8:
    lwz     r3, 0x168(r31)
    lwz     r3, 0x4(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f8b10
    addi    r4, r4, 0x1
branch_0x801f8b10:
    lwz     r3, 0x168(r31)
    lwz     r3, 0x8(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f8b28
    addi    r4, r4, 0x1
branch_0x801f8b28:
    lwz     r3, 0x168(r31)
    lwz     r3, 0xc(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f8b40
    addi    r4, r4, 0x1
branch_0x801f8b40:
    lwz     r3, 0x168(r31)
    lwz     r3, 0x10(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f8b58
    addi    r4, r4, 0x1
branch_0x801f8b58:
    addi    r3, r4, 0x1
    cmpwi   r3, 0x2
    bge-    branch_0x801f8b68
    li      r3, 0x2
branch_0x801f8b68:
    cmpwi   r3, 0x4
    ble-    branch_0x801f8b74
    li      r3, 0x4
branch_0x801f8b74:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __ct__8TBathtubFPCc
__ct__8TBathtubFPCc: # 0x801f8b8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TMapObjBaseFPCc
    lwz     r30, 0x8(sp)
    lis     r3, __vvt__8TBathtub@h
    addi    r3, r3, __vvt__8TBathtub@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    li      r31, 0x0
    stw     r0, 0x20(r30)
    addi    r3, r30, 0x188
    stw     r31, 0x164(r30)
    bl      __ct__Q29JGeometry13SMatrix33R_f_Fv
    stw     r31, 0x290(r30)
    li      r3, 0x210
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801f8bf0
    mr      r3, r30
    bl      __ct__14TBathtubParamsFv
branch_0x801f8bf0:
    lwz     r3, 0x8(sp)
    li      r4, 0x0
    li      r0, 0x1
    stw     r30, 0x16c(r3)
    lfs     f1, -0x1fb8(r2)
    stfs    f1, 0x1d8(r3)
    stfs    f1, 0x1dc(r3)
    stfs    f1, 0x1e0(r3)
    lfs     f0, -0x1fac(r2)
    stfs    f0, 0x1e4(r3)
    stfs    f1, 0x18(r3)
    stfs    f1, 0x14(r3)
    stfs    f1, 0x10(r3)
    stfs    f1, 0x1f0(r3)
    stfs    f1, 0x1ec(r3)
    stfs    f1, 0x1e8(r3)
    stw     r4, 0x250(r3)
    stw     r0, 0x254(r3)
    stw     r4, 0x258(r3)
    stw     r0, 0x25c(r3)
    stw     r4, 0x248(r3)
    stb     r4, 0x298(r3)
    stfs    f1, 0x244(r3)
    stfs    f1, 0x240(r3)
    stfs    f1, 0x23c(r3)
    stb     r4, 0x299(r3)
    stb     r4, 0x29a(r3)
    stw     r4, 0x2a0(r3)
    stw     r4, 0x294(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __ct__Q29JGeometry13SMatrix33R_f_Fv
__ct__Q29JGeometry13SMatrix33R_f_Fv: # 0x801f8c7c
    blr


.globl load__8TBathtubFR20JSUMemoryInputStream
load__8TBathtubFR20JSUMemoryInputStream: # 0x801f8c80
    mflr    r0
    lis     r5, unk_80393ef8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stfd    f29, 0xc8(sp)
    stfd    f28, 0xc0(sp)
    stfd    f27, 0xb8(sp)
    stfd    f26, 0xb0(sp)
    stfd    f25, 0xa8(sp)
    stfd    f24, 0xa0(sp)
    stmw    r25, 0x84(sp)
    li      r27, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, unk_80393ef8@l
    stw     r27, 0x24c(r3)
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lfs     f0, 0x10c(r29)
    li      r3, 0x78
    stfs    f0, 0x10(r29)
    lfs     f0, 0x110(r29)
    stfs    f0, 0x14(r29)
    lfs     f0, 0x114(r29)
    stfs    f0, 0x18(r29)
    bl      __nwa__FUl
    lis     r4, unk_2aaaaaab@ha
    stw     r3, 0x164(r29)
    addi    r26, r4, unk_2aaaaaab@l
    li      r28, 0x0
branch_0x801f8cf8:
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801f8d10
    mr      r3, r30
    bl      __ct__17TMapCollisionMoveFv
branch_0x801f8d10:
    mulhw   r3, r26, r28
    lwz     r4, 0x164(r29)
    stwx    r30, r4, r27
    srwi    r0, r3, 31
    add     r0, r3, r0
    mulli   r0, r0, 0x6
    subf    r0, r0, r28
    cmpwi   r0, 0x3
    li      r4, 0x0
    beq-    branch_0x801f8d7c
    bge-    branch_0x801f8d54
    cmpwi   r0, 0x1
    beq-    branch_0x801f8d6c
    bge-    branch_0x801f8d74
    cmpwi   r0, 0x0
    bge-    branch_0x801f8d64
    b       branch_0x801f8d90

branch_0x801f8d54:
    cmpwi   r0, 0x5
    beq-    branch_0x801f8d8c
    bge-    branch_0x801f8d90
    b       branch_0x801f8d84

branch_0x801f8d64:
    addi    r4, r31, 0xf8
    b       branch_0x801f8d90

branch_0x801f8d6c:
    addi    r4, r31, 0x11c
    b       branch_0x801f8d90

branch_0x801f8d74:
    addi    r4, r31, 0x140
    b       branch_0x801f8d90

branch_0x801f8d7c:
    addi    r4, r31, 0x164
    b       branch_0x801f8d90

branch_0x801f8d84:
    addi    r4, r31, 0x188
    b       branch_0x801f8d90

branch_0x801f8d8c:
    addi    r4, r31, 0x1ac
branch_0x801f8d90:
    lwz     r3, 0x164(r29)
    mr      r6, r29
    li      r5, 0x0
    lwzx    r3, r3, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x164(r29)
    lwzx    r3, r3, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    cmpwi   r28, 0x1e
    addi    r27, r27, 0x4
    blt+    branch_0x801f8cf8
    lfs     f0, 0x10c(r29)
    stfs    f0, 0x170(r29)
    lfs     f0, 0x110(r29)
    stfs    f0, 0x174(r29)
    lfs     f0, 0x114(r29)
    stfs    f0, 0x178(r29)
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0x1a4(r29)
    stfs    f0, 0x1a0(r29)
    stfs    f0, 0x19c(r29)
    stfs    f0, 0x194(r29)
    stfs    f0, 0x190(r29)
    stfs    f0, 0x18c(r29)
    lfs     f0, -0x1fac(r2)
    stfs    f0, 0x1a8(r29)
    stfs    f0, 0x198(r29)
    stfs    f0, 0x188(r29)
    lfs     f0, -0x1fa8(r2)
    stfs    f0, 0x1ac(r29)
    lfs     f0, -0x1fa4(r2)
    stfs    f0, 0x1b0(r29)
    lfs     f1, -0x1fa0(r2)
    bl      sinf
    lfs     f0, 0x1ac(r29)
    li      r0, 0x0
    li      r3, 0x14
    fmuls   f0, f0, f1
    stfs    f0, 0x1b4(r29)
    lfs     f1, -0x1fb8(r2)
    stfs    f1, 0x1c4(r29)
    stfs    f1, 0x1c0(r29)
    stfs    f1, 0x1bc(r29)
    stfs    f1, 0x1d0(r29)
    stfs    f1, 0x1cc(r29)
    stfs    f1, 0x1c8(r29)
    lfs     f0, -0x1f9c(r2)
    stfs    f0, 0x1b8(r29)
    stb     r0, 0x1d4(r29)
    stfs    f1, 0x17c(r29)
    lfs     f0, -0x1fac(r2)
    stfs    f0, 0x180(r29)
    stfs    f1, 0x184(r29)
    bl      __nwa__FUl
    stw     r3, 0x168(r29)
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801f8ea0
    mr      r3, r26
    bl      __ct__13MActorAnmDataFv
branch_0x801f8ea0:
    stw     r26, 0x138(r29)
    addi    r4, r31, 0x1d0
    li      r5, 0x0
    lwz     r3, 0x138(r29)
    bl      init__13MActorAnmDataFPCcPPCc
    lis     r3, unk_66666667@h
    lfs     f26, -0x1f98(r2)
    lfs     f27, -0x1f94(r2)
    addi    r27, r3, unk_66666667@l
    lfd     f28, -0x1f30(r2)
    li      r30, 0x0
    lfs     f29, -0x1f90(r2)
    lfs     f30, -0x1f8c(r2)
    li      r28, 0x0
    lfs     f31, -0x1f88(r2)
    lis     r26, 0x4330
branch_0x801f8ee0:
    xoris   r0, r30, 0x8000
    stw     r0, 0x7c(sp)
    li      r3, 0x264
    stw     r26, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f28
    fadds   f0, f27, f0
    fmuls   f0, f26, f0
    fdivs   f25, f0, f29
    fsubs   f24, f25, f30
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801f8f2c
    fmr     f1, f24
    lwz     r5, 0x138(r29)
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    addi    r6, r31, 0x1ec
    bl      __ct__12TBathtubGripFP8TBathtubfP13MActorAnmDataPCc
branch_0x801f8f2c:
    mulhw   r0, r27, r30
    lwz     r4, 0x168(r29)
    srawi   r0, r0, 1
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x5
    subf    r0, r0, r30
    slwi    r0, r0, 2
    stwx    r25, r4, r0
    lwz     r3, 0x168(r29)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    xoris   r0, r30, 0x8000
    fadds   f1, f31, f25
    stw     r0, 0x7c(sp)
    add     r3, r29, r28
    addi    r30, r30, 0x1
    stw     r26, 0x78(sp)
    cmpwi   r30, 0x5
    lfd     f0, 0x78(sp)
    addi    r28, r28, 0x4
    stfs    f1, 0x13c(r3)
    fsubs   f0, f0, f28
    fmuls   f0, f26, f0
    fdivs   f0, f0, f29
    fadds   f0, f31, f0
    stfs    f0, 0x150(r3)
    blt+    branch_0x801f8ee0
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r2, R2Off_m0x1f84
    lwz     r26, 0xb0(r3)
    mr      r3, r26
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x260(r29)
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x1f7c
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x264(r29)
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x1f74
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x27c(r29)
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x1f6c
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x280(r29)
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x1f64
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x284(r29)
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x1f5c
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x288(r29)
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x1f54
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x28c(r29)
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x1f4c
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x270(r29)
    addi    r3, r26, 0x0
    addi    r4, r31, 0x208
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x26c(r29)
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x1f44
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x274(r29)
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x1f40
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x278(r29)
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801f9080
    mr      r3, r25
    bl      __ct__13MActorAnmDataFv
branch_0x801f9080:
    addi    r26, r25, 0x0
    addi    r3, r26, 0x0
    addi    r4, r31, 0x214
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801f90b0
    addi    r3, r25, 0x0
    addi    r4, r26, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x801f90b0:
    stw     r25, 0x29c(r29)
    addi    r3, r31, 0x22c
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r26, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801f90f0
    addi    r3, r26, 0x0
    lis     r4, 0x1000
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x801f90f0:
    lwz     r3, 0x29c(r29)
    addi    r4, r25, 0x0
    lis     r5, 0x1000
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r3, 0x29c(r29)
    addi    r4, r2, R2Off_m0x1f38
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x268(r29)
    li      r0, 0x1
    stb     r0, 0x298(r29)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    lfd     f29, 0xc8(sp)
    lfd     f28, 0xc0(sp)
    lfd     f27, 0xb8(sp)
    lfd     f26, 0xb0(sp)
    lfd     f25, 0xa8(sp)
    lfd     f24, 0xa0(sp)
    lmw     r25, 0x84(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl updatePosture___8TBathtubFv
updatePosture___8TBathtubFv: # 0x801f9158
    mflr    r0
    lis     r4, yDown_3084@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    stfd    f30, 0x148(sp)
    stfd    f29, 0x140(sp)
    stfd    f28, 0x138(sp)
    stfd    f27, 0x130(sp)
    stfd    f26, 0x128(sp)
    stfd    f25, 0x120(sp)
    stfd    f24, 0x118(sp)
    stfd    f23, 0x110(sp)
    stw     r31, 0x10c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x108(sp)
    addi    r30, r4, yDown_3084@l
    stw     r29, 0x104(sp)
    stw     r28, 0x100(sp)
    lbz     r0, R13Off_m0x6227(r13)
    extsb.  r0, r0
    bne-    branch_0x801f91cc
    lfs     f1, -0x1fb8(r2)
    li      r0, 0x1
    stfs    f1, 0xc(r30)
    lfs     f0, -0x1fac(r2)
    stfs    f0, 0x10(r30)
    stfs    f1, 0x14(r30)
    stb     r0, R13Off_m0x6227(r13)
branch_0x801f91cc:
    lwz     r3, 0x250(r31)
    cmpwi   r3, 0x0
    bne-    branch_0x801f935c
    lwz     r3, 0x258(r31)
    cmpwi   r3, 0x0
    bne-    branch_0x801f91ec
    lfs     f26, -0x1fac(r2)
    b       branch_0x801f9238

branch_0x801f91ec:
    addi    r0, r3, -0x1
    stw     r0, 0x258(r31)
    lis     r3, 0x4330
    lwz     r4, 0x258(r31)
    lwz     r0, 0x25c(r31)
    xoris   r4, r4, 0x8000
    lfd     f2, -0x1f30(r2)
    xoris   r0, r0, 0x8000
    stw     r4, 0xfc(sp)
    lfs     f3, -0x1fac(r2)
    stw     r0, 0xf4(sp)
    stw     r3, 0xf8(sp)
    stw     r3, 0xf0(sp)
    lfd     f1, 0xf8(sp)
    lfd     f0, 0xf0(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fsubs   f26, f3, f0
branch_0x801f9238:
    lfs     f5, 0x1d8(r31)
    addi    r28, r30, 0x14
    lfs     f1, 0x1e4(r31)
    addi    r29, r30, 0x10
    lfs     f8, 0x1e0(r31)
    fmuls   f0, f1, f5
    lfs     f7, -0x1f28(r2)
    lfs     f6, 0x1dc(r31)
    fmuls   f4, f1, f8
    fmuls   f3, f5, f5
    fmuls   f1, f6, f8
    lfs     f2, -0x1fac(r2)
    fmuls   f0, f7, f0
    lfs     f11, 0xc(r30)
    fmuls   f6, f5, f6
    fmuls   f5, f7, f4
    lfs     f9, 0x14(r30)
    fmadds  f31, f7, f1, f0
    lfs     f10, 0x10(r30)
    fnmsubs  f1, f7, f3, f2
    fmuls   f4, f8, f8
    lfs     f0, -0x1f24(r2)
    fmsubs  f30, f7, f6, f5
    fmuls   f2, f11, f31
    fnmsubs  f27, f7, f4, f1
    fmuls   f1, f10, f30
    fmsubs  f24, f9, f30, f2
    fmuls   f2, f9, f27
    fmsubs  f25, f11, f27, f1
    fmuls   f1, f24, f24
    fmsubs  f23, f10, f31, f2
    fmadds  f1, f23, f23, f1
    fmadds  f1, f25, f25, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801f92d8
    lfs     f25, -0x1fb8(r2)
    fmr     f24, f25
    fmr     f23, f24
    b       branch_0x801f92f0

branch_0x801f92d8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x1fac(r2)
    fmuls   f0, f0, f1
    fmuls   f23, f23, f0
    fmuls   f24, f24, f0
    fmuls   f25, f25, f0
branch_0x801f92f0:
    lfs     f0, 0x0(r29)
    lfs     f1, 0xc(r30)
    fmuls   f0, f0, f27
    lwz     r3, 0x16c(r31)
    lfs     f2, 0x0(r28)
    lfs     f27, 0x1bc(r3)
    fmadds  f0, f1, f30, f0
    fmadds  f1, f2, f31, f0
    bl      acosf
    fneg    f1, f1
    lwz     r3, 0x16c(r31)
    lfs     f0, 0x1e8(r31)
    lfs     f2, 0x1a8(r3)
    fmuls   f1, f26, f1
    fmuls   f27, f27, f1
    fmuls   f23, f23, f27
    fmuls   f24, f24, f27
    fmuls   f25, f25, f27
    fmadds  f0, f0, f2, f23
    stfs    f0, 0x1e8(r31)
    lfs     f0, 0x1ec(r31)
    fmadds  f0, f0, f2, f24
    stfs    f0, 0x1ec(r31)
    lfs     f0, 0x1f0(r31)
    fmadds  f0, f0, f2, f25
    stfs    f0, 0x1f0(r31)
    b       branch_0x801f9364

branch_0x801f935c:
    addi    r0, r3, -0x1
    stw     r0, 0x250(r31)
branch_0x801f9364:
    lfs     f0, 0x1e8(r31)
    addi    r3, r31, 0x1d8
    lfs     f1, -0x1f94(r2)
    mr      r4, r3
    fmuls   f0, f0, f1
    stfs    f0, 0xa8(sp)
    lfs     f0, 0x1ec(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(sp)
    lfs     f0, 0x1f0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(sp)
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0xb4(sp)
    lfs     f5, 0xb4(sp)
    lfs     f10, 0x1d8(r31)
    lfs     f8, 0x1dc(r31)
    lfs     f9, 0xa8(sp)
    fmuls   f0, f5, f10
    lfs     f6, 0x1e4(r31)
    fmuls   f1, f5, f8
    lfs     f11, 0xac(sp)
    lfs     f4, 0x1e0(r31)
    fmadds  f2, f9, f6, f0
    lfs     f7, 0xb0(sp)
    fmuls   f0, f5, f4
    fmadds  f1, f11, f6, f1
    fmuls   f3, f9, f10
    fmadds  f2, f11, f4, f2
    fmadds  f0, f7, f6, f0
    fmadds  f1, f7, f10, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f2, f7, f8, f2
    fmadds  f0, f9, f8, f0
    fnmsubs  f1, f9, f4, f1
    stfs    f2, 0xa8(sp)
    fnmsubs  f3, f11, f8, f3
    fnmsubs  f0, f11, f10, f0
    stfs    f1, 0xac(sp)
    fnmsubs  f2, f7, f4, f3
    stfs    f0, 0xb0(sp)
    stfs    f2, 0xb4(sp)
    lfs     f1, 0x1d8(r31)
    lfs     f0, 0xa8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1d8(r31)
    lfs     f1, 0x1dc(r31)
    lfs     f0, 0xac(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1dc(r31)
    lfs     f1, 0x1e0(r31)
    lfs     f0, 0xb0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1e0(r31)
    lfs     f1, 0x1e4(r31)
    lfs     f0, 0xb4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1e4(r31)
    lfs     f23, -0x1fac(r2)
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x1f24(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801f947c
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0x1e4(r31)
    stfs    f0, 0x1e0(r31)
    stfs    f0, 0x1dc(r31)
    stfs    f0, 0x1d8(r31)
    b       branch_0x801f9490

branch_0x801f947c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f23, f1
    addi    r3, r31, 0x1d8
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x801f9490:
    lfs     f6, 0x1d8(r31)
    addi    r28, r30, 0x10
    lfs     f0, 0x1e4(r31)
    addi    r29, r30, 0x14
    fmuls   f3, f6, f6
    lfs     f8, 0x1e0(r31)
    fmuls   f2, f0, f6
    lfs     f7, -0x1f28(r2)
    fmuls   f5, f0, f8
    lfs     f1, -0x1fac(r2)
    fmuls   f4, f8, f8
    lfs     f9, 0x1dc(r31)
    fnmsubs  f1, f7, f3, f1
    fmuls   f6, f6, f9
    lfs     f0, 0x10(r30)
    fmuls   f5, f7, f5
    fnmsubs  f26, f7, f4, f1
    fmuls   f3, f7, f2
    fmuls   f4, f9, f8
    lfs     f1, 0xc(r30)
    fmsubs  f25, f7, f6, f5
    fmuls   f0, f0, f26
    fmadds  f24, f7, f4, f3
    lfs     f2, 0x14(r30)
    fmadds  f0, f1, f25, f0
    fmadds  f1, f2, f24, f0
    bl      acosf
    lwz     r3, 0x16c(r31)
    fmr     f31, f1
    lfs     f0, -0x1f20(r2)
    lfs     f1, 0x194(r3)
    lfs     f3, -0x1fb8(r2)
    fmuls   f1, f1, f0
    fsubs   f23, f31, f1
    fcmpo   cr0, f23, f3
    ble-    branch_0x801f9680
    lfs     f4, 0x0(r29)
    lfs     f6, 0x0(r28)
    fmuls   f1, f25, f4
    lfs     f5, 0xc(r30)
    fmuls   f2, f24, f6
    fmuls   f0, f26, f5
    fmsubs  f28, f24, f5, f1
    fmsubs  f29, f26, f4, f2
    fmsubs  f27, f25, f6, f0
    fmuls   f0, f28, f28
    fmadds  f0, f29, f29, f0
    fmadds  f30, f27, f27, f0
    fcmpo   cr0, f30, f3
    cror    2, 0, 2
    bne-    branch_0x801f9560
    b       branch_0x801f9584

branch_0x801f9560:
    frsqrte f3, f30
    lfs     f2, -0x1f94(r2)
    lfs     f0, -0x1f1c(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f30, f1, f0
    fmuls   f0, f2, f0
    fmuls   f30, f30, f0
branch_0x801f9584:
    lfs     f0, -0x1f24(r2)
    fcmpo   cr0, f30, f0
    cror    2, 0, 2
    bne-    branch_0x801f95b0
    lfs     f1, -0x1fb8(r2)
    lfs     f0, -0x1fac(r2)
    stfs    f1, 0xbc(sp)
    stfs    f1, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f0, 0xc8(sp)
    b       branch_0x801f9610

branch_0x801f95b0:
    lfs     f0, 0x0(r28)
    fmr     f1, f30
    lfs     f2, 0xc(r30)
    fmuls   f0, f26, f0
    lfs     f3, 0x0(r29)
    fmadds  f0, f25, f2, f0
    fmadds  f2, f24, f3, f0
    bl      atan2f
    fdivs   f2, f23, f31
    lfs     f0, -0x1f94(r2)
    fmuls   f0, f0, f1
    fmuls   f23, f2, f0
    fmr     f1, f23
    bl      sinf
    fdivs   f1, f1, f30
    fmuls   f0, f29, f1
    fmuls   f2, f28, f1
    stfs    f0, 0xbc(sp)
    fmuls   f0, f27, f1
    fmr     f1, f23
    stfs    f2, 0xc0(sp)
    stfs    f0, 0xc4(sp)
    bl      cosf
    stfs    f1, 0xc8(sp)
branch_0x801f9610:
    lfs     f5, 0xc8(sp)
    lfs     f10, 0x1d8(r31)
    lfs     f8, 0x1dc(r31)
    lfs     f9, 0xbc(sp)
    fmuls   f0, f5, f10
    lfs     f6, 0x1e4(r31)
    fmuls   f1, f5, f8
    lfs     f4, 0x1e0(r31)
    lfs     f11, 0xc0(sp)
    fmadds  f2, f9, f6, f0
    lfs     f7, 0xc4(sp)
    fmuls   f0, f5, f4
    fmadds  f1, f11, f6, f1
    fmuls   f3, f9, f10
    fmadds  f2, f11, f4, f2
    fmadds  f0, f7, f6, f0
    fmadds  f1, f7, f10, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f2, f7, f8, f2
    fmadds  f0, f9, f8, f0
    fnmsubs  f3, f11, f8, f3
    fnmsubs  f1, f9, f4, f1
    stfs    f2, 0x1d8(r31)
    fnmsubs  f0, f11, f10, f0
    fnmsubs  f2, f7, f4, f3
    stfs    f1, 0x1dc(r31)
    stfs    f0, 0x1e0(r31)
    stfs    f2, 0x1e4(r31)
branch_0x801f9680:
    lfs     f1, 0x1d8(r31)
    lfs     f0, 0x1dc(r31)
    fmuls   f1, f1, f1
    lfs     f2, 0x1e0(r31)
    fmuls   f0, f0, f0
    lfs     f3, 0x1e4(r31)
    fmuls   f2, f2, f2
    fadds   f1, f1, f0
    lfs     f0, -0x1f24(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801f96d4
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0x1e4(r31)
    stfs    f0, 0x1e0(r31)
    stfs    f0, 0x1dc(r31)
    stfs    f0, 0x1d8(r31)
    b       branch_0x801f9710

branch_0x801f96d4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x1fac(r2)
    lfs     f0, 0x1d8(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1d8(r31)
    lfs     f0, 0x1dc(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1dc(r31)
    lfs     f0, 0x1e0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1e0(r31)
    lfs     f0, 0x1e4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1e4(r31)
branch_0x801f9710:
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lfd     f30, 0x148(sp)
    mtlr    r0
    lfd     f29, 0x140(sp)
    lfd     f28, 0x138(sp)
    lfd     f27, 0x130(sp)
    lfd     f26, 0x128(sp)
    lfd     f25, 0x120(sp)
    lfd     f24, 0x118(sp)
    lfd     f23, 0x110(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    lwz     r29, 0x104(sp)
    lwz     r28, 0x100(sp)
    addi    sp, sp, 0x158
    blr


.globl getNextGrip__8TBathtubCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf
getNextGrip__8TBathtubCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf: # 0x801f9754
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stfd    f31, 0x140(sp)
    fmr     f31, f1
    stfd    f30, 0x138(sp)
    stfd    f29, 0x130(sp)
    stfd    f28, 0x128(sp)
    stfd    f27, 0x120(sp)
    stmw    r27, 0x10c(sp)
    mr      r27, r3
    addi    r30, r4, 0x0
    addi    r29, r5, 0x0
    addi    r28, r6, 0x0
    lwz     r12, 0x0(r27)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x20(r3)
    addi    r4, sp, 0xd4
    lfs     f2, 0x10(r3)
    lfs     f0, 0x0(r3)
    stfs    f0, 0xb0(sp)
    stfs    f2, 0xb4(sp)
    stfs    f1, 0xb8(sp)
    lfs     f1, 0x28(r3)
    lfs     f2, 0x18(r3)
    lfs     f0, 0x8(r3)
    stfs    f0, 0xbc(sp)
    stfs    f2, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    lfs     f1, 0x2c(r3)
    lfs     f2, 0x1c(r3)
    lfs     f0, 0xc(r3)
    addi    r3, sp, 0xe0
    stfs    f0, 0xc8(sp)
    stfs    f2, 0xcc(sp)
    stfs    f1, 0xd0(sp)
    lfs     f1, 0x0(r30)
    lfs     f0, 0xc8(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0x4(r30)
    lfs     f0, 0xcc(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0x8(r30)
    lfs     f0, 0xd0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, -0x1fac(r2)
    bl      setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f
    lfs     f3, 0xe4(sp)
    lfs     f4, 0x4(r29)
    lfs     f1, 0xe0(sp)
    fmuls   f0, f3, f4
    lfs     f2, 0x0(r29)
    lfs     f5, 0xe8(sp)
    lfs     f6, 0x8(r29)
    fmadds  f0, f1, f2, f0
    fmadds  f0, f5, f6, f0
    fneg    f0, f0
    fmadds  f2, f1, f0, f2
    fmadds  f1, f3, f0, f4
    fmadds  f0, f5, f0, f6
    stfs    f2, 0xec(sp)
    stfs    f1, 0xf0(sp)
    stfs    f0, 0xf4(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0xec(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0xf0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0xf4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, 0xc0(sp)
    lfs     f4, 0xd8(sp)
    lfs     f0, 0xb4(sp)
    fmuls   f2, f1, f4
    lfs     f3, 0xbc(sp)
    fmuls   f0, f0, f4
    lfs     f5, 0xd4(sp)
    lfs     f1, 0xb0(sp)
    fmadds  f3, f3, f5, f2
    lfs     f4, 0xc4(sp)
    fmadds  f0, f1, f5, f0
    lfs     f6, 0xdc(sp)
    lfs     f2, 0xb8(sp)
    fmadds  f1, f4, f6, f3
    fmadds  f2, f2, f6, f0
    bl      matan__Fff
    extsh   r0, r3
    lfs     f27, -0x1f98(r2)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x1f30(r2)
    stw     r0, 0x104(sp)
    lis     r0, 0x4330
    lfs     f0, -0x1f18(r2)
    fmr     f29, f27
    stw     r0, 0x100(sp)
    lfs     f30, -0x1f88(r2)
    li      r30, 0x0
    lfd     f1, 0x100(sp)
    li      r29, 0x0
    fsubs   f1, f1, f2
    li      r31, 0x0
    fmuls   f28, f0, f1
branch_0x801f9914:
    addi    r0, r31, 0x150
    fmr     f2, f29
    lfsx    f0, r27, r0
    fsubs   f0, f0, f28
    fsubs   f0, f0, f30
    fadds   f1, f29, f0
    bl      fmodf__3stdFff
    fadds   f0, f30, f1
    fabs    f0, f0
    fcmpo   cr0, f0, f27
    bge-    branch_0x801f9948
    mr      r30, r29
    fmr     f27, f0
branch_0x801f9948:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x5
    addi    r31, r31, 0x4
    blt+    branch_0x801f9914
    fcmpo   cr0, f27, f31
    bge-    branch_0x801f9978
    slwi    r0, r30, 2
    add     r3, r27, r0
    lfs     f0, 0x150(r3)
    li      r3, 0x1
    stfs    f0, 0x0(r28)
    b       branch_0x801f997c

branch_0x801f9978:
    li      r3, 0x0
branch_0x801f997c:
    lmw     r27, 0x10c(sp)
    lwz     r0, 0x14c(sp)
    lfd     f31, 0x140(sp)
    lfd     f30, 0x138(sp)
    mtlr    r0
    lfd     f29, 0x130(sp)
    lfd     f28, 0x128(sp)
    lfd     f27, 0x120(sp)
    addi    sp, sp, 0x148
    blr


.globl getNextJuncture__8TBathtubCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
getNextJuncture__8TBathtubCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x801f99a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stfd    f30, 0x120(sp)
    stfd    f29, 0x118(sp)
    stfd    f28, 0x110(sp)
    stw     r31, 0x10c(sp)
    stw     r30, 0x108(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x104(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x100(sp)
    mr      r28, r3
    lwz     r12, 0x0(r28)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x20(r3)
    addi    r4, sp, 0xcc
    lfs     f2, 0x10(r3)
    lfs     f0, 0x0(r3)
    stfs    f0, 0xa8(sp)
    stfs    f2, 0xac(sp)
    stfs    f1, 0xb0(sp)
    lfs     f1, 0x28(r3)
    lfs     f2, 0x18(r3)
    lfs     f0, 0x8(r3)
    stfs    f0, 0xb4(sp)
    stfs    f2, 0xb8(sp)
    stfs    f1, 0xbc(sp)
    lfs     f1, 0x2c(r3)
    lfs     f2, 0x1c(r3)
    lfs     f0, 0xc(r3)
    addi    r3, sp, 0xd8
    stfs    f0, 0xc0(sp)
    stfs    f2, 0xc4(sp)
    stfs    f1, 0xc8(sp)
    lfs     f1, 0x0(r30)
    lfs     f0, 0xc0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xcc(sp)
    lfs     f1, 0x4(r30)
    lfs     f0, 0xc4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xd0(sp)
    lfs     f1, 0x8(r30)
    lfs     f0, 0xc8(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, -0x1fac(r2)
    bl      setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f
    lfs     f3, 0xdc(sp)
    lfs     f4, 0x4(r29)
    lfs     f1, 0xd8(sp)
    fmuls   f0, f3, f4
    lfs     f2, 0x0(r29)
    lfs     f5, 0xe0(sp)
    lfs     f6, 0x8(r29)
    fmadds  f0, f1, f2, f0
    fmadds  f0, f5, f6, f0
    fneg    f0, f0
    fmadds  f2, f1, f0, f2
    fmadds  f1, f3, f0, f4
    fmadds  f0, f5, f0, f6
    stfs    f2, 0xe4(sp)
    stfs    f1, 0xe8(sp)
    stfs    f0, 0xec(sp)
    lfs     f1, 0xcc(sp)
    lfs     f0, 0xe4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xcc(sp)
    lfs     f1, 0xd0(sp)
    lfs     f0, 0xe8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xd0(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0xec(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xb8(sp)
    lfs     f4, 0xd0(sp)
    lfs     f0, 0xac(sp)
    fmuls   f2, f1, f4
    lfs     f3, 0xb4(sp)
    fmuls   f0, f0, f4
    lfs     f5, 0xcc(sp)
    lfs     f1, 0xa8(sp)
    fmadds  f3, f3, f5, f2
    lfs     f4, 0xbc(sp)
    fmadds  f0, f1, f5, f0
    lfs     f6, 0xd4(sp)
    lfs     f2, 0xb0(sp)
    fmadds  f1, f4, f6, f3
    fmadds  f2, f2, f6, f0
    bl      matan__Fff
    extsh   r0, r3
    lfs     f28, -0x1f98(r2)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x1f30(r2)
    stw     r0, 0xfc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x1f18(r2)
    fmr     f30, f28
    stw     r0, 0xf8(sp)
    lfs     f31, -0x1f88(r2)
    li      r30, 0x0
    lfd     f1, 0xf8(sp)
    li      r29, 0x0
    fsubs   f1, f1, f2
    li      r31, 0x0
    fmuls   f29, f0, f1
branch_0x801f9b64:
    addi    r0, r31, 0x13c
    fmr     f2, f30
    lfsx    f0, r28, r0
    fsubs   f0, f0, f29
    fsubs   f0, f0, f31
    fadds   f1, f30, f0
    bl      fmodf__3stdFff
    fadds   f0, f31, f1
    fabs    f0, f0
    fcmpo   cr0, f0, f28
    bge-    branch_0x801f9b98
    mr      r30, r29
    fmr     f28, f0
branch_0x801f9b98:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x5
    addi    r31, r31, 0x4
    blt+    branch_0x801f9b64
    slwi    r0, r30, 2
    add     r3, r28, r0
    lfs     f1, 0x13c(r3)
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    lfd     f29, 0x118(sp)
    lfd     f28, 0x110(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    lwz     r29, 0x104(sp)
    lwz     r28, 0x100(sp)
    addi    sp, sp, 0x130
    mtlr    r0
    blr


.globl getNearGrip__8TBathtubCFRCQ29JGeometry8TVec3_f_fPf
getNearGrip__8TBathtubCFRCQ29JGeometry8TVec3_f_fPf: # 0x801f9be4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    fmr     f31, f1
    stfd    f30, 0x108(sp)
    stfd    f29, 0x100(sp)
    stfd    f28, 0xf8(sp)
    stfd    f27, 0xf0(sp)
    stmw    r27, 0xdc(sp)
    mr      r27, r3
    addi    r29, r4, 0x0
    addi    r28, r5, 0x0
    lwz     r12, 0x0(r27)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x20(r3)
    lfs     f2, 0x10(r3)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x98(sp)
    stfs    f2, 0x9c(sp)
    stfs    f1, 0xa0(sp)
    lfs     f1, 0x28(r3)
    lfs     f2, 0x18(r3)
    lfs     f0, 0x8(r3)
    stfs    f0, 0xa4(sp)
    stfs    f2, 0xa8(sp)
    stfs    f1, 0xac(sp)
    lfs     f1, 0x2c(r3)
    lfs     f2, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0xb0(sp)
    stfs    f2, 0xb4(sp)
    stfs    f1, 0xb8(sp)
    lfs     f1, 0x0(r29)
    lfs     f0, 0xb0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0x4(r29)
    lfs     f0, 0xb4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0x8(r29)
    lfs     f0, 0xb8(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xa8(sp)
    lfs     f4, 0xc0(sp)
    lfs     f0, 0x9c(sp)
    fmuls   f2, f1, f4
    lfs     f3, 0xa4(sp)
    fmuls   f0, f0, f4
    lfs     f5, 0xbc(sp)
    lfs     f1, 0x98(sp)
    fmadds  f3, f3, f5, f2
    lfs     f4, 0xac(sp)
    fmadds  f0, f1, f5, f0
    lfs     f6, 0xc4(sp)
    lfs     f2, 0xa0(sp)
    fmadds  f1, f4, f6, f3
    fmadds  f2, f2, f6, f0
    bl      matan__Fff
    extsh   r0, r3
    lfs     f27, -0x1f98(r2)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x1f30(r2)
    stw     r0, 0xd4(sp)
    lis     r0, 0x4330
    lfs     f0, -0x1f18(r2)
    fmr     f29, f27
    stw     r0, 0xd0(sp)
    lfs     f30, -0x1f88(r2)
    li      r30, 0x0
    lfd     f1, 0xd0(sp)
    li      r29, 0x0
    fsubs   f1, f1, f2
    li      r31, 0x0
    fmuls   f28, f0, f1
branch_0x801f9d20:
    addi    r0, r31, 0x150
    fmr     f2, f29
    lfsx    f0, r27, r0
    fsubs   f0, f0, f28
    fsubs   f0, f0, f30
    fadds   f1, f29, f0
    bl      fmodf__3stdFff
    fadds   f0, f30, f1
    fabs    f0, f0
    fcmpo   cr0, f0, f27
    bge-    branch_0x801f9d54
    mr      r30, r29
    fmr     f27, f0
branch_0x801f9d54:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x5
    addi    r31, r31, 0x4
    blt+    branch_0x801f9d20
    fcmpo   cr0, f27, f31
    bge-    branch_0x801f9d84
    slwi    r0, r30, 2
    add     r3, r27, r0
    lfs     f0, 0x150(r3)
    li      r3, 0x1
    stfs    f0, 0x0(r28)
    b       branch_0x801f9d88

branch_0x801f9d84:
    li      r3, 0x0
branch_0x801f9d88:
    lmw     r27, 0xdc(sp)
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lfd     f30, 0x108(sp)
    mtlr    r0
    lfd     f29, 0x100(sp)
    lfd     f28, 0xf8(sp)
    lfd     f27, 0xf0(sp)
    addi    sp, sp, 0x118
    blr


.globl calcRootMatrix__8TBathtubFv
calcRootMatrix__8TBathtubFv: # 0x801f9db0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801f9e10
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f1, -0x1fb8(r2)
    addi    r31, r3, 0x20
    lfs     f2, 0x34(r30)
    addi    r3, r31, 0x0
    fmr     f3, f1
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    b       branch_0x801f9ecc

branch_0x801f9e10:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f3, 0x1dc(r30)
    lfs     f1, -0x1f28(r2)
    lfs     f6, 0x1e0(r30)
    fmuls   f11, f1, f3
    lfs     f10, 0x1d8(r30)
    lfs     f0, 0x1e4(r30)
    fmuls   f2, f1, f6
    fmuls   f7, f1, f10
    fmuls   f12, f1, f0
    lfs     f1, -0x1fac(r2)
    fmuls   f9, f11, f3
    fmuls   f8, f2, f6
    fmuls   f5, f7, f3
    fmuls   f2, f7, f10
    fsubs   f0, f1, f9
    fmuls   f4, f12, f6
    fmuls   f7, f7, f6
    fsubs   f0, f0, f8
    fsubs   f13, f1, f2
    fmuls   f3, f12, f3
    stfsu   f0, 0x20(r3)
    fsubs   f2, f5, f4
    fadds   f0, f5, f4
    fadds   f1, f7, f3
    stfs    f2, 0x4(r3)
    fmuls   f6, f11, f6
    fmuls   f5, f12, f10
    stfs    f1, 0x8(r3)
    fsubs   f2, f7, f3
    stfs    f0, 0x10(r3)
    fsubs   f4, f13, f8
    fsubs   f3, f6, f5
    fadds   f1, f6, f5
    stfs    f4, 0x14(r3)
    fsubs   f0, f13, f9
    stfs    f3, 0x18(r3)
    stfs    f2, 0x20(r3)
    stfs    f1, 0x24(r3)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r3)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r3)
branch_0x801f9ecc:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl allowsTumble__8TBathtubCFv
allowsTumble__8TBathtubCFv: # 0x801f9ee4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r4, sp, 0x70
    addi    r5, sp, 0x7c
    stw     r30, 0x80(sp)
    mr      r30, r3
    lwz     r7, R13Off_m0x60b4(r13)
    lfs     f1, -0x1f14(r2)
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r6, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x78(sp)
    bl      getNearGrip__8TBathtubCFRCQ29JGeometry8TVec3_f_fPf
    clrlwi. r0, r3, 24
    beq-    branch_0x801fa134
    lfs     f1, 0x74(sp)
    addi    r3, sp, 0x54
    lfs     f0, 0x174(r30)
    lfs     f4, 0x70(sp)
    fsubs   f7, f1, f0
    lfs     f3, 0x170(r30)
    lfs     f2, 0x1a4(r30)
    fsubs   f6, f4, f3
    lfs     f0, 0x18c(r30)
    lfs     f1, 0x198(r30)
    fmuls   f4, f2, f7
    lfs     f5, 0x1a0(r30)
    fmuls   f2, f1, f7
    lfs     f3, 0x194(r30)
    fmadds  f5, f5, f6, f4
    fmuls   f0, f0, f7
    lfs     f1, 0x188(r30)
    fmadds  f2, f3, f6, f2
    lfs     f4, 0x78(sp)
    fmadds  f0, f1, f6, f0
    lfs     f3, 0x178(r30)
    lfs     f1, 0x190(r30)
    fsubs   f6, f4, f3
    lfs     f3, 0x1a8(r30)
    lfs     f4, 0x19c(r30)
    fmadds  f3, f3, f6, f5
    fmadds  f2, f4, f6, f2
    fmadds  f1, f1, f6, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801fa158
    lwz     r0, 0x54(sp)
    lwz     r3, 0x58(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x5c(sp)
    stw     r3, 0x68(sp)
    lfs     f3, -0x1fb8(r2)
    stw     r0, 0x6c(sp)
    stfs    f3, 0x68(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x68(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x6c(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f4, f2, f0
    fcmpo   cr0, f4, f3
    cror    2, 0, 2
    bne-    branch_0x801f9ff4
    b       branch_0x801fa018

branch_0x801f9ff4:
    frsqrte f3, f4
    lfs     f2, -0x1f94(r2)
    lfs     f0, -0x1f1c(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801fa018:
    lfs     f0, -0x1f10(r2)
    fcmpo   cr0, f4, f0
    bge-    branch_0x801fa02c
    li      r3, 0x0
    b       branch_0x801fa138

branch_0x801fa02c:
    lfs     f0, -0x1f0c(r2)
    fcmpo   cr0, f0, f4
    bge-    branch_0x801fa12c
    lfs     f1, 0x198(r30)
    lfs     f0, -0x1f08(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801fa124
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_80394148@h
    addi    r31, r3, unk_80394148@l
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
    mr      r30, r3
    bl      SMS_GetMarioStatus__Fv
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x801fa098
    li      r3, 0x0
    b       branch_0x801fa138

branch_0x801fa098:
    cmplwi  r3, 0x88b
    bne-    branch_0x801fa0a8
    li      r3, 0x0
    b       branch_0x801fa138

branch_0x801fa0a8:
    cmplwi  r3, 0x88d
    bne-    branch_0x801fa0b8
    li      r3, 0x0
    b       branch_0x801fa138

branch_0x801fa0b8:
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r0, 0x3e4(r3)
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x801fa10c
    bl      getCurrentNozzle__9TWaterGunCFv
    mr.     r31, r3
    beq-    branch_0x801fa10c
    mr      r3, r31
    lwz     r12, 0x364(r31)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x801fa10c
    lfs     f1, 0x388(r31)
    lfs     f0, -0x1fb8(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801fa10c
    li      r3, 0x0
    b       branch_0x801fa138

branch_0x801fa10c:
    mr      r3, r30
    bl      countActiveKillers__21TBathtubKillerManagerFv
    neg     r0, r3
    cntlzw  r0, r0
    srwi    r3, r0, 5
    b       branch_0x801fa138

branch_0x801fa124:
    li      r3, 0x0
    b       branch_0x801fa138

branch_0x801fa12c:
    li      r3, 0x1
    b       branch_0x801fa138

branch_0x801fa134:
    li      r3, 0x0
branch_0x801fa138:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl getNozzleKind__14TNozzleTriggerCFv
getNozzleKind__14TNozzleTriggerCFv: # 0x801fa150
    li      r3, 0x1
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_801fa158
set_f___Q29JGeometry8TVec3_f_Ffff_801fa158: # 0x801fa158
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl startDemo__8TBathtubFv
startDemo__8TBathtubFv: # 0x801fa168
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    mr      r30, r3
    stw     r29, 0x84(sp)
    stw     r28, 0x80(sp)
    lbz     r0, 0x29a(r3)
    lis     r3, unk_80393ef8@h
    addi    r31, r3, unk_80393ef8@l
    cmplwi  r0, 0x0
    bne-    branch_0x801fa3e4
    li      r3, 0x7
    li      r4, 0xa
    bl      stopTrackBGMs__5MSBgmFUcUl
    lwz     r0, 0x2a0(r30)
    rlwinm. r0, r0, 0, 26, 26
    bne-    branch_0x801fa1c8
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0x23
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x801fa1c8:
    lwz     r3, 0x2a0(r30)
    li      r0, 0xa
    li      r28, 0x0
    ori     r3, r3, 0x20
    stw     r3, 0x2a0(r30)
    li      r29, 0x0
    stw     r0, 0x290(r30)
branch_0x801fa1e4:
    lwz     r3, 0x168(r30)
    lwzx    r3, r3, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    cmpwi   r28, 0x5
    addi    r29, r29, 0x4
    blt+    branch_0x801fa1e4
    lwz     r3, 0x168(r30)
    li      r5, 0x0
    li      r0, 0x1
    lwz     r29, 0x8(r3)
    li      r4, 0x0
    lwz     r6, 0xf0(r29)
    addi    r3, r29, 0x0
    clrrwi  r6, r6, 1
    stw     r6, 0xf0(r29)
    stb     r5, 0x248(r29)
    stb     r5, 0x24a(r29)
    stb     r0, 0x249(r29)
    stb     r5, 0x24b(r29)
    bl      startAnim__11TMapObjBaseFUs
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x801fa264
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
branch_0x801fa264:
    lfs     f0, -0x1fac(r2)
    li      r4, 0x64
    li      r5, 0x0
    stfs    f0, 0x250(r29)
    li      r3, 0x2
    li      r0, 0x1
    stw     r4, 0x258(r29)
    addi    r4, r31, 0x26c
    stb     r5, 0x260(r29)
    lwz     r6, 0x16c(r30)
    lwz     r5, 0x168(r30)
    lfs     f0, 0x11c(r6)
    lwz     r28, 0x8(r5)
    stw     r3, 0x258(r28)
    stfs    f0, 0x250(r28)
    stw     r0, 0x254(r28)
    lwz     r3, 0x25c(r28)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x25c(r28)
    addi    r4, r31, 0x26c
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x25c(r28)
    addi    r4, r31, 0x26c
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x25c(r28)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr.     r29, r3
    beq-    branch_0x801fa2f0
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, -0x1f04(r2)
    lfs     f0, -0x1f94(r2)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r29)
branch_0x801fa2f0:
    li      r0, 0x1
    stb     r0, 0x248(r28)
    li      r0, 0x0
    addi    r3, r28, 0x0
    stb     r0, 0x249(r28)
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
    lwz     r0, 0xf8(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x27c
    ori     r0, r0, 0x8
    stw     r0, 0xf8(r30)
    lwz     r0, 0xf8(r30)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r30)
    bl      startBck__11TMapObjBaseFPCc
    bl      SMS_GetMarioHitActor__Fv
    mr      r28, r3
    lwz     r12, 0x0(r28)
    addi    r4, r30, 0x0
    li      r5, 0x4
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x801fa35c
    stw     r28, 0x6c(r30)
branch_0x801fa35c:
    lwz     r3, R13Off_m0x60d8(r13)
    li      r4, 0x7fff
    li      r0, 0x0
    sth     r4, 0x96(r3)
    addi    r7, sp, 0x74
    addi    r4, r31, 0x28c
    lwz     r3, R13Off_m0x6048(r13)
    addi    r5, r30, 0x10
    sth     r0, 0x74(sp)
    li      r6, -0x1
    li      r8, 0x0
    stw     r7, 0x8(sp)
    li      r7, 0x0
    li      r9, 0x0
    lfs     f1, 0x34(r30)
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0xe
    bl      fireStreamingMovie__12TMarDirectorFUc
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r2, R2Off_m0x1fb4
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x1fb4
    mtlr    r12
    blrl
    bl      fall__6TKoopaFv
    li      r0, 0x1
    stb     r0, 0x29a(r30)
branch_0x801fa3e4:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl setupCollisions___8TBathtubFv
setupCollisions___8TBathtubFv: # 0x801fa404
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x188(sp)
    stfd    f31, 0x180(sp)
    stfd    f30, 0x178(sp)
    stfd    f29, 0x170(sp)
    stfd    f28, 0x168(sp)
    stfd    f27, 0x160(sp)
    stfd    f26, 0x158(sp)
    stfd    f25, 0x150(sp)
    stfd    f24, 0x148(sp)
    stfd    f23, 0x140(sp)
    stfd    f22, 0x138(sp)
    stfd    f21, 0x130(sp)
    stfd    f20, 0x128(sp)
    stfd    f19, 0x120(sp)
    stfd    f18, 0x118(sp)
    stfd    f17, 0x110(sp)
    stfd    f16, 0x108(sp)
    stmw    r26, 0xf0(sp)
    mr      r28, r3
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f1, 0x174(r3)
    lfs     f2, 0x4(r4)
    lfs     f0, -0x1f00(r2)
    fsubs   f7, f2, f1
    lfs     f1, 0x1a4(r3)
    fcmpo   cr0, f2, f0
    lfs     f3, 0x0(r4)
    lfs     f0, 0x170(r3)
    fsubs   f6, f3, f0
    lfs     f2, 0x18c(r3)
    fmuls   f0, f1, f7
    lfs     f1, 0x1a0(r3)
    lfs     f5, 0x8(r4)
    lfs     f4, 0x178(r3)
    fmadds  f0, f1, f6, f0
    fmuls   f2, f2, f7
    lfs     f3, 0x188(r3)
    fsubs   f5, f5, f4
    lfs     f1, 0x1a8(r3)
    fmadds  f2, f3, f6, f2
    fmadds  f4, f1, f5, f0
    lfs     f3, 0x190(r3)
    fmadds  f1, f3, f5, f2
    fmuls   f0, f4, f4
    fmr     f2, f4
    fmadds  f3, f1, f1, f0
    blt-    branch_0x801fa4d4
    lfs     f0, -0x1efc(r2)
    fcmpo   cr0, f3, f0
    bge-    branch_0x801fa548
branch_0x801fa4d4:
    li      r26, 0x0
    li      r29, 0x0
branch_0x801fa4dc:
    lwz     r3, 0x164(r28)
    lwzx    r3, r3, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
    cmpwi   r26, 0x1e
    addi    r29, r29, 0x4
    blt+    branch_0x801fa4dc
    lwz     r3, 0x168(r28)
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    stb     r0, 0x24b(r3)
    lwz     r3, 0x168(r28)
    lwz     r3, 0x4(r3)
    stb     r0, 0x24b(r3)
    lwz     r3, 0x168(r28)
    lwz     r3, 0x8(r3)
    stb     r0, 0x24b(r3)
    lwz     r3, 0x168(r28)
    lwz     r3, 0xc(r3)
    stb     r0, 0x24b(r3)
    lwz     r3, 0x168(r28)
    lwz     r3, 0x10(r3)
    stb     r0, 0x24b(r3)
    b       branch_0x801fa844

branch_0x801fa548:
    bl      atan2f
    fmr     f31, f1
    lfs     f0, -0x1fb8(r2)
    fcmpo   cr0, f31, f0
    bge-    branch_0x801fa564
    lfs     f0, -0x1ef8(r2)
    fadds   f31, f31, f0
branch_0x801fa564:
    lfs     f1, -0x1ef4(r2)
    lfs     f0, -0x1fb8(r2)
    fmuls   f1, f31, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801fa580
    lfs     f0, -0x1ef0(r2)
    fadds   f1, f1, f0
branch_0x801fa580:
    lfs     f0, -0x1f94(r2)
    lis     r3, unk_88888889@ha
    lfs     f24, -0x1fac(r2)
    addi    r31, r3, unk_88888889@l
    fadds   f0, f0, f1
    lfd     f25, -0x1f30(r2)
    li      r29, 0x0
    lfs     f26, -0x1ef8(r2)
    lis     r27, 0x4330
    fsubs   f0, f0, f24
    lfs     f27, -0x1ef0(r2)
    lfs     f28, -0x1eec(r2)
    lfs     f22, -0x1fb8(r2)
    fctiwz  f0, f0
    stfd    f0, 0xe8(sp)
    lwz     r3, 0xec(sp)
    addi    r4, r3, 0x1e
    mulhw   r0, r31, r4
    add     r0, r0, r4
    srawi   r0, r0, 4
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x1e
    subf    r30, r0, r4
branch_0x801fa5e0:
    add     r4, r29, r30
    mulhw   r0, r31, r4
    add     r0, r0, r4
    srawi   r0, r0, 4
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x1e
    subf    r26, r0, r4
    addi    r0, r26, 0x1
    xoris   r0, r0, 0x8000
    stw     r0, 0xec(sp)
    stw     r27, 0xe8(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f0, f0, f25
    fmuls   f0, f0, f26
    fdivs   f0, f0, f27
    fsubs   f16, f0, f28
    fmr     f1, f16
    bl      sinf
    fmr     f29, f1
    fmr     f1, f16
    bl      cosf
    fmr     f30, f1
    mr      r3, r28
    fneg    f23, f29
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x20
    lfs     f0, 0x44(r3)
    addi    r3, sp, 0x74
    lfs     f9, 0x14(r4)
    fmuls   f4, f0, f22
    lfs     f6, 0x20(r4)
    lfs     f8, 0x4(r4)
    fmuls   f0, f0, f24
    lfs     f2, 0x28(r4)
    fmadds  f16, f6, f30, f4
    lfs     f3, 0x10(r4)
    fmuls   f12, f9, f22
    lfs     f5, 0x0(r4)
    fmuls   f21, f8, f22
    fmadds  f17, f6, f22, f0
    lfs     f1, 0x2c(r4)
    fmadds  f0, f6, f22, f4
    lfs     f7, 0x18(r4)
    fmadds  f18, f6, f29, f4
    fmuls   f13, f8, f24
    lfs     f8, 0x1c(r4)
    fmuls   f10, f9, f24
    lfs     f6, 0x8(r4)
    fmadds  f11, f5, f22, f21
    fmadds  f9, f3, f22, f12
    lfs     f4, 0xc(r4)
    fmadds  f16, f2, f23, f16
    fmadds  f0, f2, f22, f0
    fmadds  f19, f5, f30, f21
    fmadds  f20, f5, f22, f13
    stfs    f16, 0x8(sp)
    fmadds  f17, f2, f22, f17
    fmadds  f21, f5, f29, f21
    fmadds  f13, f6, f22, f11
    fmadds  f5, f3, f30, f12
    stfs    f17, 0xc(sp)
    fmadds  f2, f2, f30, f18
    fmadds  f11, f3, f22, f10
    fmadds  f10, f3, f29, f12
    fmadds  f9, f7, f22, f9
    stfs    f2, 0x10(sp)
    fadds   f0, f1, f0
    fmadds  f1, f6, f23, f19
    fmadds  f2, f6, f22, f20
    fmadds  f3, f6, f30, f21
    stfs    f0, 0x14(sp)
    fadds   f4, f4, f13
    fmadds  f5, f7, f23, f5
    fmadds  f6, f7, f22, f11
    fmadds  f7, f7, f30, f10
    fadds   f8, f8, f9
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    lwz     r3, 0x164(r28)
    slwi    r26, r26, 2
    addi    r4, sp, 0x74
    lwzx    r3, r3, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x164(r28)
    lwzx    r3, r3, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    blt+    branch_0x801fa5e0
    lis     r3, unk_88888889@ha
    addi    r31, r3, unk_88888889@l
    b       branch_0x801fa7a8

branch_0x801fa768:
    add     r5, r29, r30
    lwz     r3, 0x164(r28)
    mulhw   r0, r31, r5
    add     r0, r0, r5
    srawi   r0, r0, 4
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0x1e
    subf    r0, r0, r5
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
branch_0x801fa7a8:
    cmpwi   r29, 0x1e
    blt+    branch_0x801fa768
    lwz     r4, 0x168(r28)
    lis     r3, unk_66666667@h
    li      r5, 0x0
    lwz     r4, 0x0(r4)
    addi    r0, r3, unk_66666667@l
    li      r6, 0x1
    stb     r5, 0x24b(r4)
    lwz     r3, 0x168(r28)
    lwz     r3, 0x4(r3)
    stb     r5, 0x24b(r3)
    lwz     r3, 0x168(r28)
    lwz     r3, 0x8(r3)
    stb     r5, 0x24b(r3)
    lwz     r3, 0x168(r28)
    lwz     r3, 0xc(r3)
    stb     r5, 0x24b(r3)
    lwz     r3, 0x168(r28)
    lwz     r3, 0x10(r3)
    stb     r5, 0x24b(r3)
    lfs     f1, -0x1f90(r2)
    lfs     f0, -0x1ef8(r2)
    fmuls   f1, f1, f31
    lwz     r5, 0x168(r28)
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xe8(sp)
    lwz     r3, 0xec(sp)
    addi    r4, r3, 0xa
    mulhw   r0, r0, r4
    srawi   r0, r0, 1
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x5
    subf    r0, r0, r4
    slwi    r0, r0, 2
    lwzx    r3, r5, r0
    stb     r6, 0x24b(r3)
branch_0x801fa844:
    lmw     r26, 0xf0(sp)
    lwz     r0, 0x18c(sp)
    lfd     f31, 0x180(sp)
    lfd     f30, 0x178(sp)
    mtlr    r0
    lfd     f29, 0x170(sp)
    lfd     f28, 0x168(sp)
    lfd     f27, 0x160(sp)
    lfd     f26, 0x158(sp)
    lfd     f25, 0x150(sp)
    lfd     f24, 0x148(sp)
    lfd     f23, 0x140(sp)
    lfd     f22, 0x138(sp)
    lfd     f21, 0x130(sp)
    lfd     f20, 0x128(sp)
    lfd     f19, 0x120(sp)
    lfd     f18, 0x118(sp)
    lfd     f17, 0x110(sp)
    lfd     f16, 0x108(sp)
    addi    sp, sp, 0x188
    blr


.globl calcBathtubData__8TBathtubFv
calcBathtubData__8TBathtubFv: # 0x801fa898
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stfd    f31, 0x148(sp)
    stfd    f30, 0x140(sp)
    stfd    f29, 0x138(sp)
    stfd    f28, 0x130(sp)
    stfd    f27, 0x128(sp)
    stw     r31, 0x124(sp)
    mr      r31, r3
    stw     r30, 0x120(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x20(r3)
    lfs     f2, 0x10(r3)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x188(r31)
    stfs    f2, 0x18c(r31)
    stfs    f1, 0x190(r31)
    lfs     f1, 0x24(r3)
    lfs     f2, 0x14(r3)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x194(r31)
    stfs    f2, 0x198(r31)
    stfs    f1, 0x19c(r31)
    lfs     f1, 0x28(r3)
    lfs     f2, 0x18(r3)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x1a0(r31)
    stfs    f2, 0x1a4(r31)
    stfs    f1, 0x1a8(r31)
    lfs     f1, 0x2c(r3)
    lfs     f2, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x170(r31)
    stfs    f2, 0x174(r31)
    stfs    f1, 0x178(r31)
    lfs     f2, 0x198(r31)
    lfs     f1, -0x1fac(r2)
    lfs     f0, -0x1fb8(r2)
    fnmsubs  f4, f2, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801fa954
    b       branch_0x801fa978

branch_0x801fa954:
    frsqrte f3, f4
    lfs     f2, -0x1f94(r2)
    lfs     f0, -0x1f1c(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801fa978:
    lwz     r3, 0x16c(r31)
    lfs     f1, 0x180(r3)
    fcmpo   cr0, f1, f4
    cror    2, 1, 2
    bne-    branch_0x801fa990
    b       branch_0x801fa994

branch_0x801fa990:
    fmr     f1, f4
branch_0x801fa994:
    lfs     f0, 0x1ac(r31)
    addi    r3, r2, R2Off_m0x1fb4
    fmuls   f0, f0, f1
    stfs    f0, 0x1b4(r31)
    lwz     r4, 0x16c(r31)
    lfs     f0, 0x20c(r4)
    stfs    f0, 0x1b8(r31)
    lfs     f0, 0x194(r31)
    stfs    f0, 0x17c(r31)
    lfs     f0, 0x198(r31)
    stfs    f0, 0x180(r31)
    lfs     f0, 0x19c(r31)
    stfs    f0, 0x184(r31)
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0x1d0(r31)
    stfs    f0, 0x1cc(r31)
    stfs    f0, 0x1c8(r31)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x1fb4
    mtlr    r12
    blrl
    bl      effectsTumble__6TKoopaCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801faa18
    lwz     r0, 0x24c(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801fab98
branch_0x801faa18:
    lfs     f3, 0x184(r31)
    lfs     f31, -0x1fb8(r2)
    lfs     f0, 0x180(r31)
    fmuls   f1, f31, f3
    lfs     f4, 0x17c(r31)
    fmuls   f5, f31, f0
    lfs     f2, -0x1fac(r2)
    lfs     f0, -0x1f24(r2)
    fmsubs  f29, f31, f4, f1
    fmsubs  f30, f2, f3, f5
    fnmsubs  f28, f2, f4, f5
    fmuls   f1, f29, f29
    fmadds  f1, f30, f30, f1
    fmadds  f1, f28, f28, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801faa68
    fmr     f29, f31
    fmr     f27, f29
    b       branch_0x801faa80

branch_0x801faa68:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x1fac(r2)
    fmuls   f0, f0, f1
    fmuls   f27, f30, f0
    fmuls   f29, f29, f0
    fmuls   f31, f28, f0
branch_0x801faa80:
    fmuls   f1, f29, f29
    lfs     f0, -0x1f24(r2)
    fmadds  f1, f27, f27, f1
    fmadds  f1, f31, f31, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x801fabac
    lwz     r3, 0x16c(r31)
    lfs     f1, -0x1ef8(r2)
    lfs     f2, 0x194(r3)
    lfs     f0, -0x1f98(r2)
    fmuls   f1, f2, f1
    lfs     f2, -0x1f94(r2)
    fdivs   f0, f1, f0
    fmuls   f30, f2, f0
    fmr     f1, f30
    bl      sinf
    fmuls   f0, f27, f1
    fmuls   f2, f29, f1
    stfs    f0, 0xf0(sp)
    fmuls   f0, f31, f1
    fmr     f1, f30
    stfs    f2, 0xf4(sp)
    stfs    f0, 0xf8(sp)
    bl      cosf
    stfs    f1, 0xfc(sp)
    lfs     f9, 0xf8(sp)
    lfs     f8, 0x17c(r31)
    lfs     f5, 0xf0(sp)
    fneg    f0, f9
    lfs     f6, 0x180(r31)
    fmuls   f1, f9, f8
    fneg    f13, f5
    lfs     f10, 0x184(r31)
    fmuls   f3, f9, f6
    lfs     f12, 0xf4(sp)
    fmadds  f2, f13, f10, f1
    lfs     f11, 0xfc(sp)
    fmuls   f1, f12, f8
    fmsubs  f4, f12, f10, f3
    fmadds  f7, f11, f6, f2
    fmsubs  f5, f5, f6, f1
    fmuls   f3, f12, f6
    fmadds  f6, f11, f8, f4
    fmuls   f2, f7, f0
    fmsubs  f4, f13, f8, f3
    fmuls   f1, f7, f11
    fmadds  f5, f11, f10, f5
    fneg    f8, f12
    fmadds  f2, f6, f11, f2
    fmuls   f3, f7, f13
    fmadds  f1, f6, f9, f1
    fnmsubs  f4, f9, f10, f4
    fnmsubs  f2, f5, f8, f2
    fmsubs  f3, f6, f8, f3
    fmadds  f1, f5, f13, f1
    fmadds  f2, f4, f13, f2
    fmadds  f3, f5, f11, f3
    fmadds  f1, f4, f8, f1
    stfs    f2, 0x17c(r31)
    fmadds  f0, f4, f0, f3
    stfs    f1, 0x180(r31)
    stfs    f0, 0x184(r31)
    lwz     r3, 0x16c(r31)
    lfs     f0, -0x1fb8(r2)
    lfs     f1, 0x16c(r3)
    stfs    f0, 0x1c8(r31)
    stfs    f1, 0x1cc(r31)
    stfs    f0, 0x1d0(r31)
    b       branch_0x801fabac

branch_0x801fab98:
    lfs     f1, -0x1fb8(r2)
    stfs    f1, 0x17c(r31)
    lfs     f0, -0x1fac(r2)
    stfs    f0, 0x180(r31)
    stfs    f1, 0x184(r31)
branch_0x801fabac:
    lwz     r0, 0x254(r31)
    lwz     r3, 0x250(r31)
    srawi   r0, r0, 1
    addze   r0, r0
    cmpw    r3, r0
    bge-    branch_0x801fabdc
    lwz     r0, 0x258(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801fabdc
    li      r0, 0x1
    stb     r0, 0x1d4(r31)
    b       branch_0x801fabe4

branch_0x801fabdc:
    li      r0, 0x0
    stb     r0, 0x1d4(r31)
branch_0x801fabe4:
    lbz     r0, 0x29a(r31)
    addi    r3, sp, 0xe4
    stb     r0, 0x1d5(r31)
    lfs     f1, 0x174(r31)
    lfs     f0, 0x1b4(r31)
    lfs     f3, 0x178(r31)
    fsubs   f2, f1, f0
    lfs     f1, 0x170(r31)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801fa158
    lwz     r3, 0xe4(sp)
    lwz     r0, 0xe8(sp)
    stw     r3, 0x1f4(r31)
    stw     r0, 0x1f8(r31)
    lwz     r0, 0xec(sp)
    stw     r0, 0x1fc(r31)
    lwz     r0, 0x154(sp)
    lfd     f31, 0x148(sp)
    lfd     f30, 0x140(sp)
    lfd     f29, 0x138(sp)
    lfd     f28, 0x130(sp)
    lfd     f27, 0x128(sp)
    lwz     r31, 0x124(sp)
    lwz     r30, 0x120(sp)
    addi    sp, sp, 0x150
    mtlr    r0
    blr


.globl control__8TBathtubFv
control__8TBathtubFv: # 0x801fac4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stw     r31, 0x13c(sp)
    mr      r31, r3
    stw     r30, 0x138(sp)
    stw     r29, 0x134(sp)
    lbz     r0, 0x29a(r3)
    lis     r3, yDown_3084@ha
    addi    r30, r3, yDown_3084@l
    cmplwi  r0, 0x0
    beq-    branch_0x801fae7c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801facdc
    lwz     r3, 0x294(r31)
    addi    r0, r3, 0x1
    cmpwi   r3, 0x1
    stw     r0, 0x294(r31)
    beq-    branch_0x801faccc
    bge-    branch_0x801facdc
    cmpwi   r3, 0x0
    bge-    branch_0x801facb8
    b       branch_0x801facdc

branch_0x801facb8:
    lis     r3, unk_80394190@h
    addi    r4, r3, unk_80394190@l
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    b       branch_0x801facdc

branch_0x801faccc:
    lis     r3, unk_803941a0@h
    addi    r4, r3, unk_803941a0@l
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
branch_0x801facdc:
    lwz     r3, 0x29c(r31)
    mr      r7, r31
    lwz     r0, 0x268(r31)
    li      r4, 0x128
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801fad2c
    lfs     f0, -0x1f1c(r2)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x801fad2c:
    lwz     r3, 0x29c(r31)
    mr      r7, r31
    lwz     r0, 0x268(r31)
    li      r4, 0x129
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801fad7c
    lfs     f0, -0x1f1c(r2)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x801fad7c:
    lwz     r3, 0x74(r31)
    lis     r30, unk_000081c1@ha
    lwz     r0, 0x264(r31)
    addi    r4, r30, unk_000081c1@l
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f1, 0x2c(r3)
    lfs     f2, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x200(r31)
    stfs    f2, 0x204(r31)
    stfs    f1, 0x208(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801fade0
    addi    r3, r30, -0x7e3f
    addi    r4, r31, 0x200
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801fade0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      calcBathtubData__8TBathtubFv
    li      r29, 0x0
    addi    r30, r29, 0x0
branch_0x801fae04:
    lwz     r3, 0x164(r31)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x1e
    addi    r30, r30, 0x4
    blt+    branch_0x801fae04
    bl      SMS_GetMarioHitActor__Fv
    mr      r29, r3
    lwz     r12, 0x0(r29)
    addi    r4, r31, 0x0
    li      r5, 0x4
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x801fae58
    stw     r29, 0x6c(r31)
branch_0x801fae58:
    lwz     r3, R13Off_m0x60d8(r13)
    li      r0, 0x7fff
    sth     r0, 0x96(r3)
    lwz     r3, 0x290(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x801fb0dc
    addi    r0, r3, -0x1
    stw     r0, 0x290(r31)
    b       branch_0x801fb0dc

branch_0x801fae7c:
    lwz     r3, 0x24c(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x801fae90
    addi    r0, r3, -0x1
    stw     r0, 0x24c(r31)
branch_0x801fae90:
    lwz     r3, 0x248(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x801faea4
    addi    r0, r3, -0x1
    stw     r0, 0x248(r31)
branch_0x801faea4:
    lwz     r3, 0x16c(r31)
    lwz     r4, 0x250(r31)
    lwz     r0, 0x7c(r3)
    cmpw    r4, r0
    bgt-    branch_0x801faed4
    mr      r3, r31
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801fafac
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801fafac
branch_0x801faed4:
    lwz     r0, 0x250(r31)
    lwz     r5, 0x16c(r31)
    cmpwi   r0, 0x0
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f3, 0x1e4(r5)
    ble-    branch_0x801faef4
    lfs     f0, 0x1f8(r5)
    fadds   f3, f3, f0
branch_0x801faef4:
    lfs     f0, -0x1ee8(r2)
    fcmpo   cr0, f3, f0
    cror    2, 0, 2
    beq-    branch_0x801fafac
    lbz     r0, R13Off_m0x6228(r13)
    extsb.  r0, r0
    bne-    branch_0x801faf2c
    lfs     f1, -0x1fb8(r2)
    li      r0, 0x1
    stfs    f1, 0x0(r30)
    lfs     f0, -0x1ee4(r2)
    stfs    f0, 0x4(r30)
    stfs    f1, 0x8(r30)
    stb     r0, R13Off_m0x6228(r13)
branch_0x801faf2c:
    lfs     f2, 0x8(r3)
    lfs     f1, 0x18(r31)
    lfs     f0, -0x1ee0(r2)
    fsubs   f6, f2, f1
    lfs     f8, 0x4(r30)
    lfs     f1, 0x4(r3)
    fmuls   f3, f0, f3
    lfs     f0, 0x14(r31)
    fsubs   f5, f1, f0
    lfs     f9, 0x8(r30)
    fmuls   f0, f6, f8
    lfs     f2, 0x0(r3)
    lfs     f1, 0x10(r31)
    fmsubs  f10, f5, f9, f0
    lfs     f7, 0x0(r30)
    fsubs   f4, f2, f1
    lfs     f0, 0x1e8(r31)
    fmuls   f2, f5, f7
    fmuls   f10, f10, f3
    fmuls   f1, f4, f9
    fmsubs  f2, f4, f8, f2
    fadds   f0, f0, f10
    fmsubs  f1, f6, f7, f1
    fmuls   f2, f2, f3
    stfs    f0, 0x1e8(r31)
    fmuls   f1, f1, f3
    lfs     f0, 0x1ec(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x1ec(r31)
    lfs     f0, 0x1f0(r31)
    fadds   f0, f0, f2
    stfs    f0, 0x1f0(r31)
branch_0x801fafac:
    mr      r3, r31
    bl      updatePosture___8TBathtubFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      control__11TMapObjBaseFv
    mr      r3, r31
    bl      calcBathtubData__8TBathtubFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x180(r31)
    lfs     f0, 0x198(r31)
    lfs     f2, 0x17c(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x194(r31)
    lfs     f4, 0x184(r31)
    lfs     f3, 0x19c(r31)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x1edc(r2)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801fb038
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x1f4
    li      r4, 0x1be
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801fb038:
    li      r29, 0x0
    li      r30, 0x0
branch_0x801fb040:
    lwz     r3, 0x168(r31)
    lwzx    r3, r3, r30
    lbz     r0, 0x248(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801fb084
    addi    r0, r30, 0x27c
    lwz     r3, 0x74(r31)
    lwzx    r0, r31, r0
    li      r4, 0x1bf
    lwz     r3, 0x4(r3)
    li      r6, 0x1
    mulli   r5, r0, 0x30
    lwz     r0, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r7, r0, r5
    addi    r5, r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x801fb084:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x5
    addi    r30, r30, 0x4
    blt+    branch_0x801fb040
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb0ac
    mr      r3, r31
    bl      setupCollisions___8TBathtubFv
    b       branch_0x801fb0dc

branch_0x801fb0ac:
    li      r29, 0x0
    li      r30, 0x0
branch_0x801fb0b4:
    lwz     r3, 0x164(r31)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x1e
    addi    r30, r30, 0x4
    blt+    branch_0x801fb0b4
branch_0x801fb0dc:
    lwz     r0, 0x144(sp)
    lwz     r31, 0x13c(sp)
    lwz     r30, 0x138(sp)
    mtlr    r0
    lwz     r29, 0x134(sp)
    addi    sp, sp, 0x140
    blr


.globl perform__8TBathtubFUlPQ26JDrama9TGraphics
perform__8TBathtubFUlPQ26JDrama9TGraphics: # 0x801fb0f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stw     r31, 0x164(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x160(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x15c(sp)
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    clrlwi. r29, r31, 31
    beq-    branch_0x801fb17c
    lwz     r3, 0x74(r30)
    lwz     r0, 0x264(r30)
    lwz     r4, 0x29c(r30)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x4(r4)
    lwz     r3, 0x58(r3)
    addi    r4, r4, 0x20
    add     r3, r3, r0
    bl      PSMTXCopy
    lfs     f0, -0x1f1c(r2)
    stfs    f0, 0x13c(sp)
    stfs    f0, 0x140(sp)
    stfs    f0, 0x144(sp)
    lwz     r4, 0x29c(r30)
    lwz     r3, 0x13c(sp)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x140(sp)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x144(sp)
    stw     r0, 0x1c(r4)
branch_0x801fb17c:
    cmplwi  r29, 0x0
    beq-    branch_0x801fb37c
    lwz     r3, 0x168(r30)
    li      r4, 0x0
    lwz     r6, R13Off_m0x6048(r13)
    lwz     r3, 0x0(r3)
    lwz     r5, 0x58(r6)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb1a8
    li      r4, 0x1
branch_0x801fb1a8:
    lwz     r3, 0x168(r30)
    lwz     r3, 0x4(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb1c0
    addi    r4, r4, 0x1
branch_0x801fb1c0:
    lwz     r3, 0x168(r30)
    lwz     r3, 0x8(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb1d8
    addi    r4, r4, 0x1
branch_0x801fb1d8:
    lwz     r3, 0x168(r30)
    lwz     r3, 0xc(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb1f0
    addi    r4, r4, 0x1
branch_0x801fb1f0:
    lwz     r3, 0x168(r30)
    lwz     r3, 0x10(r3)
    lbz     r0, 0x249(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb208
    addi    r4, r4, 0x1
branch_0x801fb208:
    cmpwi   r4, 0x3
    beq-    branch_0x801fb2fc
    bge-    branch_0x801fb22c
    cmpwi   r4, 0x1
    beq-    branch_0x801fb2a4
    bge-    branch_0x801fb2d0
    cmpwi   r4, 0x0
    bge-    branch_0x801fb23c
    b       branch_0x801fb37c

branch_0x801fb22c:
    cmpwi   r4, 0x5
    beq-    branch_0x801fb354
    bge-    branch_0x801fb37c
    b       branch_0x801fb328

branch_0x801fb23c:
    cmpwi   r5, 0x1c20
    blt-    branch_0x801fb270
    lwz     r0, 0x2a0(r30)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x801fb260
    lwz     r3, 0x74(r6)
    li      r4, 0x1f
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x801fb260:
    lwz     r0, 0x2a0(r30)
    ori     r0, r0, 0x2
    stw     r0, 0x2a0(r30)
    b       branch_0x801fb37c

branch_0x801fb270:
    cmpwi   r5, 0xe10
    blt-    branch_0x801fb37c
    lwz     r0, 0x2a0(r30)
    clrlwi. r0, r0, 31
    bne-    branch_0x801fb294
    lwz     r3, 0x74(r6)
    li      r4, 0x1e
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x801fb294:
    lwz     r0, 0x2a0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x2a0(r30)
    b       branch_0x801fb37c

branch_0x801fb2a4:
    lwz     r0, 0x2a0(r30)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x801fb2c0
    lwz     r3, 0x74(r6)
    li      r4, 0x20
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x801fb2c0:
    lwz     r0, 0x2a0(r30)
    ori     r0, r0, 0x4
    stw     r0, 0x2a0(r30)
    b       branch_0x801fb37c

branch_0x801fb2d0:
    lwz     r0, 0x2a0(r30)
    rlwinm. r0, r0, 0, 28, 28
    bne-    branch_0x801fb2ec
    lwz     r3, 0x74(r6)
    li      r4, 0x21
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x801fb2ec:
    lwz     r0, 0x2a0(r30)
    ori     r0, r0, 0x8
    stw     r0, 0x2a0(r30)
    b       branch_0x801fb37c

branch_0x801fb2fc:
    lwz     r0, 0x2a0(r30)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x801fb318
    lwz     r3, 0x74(r6)
    li      r4, 0x22
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x801fb318:
    lwz     r0, 0x2a0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0x2a0(r30)
    b       branch_0x801fb37c

branch_0x801fb328:
    lwz     r0, 0x2a0(r30)
    rlwinm. r0, r0, 0, 16, 16
    bne-    branch_0x801fb344
    lwz     r3, 0x74(r6)
    li      r4, 0x2d
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x801fb344:
    lwz     r0, 0x2a0(r30)
    ori     r0, r0, 0x8000
    stw     r0, 0x2a0(r30)
    b       branch_0x801fb37c

branch_0x801fb354:
    lwz     r0, 0x2a0(r30)
    rlwinm. r0, r0, 0, 26, 26
    bne-    branch_0x801fb370
    lwz     r3, 0x74(r6)
    li      r4, 0x23
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x801fb370:
    lwz     r0, 0x2a0(r30)
    ori     r0, r0, 0x20
    stw     r0, 0x2a0(r30)
branch_0x801fb37c:
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x801fb38c
    lwz     r3, 0x29c(r30)
    bl      calc__6MActorFv
branch_0x801fb38c:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x801fb39c
    lwz     r3, 0x29c(r30)
    bl      viewCalc__6MActorFv
branch_0x801fb39c:
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x801fb3e0
    lwz     r3, 0x29c(r30)
    addi    r5, sp, 0x148
    lwz     r3, 0x4(r3)
    addi    r3, r3, 0x20
    lfs     f1, 0x2c(r3)
    lfs     f2, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x148(sp)
    stfs    f2, 0x14c(sp)
    stfs    f1, 0x150(sp)
    lwz     r3, 0x29c(r30)
    lwz     r4, 0xc4(r30)
    bl      setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x29c(r30)
    bl      entry__6MActorFv
branch_0x801fb3e0:
    lwz     r0, 0x16c(sp)
    lwz     r31, 0x164(sp)
    lwz     r30, 0x160(sp)
    mtlr    r0
    lwz     r29, 0x15c(sp)
    addi    sp, sp, 0x168
    blr


.globl getRootJointMtx__8TBathtubCFv
getRootJointMtx__8TBathtubCFv: # 0x801fb3fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801fb420
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    b       branch_0x801fb428

branch_0x801fb420:
    bl      getModel__10TLiveActorCFv
    addi    r3, r3, 0x20
branch_0x801fb428:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__8TBathtubFP9THitActorUl
receiveMessage__8TBathtubFP9THitActorUl: # 0x801fb438
    mflr    r0
    cmpwi   r5, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    beq-    branch_0x801fb4e4
    bge-    branch_0x801fb460
    cmpwi   r5, 0x0
    beq-    branch_0x801fb48c
    bge-    branch_0x801fb46c
    b       branch_0x801fb4e4

branch_0x801fb460:
    cmpwi   r5, 0x4
    bge-    branch_0x801fb4e4
    b       branch_0x801fb47c

branch_0x801fb46c:
    lwz     r4, R13Off_m0x60b4(r13)
    bl      hipdrop__8TBathtubFRCQ29JGeometry8TVec3_f_
    li      r3, 0x1
    b       branch_0x801fb4e8

branch_0x801fb47c:
    lwz     r4, R13Off_m0x60b4(r13)
    bl      hipdrop__8TBathtubFRCQ29JGeometry8TVec3_f_
    li      r3, 0x1
    b       branch_0x801fb4e8

branch_0x801fb48c:
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb4dc
    lwz     r4, 0x16c(r3)
    lwz     r0, 0x250(r3)
    addi    r5, r4, 0x2c
    lwz     r4, 0x2c(r4)
    cmpw    r0, r4
    bgt-    branch_0x801fb4dc
    lwz     r0, 0x0(r5)
    stw     r0, 0x250(r3)
    lwz     r4, 0x16c(r3)
    lwz     r0, 0x40(r4)
    stw     r0, 0x258(r3)
    lwz     r4, 0x16c(r3)
    lwz     r0, 0x40(r4)
    stw     r0, 0x25c(r3)
    lwz     r4, 0x16c(r3)
    lwz     r0, 0x7c(r4)
    stw     r0, 0x254(r3)
branch_0x801fb4dc:
    li      r3, 0x1
    b       branch_0x801fb4e8

branch_0x801fb4e4:
    li      r3, 0x0
branch_0x801fb4e8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getKoopaJrMtxInDemo__8TBathtubFv
getKoopaJrMtxInDemo__8TBathtubFv: # 0x801fb4f8
    lwz     r4, 0x74(r3)
    lwz     r0, 0x274(r3)
    lwz     r3, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    blr


.globl getPeachMtxInDemo__8TBathtubFv
getPeachMtxInDemo__8TBathtubFv: # 0x801fb514
    lwz     r4, 0x74(r3)
    lwz     r0, 0x270(r3)
    lwz     r3, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    blr


.globl getSubmarineMtxInDemo__8TBathtubFv
getSubmarineMtxInDemo__8TBathtubFv: # 0x801fb530
    lwz     r4, 0x74(r3)
    lwz     r0, 0x26c(r3)
    lwz     r3, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    blr


.globl getTakingMtx__8TBathtubFv
getTakingMtx__8TBathtubFv: # 0x801fb54c
    lwz     r4, 0x74(r3)
    lwz     r0, 0x260(r3)
    lwz     r3, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    blr


.globl tumble__8TBathtubFff
tumble__8TBathtubFff: # 0x801fb568
    stwu    sp, -0x40(sp)
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb5e8
    lfs     f0, -0x1ed4(r2)
    lfs     f3, -0x1ed8(r2)
    fmuls   f0, f0, f1
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r4, R13Off_m0x5ea4(r13)
    fmuls   f3, f2, f3
    lfs     f1, 0x1e8(r3)
    fctiwz  f0, f0
    lwz     r6, R13Off_m0x5ea8(r13)
    stfd    f0, 0x38(sp)
    lwz     r5, 0x3c(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    lfsx    f2, r6, r0
    fmuls   f0, f3, f0
    fneg    f2, f2
    fadds   f0, f1, f0
    fmuls   f2, f3, f2
    stfs    f0, 0x1e8(r3)
    lfs     f1, 0x1ec(r3)
    lfs     f0, -0x1fb8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x1ec(r3)
    lfs     f0, 0x1f0(r3)
    fadds   f0, f0, f2
    stfs    f0, 0x1f0(r3)
branch_0x801fb5e8:
    addi    sp, sp, 0x40
    blr


.globl getNumGripsDead__8TBathtubCFv
getNumGripsDead__8TBathtubCFv: # 0x801fb5f0
    lwz     r4, 0x168(r3)
    li      r5, 0x0
    lwz     r4, 0x0(r4)
    lbz     r0, 0x249(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb60c
    li      r5, 0x1
branch_0x801fb60c:
    lwz     r4, 0x168(r3)
    lwz     r4, 0x4(r4)
    lbz     r0, 0x249(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb624
    addi    r5, r5, 0x1
branch_0x801fb624:
    lwz     r4, 0x168(r3)
    lwz     r4, 0x8(r4)
    lbz     r0, 0x249(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb63c
    addi    r5, r5, 0x1
branch_0x801fb63c:
    lwz     r4, 0x168(r3)
    lwz     r4, 0xc(r4)
    lbz     r0, 0x249(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb654
    addi    r5, r5, 0x1
branch_0x801fb654:
    lwz     r4, 0x168(r3)
    lwz     r4, 0x10(r4)
    lbz     r0, 0x249(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb66c
    addi    r5, r5, 0x1
branch_0x801fb66c:
    mr      r3, r5
    blr


.globl quake__8TBathtubFRCQ29JGeometry8TVec3_f_
quake__8TBathtubFRCQ29JGeometry8TVec3_f_: # 0x801fb674
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb79c
    lfs     f1, 0x0(r4)
    lfs     f0, 0x10c(r31)
    lfs     f2, 0x8(r4)
    fsubs   f3, f1, f0
    lfs     f0, 0x114(r31)
    lfs     f1, -0x1fb8(r2)
    fsubs   f2, f2, f0
    lfs     f0, -0x1f24(r2)
    fmadds  f1, f3, f3, f1
    fmadds  f1, f2, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x801fb6cc
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
branch_0x801fb6cc:
    li      r0, 0x12c
    stw     r0, 0x24c(r31)
    addi    r3, r2, R2Off_m0x1fb4
    lwz     r4, 0x16c(r31)
    lwz     r0, 0x54(r4)
    stw     r0, 0x250(r31)
    lwz     r4, 0x16c(r31)
    lwz     r0, 0x68(r4)
    stw     r0, 0x258(r31)
    lwz     r4, 0x16c(r31)
    lwz     r0, 0x68(r4)
    stw     r0, 0x25c(r31)
    lwz     r4, 0x16c(r31)
    lwz     r0, 0x7c(r4)
    stw     r0, 0x254(r31)
    lwz     r4, 0x16c(r31)
    lwz     r0, 0xf4(r4)
    stw     r0, 0x248(r31)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x1fb4
    mtlr    r12
    blrl
    mr      r0, r3
    lwz     r3, R13Off_m0x7108(r13)
    lfs     f1, -0x1fac(r2)
    mr      r31, r0
    li      r4, 0x25
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x26
    lfs     f1, -0x1fac(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x4
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
    lfs     f2, -0x1fb8(r2)
    addi    r3, sp, 0x74
    lfs     f0, -0x1fac(r2)
    stfs    f2, 0x74(sp)
    lfs     f1, -0x1ed0(r2)
    stfs    f0, 0x78(sp)
    stfs    f2, 0x7c(sp)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    mr      r3, r31
    bl      getDown__6TKoopaFv
branch_0x801fb79c:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl hipdrop__8TBathtubFRCQ29JGeometry8TVec3_f_
hipdrop__8TBathtubFRCQ29JGeometry8TVec3_f_: # 0x801fb7b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb880
    lwz     r3, 0x16c(r31)
    lwz     r5, 0x250(r31)
    lwz     r0, 0x7c(r3)
    cmpw    r5, r0
    bgt-    branch_0x801fb880
    lfs     f1, 0x0(r4)
    lfs     f0, 0x10c(r31)
    lfs     f2, 0x8(r4)
    fsubs   f3, f1, f0
    lfs     f0, 0x114(r31)
    lfs     f1, -0x1fb8(r2)
    fsubs   f2, f2, f0
    lfs     f0, -0x1f24(r2)
    fmadds  f1, f3, f3, f1
    fmadds  f1, f2, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x801fb81c
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
branch_0x801fb81c:
    lwz     r4, 0x16c(r31)
    addi    r3, r2, R2Off_m0x1fb4
    lwz     r0, 0x7c(r4)
    stw     r0, 0x250(r31)
    lwz     r4, 0x16c(r31)
    lwz     r0, 0x90(r4)
    stw     r0, 0x258(r31)
    lwz     r4, 0x16c(r31)
    lwz     r0, 0x90(r4)
    stw     r0, 0x25c(r31)
    lwz     r4, 0x16c(r31)
    lwz     r0, 0x7c(r4)
    stw     r0, 0x254(r31)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x1fb4
    mtlr    r12
    blrl
    li      r4, 0x0
    bl      stagger__6TKoopaFb
branch_0x801fb880:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl loadAfter__8TBathtubFv
loadAfter__8TBathtubFv: # 0x801fb894
    mflr    r0
    lis     r3, gParticleFlagLoaded@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, gParticleFlagLoaded@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x1be
    lbz     r0, 0x1be(r3)
    lis     r3, unk_80393ef8@h
    addi    r31, r3, unk_80393ef8@l
    cmplwi  r0, 0x0
    bne-    branch_0x801fb8e0
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x2b8
    li      r5, 0x1be
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801fb8e0:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x1bf
    lbz     r0, 0x1bf(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb910
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x2d8
    li      r5, 0x1bf
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801fb910:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0xf6
    lbz     r0, 0xf6(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb940
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x2f8
    li      r5, 0xf6
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801fb940:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0xf7
    lbz     r0, 0xf7(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fb970
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x31c
    li      r5, 0xf7
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801fb970:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl control__12TBathtubGripFv
control__12TBathtubGripFv: # 0x801fb988
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    stw     r28, 0x40(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      control__11TMapObjBaseFv
    lbz     r0, 0x24a(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801fba30
    li      r29, 0x0
    addi    r30, r29, 0x0
branch_0x801fb9d4:
    addi    r0, r30, 0x164
    lwzx    r3, r31, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x11
    addi    r30, r30, 0x4
    blt+    branch_0x801fb9d4
    li      r29, 0x0
    li      r30, 0x0
branch_0x801fba04:
    addi    r0, r30, 0x150
    lwzx    r3, r31, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x5
    addi    r30, r30, 0x4
    blt+    branch_0x801fba04
    b       branch_0x801fbcfc

branch_0x801fba30:
    lwz     r3, 0x74(r31)
    bl      calcAnm__6MActorFv
    lbz     r0, 0x24b(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801fbafc
    li      r29, 0x0
    li      r30, 0x0
branch_0x801fba4c:
    add     r28, r31, r30
    lwz     r3, 0x1bc(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    mr      r4, r3
    lwzu    r3, 0x164(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x11
    addi    r30, r30, 0x4
    blt+    branch_0x801fba4c
    li      r29, 0x0
    li      r30, 0x0
branch_0x801fbaa8:
    add     r28, r31, r30
    lwz     r3, 0x1a8(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    mr      r4, r3
    lwzu    r3, 0x150(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x5
    addi    r30, r30, 0x4
    blt+    branch_0x801fbaa8
branch_0x801fbafc:
    lbz     r0, 0x248(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801fbc4c
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801fbbb0
    lwz     r3, 0x244(r31)
    lwz     r3, 0x16c(r3)
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801fbb98
    lwz     r3, 0xf0(r31)
    li      r5, 0x0
    li      r0, 0x1
    clrrwi  r3, r3, 1
    stw     r3, 0xf0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    stb     r5, 0x248(r31)
    stb     r5, 0x24a(r31)
    stb     r0, 0x249(r31)
    stb     r5, 0x24b(r31)
    bl      startAnim__11TMapObjBaseFUs
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x801fbb7c
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
branch_0x801fbb7c:
    lfs     f0, -0x1fac(r2)
    li      r3, 0x64
    li      r0, 0x0
    stfs    f0, 0x250(r31)
    stw     r3, 0x258(r31)
    stb     r0, 0x260(r31)
    b       branch_0x801fbcfc

branch_0x801fbb98:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x801fbcfc

branch_0x801fbbb0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr.     r30, r3
    beq-    branch_0x801fbbdc
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, 0x250(r31)
    lfs     f0, -0x1f94(r2)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r30)
branch_0x801fbbdc:
    lwz     r3, 0x1a8(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x2c(r3)
    li      r4, 0x300d
    lfs     f2, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x144(r31)
    stfs    f2, 0x148(r31)
    stfs    f1, 0x14c(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801fbc38
    addi    r4, r31, 0x144
    li      r3, 0x300d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801fbc38:
    lwz     r3, R13Off_m0x60f0(r13)
    addi    r5, r31, 0x138
    li      r4, 0x8
    bl      start__9RumbleMgrFiP3Vec
    b       branch_0x801fbcfc

branch_0x801fbc4c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0xc(r3)
    lwz     r0, 0x254(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801fbcf8
    lfs     f0, -0x1fac(r2)
    stfs    f0, 0x10(r3)
    lwz     r3, 0x254(r31)
    addi    r3, r3, 0x1
    stw     r3, 0x254(r31)
    lwz     r0, 0x258(r31)
    cmpw    r3, r0
    ble-    branch_0x801fbcfc
    li      r0, 0x1
    stb     r0, 0x248(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x254(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    mr      r5, r3
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0xf6
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    mr      r5, r3
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0xf7
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    b       branch_0x801fbcfc

branch_0x801fbcf8:
    stfs    f0, 0x10(r3)
branch_0x801fbcfc:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl calcRootMatrix__12TBathtubGripFv
calcRootMatrix__12TBathtubGripFv: # 0x801fbd1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stfd    f28, 0xb8(sp)
    stfd    f27, 0xb0(sp)
    stfd    f26, 0xa8(sp)
    stfd    f25, 0xa0(sp)
    stfd    f24, 0x98(sp)
    stfd    f23, 0x90(sp)
    stfd    f22, 0x88(sp)
    stfd    f21, 0x80(sp)
    stfd    f20, 0x78(sp)
    stfd    f19, 0x70(sp)
    stfd    f18, 0x68(sp)
    stfd    f17, 0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    bl      getModel__10TLiveActorCFv
    lfs     f1, -0x1fb8(r2)
    addi    r31, r3, 0x20
    lfs     f2, 0x24c(r30)
    addi    r3, sp, 0x24
    fmr     f3, f1
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0x30(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x50(sp)
    lwz     r3, 0x244(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f4, 0x24(r3)
    lfs     f19, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f7, 0x40(sp)
    fmuls   f3, f4, f19
    lfs     f12, 0x3c(sp)
    fmuls   f0, f4, f1
    lfs     f13, 0x14(r3)
    lfs     f21, 0x4(r3)
    lfs     f17, 0x20(r3)
    fmuls   f2, f4, f7
    lfs     f23, 0x24(sp)
    fmuls   f8, f4, f12
    lfs     f24, 0x28(sp)
    lfs     f30, 0x30(sp)
    lfs     f28, 0x2c(sp)
    fmadds  f10, f17, f23, f3
    lfs     f31, 0x28(r3)
    fmadds  f9, f17, f24, f0
    lfs     f5, 0x44(sp)
    lfs     f0, 0x48(sp)
    fmuls   f18, f21, f7
    lfs     f22, 0x0(r3)
    fmuls   f6, f21, f19
    lfs     f27, 0x10(r3)
    fmuls   f20, f13, f7
    fmuls   f4, f21, f1
    lfs     f29, 0x50(sp)
    fmadds  f7, f17, f30, f2
    lfs     f11, 0x2c(r3)
    fmuls   f3, f21, f12
    fmuls   f2, f13, f19
    lfs     f26, 0x4c(sp)
    fmadds  f8, f17, f28, f8
    lfs     f25, 0x18(r3)
    fmuls   f1, f13, f1
    fmuls   f19, f13, f12
    lfs     f12, 0x1c(r3)
    fmadds  f20, f27, f30, f20
    lfs     f21, 0x8(r3)
    lfs     f13, 0xc(r3)
    fmadds  f17, f31, f5, f10
    mr      r3, r31
    fmadds  f10, f22, f30, f18
    fmadds  f7, f31, f29, f7
    fmadds  f6, f22, f23, f6
    fmadds  f4, f22, f24, f4
    stfs    f17, 0x8(sp)
    fmadds  f9, f31, f0, f9
    fmadds  f3, f22, f28, f3
    fmadds  f30, f21, f29, f10
    fmadds  f22, f27, f23, f2
    stfs    f9, 0xc(sp)
    fmadds  f2, f31, f26, f8
    fmadds  f10, f27, f24, f1
    fmadds  f9, f27, f28, f19
    fmadds  f8, f25, f29, f20
    stfs    f2, 0x10(sp)
    fadds   f7, f11, f7
    fmadds  f1, f21, f5, f6
    fmadds  f2, f21, f0, f4
    fmadds  f3, f21, f26, f3
    stfs    f7, 0x14(sp)
    fadds   f4, f13, f30
    fmadds  f5, f25, f5, f22
    fmadds  f6, f25, f0, f10
    fmadds  f7, f25, f26, f9
    fadds   f8, f12, f8
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    lfd     f29, 0xc0(sp)
    lfd     f28, 0xb8(sp)
    lfd     f27, 0xb0(sp)
    lfd     f26, 0xa8(sp)
    lfd     f25, 0xa0(sp)
    lfd     f24, 0x98(sp)
    lfd     f23, 0x90(sp)
    lfd     f22, 0x88(sp)
    lfd     f21, 0x80(sp)
    lfd     f20, 0x78(sp)
    lfd     f19, 0x70(sp)
    lfd     f18, 0x68(sp)
    lfd     f17, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0xd8
    blr


.globl getRootJointMtx__12TBathtubGripCFv
getRootJointMtx__12TBathtubGripCFv: # 0x801fbf18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r0, 0xc(sp)
    addi    r3, r3, 0x20
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__12TBathtubGripFP9THitActorUl
receiveMessage__12TBathtubGripFP9THitActorUl: # 0x801fbf3c
    mflr    r0
    cmpwi   r5, 0x2
    stw     r0, 0x4(sp)
    lis     r6, unk_80393ef8@h
    stwu    sp, -0x150(sp)
    stw     r31, 0x14c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x148(sp)
    addi    r30, r6, unk_80393ef8@l
    stw     r29, 0x144(sp)
    stw     r28, 0x140(sp)
    addi    r28, r4, 0x0
    beq-    branch_0x801fc23c
    bge-    branch_0x801fbf84
    cmpwi   r5, 0x0
    beq-    branch_0x801fc1e0
    bge-    branch_0x801fc1cc
    b       branch_0x801fc23c

branch_0x801fbf84:
    cmpwi   r5, 0x4
    bge-    branch_0x801fc23c
    lbz     r0, 0x248(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801fbfa0
    li      r3, 0x0
    b       branch_0x801fc240

branch_0x801fbfa0:
    lbz     r0, 0x249(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801fbfb4
    li      r3, 0x0
    b       branch_0x801fc240

branch_0x801fbfb4:
    lwz     r3, R13Off_m0x60b4(r13)
    li      r4, 0x3821
    lfs     f0, 0x0(r3)
    stfs    f0, 0x138(r31)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x13c(r31)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x140(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801fc000
    addi    r4, r31, 0x138
    li      r3, 0x3821
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801fc000:
    lwz     r3, 0x244(r31)
    li      r5, 0x0
    lwz     r4, 0x168(r3)
    lwz     r4, 0x0(r4)
    lbz     r0, 0x249(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fc020
    li      r5, 0x1
branch_0x801fc020:
    lwz     r4, 0x168(r3)
    lwz     r4, 0x4(r4)
    lbz     r0, 0x249(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fc038
    addi    r5, r5, 0x1
branch_0x801fc038:
    lwz     r4, 0x168(r3)
    lwz     r4, 0x8(r4)
    lbz     r0, 0x249(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fc050
    addi    r5, r5, 0x1
branch_0x801fc050:
    lwz     r4, 0x168(r3)
    lwz     r4, 0xc(r4)
    lbz     r0, 0x249(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fc068
    addi    r5, r5, 0x1
branch_0x801fc068:
    lwz     r4, 0x168(r3)
    lwz     r4, 0x10(r4)
    lbz     r0, 0x249(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fc080
    addi    r5, r5, 0x1
branch_0x801fc080:
    clrlwi  r0, r5, 16
    mr      r29, r0
    cmplwi  r29, 0x4
    bne-    branch_0x801fc09c
    bl      startDemo__8TBathtubFv
    li      r3, 0x1
    b       branch_0x801fc240

branch_0x801fc09c:
    addi    r4, r28, 0x10
    bl      quake__8TBathtubFRCQ29JGeometry8TVec3_f_
    cmpwi   r29, 0x3
    beq-    branch_0x801fc0f4
    bge-    branch_0x801fc0c0
    cmpwi   r29, 0x1
    beq-    branch_0x801fc0cc
    bge-    branch_0x801fc0e0
    b       branch_0x801fc11c

branch_0x801fc0c0:
    cmpwi   r29, 0x5
    bge-    branch_0x801fc11c
    b       branch_0x801fc108

branch_0x801fc0cc:
    lwz     r3, 0x244(r31)
    lwz     r3, 0x16c(r3)
    lwz     r0, 0xa4(r3)
    lfs     f0, 0x11c(r3)
    b       branch_0x801fc12c

branch_0x801fc0e0:
    lwz     r3, 0x244(r31)
    lwz     r3, 0x16c(r3)
    lwz     r0, 0xb8(r3)
    lfs     f0, 0x130(r3)
    b       branch_0x801fc12c

branch_0x801fc0f4:
    lwz     r3, 0x244(r31)
    lwz     r3, 0x16c(r3)
    lwz     r0, 0xcc(r3)
    lfs     f0, 0x144(r3)
    b       branch_0x801fc12c

branch_0x801fc108:
    lwz     r3, 0x244(r31)
    lwz     r3, 0x16c(r3)
    lwz     r0, 0xe0(r3)
    lfs     f0, 0x158(r3)
    b       branch_0x801fc12c

branch_0x801fc11c:
    lwz     r3, 0x244(r31)
    lwz     r3, 0x16c(r3)
    lwz     r0, 0xa4(r3)
    lfs     f0, 0x108(r3)
branch_0x801fc12c:
    stw     r0, 0x258(r31)
    li      r0, 0x1
    addi    r4, r30, 0x26c
    stfs    f0, 0x250(r31)
    stw     r0, 0x254(r31)
    lwz     r3, 0x25c(r31)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x25c(r31)
    addi    r4, r30, 0x26c
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x25c(r31)
    addi    r4, r30, 0x26c
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x25c(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr.     r30, r3
    beq-    branch_0x801fc18c
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, -0x1f04(r2)
    lfs     f0, -0x1f94(r2)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r30)
branch_0x801fc18c:
    li      r3, 0x1
    stb     r3, 0x248(r31)
    li      r0, 0x0
    cmpwi   r29, 0x0
    stb     r0, 0x249(r31)
    bne-    branch_0x801fc1ac
    mr      r29, r3
    b       branch_0x801fc1b8

branch_0x801fc1ac:
    cmpwi   r29, 0x1
    bne-    branch_0x801fc1b8
    mr      r29, r0
branch_0x801fc1b8:
    addi    r3, r31, 0x0
    clrlwi  r4, r29, 16
    bl      startAnim__11TMapObjBaseFUs
    li      r3, 0x1
    b       branch_0x801fc240

branch_0x801fc1cc:
    lwz     r3, 0x244(r31)
    addi    r4, r28, 0x10
    bl      hipdrop__8TBathtubFRCQ29JGeometry8TVec3_f_
    li      r3, 0x1
    b       branch_0x801fc240

branch_0x801fc1e0:
    lwz     r4, 0x244(r31)
    lbz     r0, 0x29a(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801fc234
    lwz     r3, 0x16c(r4)
    lwz     r0, 0x250(r4)
    addi    r5, r3, 0x2c
    lwz     r3, 0x2c(r3)
    cmpw    r0, r3
    bgt-    branch_0x801fc234
    lwz     r0, 0x0(r5)
    stw     r0, 0x250(r4)
    lwz     r3, 0x16c(r4)
    lwz     r0, 0x40(r3)
    stw     r0, 0x258(r4)
    lwz     r3, 0x16c(r4)
    lwz     r0, 0x40(r3)
    stw     r0, 0x25c(r4)
    lwz     r3, 0x16c(r4)
    lwz     r0, 0x7c(r3)
    stw     r0, 0x254(r4)
branch_0x801fc234:
    li      r3, 0x1
    b       branch_0x801fc240

branch_0x801fc23c:
    li      r3, 0x0
branch_0x801fc240:
    lwz     r0, 0x154(sp)
    lwz     r31, 0x14c(sp)
    lwz     r30, 0x148(sp)
    mtlr    r0
    lwz     r29, 0x144(sp)
    lwz     r28, 0x140(sp)
    addi    sp, sp, 0x150
    blr


.globl perform__12TBathtubGripFUlPQ26JDrama9TGraphics
perform__12TBathtubGripFUlPQ26JDrama9TGraphics: # 0x801fc260
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lbz     r0, 0x260(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801fc310
    clrlwi. r0, r29, 31
    beq-    branch_0x801fc300
    mr      r3, r28
    lwz     r4, 0x25c(r28)
    lwz     r12, 0x0(r28)
    lwz     r4, 0x4(r4)
    lwz     r12, 0xb8(r12)
    addi    r31, r4, 0x20
    mtlr    r12
    blrl
    mr      r4, r31
    bl      PSMTXCopy
    lwz     r0, 0x254(r28)
    cmpwi   r0, 0x0
    bgt-    branch_0x801fc2e0
    lbz     r0, 0x248(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x801fc300
branch_0x801fc2e0:
    lwz     r3, 0x25c(r28)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801fc300
    li      r0, 0x1
    stb     r0, 0x260(r28)
branch_0x801fc300:
    lwz     r3, 0x25c(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x801fc310:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl __ct__12TBathtubGripFP8TBathtubfP13MActorAnmDataPCc
__ct__12TBathtubGripFP8TBathtubfP13MActorAnmDataPCc: # 0x801fc330
    mflr    r0
    lis     r7, unk_80393ef8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x180(sp)
    stfd    f31, 0x178(sp)
    fmr     f31, f1
    stmw    r20, 0x148(sp)
    addi    r22, r4, 0x0
    addi    r21, r5, 0x0
    addi    r4, r6, 0x0
    addi    r31, r7, unk_80393ef8@l
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__12TBathtubGrip@h
    lwz     r5, 0x8(sp)
    addi    r3, r3, __vvt__12TBathtubGrip@l
    stw     r3, 0x0(r5)
    addi    r0, r3, 0x24
    lis     r3, __ct__Q29JGeometry8TVec3_f_Fv@h
    stw     r0, 0x20(r5)
    addi    r4, r3, __ct__Q29JGeometry8TVec3_f_Fv@l
    addi    r3, r5, 0x138
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x2
    bl      __construct_array
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x801fc3b8
    addi    r3, r23, 0x0
    addi    r4, r21, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x801fc3b8:
    lwz     r4, 0x8(sp)
    addi    r3, r31, 0x340
    stw     r23, 0x25c(r4)
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r21, r3, 0x0
    lis     r23, unk_50050000@h
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x801fc400
    addi    r3, r21, 0x0
    addi    r4, r23, unk_50050000@l
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r24, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x801fc400:
    lwz     r21, 0x8(sp)
    addi    r4, r24, 0x0
    addi    r5, r23, 0x0
    lwz     r3, 0x25c(r21)
    bl      setModel__6MActorFP8J3DModelUl
    li      r27, 0x0
    stw     r27, 0x254(r21)
    addi    r3, r21, 0x0
    addi    r4, r31, 0x370
    stw     r22, 0x244(r21)
    stfs    f31, 0x24c(r21)
    bl      initAndRegister__11TMapObjBaseFPCc
    mr      r3, r21
    lwz     r12, 0x0(r21)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r21
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r21
    bl      getModel__10TLiveActorCFv
    lwz     r6, 0x4(r3)
    lis     r5, __vvt__17TBathtubGripParts@h
    lis     r4, __vvt__21TBathtubGripPartsHard@h
    lis     r3, __vvt__24TBathtubGripPartsFragile@h
    lwz     r23, 0xb0(r6)
    addi    r28, r5, __vvt__17TBathtubGripParts@l
    addi    r29, r4, __vvt__21TBathtubGripPartsHard@l
    addi    r30, r3, __vvt__24TBathtubGripPartsFragile@l
    addi    r26, r28, 0x24
    addi    r25, r29, 0x24
    addi    r24, r30, 0x24
    li      r22, 0x0
branch_0x801fc494:
    addi    r3, sp, 0x138
    crxor   6, 6, 6
    addi    r5, r22, 0x1
    addi    r4, r2, R2Off_m0x1ecc
    bl      sprintf
    addi    r3, sp, 0x38
    crxor   6, 6, 6
    addi    r4, r31, 0x37c
    addi    r5, sp, 0x138
    bl      sprintf
    addi    r3, r23, 0x0
    addi    r4, sp, 0x138
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x8(sp)
    addi    r0, r27, 0x200
    stwx    r3, r4, r0
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x801fc4ec
    mr      r3, r20
    bl      __ct__17TMapCollisionMoveFv
branch_0x801fc4ec:
    lwz     r21, 0x8(sp)
    addi    r0, r27, 0x164
    li      r3, 0xfc
    stwx    r20, r21, r0
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x801fc52c
    addi    r3, r20, 0x0
    addi    r4, r31, 0x3a0
    bl      __ct__10TLiveActorFPCc
    stw     r28, 0x0(r20)
    stw     r26, 0x20(r20)
    stw     r21, 0xf4(r20)
    stw     r22, 0xf8(r20)
    stw     r29, 0x0(r20)
    stw     r25, 0x20(r20)
branch_0x801fc52c:
    lwz     r3, 0x8(sp)
    addi    r0, r27, 0x1bc
    addi    r4, sp, 0x38
    stwx    r20, r3, r0
    add     r6, r3, r27
    li      r5, 0x0
    lwz     r3, 0x164(r6)
    lwz     r6, 0x1bc(r6)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    cmpwi   r22, 0x5
    bge-    branch_0x801fc614
    addi    r3, sp, 0x138
    crxor   6, 6, 6
    addi    r5, r22, 0x1
    addi    r4, r2, R2Off_m0x1ec8
    bl      sprintf
    addi    r3, sp, 0x38
    crxor   6, 6, 6
    addi    r4, r31, 0x37c
    addi    r5, sp, 0x138
    bl      sprintf
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x801fc5a4
    mr      r3, r20
    bl      __ct__17TMapCollisionMoveFv
branch_0x801fc5a4:
    lwz     r21, 0x8(sp)
    addi    r0, r27, 0x150
    li      r3, 0xfc
    stwx    r20, r21, r0
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x801fc5e4
    addi    r3, r20, 0x0
    addi    r4, r31, 0x3c4
    bl      __ct__10TLiveActorFPCc
    stw     r28, 0x0(r20)
    stw     r26, 0x20(r20)
    stw     r21, 0xf4(r20)
    stw     r22, 0xf8(r20)
    stw     r30, 0x0(r20)
    stw     r24, 0x20(r20)
branch_0x801fc5e4:
    lwz     r3, 0x8(sp)
    addi    r0, r27, 0x1a8
    addi    r4, sp, 0x38
    stwx    r20, r3, r0
    add     r6, r3, r27
    li      r5, 0x0
    lwz     r3, 0x150(r6)
    lwz     r6, 0x1a8(r6)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x801fc614:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x11
    addi    r27, r27, 0x4
    blt+    branch_0x801fc494
    lwz     r22, 0x8(sp)
    li      r5, 0x0
    li      r0, 0x1
    lwz     r6, 0xf0(r22)
    addi    r3, r22, 0x0
    li      r4, 0x0
    clrrwi  r6, r6, 1
    stw     r6, 0xf0(r22)
    stb     r5, 0x248(r22)
    stb     r5, 0x24a(r22)
    stb     r0, 0x249(r22)
    stb     r5, 0x24b(r22)
    bl      startAnim__11TMapObjBaseFUs
    lwz     r3, 0x74(r22)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x801fc678
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
branch_0x801fc678:
    lwz     r3, 0x8(sp)
    li      r4, 0x64
    lfs     f0, -0x1fac(r2)
    li      r0, 0x0
    stfs    f0, 0x250(r3)
    stw     r4, 0x258(r3)
    stb     r0, 0x260(r3)
    lmw     r20, 0x148(sp)
    lwz     r0, 0x184(sp)
    lfd     f31, 0x178(sp)
    addi    sp, sp, 0x180
    mtlr    r0
    blr


.globl __dt__17TBathtubGripPartsFv
__dt__17TBathtubGripPartsFv: # 0x801fc6ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801fc6fc
    lis     r3, __vvt__17TBathtubGripParts@h
    addi    r3, r3, __vvt__17TBathtubGripParts@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
    extsh.  r0, r31
    ble-    branch_0x801fc6fc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801fc6fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl kill__12TBathtubGripFv
kill__12TBathtubGripFv: # 0x801fc718
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    stb     r0, 0x24a(r3)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    li      r30, 0x0
    addi    r31, r30, 0x0
branch_0x801fc754:
    addi    r0, r31, 0x164
    lwzx    r3, r29, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    cmpwi   r30, 0x11
    addi    r31, r31, 0x4
    blt+    branch_0x801fc754
    li      r30, 0x0
    li      r31, 0x0
branch_0x801fc784:
    addi    r0, r31, 0x150
    lwzx    r3, r29, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    cmpwi   r30, 0x5
    addi    r31, r31, 0x4
    blt+    branch_0x801fc784
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl receiveMessage__21TBathtubGripPartsHardFP9THitActorUl
receiveMessage__21TBathtubGripPartsHardFP9THitActorUl: # 0x801fc7c8
    mflr    r0
    cmplwi  r5, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x801fc7e0
    li      r5, 0x1
branch_0x801fc7e0:
    lwz     r3, 0xf4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__24TBathtubGripPartsFragileFP9THitActorUl
receiveMessage__24TBathtubGripPartsFragileFP9THitActorUl: # 0x801fc804
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0xf4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getRootJointMtx__17TBathtubGripPartsCFv
getRootJointMtx__17TBathtubGripPartsCFv: # 0x801fc834
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    lwz     r0, 0xf8(r3)
    lwz     r3, 0xf4(r3)
    slwi    r0, r0, 2
    add     r4, r3, r0
    lwz     r31, 0x200(r4)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__14TBathtubParamsFv
__ct__14TBathtubParamsFv: # 0x801fc87c
    mflr    r0
    lis     r4, unk_80393ef8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r30, r4, unk_80393ef8@l
    addi    r0, r30, 0x3e4
    addi    r31, r3, 0x0
    li      r27, 0x0
    stw     r0, 0x0(r3)
    addi    r3, r30, 0x3f8
    stw     r27, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x3f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__11TParamT_Uc_@ha
    addi    r0, r3, __vvt__11TParamT_Uc_@l
    stw     r0, 0x8(r31)
    lis     r3, __vvt__12TParamRT_Uc_@ha
    addi    r0, r3, __vvt__12TParamRT_Uc_@l
    stb     r27, 0x18(r31)
    addi    r3, r30, 0x404
    stw     r0, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x404
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r28, r3, __vvt__10TParamT_l_@l
    stw     r28, 0x1c(r31)
    li      r27, 0xa
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r27, 0x2c(r31)
    addi    r29, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x414
    stw     r29, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x414
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x30(r31)
    addi    r3, r30, 0x424
    stw     r27, 0x40(r31)
    stw     r29, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x424
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x44(r31)
    li      r27, 0x1f4
    addi    r3, r30, 0x434
    stw     r27, 0x54(r31)
    stw     r29, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x434
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x58(r31)
    addi    r3, r30, 0x444
    stw     r27, 0x68(r31)
    stw     r29, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x444
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x6c(r31)
    li      r27, 0x23
    addi    r3, r30, 0x454
    stw     r27, 0x7c(r31)
    stw     r29, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x454
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x80(r31)
    addi    r3, r30, 0x464
    stw     r27, 0x90(r31)
    stw     r29, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x464
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x94(r31)
    li      r0, 0x2ee
    addi    r3, r30, 0x470
    stw     r0, 0xa4(r31)
    stw     r29, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x470
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xa8(r31)
    li      r0, 0x2c6
    addi    r3, r30, 0x47c
    stw     r0, 0xb8(r31)
    stw     r29, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x47c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xbc(r31)
    li      r0, 0x2ad
    addi    r3, r30, 0x488
    stw     r0, 0xcc(r31)
    stw     r29, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x488
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xd0(r31)
    li      r0, 0x28f
    addi    r3, r30, 0x494
    stw     r0, 0xe0(r31)
    stw     r29, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x494
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xe4(r31)
    li      r0, 0x3e8
    addi    r3, r30, 0x4a4
    stw     r0, 0xf4(r31)
    stw     r29, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x4a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0xf8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x1ec4(r2)
    addi    r3, r30, 0x4b0
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x4b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x4bc
    lfs     f0, -0x1ec4(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x4bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x4c8
    lfs     f0, -0x1ec4(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x4c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x4d4
    lfs     f0, -0x1ec4(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x4d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r2, R2Off_m0x1ebc
    lfs     f0, -0x1ec0(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r2, R2Off_m0x1ebc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x4e0
    lfs     f0, -0x1fb8(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x4e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x4ec
    lfs     f0, -0x1eb4(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x4ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x4f8
    lfs     f0, -0x1eb0(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x4f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r2, R2Off_m0x1ea8
    lfs     f0, -0x1eac(r2)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r2, R2Off_m0x1ea8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x508
    lfs     f0, -0x1ea0(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x508
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x514
    lfs     f0, -0x1eac(r2)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x514
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x520
    lfs     f0, -0x1efc(r2)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x520
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x530
    lfs     f0, -0x1f90(r2)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x530
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    mr      r3, r31
    lfs     f0, -0x1e9c(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__12TBathtubGripFv
__dt__12TBathtubGripFv: # 0x801fcd64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801fcdcc
    lis     r3, __vvt__12TBathtubGrip@h
    addi    r3, r3, __vvt__12TBathtubGrip@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fcdbc
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801fcdbc:
    extsh.  r0, r31
    ble-    branch_0x801fcdcc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801fcdcc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21TBathtubGripPartsHardFv
__dt__21TBathtubGripPartsHardFv: # 0x801fcde8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801fce50
    lis     r3, __vvt__21TBathtubGripPartsHard@h
    addi    r3, r3, __vvt__21TBathtubGripPartsHard@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fce40
    lis     r3, __vvt__17TBathtubGripParts@h
    addi    r3, r3, __vvt__17TBathtubGripParts@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801fce40:
    extsh.  r0, r31
    ble-    branch_0x801fce50
    mr      r3, r30
    bl      __dl__FPv
branch_0x801fce50:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24TBathtubGripPartsFragileFv
__dt__24TBathtubGripPartsFragileFv: # 0x801fce6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801fced4
    lis     r3, __vvt__24TBathtubGripPartsFragile@h
    addi    r3, r3, __vvt__24TBathtubGripPartsFragile@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fcec4
    lis     r3, __vvt__17TBathtubGripParts@h
    addi    r3, r3, __vvt__17TBathtubGripParts@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801fcec4:
    extsh.  r0, r31
    ble-    branch_0x801fced4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801fced4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjCorona_cpp
__sinit_MapObjCorona_cpp: # 0x801fcef0
    mflr    r0
    lis     r3, yDown_3084@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, yDown_3084@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801fcf38
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801fcf38:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801fcf68
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801fcf68:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801fcf98
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801fcf98:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801fcfc8
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801fcfc8:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801fcff8
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801fcff8:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801fd028
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801fd028:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801fd058
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801fd058:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801fd088
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801fd088:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801fd0b8
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801fd0b8:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801fd0e8
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801fd0e8:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801fd118
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801fd118:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801fd148
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801fd148:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801fd178
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801fd178:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801fd1a8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801fd1a8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801fd1d8
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801fd1d8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801fd1ec
unk_801fd1ec: # 0x801fd1ec
    addi    r3, r3, -0x20
    b       __dt__17TBathtubGripPartsFv


.globl unk_801fd1f4
unk_801fd1f4: # 0x801fd1f4
    addi    r3, r3, -0x20
    b       __dt__24TBathtubGripPartsFragileFv


.globl unk_801fd1fc
unk_801fd1fc: # 0x801fd1fc
    addi    r3, r3, -0x20
    b       __dt__21TBathtubGripPartsHardFv


.globl unk_801fd204
unk_801fd204: # 0x801fd204
    addi    r3, r3, -0x20
    b       __dt__12TBathtubGripFv


.globl unk_801fd20c
unk_801fd20c: # 0x801fd20c
    addi    r3, r3, -0x20
    b       __dt__8TBathtubFv

