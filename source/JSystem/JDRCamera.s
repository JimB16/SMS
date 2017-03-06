
.globl __dt__Q26JDrama7TCameraFv
__dt__Q26JDrama7TCameraFv: # 0x802f70b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f7134
    lis     r3, 0x803e
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x20
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JStage7TCameraFv
    cmplwi  r30, 0x0
    beq-    branch_0x802f7124
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r30)
    beq-    branch_0x802f7124
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f7124:
    extsh.  r0, r31
    ble-    branch_0x802f7134
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f7134:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl JSGGetFlag__Q26JDrama7TCameraCFv
JSGGetFlag__Q26JDrama7TCameraCFv: # 0x802f7150
    lhz     r3, 0x24(r3)
    blr


.globl JSGSetFlag__Q26JDrama7TCameraFUl
JSGSetFlag__Q26JDrama7TCameraFUl: # 0x802f7158
    sth     r4, 0x24(r3)
    blr


.globl JSGGetProjectionNear__Q26JDrama7TCameraCFv
JSGGetProjectionNear__Q26JDrama7TCameraCFv: # 0x802f7160
    lfs     f1, 0x28(r3)
    blr


.globl JSGSetProjectionNear__Q26JDrama7TCameraFf
JSGSetProjectionNear__Q26JDrama7TCameraFf: # 0x802f7168
    stfs    f1, 0x28(r3)
    blr


.globl JSGGetProjectionFar__Q26JDrama7TCameraCFv
JSGGetProjectionFar__Q26JDrama7TCameraCFv: # 0x802f7170
    lfs     f1, 0x2c(r3)
    blr


.globl JSGSetProjectionFar__Q26JDrama7TCameraFf
JSGSetProjectionFar__Q26JDrama7TCameraFf: # 0x802f7178
    stfs    f1, 0x2c(r3)
    blr


.globl load__Q26JDrama12TPolarCameraFR20JSUMemoryInputStream
load__Q26JDrama12TPolarCameraFR20JSUMemoryInputStream: # 0x802f7180
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama10TPlacementFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x24
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f0, 0x24(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x20
    stfs    f0, 0x3c(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f0, 0x20(sp)
    stfs    f0, 0x38(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl perform__Q26JDrama12TPolarCameraFUlPQ26JDrama9TGraphics
perform__Q26JDrama12TPolarCameraFUlPQ26JDrama9TGraphics: # 0x802f71e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a0(sp)
    stfd    f31, 0x198(sp)
    stfd    f30, 0x190(sp)
    stfd    f29, 0x188(sp)
    stfd    f28, 0x180(sp)
    stfd    f27, 0x178(sp)
    stfd    f26, 0x170(sp)
    stfd    f25, 0x168(sp)
    stfd    f24, 0x160(sp)
    stfd    f23, 0x158(sp)
    stfd    f22, 0x150(sp)
    stfd    f21, 0x148(sp)
    stw     r31, 0x144(sp)
    stw     r30, 0x140(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x13c(sp)
    addi    r29, r4, 0x0
    andi.   r0, r29, 0x14
    stw     r28, 0x138(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x802f75dc
    addi    r31, r30, 0x74
    lfs     f1, 0x30(r28)
    lfs     f2, 0x34(r28)
    mr      r3, r31
    lfs     f3, 0x28(r28)
    lfs     f4, 0x2c(r28)
    bl      C_MTXPerspective
    lfs     f0, 0x28(r28)
    stfs    f0, 0xe8(r30)
    lfs     f0, 0x2c(r28)
    stfs    f0, 0xec(r30)
    lfs     f0, 0x40(r28)
    lfs     f31, 0x3f0(rtoc)
    fneg    f0, f0
    lfs     f1, 0x3f8(rtoc)
    lfs     f2, 0x44(r28)
    fmr     f30, f31
    lfs     f29, 0x3f4(rtoc)
    fmuls   f23, f1, f0
    fneg    f28, f2
    fmr     f1, f23
    bl      sinf
    fmr     f22, f1
    fmr     f1, f23
    bl      cosf
    fneg    f0, f22
    stfs    f1, 0xd4(sp)
    addi    r3, sp, 0xa4
    stfs    f0, 0xd8(sp)
    stfs    f22, 0xe4(sp)
    stfs    f1, 0xe8(sp)
    lfs     f1, 0x3f4(rtoc)
    stfs    f1, 0xfc(sp)
    lfs     f0, 0x3f0(rtoc)
    stfs    f0, 0xf8(sp)
    stfs    f0, 0xec(sp)
    stfs    f0, 0xf4(sp)
    stfs    f0, 0xdc(sp)
    stfs    f0, 0xe0(sp)
    stfs    f0, 0xf0(sp)
    stfs    f0, 0x100(sp)
    lfs     f2, 0xe4(sp)
    lfs     f3, 0xf0(sp)
    fmuls   f10, f30, f2
    lfs     f11, 0xd4(sp)
    lfs     f4, 0xe8(sp)
    fmuls   f6, f29, f2
    lfs     f9, 0xec(sp)
    fmuls   f7, f30, f4
    lfs     f25, 0xd8(sp)
    fmuls   f26, f30, f9
    lfs     f5, 0xf4(sp)
    fmadds  f13, f30, f11, f10
    fmadds  f23, f29, f11, f10
    lfs     f2, 0xe0(sp)
    fmadds  f11, f30, f11, f6
    lfs     f6, 0xf8(sp)
    fmuls   f12, f30, f3
    fmuls   f8, f29, f3
    fmuls   f3, f29, f4
    lfs     f4, 0xdc(sp)
    fmadds  f27, f1, f5, f13
    fmadds  f13, f30, f2, f12
    fmadds  f10, f30, f25, f3
    fmuls   f9, f29, f9
    lfs     f3, 0x100(sp)
    fmadds  f12, f29, f2, f12
    fmadds  f2, f30, f2, f8
    fmadds  f24, f30, f25, f7
    fmadds  f22, f29, f25, f7
    lfs     f7, 0xfc(sp)
    fmadds  f8, f31, f3, f2
    stfs    f27, 0x8(sp)
    fmadds  f27, f1, f6, f24
    fmadds  f24, f1, f3, f13
    fmadds  f25, f30, f4, f26
    fmadds  f2, f31, f6, f22
    stfs    f27, 0xc(sp)
    fmadds  f13, f29, f4, f26
    fmadds  f1, f1, f7, f25
    fmadds  f12, f31, f3, f12
    fmadds  f9, f30, f4, f9
    stfs    f1, 0x10(sp)
    fadds   f4, f28, f24
    fmadds  f1, f31, f5, f23
    fmadds  f3, f31, f7, f13
    stfs    f4, 0x14(sp)
    fadds   f4, f0, f12
    fmadds  f5, f31, f5, f11
    fmadds  f6, f31, f6, f10
    fmadds  f7, f31, f7, f9
    fadds   f8, f0, f8
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    lfs     f0, 0x3c(r28)
    lfs     f1, 0x3f8(rtoc)
    fneg    f0, f0
    fmuls   f22, f1, f0
    fmr     f1, f22
    bl      sinf
    fmr     f31, f1
    fmr     f1, f22
    bl      cosf
    lfs     f10, 0x3f0(rtoc)
    fmr     f0, f1
    lfs     f2, 0xc8(sp)
    fneg    f21, f31
    lfs     f9, 0xa8(sp)
    fmuls   f7, f2, f10
    lfs     f8, 0xc4(sp)
    fmuls   f1, f2, f0
    fmuls   f4, f2, f21
    lfs     f2, 0x3f4(rtoc)
    lfs     f12, 0xb8(sp)
    fmadds  f23, f8, f10, f1
    lfs     f3, 0xcc(sp)
    fmadds  f24, f8, f10, f4
    lfs     f5, 0xb4(sp)
    fmadds  f11, f8, f2, f7
    fmadds  f30, f8, f10, f7
    lfs     f6, 0xa4(sp)
    fmuls   f29, f9, f10
    lfs     f1, 0xd0(sp)
    fmuls   f28, f9, f0
    fmuls   f27, f9, f21
    lfs     f7, 0xbc(sp)
    fmadds  f26, f6, f10, f29
    lfs     f9, 0xac(sp)
    fmuls   f25, f12, f10
    fmadds  f22, f3, f10, f11
    lfs     f8, 0xc0(sp)
    fmadds  f11, f5, f10, f25
    lfs     f4, 0xb0(sp)
    fmuls   f13, f12, f0
    fmuls   f12, f12, f21
    stfs    f22, 0x8(sp)
    fmadds  f23, f3, f31, f23
    addi    r3, sp, 0xd4
    fmadds  f26, f9, f10, f26
    fmadds  f11, f7, f10, f11
    fmadds  f30, f3, f10, f30
    fmadds  f24, f3, f0, f24
    stfs    f23, 0xc(sp)
    fmadds  f3, f6, f10, f27
    fmadds  f29, f6, f2, f29
    fmadds  f28, f6, f10, f28
    fmadds  f25, f5, f2, f25
    stfs    f24, 0x10(sp)
    fmadds  f6, f5, f10, f13
    fmadds  f12, f5, f10, f12
    fadds   f5, f1, f30
    fmadds  f1, f9, f10, f29
    fmadds  f2, f9, f31, f28
    stfs    f5, 0x14(sp)
    fmadds  f3, f9, f0, f3
    fadds   f4, f4, f26
    fmadds  f5, f7, f10, f25
    fmadds  f6, f7, f31, f6
    fmadds  f7, f7, f0, f12
    fadds   f8, f8, f11
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    lfs     f1, 0x3f8(rtoc)
    lfs     f0, 0x38(r28)
    fmuls   f22, f1, f0
    fmr     f1, f22
    bl      sinf
    fmr     f31, f1
    fmr     f1, f22
    bl      cosf
    lfs     f2, 0xf8(sp)
    fneg    f4, f31
    lfs     f6, 0x3f0(rtoc)
    addi    r3, sp, 0xa4
    lfs     f12, 0xe8(sp)
    fmuls   f3, f2, f31
    lfs     f8, 0xf4(sp)
    fmuls   f0, f2, f1
    lfs     f9, 0xd8(sp)
    fmuls   f7, f2, f6
    fmadds  f25, f8, f1, f3
    lfs     f2, 0xfc(sp)
    fmadds  f26, f8, f4, f0
    lfs     f22, 0xe4(sp)
    fmadds  f27, f8, f6, f7
    fmuls   f5, f12, f6
    lfs     f3, 0xd4(sp)
    fmuls   f10, f12, f31
    lfs     f0, 0x100(sp)
    fmuls   f30, f9, f31
    fmadds  f11, f22, f6, f5
    lfs     f7, 0x3f4(rtoc)
    fmuls   f5, f12, f1
    lfs     f8, 0xf0(sp)
    fmadds  f31, f2, f6, f27
    fmuls   f28, f9, f6
    lfs     f23, 0xdc(sp)
    fmuls   f29, f9, f1
    lfs     f9, 0xec(sp)
    fmadds  f13, f22, f1, f10
    fmadds  f12, f22, f4, f5
    lfs     f22, 0xe0(sp)
    fmadds  f25, f2, f6, f25
    fmadds  f5, f3, f6, f28
    fmadds  f1, f3, f1, f30
    fmadds  f28, f2, f6, f26
    stfs    f25, 0x8(sp)
    fmadds  f10, f9, f6, f11
    fmadds  f3, f3, f4, f29
    fmadds  f4, f23, f6, f5
    fmadds  f2, f2, f7, f27
    stfs    f28, 0xc(sp)
    fadds   f0, f0, f31
    fmadds  f1, f23, f6, f1
    stfs    f2, 0x10(sp)
    fmadds  f2, f23, f6, f3
    fmadds  f3, f23, f7, f5
    stfs    f0, 0x14(sp)
    fmadds  f5, f9, f6, f13
    fadds   f4, f22, f4
    fmadds  f6, f9, f6, f12
    fmadds  f7, f9, f7, f11
    fadds   f8, f8, f10
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    addi    r4, r30, 0xb4
    addi    r3, sp, 0xa4
    bl      PSMTXCopy
    rlwinm. r0, r29, 0, 27, 27
    beq-    branch_0x802f75dc
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      GXSetProjection
branch_0x802f75dc:
    lwz     r0, 0x1a4(sp)
    lfd     f31, 0x198(sp)
    lfd     f30, 0x190(sp)
    mtlr    r0
    lfd     f29, 0x188(sp)
    lfd     f28, 0x180(sp)
    lfd     f27, 0x178(sp)
    lfd     f26, 0x170(sp)
    lfd     f25, 0x168(sp)
    lfd     f24, 0x160(sp)
    lfd     f23, 0x158(sp)
    lfd     f22, 0x150(sp)
    lfd     f21, 0x148(sp)
    lwz     r31, 0x144(sp)
    lwz     r30, 0x140(sp)
    lwz     r29, 0x13c(sp)
    lwz     r28, 0x138(sp)
    addi    sp, sp, 0x1a0
    blr


.globl JSGGetProjectionType__Q26JDrama12TPolarCameraCFv
JSGGetProjectionType__Q26JDrama12TPolarCameraCFv: # 0x802f7628
    li      r3, 0x1
    blr


.globl JSGSetProjectionType__Q26JDrama12TPolarCameraFQ26JStage18TECameraProjection
JSGSetProjectionType__Q26JDrama12TPolarCameraFQ26JStage18TECameraProjection: # 0x802f7630
    blr


.globl JSGGetProjectionFovy__Q26JDrama12TPolarCameraCFv
JSGGetProjectionFovy__Q26JDrama12TPolarCameraCFv: # 0x802f7634
    lfs     f1, 0x30(r3)
    blr


.globl JSGSetProjectionFovy__Q26JDrama12TPolarCameraFf
JSGSetProjectionFovy__Q26JDrama12TPolarCameraFf: # 0x802f763c
    stfs    f1, 0x30(r3)
    blr


.globl JSGGetProjectionAspect__Q26JDrama12TPolarCameraCFv
JSGGetProjectionAspect__Q26JDrama12TPolarCameraCFv: # 0x802f7644
    lfs     f1, 0x34(r3)
    blr


.globl JSGSetProjectionAspect__Q26JDrama12TPolarCameraFf
JSGSetProjectionAspect__Q26JDrama12TPolarCameraFf: # 0x802f764c
    stfs    f1, 0x34(r3)
    blr


.globl perform__Q26JDrama13TLookAtCameraFUlPQ26JDrama9TGraphics
perform__Q26JDrama13TLookAtCameraFUlPQ26JDrama9TGraphics: # 0x802f7654
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    andi.   r0, r29, 0x14
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x802f76d8
    addi    r31, r30, 0x74
    lfs     f1, 0x48(r28)
    lfs     f2, 0x4c(r28)
    mr      r3, r31
    lfs     f3, 0x28(r28)
    lfs     f4, 0x2c(r28)
    bl      C_MTXPerspective
    lfs     f0, 0x28(r28)
    addi    r3, r30, 0xb4
    addi    r4, r28, 0x10
    stfs    f0, 0xe8(r30)
    addi    r5, r28, 0x30
    addi    r6, r28, 0x3c
    lfs     f0, 0x2c(r28)
    stfs    f0, 0xec(r30)
    bl      C_MTXLookAt
    rlwinm. r0, r29, 0, 27, 27
    beq-    branch_0x802f76d8
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      GXSetProjection
branch_0x802f76d8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl JSGGetProjectionType__Q26JDrama13TLookAtCameraCFv
JSGGetProjectionType__Q26JDrama13TLookAtCameraCFv: # 0x802f76f8
    li      r3, 0x1
    blr


.globl JSGSetProjectionType__Q26JDrama13TLookAtCameraFQ26JStage18TECameraProjection
JSGSetProjectionType__Q26JDrama13TLookAtCameraFQ26JStage18TECameraProjection: # 0x802f7700
    blr


.globl JSGGetProjectionFovy__Q26JDrama13TLookAtCameraCFv
JSGGetProjectionFovy__Q26JDrama13TLookAtCameraCFv: # 0x802f7704
    lfs     f1, 0x48(r3)
    blr


.globl JSGSetProjectionFovy__Q26JDrama13TLookAtCameraFf
JSGSetProjectionFovy__Q26JDrama13TLookAtCameraFf: # 0x802f770c
    stfs    f1, 0x48(r3)
    blr


.globl JSGGetProjectionAspect__Q26JDrama13TLookAtCameraCFv
JSGGetProjectionAspect__Q26JDrama13TLookAtCameraCFv: # 0x802f7714
    lfs     f1, 0x4c(r3)
    blr


.globl JSGSetProjectionAspect__Q26JDrama13TLookAtCameraFf
JSGSetProjectionAspect__Q26JDrama13TLookAtCameraFf: # 0x802f771c
    stfs    f1, 0x4c(r3)
    blr


.globl JSGGetViewPosition__Q26JDrama13TLookAtCameraCFP3Vec
JSGGetViewPosition__Q26JDrama13TLookAtCameraCFP3Vec: # 0x802f7724
    lwz     r5, 0x10(r3)
    lwz     r0, 0x14(r3)
    stw     r5, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x18(r3)
    stw     r0, 0x8(r4)
    blr


.globl JSGSetViewPosition__Q26JDrama13TLookAtCameraFRC3Vec
JSGSetViewPosition__Q26JDrama13TLookAtCameraFRC3Vec: # 0x802f7740
    lfs     f0, 0x0(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x18(r3)
    blr


.globl JSGGetViewUpVector__Q26JDrama13TLookAtCameraCFP3Vec
JSGGetViewUpVector__Q26JDrama13TLookAtCameraCFP3Vec: # 0x802f775c
    lwz     r5, 0x30(r3)
    lwz     r0, 0x34(r3)
    stw     r5, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x38(r3)
    stw     r0, 0x8(r4)
    blr


.globl JSGSetViewUpVector__Q26JDrama13TLookAtCameraFRC3Vec
JSGSetViewUpVector__Q26JDrama13TLookAtCameraFRC3Vec: # 0x802f7778
    lfs     f0, 0x0(r4)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x38(r3)
    blr


.globl JSGGetViewTargetPosition__Q26JDrama13TLookAtCameraCFP3Vec
JSGGetViewTargetPosition__Q26JDrama13TLookAtCameraCFP3Vec: # 0x802f7794
    lwz     r5, 0x3c(r3)
    lwz     r0, 0x40(r3)
    stw     r5, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x44(r3)
    stw     r0, 0x8(r4)
    blr


.globl JSGSetViewTargetPosition__Q26JDrama13TLookAtCameraFRC3Vec
JSGSetViewTargetPosition__Q26JDrama13TLookAtCameraFRC3Vec: # 0x802f77b0
    lfs     f0, 0x0(r4)
    stfs    f0, 0x3c(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x40(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x44(r3)
    blr


.globl load__Q26JDrama10TOrthoProjFR20JSUMemoryInputStream
load__Q26JDrama10TOrthoProjFR20JSUMemoryInputStream: # 0x802f77cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama10TPlacementFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x30
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x34
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x38
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x3c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl perform__Q26JDrama10TOrthoProjFUlPQ26JDrama9TGraphics
perform__Q26JDrama10TOrthoProjFUlPQ26JDrama9TGraphics: # 0x802f7844
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    andi.   r0, r29, 0x14
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x802f78d0
    addi    r31, r30, 0x74
    lfs     f1, 0x34(r28)
    lfs     f2, 0x3c(r28)
    mr      r3, r31
    lfs     f3, 0x30(r28)
    lfs     f4, 0x38(r28)
    lfs     f5, 0x28(r28)
    lfs     f6, 0x2c(r28)
    bl      C_MTXOrtho
    lfs     f0, 0x28(r28)
    addi    r3, r30, 0xb4
    stfs    f0, 0xe8(r30)
    lfs     f0, 0x2c(r28)
    stfs    f0, 0xec(r30)
    lfs     f1, 0x10(r28)
    lfs     f2, 0x14(r28)
    lfs     f3, 0x18(r28)
    bl      PSMTXTrans
    rlwinm. r0, r29, 0, 27, 27
    beq-    branch_0x802f78d0
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      GXSetProjection
branch_0x802f78d0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl JSGGetProjectionType__Q26JDrama10TOrthoProjCFv
JSGGetProjectionType__Q26JDrama10TOrthoProjCFv: # 0x802f78f0
    li      r3, 0x1
    blr


.globl JSGSetProjectionType__Q26JDrama10TOrthoProjFQ26JStage18TECameraProjection
JSGSetProjectionType__Q26JDrama10TOrthoProjFQ26JStage18TECameraProjection: # 0x802f78f8
    blr


.globl JSGGetProjectionField__Q26JDrama10TOrthoProjCFPf
JSGGetProjectionField__Q26JDrama10TOrthoProjCFPf: # 0x802f78fc
    lfs     f0, 0x30(r3)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x4(r4)
    lfs     f0, 0x38(r3)
    stfs    f0, 0x8(r4)
    lfs     f0, 0x3c(r3)
    stfs    f0, 0xc(r4)
    blr


.globl JSGSetProjectionField__Q26JDrama10TOrthoProjFPCf
JSGSetProjectionField__Q26JDrama10TOrthoProjFPCf: # 0x802f7920
    lfs     f0, 0x0(r4)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x38(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x3c(r3)
    blr


.globl __dt__Q26JDrama10TOrthoProjFv
__dt__Q26JDrama10TOrthoProjFv: # 0x802f7944
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f79dc
    lis     r3, 0x803e
    addi    r3, r3, 0x19c0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x802f79cc
    lis     r3, 0x803e
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x20
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JStage7TCameraFv
    cmplwi  r30, 0x0
    beq-    branch_0x802f79cc
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r30)
    beq-    branch_0x802f79cc
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f79cc:
    extsh.  r0, r31
    ble-    branch_0x802f79dc
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f79dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q26JDrama12TPolarCameraFv
__dt__Q26JDrama12TPolarCameraFv: # 0x802f79f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f7a90
    lis     r3, 0x803e
    addi    r3, r3, 0x1b88
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x802f7a80
    lis     r3, 0x803e
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x20
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JStage7TCameraFv
    cmplwi  r30, 0x0
    beq-    branch_0x802f7a80
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r30)
    beq-    branch_0x802f7a80
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f7a80:
    extsh.  r0, r31
    ble-    branch_0x802f7a90
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f7a90:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl _32___dt__Q26JDrama7TCameraFv
_32___dt__Q26JDrama7TCameraFv: # 0x802f7aac
    subi    r3, r3, 0x20
    b       __dt__Q26JDrama7TCameraFv


.globl _32_JSGSetProjectionAspect__Q26JDrama12TPolarCameraFf
_32_JSGSetProjectionAspect__Q26JDrama12TPolarCameraFf: # 0x802f7ab4
    subi    r3, r3, 0x20
    b       JSGSetProjectionAspect__Q26JDrama12TPolarCameraFf


.globl _32_JSGGetProjectionAspect__Q26JDrama12TPolarCameraCFv
_32_JSGGetProjectionAspect__Q26JDrama12TPolarCameraCFv: # 0x802f7abc
    subi    r3, r3, 0x20
    b       JSGGetProjectionAspect__Q26JDrama12TPolarCameraCFv


.globl _32_JSGSetProjectionFovy__Q26JDrama12TPolarCameraFf
_32_JSGSetProjectionFovy__Q26JDrama12TPolarCameraFf: # 0x802f7ac4
    subi    r3, r3, 0x20
    b       JSGSetProjectionFovy__Q26JDrama12TPolarCameraFf


.globl _32_JSGGetProjectionFovy__Q26JDrama12TPolarCameraCFv
_32_JSGGetProjectionFovy__Q26JDrama12TPolarCameraCFv: # 0x802f7acc
    subi    r3, r3, 0x20
    b       JSGGetProjectionFovy__Q26JDrama12TPolarCameraCFv


.globl _32_JSGSetProjectionType__Q26JDrama12TPolarCameraFQ26JStage18TECameraProjection
_32_JSGSetProjectionType__Q26JDrama12TPolarCameraFQ26JStage18TECameraProjection: # 0x802f7ad4
    subi    r3, r3, 0x20
    b       JSGSetProjectionType__Q26JDrama12TPolarCameraFQ26JStage18TECameraProjection


.globl _32_JSGGetProjectionType__Q26JDrama12TPolarCameraCFv
_32_JSGGetProjectionType__Q26JDrama12TPolarCameraCFv: # 0x802f7adc
    subi    r3, r3, 0x20
    b       JSGGetProjectionType__Q26JDrama12TPolarCameraCFv


.globl _32___dt__Q26JDrama12TPolarCameraFv
_32___dt__Q26JDrama12TPolarCameraFv: # 0x802f7ae4
    subi    r3, r3, 0x20
    b       __dt__Q26JDrama12TPolarCameraFv


.globl _32___dt__Q26JDrama13TLookAtCameraFv
_32___dt__Q26JDrama13TLookAtCameraFv: # 0x802f7aec
    subi    r3, r3, 0x20
    b       __dt__Q26JDrama13TLookAtCameraFv


.globl _32_JSGSetProjectionField__Q26JDrama10TOrthoProjFPCf
_32_JSGSetProjectionField__Q26JDrama10TOrthoProjFPCf: # 0x802f7af4
    subi    r3, r3, 0x20
    b       JSGSetProjectionField__Q26JDrama10TOrthoProjFPCf


.globl _32_JSGGetProjectionField__Q26JDrama10TOrthoProjCFPf
_32_JSGGetProjectionField__Q26JDrama10TOrthoProjCFPf: # 0x802f7afc
    subi    r3, r3, 0x20
    b       JSGGetProjectionField__Q26JDrama10TOrthoProjCFPf


.globl _32_JSGSetProjectionType__Q26JDrama10TOrthoProjFQ26JStage18TECameraProjection
_32_JSGSetProjectionType__Q26JDrama10TOrthoProjFQ26JStage18TECameraProjection: # 0x802f7b04
    subi    r3, r3, 0x20
    b       JSGSetProjectionType__Q26JDrama10TOrthoProjFQ26JStage18TECameraProjection


.globl _32_JSGGetProjectionType__Q26JDrama10TOrthoProjCFv
_32_JSGGetProjectionType__Q26JDrama10TOrthoProjCFv: # 0x802f7b0c
    subi    r3, r3, 0x20
    b       JSGGetProjectionType__Q26JDrama10TOrthoProjCFv


.globl _32___dt__Q26JDrama10TOrthoProjFv
_32___dt__Q26JDrama10TOrthoProjFv: # 0x802f7b14
    subi    r3, r3, 0x20
    b       __dt__Q26JDrama10TOrthoProjFv

