
.globl PSVECAdd
PSVECAdd: # 0x8034a56c
    psq_l   f2, 0x0(3), 0, 0
    psq_l   f4, 0x0(4), 0, 0
    ps_add  f6, f2, f4
    psq_st  f6, 0x0(5), 0, 0
    psq_l   f3, 0x8(3), 1, 0
    psq_l   f5, 0x8(4), 1, 0
    ps_add  f7, f3, f5
    psq_st  f7, 0x8(5), 1, 0
    blr


.globl PSVECSubtract
PSVECSubtract: # 0x8034a590
    psq_l   f2, 0x0(3), 0, 0
    psq_l   f4, 0x0(4), 0, 0
    ps_sub  f6, f2, f4
    psq_st  f6, 0x0(5), 0, 0
    psq_l   f3, 0x8(3), 1, 0
    psq_l   f5, 0x8(4), 1, 0
    ps_sub  f7, f3, f5
    psq_st  f7, 0x8(5), 1, 0
    blr


.globl PSVECScale
PSVECScale: # 0x8034a5b4
    psq_l   f0, 0x0(3), 0, 0
    psq_l   f2, 0x8(3), 1, 0
    ps_muls0 f0, f0, f1
    psq_st  f0, 0x0(4), 0, 0
    ps_muls0 f0, f2, f1
    psq_st  f0, 0x8(4), 1, 0
    blr


.globl PSVECNormalize
PSVECNormalize: # 0x8034a5d0
    lfs     f0, 0xb20(r2)
    lfs     f1, 0xb24(r2)
    psq_l   f2, 0x0(3), 0, 0
    ps_mul  f5, f2, f2
    psq_l   f3, 0x8(3), 1, 0
    ps_madd f4, f3, f3, f5
    ps_sum0 f4, f4, f3, f5
    frsqrte f5, f4
    fmuls   f6, f5, f5
    fmuls   f0, f5, f0
    fnmsubs  f6, f6, f4, f1
    fmuls   f5, f6, f0
    ps_muls0 f2, f2, f5
    psq_st  f2, 0x0(4), 0, 0
    ps_muls0 f3, f3, f5
    psq_st  f3, 0x8(4), 1, 0
    blr


.globl PSVECMag
PSVECMag: # 0x8034a614
    psq_l   f0, 0x0(3), 0, 0
    ps_mul  f0, f0, f0
    lfs     f1, 0x8(r3)
    ps_madd f1, f1, f1, f0
    lfs     f4, 0xb20(r2)
    ps_sum0 f1, f1, f0, f0
    frsqrte f0, f1
    lfs     f3, 0xb24(r2)
    fmuls   f2, f0, f0
    fmuls   f0, f0, f4
    fnmsubs  f2, f2, f1, f3
    fmuls   f0, f2, f0
    fsel    f0, f0, f0, f1
    fmuls   f1, f1, f0
    blr


.globl PSVECDotProduct
PSVECDotProduct: # 0x8034a650
    psq_l   f2, 0x4(3), 0, 0
    psq_l   f3, 0x4(4), 0, 0
    ps_mul  f2, f2, f3
    psq_l   f5, 0x0(3), 0, 0
    psq_l   f4, 0x0(4), 0, 0
    ps_madd f3, f5, f4, f2
    ps_sum0 f1, f3, f2, f2
    blr


.globl PSVECCrossProduct
PSVECCrossProduct: # 0x8034a670
    psq_l   f1, 0x0(4), 0, 0
    lfs     f2, 0x8(r3)
    psq_l   f0, 0x0(3), 0, 0
    ps_merge10 f6, f1, f1
    lfs     f3, 0x8(r4)
    ps_mul  f4, f1, f2
    ps_muls0 f7, f1, f0
    ps_msub f5, f0, f3, f4
    ps_msub f8, f0, f6, f7
    ps_merge11 f9, f5, f5
    ps_merge01 f10, f5, f8
    psq_st  f9, 0x0(5), 1, 0
    ps_neg  f10, f10
    psq_st  f10, 0x4(5), 0, 0
    blr


.globl PSVECSquareDistance
PSVECSquareDistance: # 0x8034a6ac
    psq_l   f0, 0x4(3), 0, 0
    psq_l   f1, 0x4(4), 0, 0
    ps_sub  f2, f0, f1
    psq_l   f0, 0x0(3), 0, 0
    psq_l   f1, 0x0(4), 0, 0
    ps_mul  f2, f2, f2
    ps_sub  f0, f0, f1
    ps_madd f1, f0, f0, f2
    ps_sum0 f1, f1, f2, f2
    blr


.globl PSVECDistance
PSVECDistance: # 0x8034a6d4
    psq_l   f0, 0x4(3), 0, 0
    psq_l   f1, 0x4(4), 0, 0
    ps_sub  f2, f0, f1
    psq_l   f0, 0x0(3), 0, 0
    psq_l   f1, 0x0(4), 0, 0
    ps_mul  f2, f2, f2
    ps_sub  f0, f0, f1
    lfs     f3, 0xb20(r2)
    ps_madd f0, f0, f0, f2
    ps_sum0 f0, f0, f2, f2
    lfs     f4, 0xb24(r2)
    frsqrte f1, f0
    fmuls   f2, f1, f1
    fmuls   f1, f1, f3
    fnmsubs  f2, f2, f0, f4
    fmuls   f1, f2, f1
    fsel    f1, f1, f1, f0
    fmuls   f1, f0, f1
    blr

