
.globl set_f___Q29JGeometry8TVec3_f_Ffff_80139a90
set_f___Q29JGeometry8TVec3_f_Ffff_80139a90: # 0x80139a90
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl float___14TBathtubBinderFP10TLiveActor
float___14TBathtubBinderFP10TLiveActor: # 0x80139aa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stfd    f30, 0x168(sp)
    stfd    f29, 0x160(sp)
    stfd    f28, 0x158(sp)
    stfd    f27, 0x150(sp)
    stfd    f26, 0x148(sp)
    stw     r31, 0x144(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x140(sp)
    stw     r29, 0x13c(sp)
    mr      r29, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80139ee8
    lfs     f1, 0x30(r31)
    addi    r3, sp, 0xdc
    lfs     f2, 0x34(r31)
    lfs     f3, 0x38(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lwz     r3, 0x4(r29)
    lfs     f31, 0x104(sp)
    lfs     f30, 0xe4(sp)
    cmplwi  r3, 0x0
    lfs     f2, 0xc(r29)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x18(r31)
    fmadds  f29, f30, f2, f1
    lfs     f28, 0x10(r29)
    fmadds  f27, f31, f2, f0
    beq-    branch_0x80139be0
    addi    r30, r3, 0x170
    lfs     f1, 0x174(r3)
    lfs     f0, 0x44(r30)
    addi    r3, sp, 0xc4
    lfs     f3, 0x8(r30)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r30)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80139a90
    lwz     r0, 0xc4(sp)
    lwz     r3, 0xc8(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0xcc(sp)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
    lfs     f1, 0x3c(r30)
    lfs     f0, 0x44(r30)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fsubs   f1, f1, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f7, 0xc0(sp)
    fsubs   f5, f1, f28
    lfs     f0, 0xb8(sp)
    fsubs   f3, f27, f7
    fsubs   f4, f29, f0
    fmuls   f0, f5, f5
    fmuls   f1, f3, f3
    fmadds  f8, f4, f4, f1
    fcmpo   cr0, f8, f0
    ble-    branch_0x80139be0
    lfs     f0, -0x4dd8(rtoc)
    fcmpo   cr0, f8, f0
    cror    2, 0, 2
    bne-    branch_0x80139bb0
    b       branch_0x80139bd0

branch_0x80139bb0:
    frsqrte f6, f8
    lfs     f2, -0x4dd4(rtoc)
    lfs     f0, -0x4dd0(rtoc)
    frsp    f6, f6
    fmuls   f1, f6, f6
    fmuls   f2, f2, f6
    fnmsubs  f0, f8, f1, f0
    fmuls   f8, f2, f0
branch_0x80139bd0:
    fmuls   f1, f5, f8
    lfs     f0, 0xb8(sp)
    fmadds  f29, f1, f4, f0
    fmadds  f27, f1, f3, f7
branch_0x80139be0:
    fmr     f1, f29
    lwz     r3, 0x8(r29)
    fmr     f2, f27
    bl      getWaterHeight__17TBathWaterManagerCFff
    lfs     f0, 0x14(r29)
    lfs     f3, 0x20(r29)
    fneg    f4, f0
    lfs     f2, 0x10(r31)
    lfs     f0, 0x18(r31)
    fadds   f28, f3, f1
    lwz     r3, 0x4(r29)
    cmplwi  r3, 0x0
    fmadds  f30, f30, f4, f2
    fmadds  f31, f31, f4, f0
    lfs     f26, 0x18(r29)
    beq-    branch_0x80139cdc
    addi    r30, r3, 0x170
    lfs     f1, 0x174(r3)
    lfs     f0, 0x44(r30)
    addi    r3, sp, 0xa8
    lfs     f3, 0x8(r30)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r30)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80139a90
    lwz     r0, 0xa8(sp)
    lwz     r3, 0xac(sp)
    stw     r0, 0x9c(sp)
    lwz     r0, 0xb0(sp)
    stw     r3, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lfs     f1, 0x3c(r30)
    lfs     f0, 0x44(r30)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fsubs   f1, f1, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f7, 0xa4(sp)
    fsubs   f5, f1, f26
    lfs     f0, 0x9c(sp)
    fsubs   f3, f31, f7
    fsubs   f4, f30, f0
    fmuls   f0, f5, f5
    fmuls   f1, f3, f3
    fmadds  f8, f4, f4, f1
    fcmpo   cr0, f8, f0
    ble-    branch_0x80139cdc
    lfs     f0, -0x4dd8(rtoc)
    fcmpo   cr0, f8, f0
    cror    2, 0, 2
    bne-    branch_0x80139cac
    b       branch_0x80139ccc

branch_0x80139cac:
    frsqrte f6, f8
    lfs     f2, -0x4dd4(rtoc)
    lfs     f0, -0x4dd0(rtoc)
    frsp    f6, f6
    fmuls   f1, f6, f6
    fmuls   f2, f2, f6
    fnmsubs  f0, f8, f1, f0
    fmuls   f8, f2, f0
branch_0x80139ccc:
    fmuls   f1, f5, f8
    lfs     f0, 0x9c(sp)
    fmadds  f30, f1, f4, f0
    fmadds  f31, f1, f3, f7
branch_0x80139cdc:
    fmr     f1, f30
    lwz     r3, 0x8(r29)
    fmr     f2, f31
    bl      getWaterHeight__17TBathWaterManagerCFff
    lfs     f2, 0x20(r29)
    fsubs   f4, f29, f30
    fsubs   f5, f27, f31
    lfs     f0, 0x1c(r29)
    fadds   f1, f2, f1
    fmuls   f6, f4, f4
    lfs     f3, 0x14(r31)
    fsubs   f2, f28, f1
    lfs     f4, -0x4dcc(rtoc)
    fmuls   f5, f5, f5
    fmadds  f0, f0, f2, f1
    fsubs   f1, f0, f3
    fmadds  f0, f2, f2, f6
    fmadds  f3, f4, f1, f3
    fadds   f1, f5, f0
    stfs    f3, 0x14(r31)
    lfs     f0, -0x4dc8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80139ee8
    fadds   f5, f6, f5
    lfs     f0, -0x4dd8(rtoc)
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x80139d54
    b       branch_0x80139d78

branch_0x80139d54:
    frsqrte f4, f5
    lfs     f3, -0x4dd4(rtoc)
    lfs     f0, -0x4dd0(rtoc)
    frsp    f4, f4
    fmuls   f1, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f5, f1, f0
    fmuls   f0, f3, f0
    fmuls   f5, f5, f0
branch_0x80139d78:
    fmr     f1, f5
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x4db0(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x4dc4(rtoc)
    stw     r0, 0x134(sp)
    lis     r0, 0x4330
    lfs     f3, -0x4dc0(rtoc)
    stw     r0, 0x130(sp)
    lfd     f1, 0x130(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fcmpo   cr0, f0, f3
    bge-    branch_0x80139db8
    b       branch_0x80139dcc

branch_0x80139db8:
    lfs     f3, -0x4dbc(rtoc)
    fcmpo   cr0, f0, f3
    ble-    branch_0x80139dc8
    b       branch_0x80139dcc

branch_0x80139dc8:
    fmr     f3, f0
branch_0x80139dcc:
    lfs     f1, 0x30(r31)
    lfs     f2, -0x4db8(rtoc)
    fsubs   f0, f3, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x30(r31)
    lfs     f0, -0x4dd8(rtoc)
    stfs    f0, 0x38(r31)
    lfs     f1, 0x10(r29)
    lfs     f0, 0x18(r29)
    lwz     r3, 0x4(r29)
    fadds   f0, f1, f0
    lfs     f1, -0x4dd4(rtoc)
    cmplwi  r3, 0x0
    fmuls   f26, f1, f0
    beq-    branch_0x80139ee8
    addi    r30, r3, 0x170
    lfs     f1, 0x174(r3)
    lfs     f0, 0x44(r30)
    addi    r3, sp, 0x84
    lfs     f3, 0x8(r30)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r30)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80139a90
    lwz     r0, 0x84(sp)
    lwz     r3, 0x88(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x7c(sp)
    stw     r0, 0x80(sp)
    lfs     f1, 0x3c(r30)
    lfs     f0, 0x44(r30)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fsubs   f1, f1, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x18(r31)
    fsubs   f5, f1, f26
    lfs     f7, 0x80(sp)
    lfs     f2, 0x10(r31)
    fsubs   f3, f0, f7
    lfs     f1, 0x78(sp)
    fmuls   f0, f5, f5
    fsubs   f4, f2, f1
    fmuls   f1, f3, f3
    fmadds  f8, f4, f4, f1
    fcmpo   cr0, f8, f0
    ble-    branch_0x80139ed4
    lfs     f0, -0x4dd8(rtoc)
    fcmpo   cr0, f8, f0
    cror    2, 0, 2
    bne-    branch_0x80139e9c
    b       branch_0x80139ebc

branch_0x80139e9c:
    frsqrte f6, f8
    lfs     f2, -0x4dd4(rtoc)
    lfs     f0, -0x4dd0(rtoc)
    frsp    f6, f6
    fmuls   f1, f6, f6
    fmuls   f2, f2, f6
    fnmsubs  f0, f8, f1, f0
    fmuls   f8, f2, f0
branch_0x80139ebc:
    fmuls   f2, f5, f8
    lfs     f0, 0x78(sp)
    fmadds  f1, f2, f4, f0
    fmadds  f0, f2, f3, f7
    stfs    f1, 0x10(r31)
    stfs    f0, 0x18(r31)
branch_0x80139ed4:
    lfs     f0, 0x14(r31)
    lfs     f1, 0x7c(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80139ee8
    stfs    f1, 0x14(r31)
branch_0x80139ee8:
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lfd     f30, 0x168(sp)
    mtlr    r0
    lfd     f29, 0x160(sp)
    lfd     f28, 0x158(sp)
    lfd     f27, 0x150(sp)
    lfd     f26, 0x148(sp)
    lwz     r31, 0x144(sp)
    lwz     r30, 0x140(sp)
    lwz     r29, 0x13c(sp)
    addi    sp, sp, 0x178
    blr


.globl bind__14TBathtubBinderFP10TLiveActor
bind__14TBathtubBinderFP10TLiveActor: # 0x80139f1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x4(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x80139f40
    lbz     r0, 0x29a(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x80139f44
branch_0x80139f40:
    bl      float___14TBathtubBinderFP10TLiveActor
branch_0x80139f44:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl init__14TBathtubBinderFfffff
init__14TBathtubBinderFfffff: # 0x80139f54
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    fmr     f31, f5
    stfd    f30, 0x78(sp)
    fmr     f30, f4
    stfd    f29, 0x70(sp)
    fmr     f29, f3
    stfd    f28, 0x68(sp)
    fmr     f28, f2
    stfd    f27, 0x60(sp)
    fmr     f27, f1
    stw     r31, 0x5c(sp)
    addi    r31, r5, 0x7000
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    mr      r29, r3
    addi    r3, r31, 0xe0
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0xe0
    mtlr    r12
    blrl
    stw     r3, 0x4(r29)
    addi    r3, r31, 0xec
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0xec
    mtlr    r12
    blrl
    stw     r3, 0x8(r29)
    stfs    f31, 0x20(r29)
    stfs    f27, 0xc(r29)
    stfs    f28, 0x10(r29)
    stfs    f29, 0x14(r29)
    stfs    f30, 0x18(r29)
    lfs     f1, 0x18(r29)
    lfs     f0, 0x10(r29)
    fadds   f0, f0, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x1c(r29)
    lwz     r0, 0x4(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8013a03c
    li      r0, 0x0
    stw     r0, 0x8(r29)
branch_0x8013a03c:
    lwz     r0, 0x4(r29)
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    lfd     f29, 0x70(sp)
    lfd     f28, 0x68(sp)
    lfd     f27, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl __dt__14TBathtubBinderFv
__dt__14TBathtubBinderFv: # 0x8013a07c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013a0c4
    lis     r3, 0x803c
    subi    r0, r3, 0x958
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7TBinderFv
    extsh.  r0, r31
    ble-    branch_0x8013a0c4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013a0c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__14TBathtubBinderFv
__ct__14TBathtubBinderFv: # 0x8013a0e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__7TBinderFv
    lis     r3, 0x803c
    subi    r0, r3, 0x958
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x4(r31)
    stw     r0, 0x8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

