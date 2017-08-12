
.globl GXProject
GXProject: # 0x80362ac0
    lfs     f4, 0x0(r3)
    lfs     f0, 0x4(r3)
    lfs     f6, 0x10(r3)
    fmuls   f10, f4, f1
    lfs     f5, 0x14(r3)
    fmuls   f9, f0, f2
    lfs     f4, 0x20(r3)
    lfs     f0, 0x24(r3)
    lfs     f11, 0x8(r3)
    fmuls   f7, f6, f1
    fmuls   f6, f5, f2
    lfs     f8, 0x18(r3)
    lfs     f5, 0x28(r3)
    fmuls   f4, f4, f1
    fmuls   f2, f0, f2
    fmuls   f11, f11, f3
    lfs     f1, 0xc08(r2)
    fadds   f9, f10, f9
    lfs     f0, 0x0(r4)
    fmuls   f8, f8, f3
    fadds   f6, f7, f6
    lfs     f10, 0xc(r3)
    fadds   f9, f11, f9
    lfs     f7, 0x1c(r3)
    fadds   f6, f8, f6
    fmuls   f3, f5, f3
    lfs     f5, 0x2c(r3)
    fadds   f2, f4, f2
    fcmpu   cr0, f1, f0
    fadds   f8, f10, f9
    fadds   f0, f3, f2
    fadds   f7, f7, f6
    fadds   f9, f5, f0
    bne-    branch_0x80362b90
    fneg    f0, f9
    lfs     f1, 0xc0c(r2)
    lfs     f6, 0x4(r4)
    lfs     f5, 0x8(r4)
    fdivs   f0, f1, f0
    lfs     f4, 0xc(r4)
    lfs     f3, 0x10(r4)
    lfs     f1, 0x14(r4)
    lfs     f2, 0x18(r4)
    fmuls   f1, f9, f1
    fmuls   f6, f8, f6
    fmuls   f5, f9, f5
    fmuls   f4, f7, f4
    fmuls   f3, f9, f3
    fadds   f6, f6, f5
    fadds   f7, f2, f1
    fadds   f3, f4, f3
    b       branch_0x80362bc4

branch_0x80362b90:
    lfs     f2, 0x4(r4)
    lfs     f1, 0xc(r4)
    lfs     f0, 0x14(r4)
    fmuls   f5, f8, f2
    lfs     f6, 0x8(r4)
    fmuls   f3, f7, f1
    lfs     f4, 0x10(r4)
    fmuls   f1, f9, f0
    lfs     f2, 0x18(r4)
    fadds   f6, f6, f5
    fadds   f3, f4, f3
    lfs     f0, 0xc0c(r2)
    fadds   f7, f2, f1
branch_0x80362bc4:
    lfs     f4, 0x8(r5)
    fneg    f1, f3
    lfs     f5, 0xc10(r2)
    fmuls   f2, f6, f4
    lfs     f3, 0x0(r5)
    fmuls   f4, f4, f5
    fmuls   f2, f2, f5
    fmuls   f2, f0, f2
    fadds   f2, f3, f2
    fadds   f2, f4, f2
    stfs    f2, 0x0(r6)
    lfs     f3, 0xc(r5)
    lfs     f2, 0x4(r5)
    fmuls   f1, f1, f3
    fmuls   f3, f3, f5
    fmuls   f1, f1, f5
    fmuls   f1, f0, f1
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    stfs    f1, 0x0(r7)
    lfs     f2, 0x14(r5)
    lfs     f1, 0x10(r5)
    fsubs   f1, f2, f1
    fmuls   f1, f7, f1
    fmuls   f0, f0, f1
    fadds   f0, f2, f0
    stfs    f0, 0x0(r8)
    blr


.globl GXSetProjection
GXSetProjection: # 0x80362c34
    lwz     r5, R13Off_m0x72f8(r13)
    cmpwi   r4, 0x1
    stw     r4, 0x420(r5)
    lfs     f0, 0x0(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    stfs    f0, 0x424(r4)
    lfs     f0, 0x14(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    stfs    f0, 0x42c(r4)
    lfs     f0, 0x28(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    stfs    f0, 0x434(r4)
    lfs     f0, 0x2c(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    stfs    f0, 0x438(r4)
    bne-    branch_0x80362c90
    lfs     f0, 0xc(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    stfs    f0, 0x428(r4)
    lfs     f0, 0x1c(r3)
    lwz     r3, R13Off_m0x72f8(r13)
    stfs    f0, 0x430(r3)
    b       branch_0x80362ca8

branch_0x80362c90:
    lfs     f0, 0x8(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    stfs    f0, 0x428(r4)
    lfs     f0, 0x18(r3)
    lwz     r3, R13Off_m0x72f8(r13)
    stfs    f0, 0x430(r3)
branch_0x80362ca8:
    li      r0, 0x10
    lwz     r4, R13Off_m0x72f8(r13)
    lis     r5, 0xcc01
    lis     r3, unk_00061020@h
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_00061020@l
    stw     r0, -0x8000(r5)
    li      r0, 0x1
    lfs     f0, 0x424(r4)
    stfs    f0, -0x8000(r5)
    lfs     f0, 0x428(r4)
    stfs    f0, -0x8000(r5)
    lfs     f0, 0x42c(r4)
    stfs    f0, -0x8000(r5)
    lfs     f0, 0x430(r4)
    stfs    f0, -0x8000(r5)
    lfs     f0, 0x434(r4)
    stfs    f0, -0x8000(r5)
    lfs     f0, 0x438(r4)
    stfs    f0, -0x8000(r5)
    lwz     r3, 0x420(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXGetProjectionv
GXGetProjectionv: # 0x80362d08
    stwu    sp, -0x18(sp)
    lis     r0, 0x4330
    lwz     r4, R13Off_m0x72f8(r13)
    lfd     f1, 0xc18(r2)
    lwz     r4, 0x420(r4)
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x0(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x424(r4)
    stfs    f0, 0x4(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x428(r4)
    stfs    f0, 0x8(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x42c(r4)
    stfs    f0, 0xc(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x430(r4)
    stfs    f0, 0x10(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x434(r4)
    stfs    f0, 0x14(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x438(r4)
    stfs    f0, 0x18(r3)
    addi    sp, sp, 0x18
    blr


.globl WriteMTXPS4x3
WriteMTXPS4x3: # 0x80362d80
    psq_l   f0, 0x0(3), 0, 0
    psq_l   f1, 0x8(3), 0, 0
    psq_l   f2, 0x10(3), 0, 0
    psq_l   f3, 0x18(3), 0, 0
    psq_l   f4, 0x20(3), 0, 0
    psq_l   f5, 0x28(3), 0, 0
    psq_st  f0, 0x0(4), 0, 0
    psq_st  f1, 0x0(4), 0, 0
    psq_st  f2, 0x0(4), 0, 0
    psq_st  f3, 0x0(4), 0, 0
    psq_st  f4, 0x0(4), 0, 0
    psq_st  f5, 0x0(4), 0, 0
    blr


.globl WriteMTXPS3x3from3x4
WriteMTXPS3x3from3x4: # 0x80362db4
    psq_l   f0, 0x0(3), 0, 0
    lfs     f1, 0x8(r3)
    psq_l   f2, 0x10(3), 0, 0
    lfs     f3, 0x18(r3)
    psq_l   f4, 0x20(3), 0, 0
    lfs     f5, 0x28(r3)
    psq_st  f0, 0x0(4), 0, 0
    stfs    f1, 0x0(r4)
    psq_st  f2, 0x0(4), 0, 0
    stfs    f3, 0x0(r4)
    psq_st  f4, 0x0(4), 0, 0
    stfs    f5, 0x0(r4)
    blr


.globl WriteMTXPS4x2
WriteMTXPS4x2: # 0x80362de8
    psq_l   f0, 0x0(3), 0, 0
    psq_l   f1, 0x8(3), 0, 0
    psq_l   f2, 0x10(3), 0, 0
    psq_l   f3, 0x18(3), 0, 0
    psq_st  f0, 0x0(4), 0, 0
    psq_st  f1, 0x0(4), 0, 0
    psq_st  f2, 0x0(4), 0, 0
    psq_st  f3, 0x0(4), 0, 0
    blr


.globl GXLoadPosMtxImm
GXLoadPosMtxImm: # 0x80362e0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    li      r6, 0x10
    lis     r5, unk_cc008000@ha
    slwi    r0, r4, 2
    stb     r6, -0x8000(r5)
    oris    r0, r0, 0xb
    stw     r0, -0x8000(r5)
    addi    r4, r5, unk_cc008000@l
    bl      WriteMTXPS4x3
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXLoadPosMtxIndx
GXLoadPosMtxIndx: # 0x80362e48
    slwi    r0, r4, 2
    rlwinm  r0, r0, 0, 20, 15
    ori     r5, r0, 0xb000
    clrlwi  r4, r3, 16
    li      r0, 0x20
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    clrlwi  r5, r5, 16
    slwi    r0, r4, 16
    or      r0, r5, r0
    stw     r0, -0x8000(r3)
    blr


.globl GXLoadNrmMtxImm
GXLoadNrmMtxImm: # 0x80362e78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    mulli   r4, r4, 0x3
    addi    r0, r4, 0x400
    lis     r5, unk_cc008000@ha
    li      r6, 0x10
    stb     r6, -0x8000(r5)
    oris    r0, r0, 0x8
    addi    r4, r5, unk_cc008000@l
    stw     r0, -0x8000(r5)
    bl      WriteMTXPS3x3from3x4
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXLoadNrmMtxIndx3x3
GXLoadNrmMtxIndx3x3: # 0x80362eb8
    mulli   r4, r4, 0x3
    addi    r0, r4, 0x400
    rlwinm  r0, r0, 0, 20, 15
    ori     r5, r0, 0x8000
    clrlwi  r4, r3, 16
    li      r0, 0x28
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    clrlwi  r5, r5, 16
    slwi    r0, r4, 16
    or      r0, r5, r0
    stw     r0, -0x8000(r3)
    blr


.globl GXSetCurrentMtx
GXSetCurrentMtx: # 0x80362eec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, R13Off_m0x72f8(r13)
    addi    r4, r4, 0x80
    lwz     r0, 0x0(r4)
    clrrwi  r0, r0, 6
    or      r0, r0, r3
    stw     r0, 0x0(r4)
    li      r3, 0x0
    bl      __GXSetMatrixIndex
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXLoadTexMtxImm
GXLoadTexMtxImm: # 0x80362f28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    cmplwi  r4, 0x40
    blt-    branch_0x80362f4c
    addi    r0, r4, -0x40
    slwi    r4, r0, 2
    addi    r7, r4, 0x500
    b       branch_0x80362f50

branch_0x80362f4c:
    slwi    r7, r4, 2
branch_0x80362f50:
    cmpwi   r5, 0x1
    bne-    branch_0x80362f60
    li      r4, 0x8
    b       branch_0x80362f64

branch_0x80362f60:
    li      r4, 0xc
branch_0x80362f64:
    addi    r0, r4, -0x1
    slwi    r0, r0, 16
    li      r6, 0x10
    lis     r4, unk_cc008000@ha
    stb     r6, -0x8000(r4)
    or      r0, r7, r0
    cmpwi   r5, 0x0
    stw     r0, -0x8000(r4)
    bne-    branch_0x80362f94
    addi    r4, r4, unk_cc008000@l
    bl      WriteMTXPS4x3
    b       branch_0x80362f9c

branch_0x80362f94:
    addi    r4, r4, -0x8000
    bl      WriteMTXPS4x2
branch_0x80362f9c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXSetViewportJitter
GXSetViewportJitter: # 0x80362fac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stfd    f29, 0x48(sp)
    stfd    f28, 0x40(sp)
    stfd    f27, 0x38(sp)
    stfd    f26, 0x30(sp)
    cmplwi  r3, 0x0
    bne-    branch_0x80362fe0
    lfs     f0, 0xc10(r2)
    fsubs   f2, f2, f0
branch_0x80362fe0:
    lfs     f11, 0xc10(r2)
    fneg    f10, f4
    lfs     f0, 0xc24(r2)
    lfs     f9, 0xc20(r2)
    fmuls   f31, f3, f11
    lwz     r3, R13Off_m0x72f8(r13)
    fmuls   f7, f4, f11
    stfs    f1, 0x43c(r3)
    fadds   f8, f1, f31
    fmuls   f30, f0, f6
    lwz     r3, R13Off_m0x72f8(r13)
    fadds   f1, f2, f7
    stfs    f2, 0x440(r3)
    fmuls   f0, f0, f5
    fmuls   f29, f10, f11
    lwz     r3, R13Off_m0x72f8(r13)
    fadds   f27, f9, f8
    stfs    f3, 0x444(r3)
    fadds   f26, f9, f1
    fsubs   f28, f30, f0
    lwz     r3, R13Off_m0x72f8(r13)
    stfs    f4, 0x448(r3)
    lwz     r3, R13Off_m0x72f8(r13)
    stfs    f5, 0x44c(r3)
    lwz     r3, R13Off_m0x72f8(r13)
    stfs    f6, 0x450(r3)
    lwz     r3, R13Off_m0x72f8(r13)
    lbz     r0, 0x454(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80363064
    fmr     f1, f5
    lfs     f2, 0x458(r3)
    bl      __GXSetRange
branch_0x80363064:
    li      r0, 0x10
    lwz     r3, R13Off_m0x72f8(r13)
    lis     r5, 0xcc01
    lis     r4, unk_0005101a@h
    stb     r0, -0x8000(r5)
    addi    r0, r4, unk_0005101a@l
    stw     r0, -0x8000(r5)
    li      r0, 0x1
    stfs    f31, -0x8000(r5)
    stfs    f29, -0x8000(r5)
    stfs    f28, -0x8000(r5)
    stfs    f27, -0x8000(r5)
    stfs    f26, -0x8000(r5)
    stfs    f30, -0x8000(r5)
    sth     r0, 0x2(r3)
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    lfd     f29, 0x48(sp)
    lfd     f28, 0x40(sp)
    lfd     f27, 0x38(sp)
    lfd     f26, 0x30(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl GXSetViewport
GXSetViewport: # 0x803630c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    li      r3, 0x1
    bl      GXSetViewportJitter
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXGetViewportv
GXGetViewportv: # 0x803630ec
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x43c(r4)
    stfs    f0, 0x0(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x440(r4)
    stfs    f0, 0x4(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x444(r4)
    stfs    f0, 0x8(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x448(r4)
    stfs    f0, 0xc(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x44c(r4)
    stfs    f0, 0x10(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lfs     f0, 0x450(r4)
    stfs    f0, 0x14(r3)
    blr


.globl GXSetScissor
GXSetScissor: # 0x80363138
    lwz     r7, R13Off_m0x72f8(r13)
    addi    r8, r3, 0x156
    addi    r0, r5, -0x1
    addi    r5, r7, 0xf8
    lwz     r3, 0x0(r5)
    add     r0, r8, r0
    addi    r4, r4, 0x156
    clrrwi  r3, r3, 11
    or      r3, r3, r4
    stw     r3, 0x0(r5)
    addi    r3, r6, -0x1
    slwi    r7, r8, 12
    lwz     r5, R13Off_m0x72f8(r13)
    add     r4, r4, r3
    slwi    r3, r0, 12
    addi    r8, r5, 0xf8
    lwz     r0, 0x0(r8)
    li      r6, 0x61
    lis     r5, 0xcc01
    rlwinm  r0, r0, 0, 20, 8
    or      r0, r0, r7
    stw     r0, 0x0(r8)
    li      r0, 0x0
    lwz     r7, R13Off_m0x72f8(r13)
    addi    r8, r7, 0xfc
    lwz     r7, 0x0(r8)
    clrrwi  r7, r7, 11
    or      r4, r7, r4
    stw     r4, 0x0(r8)
    lwz     r4, R13Off_m0x72f8(r13)
    addi    r7, r4, 0xfc
    lwz     r4, 0x0(r7)
    rlwinm  r4, r4, 0, 20, 8
    or      r3, r4, r3
    stw     r3, 0x0(r7)
    stb     r6, -0x8000(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, 0xf8(r4)
    stw     r3, -0x8000(r5)
    stb     r6, -0x8000(r5)
    lwz     r3, 0xfc(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetScissorBoxOffset
GXSetScissorBoxOffset: # 0x803631e8
    addi    r5, r3, 0x156
    lwz     r3, R13Off_m0x72f8(r13)
    addi    r0, r4, 0x156
    srwi    r4, r5, 1
    srwi    r0, r0, 1
    rlwinm  r4, r4, 0, 22, 11
    slwi    r0, r0, 10
    or      r0, r4, r0
    clrlwi  r5, r0, 8
    li      r0, 0x61
    lis     r4, 0xcc01
    stb     r0, -0x8000(r4)
    oris    r5, r5, 0x5900
    li      r0, 0x0
    stw     r5, -0x8000(r4)
    sth     r0, 0x2(r3)
    blr


.globl GXSetClipMode
GXSetClipMode: # 0x8036322c
    li      r0, 0x10
    lwz     r4, R13Off_m0x72f8(r13)
    lis     r6, 0xcc01
    stb     r0, -0x8000(r6)
    li      r5, 0x1005
    li      r0, 0x1
    stw     r5, -0x8000(r6)
    stw     r3, -0x8000(r6)
    sth     r0, 0x2(r4)
    blr


.globl __GXSetMatrixIndex
__GXSetMatrixIndex: # 0x80363254
    cmpwi   r3, 0x5
    bge-    branch_0x80363294
    li      r0, 0x8
    lwz     r4, R13Off_m0x72f8(r13)
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x30
    li      r3, 0x10
    stb     r0, -0x8000(r5)
    li      r0, 0x1018
    lwz     r4, 0x80(r4)
    stw     r4, -0x8000(r5)
    stb     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    stw     r4, -0x8000(r5)
    b       branch_0x803632c8

branch_0x80363294:
    li      r0, 0x8
    lwz     r4, R13Off_m0x72f8(r13)
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x40
    li      r3, 0x10
    stb     r0, -0x8000(r5)
    li      r0, 0x1019
    lwz     r4, 0x84(r4)
    stw     r4, -0x8000(r5)
    stb     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    stw     r4, -0x8000(r5)
branch_0x803632c8:
    lwz     r3, R13Off_m0x72f8(r13)
    li      r0, 0x1
    sth     r0, 0x2(r3)
    blr

