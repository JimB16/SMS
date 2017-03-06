
.globl getNameRef_Enemy__14TMarNameRefGenCFPCc
getNameRef_Enemy__14TMarNameRefGenCFPCc: # 0x802aa718
    mflr    r0
    lis     r3, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x49b0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa770
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa768
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x348
    bl      __ct__13TTypicalEnemyFPCc
branch_0x802aa768:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa770:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa7a8
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa7a0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x100
    bl      __ct__15TTypicalManagerFPCc
branch_0x802aa7a0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa7a8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x114
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa7e0
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa7d8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x340
    bl      __ct__10TRiccoHookFPCc
branch_0x802aa7d8:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa7e0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x120
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa818
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa810
    addi    r3, r30, 0x0
    addi    r4, r31, 0x134
    bl      __ct__17TRiccoHookManagerFPCc
branch_0x802aa810:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa818:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x148
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa850
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa848
    addi    r3, r30, 0x0
    addi    r4, r31, 0x158
    bl      __ct__13TEnemyManagerFPCc
branch_0x802aa848:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa850:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x174
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa888
    li      r3, 0x178
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa880
    addi    r3, r30, 0x0
    addi    r4, r31, 0x180
    bl      __ct__11TFruitsBoatFPCc
branch_0x802aa880:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa888:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x190
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa8c0
    li      r3, 0x178
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa8b8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x180
    bl      __ct__11TFruitsBoatFPCc
branch_0x802aa8b8:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa8c0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x19c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa8f8
    li      r3, 0x178
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa8f0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x180
    bl      __ct__11TFruitsBoatFPCc
branch_0x802aa8f0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa8f8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1a8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa930
    li      r3, 0x178
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa928
    addi    r3, r30, 0x0
    addi    r4, r31, 0x180
    bl      __ct__11TFruitsBoatFPCc
branch_0x802aa928:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa930:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1b4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa96c
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa964
    addi    r3, r30, 0x0
    addi    r5, r31, 0x1c8
    li      r4, 0x0
    bl      __ct__18TFruitsBoatManagerFiPCc
branch_0x802aa964:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa96c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1e4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa9a8
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa9a0
    addi    r3, r30, 0x0
    addi    r5, r31, 0x1c8
    li      r4, 0x1
    bl      __ct__18TFruitsBoatManagerFiPCc
branch_0x802aa9a0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa9a8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1f8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aa9e4
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aa9dc
    addi    r3, r30, 0x0
    addi    r5, r31, 0x1c8
    li      r4, 0x2
    bl      __ct__18TFruitsBoatManagerFiPCc
branch_0x802aa9dc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aa9e4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x20c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aaa20
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aaa18
    addi    r3, r30, 0x0
    addi    r5, r31, 0x1c8
    li      r4, 0x3
    bl      __ct__18TFruitsBoatManagerFiPCc
branch_0x802aaa18:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aaa20:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x220
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aaa60
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aaa58
    lis     r4, 0x80
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1
    subi    r5, rtoc, 0x338
    bl      __ct__11TAnimalBaseFUlPCc
branch_0x802aaa58:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aaa60:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x22c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aaaa4
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aaa9c
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x338
    bl      __ct__18TAnimalManagerBaseFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x4378
    stw     r0, 0x0(r30)
branch_0x802aaa9c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aaaa4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x238
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aaadc
    li      r3, 0x184
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aaad4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x244
    bl      __ct__11TAnimalBirdFPCc
branch_0x802aaad4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aaadc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x254
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aab14
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aab0c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x268
    bl      __ct__18TAnimalBirdManagerFPCc
branch_0x802aab0c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aab14:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x284
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aab50
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aab48
    addi    r3, r30, 0x0
    addi    r5, r31, 0x290
    li      r4, 0x0
    bl      __ct__8TFishoidFiPCc
branch_0x802aab48:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aab50:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x29c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aab8c
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aab84
    addi    r3, r30, 0x0
    addi    r5, r31, 0x2a8
    li      r4, 0x1
    bl      __ct__8TFishoidFiPCc
branch_0x802aab84:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aab8c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2b4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aabc8
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aabc0
    addi    r3, r30, 0x0
    addi    r5, r31, 0x2c0
    li      r4, 0x2
    bl      __ct__8TFishoidFiPCc
branch_0x802aabc0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aabc8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2cc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aac04
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aabfc
    addi    r3, r30, 0x0
    addi    r5, r31, 0x2d8
    li      r4, 0x3
    bl      __ct__8TFishoidFiPCc
branch_0x802aabfc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aac04:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2e4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aac3c
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aac34
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2f4
    bl      __ct__15TFishoidManagerFPCc
branch_0x802aac34:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aac3c:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x334
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aac74
    li      r3, 0x1c0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aac6c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x308
    bl      __ct__8TBeeHiveFPCc
branch_0x802aac6c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aac74:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x318
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aacac
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aaca4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x328
    bl      __ct__15TBeeHiveManagerFPCc
branch_0x802aaca4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aacac:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x340
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aace8
    li      r3, 0x164
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aace0
    addi    r3, r30, 0x0
    li      r4, 0x0
    subi    r5, rtoc, 0x32c
    bl      __ct__12TButterfloidFiPCc
branch_0x802aace0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aace8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x34c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aad24
    li      r3, 0x164
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aad1c
    addi    r3, r30, 0x0
    li      r4, 0x1
    subi    r5, rtoc, 0x324
    bl      __ct__12TButterfloidFiPCc
branch_0x802aad1c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aad24:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x358
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aad60
    li      r3, 0x164
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aad58
    addi    r3, r30, 0x0
    li      r4, 0x2
    subi    r5, rtoc, 0x31c
    bl      __ct__12TButterfloidFiPCc
branch_0x802aad58:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aad60:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x364
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aad98
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aad90
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x314
    bl      __ct__19TButterfloidManagerFPCc
branch_0x802aad90:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aad98:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x378
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aadd0
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aadc8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x388
    bl      __ct__13TEggGeneratorFPCc
branch_0x802aadc8:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aadd0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x39c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aae08
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aae00
    addi    r3, r30, 0x0
    addi    r4, r31, 0x388
    bl      __ct__13TEggGeneratorFPCc
branch_0x802aae00:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aae08:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3b0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aae40
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aae38
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3c0
    bl      __ct__14TEggGenManagerFPCc
branch_0x802aae38:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aae40:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3e0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aae78
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aae70
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3f8
    bl      __ct__24TEffectColumWaterManagerFPCc
branch_0x802aae70:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aae78:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x414
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aaeb0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aaea8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x430
    bl      __ct__28TEffectBombColumWaterManagerFPCc
branch_0x802aaea8:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aaeb0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x450
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aaee8
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aaee0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x468
    bl      __ct__23TEffectColumSandManagerFPCc
branch_0x802aaee0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aaee8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x484
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aaf20
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aaf18
    addi    r3, r30, 0x0
    addi    r4, r31, 0x49c
    bl      __ct__23TEffectExplosionManagerFPCc
branch_0x802aaf18:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aaf20:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4b8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aaf64
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aaf5c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4cc
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x3bd8
    stw     r0, 0x0(r30)
branch_0x802aaf5c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aaf64:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4e8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aaf9c
    li      r3, 0x198
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aaf94
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4f4
    bl      __ct__12TEffectEnemyFPCc
branch_0x802aaf94:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aaf9c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x504
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aafd4
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aafcc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x514
    bl      __ct__16THauntLegManagerFPCc
branch_0x802aafcc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aafd4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x530
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab00c
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab004
    addi    r3, r30, 0x0
    addi    r4, r31, 0x540
    bl      __ct__16THamuKuriManagerFPCc
branch_0x802ab004:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab00c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x558
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab044
    li      r3, 0x20c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab03c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x564
    bl      __ct__9THamuKuriFPCc
branch_0x802ab03c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab044:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x570
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab07c
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab074
    addi    r3, r30, 0x0
    addi    r4, r31, 0x584
    bl      __ct__20THaneHamuKuriManagerFPCc
branch_0x802ab074:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab07c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5a0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab0b4
    li      r3, 0x238
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab0ac
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5b0
    bl      __ct__13THaneHamuKuriFPCc
branch_0x802ab0ac:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab0b4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5c0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab0ec
    li      r3, 0x238
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab0e4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5d0
    bl      __ct__14THaneHamuKuri2FPCc
branch_0x802ab0e4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab0ec:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5e0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab124
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab11c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5f4
    bl      __ct__20TDoroHaneKuriManagerFPCc
branch_0x802ab11c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab124:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x610
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab15c
    li      r3, 0x23c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab154
    addi    r3, r30, 0x0
    addi    r4, r31, 0x620
    bl      __ct__13TDoroHaneKuriFPCc
branch_0x802ab154:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab15c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x630
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab194
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab18c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x648
    bl      __ct__21TDangoHamuKuriManagerFPCc
branch_0x802ab18c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab194:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x664
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab1cc
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab1c4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x680
    bl      __ct__25TBossDangoHamuKuriManagerFPCc
branch_0x802ab1c4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab1cc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6a0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab204
    li      r3, 0x240
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab1fc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6b4
    bl      __ct__18TBossDangoHamuKuriFPCc
branch_0x802ab1fc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab204:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab23c
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab234
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6dc
    bl      __ct__20TFireHamuKuriManagerFPCc
branch_0x802ab234:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab23c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6f4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab274
    li      r3, 0x22c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab26c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x704
    bl      __ct__13TFireHamuKuriFPCc
branch_0x802ab26c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab274:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x710
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab2ac
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab2a4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x724
    bl      __ct__20TDoroHamuKuriManagerFPCc
branch_0x802ab2a4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab2ac:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x740
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab2e4
    li      r3, 0x20c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab2dc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x750
    bl      __ct__13TDoroHamuKuriFPCc
branch_0x802ab2dc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab2e4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x760
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab31c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab314
    addi    r3, r30, 0x0
    addi    r4, r31, 0x770
    bl      __ct__16TNameKuriManagerFPCc
branch_0x802ab314:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab31c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x788
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab354
    li      r3, 0x1d0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab34c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x794
    bl      __ct__9TNameKuriFPCc
branch_0x802ab34c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab354:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x7a0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab398
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab390
    addi    r3, r30, 0x0
    addi    r4, r31, 0x7bc
    bl      __ct__16TNameKuriManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x19c8
    stw     r0, 0x0(r30)
branch_0x802ab390:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab398:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x7d8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab3d0
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab3c8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x7e8
    bl      __ct__14TPakkunManagerFPCc
branch_0x802ab3c8:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab3d0:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x310
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab408
    li      r3, 0x1c0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab400
    addi    r3, r30, 0x0
    addi    r4, r31, 0x800
    bl      __ct__7TPakkunFPCc
branch_0x802ab400:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab408:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x80c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab454
    li      r3, 0x1c0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab44c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x818
    bl      __ct__7TPakkunFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x1e30
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ab44c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab454:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x828
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab48c
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab484
    addi    r3, r30, 0x0
    addi    r4, r31, 0x83c
    bl      __ct__17THanaSamboManagerFPCc
branch_0x802ab484:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab48c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x854
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab4c4
    li      r3, 0x1e4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab4bc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x860
    bl      __ct__10THanaSamboFPCc
branch_0x802ab4bc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab4c4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x86c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab4fc
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab4f4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x880
    bl      __ct__17TSamboHeadManagerFPCc
branch_0x802ab4f4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab4fc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x89c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab534
    li      r3, 0x1b4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab52c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8a8
    bl      __ct__10TSamboHeadFPCc
branch_0x802ab52c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab534:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8b8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab56c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab564
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8c8
    bl      __ct__13TYumboManagerFPCc
branch_0x802ab564:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab56c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8dc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab5c4
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab5bc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8f0
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x5bc8
    stw     r0, 0x0(r30)
    li      r0, 0x0
    stw     r0, 0x54(r30)
    stw     r0, 0x58(r30)
    stw     r0, 0x5c(r30)
    stw     r0, 0x60(r30)
branch_0x802ab5bc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab5c4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x90c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab5fc
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab5f4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x918
    bl      __ct__12TSamboFlowerFPCc
branch_0x802ab5f4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab5fc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x928
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab634
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab62c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x934
    bl      __ct__12TPopoManagerFPCc
branch_0x802ab62c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab634:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x308
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab66c
    li      r3, 0x240
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab664
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x300
    bl      __ct__5TPopoFPCc
branch_0x802ab664:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab66c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x948
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab6a4
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab69c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x958
    bl      __ct__16TGorogoroManagerFPCc
branch_0x802ab69c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab6a4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x970
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab6dc
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab6d4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x980
    bl      __ct__13TGessoManagerFPCc
branch_0x802ab6d4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab6dc:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2f8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab714
    li      r3, 0x1ec
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab70c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x998
    bl      __ct__6TGessoFPCc
branch_0x802ab70c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab714:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9a4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab760
    li      r3, 0x1ec
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab758
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9b0
    bl      __ct__6TGessoFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x90c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ab758:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab760:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9c0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab7ac
    li      r3, 0x1ec
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab7a4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9cc
    bl      __ct__6TGessoFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0xac4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ab7a4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab7ac:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9dc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab7e4
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab7dc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9f0
    bl      __ct__17TMameGessoManagerFPCc
branch_0x802ab7dc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab7e4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa0c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab81c
    li      r3, 0x1f0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab814
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa18
    bl      __ct__10TMameGessoFPCc
branch_0x802ab814:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab81c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab854
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab84c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa3c
    bl      __ct__20TElecNokonokoManagerFPCc
branch_0x802ab84c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab854:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa58
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab88c
    li      r3, 0x1b4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab884
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa68
    bl      __ct__13TElecNokonokoFPCc
branch_0x802ab884:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab88c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa78
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab8c4
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab8bc
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa88
    bl      __ct__14TTelesaManagerFPCc
branch_0x802ab8bc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab8c4:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2f0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab8fc
    li      r3, 0x1e0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab8f4
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2e8
    bl      __ct__7TTelesaFPCc
branch_0x802ab8f4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab8fc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa9c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab934
    li      r3, 0x1e0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab92c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xaa8
    bl      __ct__10TSeeTelesaFPCc
branch_0x802ab92c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab934:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xab4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab96c
    li      r3, 0x1e0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab964
    addi    r3, r30, 0x0
    addi    r4, r31, 0xac0
    bl      __ct__11TLoopTelesaFPCc
branch_0x802ab964:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab96c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xad0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab9a4
    li      r3, 0x1e0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab99c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xadc
    bl      __ct__10TBoxTelesaFPCc
branch_0x802ab99c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab9a4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xae8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ab9dc
    li      r3, 0x1e4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ab9d4
    addi    r3, r30, 0x0
    addi    r4, r31, 0xafc
    bl      __ct__18TMarioModokiTelesaFPCc
branch_0x802ab9d4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ab9dc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb10
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aba14
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aba0c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb24
    bl      __ct__18TDebuTelesaManagerFPCc
branch_0x802aba0c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aba14:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb3c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aba4c
    li      r3, 0x1ac
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aba44
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb48
    bl      __ct__11TDebuTelesaFPCc
branch_0x802aba44:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aba4c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb54
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802aba84
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802aba7c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb64
    bl      __ct__15TPoiHanaManagerFPCc
branch_0x802aba7c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802aba84:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2e0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ababc
    li      r3, 0x1cc
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abab4
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb7c
    bl      __ct__8TPoiHanaFPCc
branch_0x802abab4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ababc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb88
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abb08
    li      r3, 0x1cc
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abb00
    addi    r3, r30, 0x0
    addi    r4, r31, 0xb94
    bl      __ct__8TPoiHanaFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x71c0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802abb00:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abb08:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xba0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abb40
    li      r3, 0x1cc
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abb38
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbb0
    bl      __ct__13TSleepPoiHanaFPCc
branch_0x802abb38:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abb40:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbc0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abb78
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abb70
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbd0
    bl      __ct__16TChuuHanaManagerFPCc
branch_0x802abb70:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abb78:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbe8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abbb0
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abba8
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbfc
    bl      __ct__18TFireWanwanManagerFPCc
branch_0x802abba8:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abbb0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc1c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abbe8
    li      r3, 0x23c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abbe0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc28
    bl      __ct__11TFireWanwanFPCc
branch_0x802abbe0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abbe8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc3c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abc20
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abc18
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc58
    bl      __ct__25TTobiPukuLaunchPadManagerFPCc
branch_0x802abc18:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abc20:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc74
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abc58
    li      r3, 0x1ac
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abc50
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc88
    bl      __ct__18TTobiPukuLaunchPadFPCc
branch_0x802abc50:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abc58:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc98
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abc9c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abc94
    addi    r3, r30, 0x0
    addi    r4, r31, 0xcb0
    bl      __ct__25TTobiPukuLaunchPadManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x5500
    stw     r0, 0x0(r30)
branch_0x802abc94:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abc9c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xccc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abce8
    li      r3, 0x1ac
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abce0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xce0
    bl      __ct__18TTobiPukuLaunchPadFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x50f8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802abce0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abce8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xcf0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abd20
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abd18
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd00
    bl      __ct__16TTobiPukuManagerFPCc
branch_0x802abd18:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abd20:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd18
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abd64
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abd5c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd28
    bl      __ct__16TTobiPukuManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x5450
    stw     r0, 0x0(r30)
branch_0x802abd5c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abd64:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd40
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abd9c
    li      r3, 0x1f4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abd94
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd4c
    bl      __ct__9TPukuPukuFPCc
branch_0x802abd94:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abd9c:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2d8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abde8
    li      r3, 0x1f4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abde0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd58
    bl      __ct__9TTobiPukuFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x4af8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802abde0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abde8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd64
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abe20
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abe18
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd74
    bl      __ct__16TTabePukuManagerFPCc
branch_0x802abe18:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abe20:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd98
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abe58
    li      r3, 0x1f0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abe50
    addi    r3, r30, 0x0
    addi    r4, r31, 0xda4
    bl      __ct__9TTabePukuFPCc
branch_0x802abe50:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abe58:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xdbc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abe90
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abe88
    addi    r3, r30, 0x0
    addi    r4, r31, 0xdcc
    bl      __ct__16TWireTrapManagerFPCc
branch_0x802abe88:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abe90:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xde8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abec8
    li      r3, 0x184
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abec0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xdf4
    bl      __ct__9TWireTrapFPCc
branch_0x802abec0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abec8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe04
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abf00
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abef8
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe14
    bl      __ct__14TRocketManagerFPCc
branch_0x802abef8:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abf00:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abf38
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abf30
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe2c
    bl      __ct__7TRocketFPCc
branch_0x802abf30:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abf38:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abf70
    li      r3, 0x1dc
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abf68
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2c0
    bl      __ct__6TYumboFPCc
branch_0x802abf68:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abf70:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe38
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abfa8
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abfa0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe48
    bl      __ct__14TCannonManagerFPCc
branch_0x802abfa0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abfa8:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2b8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802abfe0
    li      r3, 0x2b4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802abfd8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2b0
    bl      __ct__7TCannonFPCc
branch_0x802abfd8:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802abfe0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe5c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac018
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac010
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe6c
    bl      __ct__15TBombHeiManagerFPCc
branch_0x802ac010:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac018:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2a8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac050
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac048
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2a0
    bl      __ct__8TBombHeiFPCc
branch_0x802ac048:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac050:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe80
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac088
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac080
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe90
    bl      __ct__14TKillerManagerFPCc
branch_0x802ac080:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac088:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x298
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac0c0
    li      r3, 0x210
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac0b8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x290
    bl      __ct__7TKillerFPCc
branch_0x802ac0b8:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac0c0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xea4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac0f8
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac0f0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xeb4
    bl      __ct__15TAmiNokoManagerFPCc
branch_0x802ac0f0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac0f8:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x288
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac130
    li      r3, 0x214
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac128
    addi    r3, r30, 0x0
    addi    r4, r31, 0xecc
    bl      __ct__8TAmiNokoFPCc
branch_0x802ac128:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac130:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xed8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac174
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac16c
    addi    r3, r30, 0x0
    addi    r4, r31, 0xef0
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x34f8
    stw     r0, 0x0(r30)
branch_0x802ac16c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac174:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf10
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac1c0
    li      r3, 0x194
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac1b8
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf20
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x3340
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ac1b8:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac1c0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf34
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac1f8
    li      r3, 0x16c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac1f0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf44
    bl      __ct__15TCommonLauncherFPCc
branch_0x802ac1f0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac1f8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf58
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac230
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac228
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf70
    bl      __ct__22TCommonLauncherManagerFPCc
branch_0x802ac228:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac230:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf90
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac268
    li      r3, 0x2a0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac260
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf9c
    bl      __ct__17TBiancoGateKeeperFPCc
branch_0x802ac260:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac268:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xfb4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac2a0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac298
    addi    r3, r30, 0x0
    addi    r4, r31, 0xfc8
    bl      __ct__24TBiancoGateKeeperManagerFPCc
branch_0x802ac298:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac2a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xfe4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac2d8
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac2d0
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x280
    bl      __ct__5TSealFPCc
branch_0x802ac2d0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac2d8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xff0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac310
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac308
    addi    r3, r30, 0x0
    addi    r4, r31, 0xffc
    bl      __ct__12TSealManagerFPCc
branch_0x802ac308:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac310:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1010
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac35c
    li      r3, 0x164
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac354
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1024
    bl      __ct__9TLauncherFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0xe80
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ac354:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac35c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1038
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac3a0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac398
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1050
    bl      __ct__16TLauncherManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0xa5c
    stw     r0, 0x0(r30)
branch_0x802ac398:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac3a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1070
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac3ec
    li      r3, 0x164
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac3e4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1084
    bl      __ct__9TLauncherFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x1c40
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ac3e4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac3ec:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1098
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac430
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac428
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10b0
    bl      __ct__16TLauncherManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0xab0
    stw     r0, 0x0(r30)
branch_0x802ac428:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac430:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac468
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac460
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10e0
    bl      __ct__14TIgaigaManagerFPCc
branch_0x802ac460:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac468:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10f8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac4a0
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac498
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1108
    bl      __ct__16TTamaNokoManagerFPCc
branch_0x802ac498:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac4a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1120
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac4d8
    li      r3, 0x1c4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac4d0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x112c
    bl      __ct__9TTamaNokoFPCc
branch_0x802ac4d0:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac4d8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1138
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac514
    li      r3, 0x3b4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac508
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1144
    bl      __ct__12TBeamManagerFPCc
branch_0x802ac508:
    stw     r30, -0x68f0(r13)
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac514:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1158
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac54c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac544
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1168
    bl      __ct__13TKukkuManagerFPCc
branch_0x802ac544:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac54c:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x278
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac584
    li      r3, 0x1b4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac57c
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x270
    bl      __ct__6TKukkuFPCc
branch_0x802ac57c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac584:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x117c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac5bc
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac5b4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x118c
    bl      __ct__15TKumokunManagerFPCc
branch_0x802ac5b4:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac5bc:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x268
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac5f4
    li      r3, 0x1f0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac5ec
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11a4
    bl      __ct__8TKumokunFPCc
branch_0x802ac5ec:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac5f4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11b0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac62c
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac624
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11c0
    bl      __ct__14TAmenboManagerFPCc
branch_0x802ac624:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac62c:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x260
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac664
    li      r3, 0x22c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac65c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11dc
    bl      __ct__7TAmenboFPCc
branch_0x802ac65c:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac664:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11ec
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac69c
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac694
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11fc
    bl      __ct__15TKazekunManagerFPCc
branch_0x802ac694:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac69c:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x258
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac6d4
    li      r3, 0x1d4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac6cc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1210
    bl      __ct__8TKazekunFPCc
branch_0x802ac6cc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac6d4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x121c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac74c
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac744
    stw     r30, 0x14(sp)
    addi    r4, r31, 0x1230
    lwz     r3, 0x14(sp)
    bl      __ct__Q26JDrama6TActorFPCc
    lwz     r4, 0x14(sp)
    lis     r3, 0x803b
    subi    r3, r3, 0x1cf8
    stw     r3, 0x0(r4)
    addi    r3, r3, 0x24
    li      r0, 0x1
    stw     r3, 0x20(r4)
    addi    r3, r4, 0x48
    stb     r0, 0x44(r4)
    bl      __ct__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    lis     r3, 0x803b
    subi    r3, r3, 0x1d9c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ac744:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac74c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1248
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802ac7c4
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802ac7bc
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x125c
    lwz     r3, 0x10(sp)
    bl      __ct__Q26JDrama6TActorFPCc
    lwz     r4, 0x10(sp)
    lis     r3, 0x803b
    subi    r3, r3, 0x1cf8
    stw     r3, 0x0(r4)
    addi    r3, r3, 0x24
    li      r0, 0x1
    stw     r3, 0x20(r4)
    addi    r3, r4, 0x48
    stb     r0, 0x44(r4)
    bl      __ct__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    lis     r3, 0x803b
    subi    r3, r3, 0x1e40
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x802ac7bc:
    mr      r3, r30
    b       branch_0x802ac7c8

branch_0x802ac7c4:
    li      r3, 0x0
branch_0x802ac7c8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
__ct__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv: # 0x802ac7e0
    blr


.globl __ct__Q26JDrama6TActorFPCc
__ct__Q26JDrama6TActorFPCc: # 0x802ac7e4
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r7, 0x0
    lis     r3, 0x803e
    sth     r7, 0xc(r31)
    addi    r0, r3, 0x2140
    lis     r6, 0x803e
    stw     r0, 0x0(r31)
    lis     r5, 0x803e
    lis     r3, 0x803e
    lfs     f1, -0x250(rtoc)
    addi    r4, r3, 0x1920
    addi    r6, r6, 0x4718
    stfs    f1, 0x10(r31)
    addi    r5, r5, 0x4650
    addi    r0, r4, 0x24
    stfs    f1, 0x14(r31)
    mr      r3, r31
    stfs    f1, 0x18(r31)
    sth     r7, 0x1c(r31)
    stw     r6, 0x20(r31)
    stw     r5, 0x20(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lfs     f0, -0x24c(rtoc)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    stfs    f1, 0x30(r31)
    stfs    f1, 0x34(r31)
    stfs    f1, 0x38(r31)
    stw     r7, 0x3c(r31)
    stw     r7, 0x40(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__24TNameKuriLauncherManagerFv
__dt__24TNameKuriLauncherManagerFv: # 0x802ac8b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802ac908
    lis     r3, 0x803e
    subi    r0, r3, 0xab0
    stw     r0, 0x0(r30)
    beq-    branch_0x802ac8f8
    lis     r3, 0x803b
    addi    r0, r3, 0x5d50
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x802ac8f8:
    extsh.  r0, r31
    ble-    branch_0x802ac908
    mr      r3, r30
    bl      __dl__FPv
branch_0x802ac908:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24THamuKuriLauncherManagerFv
__dt__24THamuKuriLauncherManagerFv: # 0x802ac924
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802ac97c
    lis     r3, 0x803e
    subi    r0, r3, 0xa5c
    stw     r0, 0x0(r30)
    beq-    branch_0x802ac96c
    lis     r3, 0x803b
    addi    r0, r3, 0x5d50
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x802ac96c:
    extsh.  r0, r31
    ble-    branch_0x802ac97c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802ac97c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

