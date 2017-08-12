
.globl bind__7TSpiderFP10TLiveActor
bind__7TSpiderFP10TLiveActor: # 0x8006e80c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    stfd    f30, 0x148(sp)
    stfd    f29, 0x140(sp)
    stfd    f28, 0x138(sp)
    stfd    f27, 0x130(sp)
    stw     r31, 0x12c(sp)
    mr      r31, r4
    stw     r30, 0x128(sp)
    mr      r30, r3
    stw     r29, 0x124(sp)
    lwz     r4, 0x94(r4)
    lwz     r0, 0x98(r31)
    stw     r4, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r0, 0x9c(r31)
    stw     r0, 0x11c(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    lfs     f0, 0x114(sp)
    stw     r3, 0x108(sp)
    lfs     f31, 0x118(sp)
    stw     r0, 0x10c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x110(sp)
    lfs     f1, 0x108(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f0, 0x10c(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x10c(sp)
    lfs     f0, 0x110(sp)
    lfs     f30, 0x11c(sp)
    fadds   f0, f0, f30
    stfs    f0, 0x110(sp)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006e8b4
    li      r0, 0x1
    b       branch_0x8006e8b8

branch_0x8006e8b4:
    li      r0, 0x0
branch_0x8006e8b8:
    cmpwi   r0, 0x0
    beq-    branch_0x8006e954
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    lfs     f1, 0x108(sp)
    stw     r4, 0xfc(sp)
    stw     r0, 0x100(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x104(sp)
    lfs     f0, 0xfc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f1, 0x10c(sp)
    lfs     f0, 0x100(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10c(sp)
    lfs     f1, 0x110(sp)
    lfs     f0, 0x104(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x110(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x100(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x100(sp)
    lfs     f0, 0x100(sp)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8006e93c
    stfs    f1, 0x100(sp)
branch_0x8006e93c:
    lwz     r3, 0xfc(sp)
    lwz     r0, 0x100(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x104(sp)
    stw     r0, 0xb4(r31)
branch_0x8006e954:
    lfs     f1, 0x148(r31)
    addi    r4, sp, 0xf8
    lfs     f0, 0xc0(r31)
    lfs     f27, 0x110(sp)
    fmuls   f0, f1, f0
    lfs     f28, 0x10c(sp)
    fmr     f3, f27
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x108(sp)
    fadds   f2, f28, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f4, 0x14(r31)
    lfs     f3, -0x6b58(r2)
    fsubs   f2, f4, f28
    lfs     f0, -0x6b54(r2)
    fadds   f28, f1, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x8006e9dc
    lfs     f1, 0x148(r31)
    fmr     f3, f27
    lfs     f0, 0xc0(r31)
    addi    r4, sp, 0xf4
    lwz     r3, R13Off_m0x6328(r13)
    fmuls   f0, f1, f0
    lfs     f1, 0x108(sp)
    fadds   f2, f4, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0x6b58(r2)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f28
    ble-    branch_0x8006e9dc
    lwz     r0, 0xf4(sp)
    fmr     f28, f0
    stw     r0, 0xf8(sp)
branch_0x8006e9dc:
    lwz     r3, 0xf8(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8006e9f4
    li      r0, 0x1
    b       branch_0x8006e9f8

branch_0x8006e9f4:
    li      r0, 0x0
branch_0x8006e9f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8006ea40
    lwz     r0, 0x4(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x8006ea24
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x8006ea48

branch_0x8006ea24:
    lfs     f0, 0x14(r31)
    stfs    f0, 0x10c(sp)
    lwz     r3, 0x4(r30)
    lfs     f28, 0x10c(sp)
    addi    r0, r3, -0x1
    stw     r0, 0x4(r30)
    b       branch_0x8006ea48

branch_0x8006ea40:
    li      r0, 0x1e
    stw     r0, 0x4(r30)
branch_0x8006ea48:
    lfs     f0, 0x10c(sp)
    fcmpo   cr0, f0, f28
    cror    2, 0, 2
    bne-    branch_0x8006eaa0
    stfs    f28, 0x10c(sp)
    lfs     f0, -0x6b54(r2)
    stfs    f0, 0x98(sp)
    stfs    f0, 0x9c(sp)
    stfs    f0, 0xa0(sp)
    lwz     r3, 0x98(sp)
    lwz     r0, 0x9c(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xa0(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 17, 15
    stw     r0, 0xf0(r31)
    b       branch_0x8006eaac

branch_0x8006eaa0:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x8006eaac:
    stfs    f28, 0xc8(r31)
    li      r0, 0x1
    li      r29, 0x0
    lwz     r3, 0xf8(sp)
    addi    r4, sp, 0xc8
    stw     r3, 0xc4(r31)
    lfs     f4, 0x148(r31)
    lfs     f0, 0xc0(r31)
    lfs     f3, 0x14c(r31)
    fmuls   f1, f4, f0
    lfs     f2, 0x10c(sp)
    lfs     f0, 0x108(sp)
    fmuls   f3, f4, f3
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f1, f2, f1
    stfs    f0, 0xc8(sp)
    stfs    f1, 0xcc(sp)
    lfs     f0, 0x110(sp)
    stfs    f0, 0xd0(sp)
    stfs    f3, 0xd4(sp)
    stw     r0, 0xd8(sp)
    stw     r29, 0xe0(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    lwz     r0, 0xc8(sp)
    clrlwi. r4, r3, 24
    lwz     r3, 0xcc(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0xd0(sp)
    stw     r3, 0xc0(sp)
    stw     r0, 0xc4(sp)
    bne-    branch_0x8006ebb8
    lwz     r3, 0x8(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x8006eb84
    addi    r0, r3, -0x1
    stw     r0, 0x8(r30)
    lwz     r0, 0xf0(r31)
    lfs     f29, 0x140(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 17, 15
    stw     r0, 0xf0(r31)
    lfs     f0, -0x6b54(r2)
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x90(sp)
    stfs    f0, 0x94(sp)
    lwz     r3, 0x8c(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x94(sp)
    stw     r0, 0xb4(r31)
    b       branch_0x8006eb90

branch_0x8006eb84:
    stw     r29, 0xc(r30)
    stw     r29, 0x138(r31)
    lfs     f29, -0x6b54(r2)
branch_0x8006eb90:
    lfs     f1, 0x10(r30)
    lfs     f0, -0x6b50(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x10(r30)
    lfs     f0, -0x6b54(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8006ece0
    stfs    f0, 0x10(r30)
    b       branch_0x8006ece0

branch_0x8006ebb8:
    lwz     r4, 0xe4(sp)
    lfs     f2, 0x114(sp)
    lwz     r3, 0x34(r4)
    lwz     r0, 0x38(r4)
    lfs     f0, -0x6b54(r2)
    stw     r3, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0xb8(sp)
    lfs     f1, 0xb4(sp)
    lfs     f3, 0xb0(sp)
    fmuls   f1, f1, f31
    lfs     f4, 0xb8(sp)
    fmadds  f1, f3, f2, f1
    fmadds  f1, f4, f30, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8006ece0
    lwz     r3, 0xf0(r31)
    li      r0, 0x3c
    lfs     f29, 0x140(r31)
    rlwinm  r3, r3, 0, 25, 23
    stw     r3, 0xf0(r31)
    lwz     r3, 0xf0(r31)
    rlwinm  r3, r3, 0, 17, 15
    stw     r3, 0xf0(r31)
    stfs    f0, 0x80(sp)
    stfs    f0, 0x84(sp)
    stfs    f0, 0x88(sp)
    lwz     r4, 0x80(sp)
    lwz     r3, 0x84(sp)
    stw     r4, 0xac(r31)
    stw     r3, 0xb0(r31)
    lwz     r3, 0x88(sp)
    stw     r3, 0xb4(r31)
    lwz     r3, 0xe4(sp)
    stw     r3, 0xc(r30)
    lwz     r3, 0xc(r30)
    stw     r3, 0x138(r31)
    stw     r0, 0x8(r30)
    lfs     f1, 0x148(r31)
    lfs     f0, 0x14c(r31)
    lfs     f2, 0x10(r30)
    fmuls   f1, f1, f0
    lfs     f0, 0xb0(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(sp)
    lfs     f0, 0xb4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(sp)
    lfs     f0, 0xb8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xb8(sp)
    lfs     f2, 0xbc(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, -0x6b50(r2)
    fsubs   f1, f2, f1
    stfs    f1, 0xbc(sp)
    lfs     f2, 0xc0(sp)
    lfs     f1, 0xb4(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0xc0(sp)
    lfs     f2, 0xc4(sp)
    lfs     f1, 0xb8(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0xc4(sp)
    lfs     f1, 0x10(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x10(r30)
    lfs     f0, -0x6b58(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8006ece0
    stfs    f0, 0x10(r30)
branch_0x8006ece0:
    lwz     r0, 0xbc(sp)
    addi    r3, sp, 0x40
    lwz     r5, 0xc0(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x108(sp)
    lwz     r0, 0xc4(sp)
    stw     r5, 0x10c(sp)
    stw     r0, 0x110(sp)
    lfs     f1, 0x148(r31)
    lfs     f0, 0xc0(r31)
    lfs     f2, 0x10c(sp)
    fmuls   f0, f1, f0
    fsubs   f0, f29, f0
    fadds   f0, f2, f0
    stfs    f0, 0x10c(sp)
    lwz     r0, 0x108(sp)
    lwz     r5, 0x10c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x110(sp)
    stw     r5, 0x44(sp)
    stw     r0, 0x48(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x48(sp)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lfd     f30, 0x148(sp)
    lfd     f29, 0x140(sp)
    lfd     f28, 0x138(sp)
    lfd     f27, 0x130(sp)
    lwz     r31, 0x12c(sp)
    lwz     r30, 0x128(sp)
    lwz     r29, 0x124(sp)
    addi    sp, sp, 0x158
    mtlr    r0
    blr


.globl __dt__7TSpiderFv
__dt__7TSpiderFv: # 0x8006ed80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8006edc8
    lis     r3, __vvt__7TSpider@h
    addi    r0, r3, __vvt__7TSpider@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7TBinderFv
    extsh.  r0, r31
    ble-    branch_0x8006edc8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8006edc8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__7TSpiderFv
__ct__7TSpiderFv: # 0x8006ede4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__7TBinderFv
    lis     r3, __vvt__7TSpider@h
    addi    r0, r3, __vvt__7TSpider@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x4(r31)
    stw     r0, 0x8(r31)
    stw     r0, 0xc(r31)
    lfs     f0, -0x6b54(r2)
    stfs    f0, 0x10(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

