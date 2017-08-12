
.globl JPASqrtf__Ff
JPASqrtf__Ff: # 0x803279ac
    lfs     f0, 0x878(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x803279c8
    frsqrte f0, f1
    frsp    f0, f0
    fmuls   f1, f1, f0
    blr

branch_0x803279c8:
    fmr     f1, f0
    blr


.globl JPAGetXYZRotateMtx__FsssPA4_f
JPAGetXYZRotateMtx__FsssPA4_f: # 0x803279d0
    lwz     r8, R13Off_m0x5eac(r13)
    clrlwi  r5, r5, 16
    clrlwi  r0, r4, 16
    lwz     r9, R13Off_m0x5ea4(r13)
    sraw    r7, r5, r8
    sraw    r4, r0, r8
    slwi    r7, r7, 2
    slwi    r4, r4, 2
    lfsx    f1, r9, r7
    lfsx    f0, r9, r4
    clrlwi  r3, r3, 16
    addi    r4, r6, 0x4
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r6)
    lwz     r8, R13Off_m0x5eac(r13)
    lwz     r9, R13Off_m0x5ea8(r13)
    sraw    r6, r5, r8
    lwz     r11, R13Off_m0x5ea4(r13)
    slwi    r10, r6, 2
    sraw    r7, r3, r8
    lfsx    f3, r9, r10
    sraw    r6, r0, r8
    lfsx    f1, r11, r10
    slwi    r6, r6, 2
    fneg    f3, f3
    lfsx    f0, r9, r6
    slwi    r7, r7, 2
    lfsx    f2, r9, r7
    fmuls   f0, f1, f0
    lfsx    f1, r11, r7
    fmuls   f0, f2, f0
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x0(r4)
    lwz     r8, R13Off_m0x5eac(r13)
    lwz     r10, R13Off_m0x5ea8(r13)
    sraw    r7, r3, r8
    lwz     r9, R13Off_m0x5ea4(r13)
    sraw    r6, r5, r8
    slwi    r11, r6, 2
    sraw    r6, r0, r8
    lfsx    f1, r9, r11
    slwi    r7, r7, 2
    lfsx    f4, r10, r11
    slwi    r6, r6, 2
    lfsx    f2, r9, r7
    lfsx    f0, r10, r6
    lfsx    f3, r10, r7
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x4(r4)
    lfs     f5, 0x878(r2)
    stfs    f5, 0x8(r4)
    lwz     r6, R13Off_m0x5eac(r13)
    lwz     r9, R13Off_m0x5ea8(r13)
    sraw    r8, r5, r6
    lwz     r7, R13Off_m0x5ea4(r13)
    sraw    r6, r0, r6
    slwi    r8, r8, 2
    slwi    r6, r6, 2
    lfsx    f1, r9, r8
    lfsx    f0, r7, r6
    fmuls   f0, f1, f0
    stfs    f0, 0xc(r4)
    lwz     r8, R13Off_m0x5eac(r13)
    lwz     r9, R13Off_m0x5ea8(r13)
    sraw    r7, r3, r8
    lwz     r11, R13Off_m0x5ea4(r13)
    slwi    r7, r7, 2
    sraw    r6, r5, r8
    lfsx    f3, r11, r7
    slwi    r10, r6, 2
    lfsx    f2, r9, r7
    sraw    r6, r0, r8
    lfsx    f4, r11, r10
    slwi    r6, r6, 2
    lfsx    f1, r9, r10
    lfsx    f0, r9, r6
    fmuls   f3, f4, f3
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    fadds   f0, f3, f0
    stfs    f0, 0x10(r4)
    lwz     r7, R13Off_m0x5eac(r13)
    lwz     r8, R13Off_m0x5ea8(r13)
    sraw    r6, r5, r7
    lwz     r9, R13Off_m0x5ea4(r13)
    slwi    r6, r6, 2
    sraw    r5, r3, r7
    lfsx    f3, r9, r6
    slwi    r10, r5, 2
    lfsx    f1, r8, r6
    sraw    r5, r0, r7
    fneg    f4, f3
    slwi    r5, r5, 2
    lfsx    f2, r9, r10
    lfsx    f0, r8, r5
    lfsx    f3, r8, r10
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x14(r4)
    addi    r4, r4, 0x18
    stfs    f5, 0x0(r4)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r5, r0, r5
    slwi    r5, r5, 2
    lfsx    f0, r6, r5
    fneg    f0, f0
    stfs    f0, 0x4(r4)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r8, R13Off_m0x5ea4(r13)
    sraw    r7, r0, r5
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r5, r3, r5
    slwi    r7, r7, 2
    slwi    r5, r5, 2
    lfsx    f1, r8, r7
    lfsx    f0, r6, r5
    fmuls   f0, f1, f0
    stfs    f0, 0x8(r4)
    lwz     r6, R13Off_m0x5eac(r13)
    lwz     r7, R13Off_m0x5ea4(r13)
    sraw    r5, r0, r6
    sraw    r0, r3, r6
    slwi    r3, r5, 2
    slwi    r0, r0, 2
    lfsx    f1, r7, r3
    lfsx    f0, r7, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xc(r4)
    stfs    f5, 0x10(r4)
    blr


.globl JPAGetXYRotateMtx__FssPA4_f
JPAGetXYRotateMtx__FssPA4_f: # 0x80327be8
    lwz     r6, R13Off_m0x5eac(r13)
    clrlwi  r0, r4, 16
    lwz     r7, R13Off_m0x5ea4(r13)
    clrlwi  r3, r3, 16
    sraw    r4, r0, r6
    slwi    r4, r4, 2
    lfsx    f0, r7, r4
    addi    r4, r5, 0x4
    stfs    f0, 0x0(r5)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r7, R13Off_m0x5ea8(r13)
    sraw    r6, r0, r5
    sraw    r5, r3, r5
    slwi    r6, r6, 2
    slwi    r5, r5, 2
    lfsx    f1, r7, r6
    lfsx    f0, r7, r5
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r4)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r8, R13Off_m0x5ea8(r13)
    sraw    r7, r0, r5
    lwz     r6, R13Off_m0x5ea4(r13)
    sraw    r5, r3, r5
    slwi    r7, r7, 2
    slwi    r5, r5, 2
    lfsx    f1, r8, r7
    lfsx    f0, r6, r5
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r4)
    lfs     f2, 0x878(r2)
    stfs    f2, 0x8(r4)
    stfs    f2, 0xc(r4)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    sraw    r5, r3, r5
    slwi    r5, r5, 2
    lfsx    f0, r6, r5
    stfs    f0, 0x10(r4)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r5, r3, r5
    slwi    r5, r5, 2
    lfsx    f0, r6, r5
    fneg    f0, f0
    stfs    f0, 0x14(r4)
    stfs    f2, 0x18(r4)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r5, r0, r5
    slwi    r5, r5, 2
    lfsx    f0, r6, r5
    fneg    f0, f0
    stfs    f0, 0x1c(r4)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r8, R13Off_m0x5ea4(r13)
    sraw    r7, r0, r5
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r5, r3, r5
    slwi    r7, r7, 2
    slwi    r5, r5, 2
    lfsx    f1, r8, r7
    lfsx    f0, r6, r5
    fmuls   f0, f1, f0
    stfs    f0, 0x20(r4)
    lwz     r6, R13Off_m0x5eac(r13)
    lwz     r7, R13Off_m0x5ea4(r13)
    sraw    r5, r0, r6
    sraw    r0, r3, r6
    slwi    r3, r5, 2
    slwi    r0, r0, 2
    lfsx    f1, r7, r3
    lfsx    f0, r7, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x24(r4)
    stfs    f2, 0x28(r4)
    blr


.globl JPAGetYZRotateMtx__FssPA4_f
JPAGetYZRotateMtx__FssPA4_f: # 0x80327d1c
    lwz     r7, R13Off_m0x5eac(r13)
    clrlwi  r0, r4, 16
    clrlwi  r3, r3, 16
    lwz     r8, R13Off_m0x5ea4(r13)
    sraw    r6, r0, r7
    sraw    r4, r3, r7
    slwi    r6, r6, 2
    slwi    r4, r4, 2
    lfsx    f1, r8, r6
    lfsx    f0, r8, r4
    addi    r4, r5, 0x4
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r5)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r5, r0, r5
    slwi    r5, r5, 2
    lfsx    f0, r6, r5
    fneg    f0, f0
    stfs    f0, 0x0(r4)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r8, R13Off_m0x5ea4(r13)
    sraw    r7, r0, r5
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r5, r3, r5
    slwi    r7, r7, 2
    slwi    r5, r5, 2
    lfsx    f1, r8, r7
    lfsx    f0, r6, r5
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r4)
    lfs     f2, 0x878(r2)
    stfs    f2, 0x8(r4)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r8, R13Off_m0x5ea8(r13)
    sraw    r7, r0, r5
    lwz     r6, R13Off_m0x5ea4(r13)
    sraw    r5, r3, r5
    slwi    r7, r7, 2
    slwi    r5, r5, 2
    lfsx    f1, r8, r7
    lfsx    f0, r6, r5
    fmuls   f0, f1, f0
    stfs    f0, 0xc(r4)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    sraw    r5, r0, r5
    slwi    r5, r5, 2
    lfsx    f0, r6, r5
    stfs    f0, 0x10(r4)
    lwz     r6, R13Off_m0x5eac(r13)
    lwz     r7, R13Off_m0x5ea8(r13)
    sraw    r5, r0, r6
    sraw    r0, r3, r6
    slwi    r5, r5, 2
    slwi    r0, r0, 2
    lfsx    f1, r7, r5
    lfsx    f0, r7, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r4)
    stfs    f2, 0x18(r4)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r5, R13Off_m0x5ea8(r13)
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    fneg    f0, f0
    stfs    f0, 0x1c(r4)
    stfs    f2, 0x20(r4)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r5, R13Off_m0x5ea4(r13)
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    stfs    f0, 0x24(r4)
    stfs    f2, 0x28(r4)
    blr


.globl JPAGetYRotateMtx__FsPA4_f
JPAGetYRotateMtx__FsPA4_f: # 0x80327e50
    lwz     r0, R13Off_m0x5eac(r13)
    clrlwi  r5, r3, 16
    lwz     r3, R13Off_m0x5ea4(r13)
    addi    r6, r4, 0x4
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x0(r4)
    lfs     f1, 0x878(r2)
    stfs    f1, 0x4(r4)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r3, R13Off_m0x5ea8(r13)
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfsu   f0, 0x4(r6)
    stfs    f1, 0x4(r6)
    stfs    f1, 0x8(r6)
    lfs     f0, 0x87c(r2)
    stfs    f0, 0xc(r6)
    stfs    f1, 0x10(r6)
    stfs    f1, 0x14(r6)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r3, R13Off_m0x5ea8(r13)
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    fneg    f0, f0
    stfs    f0, 0x18(r6)
    stfs    f1, 0x1c(r6)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r3, R13Off_m0x5ea4(r13)
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x20(r6)
    stfs    f1, 0x24(r6)
    blr


.globl JPAVecToRotaMtx__FPA4_fQ29JGeometry8TVec3_f_Q29JGeometry8TVec3_f_
JPAVecToRotaMtx__FPA4_fQ29JGeometry8TVec3_f_Q29JGeometry8TVec3_f_: # 0x80327ee8
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stfd    f30, 0x20(sp)
    lfs     f6, 0x4(r5)
    lfs     f3, 0x8(r4)
    lfs     f7, 0x0(r4)
    lfs     f2, 0x8(r5)
    fmuls   f0, f3, f6
    lfs     f5, 0x4(r4)
    lfs     f4, 0x0(r5)
    fmuls   f1, f7, f2
    fmsubs  f8, f5, f2, f0
    fmuls   f0, f5, f4
    lfs     f2, 0x878(r2)
    fmsubs  f1, f3, f4, f1
    stfs    f8, 0x14(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x18(sp)
    stfs    f0, 0x1c(sp)
    lfs     f0, 0x18(sp)
    lfs     f1, 0x14(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x1c(sp)
    lfs     f5, 0x4(r4)
    lfs     f4, 0x4(r5)
    fmadds  f0, f1, f1, f0
    fmuls   f4, f5, f4
    lfs     f6, 0x0(r4)
    lfs     f5, 0x0(r5)
    fmadds  f1, f3, f3, f0
    fmadds  f0, f6, f5, f4
    lfs     f4, 0x8(r4)
    fcmpo   cr0, f1, f2
    lfs     f3, 0x8(r5)
    fmadds  f0, f4, f3, f0
    cror    2, 0, 2
    bne-    branch_0x80327f80
    b       branch_0x80327fa4

branch_0x80327f80:
    frsqrte f5, f1
    lfs     f4, 0x880(r2)
    lfs     f2, 0x884(r2)
    frsp    f5, f5
    fmuls   f3, f5, f5
    fmuls   f4, f4, f5
    fnmsubs  f2, f1, f3, f2
    fmuls   f5, f4, f2
    fmuls   f1, f1, f5
branch_0x80327fa4:
    lfs     f2, 0x888(r2)
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x80327fc8
    lfs     f2, 0x878(r2)
    stfs    f2, 0x1c(sp)
    stfs    f2, 0x18(sp)
    stfs    f2, 0x14(sp)
    b       branch_0x80327ff0

branch_0x80327fc8:
    fres    f3, f1
    lfs     f2, 0x14(sp)
    fmuls   f2, f2, f3
    stfs    f2, 0x14(sp)
    lfs     f2, 0x18(sp)
    fmuls   f2, f2, f3
    stfs    f2, 0x18(sp)
    lfs     f2, 0x1c(sp)
    fmuls   f2, f2, f3
    stfs    f2, 0x1c(sp)
branch_0x80327ff0:
    lfs     f7, 0x14(sp)
    lfs     f10, 0x18(sp)
    fmuls   f3, f7, f7
    lfs     f11, 0x1c(sp)
    lfs     f6, 0x87c(r2)
    fmuls   f12, f10, f10
    fmuls   f13, f11, f11
    fsubs   f2, f6, f3
    fmuls   f31, f7, f10
    fsubs   f9, f6, f0
    fmuls   f5, f11, f1
    fmadds  f3, f0, f2, f3
    fmuls   f30, f11, f7
    fmuls   f8, f10, f1
    fmadds  f2, f31, f9, f5
    stfs    f3, 0x0(r3)
    fsubs   f3, f6, f12
    fmsubs  f4, f30, f9, f8
    stfs    f2, 0x4(r3)
    fsubs   f2, f6, f13
    stfs    f4, 0x8(r3)
    fmsubs  f6, f31, f9, f5
    fmuls   f10, f10, f11
    fmuls   f1, f7, f1
    lfs     f7, 0x878(r2)
    fmadds  f5, f0, f3, f12
    fmadds  f3, f30, f9, f8
    stfs    f7, 0xc(r3)
    fmadds  f4, f10, f9, f1
    stfs    f6, 0x10(r3)
    fmsubs  f1, f10, f9, f1
    fmadds  f0, f0, f2, f13
    stfs    f5, 0x14(r3)
    stfs    f4, 0x18(r3)
    stfs    f7, 0x1c(r3)
    stfs    f3, 0x20(r3)
    stfs    f1, 0x24(r3)
    stfs    f0, 0x28(r3)
    stfs    f7, 0x2c(r3)
    lfd     f31, 0x28(sp)
    lfd     f30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl JPAConvertFixToFloat__Fs
JPAConvertFixToFloat__Fs: # 0x8032809c
    extsh   r0, r3
    stwu    sp, -0x28(sp)
    cmpwi   r0, 0x7fff
    bne-    branch_0x803280b4
    lfs     f1, 0x87c(r2)
    b       branch_0x80328150

branch_0x803280b4:
    xoris   r0, r0, 0x8000
    lfd     f1, 0x898(r2)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lis     r3, 0x6666
    lfs     f2, 0x890(r2)
    stw     r0, 0x20(sp)
    lfs     f3, 0x88c(r2)
    addi    r0, r3, 0x6667
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r4, 0x14(sp)
    stfd    f0, 0x18(sp)
    mulhw   r0, r0, r4
    lwz     r5, 0x1c(sp)
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r4
    cmpwi   r0, 0x5
    blt-    branch_0x80328128
    subfic  r0, r0, 0xa
    add     r5, r5, r0
    b       branch_0x8032812c

branch_0x80328128:
    subf    r5, r0, r5
branch_0x8032812c:
    xoris   r0, r5, 0x8000
    lfd     f1, 0x898(r2)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfs     f2, 0x894(r2)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
branch_0x80328150:
    addi    sp, sp, 0x28
    blr


.globl JPAConvertFixVecToFloatVec__FRQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_s_
JPAConvertFixVecToFloatVec__FRQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_s_: # 0x80328158
    stwu    sp, -0x38(sp)
    lha     r0, 0x0(r4)
    cmpwi   r0, 0x7fff
    bne-    branch_0x80328170
    lfs     f0, 0x87c(r2)
    b       branch_0x8032820c

branch_0x80328170:
    xoris   r0, r0, 0x8000
    lfd     f1, 0x898(r2)
    stw     r0, 0x34(sp)
    lis     r0, 0x4330
    lis     r5, unk_66666667@h
    lfs     f2, 0x890(r2)
    stw     r0, 0x30(sp)
    lfs     f3, 0x88c(r2)
    addi    r0, r5, unk_66666667@l
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r6, 0x24(sp)
    stfd    f0, 0x28(sp)
    mulhw   r0, r0, r6
    lwz     r7, 0x2c(sp)
    srawi   r0, r0, 2
    srwi    r5, r0, 31
    add     r0, r0, r5
    mulli   r0, r0, 0xa
    subf    r0, r0, r6
    cmpwi   r0, 0x5
    blt-    branch_0x803281e4
    subfic  r0, r0, 0xa
    add     r7, r7, r0
    b       branch_0x803281e8

branch_0x803281e4:
    subf    r7, r0, r7
branch_0x803281e8:
    xoris   r0, r7, 0x8000
    lfd     f1, 0x898(r2)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f2, 0x894(r2)
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
branch_0x8032820c:
    stfs    f0, 0x0(r3)
    lha     r0, 0x2(r4)
    cmpwi   r0, 0x7fff
    bne-    branch_0x80328224
    lfs     f0, 0x87c(r2)
    b       branch_0x803282c0

branch_0x80328224:
    xoris   r0, r0, 0x8000
    lfd     f1, 0x898(r2)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lis     r5, unk_66666667@h
    lfs     f2, 0x890(r2)
    stw     r0, 0x20(sp)
    lfs     f3, 0x88c(r2)
    addi    r0, r5, unk_66666667@l
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r6, 0x34(sp)
    stfd    f0, 0x28(sp)
    mulhw   r0, r0, r6
    lwz     r7, 0x2c(sp)
    srawi   r0, r0, 2
    srwi    r5, r0, 31
    add     r0, r0, r5
    mulli   r0, r0, 0xa
    subf    r0, r0, r6
    cmpwi   r0, 0x5
    blt-    branch_0x80328298
    subfic  r0, r0, 0xa
    add     r7, r7, r0
    b       branch_0x8032829c

branch_0x80328298:
    subf    r7, r0, r7
branch_0x8032829c:
    xoris   r0, r7, 0x8000
    lfd     f1, 0x898(r2)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f2, 0x894(r2)
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
branch_0x803282c0:
    stfs    f0, 0x4(r3)
    lha     r0, 0x4(r4)
    cmpwi   r0, 0x7fff
    bne-    branch_0x803282d8
    lfs     f0, 0x87c(r2)
    b       branch_0x80328374

branch_0x803282d8:
    xoris   r0, r0, 0x8000
    lfd     f1, 0x898(r2)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lis     r4, unk_66666667@h
    lfs     f2, 0x890(r2)
    stw     r0, 0x20(sp)
    lfs     f3, 0x88c(r2)
    addi    r0, r4, unk_66666667@l
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r5, 0x34(sp)
    stfd    f0, 0x28(sp)
    mulhw   r0, r0, r5
    lwz     r6, 0x2c(sp)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    cmpwi   r0, 0x5
    blt-    branch_0x8032834c
    subfic  r0, r0, 0xa
    add     r6, r6, r0
    b       branch_0x80328350

branch_0x8032834c:
    subf    r6, r0, r6
branch_0x80328350:
    xoris   r0, r6, 0x8000
    lfd     f1, 0x898(r2)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f2, 0x894(r2)
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
branch_0x80328374:
    stfs    f0, 0x8(r3)
    addi    sp, sp, 0x38
    blr


.globl JPAGetRMtxSTVecElement__FPA4_fPA4_fRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
JPAGetRMtxSTVecElement__FPA4_fPA4_fRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x80328380
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r6
    stw     r30, 0x30(sp)
    mr      r30, r5
    stw     r29, 0x2c(sp)
    mr      r29, r4
    stw     r28, 0x28(sp)
    mr      r28, r3
    lfs     f2, 0x0(r3)
    lfs     f1, 0x10(r3)
    fmuls   f2, f2, f2
    lfs     f3, 0x20(r3)
    fmuls   f1, f1, f1
    lfs     f0, 0x878(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x80328424
    frsqrte f1, f4
    lfd     f3, 0x8a0(r2)
    lfd     f2, 0x8a8(r2)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x20(sp)
    lfs     f4, 0x20(sp)
branch_0x80328424:
    stfs    f4, 0x0(r30)
    lfs     f1, 0x4(r28)
    lfs     f0, 0x14(r28)
    fmuls   f2, f1, f1
    lfs     f3, 0x24(r28)
    fmuls   f1, f0, f0
    lfs     f0, 0x878(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x803284a0
    frsqrte f1, f4
    lfd     f3, 0x8a0(r2)
    lfd     f2, 0x8a8(r2)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x1c(sp)
    lfs     f4, 0x1c(sp)
branch_0x803284a0:
    stfs    f4, 0x4(r30)
    lfs     f1, 0x8(r28)
    lfs     f0, 0x18(r28)
    fmuls   f2, f1, f1
    lfs     f3, 0x28(r28)
    fmuls   f1, f0, f0
    lfs     f0, 0x878(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x8032851c
    frsqrte f1, f4
    lfd     f3, 0x8a0(r2)
    lfd     f2, 0x8a8(r2)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x18(sp)
    lfs     f4, 0x18(sp)
branch_0x8032851c:
    stfs    f4, 0x8(r30)
    mr      r3, r29
    bl      PSMTXIdentity
    lfs     f0, 0x878(r2)
    lfs     f1, 0x0(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80328564
    lfs     f0, 0x0(r28)
    fdivs   f0, f0, f1
    stfs    f0, 0x0(r29)
    lfs     f1, 0x10(r28)
    lfs     f0, 0x0(r30)
    fdivs   f0, f1, f0
    stfs    f0, 0x10(r29)
    lfs     f1, 0x20(r28)
    lfs     f0, 0x0(r30)
    fdivs   f0, f1, f0
    stfs    f0, 0x20(r29)
branch_0x80328564:
    lfs     f0, 0x878(r2)
    lfs     f1, 0x4(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x803285a0
    lfs     f0, 0x4(r28)
    fdivs   f0, f0, f1
    stfs    f0, 0x4(r29)
    lfs     f1, 0x14(r28)
    lfs     f0, 0x4(r30)
    fdivs   f0, f1, f0
    stfs    f0, 0x14(r29)
    lfs     f1, 0x24(r28)
    lfs     f0, 0x4(r30)
    fdivs   f0, f1, f0
    stfs    f0, 0x24(r29)
branch_0x803285a0:
    lfs     f0, 0x878(r2)
    lfs     f1, 0x8(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x803285dc
    lfs     f0, 0x8(r28)
    fdivs   f0, f0, f1
    stfs    f0, 0x8(r29)
    lfs     f1, 0x18(r28)
    lfs     f0, 0x8(r30)
    fdivs   f0, f1, f0
    stfs    f0, 0x18(r29)
    lfs     f1, 0x28(r28)
    lfs     f0, 0x8(r30)
    fdivs   f0, f1, f0
    stfs    f0, 0x28(r29)
branch_0x803285dc:
    lfs     f2, 0x2c(r28)
    lfs     f1, 0x1c(r28)
    lfs     f0, 0xc(r28)
    stfs    f0, 0x0(r31)
    stfs    f1, 0x4(r31)
    stfs    f2, 0x8(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl JPAGetRMtxTVecElement__FPA4_fPA4_fRQ29JGeometry8TVec3_f_
JPAGetRMtxTVecElement__FPA4_fPA4_fRQ29JGeometry8TVec3_f_: # 0x80328614
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stfd    f29, 0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r5
    stw     r30, 0x48(sp)
    mr      r30, r4
    stw     r29, 0x44(sp)
    mr      r29, r3
    lfs     f2, 0x0(r3)
    lfs     f1, 0x10(r3)
    fmuls   f2, f2, f2
    lfs     f3, 0x20(r3)
    fmuls   f1, f1, f1
    lfs     f0, 0x878(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    ble-    branch_0x803286bc
    frsqrte f1, f31
    lfd     f3, 0x8a0(r2)
    lfd     f2, 0x8a8(r2)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f31, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f31, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f31, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f31, f0
    frsp    f0, f0
    stfs    f0, 0x28(sp)
    lfs     f31, 0x28(sp)
branch_0x803286bc:
    lfs     f1, 0x4(r29)
    lfs     f0, 0x14(r29)
    fmuls   f2, f1, f1
    lfs     f3, 0x24(r29)
    fmuls   f1, f0, f0
    lfs     f0, 0x878(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f29, f3, f1
    fcmpo   cr0, f29, f0
    ble-    branch_0x80328734
    frsqrte f1, f29
    lfd     f3, 0x8a0(r2)
    lfd     f2, 0x8a8(r2)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f29, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f29, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f29, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f29, f0
    frsp    f0, f0
    stfs    f0, 0x24(sp)
    lfs     f29, 0x24(sp)
branch_0x80328734:
    lfs     f1, 0x8(r29)
    lfs     f0, 0x18(r29)
    fmuls   f2, f1, f1
    lfs     f3, 0x28(r29)
    fmuls   f1, f0, f0
    lfs     f0, 0x878(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f30, f3, f1
    fcmpo   cr0, f30, f0
    ble-    branch_0x803287ac
    frsqrte f1, f30
    lfd     f3, 0x8a0(r2)
    lfd     f2, 0x8a8(r2)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f30, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f30, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f30, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f30, f0
    frsp    f0, f0
    stfs    f0, 0x20(sp)
    lfs     f30, 0x20(sp)
branch_0x803287ac:
    mr      r3, r30
    bl      PSMTXIdentity
    lfs     f0, 0x878(r2)
    fcmpu   cr0, f0, f31
    beq-    branch_0x803287e4
    lfs     f0, 0x0(r29)
    fdivs   f0, f0, f31
    stfs    f0, 0x0(r30)
    lfs     f0, 0x10(r29)
    fdivs   f0, f0, f31
    stfs    f0, 0x10(r30)
    lfs     f0, 0x20(r29)
    fdivs   f0, f0, f31
    stfs    f0, 0x20(r30)
branch_0x803287e4:
    lfs     f0, 0x878(r2)
    fcmpu   cr0, f0, f29
    beq-    branch_0x80328814
    lfs     f0, 0x4(r29)
    fdivs   f0, f0, f29
    stfs    f0, 0x4(r30)
    lfs     f0, 0x14(r29)
    fdivs   f0, f0, f29
    stfs    f0, 0x14(r30)
    lfs     f0, 0x24(r29)
    fdivs   f0, f0, f29
    stfs    f0, 0x24(r30)
branch_0x80328814:
    lfs     f0, 0x878(r2)
    fcmpu   cr0, f0, f30
    beq-    branch_0x80328844
    lfs     f0, 0x8(r29)
    fdivs   f0, f0, f30
    stfs    f0, 0x8(r30)
    lfs     f0, 0x18(r29)
    fdivs   f0, f0, f30
    stfs    f0, 0x18(r30)
    lfs     f0, 0x28(r29)
    fdivs   f0, f0, f30
    stfs    f0, 0x28(r30)
branch_0x80328844:
    lfs     f2, 0x2c(r29)
    lfs     f1, 0x1c(r29)
    lfs     f0, 0xc(r29)
    stfs    f0, 0x0(r31)
    stfs    f1, 0x4(r31)
    stfs    f2, 0x8(r31)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    lfd     f29, 0x50(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl JPAGetKeyFrameValue__FfUsPf
JPAGetKeyFrameValue__FfUsPf: # 0x80328884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      JPAGetKeyFrameInterpolation_f___FfUsPf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl JPAGetKeyFrameInterpolation_f___FfUsPf
JPAGetKeyFrameInterpolation_f___FfUsPf: # 0x803288a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x0(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x803288c4
    lfs     f1, 0x4(r4)
    b       branch_0x80328944

branch_0x803288c4:
    clrlwi  r3, r3, 16
    addi    r0, r3, -0x1
    slwi    r0, r0, 4
    lfsx    f0, r4, r0
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x803288ec
    add     r3, r4, r0
    lfs     f1, 0x4(r3)
    b       branch_0x80328944

branch_0x803288ec:
    mr      r5, r3
    b       branch_0x80328920

branch_0x803288f4:
    srawi   r3, r5, 1
    addze   r3, r3
    slwi    r0, r3, 4
    lfsx    f0, r4, r0
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8032891c
    add     r4, r4, r0
    subf    r5, r3, r5
    b       branch_0x80328920

branch_0x8032891c:
    mr      r5, r3
branch_0x80328920:
    cmpwi   r5, 0x1
    bgt+    branch_0x803288f4
    lfs     f2, 0x0(r4)
    lfs     f3, 0x4(r4)
    lfs     f4, 0xc(r4)
    lfs     f5, 0x10(r4)
    lfs     f6, 0x14(r4)
    lfs     f7, 0x18(r4)
    bl      JMAHermiteInterpolation__Ffffffff
branch_0x80328944:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

