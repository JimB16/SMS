
.globl updateTrample__11TNpcTrampleFfPf
updateTrample__11TNpcTrampleFfPf: # 0x80215148
    lha     r5, 0x6(r3)
    li      r8, 0x0
    extsh.  r0, r5
    bne-    branch_0x8021516c
    lha     r0, 0x4(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8021516c
    stfs    f1, 0x0(r4)
    b       branch_0x80215234

branch_0x8021516c:
    extsh.  r0, r5
    ble-    branch_0x802151a0
    stfs    f1, 0x0(r4)
    li      r0, 0x0
    sth     r0, 0x4(r3)
    lha     r4, 0x6(r3)
    addi    r0, r4, -0x1
    sth     r0, 0x6(r3)
    lha     r0, 0x6(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80215234
    li      r8, 0x1
    b       branch_0x80215234

branch_0x802151a0:
    lha     r5, 0x4(r3)
    cmpwi   r5, 0x0
    ble-    branch_0x80215234
    addi    r0, r5, -0x1
    sth     r0, 0x4(r3)
    lha     r0, 0x4(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x802151d4
    stfs    f1, 0x0(r4)
    lwz     r4, R13Off_m0x6220(r13)
    lha     r0, 0x108(r4)
    sth     r0, 0x6(r3)
    b       branch_0x80215234

branch_0x802151d4:
    lfs     f2, 0x0(r3)
    lfs     f0, -0x6158(r13)
    fsubs   f0, f2, f0
    stfs    f0, 0x0(r3)
    lwz     r7, R13Off_m0x6220(r13)
    lha     r6, 0x4(r3)
    addi    r5, r7, 0xcc
    lha     r7, 0xf4(r7)
    lha     r5, 0x0(r5)
    lwz     r0, R13Off_m0x5eac(r13)
    subf    r5, r6, r5
    lwz     r6, R13Off_m0x5ea8(r13)
    mullw   r5, r7, r5
    lfs     f2, 0x0(r3)
    lfs     f3, -0x1a00(r2)
    clrlwi  r3, r5, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fneg    f0, f0
    fmuls   f0, f2, f0
    fadds   f0, f3, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r4)
branch_0x80215234:
    mr      r3, r8
    blr


.globl startTrample__11TNpcTrampleFv
startTrample__11TNpcTrampleFv: # 0x8021523c
    stwu    sp, -0x30(sp)
    li      r4, 0x0
    lis     r0, 0x4330
    lwz     r5, R13Off_m0x6220(r13)
    lfs     f0, 0xe0(r5)
    stfs    f0, 0x0(r3)
    lwz     r5, R13Off_m0x6220(r13)
    lha     r5, 0xcc(r5)
    sth     r5, 0x4(r3)
    sth     r4, 0x6(r3)
    lha     r4, 0x4(r3)
    lfd     f1, -0x19f8(r2)
    xoris   r4, r4, 0x8000
    lfs     f2, -0x1a00(r2)
    stw     r4, 0x2c(sp)
    lfs     f3, 0x0(r3)
    stw     r0, 0x28(sp)
    lfd     f0, 0x28(sp)
    addi    sp, sp, 0x30
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    fmuls   f0, f3, f0
    stfs    f0, -0x6158(r13)
    blr

