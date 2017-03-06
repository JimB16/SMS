
.globl PSMTXMultVec
PSMTXMultVec: # 0x8034a2d0
    psq_l   f0, 0x0(4), 0, 0
    psq_l   f2, 0x0(3), 0, 0
    psq_l   f1, 0x8(4), 1, 0
    ps_mul  f4, f2, f0
    psq_l   f3, 0x8(3), 0, 0
    ps_madd f5, f3, f1, f4
    psq_l   f8, 0x10(3), 0, 0
    ps_sum0 f6, f5, f6, f5
    psq_l   f9, 0x18(3), 0, 0
    ps_mul  f10, f8, f0
    psq_st  f6, 0x0(5), 1, 0
    ps_madd f11, f9, f1, f10
    psq_l   f2, 0x20(3), 0, 0
    ps_sum0 f12, f11, f12, f11
    psq_l   f3, 0x28(3), 0, 0
    ps_mul  f4, f2, f0
    psq_st  f12, 0x4(5), 1, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_st  f6, 0x8(5), 1, 0
    blr


.globl PSMTXMultVecArray
PSMTXMultVecArray: # 0x8034a324
    psq_l   f13, 0x0(3), 0, 0
    psq_l   f12, 0x10(3), 0, 0
    subi    r6, r6, 0x1
    psq_l   f11, 0x8(3), 0, 0
    ps_merge00 f0, f13, f12
    subi    r5, r5, 0x4
    psq_l   f10, 0x18(3), 0, 0
    ps_merge11 f1, f13, f12
    mtctr   r6
    psq_l   f4, 0x20(3), 0, 0
    ps_merge00 f2, f11, f10
    psq_l   f5, 0x28(3), 0, 0
    ps_merge11 f3, f11, f10
    psq_l   f6, 0x0(4), 0, 0
    psq_lu  f7, 0x8(4), 1, 0
    ps_madds0 f8, f0, f6, f3
    ps_mul  f9, f4, f6
    ps_madds1 f8, f1, f6, f8
    ps_madd f10, f5, f7, f9
branch_0x8034a370:
    psq_lu  f6, 0x4(4), 0, 0
    ps_madds0 f12, f2, f7, f8
    psq_lu  f7, 0x8(4), 1, 0
    ps_sum0 f13, f10, f9, f10
    ps_madds0 f8, f0, f6, f3
    ps_mul  f9, f4, f6
    psq_stu f12, 0x4(5), 0, 0
    ps_madds1 f8, f1, f6, f8
    psq_stu f13, 0x8(5), 1, 0
    ps_madd f10, f5, f7, f9
    bdnz+      branch_0x8034a370
    ps_madds0 f12, f2, f7, f8
    ps_sum0 f13, f10, f9, f10
    psq_stu f12, 0x4(5), 0, 0
    psq_stu f13, 0x8(5), 1, 0
    blr


.globl PSMTXMultVecSR
PSMTXMultVecSR: # 0x8034a3b0
    psq_l   f0, 0x0(3), 0, 0
    psq_l   f6, 0x0(4), 0, 0
    psq_l   f2, 0x10(3), 0, 0
    ps_mul  f8, f0, f6
    psq_l   f4, 0x20(3), 0, 0
    ps_mul  f10, f2, f6
    psq_l   f7, 0x8(4), 1, 0
    ps_mul  f12, f4, f6
    psq_l   f3, 0x18(3), 0, 0
    ps_sum0 f8, f8, f8, f8
    psq_l   f5, 0x28(3), 0, 0
    ps_sum0 f10, f10, f10, f10
    psq_l   f1, 0x8(3), 0, 0
    ps_sum0 f12, f12, f12, f12
    ps_madd f9, f1, f7, f8
    psq_st  f9, 0x0(5), 1, 0
    ps_madd f11, f3, f7, f10
    psq_st  f11, 0x4(5), 1, 0
    ps_madd f13, f5, f7, f12
    psq_st  f13, 0x8(5), 1, 0
    blr

