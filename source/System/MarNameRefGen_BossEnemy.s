
.globl getNameRef_BossEnemy__14TMarNameRefGenCFPCc
getNameRef_BossEnemy__14TMarNameRefGenCFPCc: # 0x802a9998
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    lis     r4, unk_803a4308@h
    stw     r29, 0x2c(sp)
    addi    r31, r4, unk_803a4308@l
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x388
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a99f4
    li      r3, 0x164
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802a99ec
    addi    r3, r30, 0x0
    addi    r4, r31, 0x114
    bl      __ct__7TEMarioFPCc
branch_0x802a99ec:
    mr      r3, r30
    b       branch_0x802aa3f0

branch_0x802a99f4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x124
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9a2c
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802a9a24
    addi    r3, r30, 0x0
    addi    r4, r31, 0x134
    bl      __ct__14TEMarioManagerFPCc
branch_0x802a9a24:
    mr      r3, r30
    b       branch_0x802aa3f0

branch_0x802a9a2c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x148
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9a64
    li      r3, 0x1c4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802a9a5c
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x380
    bl      __ct__13TBossHanachanFPCc
branch_0x802a9a5c:
    mr      r3, r30
    b       branch_0x802aa3f0

branch_0x802a9a64:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x158
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9a9c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802a9a94
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x380
    bl      __ct__20TBossHanachanManagerFPCc
branch_0x802a9a94:
    mr      r3, r30
    b       branch_0x802aa3f0

branch_0x802a9a9c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x16c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9b20
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802a9b18
    stw     r30, 0x1c(sp)
    mr      r3, r30
    addi    r4, r2, R2Off_m0x380
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__17TDemoBossHanachan@ha
    addi    r3, r3, __vvt__17TDemoBossHanachan@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, __vvt__18TSleepBossHanachan@ha
    stw     r0, 0x20(r30)
    addi    r3, r3, __vvt__18TSleepBossHanachan@l
    addi    r0, r3, 0x24
    lwz     r31, 0x1c(sp)
    stw     r3, 0x0(r31)
    addi    r3, r31, 0x150
    stw     r0, 0x20(r31)
    lfs     f1, -0x37c(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_802aa40c
    li      r0, 0x0
    stw     r0, 0x15c(r31)
branch_0x802a9b18:
    mr      r3, r30
    b       branch_0x802aa3f0

branch_0x802a9b20:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x180
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9b9c
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802a9b94
    stw     r30, 0x10(sp)
    addi    r4, r2, R2Off_m0x380
    lwz     r3, 0x10(sp)
    bl      __ct__13TEnemyManagerFPCc
    lis     r4, __vvt__24TDemoBossHanachanManager@ha
    lwz     r3, 0x10(sp)
    addi    r0, r4, __vvt__24TDemoBossHanachanManager@l
    stw     r0, 0x0(r3)
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9b80
    addi    r3, r29, 0x0
    addi    r4, r31, 0x19c
    bl      __ct__27TDemoBossHanachanSaveParamsFPCc
branch_0x802a9b80:
    lwz     r4, 0x10(sp)
    lis     r3, __vvt__25TSleepBossHanachanManager@ha
    addi    r0, r3, __vvt__25TSleepBossHanachanManager@l
    stw     r29, 0x54(r4)
    stw     r0, 0x0(r30)
branch_0x802a9b94:
    mr      r3, r30
    b       branch_0x802aa3f0

branch_0x802a9b9c:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x378
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9bd4
    li      r3, 0x220
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9bcc
    addi    r3, r29, 0x0
    addi    r4, r2, R2Off_m0x380
    bl      __ct__8TBossEelFPCc
branch_0x802a9bcc:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9bd4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1bc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9c28
    li      r3, 0x318
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9c20
    stw     r29, 0x14(sp)
    addi    r4, r2, R2Off_m0x380
    lwz     r3, 0x14(sp)
    bl      __ct__13TEnemyManagerFPCc
    lwz     r3, 0x14(sp)
    lis     r4, __vvt__15TBossEelManager@ha
    addi    r0, r4, __vvt__15TBossEelManager@l
    stw     r0, 0x0(r3)
    addi    r3, r3, 0x54
    bl      __ct__18TBossEelSaveParamsFv
branch_0x802a9c20:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9c28:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1cc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9c60
    li      r3, 0xcc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9c58
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1e0
    bl      __ct__17TBEelTearsManagerFPCc
branch_0x802a9c58:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9c60:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x370
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9c98
    li      r3, 0x1bc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9c90
    addi    r3, r29, 0x0
    addi    r4, r2, R2Off_m0x368
    bl      __ct__6TKoopaFPCc
branch_0x802a9c90:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9c98:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1fc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9cd0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9cc8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x20c
    bl      __ct__13TKoopaManagerFPCc
branch_0x802a9cc8:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9cd0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x220
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9d08
    li      r3, 0x1ac
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9d00
    addi    r3, r29, 0x0
    addi    r4, r31, 0x22c
    bl      __ct__10THinokuri2FPCc
branch_0x802a9d00:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9d08:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x238
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9d40
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9d38
    addi    r3, r29, 0x0
    addi    r4, r31, 0x24c
    bl      __ct__17THinokuri2ManagerFPCc
branch_0x802a9d38:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9d40:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x264
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9d78
    li      r3, 0x1b0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9d70
    addi    r3, r29, 0x0
    addi    r4, r31, 0x270
    bl      __ct__10TBossGessoFPCc
branch_0x802a9d70:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9d78:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x280
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9db0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9da8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x294
    bl      __ct__17TBossGessoManagerFPCc
branch_0x802a9da8:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9db0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2ac
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9de8
    li      r3, 0x1fc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9de0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x2b8
    bl      __ct__9TTinKoopaFPCc
branch_0x802a9de0:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9de8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2c4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9e20
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9e18
    addi    r3, r29, 0x0
    addi    r4, r31, 0x2d4
    bl      __ct__16TTinKoopaManagerFPCc
branch_0x802a9e18:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9e20:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2ec
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9e58
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9e50
    addi    r3, r29, 0x0
    addi    r4, r31, 0x304
    bl      __ct__21TCoasterKillerManagerFPCc
branch_0x802a9e50:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9e58:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x324
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9e90
    li      r3, 0x200
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9e88
    addi    r3, r29, 0x0
    addi    r4, r31, 0x334
    bl      __ct__14TCoasterKillerFPCc
branch_0x802a9e88:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9e90:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x348
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9ec8
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9ec0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x358
    bl      __ct__15TKoopaJrManagerFPCc
branch_0x802a9ec0:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9ec8:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x360
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9f00
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9ef8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x374
    bl      __ct__8TKoopaJrFPCc
branch_0x802a9ef8:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9f00:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x384
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9f38
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9f30
    addi    r3, r29, 0x0
    addi    r4, r31, 0x39c
    bl      __ct__24TKoopaJrSubmarineManagerFPCc
branch_0x802a9f30:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9f38:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3c4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9f70
    li      r3, 0x1ac
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9f68
    addi    r3, r29, 0x0
    addi    r4, r31, 0x3d8
    bl      __ct__17TKoopaJrSubmarineFPCc
branch_0x802a9f68:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9f70:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3f4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9fa8
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9fa0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x408
    bl      __ct__20TLimitKoopaJrManagerFPCc
branch_0x802a9fa0:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9fa8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x42c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a9fe0
    li      r3, 0x17c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a9fd8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x43c
    bl      __ct__13TLimitKoopaJrFPCc
branch_0x802a9fd8:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802a9fe0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x454
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa018
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa010
    addi    r3, r29, 0x0
    addi    r4, r31, 0x20c
    bl      __ct__18TLimitKoopaManagerFPCc
branch_0x802aa010:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa018:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x468
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa050
    li      r3, 0x1c8
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa048
    addi    r3, r29, 0x0
    addi    r4, r2, R2Off_m0x368
    bl      __ct__11TLimitKoopaFPCc
branch_0x802aa048:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa050:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x474
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa088
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa080
    addi    r3, r29, 0x0
    addi    r4, r31, 0x48c
    bl      __ct__21TBathtubKillerManagerFPCc
branch_0x802aa080:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa088:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4a8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa0c0
    li      r3, 0x250
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa0b8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4b8
    bl      __ct__14TBathtubKillerFPCc
branch_0x802aa0b8:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa0c0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa0f8
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa0f0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4dc
    bl      __ct__20TBathtubPeachManagerFPCc
branch_0x802aa0f0:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa0f8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4f8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa130
    li      r3, 0x174
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa128
    addi    r3, r29, 0x0
    addi    r4, r31, 0x508
    bl      __ct__13TBathtubPeachFPCc
branch_0x802aa128:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa130:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x518
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa168
    li      r3, 0x1b8
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa160
    addi    r3, r29, 0x0
    addi    r4, r31, 0x524
    bl      __ct__11TBossWanwanFPCc
branch_0x802aa160:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa168:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x534
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa1a0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa198
    addi    r3, r29, 0x0
    addi    r4, r31, 0x548
    bl      __ct__18TBossWanwanManagerFPCc
branch_0x802aa198:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa1a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x560
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa1d8
    li      r3, 0x1d0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa1d0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x56c
    bl      __ct__11TBossPakkunFPCc
branch_0x802aa1d0:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa1d8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x57c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa210
    li      r3, 0x1d0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa208
    addi    r3, r29, 0x0
    addi    r4, r31, 0x588
    bl      __ct__11TBossPakkunFPCc
branch_0x802aa208:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa210:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x598
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa24c
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa244
    addi    r3, r29, 0x0
    addi    r4, r31, 0x5ac
    li      r5, 0x0
    bl      __ct__18TBossPakkunManagerFPCci
branch_0x802aa244:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa24c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa288
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa280
    addi    r3, r29, 0x0
    addi    r4, r31, 0x5dc
    li      r5, 0x1
    bl      __ct__18TBossPakkunManagerFPCci
branch_0x802aa280:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa288:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5f8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa2c0
    li      r3, 0x38c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa2b8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x604
    bl      __ct__11TBossTelesaFPCc
branch_0x802aa2b8:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa2c0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x610
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa2f8
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa2f0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x624
    bl      __ct__18TBossTelesaManagerFPCc
branch_0x802aa2f0:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa2f8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x63c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa330
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa328
    addi    r3, r29, 0x0
    addi    r4, r31, 0x64c
    bl      __ct__14TBubbleManagerFPCc
branch_0x802aa328:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa330:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x358
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa37c
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa374
    addi    r3, r29, 0x0
    addi    r4, r2, R2Off_m0x350
    bl      __ct__10TBEelTearsFPCc
    lis     r3, __vvt__8TOilBall@ha
    addi    r3, r3, __vvt__8TOilBall@l
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r29)
branch_0x802aa374:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa37c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x660
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa3b4
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa3ac
    addi    r3, r29, 0x0
    addi    r4, r31, 0x66c
    bl      __ct__10TBossMantaFPCc
branch_0x802aa3ac:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa3b4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x678
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa3ec
    li      r3, 0x98
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802aa3e4
    addi    r3, r29, 0x0
    addi    r4, r31, 0x68c
    bl      __ct__17TBossMantaManagerFPCc
branch_0x802aa3e4:
    mr      r3, r29
    b       branch_0x802aa3f0

branch_0x802aa3ec:
    li      r3, 0x0
branch_0x802aa3f0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_802aa40c
set_f___Q29JGeometry8TVec3_f_Ffff_802aa40c: # 0x802aa40c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __sinit_MarNameRefGen_BossEnemy_cpp
__sinit_MarNameRefGen_BossEnemy_cpp: # 0x802aa41c
    mflr    r0
    lis     r3, unk_803fcfb0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fcfb0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa464
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x802aa464:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa494
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x802aa494:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa4c4
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x802aa4c4:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa4f4
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x802aa4f4:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa524
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x802aa524:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa554
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x802aa554:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa584
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x802aa584:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa5b4
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x802aa5b4:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa5e4
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x802aa5e4:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa614
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x802aa614:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa644
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x802aa644:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa674
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x802aa674:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa6a4
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x802aa6a4:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa6d4
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x802aa6d4:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802aa704
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x802aa704:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

