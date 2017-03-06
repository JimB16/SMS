
.globl load__Q26JDrama9TSmJ3DActFR20JSUMemoryInputStream
load__Q26JDrama9TSmJ3DActFR20JSUMemoryInputStream: # 0x802fbefc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    lwz     r3, 0x3c(r31)
    lis     r4, 0x803b
    subi    r4, r4, 0x5b98
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lis     r4, 0x24
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x44(r31)
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fbf64
    lwz     r4, 0x44(r31)
    addi    r3, r30, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x802fbf64:
    stw     r30, 0x48(r31)
    lis     r3, 0x803b
    subi    r4, r3, 0x5b88
    lwz     r3, 0x3c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802fbfe8
    bl      load__20J3DAnmLoaderDataBaseFPCv
    stw     r3, 0x4c(r31)
    lwz     r3, 0x44(r31)
    lwz     r4, 0x4c(r31)
    lwz     r0, 0xc(r3)
    clrlwi  r3, r0, 28
    bl      J3DNewMtxCalcAnm__FUlP15J3DAnmTransform
    stw     r3, 0x54(r31)
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fbfd4
    lis     r3, 0x803b
    subi    r0, r3, 0x2eac
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
branch_0x802fbfd4:
    stw     r30, 0x50(r31)
    lwz     r4, 0x4c(r31)
    lwz     r3, 0x50(r31)
    lha     r0, 0x2(r4)
    sth     r0, 0x8(r3)
branch_0x802fbfe8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl perform__Q26JDrama9TSmJ3DActFUlPQ26JDrama9TGraphics
perform__Q26JDrama9TSmJ3DActFUlPQ26JDrama9TGraphics: # 0x802fc000
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x208(sp)
    stfd    f31, 0x200(sp)
    stfd    f30, 0x1f8(sp)
    stfd    f29, 0x1f0(sp)
    stfd    f28, 0x1e8(sp)
    stfd    f27, 0x1e0(sp)
    stfd    f26, 0x1d8(sp)
    stfd    f25, 0x1d0(sp)
    stfd    f24, 0x1c8(sp)
    stfd    f23, 0x1c0(sp)
    stfd    f22, 0x1b8(sp)
    stfd    f21, 0x1b0(sp)
    stw     r31, 0x1ac(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x1a8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x1a4(sp)
    beq-    branch_0x802fc44c
    lfs     f0, 0x450(rtoc)
    stfs    f0, 0x16c(sp)
    stfs    f0, 0x15c(sp)
    stfs    f0, 0x14c(sp)
    stfs    f0, 0x158(sp)
    stfs    f0, 0x148(sp)
    stfs    f0, 0x164(sp)
    stfs    f0, 0x144(sp)
    stfs    f0, 0x160(sp)
    stfs    f0, 0x150(sp)
    lfs     f0, 0x454(rtoc)
    stfs    f0, 0x168(sp)
    stfs    f0, 0x154(sp)
    stfs    f0, 0x140(sp)
    lfs     f0, 0x10(r30)
    stfs    f0, 0x14c(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x15c(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x16c(sp)
    lfs     f1, 0x458(rtoc)
    lfs     f0, 0x38(r30)
    fmuls   f22, f1, f0
    fmr     f1, f22
    bl      sinf
    fmr     f31, f1
    fmr     f1, f22
    bl      cosf
    lfs     f3, 0x164(sp)
    fneg    f2, f31
    lfs     f6, 0x450(rtoc)
    addi    r3, sp, 0x110
    lfs     f12, 0x154(sp)
    fmuls   f4, f3, f31
    lfs     f8, 0x160(sp)
    fmuls   f0, f3, f1
    lfs     f9, 0x144(sp)
    fmuls   f7, f3, f6
    fmadds  f28, f8, f1, f4
    lfs     f3, 0x168(sp)
    fmadds  f26, f8, f6, f7
    lfs     f29, 0x150(sp)
    fmadds  f27, f8, f2, f0
    fmuls   f5, f12, f6
    lfs     f4, 0x140(sp)
    fmuls   f10, f12, f31
    lfs     f0, 0x16c(sp)
    fmadds  f25, f3, f6, f26
    fmadds  f11, f29, f6, f5
    lfs     f7, 0x454(rtoc)
    fmuls   f5, f12, f1
    lfs     f8, 0x15c(sp)
    fmuls   f22, f9, f6
    fmadds  f12, f29, f2, f5
    lfs     f30, 0x148(sp)
    fmuls   f23, f9, f1
    fmuls   f24, f9, f31
    lfs     f9, 0x158(sp)
    fmadds  f13, f29, f1, f10
    lfs     f29, 0x14c(sp)
    fmadds  f28, f3, f6, f28
    fmadds  f5, f4, f6, f22
    fmadds  f22, f3, f6, f27
    stfs    f28, 0x8(sp)
    fmadds  f10, f9, f6, f11
    fmadds  f1, f4, f1, f24
    fmadds  f2, f4, f2, f23
    fmadds  f4, f30, f6, f5
    stfs    f22, 0xc(sp)
    fmadds  f3, f3, f7, f26
    fadds   f0, f0, f25
    fmadds  f1, f30, f6, f1
    stfs    f3, 0x10(sp)
    fmadds  f3, f30, f7, f5
    fmadds  f2, f30, f6, f2
    fmadds  f5, f9, f6, f13
    fadds   f4, f29, f4
    stfs    f0, 0x14(sp)
    fmadds  f6, f9, f6, f12
    fmadds  f7, f9, f7, f11
    fadds   f8, f8, f10
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    lfs     f1, 0x458(rtoc)
    lfs     f0, 0x34(r30)
    fmuls   f22, f1, f0
    fmr     f1, f22
    bl      sinf
    fmr     f31, f1
    fmr     f1, f22
    bl      cosf
    fmr     f0, f1
    lfs     f6, 0x450(rtoc)
    lfs     f1, 0x134(sp)
    fneg    f9, f31
    lfs     f7, 0x454(rtoc)
    fmuls   f5, f1, f6
    lfs     f8, 0x130(sp)
    lfs     f11, 0x114(sp)
    fmuls   f1, f1, f7
    lfs     f10, 0x124(sp)
    fmadds  f29, f8, f6, f1
    lfs     f2, 0x138(sp)
    fmadds  f25, f8, f0, f5
    lfs     f3, 0x120(sp)
    fmadds  f4, f8, f6, f5
    fmadds  f28, f8, f31, f5
    lfs     f21, 0x110(sp)
    fmuls   f24, f11, f6
    lfs     f1, 0x13c(sp)
    fmuls   f22, f10, f6
    fmuls   f23, f11, f7
    lfs     f8, 0x12c(sp)
    fmuls   f11, f10, f7
    lfs     f7, 0x128(sp)
    fmadds  f30, f2, f9, f25
    fmadds  f27, f2, f6, f4
    lfs     f5, 0x118(sp)
    lfs     f4, 0x11c(sp)
    fmadds  f10, f3, f6, f22
    fmadds  f29, f2, f6, f29
    stfs    f30, 0x8(sp)
    fmadds  f10, f7, f6, f10
    fmadds  f12, f21, f6, f24
    addi    r3, sp, 0x140
    fmadds  f26, f21, f0, f24
    fmadds  f25, f21, f6, f23
    fmadds  f23, f5, f6, f12
    fmadds  f12, f3, f6, f11
    stfs    f29, 0xc(sp)
    fmadds  f2, f2, f0, f28
    fmadds  f13, f3, f0, f22
    fmadds  f11, f3, f31, f22
    fmadds  f24, f21, f31, f24
    stfs    f2, 0x10(sp)
    fadds   f22, f1, f27
    fmadds  f2, f5, f6, f25
    fmadds  f1, f5, f9, f26
    fmadds  f3, f5, f0, f24
    stfs    f22, 0x14(sp)
    fadds   f4, f4, f23
    fmadds  f5, f7, f9, f13
    fmadds  f6, f7, f6, f12
    fmadds  f7, f7, f0, f11
    fadds   f8, f8, f10
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    lfs     f1, 0x458(rtoc)
    lfs     f0, 0x30(r30)
    fmuls   f22, f1, f0
    fmr     f1, f22
    bl      sinf
    fmr     f31, f1
    fmr     f1, f22
    bl      cosf
    lfs     f10, 0x450(rtoc)
    fmr     f0, f1
    lfs     f2, 0x164(sp)
    fneg    f21, f31
    lfs     f9, 0x144(sp)
    fmuls   f7, f2, f10
    lfs     f8, 0x160(sp)
    fmuls   f1, f2, f0
    fmuls   f4, f2, f21
    lfs     f2, 0x454(rtoc)
    lfs     f12, 0x154(sp)
    fmadds  f23, f8, f10, f1
    lfs     f3, 0x168(sp)
    fmadds  f24, f8, f10, f4
    lfs     f5, 0x150(sp)
    fmadds  f11, f8, f2, f7
    fmadds  f25, f8, f10, f7
    lfs     f6, 0x140(sp)
    fmuls   f26, f9, f10
    lfs     f1, 0x16c(sp)
    fmuls   f27, f9, f0
    fmuls   f28, f9, f21
    lfs     f7, 0x158(sp)
    fmadds  f29, f6, f10, f26
    lfs     f9, 0x148(sp)
    fmuls   f30, f12, f10
    fmadds  f22, f3, f10, f11
    lfs     f8, 0x15c(sp)
    fmadds  f11, f5, f10, f30
    lfs     f4, 0x14c(sp)
    fmuls   f13, f12, f0
    fmuls   f12, f12, f21
    stfs    f22, 0x8(sp)
    fmadds  f23, f3, f31, f23
    addi    r3, sp, 0x110
    fmadds  f29, f9, f10, f29
    fmadds  f11, f7, f10, f11
    fmadds  f25, f3, f10, f25
    fmadds  f24, f3, f0, f24
    stfs    f23, 0xc(sp)
    fmadds  f3, f6, f10, f28
    fmadds  f26, f6, f2, f26
    fmadds  f27, f6, f10, f27
    fmadds  f30, f5, f2, f30
    stfs    f24, 0x10(sp)
    fmadds  f6, f5, f10, f13
    fmadds  f12, f5, f10, f12
    fadds   f5, f1, f25
    fmadds  f1, f9, f10, f26
    fmadds  f2, f9, f31, f27
    stfs    f5, 0x14(sp)
    fmadds  f3, f9, f0, f3
    fadds   f4, f4, f29
    fmadds  f5, f7, f10, f30
    fmadds  f6, f7, f31, f6
    fmadds  f7, f7, f0, f12
    fadds   f8, f8, f11
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    lwz     r4, 0x48(r30)
    addi    r3, sp, 0x110
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r4, 0x48(r30)
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r4)
    lwz     r0, 0x4c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802fc3f0
    lwz     r3, 0x48(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x802fc44c

branch_0x802fc3f0:
    lwz     r3, 0x50(r30)
    bl      update__12J3DFrameCtrlFv
    lwz     r4, 0x50(r30)
    lwz     r3, 0x4c(r30)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x4(r3)
    lwz     r3, 0x48(r30)
    lwz     r0, 0x54(r30)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x0(r3)
    lwz     r29, 0x58(r3)
    stw     r0, 0x58(r3)
    lwz     r3, 0x48(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x48(r30)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x0(r3)
    stw     r29, 0x58(r3)
branch_0x802fc44c:
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x802fc468
    lwz     r3, 0x48(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802fc468:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x802fc484
    lwz     r3, 0x48(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x802fc484:
    lwz     r0, 0x20c(sp)
    lfd     f31, 0x200(sp)
    lfd     f30, 0x1f8(sp)
    mtlr    r0
    lfd     f29, 0x1f0(sp)
    lfd     f28, 0x1e8(sp)
    lfd     f27, 0x1e0(sp)
    lfd     f26, 0x1d8(sp)
    lfd     f25, 0x1d0(sp)
    lfd     f24, 0x1c8(sp)
    lfd     f23, 0x1c0(sp)
    lfd     f22, 0x1b8(sp)
    lfd     f21, 0x1b0(sp)
    lwz     r31, 0x1ac(sp)
    lwz     r30, 0x1a8(sp)
    lwz     r29, 0x1a4(sp)
    addi    sp, sp, 0x208
    blr


.globl __dt__Q26JDrama9TSmJ3DActFv
__dt__Q26JDrama9TSmJ3DActFv: # 0x802fc4cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802fc51c
    lis     r3, 0x803e
    addi    r3, r3, 0x21b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x802fc51c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802fc51c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl _32___dt__Q26JDrama9TSmJ3DActFv
_32___dt__Q26JDrama9TSmJ3DActFv: # 0x802fc538
    subi    r3, r3, 0x20
    b       __dt__Q26JDrama9TSmJ3DActFv

